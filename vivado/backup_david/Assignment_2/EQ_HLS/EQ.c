#define ALGO_BITS		16		  // 16 bits resolution of samples
#define NUM_BANDS       7

// Performs filtering for specific band
void iir (int b0, int b1, int b2, int a1, int a2, short band, short sample, short* result)
{
	static int x1_fix[NUM_BANDS], x2_fix[NUM_BANDS], y1_fix[NUM_BANDS], y2_fix[NUM_BANDS];
	int in = sample;
	int out =  b0 * in      // b0
			 + b1 * x1_fix[band]  // b1
			 + b2 * x2_fix[band]  // b2
			 - a1 * y1_fix[band]  // a1
			 - a2 * y2_fix[band]; // a2

	// Scale filter
	out >>= (ALGO_BITS-1);

	x2_fix[band] = x1_fix[band];
	x1_fix[band] = in;
	y2_fix[band] = y1_fix[band];
	y1_fix[band] = out;

	*result = out;
}

// Processing NUM_BANDS cascade IIR filters
void eq (int b0, int b1, int b2, int a1, int a2, // b0, b1, b2, a1, a2
		 short band,
		 short sampleIn,
         short* sampleOut)
{
    static int coeff[NUM_BANDS*5];
    short i;
	short result = 0;
	short b = 0;
	short input = sampleIn;

    if (band < NUM_BANDS)
    {  // Update coefficients
    	i = band*5;
   	    coeff[i++] = b0;
   	    coeff[i++] = b1;
   	    coeff[i++] = b2;
   	    coeff[i++] = a1;
   	    coeff[i] = a2;
    }
    else
    {  // Processing EQ filter
		loop: for (i = 0; i < NUM_BANDS*5; i += 5) {
			iir(coeff[i], coeff[i+1], coeff[i+2], //b0-2
				coeff[i+3], coeff[i+4], //a1-2
				b, input, &result);
			input = result;
			b++;
		}
    }
	*sampleOut = result;
}
