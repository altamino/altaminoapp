package androidx.media3.exoplayer;

import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;

/* JADX INFO: loaded from: classes5.dex */
@UnstableApi
public final class StandaloneMediaClock implements MediaClock {
    private long baseElapsedMs;
    private long baseUs;
    private final Clock clock;
    private PlaybackParameters playbackParameters = PlaybackParameters.DEFAULT;
    private boolean started;

    @Override // androidx.media3.exoplayer.MediaClock
    public PlaybackParameters getPlaybackParameters() {
        return this.playbackParameters;
    }

    public void a(long j6) {
        this.baseUs = j6;
        if (this.started) {
            this.baseElapsedMs = this.clock.elapsedRealtime();
        }
    }

    @Override // androidx.media3.exoplayer.MediaClock
    public void b(PlaybackParameters playbackParameters) {
        if (this.started) {
            a(getPositionUs());
        }
        this.playbackParameters = playbackParameters;
    }

    public void c() {
        if (this.started) {
            return;
        }
        this.baseElapsedMs = this.clock.elapsedRealtime();
        this.started = true;
    }

    public void d() {
        if (this.started) {
            a(getPositionUs());
            this.started = false;
        }
    }

    @Override // androidx.media3.exoplayer.MediaClock
    public long getPositionUs() {
        long j6 = this.baseUs;
        if (!this.started) {
            return j6;
        }
        long jElapsedRealtime = this.clock.elapsedRealtime() - this.baseElapsedMs;
        PlaybackParameters playbackParameters = this.playbackParameters;
        return j6 + (playbackParameters.speed == 1.0f ? Util.K0(jElapsedRealtime) : playbackParameters.b(jElapsedRealtime));
    }

    public StandaloneMediaClock(Clock clock) {
        this.clock = clock;
    }
}
