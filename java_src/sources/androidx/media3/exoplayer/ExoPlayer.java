package androidx.media3.exoplayer;

import android.content.Context;
import android.os.Looper;
import androidx.annotation.Nullable;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.Format;
import androidx.media3.common.Player;
import androidx.media3.common.PriorityTaskManager;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.analytics.AnalyticsCollector;
import androidx.media3.exoplayer.analytics.DefaultAnalyticsCollector;
import androidx.media3.exoplayer.source.DefaultMediaSourceFactory;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.trackselection.DefaultTrackSelector;
import androidx.media3.exoplayer.trackselection.TrackSelector;
import androidx.media3.exoplayer.upstream.BandwidthMeter;
import androidx.media3.exoplayer.upstream.DefaultBandwidthMeter;
import androidx.media3.extractor.DefaultExtractorsFactory;

/* JADX INFO: loaded from: classes2.dex */
public interface ExoPlayer extends Player {

    @UnstableApi
    public static final long DEFAULT_DETACH_SURFACE_TIMEOUT_MS = 2000;

    @UnstableApi
    public static final long DEFAULT_RELEASE_TIMEOUT_MS = 500;

    @UnstableApi
    @Deprecated
    public interface AudioComponent {
    }

    @UnstableApi
    public interface AudioOffloadListener {
        void o(boolean z6);

        void v(boolean z6);
    }

    public static final class Builder {
        com.google.common.base.g<Clock, AnalyticsCollector> analyticsCollectorFunction;
        AudioAttributes audioAttributes;
        com.google.common.base.u<BandwidthMeter> bandwidthMeterSupplier;
        boolean buildCalled;
        Clock clock;
        final Context context;
        long detachSurfaceTimeoutMs;
        boolean deviceVolumeControlEnabled;
        long foregroundModeTimeoutMs;
        boolean handleAudioBecomingNoisy;
        boolean handleAudioFocus;
        LivePlaybackSpeedControl livePlaybackSpeedControl;
        com.google.common.base.u<LoadControl> loadControlSupplier;
        Looper looper;
        com.google.common.base.u<MediaSource.Factory> mediaSourceFactorySupplier;
        boolean pauseAtEndOfMediaItems;

        @Nullable
        Looper playbackLooper;

        @Nullable
        PriorityTaskManager priorityTaskManager;
        long releaseTimeoutMs;
        com.google.common.base.u<RenderersFactory> renderersFactorySupplier;
        long seekBackIncrementMs;
        long seekForwardIncrementMs;
        SeekParameters seekParameters;
        boolean skipSilenceEnabled;
        com.google.common.base.u<TrackSelector> trackSelectorSupplier;
        boolean useLazyPreparation;
        boolean usePlatformDiagnostics;
        int videoChangeFrameRateStrategy;
        int videoScalingMode;
        int wakeMode;

        public Builder(final Context context) {
            this(context, (com.google.common.base.u<RenderersFactory>) new com.google.common.base.u() { // from class: androidx.media3.exoplayer.m
                @Override // com.google.common.base.u
                public final Object get() {
                    return ExoPlayer.Builder.u(context);
                }
            }, (com.google.common.base.u<MediaSource.Factory>) new com.google.common.base.u() { // from class: androidx.media3.exoplayer.y
                @Override // com.google.common.base.u
                public final Object get() {
                    return ExoPlayer.Builder.v(context);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ RenderersFactory C(RenderersFactory renderersFactory) {
            return renderersFactory;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ MediaSource.Factory F(MediaSource.Factory factory) {
            return factory;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ RenderersFactory G(RenderersFactory renderersFactory) {
            return renderersFactory;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ MediaSource.Factory H(MediaSource.Factory factory) {
            return factory;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ RenderersFactory I(RenderersFactory renderersFactory) {
            return renderersFactory;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ MediaSource.Factory J(MediaSource.Factory factory) {
            return factory;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ BandwidthMeter K(BandwidthMeter bandwidthMeter) {
            return bandwidthMeter;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ LoadControl L(LoadControl loadControl) {
            return loadControl;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ TrackSelector M(TrackSelector trackSelector) {
            return trackSelector;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ TrackSelector w(TrackSelector trackSelector) {
            return trackSelector;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ LoadControl x(LoadControl loadControl) {
            return loadControl;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ BandwidthMeter y(BandwidthMeter bandwidthMeter) {
            return bandwidthMeter;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ AnalyticsCollector z(AnalyticsCollector analyticsCollector, Clock clock) {
            return analyticsCollector;
        }

        @UnstableApi
        public Builder(final Context context, final RenderersFactory renderersFactory) {
            this(context, (com.google.common.base.u<RenderersFactory>) new com.google.common.base.u() { // from class: androidx.media3.exoplayer.o
                @Override // com.google.common.base.u
                public final Object get() {
                    return ExoPlayer.Builder.C(renderersFactory);
                }
            }, (com.google.common.base.u<MediaSource.Factory>) new com.google.common.base.u() { // from class: androidx.media3.exoplayer.p
                @Override // com.google.common.base.u
                public final Object get() {
                    return ExoPlayer.Builder.D(context);
                }
            });
            Assertions.e(renderersFactory);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ TrackSelector A(Context context) {
            return new DefaultTrackSelector(context);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ MediaSource.Factory D(Context context) {
            return new DefaultMediaSourceFactory(context, new DefaultExtractorsFactory());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ RenderersFactory E(Context context) {
            return new DefaultRenderersFactory(context);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ RenderersFactory u(Context context) {
            return new DefaultRenderersFactory(context);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ MediaSource.Factory v(Context context) {
            return new DefaultMediaSourceFactory(context, new DefaultExtractorsFactory());
        }

        @UnstableApi
        public Builder N(final BandwidthMeter bandwidthMeter) {
            Assertions.g(!this.buildCalled);
            Assertions.e(bandwidthMeter);
            this.bandwidthMeterSupplier = new com.google.common.base.u() { // from class: androidx.media3.exoplayer.u
                @Override // com.google.common.base.u
                public final Object get() {
                    return ExoPlayer.Builder.K(bandwidthMeter);
                }
            };
            return this;
        }

        @UnstableApi
        public Builder O(final LoadControl loadControl) {
            Assertions.g(!this.buildCalled);
            Assertions.e(loadControl);
            this.loadControlSupplier = new com.google.common.base.u() { // from class: androidx.media3.exoplayer.t
                @Override // com.google.common.base.u
                public final Object get() {
                    return ExoPlayer.Builder.L(loadControl);
                }
            };
            return this;
        }

        @UnstableApi
        public Builder P(final TrackSelector trackSelector) {
            Assertions.g(!this.buildCalled);
            Assertions.e(trackSelector);
            this.trackSelectorSupplier = new com.google.common.base.u() { // from class: androidx.media3.exoplayer.n
                @Override // com.google.common.base.u
                public final Object get() {
                    return ExoPlayer.Builder.M(trackSelector);
                }
            };
            return this;
        }

        public ExoPlayer t() {
            Assertions.g(!this.buildCalled);
            this.buildCalled = true;
            return new ExoPlayerImpl(this, null);
        }

        @UnstableApi
        public Builder(final Context context, final MediaSource.Factory factory) {
            this(context, (com.google.common.base.u<RenderersFactory>) new com.google.common.base.u() { // from class: androidx.media3.exoplayer.g0
                @Override // com.google.common.base.u
                public final Object get() {
                    return ExoPlayer.Builder.E(context);
                }
            }, (com.google.common.base.u<MediaSource.Factory>) new com.google.common.base.u() { // from class: androidx.media3.exoplayer.h0
                @Override // com.google.common.base.u
                public final Object get() {
                    return ExoPlayer.Builder.F(factory);
                }
            });
            Assertions.e(factory);
        }

        @UnstableApi
        public Builder(Context context, final RenderersFactory renderersFactory, final MediaSource.Factory factory) {
            this(context, (com.google.common.base.u<RenderersFactory>) new com.google.common.base.u() { // from class: androidx.media3.exoplayer.q
                @Override // com.google.common.base.u
                public final Object get() {
                    return ExoPlayer.Builder.G(renderersFactory);
                }
            }, (com.google.common.base.u<MediaSource.Factory>) new com.google.common.base.u() { // from class: androidx.media3.exoplayer.s
                @Override // com.google.common.base.u
                public final Object get() {
                    return ExoPlayer.Builder.H(factory);
                }
            });
            Assertions.e(renderersFactory);
            Assertions.e(factory);
        }

        @UnstableApi
        public Builder(Context context, final RenderersFactory renderersFactory, final MediaSource.Factory factory, final TrackSelector trackSelector, final LoadControl loadControl, final BandwidthMeter bandwidthMeter, final AnalyticsCollector analyticsCollector) {
            this(context, (com.google.common.base.u<RenderersFactory>) new com.google.common.base.u() { // from class: androidx.media3.exoplayer.a0
                @Override // com.google.common.base.u
                public final Object get() {
                    return ExoPlayer.Builder.I(renderersFactory);
                }
            }, (com.google.common.base.u<MediaSource.Factory>) new com.google.common.base.u() { // from class: androidx.media3.exoplayer.b0
                @Override // com.google.common.base.u
                public final Object get() {
                    return ExoPlayer.Builder.J(factory);
                }
            }, (com.google.common.base.u<TrackSelector>) new com.google.common.base.u() { // from class: androidx.media3.exoplayer.c0
                @Override // com.google.common.base.u
                public final Object get() {
                    return ExoPlayer.Builder.w(trackSelector);
                }
            }, (com.google.common.base.u<LoadControl>) new com.google.common.base.u() { // from class: androidx.media3.exoplayer.d0
                @Override // com.google.common.base.u
                public final Object get() {
                    return ExoPlayer.Builder.x(loadControl);
                }
            }, (com.google.common.base.u<BandwidthMeter>) new com.google.common.base.u() { // from class: androidx.media3.exoplayer.e0
                @Override // com.google.common.base.u
                public final Object get() {
                    return ExoPlayer.Builder.y(bandwidthMeter);
                }
            }, (com.google.common.base.g<Clock, AnalyticsCollector>) new com.google.common.base.g() { // from class: androidx.media3.exoplayer.f0
                @Override // com.google.common.base.g
                public final Object apply(Object obj) {
                    return ExoPlayer.Builder.z(analyticsCollector, (Clock) obj);
                }
            });
            Assertions.e(renderersFactory);
            Assertions.e(factory);
            Assertions.e(trackSelector);
            Assertions.e(bandwidthMeter);
            Assertions.e(analyticsCollector);
        }

        private Builder(final Context context, com.google.common.base.u<RenderersFactory> uVar, com.google.common.base.u<MediaSource.Factory> uVar2) {
            this(context, uVar, uVar2, (com.google.common.base.u<TrackSelector>) new com.google.common.base.u() { // from class: androidx.media3.exoplayer.v
                @Override // com.google.common.base.u
                public final Object get() {
                    return ExoPlayer.Builder.A(context);
                }
            }, (com.google.common.base.u<LoadControl>) new com.google.common.base.u() { // from class: androidx.media3.exoplayer.w
                @Override // com.google.common.base.u
                public final Object get() {
                    return new DefaultLoadControl();
                }
            }, (com.google.common.base.u<BandwidthMeter>) new com.google.common.base.u() { // from class: androidx.media3.exoplayer.x
                @Override // com.google.common.base.u
                public final Object get() {
                    return DefaultBandwidthMeter.m(context);
                }
            }, (com.google.common.base.g<Clock, AnalyticsCollector>) new com.google.common.base.g() { // from class: androidx.media3.exoplayer.z
                @Override // com.google.common.base.g
                public final Object apply(Object obj) {
                    return new DefaultAnalyticsCollector((Clock) obj);
                }
            });
        }

        private Builder(Context context, com.google.common.base.u<RenderersFactory> uVar, com.google.common.base.u<MediaSource.Factory> uVar2, com.google.common.base.u<TrackSelector> uVar3, com.google.common.base.u<LoadControl> uVar4, com.google.common.base.u<BandwidthMeter> uVar5, com.google.common.base.g<Clock, AnalyticsCollector> gVar) {
            this.context = (Context) Assertions.e(context);
            this.renderersFactorySupplier = uVar;
            this.mediaSourceFactorySupplier = uVar2;
            this.trackSelectorSupplier = uVar3;
            this.loadControlSupplier = uVar4;
            this.bandwidthMeterSupplier = uVar5;
            this.analyticsCollectorFunction = gVar;
            this.looper = Util.R();
            this.audioAttributes = AudioAttributes.DEFAULT;
            this.wakeMode = 0;
            this.videoScalingMode = 1;
            this.videoChangeFrameRateStrategy = 0;
            this.useLazyPreparation = true;
            this.seekParameters = SeekParameters.DEFAULT;
            this.seekBackIncrementMs = 5000L;
            this.seekForwardIncrementMs = 15000L;
            this.livePlaybackSpeedControl = new DefaultLivePlaybackSpeedControl.Builder().a();
            this.clock = Clock.DEFAULT;
            this.releaseTimeoutMs = 500L;
            this.detachSurfaceTimeoutMs = 2000L;
            this.usePlatformDiagnostics = true;
        }
    }

    @UnstableApi
    @Deprecated
    public interface DeviceComponent {
    }

    @UnstableApi
    @Deprecated
    public interface TextComponent {
    }

    @UnstableApi
    @Deprecated
    public interface VideoComponent {
    }

    @Nullable
    @UnstableApi
    DecoderCounters D();

    @Nullable
    @UnstableApi
    DecoderCounters F();

    @UnstableApi
    void H(boolean z6);

    @Nullable
    @UnstableApi
    Format I();

    @Nullable
    @UnstableApi
    Format M();

    @UnstableApi
    void O(MediaSource mediaSource);

    @UnstableApi
    @Deprecated
    void a(MediaSource mediaSource);
}
