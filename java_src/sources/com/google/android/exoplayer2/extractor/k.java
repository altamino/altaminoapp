package com.google.android.exoplayer2.extractor;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.a2;
import java.io.EOFException;
import java.io.IOException;

/* JADX INFO: loaded from: classes11.dex */
public final class k implements e0 {
    private final byte[] readBuffer = new byte[4096];

    @Override // com.google.android.exoplayer2.extractor.e0
    public /* synthetic */ int b(com.google.android.exoplayer2.upstream.h hVar, int i10, boolean z6) {
        return d0.a(this, hVar, i10, z6);
    }

    @Override // com.google.android.exoplayer2.extractor.e0
    public /* synthetic */ void c(com.google.android.exoplayer2.util.c0 c0Var, int i10) {
        d0.b(this, c0Var, i10);
    }

    @Override // com.google.android.exoplayer2.extractor.e0
    public void d(a2 a2Var) {
    }

    @Override // com.google.android.exoplayer2.extractor.e0
    public void e(long j6, int i10, int i11, int i12, @Nullable e0.a aVar) {
    }

    @Override // com.google.android.exoplayer2.extractor.e0
    public int a(com.google.android.exoplayer2.upstream.h hVar, int i10, boolean z6, int i11) throws IOException {
        int i12 = hVar.read(this.readBuffer, 0, Math.min(this.readBuffer.length, i10));
        if (i12 != -1) {
            return i12;
        }
        if (z6) {
            return -1;
        }
        throw new EOFException();
    }

    @Override // com.google.android.exoplayer2.extractor.e0
    public void f(com.google.android.exoplayer2.util.c0 c0Var, int i10, int i11) {
        c0Var.Q(i10);
    }
}
