package com.narvii.chat.audio;

import java.io.IOException;

/* loaded from: classes2.dex */
public class ResamplerException extends IOException {
    public static final int RESAMPLER_ERR_ALLOC_FAILED = 1;
    public static final int RESAMPLER_ERR_BAD_STATE = 2;
    public static final int RESAMPLER_ERR_INVALID_ARG = 3;
    public static final int RESAMPLER_ERR_PTR_OVERLAP = 4;
    public static final int RESAMPLER_ERR_SUCCESS = 0;
    private int error;

    public ResamplerException(int i) {
        super(msg(i));
        this.error = i;
    }

    public int getCode() {
        return this.error;
    }

    private static String msg(int i) {
        if (i == 0) {
            return "RESAMPLER_ERR_SUCCESS";
        }
        if (i == 1) {
            return "RESAMPLER_ERR_ALLOC_FAILED";
        }
        if (i == 2) {
            return "RESAMPLER_ERR_BAD_STATE";
        }
        if (i == 3) {
            return "RESAMPLER_ERR_INVALID_ARG";
        }
        if (i == 4) {
            return "RESAMPLER_ERR_PTR_OVERLAP";
        }
        return "RESAMPLER_ERR_" + i;
    }
}
