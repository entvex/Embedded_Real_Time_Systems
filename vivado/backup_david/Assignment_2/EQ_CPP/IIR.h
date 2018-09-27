/*
 * IIR.h
 *
 *  Created on: 5. dec. 2017
 *      Author: au288681
 */

#ifndef SRC_IIR_H_
#define SRC_IIR_H_

//------------------------------------------------------------------------------------------------
#define NUM_COEFFS      6		  // Number of b0,b1,b3 and a0,a1,a2 coefficients
#define ALGO_BITS		16		  // 16 bits resolution of samples

#if (ALGO_BITS == 16)
#define ALGO_SCALE		0x7fff    // 16 bit Maximum integer (15 bit + sign) value used for conversion float <-> fixed
#endif

#if (ALGO_BITS == 20)
#define ALGO_SCALE		0x7ffff   // 20 bit Maximum integer (19 bit + sign) value used for conversion float <-> fixed
#endif

#if (ALGO_BITS == 24)
#define ALGO_SCALE		0x7fffff  // 24 bit Maximum integer (23 bit + sign) value used for conversion float <-> fixed
#endif

#define float2fixed(i) ((int)(i*ALGO_SCALE))
#define fixed2float(i) ((float)i/ALGO_SCALE)

//==============================================================================
/**
    An IIR filter that can perform low, high, or band-pass filtering on an
    audio signal.

    @see IIRFilterAudioSource
*/

class IIR
{

public:
    //==============================================================================
    /** Resets the filter's processing pipeline, ready to start a new stream of data.

        Note that this clears the processing state, but the type of filter and
        its coefficients aren't changed. To put a filter into an inactive state, use
        the makeInactive() method.
    */
    IIR();

	/** Performs the filter operation on the given set of samples.
    */
    void process(float* samples,
                 const int numSamples);


	/** Performs the filter operation on the given set of samples. (Fixed point version)
	    Returns filtered samples in output
    */
    void process(short* const input,
	             short* output,
                 const short numSamples);

    //==============================================================================
    /** Sets the filter up to act as a low-pass filter.
    */
    void makeLowPass (const float sampleRate,
                      const float frequency);

    /** Sets the filter up to act as a high-pass filter.
    */
    void makeHighPass (const float sampleRate,
                       const float frequency);

    //==============================================================================
    /** Sets the filter up to act as a notch filter with variable r.
    */
    void makeNotch (const float sampleRate,
                    const float cutOffFrequency,
                    const float r);

    //==============================================================================
    /** Sets the filter up to act as a low-pass shelf filter with variable Q and gain.
    */
    void makeLowShelf (const float sampleRate,
                       const float cutOffFrequency,
                       const float Q,
                       const float gainFactor);

    /** Sets the filter up to act as a high-pass shelf filter with variable Q and gain.
    */
    void makeHighShelf (const float sampleRate,
                        const float cutOffFrequency,
                        const float Q,
                        const float gainFactor);

    /** Sets the filter up to act as a band pass filter centred around a
        frequency, with a variable Q and gain.
    */
    void makePeakEQ (const float sampleRate,
                     const float centreFrequency,
                     const float Q,
                     const float gainFactor);

    //==============================================================================

    /** Returns the coefficients in floating point format
    */
	float getCoeffFloat(int idx);

    /** Returns the coefficients in integer format
    */
	int getCoeffFixed(int idx);

	int* getCoeffPtr(void) { return coef_fixed; };

	//==============================================================================

    void setCoefficients (float b0, float b1, float b2,
    					  float a0, float a1, float a2);


private:
    float coefficients[NUM_COEFFS]; // = {b0, b1, b2, a0, a1, a2}
    int coef_fixed[NUM_COEFFS]; // = {b0, b1, b2, a0, a1, a2}

    float x1_float, x2_float, y1_float, y2_float;
    int x1_fix, x2_fix, y1_fix, y2_fix;

};

#endif /* SRC_IIR_H_ */

