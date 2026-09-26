package com.google.android.exoplayer2.source.chunk;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.a2;
import com.google.android.exoplayer2.source.u;
import com.google.android.exoplayer2.upstream.g0;
import com.google.android.exoplayer2.upstream.k;
import com.google.android.exoplayer2.upstream.l0;
import com.google.android.exoplayer2.upstream.o;

/* JADX INFO: loaded from: classes10.dex */
public abstract class a implements g0.e {
    protected final l0 dataSource;
    public final o dataSpec;
    public final long endTimeUs;
    public final long loadTaskId = u.a();
    public final long startTimeUs;
    public final a2 trackFormat;

    @Nullable
    public final Object trackSelectionData;
    public final int trackSelectionReason;
    public final int type;

    public a(k kVar, o oVar, int i10, a2 a2Var, int i11, @Nullable Object obj, long j6, long j10) {
        this.dataSource = new l0(kVar);
        this.dataSpec = (o) com.google.android.exoplayer2.util.a.e(oVar);
        this.type = i10;
        this.trackFormat = a2Var;
        this.trackSelectionReason = i11;
        this.trackSelectionData = obj;
        this.startTimeUs = j6;
        this.endTimeUs = j10;
    }
}
