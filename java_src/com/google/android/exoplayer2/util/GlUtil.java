package com.google.android.exoplayer2.util;

import android.opengl.GLES20;
import android.opengl.GLU;

/* loaded from: classes.dex */
public final class GlUtil {
    private static final String TAG = "GlUtil";

    public static void checkGlError() {
        while (true) {
            int iGlGetError = GLES20.glGetError();
            if (iGlGetError == 0) {
                return;
            }
            Log.e(TAG, "glError " + GLU.gluErrorString(iGlGetError));
        }
    }
}
