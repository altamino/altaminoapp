package com.google.android.exoplayer2.drm;

/* JADX INFO: loaded from: classes6.dex */
public final class o0 extends Exception {
    public static final int REASON_INSTANTIATION_ERROR = 2;
    public static final int REASON_UNSUPPORTED_SCHEME = 1;
    public final int reason;

    public o0(int i10) {
        this.reason = i10;
    }

    public o0(int i10, Exception exc) {
        super(exc);
        this.reason = i10;
    }
}
