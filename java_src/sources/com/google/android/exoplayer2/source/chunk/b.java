package com.google.android.exoplayer2.source.chunk;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.a2;
import com.google.android.exoplayer2.upstream.k;
import com.google.android.exoplayer2.upstream.o;

/* JADX INFO: loaded from: classes10.dex */
public abstract class b extends a {
    public final long chunkIndex;

    public b(k kVar, o oVar, a2 a2Var, int i10, @Nullable Object obj, long j6, long j10, long j11) {
        super(kVar, oVar, 1, a2Var, i10, obj, j6, j10);
        com.google.android.exoplayer2.util.a.e(a2Var);
        this.chunkIndex = j11;
    }
}
