package com.google.android.exoplayer2.source;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.i2;
import com.google.android.exoplayer2.z3;

/* JADX INFO: loaded from: classes9.dex */
public final class z0 extends z3 {
    private final long elapsedRealtimeEpochOffsetMs;
    private final boolean isDynamic;
    private final boolean isSeekable;

    @Nullable
    private final i2.g liveConfiguration;

    @Nullable
    private final Object manifest;

    @Nullable
    private final i2 mediaItem;
    private final long periodDurationUs;
    private final long presentationStartTimeMs;
    private final boolean suppressPositionProjection;
    private final long windowDefaultStartPositionUs;
    private final long windowDurationUs;
    private final long windowPositionInPeriodUs;
    private final long windowStartTimeMs;
    private static final Object UID = new Object();
    private static final i2 MEDIA_ITEM = new i2.c().d("SinglePeriodTimeline").g(Uri.EMPTY).a();

    @Deprecated
    public z0(long j6, boolean z6, boolean z10, boolean z11, @Nullable Object obj, @Nullable Object obj2) {
        this(j6, j6, 0L, 0L, z6, z10, z11, obj, obj2);
    }

    @Override // com.google.android.exoplayer2.z3
    public z3.b k(int i10, z3.b bVar, boolean z6) {
        com.google.android.exoplayer2.util.a.c(i10, 0, 1);
        return bVar.v(null, z6 ? UID : null, 0, this.periodDurationUs, -this.windowPositionInPeriodUs);
    }

    @Override // com.google.android.exoplayer2.z3
    public int m() {
        return 1;
    }

    @Override // com.google.android.exoplayer2.z3
    public Object q(int i10) {
        com.google.android.exoplayer2.util.a.c(i10, 0, 1);
        return UID;
    }

    @Override // com.google.android.exoplayer2.z3
    public int t() {
        return 1;
    }

    public z0(long j6, boolean z6, boolean z10, boolean z11, @Nullable Object obj, i2 i2Var) {
        this(j6, j6, 0L, 0L, z6, z10, z11, obj, i2Var);
    }

    @Override // com.google.android.exoplayer2.z3
    public int f(Object obj) {
        return UID.equals(obj) ? 0 : -1;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x002e A[PHI: r1
      0x002e: PHI (r1v2 long) = (r1v1 long), (r1v1 long), (r1v1 long), (r1v6 long) binds: [B:3:0x000d, B:5:0x0011, B:7:0x0017, B:12:0x002b] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.google.android.exoplayer2.z3
    public z3.d s(int i10, z3.d dVar, long j6) {
        long j10;
        com.google.android.exoplayer2.util.a.c(i10, 0, 1);
        long j11 = this.windowDefaultStartPositionUs;
        boolean z6 = this.isDynamic;
        if (!z6 || this.suppressPositionProjection || j6 == 0) {
            j10 = j11;
        } else {
            long j12 = this.windowDurationUs;
            if (j12 != -9223372036854775807L) {
                j11 += j6;
                if (j11 <= j12) {
                    j10 = j11;
                }
            }
            j10 = -9223372036854775807L;
        }
        return dVar.k(z3.d.SINGLE_WINDOW_UID, this.mediaItem, this.manifest, this.presentationStartTimeMs, this.windowStartTimeMs, this.elapsedRealtimeEpochOffsetMs, this.isSeekable, z6, this.liveConfiguration, j10, this.windowDurationUs, 0, 0, this.windowPositionInPeriodUs);
    }

    @Deprecated
    public z0(long j6, long j10, long j11, long j12, boolean z6, boolean z10, boolean z11, @Nullable Object obj, @Nullable Object obj2) {
        this(-9223372036854775807L, -9223372036854775807L, -9223372036854775807L, j6, j10, j11, j12, z6, z10, z11, obj, obj2);
    }

    public z0(long j6, long j10, long j11, long j12, boolean z6, boolean z10, boolean z11, @Nullable Object obj, i2 i2Var) {
        this(-9223372036854775807L, -9223372036854775807L, -9223372036854775807L, j6, j10, j11, j12, z6, z10, false, obj, i2Var, z11 ? i2Var.liveConfiguration : null);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @Deprecated
    public z0(long j6, long j10, long j11, long j12, long j13, long j14, long j15, boolean z6, boolean z10, boolean z11, @Nullable Object obj, @Nullable Object obj2) {
        i2 i2Var = MEDIA_ITEM;
        this(j6, j10, j11, j12, j13, j14, j15, z6, z10, false, obj, i2Var.b().f(obj2).a(), z11 ? i2Var.liveConfiguration : null);
    }

    @Deprecated
    public z0(long j6, long j10, long j11, long j12, long j13, long j14, long j15, boolean z6, boolean z10, @Nullable Object obj, i2 i2Var, @Nullable i2.g gVar) {
        this(j6, j10, j11, j12, j13, j14, j15, z6, z10, false, obj, i2Var, gVar);
    }

    public z0(long j6, long j10, long j11, long j12, long j13, long j14, long j15, boolean z6, boolean z10, boolean z11, @Nullable Object obj, i2 i2Var, @Nullable i2.g gVar) {
        this.presentationStartTimeMs = j6;
        this.windowStartTimeMs = j10;
        this.elapsedRealtimeEpochOffsetMs = j11;
        this.periodDurationUs = j12;
        this.windowDurationUs = j13;
        this.windowPositionInPeriodUs = j14;
        this.windowDefaultStartPositionUs = j15;
        this.isSeekable = z6;
        this.isDynamic = z10;
        this.suppressPositionProjection = z11;
        this.manifest = obj;
        this.mediaItem = (i2) com.google.android.exoplayer2.util.a.e(i2Var);
        this.liveConfiguration = gVar;
    }
}
