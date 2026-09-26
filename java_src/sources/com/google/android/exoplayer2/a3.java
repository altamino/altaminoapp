package com.google.android.exoplayer2;

import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.metadata.Metadata;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
final class a3 {
    private static final com.google.android.exoplayer2.source.b0.b PLACEHOLDER_MEDIA_PERIOD_ID = new com.google.android.exoplayer2.source.b0.b(new Object());
    public volatile long bufferedPositionUs;
    public final long discontinuityStartPositionUs;
    public final boolean isLoading;
    public final com.google.android.exoplayer2.source.b0.b loadingMediaPeriodId;
    public final com.google.android.exoplayer2.source.b0.b periodId;
    public final boolean playWhenReady;

    @Nullable
    public final q playbackError;
    public final c3 playbackParameters;
    public final int playbackState;
    public final int playbackSuppressionReason;
    public volatile long positionUs;
    public final long requestedContentPositionUs;
    public final boolean sleepingForOffload;
    public final List<Metadata> staticMetadata;
    public final z3 timeline;
    public volatile long totalBufferedDurationUs;
    public final com.google.android.exoplayer2.source.h1 trackGroups;
    public final com.google.android.exoplayer2.trackselection.c0 trackSelectorResult;

    public a3(z3 z3Var, com.google.android.exoplayer2.source.b0.b bVar, long j6, long j10, int i10, @Nullable q qVar, boolean z6, com.google.android.exoplayer2.source.h1 h1Var, com.google.android.exoplayer2.trackselection.c0 c0Var, List<Metadata> list, com.google.android.exoplayer2.source.b0.b bVar2, boolean z10, int i11, c3 c3Var, long j11, long j12, long j13, boolean z11) {
        this.timeline = z3Var;
        this.periodId = bVar;
        this.requestedContentPositionUs = j6;
        this.discontinuityStartPositionUs = j10;
        this.playbackState = i10;
        this.playbackError = qVar;
        this.isLoading = z6;
        this.trackGroups = h1Var;
        this.trackSelectorResult = c0Var;
        this.staticMetadata = list;
        this.loadingMediaPeriodId = bVar2;
        this.playWhenReady = z10;
        this.playbackSuppressionReason = i11;
        this.playbackParameters = c3Var;
        this.bufferedPositionUs = j11;
        this.totalBufferedDurationUs = j12;
        this.positionUs = j13;
        this.sleepingForOffload = z11;
    }

    public static com.google.android.exoplayer2.source.b0.b k() {
        return PLACEHOLDER_MEDIA_PERIOD_ID;
    }

    public static a3 j(com.google.android.exoplayer2.trackselection.c0 c0Var) {
        z3 z3Var = z3.EMPTY;
        com.google.android.exoplayer2.source.b0.b bVar = PLACEHOLDER_MEDIA_PERIOD_ID;
        return new a3(z3Var, bVar, -9223372036854775807L, 0L, 1, null, false, com.google.android.exoplayer2.source.h1.EMPTY, c0Var, com.google.common.collect.a0.x(), bVar, false, 0, c3.DEFAULT, 0L, 0L, 0L, false);
    }

    @CheckResult
    public a3 a(boolean z6) {
        return new a3(this.timeline, this.periodId, this.requestedContentPositionUs, this.discontinuityStartPositionUs, this.playbackState, this.playbackError, z6, this.trackGroups, this.trackSelectorResult, this.staticMetadata, this.loadingMediaPeriodId, this.playWhenReady, this.playbackSuppressionReason, this.playbackParameters, this.bufferedPositionUs, this.totalBufferedDurationUs, this.positionUs, this.sleepingForOffload);
    }

    @CheckResult
    public a3 b(com.google.android.exoplayer2.source.b0.b bVar) {
        return new a3(this.timeline, this.periodId, this.requestedContentPositionUs, this.discontinuityStartPositionUs, this.playbackState, this.playbackError, this.isLoading, this.trackGroups, this.trackSelectorResult, this.staticMetadata, bVar, this.playWhenReady, this.playbackSuppressionReason, this.playbackParameters, this.bufferedPositionUs, this.totalBufferedDurationUs, this.positionUs, this.sleepingForOffload);
    }

    @CheckResult
    public a3 c(com.google.android.exoplayer2.source.b0.b bVar, long j6, long j10, long j11, long j12, com.google.android.exoplayer2.source.h1 h1Var, com.google.android.exoplayer2.trackselection.c0 c0Var, List<Metadata> list) {
        return new a3(this.timeline, bVar, j10, j11, this.playbackState, this.playbackError, this.isLoading, h1Var, c0Var, list, this.loadingMediaPeriodId, this.playWhenReady, this.playbackSuppressionReason, this.playbackParameters, this.bufferedPositionUs, j12, j6, this.sleepingForOffload);
    }

    @CheckResult
    public a3 d(boolean z6, int i10) {
        return new a3(this.timeline, this.periodId, this.requestedContentPositionUs, this.discontinuityStartPositionUs, this.playbackState, this.playbackError, this.isLoading, this.trackGroups, this.trackSelectorResult, this.staticMetadata, this.loadingMediaPeriodId, z6, i10, this.playbackParameters, this.bufferedPositionUs, this.totalBufferedDurationUs, this.positionUs, this.sleepingForOffload);
    }

    @CheckResult
    public a3 e(@Nullable q qVar) {
        return new a3(this.timeline, this.periodId, this.requestedContentPositionUs, this.discontinuityStartPositionUs, this.playbackState, qVar, this.isLoading, this.trackGroups, this.trackSelectorResult, this.staticMetadata, this.loadingMediaPeriodId, this.playWhenReady, this.playbackSuppressionReason, this.playbackParameters, this.bufferedPositionUs, this.totalBufferedDurationUs, this.positionUs, this.sleepingForOffload);
    }

    @CheckResult
    public a3 f(c3 c3Var) {
        return new a3(this.timeline, this.periodId, this.requestedContentPositionUs, this.discontinuityStartPositionUs, this.playbackState, this.playbackError, this.isLoading, this.trackGroups, this.trackSelectorResult, this.staticMetadata, this.loadingMediaPeriodId, this.playWhenReady, this.playbackSuppressionReason, c3Var, this.bufferedPositionUs, this.totalBufferedDurationUs, this.positionUs, this.sleepingForOffload);
    }

    @CheckResult
    public a3 g(int i10) {
        return new a3(this.timeline, this.periodId, this.requestedContentPositionUs, this.discontinuityStartPositionUs, i10, this.playbackError, this.isLoading, this.trackGroups, this.trackSelectorResult, this.staticMetadata, this.loadingMediaPeriodId, this.playWhenReady, this.playbackSuppressionReason, this.playbackParameters, this.bufferedPositionUs, this.totalBufferedDurationUs, this.positionUs, this.sleepingForOffload);
    }

    @CheckResult
    public a3 h(boolean z6) {
        return new a3(this.timeline, this.periodId, this.requestedContentPositionUs, this.discontinuityStartPositionUs, this.playbackState, this.playbackError, this.isLoading, this.trackGroups, this.trackSelectorResult, this.staticMetadata, this.loadingMediaPeriodId, this.playWhenReady, this.playbackSuppressionReason, this.playbackParameters, this.bufferedPositionUs, this.totalBufferedDurationUs, this.positionUs, z6);
    }

    @CheckResult
    public a3 i(z3 z3Var) {
        return new a3(z3Var, this.periodId, this.requestedContentPositionUs, this.discontinuityStartPositionUs, this.playbackState, this.playbackError, this.isLoading, this.trackGroups, this.trackSelectorResult, this.staticMetadata, this.loadingMediaPeriodId, this.playWhenReady, this.playbackSuppressionReason, this.playbackParameters, this.bufferedPositionUs, this.totalBufferedDurationUs, this.positionUs, this.sleepingForOffload);
    }
}
