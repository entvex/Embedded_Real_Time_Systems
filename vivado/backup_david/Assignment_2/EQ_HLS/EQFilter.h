/*
  ==============================================================================

   This file is part of the JUCE library - "Jules' Utility Class Extensions"
   Copyright 2004-7 by Raw Material Software ltd.

  ------------------------------------------------------------------------------

   JUCE can be redistributed and/or modified under the terms of the
   GNU General Public License, as published by the Free Software Foundation;
   either version 2 of the License, or (at your option) any later version.

   JUCE is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with JUCE; if not, visit www.gnu.org/licenses or write to the
   Free Software Foundation, Inc., 59 Temple Place, Suite 330,
   Boston, MA 02111-1307 USA

  ------------------------------------------------------------------------------

   If you'd like to release a closed-source product which uses JUCE, commercial
   licenses are also available: visit www.rawmaterialsoftware.com/juce for
   more information.

   Modified by: KBE / 2007.10.10 to be used in example for FPGA implementation
   Modified by: KBE / 2014.06.28 to be used with the BlackFin DSP implementation

  ==============================================================================
*/

#ifndef __JUCE_IIRFILTER_JUCEHEADER__
#define __JUCE_IIRFILTER_JUCEHEADER__

/** A predefined value for Pi, at double-precision.

    @see float_Pi
*/

//------------------------------------------------------------------------------------------------
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


    //==============================================================================
    /** Resets the filter's processing pipeline, ready to start a new stream of data.

        Note that this clears the processing state, but the type of filter and
        its coefficients aren't changed. To put a filter into an inactive state, use
        the makeInactive() method.
    */
    void IIR_reset();
    void IIR_create(void);

	/** Performs the filter operation on the given set of samples.
    */
    void IIR_process_F (float* const samples,
                         const int numSamples);


	/** Performs the filter operation on the given set of samples. (Fixed point version)
	    Returns filtered samples in output
    */
    void IIR_process_S (short* const input,
	                      short* output,
                          const short numSamples);

    //==============================================================================
    /** Sets the filter up to act as a low-pass filter.
    */
    void IIR_makeLowPass (const float sampleRate,
                      const float frequency);

    /** Sets the filter up to act as a high-pass filter.
    */
    void IIR_makeHighPass (const float sampleRate,
                       const float frequency);
                       
    //==============================================================================
    /** Sets the filter up to act as a notch filter with variable r.
    */
    void IIR_makeNotch (const float sampleRate,
                    const float cutOffFrequency,
                    const float r);

    //==============================================================================
    /** Sets the filter up to act as a low-pass shelf filter with variable Q and gain.
    */
    void IIR_makeLowShelf (const float sampleRate,
                       const float cutOffFrequency,
                       const float Q,
                       const float gainFactor);

    /** Sets the filter up to act as a high-pass shelf filter with variable Q and gain.
    */
    void IIR_makeHighShelf (const float sampleRate,
                        const float cutOffFrequency,
                        const float Q,
                        const float gainFactor);

    /** Sets the filter up to act as a band pass filter centred around a
        frequency, with a variable Q and gain.
    */
    void IIR_makePeakEQ (const float sampleRate,
                     const float centreFrequency,
                     const float Q,
                     const float gainFactor);

    //==============================================================================

    /** Returns the coefficients in floating point format
    */
	float IIR_getCoeffFloat(int idx);

    /** Returns the coefficients in integer format
    */
	int IIR_getCoeffFixed(int idx);

    
	//==============================================================================

    void IIR_setCoefficients (float b0, float b1, float b2,
    					  float a0, float a1, float a2);


#endif   // __JUCE_IIRFILTER_JUCEHEADER__
