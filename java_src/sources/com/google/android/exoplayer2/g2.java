package com.google.android.exoplayer2;

/* JADX INFO: loaded from: classes11.dex */
public interface g2 {
    boolean a(long j6, long j10, float f);

    void b(m3[] m3VarArr, com.google.android.exoplayer2.source.h1 h1Var, com.google.android.exoplayer2.trackselection.s[] sVarArr);

    boolean c(long j6, float f, boolean z6, long j10);

    com.google.android.exoplayer2.upstream.b getAllocator();

    long getBackBufferDurationUs();

    void onPrepared();

    void onReleased();

    void onStopped();

    boolean retainBackBufferFromKeyframe();
}
