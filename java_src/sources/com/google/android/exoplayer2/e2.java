package com.google.android.exoplayer2;

/* JADX INFO: loaded from: classes11.dex */
public final class e2 extends IllegalStateException {
    public final long positionMs;
    public final z3 timeline;
    public final int windowIndex;

    public e2(z3 z3Var, int i10, long j6) {
        this.timeline = z3Var;
        this.windowIndex = i10;
        this.positionMs = j6;
    }
}
