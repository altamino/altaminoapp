package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.z3;

/* JADX INFO: loaded from: classes6.dex */
public abstract class s extends z3 {
    protected final z3 timeline;

    @Override // com.google.android.exoplayer2.z3
    public int e(boolean z6) {
        return this.timeline.e(z6);
    }

    @Override // com.google.android.exoplayer2.z3
    public int f(Object obj) {
        return this.timeline.f(obj);
    }

    @Override // com.google.android.exoplayer2.z3
    public int g(boolean z6) {
        return this.timeline.g(z6);
    }

    @Override // com.google.android.exoplayer2.z3
    public int i(int i10, int i11, boolean z6) {
        return this.timeline.i(i10, i11, z6);
    }

    @Override // com.google.android.exoplayer2.z3
    public z3.b k(int i10, z3.b bVar, boolean z6) {
        return this.timeline.k(i10, bVar, z6);
    }

    @Override // com.google.android.exoplayer2.z3
    public int m() {
        return this.timeline.m();
    }

    @Override // com.google.android.exoplayer2.z3
    public int p(int i10, int i11, boolean z6) {
        return this.timeline.p(i10, i11, z6);
    }

    @Override // com.google.android.exoplayer2.z3
    public Object q(int i10) {
        return this.timeline.q(i10);
    }

    @Override // com.google.android.exoplayer2.z3
    public z3.d s(int i10, z3.d dVar, long j6) {
        return this.timeline.s(i10, dVar, j6);
    }

    @Override // com.google.android.exoplayer2.z3
    public int t() {
        return this.timeline.t();
    }

    public s(z3 z3Var) {
        this.timeline = z3Var;
    }
}
