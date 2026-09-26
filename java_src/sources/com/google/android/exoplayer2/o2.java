package com.google.android.exoplayer2;

import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes11.dex */
final class o2 {
    private static final String TAG = "MediaPeriodHolder";
    public boolean allRenderersInCorrectState;
    public boolean hasEnabledTracks;
    public p2 info;
    private final boolean[] mayRetainStreamFlags;
    public final com.google.android.exoplayer2.source.y mediaPeriod;
    private final u2 mediaSourceList;

    @Nullable
    private o2 next;
    public boolean prepared;
    private final o3[] rendererCapabilities;
    private long rendererPositionOffsetUs;
    public final com.google.android.exoplayer2.source.w0[] sampleStreams;
    private com.google.android.exoplayer2.source.h1 trackGroups;
    private final com.google.android.exoplayer2.trackselection.b0 trackSelector;
    private com.google.android.exoplayer2.trackselection.c0 trackSelectorResult;
    public final Object uid;

    private void c(com.google.android.exoplayer2.source.w0[] w0VarArr) {
        int i10 = 0;
        while (true) {
            o3[] o3VarArr = this.rendererCapabilities;
            if (i10 >= o3VarArr.length) {
                return;
            }
            if (o3VarArr[i10].getTrackType() == -2 && this.trackSelectorResult.c(i10)) {
                w0VarArr[i10] = new com.google.android.exoplayer2.source.r();
            }
            i10++;
        }
    }

    private void g(com.google.android.exoplayer2.source.w0[] w0VarArr) {
        int i10 = 0;
        while (true) {
            o3[] o3VarArr = this.rendererCapabilities;
            if (i10 >= o3VarArr.length) {
                return;
            }
            if (o3VarArr[i10].getTrackType() == -2) {
                w0VarArr[i10] = null;
            }
            i10++;
        }
    }

    private boolean r() {
        return this.next == null;
    }

    public long b(com.google.android.exoplayer2.trackselection.c0 c0Var, long j6, boolean z6, boolean[] zArr) {
        int i10 = 0;
        while (true) {
            boolean z10 = true;
            if (i10 >= c0Var.length) {
                break;
            }
            boolean[] zArr2 = this.mayRetainStreamFlags;
            if (z6 || !c0Var.b(this.trackSelectorResult, i10)) {
                z10 = false;
            }
            zArr2[i10] = z10;
            i10++;
        }
        g(this.sampleStreams);
        f();
        this.trackSelectorResult = c0Var;
        h();
        long jB = this.mediaPeriod.b(c0Var.selections, this.mayRetainStreamFlags, this.sampleStreams, zArr, j6);
        c(this.sampleStreams);
        this.hasEnabledTracks = false;
        int i11 = 0;
        while (true) {
            com.google.android.exoplayer2.source.w0[] w0VarArr = this.sampleStreams;
            if (i11 >= w0VarArr.length) {
                return jB;
            }
            if (w0VarArr[i11] != null) {
                com.google.android.exoplayer2.util.a.g(c0Var.c(i11));
                if (this.rendererCapabilities[i11].getTrackType() != -2) {
                    this.hasEnabledTracks = true;
                }
            } else {
                com.google.android.exoplayer2.util.a.g(c0Var.selections[i11] == null);
            }
            i11++;
        }
    }

    @Nullable
    public o2 j() {
        return this.next;
    }

    public long l() {
        return this.rendererPositionOffsetUs;
    }

    public com.google.android.exoplayer2.source.h1 n() {
        return this.trackGroups;
    }

    public com.google.android.exoplayer2.trackselection.c0 o() {
        return this.trackSelectorResult;
    }

    public void p(float f, z3 z3Var) throws q {
        this.prepared = true;
        this.trackGroups = this.mediaPeriod.getTrackGroups();
        com.google.android.exoplayer2.trackselection.c0 c0VarV = v(f, z3Var);
        p2 p2Var = this.info;
        long jMax = p2Var.startPositionUs;
        long j6 = p2Var.durationUs;
        if (j6 != -9223372036854775807L && jMax >= j6) {
            jMax = Math.max(0L, j6 - 1);
        }
        long jA = a(c0VarV, jMax, false);
        long j10 = this.rendererPositionOffsetUs;
        p2 p2Var2 = this.info;
        this.rendererPositionOffsetUs = j10 + (p2Var2.startPositionUs - jA);
        this.info = p2Var2.b(jA);
    }

    public void x(long j6) {
        this.rendererPositionOffsetUs = j6;
    }

    private static void u(u2 u2Var, com.google.android.exoplayer2.source.y yVar) {
        try {
            if (yVar instanceof com.google.android.exoplayer2.source.d) {
                u2Var.z(((com.google.android.exoplayer2.source.d) yVar).mediaPeriod);
            } else {
                u2Var.z(yVar);
            }
        } catch (RuntimeException e) {
            com.google.android.exoplayer2.util.t.d(TAG, "Period release failed.", e);
        }
    }

    public void A() {
        com.google.android.exoplayer2.source.y yVar = this.mediaPeriod;
        if (yVar instanceof com.google.android.exoplayer2.source.d) {
            long j6 = this.info.endPositionUs;
            if (j6 == -9223372036854775807L) {
                j6 = Long.MIN_VALUE;
            }
            ((com.google.android.exoplayer2.source.d) yVar).k(0L, j6);
        }
    }

    public long a(com.google.android.exoplayer2.trackselection.c0 c0Var, long j6, boolean z6) {
        return b(c0Var, j6, z6, new boolean[this.rendererCapabilities.length]);
    }

    public long i() {
        if (!this.prepared) {
            return this.info.startPositionUs;
        }
        long bufferedPositionUs = this.hasEnabledTracks ? this.mediaPeriod.getBufferedPositionUs() : Long.MIN_VALUE;
        return bufferedPositionUs == Long.MIN_VALUE ? this.info.durationUs : bufferedPositionUs;
    }

    public long k() {
        if (this.prepared) {
            return this.mediaPeriod.getNextLoadPositionUs();
        }
        return 0L;
    }

    public long m() {
        return this.info.startPositionUs + this.rendererPositionOffsetUs;
    }

    public boolean q() {
        return this.prepared && (!this.hasEnabledTracks || this.mediaPeriod.getBufferedPositionUs() == Long.MIN_VALUE);
    }

    public com.google.android.exoplayer2.trackselection.c0 v(float f, z3 z3Var) throws q {
        com.google.android.exoplayer2.trackselection.c0 c0VarH = this.trackSelector.h(this.rendererCapabilities, n(), this.info.id, z3Var);
        for (com.google.android.exoplayer2.trackselection.s sVar : c0VarH.selections) {
            if (sVar != null) {
                sVar.onPlaybackSpeed(f);
            }
        }
        return c0VarH;
    }

    public void w(@Nullable o2 o2Var) {
        if (o2Var == this.next) {
            return;
        }
        f();
        this.next = o2Var;
        h();
    }

    public o2(o3[] o3VarArr, long j6, com.google.android.exoplayer2.trackselection.b0 b0Var, com.google.android.exoplayer2.upstream.b bVar, u2 u2Var, p2 p2Var, com.google.android.exoplayer2.trackselection.c0 c0Var) {
        this.rendererCapabilities = o3VarArr;
        this.rendererPositionOffsetUs = j6;
        this.trackSelector = b0Var;
        this.mediaSourceList = u2Var;
        com.google.android.exoplayer2.source.b0.b bVar2 = p2Var.id;
        this.uid = bVar2.periodUid;
        this.info = p2Var;
        this.trackGroups = com.google.android.exoplayer2.source.h1.EMPTY;
        this.trackSelectorResult = c0Var;
        this.sampleStreams = new com.google.android.exoplayer2.source.w0[o3VarArr.length];
        this.mayRetainStreamFlags = new boolean[o3VarArr.length];
        this.mediaPeriod = e(bVar2, u2Var, bVar, p2Var.startPositionUs, p2Var.endPositionUs);
    }

    private static com.google.android.exoplayer2.source.y e(com.google.android.exoplayer2.source.b0.b bVar, u2 u2Var, com.google.android.exoplayer2.upstream.b bVar2, long j6, long j10) {
        com.google.android.exoplayer2.source.y yVarH = u2Var.h(bVar, bVar2, j6);
        if (j10 != -9223372036854775807L) {
            return new com.google.android.exoplayer2.source.d(yVarH, true, 0L, j10);
        }
        return yVarH;
    }

    private void f() {
        if (!r()) {
            return;
        }
        int i10 = 0;
        while (true) {
            com.google.android.exoplayer2.trackselection.c0 c0Var = this.trackSelectorResult;
            if (i10 < c0Var.length) {
                boolean zC = c0Var.c(i10);
                com.google.android.exoplayer2.trackselection.s sVar = this.trackSelectorResult.selections[i10];
                if (zC && sVar != null) {
                    sVar.disable();
                }
                i10++;
            } else {
                return;
            }
        }
    }

    private void h() {
        if (!r()) {
            return;
        }
        int i10 = 0;
        while (true) {
            com.google.android.exoplayer2.trackselection.c0 c0Var = this.trackSelectorResult;
            if (i10 < c0Var.length) {
                boolean zC = c0Var.c(i10);
                com.google.android.exoplayer2.trackselection.s sVar = this.trackSelectorResult.selections[i10];
                if (zC && sVar != null) {
                    sVar.enable();
                }
                i10++;
            } else {
                return;
            }
        }
    }

    public void d(long j6) {
        com.google.android.exoplayer2.util.a.g(r());
        this.mediaPeriod.continueLoading(y(j6));
    }

    public void s(long j6) {
        com.google.android.exoplayer2.util.a.g(r());
        if (this.prepared) {
            this.mediaPeriod.reevaluateBuffer(y(j6));
        }
    }

    public void t() {
        f();
        u(this.mediaSourceList, this.mediaPeriod);
    }

    public long y(long j6) {
        return j6 - l();
    }

    public long z(long j6) {
        return j6 + l();
    }
}
