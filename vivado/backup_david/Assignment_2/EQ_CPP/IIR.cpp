/*
 * IIR.cpp
 *
 *  Created on: 5. dec. 2017
 *      Author: au288681
 */

#include <math.h>
#include "IIR.h"

const double  double_Pi  = 3.1415926535897932384626433832795;

/** Returns the larger of two values. */
inline float  jmax (const float a, const float b) { return (a < b) ? b : a; }


//==============================================================================
IIR::IIR()
{
    x1_float = 0; x1_fix = 0;
    x2_float = 0; x2_fix = 0;
    y1_float = 0; y1_fix = 0;
    y2_float = 0; y2_fix = 0;

    for (short i = 0; i < NUM_COEFFS; i++)
    {
		coef_fixed[i] = 0;
		coefficients[i] = 0;
    }

    // Initialize filter to pass through
    coefficients[0] = 1;
    coef_fixed[0] = float2fixed(1.0);
}

void IIR::process(float* samples,
                  const int numSamples)
{
	int i;
    for (i = 0; i < numSamples; ++i)
    {
        const float in = samples[i];

        float out = coefficients[0] * in
                     + coefficients[1] * x1_float
                     + coefficients[2] * x2_float
                     - coefficients[4] * y1_float
                     - coefficients[5] * y2_float;

        if (! (out < -1.0e-8 || out > 1.0e-8))
            out = 0;

        x2_float = x1_float;
        x1_float = in;
        y2_float = y1_float;
        y1_float = out;

        samples[i] = out;
    }
}

/* 91 cycles non optimized*/
void IIR::process(short* const samples,
                  short* output,
                  const short numSamples)
{
	short i;
    for (i = 0; i < numSamples; ++i)
    {
        const int in = samples[i];

        int out = coef_fixed[0] * in           // b0
                     + coef_fixed[1] * x1_fix  // b1
                     + coef_fixed[2] * x2_fix  // b2
                     - coef_fixed[4] * y1_fix  // a1
                     - coef_fixed[5] * y2_fix; // a2

		// Scale filter
		out >>= (ALGO_BITS-1);

        x2_fix = x1_fix;
        x1_fix = in;
        y2_fix = y1_fix;
        y1_fix = out;

        output[i] = out;
    }
}


//==============================================================================
void IIR::makeLowPass (const float sampleRate,
                       const float frequency)
{
    const float n = 1.0 / tan (double_Pi * frequency / sampleRate);
    const float nSquared = n * n;
    const float c1 = 1.0 / (1.0 + sqrt (2.0) * n + nSquared);

    setCoefficients (c1,
                     c1 * 2.0f,
                     c1,
                     1.0,
                     c1 * 2.0 * (1.0 - nSquared),
                     c1 * (1.0 - sqrt (2.0) * n + nSquared));
}

void IIR::makeHighPass (const float sampleRate,
                        const float frequency)
{
    const float n = tan (double_Pi * frequency / sampleRate);
    const float nSquared = n * n;
    const float c1 = 1.0 / (1.0 + sqrt (2.0) * n + nSquared);

    setCoefficients (c1,
                     c1 * -2.0f,
                     c1,
                     1.0,
                     c1 * 2.0 * (nSquared - 1.0),
                     c1 * (1.0 - sqrt (2.0) * n + nSquared));
}

void IIR::makeNotch (const float sampleRate,
                     const float cutOffFrequency,
                     const float r)
{
    const float w0 = 2 * double_Pi * (cutOffFrequency/ sampleRate);

    setCoefficients(1,
	                -2 * cos(w0),
	                1,
	                1,
	                -2 * r * cos(w0),
	                r * r);
}


void IIR::makeLowShelf (const float sampleRate,
                        const float cutOffFrequency,
                        const float Q,
                        const float gainFactor)
{
    const float A = jmax (0.0f, gainFactor);
    const float aminus1 = A - 1.0;
    const float aplus1 = A + 1.0;
    const float omega = (double_Pi * 2.0 * jmax (cutOffFrequency, 2.0)) / sampleRate;
    const float coso = cos (omega);
    const float beta = sin (omega) * sqrt (A) / Q;
    const float aminus1TimesCoso = aminus1 * coso;

    setCoefficients (A * (aplus1 - aminus1TimesCoso + beta),
                     A * 2.0 * (aminus1 - aplus1 * coso),
                     A * (aplus1 - aminus1TimesCoso - beta),
                     aplus1 + aminus1TimesCoso + beta,
                     -2.0 * (aminus1 + aplus1 * coso),
                     aplus1 + aminus1TimesCoso - beta);
}

void IIR::makeHighShelf (const float sampleRate,
                         const float cutOffFrequency,
                         const float Q,
                         const float gainFactor)
{
    const float A = jmax (0.0f, gainFactor);
    const float aminus1 = A - 1.0;
    const float aplus1 = A + 1.0;
    const float omega = (double_Pi * 2.0 * jmax (cutOffFrequency, 2.0)) / sampleRate;
    const float coso = cos (omega);
    const float beta = sin (omega) * sqrt (A) / Q;
    const float aminus1TimesCoso = aminus1 * coso;

    setCoefficients (A * (aplus1 + aminus1TimesCoso + beta),
                     A * -2.0 * (aminus1 + aplus1 * coso),
                     A * (aplus1 + aminus1TimesCoso - beta),
                     aplus1 - aminus1TimesCoso + beta,
                     2.0 * (aminus1 - aplus1 * coso),
                     aplus1 - aminus1TimesCoso - beta);
}

void IIR::makePeakEQ (const float sampleRate,
                      const float centreFrequency,
                      const float Q,
                      const float gainFactor)
{
    const float A = jmax (0.0f, gainFactor);
    const float omega = (double_Pi * 2.0 * jmax (centreFrequency, 2.0)) / sampleRate;
    const float alpha = 0.5 * sin (omega) / Q;
    const float c2 = -2.0 * cos (omega);
    const float alphaTimesA = alpha * A;
    const float alphaOverA = alpha / A;

    setCoefficients (1.0 + alphaTimesA,
                     c2,
                     1.0 - alphaTimesA,
                     1.0 + alphaOverA,
                     c2,
                     1.0 - alphaOverA);
}

//==============================================================================
void IIR::setCoefficients (float b0,
						   float b1,
						   float b2,
						   float a0,
						   float a1,
						   float a2)
{
    const float a = 1.0 / a0;
    //float absCoeff, max = 0;
    int i;

    b0 *= a;
    b1 *= a;
    b2 *= a;
    a1 *= a;
    a2 *= a;

    coefficients[0] = b0;
    coefficients[1] = b1;
    coefficients[2] = b2;
    coefficients[3] = 1;
    coefficients[4] = a1;
    coefficients[5] = a2;

	for (i = 0; i < NUM_COEFFS; i++)
	{
		coef_fixed[i] = float2fixed(coefficients[i]);
	}

}

/** Returns the coefficients in floating point format
 */
float IIR::getCoeffFloat(int idx)
{
	return coefficients[idx];
}

 /** Returns the coefficients in integer format
 */
int IIR::getCoeffFixed(int idx)
{
	return coef_fixed[idx];
}

