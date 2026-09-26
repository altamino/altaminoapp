package com.narvii.video.ui;

import kotlinx.serialization.json.internal.b;

/* JADX INFO: loaded from: classes10.dex */
public class VideoInfoData {
    public int mBitRate;
    public int mCodec;
    public int mDelay;
    public int mFrameRate;
    public int mHeight;
    public int mWidth;

    public VideoInfoData(int i10, int i11, int i12, int i13, int i14, int i15) {
        this.mWidth = i10;
        this.mHeight = i11;
        this.mDelay = i12;
        this.mFrameRate = i13;
        this.mBitRate = i14;
        this.mCodec = i15;
    }

    public VideoInfoData(int i10, int i11, int i12, int i13, int i14) {
        this(i10, i11, i12, i13, i14, 0);
    }

    public String toString() {
        return "VideoInfoData{mWidth=" + this.mWidth + ", mHeight=" + this.mHeight + ", mDelay=" + this.mDelay + ", mFrameRate=" + this.mFrameRate + ", mBitRate=" + this.mBitRate + ", mCodec=" + this.mCodec + b.END_OBJ;
    }
}
