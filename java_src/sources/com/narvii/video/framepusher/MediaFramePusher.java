package com.narvii.video.framepusher;

import javax.microedition.khronos.egl.EGLContext;

/* JADX INFO: loaded from: classes7.dex */
public interface MediaFramePusher {
    public static final int TEXTURE_TYPE_2D = 0;
    public static final int TEXTURE_TYPE_OES = 1;

    void pushAudioFrame(byte[] bArr);

    void pushVideoFrame(EGLContext eGLContext, int i10, int i11, int i12, int i13, float[] fArr);

    void pushVideoFrame(byte[] bArr, int i10, int i11, int i12);
}
