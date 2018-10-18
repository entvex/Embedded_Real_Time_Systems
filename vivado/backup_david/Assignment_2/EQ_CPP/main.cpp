/*
 * Equalize C++ Application
 * Testing HLS EQ IP Core
 */
#include <stdio.h>
#include "IIR.h"
#include "EqHLS.h"

#define NUM_BANDS 7		// Number of EQ bands must be equal to IP Core
#define SAMPLE_FS 48000 // Sample rate
#define SAMPLES   48000 // Number of samples, 1 sec.

int main()
{
	IIR iir[NUM_BANDS]; // IIR filter class to compute coefficients
	EqHLS eq(XPAR_EQ_0_DEVICE_ID); // EQ abstraction

	// Initialization of the HLS EQ IP Core
	if (eq.Init() != XST_SUCCESS) return -1;

	// Computes coefficients for the equalizer 7 bands
	iir[0].makePeakEQ(SAMPLE_FS,  200, 10, 1.8); // Cut frequency 0.2 kHz
	iir[1].makePeakEQ(SAMPLE_FS,  500, 10, 0.1); // Cut frequency 0.5 kHz
	iir[2].makePeakEQ(SAMPLE_FS,  1000, 10, 0.1); // Cut frequency 1 kHz
	iir[3].makePeakEQ(SAMPLE_FS,  2000, 10, 1.8); // Cut frequency 2 kHz
	iir[4].makePeakEQ(SAMPLE_FS,  4000, 10, 0.1); // Cut frequency 4 kHz
	iir[5].makePeakEQ(SAMPLE_FS,  8000, 10, 0.1); // Cut frequency 8 kHz
	iir[6].makePeakEQ(SAMPLE_FS,  16000, 10, 1.8); // Cut frequency 16 kHz

	// Update the HLS EQ IP Core with computed coefficients
	for (int band = 0; band < NUM_BANDS; band++)
		eq.setCoeff((iir[band].getCoeffPtr()), band);

	// Perform filter impulse response
	unsigned long int signalIn, signalOut;
	for (int i=0;i<SAMPLES;i++) {
	  if (i==0)
		  signalIn = 0x400000; // Using 24 bits
	  else
		  signalIn = 0;

	  eq.filterSample(signalIn);
	  signalOut = eq.getFiltered();

	  printf("%i %d %d\n",i,(int)signalIn>>8,(int)signalOut>>8); // Convert to 16 bit
	}

	return 0;
}
