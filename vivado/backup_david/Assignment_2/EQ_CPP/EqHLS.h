/*
 * EqHLS.h
 *
 *  Created on: 5. dec. 2017
 *      Author: au288681
 */

#ifndef SRC_HAL_EQHLS_H_
#define SRC_HAL_EQHLS_H_

#include "xeq.h"

class EqHLS
{
public:
	EqHLS(int deviceId) : mDeviceId(deviceId) {};

	int Init(void);

	void filterSample(unsigned long sample);
	unsigned long getFiltered(void);
    void setCoeff(int *coeff, int band);

private:

	int mDeviceId;

	// HLS EQ HW instance
	XEq mHlsEq;
};

#endif /* SRC_HAL_EQHLS_H_ */
