package androidx.media3.exoplayer.source.ads;

import androidx.annotation.VisibleForTesting;
import androidx.media3.common.AdPlaybackState;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.source.ForwardingTimeline;

/* JADX INFO: loaded from: classes11.dex */
@VisibleForTesting
@UnstableApi
public final class SinglePeriodAdTimeline extends ForwardingTimeline {
    private final AdPlaybackState adPlaybackState;

    @Override // androidx.media3.exoplayer.source.ForwardingTimeline, androidx.media3.common.Timeline
    public Timeline.Period k(int i10, Timeline.Period period, boolean z6) {
        this.timeline.k(i10, period, z6);
        long j6 = period.durationUs;
        if (j6 == -9223372036854775807L) {
            j6 = this.adPlaybackState.contentDurationUs;
        }
        period.x(period.id, period.uid, period.windowIndex, j6, period.r(), this.adPlaybackState, period.isPlaceholder);
        return period;
    }

    public SinglePeriodAdTimeline(Timeline timeline, AdPlaybackState adPlaybackState) {
        boolean z6;
        super(timeline);
        if (timeline.m() == 1) {
            z6 = true;
        } else {
            z6 = false;
        }
        Assertions.g(z6);
        Assertions.g(timeline.t() == 1);
        this.adPlaybackState = adPlaybackState;
    }
}
