package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.r3;
import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
public interface y extends x0 {

    public interface a extends x0.a<y> {
        void d(y yVar);
    }

    long b(com.google.android.exoplayer2.trackselection.s[] sVarArr, boolean[] zArr, w0[] w0VarArr, boolean[] zArr2, long j6);

    @Override // com.google.android.exoplayer2.source.x0
    boolean continueLoading(long j6);

    void discardBuffer(long j6, boolean z6);

    long e(long j6, r3 r3Var);

    void f(a aVar, long j6);

    @Override // com.google.android.exoplayer2.source.x0
    long getBufferedPositionUs();

    @Override // com.google.android.exoplayer2.source.x0
    long getNextLoadPositionUs();

    h1 getTrackGroups();

    @Override // com.google.android.exoplayer2.source.x0
    boolean isLoading();

    void maybeThrowPrepareError() throws IOException;

    long readDiscontinuity();

    @Override // com.google.android.exoplayer2.source.x0
    void reevaluateBuffer(long j6);

    long seekToUs(long j6);
}
