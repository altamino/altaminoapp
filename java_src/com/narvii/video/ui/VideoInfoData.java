package com.narvii.video.ui;

/* loaded from: classes3.dex */
public class VideoInfoData {
    public int mBitRate;
    public int mCodec;
    public int mDelay;
    public int mFrameRate;
    public int mHeight;
    public int mWidth;

    public VideoInfoData(int i, int i2, int i3, int i4, int i5, int i6) {
        this.mWidth = i;
        this.mHeight = i2;
        this.mDelay = i3;
        this.mFrameRate = i4;
        this.mBitRate = i5;
        this.mCodec = i6;
    }

    public VideoInfoData(int i, int i2, int i3, int i4, int i5) {
        this(i, i2, i3, i4, i5, 0);
    }

    public String toString() {
        return "VideoInfoData{mWidth=" + this.mWidth + ", mHeight=" + this.mHeight + ", mDelay=" + this.mDelay + ", mFrameRate=" + this.mFrameRate + ", mBitRate=" + this.mBitRate + ", mCodec=" + this.mCodec + '}';
    }
}
