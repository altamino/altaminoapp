package androidx.media3.exoplayer;

import androidx.annotation.Nullable;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Clock;

/* JADX INFO: loaded from: classes7.dex */
final class DefaultMediaClock implements MediaClock {
    private boolean isUsingStandaloneClock = true;
    private final PlaybackParametersListener listener;

    @Nullable
    private MediaClock rendererClock;

    @Nullable
    private Renderer rendererClockSource;
    private final StandaloneMediaClock standaloneClock;
    private boolean standaloneClockIsStarted;

    public interface PlaybackParametersListener {
        void onPlaybackParametersChanged(PlaybackParameters playbackParameters);
    }

    public void a(Renderer renderer) {
        if (renderer == this.rendererClockSource) {
            this.rendererClock = null;
            this.rendererClockSource = null;
            this.isUsingStandaloneClock = true;
        }
    }

    public void f() {
        this.standaloneClockIsStarted = true;
        this.standaloneClock.c();
    }

    public void g() {
        this.standaloneClockIsStarted = false;
        this.standaloneClock.d();
    }

    private boolean e(boolean z6) {
        Renderer renderer = this.rendererClockSource;
        return renderer == null || renderer.isEnded() || (!this.rendererClockSource.isReady() && (z6 || this.rendererClockSource.hasReadStreamToEnd()));
    }

    @Override // androidx.media3.exoplayer.MediaClock
    public void b(PlaybackParameters playbackParameters) {
        MediaClock mediaClock = this.rendererClock;
        if (mediaClock != null) {
            mediaClock.b(playbackParameters);
            playbackParameters = this.rendererClock.getPlaybackParameters();
        }
        this.standaloneClock.b(playbackParameters);
    }

    public void d(long j6) {
        this.standaloneClock.a(j6);
    }

    @Override // androidx.media3.exoplayer.MediaClock
    public PlaybackParameters getPlaybackParameters() {
        MediaClock mediaClock = this.rendererClock;
        return mediaClock != null ? mediaClock.getPlaybackParameters() : this.standaloneClock.getPlaybackParameters();
    }

    @Override // androidx.media3.exoplayer.MediaClock
    public long getPositionUs() {
        return this.isUsingStandaloneClock ? this.standaloneClock.getPositionUs() : ((MediaClock) Assertions.e(this.rendererClock)).getPositionUs();
    }

    public DefaultMediaClock(PlaybackParametersListener playbackParametersListener, Clock clock) {
        this.listener = playbackParametersListener;
        this.standaloneClock = new StandaloneMediaClock(clock);
    }

    private void i(boolean z6) {
        if (e(z6)) {
            this.isUsingStandaloneClock = true;
            if (this.standaloneClockIsStarted) {
                this.standaloneClock.c();
                return;
            }
            return;
        }
        MediaClock mediaClock = (MediaClock) Assertions.e(this.rendererClock);
        long positionUs = mediaClock.getPositionUs();
        if (this.isUsingStandaloneClock) {
            if (positionUs < this.standaloneClock.getPositionUs()) {
                this.standaloneClock.d();
                return;
            } else {
                this.isUsingStandaloneClock = false;
                if (this.standaloneClockIsStarted) {
                    this.standaloneClock.c();
                }
            }
        }
        this.standaloneClock.a(positionUs);
        PlaybackParameters playbackParameters = mediaClock.getPlaybackParameters();
        if (!playbackParameters.equals(this.standaloneClock.getPlaybackParameters())) {
            this.standaloneClock.b(playbackParameters);
            this.listener.onPlaybackParametersChanged(playbackParameters);
        }
    }

    public void c(Renderer renderer) throws ExoPlaybackException {
        MediaClock mediaClock;
        MediaClock mediaClock2 = renderer.getMediaClock();
        if (mediaClock2 != null && mediaClock2 != (mediaClock = this.rendererClock)) {
            if (mediaClock == null) {
                this.rendererClock = mediaClock2;
                this.rendererClockSource = renderer;
                mediaClock2.b(this.standaloneClock.getPlaybackParameters());
                return;
            }
            throw ExoPlaybackException.j(new IllegalStateException("Multiple renderer media clocks enabled."));
        }
    }

    public long h(boolean z6) {
        i(z6);
        return getPositionUs();
    }
}
