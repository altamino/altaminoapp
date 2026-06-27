package com.narvii.video.framepusher;

import javax.microedition.khronos.egl.EGLContext;

/* loaded from: classes3.dex */
public interface MediaFramePusher {
    public static final int TEXTURE_TYPE_2D = 0;
    public static final int TEXTURE_TYPE_OES = 1;

    void pushAudioFrame(byte[] bArr);

    void pushVideoFrame(EGLContext eGLContext, int i, int i2, int i3, int i4, float[] fArr);

    void pushVideoFrame(byte[] bArr, int i, int i2, int i3);
}
