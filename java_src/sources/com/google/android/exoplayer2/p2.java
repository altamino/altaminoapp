package com.google.android.exoplayer2;

import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes11.dex */
final class p2 {
    public final long durationUs;
    public final long endPositionUs;
    public final com.google.android.exoplayer2.source.b0.b id;
    public final boolean isFinal;
    public final boolean isFollowedByTransitionToSameStream;
    public final boolean isLastInTimelinePeriod;
    public final boolean isLastInTimelineWindow;
    public final long requestedContentPositionUs;
    public final long startPositionUs;

    p2(com.google.android.exoplayer2.source.b0.b bVar, long j6, long j10, long j11, long j12, boolean z6, boolean z10, boolean z11, boolean z12) {
        boolean z13 = false;
        com.google.android.exoplayer2.util.a.a(!z12 || z10);
        com.google.android.exoplayer2.util.a.a(!z11 || z10);
        if (!z6 || (!z10 && !z11 && !z12)) {
            z13 = true;
        }
        com.google.android.exoplayer2.util.a.a(z13);
        this.id = bVar;
        this.startPositionUs = j6;
        this.requestedContentPositionUs = j10;
        this.endPositionUs = j11;
        this.durationUs = j12;
        this.isFollowedByTransitionToSameStream = z6;
        this.isLastInTimelinePeriod = z10;
        this.isLastInTimelineWindow = z11;
        this.isFinal = z12;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || p2.class != obj.getClass()) {
            return false;
        }
        p2 p2Var = (p2) obj;
        return this.startPositionUs == p2Var.startPositionUs && this.requestedContentPositionUs == p2Var.requestedContentPositionUs && this.endPositionUs == p2Var.endPositionUs && this.durationUs == p2Var.durationUs && this.isFollowedByTransitionToSameStream == p2Var.isFollowedByTransitionToSameStream && this.isLastInTimelinePeriod == p2Var.isLastInTimelinePeriod && this.isLastInTimelineWindow == p2Var.isLastInTimelineWindow && this.isFinal == p2Var.isFinal && com.google.android.exoplayer2.util.o0.c(this.id, p2Var.id);
    }

    public p2 a(long j6) {
        return j6 == this.requestedContentPositionUs ? this : new p2(this.id, this.startPositionUs, j6, this.endPositionUs, this.durationUs, this.isFollowedByTransitionToSameStream, this.isLastInTimelinePeriod, this.isLastInTimelineWindow, this.isFinal);
    }

    public p2 b(long j6) {
        return j6 == this.startPositionUs ? this : new p2(this.id, j6, this.requestedContentPositionUs, this.endPositionUs, this.durationUs, this.isFollowedByTransitionToSameStream, this.isLastInTimelinePeriod, this.isLastInTimelineWindow, this.isFinal);
    }

    public int hashCode() {
        return ((((((((((((((((527 + this.id.hashCode()) * 31) + ((int) this.startPositionUs)) * 31) + ((int) this.requestedContentPositionUs)) * 31) + ((int) this.endPositionUs)) * 31) + ((int) this.durationUs)) * 31) + (this.isFollowedByTransitionToSameStream ? 1 : 0)) * 31) + (this.isLastInTimelinePeriod ? 1 : 0)) * 31) + (this.isLastInTimelineWindow ? 1 : 0)) * 31) + (this.isFinal ? 1 : 0);
    }
}
