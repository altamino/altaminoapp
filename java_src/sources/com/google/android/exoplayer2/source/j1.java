package com.google.android.exoplayer2.source;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.i2;
import com.google.android.exoplayer2.z3;

/* JADX INFO: loaded from: classes9.dex */
public abstract class j1 extends g<Void> {
    private static final Void CHILD_SOURCE_ID = null;
    protected final b0 mediaSource;

    @Nullable
    protected b0.b G(b0.b bVar) {
        return bVar;
    }

    protected long I(long j6) {
        return j6;
    }

    protected int K(int i10) {
        return i10;
    }

    protected final void O() {
        F(CHILD_SOURCE_ID, this.mediaSource);
    }

    @Override // com.google.android.exoplayer2.source.b0
    public y c(b0.b bVar, com.google.android.exoplayer2.upstream.b bVar2, long j6) {
        return this.mediaSource.c(bVar, bVar2, j6);
    }

    @Override // com.google.android.exoplayer2.source.b0
    public void f(y yVar) {
        this.mediaSource.f(yVar);
    }

    @Override // com.google.android.exoplayer2.source.b0
    public i2 j() {
        return this.mediaSource.j();
    }

    @Override // com.google.android.exoplayer2.source.a, com.google.android.exoplayer2.source.b0
    @Nullable
    public z3 o() {
        return this.mediaSource.o();
    }

    @Override // com.google.android.exoplayer2.source.a, com.google.android.exoplayer2.source.b0
    public boolean r() {
        return this.mediaSource.r();
    }

    protected j1(b0 b0Var) {
        this.mediaSource = b0Var;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.source.g
    @Nullable
    /* JADX INFO: renamed from: H, reason: merged with bridge method [inline-methods] */
    public final b0.b A(Void r1, b0.b bVar) {
        return G(bVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.source.g
    /* JADX INFO: renamed from: J, reason: merged with bridge method [inline-methods] */
    public final long B(Void r1, long j6) {
        return I(j6);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.source.g
    /* JADX INFO: renamed from: L, reason: merged with bridge method [inline-methods] */
    public final int C(Void r1, int i10) {
        return K(i10);
    }

    protected void M(z3 z3Var) {
        x(z3Var);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.source.g
    /* JADX INFO: renamed from: N, reason: merged with bridge method [inline-methods] */
    public final void D(Void r1, b0 b0Var, z3 z3Var) {
        M(z3Var);
    }

    protected void P() {
        O();
    }

    @Override // com.google.android.exoplayer2.source.g, com.google.android.exoplayer2.source.a
    protected final void w(@Nullable com.google.android.exoplayer2.upstream.m0 m0Var) {
        super.w(m0Var);
        P();
    }
}
