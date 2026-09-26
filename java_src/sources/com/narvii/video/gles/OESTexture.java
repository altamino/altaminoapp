package com.narvii.video.gles;

import android.opengl.GLES20;

/* JADX INFO: loaded from: classes9.dex */
public class OESTexture {
    private int mTextureHandle;

    public int getTextureId() {
        return this.mTextureHandle;
    }

    public void init() {
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, iArr, 0);
        int i10 = iArr[0];
        this.mTextureHandle = i10;
        GLES20.glBindTexture(36197, i10);
        GLES20.glTexParameteri(36197, 10242, 33071);
        GLES20.glTexParameteri(36197, 10243, 33071);
        GLES20.glTexParameteri(36197, 10241, 9729);
        GLES20.glTexParameteri(36197, 10240, 9729);
    }
}
