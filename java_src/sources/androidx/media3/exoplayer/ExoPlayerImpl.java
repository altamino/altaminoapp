package androidx.media3.exoplayer;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.media.AudioTrack;
import android.media.MediaFormat;
import android.media.metrics.LogSessionId;
import android.os.Handler;
import android.os.Looper;
import android.util.Pair;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.BasePlayer;
import androidx.media3.common.DeviceInfo;
import androidx.media3.common.FlagSet;
import androidx.media3.common.Format;
import androidx.media3.common.IllegalSeekPositionException;
import androidx.media3.common.MediaItem;
import androidx.media3.common.MediaLibraryInfo;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.Metadata;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.Player;
import androidx.media3.common.PriorityTaskManager;
import androidx.media3.common.Timeline;
import androidx.media3.common.TrackSelectionParameters;
import androidx.media3.common.Tracks;
import androidx.media3.common.VideoSize;
import androidx.media3.common.text.Cue;
import androidx.media3.common.text.CueGroup;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.ConditionVariable;
import androidx.media3.common.util.HandlerWrapper;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Size;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.analytics.AnalyticsCollector;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.media3.exoplayer.analytics.MediaMetricsListener;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.audio.AudioRendererEventListener;
import androidx.media3.exoplayer.metadata.MetadataOutput;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.ShuffleOrder;
import androidx.media3.exoplayer.source.TrackGroupArray;
import androidx.media3.exoplayer.text.TextOutput;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.trackselection.TrackSelector;
import androidx.media3.exoplayer.trackselection.TrackSelectorResult;
import androidx.media3.exoplayer.upstream.BandwidthMeter;
import androidx.media3.exoplayer.video.VideoDecoderOutputBufferRenderer;
import androidx.media3.exoplayer.video.VideoFrameMetadataListener;
import androidx.media3.exoplayer.video.VideoRendererEventListener;
import androidx.media3.exoplayer.video.spherical.CameraMotionListener;
import androidx.media3.exoplayer.video.spherical.SphericalGLSurfaceView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes6.dex */
final class ExoPlayerImpl extends BasePlayer implements ExoPlayer, ExoPlayer.AudioComponent, ExoPlayer.VideoComponent, ExoPlayer.TextComponent, ExoPlayer.DeviceComponent {
    private static final String TAG = "ExoPlayerImpl";
    private final AnalyticsCollector analyticsCollector;
    private final Context applicationContext;
    private final Looper applicationLooper;
    private AudioAttributes audioAttributes;
    private final AudioBecomingNoisyManager audioBecomingNoisyManager;

    @Nullable
    private DecoderCounters audioDecoderCounters;
    private final AudioFocusManager audioFocusManager;

    @Nullable
    private Format audioFormat;
    private final CopyOnWriteArraySet<ExoPlayer.AudioOffloadListener> audioOffloadListeners;
    private int audioSessionId;
    private Player.Commands availableCommands;
    private final BandwidthMeter bandwidthMeter;

    @Nullable
    private CameraMotionListener cameraMotionListener;
    private final Clock clock;
    private final ComponentListener componentListener;
    private final ConditionVariable constructorFinished;
    private CueGroup currentCueGroup;
    private final long detachSurfaceTimeoutMs;
    private DeviceInfo deviceInfo;
    final TrackSelectorResult emptyTrackSelectorResult;
    private boolean foregroundMode;
    private final FrameMetadataListener frameMetadataListener;
    private boolean hasNotifiedFullWrongThreadWarning;
    private final ExoPlayerImplInternal internalPlayer;
    private boolean isPriorityTaskManagerRegistered;

    @Nullable
    private AudioTrack keepSessionIdAudioTrack;
    private final ListenerSet<Player.Listener> listeners;
    private int maskingPeriodIndex;
    private int maskingWindowIndex;
    private long maskingWindowPositionMs;
    private MediaMetadata mediaMetadata;
    private final MediaSource.Factory mediaSourceFactory;
    private final List<MediaSourceHolderSnapshot> mediaSourceHolderSnapshots;

    @Nullable
    private Surface ownedSurface;
    private boolean pauseAtEndOfMediaItems;
    private boolean pendingDiscontinuity;
    private int pendingDiscontinuityReason;
    private int pendingOperationAcks;
    private int pendingPlayWhenReadyChangeReason;
    private final Timeline.Period period;
    final Player.Commands permanentAvailableCommands;
    private PlaybackInfo playbackInfo;
    private final HandlerWrapper playbackInfoUpdateHandler;
    private final ExoPlayerImplInternal.PlaybackInfoUpdateListener playbackInfoUpdateListener;
    private boolean playerReleased;
    private MediaMetadata playlistMetadata;

    @Nullable
    private PriorityTaskManager priorityTaskManager;
    private final Renderer[] renderers;
    private int repeatMode;
    private final long seekBackIncrementMs;
    private final long seekForwardIncrementMs;
    private SeekParameters seekParameters;
    private boolean shuffleModeEnabled;
    private ShuffleOrder shuffleOrder;
    private boolean skipSilenceEnabled;

    @Nullable
    private SphericalGLSurfaceView sphericalGLSurfaceView;
    private MediaMetadata staticAndDynamicMediaMetadata;

    @Nullable
    private final StreamVolumeManager streamVolumeManager;

    @Nullable
    private SurfaceHolder surfaceHolder;
    private boolean surfaceHolderSurfaceIsVideoOutput;
    private Size surfaceSize;

    @Nullable
    private TextureView textureView;
    private boolean throwsWhenUsingWrongThread;
    private final TrackSelector trackSelector;
    private final boolean useLazyPreparation;
    private int videoChangeFrameRateStrategy;

    @Nullable
    private DecoderCounters videoDecoderCounters;

    @Nullable
    private Format videoFormat;

    @Nullable
    private VideoFrameMetadataListener videoFrameMetadataListener;

    @Nullable
    private Object videoOutput;
    private int videoScalingMode;
    private VideoSize videoSize;
    private float volume;
    private final WakeLockManager wakeLockManager;
    private final WifiLockManager wifiLockManager;
    private final Player wrappingPlayer;

    /* JADX INFO: Access modifiers changed from: private */
    final class ComponentListener implements VideoRendererEventListener, AudioRendererEventListener, TextOutput, MetadataOutput, SurfaceHolder.Callback, TextureView.SurfaceTextureListener, SphericalGLSurfaceView.VideoSurfaceListener, AudioFocusManager.PlayerControl, AudioBecomingNoisyManager.EventListener, StreamVolumeManager.Listener, ExoPlayer.AudioOffloadListener {
        private ComponentListener() {
        }

        @Override // androidx.media3.exoplayer.text.TextOutput
        public void onCues(final List<Cue> list) {
            ExoPlayerImpl.this.listeners.l(27, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.h1
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onCues((List<Cue>) list);
                }
            });
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }

        @Override // androidx.media3.exoplayer.ExoPlayer.AudioOffloadListener
        public /* synthetic */ void v(boolean z6) {
            l.a(this, z6);
        }

        @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
        public /* synthetic */ void w(Format format) {
            androidx.media3.exoplayer.audio.b.f(this, format);
        }

        @Override // androidx.media3.exoplayer.video.VideoRendererEventListener
        public /* synthetic */ void x(Format format) {
            androidx.media3.exoplayer.video.f.i(this, format);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void K(Player.Listener listener) {
            listener.onMediaMetadataChanged(ExoPlayerImpl.this.mediaMetadata);
        }

        @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
        public void a(Exception exc) {
            ExoPlayerImpl.this.analyticsCollector.a(exc);
        }

        @Override // androidx.media3.exoplayer.video.VideoRendererEventListener
        public void b(String str) {
            ExoPlayerImpl.this.analyticsCollector.b(str);
        }

        @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
        public void c(String str) {
            ExoPlayerImpl.this.analyticsCollector.c(str);
        }

        @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
        public void d(Exception exc) {
            ExoPlayerImpl.this.analyticsCollector.d(exc);
        }

        @Override // androidx.media3.exoplayer.video.VideoRendererEventListener
        public void e(long j6, int i10) {
            ExoPlayerImpl.this.analyticsCollector.e(j6, i10);
        }

        @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
        public void f(long j6) {
            ExoPlayerImpl.this.analyticsCollector.f(j6);
        }

        @Override // androidx.media3.exoplayer.video.VideoRendererEventListener
        public void g(Exception exc) {
            ExoPlayerImpl.this.analyticsCollector.g(exc);
        }

        @Override // androidx.media3.exoplayer.video.VideoRendererEventListener
        public void h(Object obj, long j6) {
            ExoPlayerImpl.this.analyticsCollector.h(obj, j6);
            if (ExoPlayerImpl.this.videoOutput == obj) {
                ExoPlayerImpl.this.listeners.l(26, new androidx.media3.common.d1());
            }
        }

        @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
        public void i(int i10, long j6, long j10) {
            ExoPlayerImpl.this.analyticsCollector.i(i10, j6, j10);
        }

        @Override // androidx.media3.exoplayer.AudioBecomingNoisyManager.EventListener
        public void j() {
            ExoPlayerImpl.this.o2(false, -1, 3);
        }

        @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
        public void k(DecoderCounters decoderCounters) {
            ExoPlayerImpl.this.audioDecoderCounters = decoderCounters;
            ExoPlayerImpl.this.analyticsCollector.k(decoderCounters);
        }

        @Override // androidx.media3.exoplayer.video.VideoRendererEventListener
        public void l(DecoderCounters decoderCounters) {
            ExoPlayerImpl.this.videoDecoderCounters = decoderCounters;
            ExoPlayerImpl.this.analyticsCollector.l(decoderCounters);
        }

        @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
        public void m(Format format, @Nullable DecoderReuseEvaluation decoderReuseEvaluation) {
            ExoPlayerImpl.this.audioFormat = format;
            ExoPlayerImpl.this.analyticsCollector.m(format, decoderReuseEvaluation);
        }

        @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
        public void n(DecoderCounters decoderCounters) {
            ExoPlayerImpl.this.analyticsCollector.n(decoderCounters);
            ExoPlayerImpl.this.audioFormat = null;
            ExoPlayerImpl.this.audioDecoderCounters = null;
        }

        @Override // androidx.media3.exoplayer.ExoPlayer.AudioOffloadListener
        public void o(boolean z6) {
            ExoPlayerImpl.this.r2();
        }

        @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
        public void onAudioDecoderInitialized(String str, long j6, long j10) {
            ExoPlayerImpl.this.analyticsCollector.onAudioDecoderInitialized(str, j6, j10);
        }

        @Override // androidx.media3.exoplayer.text.TextOutput
        public void onCues(final CueGroup cueGroup) {
            ExoPlayerImpl.this.currentCueGroup = cueGroup;
            ExoPlayerImpl.this.listeners.l(27, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.k1
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onCues(cueGroup);
                }
            });
        }

        @Override // androidx.media3.exoplayer.video.VideoRendererEventListener
        public void onDroppedFrames(int i10, long j6) {
            ExoPlayerImpl.this.analyticsCollector.onDroppedFrames(i10, j6);
        }

        @Override // androidx.media3.exoplayer.metadata.MetadataOutput
        public void onMetadata(final Metadata metadata) {
            ExoPlayerImpl exoPlayerImpl = ExoPlayerImpl.this;
            exoPlayerImpl.staticAndDynamicMediaMetadata = exoPlayerImpl.staticAndDynamicMediaMetadata.b().K(metadata).H();
            MediaMetadata mediaMetadataF1 = ExoPlayerImpl.this.f1();
            if (!mediaMetadataF1.equals(ExoPlayerImpl.this.mediaMetadata)) {
                ExoPlayerImpl.this.mediaMetadata = mediaMetadataF1;
                ExoPlayerImpl.this.listeners.i(14, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.i1
                    @Override // androidx.media3.common.util.ListenerSet.Event
                    public final void invoke(Object obj) {
                        this.f535a.K((Player.Listener) obj);
                    }
                });
            }
            ExoPlayerImpl.this.listeners.i(28, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.j1
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onMetadata(metadata);
                }
            });
            ExoPlayerImpl.this.listeners.f();
        }

        @Override // androidx.media3.exoplayer.audio.AudioRendererEventListener
        public void onSkipSilenceEnabledChanged(final boolean z6) {
            if (ExoPlayerImpl.this.skipSilenceEnabled == z6) {
                return;
            }
            ExoPlayerImpl.this.skipSilenceEnabled = z6;
            ExoPlayerImpl.this.listeners.l(23, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.o1
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onSkipSilenceEnabledChanged(z6);
                }
            });
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i10, int i11) {
            ExoPlayerImpl.this.j2(surfaceTexture);
            ExoPlayerImpl.this.Y1(i10, i11);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            ExoPlayerImpl.this.k2(null);
            ExoPlayerImpl.this.Y1(0, 0);
            return true;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i10, int i11) {
            ExoPlayerImpl.this.Y1(i10, i11);
        }

        @Override // androidx.media3.exoplayer.video.VideoRendererEventListener
        public void onVideoDecoderInitialized(String str, long j6, long j10) {
            ExoPlayerImpl.this.analyticsCollector.onVideoDecoderInitialized(str, j6, j10);
        }

        @Override // androidx.media3.exoplayer.video.VideoRendererEventListener
        public void onVideoSizeChanged(final VideoSize videoSize) {
            ExoPlayerImpl.this.videoSize = videoSize;
            ExoPlayerImpl.this.listeners.l(25, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.n1
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onVideoSizeChanged(videoSize);
                }
            });
        }

        @Override // androidx.media3.exoplayer.StreamVolumeManager.Listener
        public void p(int i10) {
            final DeviceInfo deviceInfoH1 = ExoPlayerImpl.h1(ExoPlayerImpl.this.streamVolumeManager);
            if (deviceInfoH1.equals(ExoPlayerImpl.this.deviceInfo)) {
                return;
            }
            ExoPlayerImpl.this.deviceInfo = deviceInfoH1;
            ExoPlayerImpl.this.listeners.l(29, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.m1
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onDeviceInfoChanged(deviceInfoH1);
                }
            });
        }

        @Override // androidx.media3.exoplayer.video.spherical.SphericalGLSurfaceView.VideoSurfaceListener
        public void q(Surface surface) {
            ExoPlayerImpl.this.k2(null);
        }

        @Override // androidx.media3.exoplayer.video.spherical.SphericalGLSurfaceView.VideoSurfaceListener
        public void r(Surface surface) {
            ExoPlayerImpl.this.k2(surface);
        }

        @Override // androidx.media3.exoplayer.StreamVolumeManager.Listener
        public void s(final int i10, final boolean z6) {
            ExoPlayerImpl.this.listeners.l(30, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.l1
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onDeviceVolumeChanged(i10, z6);
                }
            });
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceChanged(SurfaceHolder surfaceHolder, int i10, int i11, int i12) {
            ExoPlayerImpl.this.Y1(i11, i12);
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceCreated(SurfaceHolder surfaceHolder) {
            if (ExoPlayerImpl.this.surfaceHolderSurfaceIsVideoOutput) {
                ExoPlayerImpl.this.k2(surfaceHolder.getSurface());
            }
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            if (ExoPlayerImpl.this.surfaceHolderSurfaceIsVideoOutput) {
                ExoPlayerImpl.this.k2(null);
            }
            ExoPlayerImpl.this.Y1(0, 0);
        }

        @Override // androidx.media3.exoplayer.video.VideoRendererEventListener
        public void t(Format format, @Nullable DecoderReuseEvaluation decoderReuseEvaluation) {
            ExoPlayerImpl.this.videoFormat = format;
            ExoPlayerImpl.this.analyticsCollector.t(format, decoderReuseEvaluation);
        }

        @Override // androidx.media3.exoplayer.video.VideoRendererEventListener
        public void u(DecoderCounters decoderCounters) {
            ExoPlayerImpl.this.analyticsCollector.u(decoderCounters);
            ExoPlayerImpl.this.videoFormat = null;
            ExoPlayerImpl.this.videoDecoderCounters = null;
        }

        @Override // androidx.media3.exoplayer.AudioFocusManager.PlayerControl
        public void y(float f) {
            ExoPlayerImpl.this.e2();
        }

        @Override // androidx.media3.exoplayer.AudioFocusManager.PlayerControl
        public void z(int i10) {
            boolean playWhenReady = ExoPlayerImpl.this.getPlayWhenReady();
            ExoPlayerImpl.this.o2(playWhenReady, i10, ExoPlayerImpl.r1(playWhenReady, i10));
        }
    }

    private static final class FrameMetadataListener implements VideoFrameMetadataListener, CameraMotionListener, PlayerMessage.Target {
        public static final int MSG_SET_CAMERA_MOTION_LISTENER = 8;
        public static final int MSG_SET_SPHERICAL_SURFACE_VIEW = 10000;
        public static final int MSG_SET_VIDEO_FRAME_METADATA_LISTENER = 7;

        @Nullable
        private CameraMotionListener cameraMotionListener;

        @Nullable
        private CameraMotionListener internalCameraMotionListener;

        @Nullable
        private VideoFrameMetadataListener internalVideoFrameMetadataListener;

        @Nullable
        private VideoFrameMetadataListener videoFrameMetadataListener;

        private FrameMetadataListener() {
        }

        @Override // androidx.media3.exoplayer.PlayerMessage.Target
        public void handleMessage(int i10, @Nullable Object obj) {
            if (i10 == 7) {
                this.videoFrameMetadataListener = (VideoFrameMetadataListener) obj;
                return;
            }
            if (i10 == 8) {
                this.cameraMotionListener = (CameraMotionListener) obj;
                return;
            }
            if (i10 != 10000) {
                return;
            }
            SphericalGLSurfaceView sphericalGLSurfaceView = (SphericalGLSurfaceView) obj;
            if (sphericalGLSurfaceView == null) {
                this.internalVideoFrameMetadataListener = null;
                this.internalCameraMotionListener = null;
            } else {
                this.internalVideoFrameMetadataListener = sphericalGLSurfaceView.getVideoFrameMetadataListener();
                this.internalCameraMotionListener = sphericalGLSurfaceView.getCameraMotionListener();
            }
        }

        @Override // androidx.media3.exoplayer.video.spherical.CameraMotionListener
        public void a(long j6, float[] fArr) {
            CameraMotionListener cameraMotionListener = this.internalCameraMotionListener;
            if (cameraMotionListener != null) {
                cameraMotionListener.a(j6, fArr);
            }
            CameraMotionListener cameraMotionListener2 = this.cameraMotionListener;
            if (cameraMotionListener2 != null) {
                cameraMotionListener2.a(j6, fArr);
            }
        }

        @Override // androidx.media3.exoplayer.video.spherical.CameraMotionListener
        public void b() {
            CameraMotionListener cameraMotionListener = this.internalCameraMotionListener;
            if (cameraMotionListener != null) {
                cameraMotionListener.b();
            }
            CameraMotionListener cameraMotionListener2 = this.cameraMotionListener;
            if (cameraMotionListener2 != null) {
                cameraMotionListener2.b();
            }
        }

        @Override // androidx.media3.exoplayer.video.VideoFrameMetadataListener
        public void e(long j6, long j10, Format format, @Nullable MediaFormat mediaFormat) {
            VideoFrameMetadataListener videoFrameMetadataListener = this.internalVideoFrameMetadataListener;
            if (videoFrameMetadataListener != null) {
                videoFrameMetadataListener.e(j6, j10, format, mediaFormat);
            }
            VideoFrameMetadataListener videoFrameMetadataListener2 = this.videoFrameMetadataListener;
            if (videoFrameMetadataListener2 != null) {
                videoFrameMetadataListener2.e(j6, j10, format, mediaFormat);
            }
        }
    }

    private static final class MediaSourceHolderSnapshot implements MediaSourceInfoHolder {
        private Timeline timeline;
        private final Object uid;

        @Override // androidx.media3.exoplayer.MediaSourceInfoHolder
        public Object a() {
            return this.uid;
        }

        @Override // androidx.media3.exoplayer.MediaSourceInfoHolder
        public Timeline b() {
            return this.timeline;
        }

        public MediaSourceHolderSnapshot(Object obj, Timeline timeline) {
            this.uid = obj;
            this.timeline = timeline;
        }
    }

    private void i2(SurfaceHolder surfaceHolder) {
        this.surfaceHolderSurfaceIsVideoOutput = false;
        this.surfaceHolder = surfaceHolder;
        surfaceHolder.addCallback(this.componentListener);
        Surface surface = this.surfaceHolder.getSurface();
        if (surface == null || !surface.isValid()) {
            Y1(0, 0);
        } else {
            Rect surfaceFrame = this.surfaceHolder.getSurfaceFrame();
            Y1(surfaceFrame.width(), surfaceFrame.height());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o2(boolean z6, int i10, int i11) {
        int i12 = 0;
        boolean z10 = z6 && i10 != -1;
        if (z10 && i10 != 1) {
            i12 = 1;
        }
        PlaybackInfo playbackInfoA = this.playbackInfo;
        if (playbackInfoA.playWhenReady == z10 && playbackInfoA.playbackSuppressionReason == i12) {
            return;
        }
        this.pendingOperationAcks++;
        if (playbackInfoA.sleepingForOffload) {
            playbackInfoA = playbackInfoA.a();
        }
        PlaybackInfo playbackInfoE = playbackInfoA.e(z10, i12);
        this.internalPlayer.T0(z10, i12);
        p2(playbackInfoE, 0, i11, false, 5, -9223372036854775807L, -1, false);
    }

    @Nullable
    private Pair<Object, Long> q1(Timeline timeline, Timeline timeline2, int i10, long j6) {
        if (timeline.u() || timeline2.u()) {
            boolean z6 = !timeline.u() && timeline2.u();
            return X1(timeline2, z6 ? -1 : i10, z6 ? -9223372036854775807L : j6);
        }
        Pair<Object, Long> pairN = timeline.n(this.window, this.period, i10, Util.K0(j6));
        Object obj = ((Pair) Util.j(pairN)).first;
        if (timeline2.f(obj) != -1) {
            return pairN;
        }
        Object objA0 = ExoPlayerImplInternal.A0(this.window, this.period, this.repeatMode, this.shuffleModeEnabled, obj, timeline, timeline2);
        if (objA0 == null) {
            return X1(timeline2, -1, -9223372036854775807L);
        }
        timeline2.l(objA0, this.period);
        int i11 = this.period.windowIndex;
        return X1(timeline2, i11, timeline2.r(i11, this.window).d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int r1(boolean z6, int i10) {
        return (!z6 || i10 == 1) ? 1 : 2;
    }

    @Override // androidx.media3.common.BasePlayer
    public void U(int i10, long j6, int i11, boolean z6) {
        s2();
        Assertions.a(i10 >= 0);
        this.analyticsCollector.p();
        Timeline timeline = this.playbackInfo.timeline;
        if (timeline.u() || i10 < timeline.t()) {
            this.pendingOperationAcks++;
            if (isPlayingAd()) {
                Log.i(TAG, "seekTo ignored because an ad is playing");
                ExoPlayerImplInternal.PlaybackInfoUpdate playbackInfoUpdate = new ExoPlayerImplInternal.PlaybackInfoUpdate(this.playbackInfo);
                playbackInfoUpdate.b(1);
                this.playbackInfoUpdateListener.a(playbackInfoUpdate);
                return;
            }
            PlaybackInfo playbackInfoH = this.playbackInfo;
            int i12 = playbackInfoH.playbackState;
            if (i12 == 3 || (i12 == 4 && !timeline.u())) {
                playbackInfoH = this.playbackInfo.h(2);
            }
            int iX = x();
            PlaybackInfo playbackInfoW1 = W1(playbackInfoH, timeline, X1(timeline, i10, j6));
            this.internalPlayer.C0(timeline, i10, Util.K0(j6));
            p2(playbackInfoW1, 0, 1, true, 1, o1(playbackInfoW1), iX, z6);
        }
    }

    @Override // androidx.media3.common.Player
    public Looper s() {
        return this.applicationLooper;
    }

    @RequiresApi
    private static final class Api31 {
        private Api31() {
        }

        @DoNotInline
        public static PlayerId a(Context context, ExoPlayerImpl exoPlayerImpl, boolean z6) {
            MediaMetricsListener mediaMetricsListenerB0 = MediaMetricsListener.B0(context);
            if (mediaMetricsListenerB0 == null) {
                Log.i(ExoPlayerImpl.TAG, "MediaMetricsService unavailable.");
                return new PlayerId(LogSessionId.LOG_SESSION_ID_NONE);
            }
            if (z6) {
                exoPlayerImpl.a1(mediaMetricsListenerB0);
            }
            return new PlayerId(mediaMetricsListenerB0.I0());
        }
    }

    static {
        MediaLibraryInfo.a("media3.exoplayer");
    }

    @SuppressLint({"HandlerLeak"})
    public ExoPlayerImpl(ExoPlayer.Builder builder, @Nullable Player player) {
        ConditionVariable conditionVariable = new ConditionVariable();
        this.constructorFinished = conditionVariable;
        try {
            Log.f(TAG, "Init " + Integer.toHexString(System.identityHashCode(this)) + " [" + MediaLibraryInfo.VERSION_SLASHY + "] [" + Util.DEVICE_DEBUG_INFO + "]");
            Context applicationContext = builder.context.getApplicationContext();
            this.applicationContext = applicationContext;
            AnalyticsCollector analyticsCollectorApply = builder.analyticsCollectorFunction.apply(builder.clock);
            this.analyticsCollector = analyticsCollectorApply;
            this.priorityTaskManager = builder.priorityTaskManager;
            this.audioAttributes = builder.audioAttributes;
            this.videoScalingMode = builder.videoScalingMode;
            this.videoChangeFrameRateStrategy = builder.videoChangeFrameRateStrategy;
            this.skipSilenceEnabled = builder.skipSilenceEnabled;
            this.detachSurfaceTimeoutMs = builder.detachSurfaceTimeoutMs;
            ComponentListener componentListener = new ComponentListener();
            this.componentListener = componentListener;
            FrameMetadataListener frameMetadataListener = new FrameMetadataListener();
            this.frameMetadataListener = frameMetadataListener;
            Handler handler = new Handler(builder.looper);
            Renderer[] rendererArrA = builder.renderersFactorySupplier.get().a(handler, componentListener, componentListener, componentListener, componentListener);
            this.renderers = rendererArrA;
            Assertions.g(rendererArrA.length > 0);
            TrackSelector trackSelector = builder.trackSelectorSupplier.get();
            this.trackSelector = trackSelector;
            this.mediaSourceFactory = builder.mediaSourceFactorySupplier.get();
            BandwidthMeter bandwidthMeter = builder.bandwidthMeterSupplier.get();
            this.bandwidthMeter = bandwidthMeter;
            this.useLazyPreparation = builder.useLazyPreparation;
            this.seekParameters = builder.seekParameters;
            this.seekBackIncrementMs = builder.seekBackIncrementMs;
            this.seekForwardIncrementMs = builder.seekForwardIncrementMs;
            this.pauseAtEndOfMediaItems = builder.pauseAtEndOfMediaItems;
            Looper looper = builder.looper;
            this.applicationLooper = looper;
            Clock clock = builder.clock;
            this.clock = clock;
            Player player2 = player == null ? this : player;
            this.wrappingPlayer = player2;
            this.listeners = new ListenerSet<>(looper, clock, new ListenerSet.IterationFinishedEvent() { // from class: androidx.media3.exoplayer.n0
                @Override // androidx.media3.common.util.ListenerSet.IterationFinishedEvent
                public final void a(Object obj, FlagSet flagSet) {
                    this.f559a.z1((Player.Listener) obj, flagSet);
                }
            });
            this.audioOffloadListeners = new CopyOnWriteArraySet<>();
            this.mediaSourceHolderSnapshots = new ArrayList();
            this.shuffleOrder = new ShuffleOrder.DefaultShuffleOrder(0);
            TrackSelectorResult trackSelectorResult = new TrackSelectorResult(new RendererConfiguration[rendererArrA.length], new ExoTrackSelection[rendererArrA.length], Tracks.EMPTY, null);
            this.emptyTrackSelectorResult = trackSelectorResult;
            this.period = new Timeline.Period();
            Player.Commands commandsE = new Player.Commands.Builder().c(1, 2, 3, 13, 14, 15, 16, 17, 18, 19, 31, 20, 30, 21, 22, 24, 27, 28, 32).d(29, trackSelector.h()).d(23, builder.deviceVolumeControlEnabled).d(25, builder.deviceVolumeControlEnabled).d(33, builder.deviceVolumeControlEnabled).d(26, builder.deviceVolumeControlEnabled).d(34, builder.deviceVolumeControlEnabled).e();
            this.permanentAvailableCommands = commandsE;
            this.availableCommands = new Player.Commands.Builder().b(commandsE).a(4).a(10).e();
            this.playbackInfoUpdateHandler = clock.createHandler(looper, null);
            ExoPlayerImplInternal.PlaybackInfoUpdateListener playbackInfoUpdateListener = new ExoPlayerImplInternal.PlaybackInfoUpdateListener() { // from class: androidx.media3.exoplayer.o0
                @Override // androidx.media3.exoplayer.ExoPlayerImplInternal.PlaybackInfoUpdateListener
                public final void a(ExoPlayerImplInternal.PlaybackInfoUpdate playbackInfoUpdate) {
                    this.f562a.B1(playbackInfoUpdate);
                }
            };
            this.playbackInfoUpdateListener = playbackInfoUpdateListener;
            this.playbackInfo = PlaybackInfo.k(trackSelectorResult);
            analyticsCollectorApply.G(player2, looper);
            int i10 = Util.SDK_INT;
            ExoPlayerImplInternal exoPlayerImplInternal = new ExoPlayerImplInternal(rendererArrA, trackSelector, trackSelectorResult, builder.loadControlSupplier.get(), bandwidthMeter, this.repeatMode, this.shuffleModeEnabled, analyticsCollectorApply, this.seekParameters, builder.livePlaybackSpeedControl, builder.releaseTimeoutMs, this.pauseAtEndOfMediaItems, looper, clock, playbackInfoUpdateListener, i10 < 31 ? new PlayerId() : Api31.a(applicationContext, this, builder.usePlatformDiagnostics), builder.playbackLooper);
            this.internalPlayer = exoPlayerImplInternal;
            this.volume = 1.0f;
            this.repeatMode = 0;
            MediaMetadata mediaMetadata = MediaMetadata.EMPTY;
            this.mediaMetadata = mediaMetadata;
            this.playlistMetadata = mediaMetadata;
            this.staticAndDynamicMediaMetadata = mediaMetadata;
            this.maskingWindowIndex = -1;
            if (i10 < 21) {
                this.audioSessionId = x1(0);
            } else {
                this.audioSessionId = Util.G(applicationContext);
            }
            this.currentCueGroup = CueGroup.EMPTY_TIME_ZERO;
            this.throwsWhenUsingWrongThread = true;
            L(analyticsCollectorApply);
            bandwidthMeter.c(new Handler(looper), analyticsCollectorApply);
            b1(componentListener);
            long j6 = builder.foregroundModeTimeoutMs;
            if (j6 > 0) {
                exoPlayerImplInternal.u(j6);
            }
            AudioBecomingNoisyManager audioBecomingNoisyManager = new AudioBecomingNoisyManager(builder.context, handler, componentListener);
            this.audioBecomingNoisyManager = audioBecomingNoisyManager;
            audioBecomingNoisyManager.b(builder.handleAudioBecomingNoisy);
            AudioFocusManager audioFocusManager = new AudioFocusManager(builder.context, handler, componentListener);
            this.audioFocusManager = audioFocusManager;
            audioFocusManager.m(builder.handleAudioFocus ? this.audioAttributes : null);
            if (builder.deviceVolumeControlEnabled) {
                StreamVolumeManager streamVolumeManager = new StreamVolumeManager(builder.context, handler, componentListener);
                this.streamVolumeManager = streamVolumeManager;
                streamVolumeManager.h(Util.j0(this.audioAttributes.usage));
            } else {
                this.streamVolumeManager = null;
            }
            WakeLockManager wakeLockManager = new WakeLockManager(builder.context);
            this.wakeLockManager = wakeLockManager;
            wakeLockManager.a(builder.wakeMode != 0);
            WifiLockManager wifiLockManager = new WifiLockManager(builder.context);
            this.wifiLockManager = wifiLockManager;
            wifiLockManager.a(builder.wakeMode == 2);
            this.deviceInfo = h1(this.streamVolumeManager);
            this.videoSize = VideoSize.UNKNOWN;
            this.surfaceSize = Size.UNKNOWN;
            trackSelector.l(this.audioAttributes);
            d2(1, 10, Integer.valueOf(this.audioSessionId));
            d2(2, 10, Integer.valueOf(this.audioSessionId));
            d2(1, 3, this.audioAttributes);
            d2(2, 4, Integer.valueOf(this.videoScalingMode));
            d2(2, 5, Integer.valueOf(this.videoChangeFrameRateStrategy));
            d2(1, 9, Boolean.valueOf(this.skipSilenceEnabled));
            d2(2, 7, frameMetadataListener);
            d2(6, 8, frameMetadataListener);
            conditionVariable.f();
        } catch (Throwable th) {
            this.constructorFinished.f();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void B1(final ExoPlayerImplInternal.PlaybackInfoUpdate playbackInfoUpdate) {
        this.playbackInfoUpdateHandler.post(new Runnable() { // from class: androidx.media3.exoplayer.x0
            @Override // java.lang.Runnable
            public final void run() {
                this.f701a.A1(playbackInfoUpdate);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void C1(Player.Listener listener) {
        listener.onPlayerError(ExoPlaybackException.k(new ExoTimeoutException(1), 1003));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void H1(Player.Listener listener) {
        listener.onAvailableCommandsChanged(this.availableCommands);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void I1(PlaybackInfo playbackInfo, int i10, Player.Listener listener) {
        listener.onTimelineChanged(playbackInfo.timeline, i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void L1(PlaybackInfo playbackInfo, Player.Listener listener) {
        listener.onPlayerErrorChanged(playbackInfo.playbackError);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void M1(PlaybackInfo playbackInfo, Player.Listener listener) {
        listener.onPlayerError(playbackInfo.playbackError);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void N1(PlaybackInfo playbackInfo, Player.Listener listener) {
        listener.onTracksChanged(playbackInfo.trackSelectorResult.tracks);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void P1(PlaybackInfo playbackInfo, Player.Listener listener) {
        listener.onLoadingChanged(playbackInfo.isLoading);
        listener.onIsLoadingChanged(playbackInfo.isLoading);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void Q1(PlaybackInfo playbackInfo, Player.Listener listener) {
        listener.onPlayerStateChanged(playbackInfo.playWhenReady, playbackInfo.playbackState);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void R1(PlaybackInfo playbackInfo, Player.Listener listener) {
        listener.onPlaybackStateChanged(playbackInfo.playbackState);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void S1(PlaybackInfo playbackInfo, int i10, Player.Listener listener) {
        listener.onPlayWhenReadyChanged(playbackInfo.playWhenReady, i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void T1(PlaybackInfo playbackInfo, Player.Listener listener) {
        listener.onPlaybackSuppressionReasonChanged(playbackInfo.playbackSuppressionReason);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void V1(PlaybackInfo playbackInfo, Player.Listener listener) {
        listener.onPlaybackParametersChanged(playbackInfo.playbackParameters);
    }

    private PlaybackInfo W1(PlaybackInfo playbackInfo, Timeline timeline, @Nullable Pair<Object, Long> pair) {
        Assertions.a(timeline.u() || pair != null);
        Timeline timeline2 = playbackInfo.timeline;
        long jN1 = n1(playbackInfo);
        PlaybackInfo playbackInfoJ = playbackInfo.j(timeline);
        if (timeline.u()) {
            MediaSource.MediaPeriodId mediaPeriodIdL = PlaybackInfo.l();
            long jK0 = Util.K0(this.maskingWindowPositionMs);
            PlaybackInfo playbackInfoC = playbackInfoJ.d(mediaPeriodIdL, jK0, jK0, jK0, 0L, TrackGroupArray.EMPTY, this.emptyTrackSelectorResult, com.google.common.collect.a0.x()).c(mediaPeriodIdL);
            playbackInfoC.bufferedPositionUs = playbackInfoC.positionUs;
            return playbackInfoC;
        }
        Object obj = playbackInfoJ.periodId.periodUid;
        boolean z6 = !obj.equals(((Pair) Util.j(pair)).first);
        MediaSource.MediaPeriodId mediaPeriodId = z6 ? new MediaSource.MediaPeriodId(pair.first) : playbackInfoJ.periodId;
        long jLongValue = ((Long) pair.second).longValue();
        long jK1 = Util.K0(jN1);
        if (!timeline2.u()) {
            jK1 -= timeline2.l(obj, this.period).r();
        }
        if (z6 || jLongValue < jK1) {
            Assertions.g(!mediaPeriodId.c());
            PlaybackInfo playbackInfoC2 = playbackInfoJ.d(mediaPeriodId, jLongValue, jLongValue, jLongValue, 0L, z6 ? TrackGroupArray.EMPTY : playbackInfoJ.trackGroups, z6 ? this.emptyTrackSelectorResult : playbackInfoJ.trackSelectorResult, z6 ? com.google.common.collect.a0.x() : playbackInfoJ.staticMetadata).c(mediaPeriodId);
            playbackInfoC2.bufferedPositionUs = jLongValue;
            return playbackInfoC2;
        }
        if (jLongValue == jK1) {
            int iF = timeline.f(playbackInfoJ.loadingMediaPeriodId.periodUid);
            if (iF == -1 || timeline.j(iF, this.period).windowIndex != timeline.l(mediaPeriodId.periodUid, this.period).windowIndex) {
                timeline.l(mediaPeriodId.periodUid, this.period);
                long jE = mediaPeriodId.c() ? this.period.e(mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup) : this.period.durationUs;
                playbackInfoJ = playbackInfoJ.d(mediaPeriodId, playbackInfoJ.positionUs, playbackInfoJ.positionUs, playbackInfoJ.discontinuityStartPositionUs, jE - playbackInfoJ.positionUs, playbackInfoJ.trackGroups, playbackInfoJ.trackSelectorResult, playbackInfoJ.staticMetadata).c(mediaPeriodId);
                playbackInfoJ.bufferedPositionUs = jE;
            }
        } else {
            Assertions.g(!mediaPeriodId.c());
            long jMax = Math.max(0L, playbackInfoJ.totalBufferedDurationUs - (jLongValue - jK1));
            long j6 = playbackInfoJ.bufferedPositionUs;
            if (playbackInfoJ.loadingMediaPeriodId.equals(playbackInfoJ.periodId)) {
                j6 = jLongValue + jMax;
            }
            playbackInfoJ = playbackInfoJ.d(mediaPeriodId, jLongValue, jLongValue, jLongValue, jMax, playbackInfoJ.trackGroups, playbackInfoJ.trackSelectorResult, playbackInfoJ.staticMetadata);
            playbackInfoJ.bufferedPositionUs = j6;
        }
        return playbackInfoJ;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Y1(final int i10, final int i11) {
        if (i10 == this.surfaceSize.b() && i11 == this.surfaceSize.a()) {
            return;
        }
        this.surfaceSize = new Size(i10, i11);
        this.listeners.l(24, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.s0
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((Player.Listener) obj).onSurfaceSizeChanged(i10, i11);
            }
        });
        d2(2, 14, new Size(i10, i11));
    }

    private long Z1(Timeline timeline, MediaSource.MediaPeriodId mediaPeriodId, long j6) {
        timeline.l(mediaPeriodId.periodUid, this.period);
        return j6 + this.period.r();
    }

    private void b2(int i10, int i11) {
        for (int i12 = i11 - 1; i12 >= i10; i12--) {
            this.mediaSourceHolderSnapshots.remove(i12);
        }
        this.shuffleOrder = this.shuffleOrder.a(i10, i11);
    }

    private List<MediaSourceList.MediaSourceHolder> c1(int i10, List<MediaSource> list) {
        ArrayList arrayList = new ArrayList();
        for (int i11 = 0; i11 < list.size(); i11++) {
            MediaSourceList.MediaSourceHolder mediaSourceHolder = new MediaSourceList.MediaSourceHolder(list.get(i11), this.useLazyPreparation);
            arrayList.add(mediaSourceHolder);
            this.mediaSourceHolderSnapshots.add(i11 + i10, new MediaSourceHolderSnapshot(mediaSourceHolder.uid, mediaSourceHolder.mediaSource.H0()));
        }
        this.shuffleOrder = this.shuffleOrder.cloneAndInsert(i10, arrayList.size());
        return arrayList;
    }

    private void c2() {
        if (this.sphericalGLSurfaceView != null) {
            k1(this.frameMetadataListener).n(10000).m(null).l();
            this.sphericalGLSurfaceView.i(this.componentListener);
            this.sphericalGLSurfaceView = null;
        }
        TextureView textureView = this.textureView;
        if (textureView != null) {
            if (textureView.getSurfaceTextureListener() != this.componentListener) {
                Log.i(TAG, "SurfaceTextureListener already unset or replaced.");
            } else {
                this.textureView.setSurfaceTextureListener(null);
            }
            this.textureView = null;
        }
        SurfaceHolder surfaceHolder = this.surfaceHolder;
        if (surfaceHolder != null) {
            surfaceHolder.removeCallback(this.componentListener);
            this.surfaceHolder = null;
        }
    }

    private void d2(int i10, int i11, @Nullable Object obj) {
        for (Renderer renderer : this.renderers) {
            if (renderer.getTrackType() == i10) {
                k1(renderer).n(i11).m(obj).l();
            }
        }
    }

    private PlaybackInfo e1(PlaybackInfo playbackInfo, int i10, List<MediaSource> list) {
        Timeline timeline = playbackInfo.timeline;
        this.pendingOperationAcks++;
        List<MediaSourceList.MediaSourceHolder> listC1 = c1(i10, list);
        Timeline timelineI1 = i1();
        PlaybackInfo playbackInfoW1 = W1(playbackInfo, timelineI1, q1(timeline, timelineI1, p1(playbackInfo), n1(playbackInfo)));
        this.internalPlayer.l(i10, listC1, this.shuffleOrder);
        return playbackInfoW1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e2() {
        d2(1, 2, Float.valueOf(this.volume * this.audioFocusManager.g()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static DeviceInfo h1(@Nullable StreamVolumeManager streamVolumeManager) {
        return new DeviceInfo.Builder(0).g(streamVolumeManager != null ? streamVolumeManager.d() : 0).f(streamVolumeManager != null ? streamVolumeManager.c() : 0).e();
    }

    private void h2(List<MediaSource> list, int i10, long j6, boolean z6) {
        int iE;
        long j10;
        int iP1 = p1(this.playbackInfo);
        long currentPosition = getCurrentPosition();
        this.pendingOperationAcks++;
        if (!this.mediaSourceHolderSnapshots.isEmpty()) {
            b2(0, this.mediaSourceHolderSnapshots.size());
        }
        List<MediaSourceList.MediaSourceHolder> listC1 = c1(0, list);
        Timeline timelineI1 = i1();
        if (!timelineI1.u() && i10 >= timelineI1.t()) {
            throw new IllegalSeekPositionException(timelineI1, i10, j6);
        }
        if (z6) {
            j10 = -9223372036854775807L;
            iE = timelineI1.e(this.shuffleModeEnabled);
        } else if (i10 == -1) {
            iE = iP1;
            j10 = currentPosition;
        } else {
            iE = i10;
            j10 = j6;
        }
        PlaybackInfo playbackInfoW1 = W1(this.playbackInfo, timelineI1, X1(timelineI1, iE, j10));
        int i11 = playbackInfoW1.playbackState;
        if (iE != -1 && i11 != 1) {
            i11 = (timelineI1.u() || iE >= timelineI1.t()) ? 4 : 2;
        }
        PlaybackInfo playbackInfoH = playbackInfoW1.h(i11);
        this.internalPlayer.Q0(listC1, iE, Util.K0(j10), this.shuffleOrder);
        p2(playbackInfoH, 0, 1, (this.playbackInfo.periodId.periodUid.equals(playbackInfoH.periodId.periodUid) || this.playbackInfo.timeline.u()) ? false : true, 4, o1(playbackInfoH), -1, false);
    }

    private Timeline i1() {
        return new PlaylistTimeline(this.mediaSourceHolderSnapshots, this.shuffleOrder);
    }

    private List<MediaSource> j1(List<MediaItem> list) {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < list.size(); i10++) {
            arrayList.add(this.mediaSourceFactory.d(list.get(i10)));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j2(SurfaceTexture surfaceTexture) {
        Surface surface = new Surface(surfaceTexture);
        k2(surface);
        this.ownedSurface = surface;
    }

    private PlayerMessage k1(PlayerMessage.Target target) {
        int iP1 = p1(this.playbackInfo);
        ExoPlayerImplInternal exoPlayerImplInternal = this.internalPlayer;
        Timeline timeline = this.playbackInfo.timeline;
        if (iP1 == -1) {
            iP1 = 0;
        }
        return new PlayerMessage(exoPlayerImplInternal, target, timeline, iP1, this.clock, exoPlayerImplInternal.B());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k2(@Nullable Object obj) {
        ArrayList arrayList = new ArrayList();
        boolean z6 = false;
        for (Renderer renderer : this.renderers) {
            if (renderer.getTrackType() == 2) {
                arrayList.add(k1(renderer).n(1).m(obj).l());
            }
        }
        Object obj2 = this.videoOutput;
        if (obj2 != null && obj2 != obj) {
            try {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((PlayerMessage) it.next()).a(this.detachSurfaceTimeoutMs);
                }
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            } catch (TimeoutException unused2) {
                z6 = true;
            }
            Object obj3 = this.videoOutput;
            Surface surface = this.ownedSurface;
            if (obj3 == surface) {
                surface.release();
                this.ownedSurface = null;
            }
        }
        this.videoOutput = obj;
        if (z6) {
            m2(ExoPlaybackException.k(new ExoTimeoutException(3), 1003));
        }
    }

    private Pair<Boolean, Integer> l1(PlaybackInfo playbackInfo, PlaybackInfo playbackInfo2, boolean z6, int i10, boolean z10, boolean z11) {
        Timeline timeline = playbackInfo2.timeline;
        Timeline timeline2 = playbackInfo.timeline;
        if (timeline2.u() && timeline.u()) {
            return new Pair<>(Boolean.FALSE, -1);
        }
        int i11 = 3;
        if (timeline2.u() != timeline.u()) {
            return new Pair<>(Boolean.TRUE, 3);
        }
        if (timeline.r(timeline.l(playbackInfo2.periodId.periodUid, this.period).windowIndex, this.window).uid.equals(timeline2.r(timeline2.l(playbackInfo.periodId.periodUid, this.period).windowIndex, this.window).uid)) {
            if (z6 && i10 == 0 && playbackInfo2.periodId.windowSequenceNumber < playbackInfo.periodId.windowSequenceNumber) {
                return new Pair<>(Boolean.TRUE, 0);
            }
            return (z6 && i10 == 1 && z11) ? new Pair<>(Boolean.TRUE, 2) : new Pair<>(Boolean.FALSE, -1);
        }
        if (z6 && i10 == 0) {
            i11 = 1;
        } else if (z6 && i10 == 1) {
            i11 = 2;
        } else if (!z10) {
            throw new IllegalStateException();
        }
        return new Pair<>(Boolean.TRUE, Integer.valueOf(i11));
    }

    private void m2(@Nullable ExoPlaybackException exoPlaybackException) {
        PlaybackInfo playbackInfo = this.playbackInfo;
        PlaybackInfo playbackInfoC = playbackInfo.c(playbackInfo.periodId);
        playbackInfoC.bufferedPositionUs = playbackInfoC.positionUs;
        playbackInfoC.totalBufferedDurationUs = 0L;
        PlaybackInfo playbackInfoH = playbackInfoC.h(1);
        if (exoPlaybackException != null) {
            playbackInfoH = playbackInfoH.f(exoPlaybackException);
        }
        this.pendingOperationAcks++;
        this.internalPlayer.k1();
        p2(playbackInfoH, 0, 1, false, 5, -9223372036854775807L, -1, false);
    }

    private long n1(PlaybackInfo playbackInfo) {
        if (!playbackInfo.periodId.c()) {
            return Util.q1(o1(playbackInfo));
        }
        playbackInfo.timeline.l(playbackInfo.periodId.periodUid, this.period);
        return playbackInfo.requestedContentPositionUs == -9223372036854775807L ? playbackInfo.timeline.r(p1(playbackInfo), this.window).d() : this.period.q() + Util.q1(playbackInfo.requestedContentPositionUs);
    }

    private void n2() {
        Player.Commands commands = this.availableCommands;
        Player.Commands commandsI = Util.I(this.wrappingPlayer, this.permanentAvailableCommands);
        this.availableCommands = commandsI;
        if (commandsI.equals(commands)) {
            return;
        }
        this.listeners.i(13, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.w0
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                this.f697a.H1((Player.Listener) obj);
            }
        });
    }

    private long o1(PlaybackInfo playbackInfo) {
        if (playbackInfo.timeline.u()) {
            return Util.K0(this.maskingWindowPositionMs);
        }
        long jM = playbackInfo.sleepingForOffload ? playbackInfo.m() : playbackInfo.positionUs;
        return playbackInfo.periodId.c() ? jM : Z1(playbackInfo.timeline, playbackInfo.periodId, jM);
    }

    private int p1(PlaybackInfo playbackInfo) {
        return playbackInfo.timeline.u() ? this.maskingWindowIndex : playbackInfo.timeline.l(playbackInfo.periodId.periodUid, this.period).windowIndex;
    }

    private void p2(final PlaybackInfo playbackInfo, final int i10, final int i11, boolean z6, final int i12, long j6, int i13, boolean z10) {
        PlaybackInfo playbackInfo2 = this.playbackInfo;
        this.playbackInfo = playbackInfo;
        boolean z11 = !playbackInfo2.timeline.equals(playbackInfo.timeline);
        Pair<Boolean, Integer> pairL1 = l1(playbackInfo, playbackInfo2, z6, i12, z11, z10);
        boolean zBooleanValue = ((Boolean) pairL1.first).booleanValue();
        final int iIntValue = ((Integer) pairL1.second).intValue();
        MediaMetadata mediaMetadataF1 = this.mediaMetadata;
        final MediaItem mediaItem = null;
        if (zBooleanValue) {
            if (!playbackInfo.timeline.u()) {
                mediaItem = playbackInfo.timeline.r(playbackInfo.timeline.l(playbackInfo.periodId.periodUid, this.period).windowIndex, this.window).mediaItem;
            }
            this.staticAndDynamicMediaMetadata = MediaMetadata.EMPTY;
        }
        if (zBooleanValue || !playbackInfo2.staticMetadata.equals(playbackInfo.staticMetadata)) {
            this.staticAndDynamicMediaMetadata = this.staticAndDynamicMediaMetadata.b().L(playbackInfo.staticMetadata).H();
            mediaMetadataF1 = f1();
        }
        boolean z12 = !mediaMetadataF1.equals(this.mediaMetadata);
        this.mediaMetadata = mediaMetadataF1;
        boolean z13 = playbackInfo2.playWhenReady != playbackInfo.playWhenReady;
        boolean z14 = playbackInfo2.playbackState != playbackInfo.playbackState;
        if (z14 || z13) {
            r2();
        }
        boolean z15 = playbackInfo2.isLoading;
        boolean z16 = playbackInfo.isLoading;
        boolean z17 = z15 != z16;
        if (z17) {
            q2(z16);
        }
        if (z11) {
            this.listeners.i(0, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.i0
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ExoPlayerImpl.I1(playbackInfo, i10, (Player.Listener) obj);
                }
            });
        }
        if (z6) {
            final Player.PositionInfo positionInfoU1 = u1(i12, playbackInfo2, i13);
            final Player.PositionInfo positionInfoT1 = t1(j6);
            this.listeners.i(11, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.b1
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ExoPlayerImpl.J1(i12, positionInfoU1, positionInfoT1, (Player.Listener) obj);
                }
            });
        }
        if (zBooleanValue) {
            this.listeners.i(1, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.c1
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onMediaItemTransition(mediaItem, iIntValue);
                }
            });
        }
        if (playbackInfo2.playbackError != playbackInfo.playbackError) {
            this.listeners.i(10, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.d1
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ExoPlayerImpl.L1(playbackInfo, (Player.Listener) obj);
                }
            });
            if (playbackInfo.playbackError != null) {
                this.listeners.i(10, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.e1
                    @Override // androidx.media3.common.util.ListenerSet.Event
                    public final void invoke(Object obj) {
                        ExoPlayerImpl.M1(playbackInfo, (Player.Listener) obj);
                    }
                });
            }
        }
        TrackSelectorResult trackSelectorResult = playbackInfo2.trackSelectorResult;
        TrackSelectorResult trackSelectorResult2 = playbackInfo.trackSelectorResult;
        if (trackSelectorResult != trackSelectorResult2) {
            this.trackSelector.i(trackSelectorResult2.info);
            this.listeners.i(2, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.f1
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ExoPlayerImpl.N1(playbackInfo, (Player.Listener) obj);
                }
            });
        }
        if (z12) {
            final MediaMetadata mediaMetadata = this.mediaMetadata;
            this.listeners.i(14, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.j0
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onMediaMetadataChanged(mediaMetadata);
                }
            });
        }
        if (z17) {
            this.listeners.i(3, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.k0
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ExoPlayerImpl.P1(playbackInfo, (Player.Listener) obj);
                }
            });
        }
        if (z14 || z13) {
            this.listeners.i(-1, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.l0
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ExoPlayerImpl.Q1(playbackInfo, (Player.Listener) obj);
                }
            });
        }
        if (z14) {
            this.listeners.i(4, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.m0
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ExoPlayerImpl.R1(playbackInfo, (Player.Listener) obj);
                }
            });
        }
        if (z13) {
            this.listeners.i(5, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.t0
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ExoPlayerImpl.S1(playbackInfo, i11, (Player.Listener) obj);
                }
            });
        }
        if (playbackInfo2.playbackSuppressionReason != playbackInfo.playbackSuppressionReason) {
            this.listeners.i(6, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.y0
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ExoPlayerImpl.T1(playbackInfo, (Player.Listener) obj);
                }
            });
        }
        if (playbackInfo2.n() != playbackInfo.n()) {
            this.listeners.i(7, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.z0
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ExoPlayerImpl.U1(playbackInfo, (Player.Listener) obj);
                }
            });
        }
        if (!playbackInfo2.playbackParameters.equals(playbackInfo.playbackParameters)) {
            this.listeners.i(12, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.a1
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ExoPlayerImpl.V1(playbackInfo, (Player.Listener) obj);
                }
            });
        }
        n2();
        this.listeners.f();
        if (playbackInfo2.sleepingForOffload != playbackInfo.sleepingForOffload) {
            Iterator<ExoPlayer.AudioOffloadListener> it = this.audioOffloadListeners.iterator();
            while (it.hasNext()) {
                it.next().o(playbackInfo.sleepingForOffload);
            }
        }
    }

    private void q2(boolean z6) {
        PriorityTaskManager priorityTaskManager = this.priorityTaskManager;
        if (priorityTaskManager != null) {
            if (z6 && !this.isPriorityTaskManagerRegistered) {
                priorityTaskManager.a(0);
                this.isPriorityTaskManagerRegistered = true;
            } else {
                if (z6 || !this.isPriorityTaskManagerRegistered) {
                    return;
                }
                priorityTaskManager.d(0);
                this.isPriorityTaskManagerRegistered = false;
            }
        }
    }

    private void s2() {
        this.constructorFinished.c();
        if (Thread.currentThread() != s().getThread()) {
            String strD = Util.D("Player is accessed on the wrong thread.\nCurrent thread: '%s'\nExpected thread: '%s'\nSee https://developer.android.com/guide/topics/media/issues/player-accessed-on-wrong-thread", Thread.currentThread().getName(), s().getThread().getName());
            if (this.throwsWhenUsingWrongThread) {
                throw new IllegalStateException(strD);
            }
            Log.j(TAG, strD, this.hasNotifiedFullWrongThreadWarning ? null : new IllegalStateException());
            this.hasNotifiedFullWrongThreadWarning = true;
        }
    }

    private Player.PositionInfo u1(int i10, PlaybackInfo playbackInfo, int i11) {
        int i12;
        Object obj;
        MediaItem mediaItem;
        Object obj2;
        int i13;
        long jV1;
        long jV2;
        Timeline.Period period = new Timeline.Period();
        if (playbackInfo.timeline.u()) {
            i12 = i11;
            obj = null;
            mediaItem = null;
            obj2 = null;
            i13 = -1;
        } else {
            Object obj3 = playbackInfo.periodId.periodUid;
            playbackInfo.timeline.l(obj3, period);
            int i14 = period.windowIndex;
            int iF = playbackInfo.timeline.f(obj3);
            Object obj4 = playbackInfo.timeline.r(i14, this.window).uid;
            mediaItem = this.window.mediaItem;
            obj2 = obj3;
            i13 = iF;
            obj = obj4;
            i12 = i14;
        }
        if (i10 == 0) {
            if (playbackInfo.periodId.c()) {
                MediaSource.MediaPeriodId mediaPeriodId = playbackInfo.periodId;
                jV1 = period.e(mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup);
                jV2 = v1(playbackInfo);
            } else {
                jV1 = playbackInfo.periodId.nextAdGroupIndex != -1 ? v1(this.playbackInfo) : period.positionInWindowUs + period.durationUs;
                jV2 = jV1;
            }
        } else if (playbackInfo.periodId.c()) {
            jV1 = playbackInfo.positionUs;
            jV2 = v1(playbackInfo);
        } else {
            jV1 = period.positionInWindowUs + playbackInfo.positionUs;
            jV2 = jV1;
        }
        long jQ1 = Util.q1(jV1);
        long jQ2 = Util.q1(jV2);
        MediaSource.MediaPeriodId mediaPeriodId2 = playbackInfo.periodId;
        return new Player.PositionInfo(obj, i12, mediaItem, obj2, i13, jQ1, jQ2, mediaPeriodId2.adGroupIndex, mediaPeriodId2.adIndexInAdGroup);
    }

    private static long v1(PlaybackInfo playbackInfo) {
        Timeline.Window window = new Timeline.Window();
        Timeline.Period period = new Timeline.Period();
        playbackInfo.timeline.l(playbackInfo.periodId.periodUid, period);
        return playbackInfo.requestedContentPositionUs == -9223372036854775807L ? playbackInfo.timeline.r(period.windowIndex, window).e() : period.r() + playbackInfo.requestedContentPositionUs;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: w1, reason: merged with bridge method [inline-methods] */
    public void A1(ExoPlayerImplInternal.PlaybackInfoUpdate playbackInfoUpdate) {
        long j6;
        boolean z6;
        long jZ1;
        int i10 = this.pendingOperationAcks - playbackInfoUpdate.operationAcks;
        this.pendingOperationAcks = i10;
        boolean z10 = true;
        if (playbackInfoUpdate.positionDiscontinuity) {
            this.pendingDiscontinuityReason = playbackInfoUpdate.discontinuityReason;
            this.pendingDiscontinuity = true;
        }
        if (playbackInfoUpdate.hasPlayWhenReadyChangeReason) {
            this.pendingPlayWhenReadyChangeReason = playbackInfoUpdate.playWhenReadyChangeReason;
        }
        if (i10 == 0) {
            Timeline timeline = playbackInfoUpdate.playbackInfo.timeline;
            if (!this.playbackInfo.timeline.u() && timeline.u()) {
                this.maskingWindowIndex = -1;
                this.maskingWindowPositionMs = 0L;
                this.maskingPeriodIndex = 0;
            }
            if (!timeline.u()) {
                List<Timeline> listJ = ((PlaylistTimeline) timeline).J();
                Assertions.g(listJ.size() == this.mediaSourceHolderSnapshots.size());
                for (int i11 = 0; i11 < listJ.size(); i11++) {
                    this.mediaSourceHolderSnapshots.get(i11).timeline = listJ.get(i11);
                }
            }
            if (this.pendingDiscontinuity) {
                if (playbackInfoUpdate.playbackInfo.periodId.equals(this.playbackInfo.periodId) && playbackInfoUpdate.playbackInfo.discontinuityStartPositionUs == this.playbackInfo.positionUs) {
                    z10 = false;
                }
                if (z10) {
                    if (timeline.u() || playbackInfoUpdate.playbackInfo.periodId.c()) {
                        jZ1 = playbackInfoUpdate.playbackInfo.discontinuityStartPositionUs;
                    } else {
                        PlaybackInfo playbackInfo = playbackInfoUpdate.playbackInfo;
                        jZ1 = Z1(timeline, playbackInfo.periodId, playbackInfo.discontinuityStartPositionUs);
                    }
                    j6 = jZ1;
                } else {
                    j6 = -9223372036854775807L;
                }
                z6 = z10;
            } else {
                j6 = -9223372036854775807L;
                z6 = false;
            }
            this.pendingDiscontinuity = false;
            p2(playbackInfoUpdate.playbackInfo, 1, this.pendingPlayWhenReadyChangeReason, z6, this.pendingDiscontinuityReason, j6, -1, false);
        }
    }

    private int x1(int i10) {
        AudioTrack audioTrack = this.keepSessionIdAudioTrack;
        if (audioTrack != null && audioTrack.getAudioSessionId() != i10) {
            this.keepSessionIdAudioTrack.release();
            this.keepSessionIdAudioTrack = null;
        }
        if (this.keepSessionIdAudioTrack == null) {
            this.keepSessionIdAudioTrack = new AudioTrack(3, 4000, 4, 2, 2, 0, i10);
        }
        return this.keepSessionIdAudioTrack.getAudioSessionId();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void z1(Player.Listener listener, FlagSet flagSet) {
        listener.onEvents(this.wrappingPlayer, new Player.Events(flagSet));
    }

    @Override // androidx.media3.common.Player
    public void L(Player.Listener listener) {
        this.listeners.c((Player.Listener) Assertions.e(listener));
    }

    public void a1(AnalyticsListener analyticsListener) {
        this.analyticsCollector.C((AnalyticsListener) Assertions.e(analyticsListener));
    }

    public void b1(ExoPlayer.AudioOffloadListener audioOffloadListener) {
        this.audioOffloadListeners.add(audioOffloadListener);
    }

    @Override // androidx.media3.common.Player
    public void release() {
        AudioTrack audioTrack;
        Log.f(TAG, "Release " + Integer.toHexString(System.identityHashCode(this)) + " [" + MediaLibraryInfo.VERSION_SLASHY + "] [" + Util.DEVICE_DEBUG_INFO + "] [" + MediaLibraryInfo.b() + "]");
        s2();
        if (Util.SDK_INT < 21 && (audioTrack = this.keepSessionIdAudioTrack) != null) {
            audioTrack.release();
            this.keepSessionIdAudioTrack = null;
        }
        this.audioBecomingNoisyManager.b(false);
        StreamVolumeManager streamVolumeManager = this.streamVolumeManager;
        if (streamVolumeManager != null) {
            streamVolumeManager.g();
        }
        this.wakeLockManager.b(false);
        this.wifiLockManager.b(false);
        this.audioFocusManager.i();
        if (!this.internalPlayer.k0()) {
            this.listeners.l(10, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.q0
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ExoPlayerImpl.C1((Player.Listener) obj);
                }
            });
        }
        this.listeners.j();
        this.playbackInfoUpdateHandler.removeCallbacksAndMessages(null);
        this.bandwidthMeter.a(this.analyticsCollector);
        PlaybackInfo playbackInfo = this.playbackInfo;
        if (playbackInfo.sleepingForOffload) {
            this.playbackInfo = playbackInfo.a();
        }
        PlaybackInfo playbackInfoH = this.playbackInfo.h(1);
        this.playbackInfo = playbackInfoH;
        PlaybackInfo playbackInfoC = playbackInfoH.c(playbackInfoH.periodId);
        this.playbackInfo = playbackInfoC;
        playbackInfoC.bufferedPositionUs = playbackInfoC.positionUs;
        this.playbackInfo.totalBufferedDurationUs = 0L;
        this.analyticsCollector.release();
        this.trackSelector.j();
        c2();
        Surface surface = this.ownedSurface;
        if (surface != null) {
            surface.release();
            this.ownedSurface = null;
        }
        if (this.isPriorityTaskManagerRegistered) {
            ((PriorityTaskManager) Assertions.e(this.priorityTaskManager)).d(0);
            this.isPriorityTaskManagerRegistered = false;
        }
        this.currentCueGroup = CueGroup.EMPTY_TIME_ZERO;
        this.playerReleased = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void J1(int i10, Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2, Player.Listener listener) {
        listener.onPositionDiscontinuity(i10);
        listener.onPositionDiscontinuity(positionInfo, positionInfo2, i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void U1(PlaybackInfo playbackInfo, Player.Listener listener) {
        listener.onIsPlayingChanged(playbackInfo.n());
    }

    @Nullable
    private Pair<Object, Long> X1(Timeline timeline, int i10, long j6) {
        if (timeline.u()) {
            this.maskingWindowIndex = i10;
            if (j6 == -9223372036854775807L) {
                j6 = 0;
            }
            this.maskingWindowPositionMs = j6;
            this.maskingPeriodIndex = 0;
            return null;
        }
        if (i10 == -1 || i10 >= timeline.t()) {
            i10 = timeline.e(this.shuffleModeEnabled);
            j6 = timeline.r(i10, this.window).d();
        }
        return timeline.n(this.window, this.period, i10, Util.K0(j6));
    }

    private PlaybackInfo a2(PlaybackInfo playbackInfo, int i10, int i11) {
        int iP1 = p1(playbackInfo);
        long jN1 = n1(playbackInfo);
        Timeline timeline = playbackInfo.timeline;
        int size = this.mediaSourceHolderSnapshots.size();
        this.pendingOperationAcks++;
        b2(i10, i11);
        Timeline timelineI1 = i1();
        PlaybackInfo playbackInfoW1 = W1(playbackInfo, timelineI1, q1(timeline, timelineI1, iP1, jN1));
        int i12 = playbackInfoW1.playbackState;
        if (i12 != 1 && i12 != 4 && i10 < i11 && i11 == size && iP1 >= playbackInfoW1.timeline.t()) {
            playbackInfoW1 = playbackInfoW1.h(4);
        }
        this.internalPlayer.o0(i10, i11, this.shuffleOrder);
        return playbackInfoW1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public MediaMetadata f1() {
        Timeline currentTimeline = getCurrentTimeline();
        if (currentTimeline.u()) {
            return this.staticAndDynamicMediaMetadata;
        }
        return this.staticAndDynamicMediaMetadata.b().J(currentTimeline.r(x(), this.window).mediaItem.mediaMetadata).H();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r2() {
        int playbackState = getPlaybackState();
        boolean z6 = true;
        if (playbackState != 1) {
            if (playbackState != 2 && playbackState != 3) {
                if (playbackState != 4) {
                    throw new IllegalStateException();
                }
            } else {
                boolean zM1 = m1();
                WakeLockManager wakeLockManager = this.wakeLockManager;
                if (!getPlayWhenReady() || zM1) {
                    z6 = false;
                }
                wakeLockManager.b(z6);
                this.wifiLockManager.b(getPlayWhenReady());
                return;
            }
        }
        this.wakeLockManager.b(false);
        this.wifiLockManager.b(false);
    }

    private Player.PositionInfo t1(long j6) {
        MediaItem mediaItem;
        Object obj;
        int i10;
        Object obj2;
        long jQ1;
        int iX = x();
        if (!this.playbackInfo.timeline.u()) {
            PlaybackInfo playbackInfo = this.playbackInfo;
            Object obj3 = playbackInfo.periodId.periodUid;
            playbackInfo.timeline.l(obj3, this.period);
            int iF = this.playbackInfo.timeline.f(obj3);
            i10 = iF;
            obj = obj3;
            obj2 = this.playbackInfo.timeline.r(iX, this.window).uid;
            mediaItem = this.window.mediaItem;
        } else {
            mediaItem = null;
            obj = null;
            i10 = -1;
            obj2 = null;
        }
        long jQ2 = Util.q1(j6);
        if (this.playbackInfo.periodId.c()) {
            jQ1 = Util.q1(v1(this.playbackInfo));
        } else {
            jQ1 = jQ2;
        }
        MediaSource.MediaPeriodId mediaPeriodId = this.playbackInfo.periodId;
        return new Player.PositionInfo(obj2, iX, mediaItem, obj, i10, jQ2, jQ1, mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup);
    }

    @Override // androidx.media3.common.Player
    public long A() {
        s2();
        return this.seekBackIncrementMs;
    }

    @Override // androidx.media3.common.Player
    public void B(int i10, int i11) {
        boolean z6;
        s2();
        if (i10 >= 0 && i11 >= i10) {
            z6 = true;
        } else {
            z6 = false;
        }
        Assertions.a(z6);
        int size = this.mediaSourceHolderSnapshots.size();
        int iMin = Math.min(i11, size);
        if (i10 < size && i10 != iMin) {
            PlaybackInfo playbackInfoA2 = a2(this.playbackInfo, i10, iMin);
            p2(playbackInfoA2, 0, 1, !playbackInfoA2.periodId.periodUid.equals(this.playbackInfo.periodId.periodUid), 4, o1(playbackInfoA2), -1, false);
        }
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    @Nullable
    public DecoderCounters D() {
        s2();
        return this.videoDecoderCounters;
    }

    @Override // androidx.media3.common.Player
    public void E(final TrackSelectionParameters trackSelectionParameters) {
        s2();
        if (this.trackSelector.h() && !trackSelectionParameters.equals(this.trackSelector.c())) {
            this.trackSelector.m(trackSelectionParameters);
            this.listeners.l(19, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.v0
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onTrackSelectionParametersChanged(trackSelectionParameters);
                }
            });
        }
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    @Nullable
    public DecoderCounters F() {
        s2();
        return this.audioDecoderCounters;
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void H(boolean z6) {
        s2();
        if (this.foregroundMode != z6) {
            this.foregroundMode = z6;
            if (!this.internalPlayer.M0(z6)) {
                m2(ExoPlaybackException.k(new ExoTimeoutException(2), 1003));
            }
        }
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    @Nullable
    public Format I() {
        s2();
        return this.videoFormat;
    }

    @Override // androidx.media3.common.Player
    public void K(Player.Listener listener) {
        s2();
        this.listeners.k((Player.Listener) Assertions.e(listener));
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    @Nullable
    public Format M() {
        s2();
        return this.audioFormat;
    }

    @Override // androidx.media3.common.Player
    public void N(int i10, List<MediaItem> list) {
        s2();
        d1(i10, j1(list));
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public void O(MediaSource mediaSource) {
        s2();
        f2(Collections.singletonList(mediaSource));
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    @Deprecated
    public void a(MediaSource mediaSource) {
        s2();
        O(mediaSource);
        prepare();
    }

    @Override // androidx.media3.common.Player
    public void b(PlaybackParameters playbackParameters) {
        s2();
        if (playbackParameters == null) {
            playbackParameters = PlaybackParameters.DEFAULT;
        }
        if (this.playbackInfo.playbackParameters.equals(playbackParameters)) {
            return;
        }
        PlaybackInfo playbackInfoG = this.playbackInfo.g(playbackParameters);
        this.pendingOperationAcks++;
        this.internalPlayer.V0(playbackParameters);
        p2(playbackInfoG, 0, 1, false, 5, -9223372036854775807L, -1, false);
    }

    @Override // androidx.media3.common.Player
    public long c() {
        s2();
        return Util.q1(this.playbackInfo.totalBufferedDurationUs);
    }

    @Override // androidx.media3.common.Player
    public void clearVideoSurface() {
        s2();
        c2();
        k2(null);
        Y1(0, 0);
    }

    @Override // androidx.media3.common.Player
    public void clearVideoSurfaceView(@Nullable SurfaceView surfaceView) {
        SurfaceHolder holder;
        s2();
        if (surfaceView == null) {
            holder = null;
        } else {
            holder = surfaceView.getHolder();
        }
        g1(holder);
    }

    @Override // androidx.media3.common.Player
    public void clearVideoTextureView(@Nullable TextureView textureView) {
        s2();
        if (textureView != null && textureView == this.textureView) {
            clearVideoSurface();
        }
    }

    public void d1(int i10, List<MediaSource> list) {
        boolean z6;
        s2();
        boolean z10 = false;
        if (i10 >= 0) {
            z6 = true;
        } else {
            z6 = false;
        }
        Assertions.a(z6);
        int iMin = Math.min(i10, this.mediaSourceHolderSnapshots.size());
        if (this.mediaSourceHolderSnapshots.isEmpty()) {
            if (this.maskingWindowIndex == -1) {
                z10 = true;
            }
            g2(list, z10);
            return;
        }
        p2(e1(this.playbackInfo, iMin, list), 0, 1, false, 5, -9223372036854775807L, -1, false);
    }

    @Override // androidx.media3.common.Player
    public Tracks e() {
        s2();
        return this.playbackInfo.trackSelectorResult.tracks;
    }

    public void f2(List<MediaSource> list) {
        s2();
        g2(list, true);
    }

    public void g1(@Nullable SurfaceHolder surfaceHolder) {
        s2();
        if (surfaceHolder != null && surfaceHolder == this.surfaceHolder) {
            clearVideoSurface();
        }
    }

    public void g2(List<MediaSource> list, boolean z6) {
        s2();
        h2(list, -1, -9223372036854775807L, z6);
    }

    @Override // androidx.media3.common.Player
    public long getContentPosition() {
        s2();
        return n1(this.playbackInfo);
    }

    @Override // androidx.media3.common.Player
    public int getCurrentAdGroupIndex() {
        s2();
        if (isPlayingAd()) {
            return this.playbackInfo.periodId.adGroupIndex;
        }
        return -1;
    }

    @Override // androidx.media3.common.Player
    public int getCurrentAdIndexInAdGroup() {
        s2();
        if (isPlayingAd()) {
            return this.playbackInfo.periodId.adIndexInAdGroup;
        }
        return -1;
    }

    @Override // androidx.media3.common.Player
    public int getCurrentPeriodIndex() {
        s2();
        if (this.playbackInfo.timeline.u()) {
            return this.maskingPeriodIndex;
        }
        PlaybackInfo playbackInfo = this.playbackInfo;
        return playbackInfo.timeline.f(playbackInfo.periodId.periodUid);
    }

    @Override // androidx.media3.common.Player
    public long getCurrentPosition() {
        s2();
        return Util.q1(o1(this.playbackInfo));
    }

    @Override // androidx.media3.common.Player
    public Timeline getCurrentTimeline() {
        s2();
        return this.playbackInfo.timeline;
    }

    @Override // androidx.media3.common.Player
    public long getDuration() {
        s2();
        if (isPlayingAd()) {
            PlaybackInfo playbackInfo = this.playbackInfo;
            MediaSource.MediaPeriodId mediaPeriodId = playbackInfo.periodId;
            playbackInfo.timeline.l(mediaPeriodId.periodUid, this.period);
            return Util.q1(this.period.e(mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup));
        }
        return C();
    }

    @Override // androidx.media3.common.Player
    public boolean getPlayWhenReady() {
        s2();
        return this.playbackInfo.playWhenReady;
    }

    @Override // androidx.media3.common.Player
    public PlaybackParameters getPlaybackParameters() {
        s2();
        return this.playbackInfo.playbackParameters;
    }

    @Override // androidx.media3.common.Player
    public int getPlaybackState() {
        s2();
        return this.playbackInfo.playbackState;
    }

    @Override // androidx.media3.common.Player
    public int getRepeatMode() {
        s2();
        return this.repeatMode;
    }

    @Override // androidx.media3.common.Player
    public boolean getShuffleModeEnabled() {
        s2();
        return this.shuffleModeEnabled;
    }

    @Override // androidx.media3.common.Player
    public float getVolume() {
        s2();
        return this.volume;
    }

    @Override // androidx.media3.common.Player
    public TrackSelectionParameters h() {
        s2();
        return this.trackSelector.c();
    }

    @Override // androidx.media3.common.Player
    public long i() {
        s2();
        return 3000L;
    }

    @Override // androidx.media3.common.Player
    public boolean isPlayingAd() {
        s2();
        return this.playbackInfo.periodId.c();
    }

    @Override // androidx.media3.common.Player
    public long j() {
        s2();
        return this.seekForwardIncrementMs;
    }

    @Override // androidx.media3.common.Player
    public long l() {
        s2();
        if (this.playbackInfo.timeline.u()) {
            return this.maskingWindowPositionMs;
        }
        PlaybackInfo playbackInfo = this.playbackInfo;
        if (playbackInfo.loadingMediaPeriodId.windowSequenceNumber != playbackInfo.periodId.windowSequenceNumber) {
            return playbackInfo.timeline.r(x(), this.window).f();
        }
        long j6 = playbackInfo.bufferedPositionUs;
        if (this.playbackInfo.loadingMediaPeriodId.c()) {
            PlaybackInfo playbackInfo2 = this.playbackInfo;
            Timeline.Period periodL = playbackInfo2.timeline.l(playbackInfo2.loadingMediaPeriodId.periodUid, this.period);
            long jI = periodL.i(this.playbackInfo.loadingMediaPeriodId.adGroupIndex);
            if (jI == Long.MIN_VALUE) {
                j6 = periodL.durationUs;
            } else {
                j6 = jI;
            }
        }
        PlaybackInfo playbackInfo3 = this.playbackInfo;
        return Util.q1(Z1(playbackInfo3.timeline, playbackInfo3.loadingMediaPeriodId, j6));
    }

    public void l2(@Nullable SurfaceHolder surfaceHolder) {
        s2();
        if (surfaceHolder == null) {
            clearVideoSurface();
            return;
        }
        c2();
        this.surfaceHolderSurfaceIsVideoOutput = true;
        this.surfaceHolder = surfaceHolder;
        surfaceHolder.addCallback(this.componentListener);
        Surface surface = surfaceHolder.getSurface();
        if (surface != null && surface.isValid()) {
            k2(surface);
            Rect surfaceFrame = surfaceHolder.getSurfaceFrame();
            Y1(surfaceFrame.width(), surfaceFrame.height());
        } else {
            k2(null);
            Y1(0, 0);
        }
    }

    public boolean m1() {
        s2();
        return this.playbackInfo.sleepingForOffload;
    }

    @Override // androidx.media3.common.Player
    public CueGroup p() {
        s2();
        return this.currentCueGroup;
    }

    @Override // androidx.media3.common.Player
    public void prepare() {
        s2();
        boolean playWhenReady = getPlayWhenReady();
        int i10 = 2;
        int iP = this.audioFocusManager.p(playWhenReady, 2);
        o2(playWhenReady, iP, r1(playWhenReady, iP));
        PlaybackInfo playbackInfo = this.playbackInfo;
        if (playbackInfo.playbackState != 1) {
            return;
        }
        PlaybackInfo playbackInfoF = playbackInfo.f(null);
        if (playbackInfoF.timeline.u()) {
            i10 = 4;
        }
        PlaybackInfo playbackInfoH = playbackInfoF.h(i10);
        this.pendingOperationAcks++;
        this.internalPlayer.i0();
        p2(playbackInfoH, 1, 1, false, 5, -9223372036854775807L, -1, false);
    }

    @Override // androidx.media3.common.Player
    public int r() {
        s2();
        return this.playbackInfo.playbackSuppressionReason;
    }

    @Override // androidx.media3.common.Player
    @Nullable
    /* JADX INFO: renamed from: s1, reason: merged with bridge method [inline-methods] */
    public ExoPlaybackException d() {
        s2();
        return this.playbackInfo.playbackError;
    }

    @Override // androidx.media3.common.Player
    public void setPlayWhenReady(boolean z6) {
        s2();
        int iP = this.audioFocusManager.p(z6, getPlaybackState());
        o2(z6, iP, r1(z6, iP));
    }

    @Override // androidx.media3.common.Player
    public void setRepeatMode(final int i10) {
        s2();
        if (this.repeatMode != i10) {
            this.repeatMode = i10;
            this.internalPlayer.X0(i10);
            this.listeners.i(8, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.p0
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onRepeatModeChanged(i10);
                }
            });
            n2();
            this.listeners.f();
        }
    }

    @Override // androidx.media3.common.Player
    public void setShuffleModeEnabled(final boolean z6) {
        s2();
        if (this.shuffleModeEnabled != z6) {
            this.shuffleModeEnabled = z6;
            this.internalPlayer.a1(z6);
            this.listeners.i(9, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.r0
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((Player.Listener) obj).onShuffleModeEnabledChanged(z6);
                }
            });
            n2();
            this.listeners.f();
        }
    }

    @Override // androidx.media3.common.Player
    public void setVideoSurface(@Nullable Surface surface) {
        int i10;
        s2();
        c2();
        k2(surface);
        if (surface == null) {
            i10 = 0;
        } else {
            i10 = -1;
        }
        Y1(i10, i10);
    }

    @Override // androidx.media3.common.Player
    public void setVideoSurfaceView(@Nullable SurfaceView surfaceView) {
        SurfaceHolder holder;
        s2();
        if (surfaceView instanceof VideoDecoderOutputBufferRenderer) {
            c2();
            k2(surfaceView);
            i2(surfaceView.getHolder());
        } else {
            if (surfaceView instanceof SphericalGLSurfaceView) {
                c2();
                this.sphericalGLSurfaceView = (SphericalGLSurfaceView) surfaceView;
                k1(this.frameMetadataListener).n(10000).m(this.sphericalGLSurfaceView).l();
                this.sphericalGLSurfaceView.d(this.componentListener);
                k2(this.sphericalGLSurfaceView.getVideoSurface());
                i2(surfaceView.getHolder());
                return;
            }
            if (surfaceView == null) {
                holder = null;
            } else {
                holder = surfaceView.getHolder();
            }
            l2(holder);
        }
    }

    @Override // androidx.media3.common.Player
    public void setVideoTextureView(@Nullable TextureView textureView) {
        SurfaceTexture surfaceTexture;
        s2();
        if (textureView == null) {
            clearVideoSurface();
            return;
        }
        c2();
        this.textureView = textureView;
        if (textureView.getSurfaceTextureListener() != null) {
            Log.i(TAG, "Replacing existing SurfaceTextureListener.");
        }
        textureView.setSurfaceTextureListener(this.componentListener);
        if (textureView.isAvailable()) {
            surfaceTexture = textureView.getSurfaceTexture();
        } else {
            surfaceTexture = null;
        }
        if (surfaceTexture == null) {
            k2(null);
            Y1(0, 0);
        } else {
            j2(surfaceTexture);
            Y1(textureView.getWidth(), textureView.getHeight());
        }
    }

    @Override // androidx.media3.common.Player
    public void setVolume(float f) {
        s2();
        final float fP = Util.p(f, 0.0f, 1.0f);
        if (this.volume == fP) {
            return;
        }
        this.volume = fP;
        e2();
        this.listeners.l(22, new ListenerSet.Event() { // from class: androidx.media3.exoplayer.u0
            @Override // androidx.media3.common.util.ListenerSet.Event
            public final void invoke(Object obj) {
                ((Player.Listener) obj).onVolumeChanged(fP);
            }
        });
    }

    @Override // androidx.media3.common.Player
    public void stop() {
        s2();
        this.audioFocusManager.p(getPlayWhenReady(), 1);
        m2(null);
        this.currentCueGroup = new CueGroup(com.google.common.collect.a0.x(), this.playbackInfo.positionUs);
    }

    @Override // androidx.media3.common.Player
    public Player.Commands u() {
        s2();
        return this.availableCommands;
    }

    @Override // androidx.media3.common.Player
    public VideoSize v() {
        s2();
        return this.videoSize;
    }

    @Override // androidx.media3.common.Player
    public int x() {
        s2();
        int iP1 = p1(this.playbackInfo);
        if (iP1 == -1) {
            return 0;
        }
        return iP1;
    }

    @Override // androidx.media3.common.Player
    public MediaMetadata z() {
        s2();
        return this.mediaMetadata;
    }
}
