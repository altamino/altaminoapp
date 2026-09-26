package androidx.media3.exoplayer.source;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.media3.common.MediaItem;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;

/* JADX INFO: loaded from: classes5.dex */
@UnstableApi
public final class SinglePeriodTimeline extends Timeline {
    private final long elapsedRealtimeEpochOffsetMs;
    private final boolean isDynamic;
    private final boolean isSeekable;

    @Nullable
    private final MediaItem.LiveConfiguration liveConfiguration;

    @Nullable
    private final Object manifest;

    @Nullable
    private final MediaItem mediaItem;
    private final long periodDurationUs;
    private final long presentationStartTimeMs;
    private final boolean suppressPositionProjection;
    private final long windowDefaultStartPositionUs;
    private final long windowDurationUs;
    private final long windowPositionInPeriodUs;
    private final long windowStartTimeMs;
    private static final Object UID = new Object();
    private static final MediaItem MEDIA_ITEM = new MediaItem.Builder().e("SinglePeriodTimeline").j(Uri.EMPTY).a();

    @Deprecated
    public SinglePeriodTimeline(long j6, boolean z6, boolean z10, boolean z11, @Nullable Object obj, @Nullable Object obj2) {
        this(j6, j6, 0L, 0L, z6, z10, z11, obj, obj2);
    }

    @Override // androidx.media3.common.Timeline
    public Timeline.Period k(int i10, Timeline.Period period, boolean z6) {
        Assertions.c(i10, 0, 1);
        return period.w(null, z6 ? UID : null, 0, this.periodDurationUs, -this.windowPositionInPeriodUs);
    }

    @Override // androidx.media3.common.Timeline
    public int m() {
        return 1;
    }

    @Override // androidx.media3.common.Timeline
    public Object q(int i10) {
        Assertions.c(i10, 0, 1);
        return UID;
    }

    @Override // androidx.media3.common.Timeline
    public int t() {
        return 1;
    }

    public SinglePeriodTimeline(long j6, boolean z6, boolean z10, boolean z11, @Nullable Object obj, MediaItem mediaItem) {
        this(j6, j6, 0L, 0L, z6, z10, z11, obj, mediaItem);
    }

    @Override // androidx.media3.common.Timeline
    public int f(Object obj) {
        return UID.equals(obj) ? 0 : -1;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x002e A[PHI: r1
      0x002e: PHI (r1v2 long) = (r1v1 long), (r1v1 long), (r1v1 long), (r1v6 long) binds: [B:3:0x000d, B:5:0x0011, B:7:0x0017, B:12:0x002b] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // androidx.media3.common.Timeline
    public Timeline.Window s(int i10, Timeline.Window window, long j6) {
        long j10;
        Assertions.c(i10, 0, 1);
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
        return window.i(Timeline.Window.SINGLE_WINDOW_UID, this.mediaItem, this.manifest, this.presentationStartTimeMs, this.windowStartTimeMs, this.elapsedRealtimeEpochOffsetMs, this.isSeekable, z6, this.liveConfiguration, j10, this.windowDurationUs, 0, 0, this.windowPositionInPeriodUs);
    }

    @Deprecated
    public SinglePeriodTimeline(long j6, long j10, long j11, long j12, boolean z6, boolean z10, boolean z11, @Nullable Object obj, @Nullable Object obj2) {
        this(-9223372036854775807L, -9223372036854775807L, -9223372036854775807L, j6, j10, j11, j12, z6, z10, z11, obj, obj2);
    }

    public SinglePeriodTimeline(long j6, long j10, long j11, long j12, boolean z6, boolean z10, boolean z11, @Nullable Object obj, MediaItem mediaItem) {
        this(-9223372036854775807L, -9223372036854775807L, -9223372036854775807L, j6, j10, j11, j12, z6, z10, false, obj, mediaItem, z11 ? mediaItem.liveConfiguration : null);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @Deprecated
    public SinglePeriodTimeline(long j6, long j10, long j11, long j12, long j13, long j14, long j15, boolean z6, boolean z10, boolean z11, @Nullable Object obj, @Nullable Object obj2) {
        MediaItem mediaItem = MEDIA_ITEM;
        this(j6, j10, j11, j12, j13, j14, j15, z6, z10, false, obj, mediaItem.b().i(obj2).a(), z11 ? mediaItem.liveConfiguration : null);
    }

    @Deprecated
    public SinglePeriodTimeline(long j6, long j10, long j11, long j12, long j13, long j14, long j15, boolean z6, boolean z10, @Nullable Object obj, MediaItem mediaItem, @Nullable MediaItem.LiveConfiguration liveConfiguration) {
        this(j6, j10, j11, j12, j13, j14, j15, z6, z10, false, obj, mediaItem, liveConfiguration);
    }

    public SinglePeriodTimeline(long j6, long j10, long j11, long j12, long j13, long j14, long j15, boolean z6, boolean z10, boolean z11, @Nullable Object obj, MediaItem mediaItem, @Nullable MediaItem.LiveConfiguration liveConfiguration) {
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
        this.mediaItem = (MediaItem) Assertions.e(mediaItem);
        this.liveConfiguration = liveConfiguration;
    }
}
