package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.b2;

/* JADX INFO: loaded from: classes6.dex */
public final class r implements w0 {
    @Override // com.google.android.exoplayer2.source.w0
    public int a(b2 b2Var, com.google.android.exoplayer2.decoder.g gVar, int i10) {
        gVar.k(4);
        return -4;
    }

    @Override // com.google.android.exoplayer2.source.w0
    public boolean isReady() {
        return true;
    }

    @Override // com.google.android.exoplayer2.source.w0
    public void maybeThrowError() {
    }

    @Override // com.google.android.exoplayer2.source.w0
    public int skipData(long j6) {
        return 0;
    }
}
