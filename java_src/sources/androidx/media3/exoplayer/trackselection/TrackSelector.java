package androidx.media3.exoplayer.trackselection;

import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.Timeline;
import androidx.media3.common.TrackSelectionParameters;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.Renderer;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.TrackGroupArray;
import androidx.media3.exoplayer.upstream.BandwidthMeter;

/* JADX INFO: loaded from: classes5.dex */
@UnstableApi
public abstract class TrackSelector {

    @Nullable
    private BandwidthMeter bandwidthMeter;

    @Nullable
    private InvalidationListener listener;

    public interface InvalidationListener {
        void b(Renderer renderer);

        void onTrackSelectionsInvalidated();
    }

    @Nullable
    public RendererCapabilities.Listener d() {
        return null;
    }

    @CallSuper
    public void e(InvalidationListener invalidationListener, BandwidthMeter bandwidthMeter) {
        this.listener = invalidationListener;
        this.bandwidthMeter = bandwidthMeter;
    }

    public boolean h() {
        return false;
    }

    public abstract void i(@Nullable Object obj);

    @CallSuper
    public void j() {
        this.listener = null;
        this.bandwidthMeter = null;
    }

    public abstract TrackSelectorResult k(RendererCapabilities[] rendererCapabilitiesArr, TrackGroupArray trackGroupArray, MediaSource.MediaPeriodId mediaPeriodId, Timeline timeline) throws ExoPlaybackException;

    public void l(AudioAttributes audioAttributes) {
    }

    public void m(TrackSelectionParameters trackSelectionParameters) {
    }

    protected final BandwidthMeter a() {
        return (BandwidthMeter) Assertions.i(this.bandwidthMeter);
    }

    public TrackSelectionParameters c() {
        return TrackSelectionParameters.DEFAULT_WITHOUT_CONTEXT;
    }

    protected final void f() {
        InvalidationListener invalidationListener = this.listener;
        if (invalidationListener != null) {
            invalidationListener.onTrackSelectionsInvalidated();
        }
    }

    protected final void g(Renderer renderer) {
        InvalidationListener invalidationListener = this.listener;
        if (invalidationListener != null) {
            invalidationListener.b(renderer);
        }
    }
}
