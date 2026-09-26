package com.google.android.exoplayer2;

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
import com.google.android.exoplayer2.metadata.Metadata;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes6.dex */
final class k1 extends com.google.android.exoplayer2.e implements s {
    private static final String TAG = "ExoPlayerImpl";
    private final com.google.android.exoplayer2.analytics.a analyticsCollector;
    private final Context applicationContext;
    private final Looper applicationLooper;
    private com.google.android.exoplayer2.audio.e audioAttributes;
    private final com.google.android.exoplayer2.b audioBecomingNoisyManager;

    @Nullable
    private com.google.android.exoplayer2.decoder.e audioDecoderCounters;
    private final com.google.android.exoplayer2.d audioFocusManager;

    @Nullable
    private a2 audioFormat;
    private final CopyOnWriteArraySet<s.a> audioOffloadListeners;
    private int audioSessionId;
    private d3.b availableCommands;
    private final com.google.android.exoplayer2.upstream.e bandwidthMeter;

    @Nullable
    private com.google.android.exoplayer2.video.spherical.a cameraMotionListener;
    private final com.google.android.exoplayer2.util.d clock;
    private final c componentListener;
    private final com.google.android.exoplayer2.util.g constructorFinished;
    private com.google.android.exoplayer2.text.f currentCueGroup;
    private final long detachSurfaceTimeoutMs;
    private o deviceInfo;
    final com.google.android.exoplayer2.trackselection.c0 emptyTrackSelectorResult;
    private boolean foregroundMode;
    private final d frameMetadataListener;
    private boolean hasNotifiedFullWrongThreadWarning;
    private final w1 internalPlayer;
    private boolean isPriorityTaskManagerRegistered;

    @Nullable
    private AudioTrack keepSessionIdAudioTrack;
    private final com.google.android.exoplayer2.util.s<d3.d> listeners;
    private int maskingPeriodIndex;
    private int maskingWindowIndex;
    private long maskingWindowPositionMs;
    private n2 mediaMetadata;
    private final com.google.android.exoplayer2.source.b0.a mediaSourceFactory;
    private final List<e> mediaSourceHolderSnapshots;

    @Nullable
    private Surface ownedSurface;
    private boolean pauseAtEndOfMediaItems;
    private boolean pendingDiscontinuity;
    private int pendingDiscontinuityReason;
    private int pendingOperationAcks;
    private int pendingPlayWhenReadyChangeReason;
    private final z3.b period;
    final d3.b permanentAvailableCommands;
    private a3 playbackInfo;
    private final com.google.android.exoplayer2.util.p playbackInfoUpdateHandler;
    private final w1.f playbackInfoUpdateListener;
    private boolean playerReleased;
    private n2 playlistMetadata;

    @Nullable
    private com.google.android.exoplayer2.util.e0 priorityTaskManager;
    private final m3[] renderers;
    private int repeatMode;
    private final long seekBackIncrementMs;
    private final long seekForwardIncrementMs;
    private r3 seekParameters;
    private boolean shuffleModeEnabled;
    private com.google.android.exoplayer2.source.y0 shuffleOrder;
    private boolean skipSilenceEnabled;

    @Nullable
    private com.google.android.exoplayer2.video.spherical.l sphericalGLSurfaceView;
    private n2 staticAndDynamicMediaMetadata;
    private final u3 streamVolumeManager;

    @Nullable
    private SurfaceHolder surfaceHolder;
    private boolean surfaceHolderSurfaceIsVideoOutput;
    private com.google.android.exoplayer2.util.g0 surfaceSize;

    @Nullable
    private TextureView textureView;
    private boolean throwsWhenUsingWrongThread;
    private final com.google.android.exoplayer2.trackselection.b0 trackSelector;
    private final boolean useLazyPreparation;
    private int videoChangeFrameRateStrategy;

    @Nullable
    private com.google.android.exoplayer2.decoder.e videoDecoderCounters;

    @Nullable
    private a2 videoFormat;

    @Nullable
    private com.google.android.exoplayer2.video.k videoFrameMetadataListener;

    @Nullable
    private Object videoOutput;
    private int videoScalingMode;
    private com.google.android.exoplayer2.video.a0 videoSize;
    private float volume;
    private final f4 wakeLockManager;
    private final g4 wifiLockManager;
    private final d3 wrappingPlayer;

    /* JADX INFO: Access modifiers changed from: private */
    final class c implements com.google.android.exoplayer2.video.y, com.google.android.exoplayer2.audio.t, com.google.android.exoplayer2.text.p, r2.e, SurfaceHolder.Callback, TextureView.SurfaceTextureListener, com.google.android.exoplayer2.video.spherical.l.b, com.google.android.exoplayer2.d.b, com.google.android.exoplayer2.b.InterfaceC0166b, u3.b, s.a {
        private c() {
        }

        @Override // com.google.android.exoplayer2.video.y
        public /* synthetic */ void B(a2 a2Var) {
            com.google.android.exoplayer2.video.n.a(this, a2Var);
        }

        @Override // com.google.android.exoplayer2.audio.t
        public /* synthetic */ void C(a2 a2Var) {
            com.google.android.exoplayer2.audio.i.a(this, a2Var);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }

        @Override // com.google.android.exoplayer2.s.a
        public /* synthetic */ void v(boolean z6) {
            r.a(this, z6);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void N(d3.d dVar) {
            dVar.B(k1.this.mediaMetadata);
        }

        @Override // com.google.android.exoplayer2.video.y
        public void A(com.google.android.exoplayer2.decoder.e eVar) {
            k1.this.videoDecoderCounters = eVar;
            k1.this.analyticsCollector.A(eVar);
        }

        @Override // com.google.android.exoplayer2.audio.t
        public void a(Exception exc) {
            k1.this.analyticsCollector.a(exc);
        }

        @Override // com.google.android.exoplayer2.video.y
        public void b(String str) {
            k1.this.analyticsCollector.b(str);
        }

        @Override // com.google.android.exoplayer2.audio.t
        public void c(String str) {
            k1.this.analyticsCollector.c(str);
        }

        @Override // com.google.android.exoplayer2.audio.t
        public void d(Exception exc) {
            k1.this.analyticsCollector.d(exc);
        }

        @Override // com.google.android.exoplayer2.video.y
        public void e(long j6, int i10) {
            k1.this.analyticsCollector.e(j6, i10);
        }

        @Override // com.google.android.exoplayer2.audio.t
        public void f(long j6) {
            k1.this.analyticsCollector.f(j6);
        }

        @Override // com.google.android.exoplayer2.video.y
        public void g(Exception exc) {
            k1.this.analyticsCollector.g(exc);
        }

        @Override // com.google.android.exoplayer2.video.y
        public void h(Object obj, long j6) {
            k1.this.analyticsCollector.h(obj, j6);
            if (k1.this.videoOutput == obj) {
                k1.this.listeners.l(26, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.r1
                    @Override // com.google.android.exoplayer2.util.s.a
                    public final void invoke(Object obj2) {
                        ((d3.d) obj2).onRenderedFirstFrame();
                    }
                });
            }
        }

        @Override // com.google.android.exoplayer2.audio.t
        public void i(int i10, long j6, long j10) {
            k1.this.analyticsCollector.i(i10, j6, j10);
        }

        @Override // com.google.android.exoplayer2.b.InterfaceC0166b
        public void j() {
            k1.this.f2(false, -1, 3);
        }

        @Override // com.google.android.exoplayer2.video.y
        public void k(final com.google.android.exoplayer2.video.a0 a0Var) {
            k1.this.videoSize = a0Var;
            k1.this.listeners.l(25, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.s1
                @Override // com.google.android.exoplayer2.util.s.a
                public final void invoke(Object obj) {
                    ((d3.d) obj).k(a0Var);
                }
            });
        }

        @Override // com.google.android.exoplayer2.audio.t
        public void l(a2 a2Var, @Nullable com.google.android.exoplayer2.decoder.i iVar) {
            k1.this.audioFormat = a2Var;
            k1.this.analyticsCollector.l(a2Var, iVar);
        }

        @Override // com.google.android.exoplayer2.audio.t
        public void m(com.google.android.exoplayer2.decoder.e eVar) {
            k1.this.audioDecoderCounters = eVar;
            k1.this.analyticsCollector.m(eVar);
        }

        @Override // r2.e
        public void n(final Metadata metadata) {
            k1 k1Var = k1.this;
            k1Var.staticAndDynamicMediaMetadata = k1Var.staticAndDynamicMediaMetadata.b().I(metadata).F();
            n2 n2VarU0 = k1.this.U0();
            if (!n2VarU0.equals(k1.this.mediaMetadata)) {
                k1.this.mediaMetadata = n2VarU0;
                k1.this.listeners.i(14, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.l1
                    @Override // com.google.android.exoplayer2.util.s.a
                    public final void invoke(Object obj) {
                        this.f1233a.N((d3.d) obj);
                    }
                });
            }
            k1.this.listeners.i(28, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.m1
                @Override // com.google.android.exoplayer2.util.s.a
                public final void invoke(Object obj) {
                    ((d3.d) obj).n(metadata);
                }
            });
            k1.this.listeners.f();
        }

        @Override // com.google.android.exoplayer2.s.a
        public void o(boolean z6) {
            k1.this.i2();
        }

        @Override // com.google.android.exoplayer2.audio.t
        public void onAudioDecoderInitialized(String str, long j6, long j10) {
            k1.this.analyticsCollector.onAudioDecoderInitialized(str, j6, j10);
        }

        @Override // com.google.android.exoplayer2.text.p
        public void onCues(final List<com.google.android.exoplayer2.text.b> list) {
            k1.this.listeners.l(27, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.n1
                @Override // com.google.android.exoplayer2.util.s.a
                public final void invoke(Object obj) {
                    ((d3.d) obj).onCues(list);
                }
            });
        }

        @Override // com.google.android.exoplayer2.video.y
        public void onDroppedFrames(int i10, long j6) {
            k1.this.analyticsCollector.onDroppedFrames(i10, j6);
        }

        @Override // com.google.android.exoplayer2.audio.t
        public void onSkipSilenceEnabledChanged(final boolean z6) {
            if (k1.this.skipSilenceEnabled == z6) {
                return;
            }
            k1.this.skipSilenceEnabled = z6;
            k1.this.listeners.l(23, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.t1
                @Override // com.google.android.exoplayer2.util.s.a
                public final void invoke(Object obj) {
                    ((d3.d) obj).onSkipSilenceEnabledChanged(z6);
                }
            });
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i10, int i11) {
            k1.this.a2(surfaceTexture);
            k1.this.O1(i10, i11);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            k1.this.b2(null);
            k1.this.O1(0, 0);
            return true;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i10, int i11) {
            k1.this.O1(i10, i11);
        }

        @Override // com.google.android.exoplayer2.video.y
        public void onVideoDecoderInitialized(String str, long j6, long j10) {
            k1.this.analyticsCollector.onVideoDecoderInitialized(str, j6, j10);
        }

        @Override // com.google.android.exoplayer2.u3.b
        public void p(int i10) {
            final o oVarX0 = k1.X0(k1.this.streamVolumeManager);
            if (oVarX0.equals(k1.this.deviceInfo)) {
                return;
            }
            k1.this.deviceInfo = oVarX0;
            k1.this.listeners.l(29, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.p1
                @Override // com.google.android.exoplayer2.util.s.a
                public final void invoke(Object obj) {
                    ((d3.d) obj).J(oVarX0);
                }
            });
        }

        @Override // com.google.android.exoplayer2.video.spherical.l.b
        public void q(Surface surface) {
            k1.this.b2(null);
        }

        @Override // com.google.android.exoplayer2.video.spherical.l.b
        public void r(Surface surface) {
            k1.this.b2(surface);
        }

        @Override // com.google.android.exoplayer2.u3.b
        public void s(final int i10, final boolean z6) {
            k1.this.listeners.l(30, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.q1
                @Override // com.google.android.exoplayer2.util.s.a
                public final void invoke(Object obj) {
                    ((d3.d) obj).onDeviceVolumeChanged(i10, z6);
                }
            });
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceChanged(SurfaceHolder surfaceHolder, int i10, int i11, int i12) {
            k1.this.O1(i11, i12);
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceCreated(SurfaceHolder surfaceHolder) {
            if (k1.this.surfaceHolderSurfaceIsVideoOutput) {
                k1.this.b2(surfaceHolder.getSurface());
            }
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            if (k1.this.surfaceHolderSurfaceIsVideoOutput) {
                k1.this.b2(null);
            }
            k1.this.O1(0, 0);
        }

        @Override // com.google.android.exoplayer2.video.y
        public void t(a2 a2Var, @Nullable com.google.android.exoplayer2.decoder.i iVar) {
            k1.this.videoFormat = a2Var;
            k1.this.analyticsCollector.t(a2Var, iVar);
        }

        @Override // com.google.android.exoplayer2.video.y
        public void u(com.google.android.exoplayer2.decoder.e eVar) {
            k1.this.analyticsCollector.u(eVar);
            k1.this.videoFormat = null;
            k1.this.videoDecoderCounters = null;
        }

        @Override // com.google.android.exoplayer2.audio.t
        public void w(com.google.android.exoplayer2.decoder.e eVar) {
            k1.this.analyticsCollector.w(eVar);
            k1.this.audioFormat = null;
            k1.this.audioDecoderCounters = null;
        }

        @Override // com.google.android.exoplayer2.text.p
        public void x(final com.google.android.exoplayer2.text.f fVar) {
            k1.this.currentCueGroup = fVar;
            k1.this.listeners.l(27, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.o1
                @Override // com.google.android.exoplayer2.util.s.a
                public final void invoke(Object obj) {
                    ((d3.d) obj).x(fVar);
                }
            });
        }

        @Override // com.google.android.exoplayer2.d.b
        public void y(float f) {
            k1.this.V1();
        }

        @Override // com.google.android.exoplayer2.d.b
        public void z(int i10) {
            boolean playWhenReady = k1.this.getPlayWhenReady();
            k1.this.f2(playWhenReady, i10, k1.g1(playWhenReady, i10));
        }
    }

    private static final class d implements com.google.android.exoplayer2.video.k, com.google.android.exoplayer2.video.spherical.a, h3.b {
        public static final int MSG_SET_CAMERA_MOTION_LISTENER = 8;
        public static final int MSG_SET_SPHERICAL_SURFACE_VIEW = 10000;
        public static final int MSG_SET_VIDEO_FRAME_METADATA_LISTENER = 7;

        @Nullable
        private com.google.android.exoplayer2.video.spherical.a cameraMotionListener;

        @Nullable
        private com.google.android.exoplayer2.video.spherical.a internalCameraMotionListener;

        @Nullable
        private com.google.android.exoplayer2.video.k internalVideoFrameMetadataListener;

        @Nullable
        private com.google.android.exoplayer2.video.k videoFrameMetadataListener;

        private d() {
        }

        @Override // com.google.android.exoplayer2.h3.b
        public void handleMessage(int i10, @Nullable Object obj) {
            if (i10 == 7) {
                this.videoFrameMetadataListener = (com.google.android.exoplayer2.video.k) obj;
                return;
            }
            if (i10 == 8) {
                this.cameraMotionListener = (com.google.android.exoplayer2.video.spherical.a) obj;
                return;
            }
            if (i10 != 10000) {
                return;
            }
            com.google.android.exoplayer2.video.spherical.l lVar = (com.google.android.exoplayer2.video.spherical.l) obj;
            if (lVar == null) {
                this.internalVideoFrameMetadataListener = null;
                this.internalCameraMotionListener = null;
            } else {
                this.internalVideoFrameMetadataListener = lVar.getVideoFrameMetadataListener();
                this.internalCameraMotionListener = lVar.getCameraMotionListener();
            }
        }

        @Override // com.google.android.exoplayer2.video.spherical.a
        public void a(long j6, float[] fArr) {
            com.google.android.exoplayer2.video.spherical.a aVar = this.internalCameraMotionListener;
            if (aVar != null) {
                aVar.a(j6, fArr);
            }
            com.google.android.exoplayer2.video.spherical.a aVar2 = this.cameraMotionListener;
            if (aVar2 != null) {
                aVar2.a(j6, fArr);
            }
        }

        @Override // com.google.android.exoplayer2.video.spherical.a
        public void b() {
            com.google.android.exoplayer2.video.spherical.a aVar = this.internalCameraMotionListener;
            if (aVar != null) {
                aVar.b();
            }
            com.google.android.exoplayer2.video.spherical.a aVar2 = this.cameraMotionListener;
            if (aVar2 != null) {
                aVar2.b();
            }
        }

        @Override // com.google.android.exoplayer2.video.k
        public void f(long j6, long j10, a2 a2Var, @Nullable MediaFormat mediaFormat) {
            com.google.android.exoplayer2.video.k kVar = this.internalVideoFrameMetadataListener;
            if (kVar != null) {
                kVar.f(j6, j10, a2Var, mediaFormat);
            }
            com.google.android.exoplayer2.video.k kVar2 = this.videoFrameMetadataListener;
            if (kVar2 != null) {
                kVar2.f(j6, j10, a2Var, mediaFormat);
            }
        }
    }

    private static final class e implements s2 {
        private z3 timeline;
        private final Object uid;

        @Override // com.google.android.exoplayer2.s2
        public Object a() {
            return this.uid;
        }

        @Override // com.google.android.exoplayer2.s2
        public z3 b() {
            return this.timeline;
        }

        public e(Object obj, z3 z3Var) {
            this.uid = obj;
            this.timeline = z3Var;
        }
    }

    private a3 Q1(int i10, int i11) {
        com.google.android.exoplayer2.util.a.a(i10 >= 0 && i11 >= i10 && i11 <= this.mediaSourceHolderSnapshots.size());
        int iX = x();
        z3 currentTimeline = getCurrentTimeline();
        int size = this.mediaSourceHolderSnapshots.size();
        this.pendingOperationAcks++;
        R1(i10, i11);
        z3 z3VarY0 = Y0();
        a3 a3VarM1 = M1(this.playbackInfo, z3VarY0, f1(currentTimeline, z3VarY0));
        int i12 = a3VarM1.playbackState;
        if (i12 != 1 && i12 != 4 && i10 < i11 && i11 == size && iX >= a3VarM1.timeline.t()) {
            a3VarM1 = a3VarM1.g(4);
        }
        this.internalPlayer.l0(i10, i11, this.shuffleOrder);
        return a3VarM1;
    }

    private void T1(int i10, long j6, boolean z6) {
        this.analyticsCollector.p();
        z3 z3Var = this.playbackInfo.timeline;
        if (i10 < 0 || (!z3Var.u() && i10 >= z3Var.t())) {
            throw new e2(z3Var, i10, j6);
        }
        this.pendingOperationAcks++;
        if (isPlayingAd()) {
            com.google.android.exoplayer2.util.t.i(TAG, "seekTo ignored because an ad is playing");
            w1.e eVar = new w1.e(this.playbackInfo);
            eVar.b(1);
            this.playbackInfoUpdateListener.a(eVar);
            return;
        }
        int i11 = getPlaybackState() != 1 ? 2 : 1;
        int iX = x();
        a3 a3VarM1 = M1(this.playbackInfo.g(i11), z3Var, N1(z3Var, i10, j6));
        this.internalPlayer.y0(z3Var, i10, com.google.android.exoplayer2.util.o0.w0(j6));
        g2(a3VarM1, 0, 1, true, true, 1, d1(a3VarM1), iX, z6);
    }

    private void Z1(SurfaceHolder surfaceHolder) {
        this.surfaceHolderSurfaceIsVideoOutput = false;
        this.surfaceHolder = surfaceHolder;
        surfaceHolder.addCallback(this.componentListener);
        Surface surface = this.surfaceHolder.getSurface();
        if (surface == null || !surface.isValid()) {
            O1(0, 0);
        } else {
            Rect surfaceFrame = this.surfaceHolder.getSurfaceFrame();
            O1(surfaceFrame.width(), surfaceFrame.height());
        }
    }

    private void d2(boolean z6, @Nullable q qVar) {
        a3 a3VarB;
        if (z6) {
            a3VarB = Q1(0, this.mediaSourceHolderSnapshots.size()).e(null);
        } else {
            a3 a3Var = this.playbackInfo;
            a3VarB = a3Var.b(a3Var.periodId);
            a3VarB.bufferedPositionUs = a3VarB.positionUs;
            a3VarB.totalBufferedDurationUs = 0L;
        }
        a3 a3VarG = a3VarB.g(1);
        if (qVar != null) {
            a3VarG = a3VarG.e(qVar);
        }
        a3 a3Var2 = a3VarG;
        this.pendingOperationAcks++;
        this.internalPlayer.e1();
        g2(a3Var2, 0, 1, false, a3Var2.timeline.u() && !this.playbackInfo.timeline.u(), 4, d1(a3Var2), -1, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f2(boolean z6, int i10, int i11) {
        int i12 = 0;
        boolean z10 = z6 && i10 != -1;
        if (z10 && i10 != 1) {
            i12 = 1;
        }
        a3 a3Var = this.playbackInfo;
        if (a3Var.playWhenReady == z10 && a3Var.playbackSuppressionReason == i12) {
            return;
        }
        this.pendingOperationAcks++;
        a3 a3VarD = a3Var.d(z10, i12);
        this.internalPlayer.N0(z10, i12);
        g2(a3VarD, 0, i11, false, false, 5, -9223372036854775807L, -1, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int g1(boolean z6, int i10) {
        return (!z6 || i10 == 1) ? 1 : 2;
    }

    private void g2(final a3 a3Var, final int i10, final int i11, boolean z6, boolean z10, final int i12, long j6, int i13, boolean z11) {
        a3 a3Var2 = this.playbackInfo;
        this.playbackInfo = a3Var;
        boolean z12 = !a3Var2.timeline.equals(a3Var.timeline);
        Pair<Boolean, Integer> pairB1 = b1(a3Var, a3Var2, z10, i12, z12, z11);
        boolean zBooleanValue = ((Boolean) pairB1.first).booleanValue();
        final int iIntValue = ((Integer) pairB1.second).intValue();
        n2 n2VarU0 = this.mediaMetadata;
        final i2 i2Var = null;
        if (zBooleanValue) {
            if (!a3Var.timeline.u()) {
                i2Var = a3Var.timeline.r(a3Var.timeline.l(a3Var.periodId.periodUid, this.period).windowIndex, this.window).mediaItem;
            }
            this.staticAndDynamicMediaMetadata = n2.EMPTY;
        }
        if (zBooleanValue || !a3Var2.staticMetadata.equals(a3Var.staticMetadata)) {
            this.staticAndDynamicMediaMetadata = this.staticAndDynamicMediaMetadata.b().J(a3Var.staticMetadata).F();
            n2VarU0 = U0();
        }
        boolean z13 = !n2VarU0.equals(this.mediaMetadata);
        this.mediaMetadata = n2VarU0;
        boolean z14 = a3Var2.playWhenReady != a3Var.playWhenReady;
        boolean z15 = a3Var2.playbackState != a3Var.playbackState;
        if (z15 || z14) {
            i2();
        }
        boolean z16 = a3Var2.isLoading;
        boolean z17 = a3Var.isLoading;
        boolean z18 = z16 != z17;
        if (z18) {
            h2(z17);
        }
        if (z12) {
            this.listeners.i(0, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.h1
                @Override // com.google.android.exoplayer2.util.s.a
                public final void invoke(Object obj) {
                    k1.y1(a3Var, i10, (d3.d) obj);
                }
            });
        }
        if (z10) {
            final d3.e eVarJ1 = j1(i12, a3Var2, i13);
            final d3.e eVarI1 = i1(j6);
            this.listeners.i(11, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.p0
                @Override // com.google.android.exoplayer2.util.s.a
                public final void invoke(Object obj) {
                    k1.z1(i12, eVarJ1, eVarI1, (d3.d) obj);
                }
            });
        }
        if (zBooleanValue) {
            this.listeners.i(1, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.q0
                @Override // com.google.android.exoplayer2.util.s.a
                public final void invoke(Object obj) {
                    ((d3.d) obj).R(i2Var, iIntValue);
                }
            });
        }
        if (a3Var2.playbackError != a3Var.playbackError) {
            this.listeners.i(10, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.r0
                @Override // com.google.android.exoplayer2.util.s.a
                public final void invoke(Object obj) {
                    k1.B1(a3Var, (d3.d) obj);
                }
            });
            if (a3Var.playbackError != null) {
                this.listeners.i(10, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.s0
                    @Override // com.google.android.exoplayer2.util.s.a
                    public final void invoke(Object obj) {
                        k1.C1(a3Var, (d3.d) obj);
                    }
                });
            }
        }
        com.google.android.exoplayer2.trackselection.c0 c0Var = a3Var2.trackSelectorResult;
        com.google.android.exoplayer2.trackselection.c0 c0Var2 = a3Var.trackSelectorResult;
        if (c0Var != c0Var2) {
            this.trackSelector.f(c0Var2.info);
            this.listeners.i(2, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.t0
                @Override // com.google.android.exoplayer2.util.s.a
                public final void invoke(Object obj) {
                    k1.D1(a3Var, (d3.d) obj);
                }
            });
        }
        if (z13) {
            final n2 n2Var = this.mediaMetadata;
            this.listeners.i(14, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.u0
                @Override // com.google.android.exoplayer2.util.s.a
                public final void invoke(Object obj) {
                    ((d3.d) obj).B(n2Var);
                }
            });
        }
        if (z18) {
            this.listeners.i(3, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.v0
                @Override // com.google.android.exoplayer2.util.s.a
                public final void invoke(Object obj) {
                    k1.F1(a3Var, (d3.d) obj);
                }
            });
        }
        if (z15 || z14) {
            this.listeners.i(-1, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.x0
                @Override // com.google.android.exoplayer2.util.s.a
                public final void invoke(Object obj) {
                    k1.G1(a3Var, (d3.d) obj);
                }
            });
        }
        if (z15) {
            this.listeners.i(4, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.y0
                @Override // com.google.android.exoplayer2.util.s.a
                public final void invoke(Object obj) {
                    k1.H1(a3Var, (d3.d) obj);
                }
            });
        }
        if (z14) {
            this.listeners.i(5, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.i1
                @Override // com.google.android.exoplayer2.util.s.a
                public final void invoke(Object obj) {
                    k1.I1(a3Var, i11, (d3.d) obj);
                }
            });
        }
        if (a3Var2.playbackSuppressionReason != a3Var.playbackSuppressionReason) {
            this.listeners.i(6, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.j1
                @Override // com.google.android.exoplayer2.util.s.a
                public final void invoke(Object obj) {
                    k1.J1(a3Var, (d3.d) obj);
                }
            });
        }
        if (n1(a3Var2) != n1(a3Var)) {
            this.listeners.i(7, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.m0
                @Override // com.google.android.exoplayer2.util.s.a
                public final void invoke(Object obj) {
                    k1.K1(a3Var, (d3.d) obj);
                }
            });
        }
        if (!a3Var2.playbackParameters.equals(a3Var.playbackParameters)) {
            this.listeners.i(12, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.n0
                @Override // com.google.android.exoplayer2.util.s.a
                public final void invoke(Object obj) {
                    k1.L1(a3Var, (d3.d) obj);
                }
            });
        }
        if (z6) {
            this.listeners.i(-1, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.o0
                @Override // com.google.android.exoplayer2.util.s.a
                public final void invoke(Object obj) {
                    ((d3.d) obj).onSeekProcessed();
                }
            });
        }
        e2();
        this.listeners.f();
        if (a3Var2.sleepingForOffload != a3Var.sleepingForOffload) {
            Iterator<s.a> it = this.audioOffloadListeners.iterator();
            while (it.hasNext()) {
                it.next().o(a3Var.sleepingForOffload);
            }
        }
    }

    @Override // com.google.android.exoplayer2.d3
    public Looper s() {
        return this.applicationLooper;
    }

    @RequiresApi
    private static final class b {
        @DoNotInline
        public static com.google.android.exoplayer2.analytics.t1 a(Context context, k1 k1Var, boolean z6) {
            com.google.android.exoplayer2.analytics.r1 r1VarA0 = com.google.android.exoplayer2.analytics.r1.A0(context);
            if (r1VarA0 == null) {
                com.google.android.exoplayer2.util.t.i(k1.TAG, "MediaMetricsService unavailable.");
                return new com.google.android.exoplayer2.analytics.t1(LogSessionId.LOG_SESSION_ID_NONE);
            }
            if (z6) {
                k1Var.R0(r1VarA0);
            }
            return new com.google.android.exoplayer2.analytics.t1(r1VarA0.H0());
        }
    }

    static {
        x1.a("goog.exo.exoplayer");
    }

    @SuppressLint({"HandlerLeak"})
    public k1(s.b bVar, @Nullable d3 d3Var) {
        com.google.android.exoplayer2.util.g gVar = new com.google.android.exoplayer2.util.g();
        this.constructorFinished = gVar;
        try {
            com.google.android.exoplayer2.util.t.f(TAG, "Init " + Integer.toHexString(System.identityHashCode(this)) + " [" + x1.VERSION_SLASHY + "] [" + com.google.android.exoplayer2.util.o0.DEVICE_DEBUG_INFO + "]");
            Context applicationContext = bVar.context.getApplicationContext();
            this.applicationContext = applicationContext;
            com.google.android.exoplayer2.analytics.a aVarApply = bVar.analyticsCollectorFunction.apply(bVar.clock);
            this.analyticsCollector = aVarApply;
            this.priorityTaskManager = bVar.priorityTaskManager;
            this.audioAttributes = bVar.audioAttributes;
            this.videoScalingMode = bVar.videoScalingMode;
            this.videoChangeFrameRateStrategy = bVar.videoChangeFrameRateStrategy;
            this.skipSilenceEnabled = bVar.skipSilenceEnabled;
            this.detachSurfaceTimeoutMs = bVar.detachSurfaceTimeoutMs;
            c cVar = new c();
            this.componentListener = cVar;
            d dVar = new d();
            this.frameMetadataListener = dVar;
            Handler handler = new Handler(bVar.looper);
            m3[] m3VarArrA = bVar.renderersFactorySupplier.get().a(handler, cVar, cVar, cVar, cVar);
            this.renderers = m3VarArrA;
            com.google.android.exoplayer2.util.a.g(m3VarArrA.length > 0);
            com.google.android.exoplayer2.trackselection.b0 b0Var = bVar.trackSelectorSupplier.get();
            this.trackSelector = b0Var;
            this.mediaSourceFactory = bVar.mediaSourceFactorySupplier.get();
            com.google.android.exoplayer2.upstream.e eVar = bVar.bandwidthMeterSupplier.get();
            this.bandwidthMeter = eVar;
            this.useLazyPreparation = bVar.useLazyPreparation;
            this.seekParameters = bVar.seekParameters;
            this.seekBackIncrementMs = bVar.seekBackIncrementMs;
            this.seekForwardIncrementMs = bVar.seekForwardIncrementMs;
            this.pauseAtEndOfMediaItems = bVar.pauseAtEndOfMediaItems;
            Looper looper = bVar.looper;
            this.applicationLooper = looper;
            com.google.android.exoplayer2.util.d dVar2 = bVar.clock;
            this.clock = dVar2;
            d3 d3Var2 = d3Var == null ? this : d3Var;
            this.wrappingPlayer = d3Var2;
            this.listeners = new com.google.android.exoplayer2.util.s<>(looper, dVar2, new com.google.android.exoplayer2.util.s.b() { // from class: com.google.android.exoplayer2.w0
                @Override // com.google.android.exoplayer2.util.s.b
                public final void a(Object obj, com.google.android.exoplayer2.util.m mVar) {
                    this.f1386a.p1((d3.d) obj, mVar);
                }
            });
            this.audioOffloadListeners = new CopyOnWriteArraySet<>();
            this.mediaSourceHolderSnapshots = new ArrayList();
            this.shuffleOrder = new com.google.android.exoplayer2.source.y0.a(0);
            com.google.android.exoplayer2.trackselection.c0 c0Var = new com.google.android.exoplayer2.trackselection.c0(new p3[m3VarArrA.length], new com.google.android.exoplayer2.trackselection.s[m3VarArrA.length], e4.EMPTY, null);
            this.emptyTrackSelectorResult = c0Var;
            this.period = new z3.b();
            d3.b bVarE = new d3.b.a().c(1, 2, 3, 13, 14, 15, 16, 17, 18, 19, 31, 20, 30, 21, 22, 23, 24, 25, 26, 27, 28).d(29, b0Var.e()).e();
            this.permanentAvailableCommands = bVarE;
            this.availableCommands = new d3.b.a().b(bVarE).a(4).a(10).e();
            this.playbackInfoUpdateHandler = dVar2.createHandler(looper, null);
            w1.f fVar = new w1.f() { // from class: com.google.android.exoplayer2.c1
                @Override // com.google.android.exoplayer2.w1.f
                public final void a(w1.e eVar2) {
                    this.f1191a.r1(eVar2);
                }
            };
            this.playbackInfoUpdateListener = fVar;
            this.playbackInfo = a3.j(c0Var);
            aVarApply.C(d3Var2, looper);
            int i10 = com.google.android.exoplayer2.util.o0.SDK_INT;
            w1 w1Var = new w1(m3VarArrA, b0Var, c0Var, bVar.loadControlSupplier.get(), eVar, this.repeatMode, this.shuffleModeEnabled, aVarApply, this.seekParameters, bVar.livePlaybackSpeedControl, bVar.releaseTimeoutMs, this.pauseAtEndOfMediaItems, looper, dVar2, fVar, i10 < 31 ? new com.google.android.exoplayer2.analytics.t1() : b.a(applicationContext, this, bVar.usePlatformDiagnostics));
            this.internalPlayer = w1Var;
            this.volume = 1.0f;
            this.repeatMode = 0;
            n2 n2Var = n2.EMPTY;
            this.mediaMetadata = n2Var;
            this.playlistMetadata = n2Var;
            this.staticAndDynamicMediaMetadata = n2Var;
            this.maskingWindowIndex = -1;
            if (i10 < 21) {
                this.audioSessionId = m1(0);
            } else {
                this.audioSessionId = com.google.android.exoplayer2.util.o0.C(applicationContext);
            }
            this.currentCueGroup = com.google.android.exoplayer2.text.f.EMPTY_TIME_ZERO;
            this.throwsWhenUsingWrongThread = true;
            F(aVarApply);
            eVar.c(new Handler(looper), aVarApply);
            S0(cVar);
            long j6 = bVar.foregroundModeTimeoutMs;
            if (j6 > 0) {
                w1Var.s(j6);
            }
            com.google.android.exoplayer2.b bVar2 = new com.google.android.exoplayer2.b(bVar.context, handler, cVar);
            this.audioBecomingNoisyManager = bVar2;
            bVar2.b(bVar.handleAudioBecomingNoisy);
            com.google.android.exoplayer2.d dVar3 = new com.google.android.exoplayer2.d(bVar.context, handler, cVar);
            this.audioFocusManager = dVar3;
            dVar3.m(bVar.handleAudioFocus ? this.audioAttributes : null);
            u3 u3Var = new u3(bVar.context, handler, cVar);
            this.streamVolumeManager = u3Var;
            u3Var.h(com.google.android.exoplayer2.util.o0.a0(this.audioAttributes.usage));
            f4 f4Var = new f4(bVar.context);
            this.wakeLockManager = f4Var;
            f4Var.a(bVar.wakeMode != 0);
            g4 g4Var = new g4(bVar.context);
            this.wifiLockManager = g4Var;
            g4Var.a(bVar.wakeMode == 2);
            this.deviceInfo = X0(u3Var);
            this.videoSize = com.google.android.exoplayer2.video.a0.UNKNOWN;
            this.surfaceSize = com.google.android.exoplayer2.util.g0.UNKNOWN;
            b0Var.i(this.audioAttributes);
            U1(1, 10, Integer.valueOf(this.audioSessionId));
            U1(2, 10, Integer.valueOf(this.audioSessionId));
            U1(1, 3, this.audioAttributes);
            U1(2, 4, Integer.valueOf(this.videoScalingMode));
            U1(2, 5, Integer.valueOf(this.videoChangeFrameRateStrategy));
            U1(1, 9, Boolean.valueOf(this.skipSilenceEnabled));
            U1(2, 7, dVar);
            U1(6, 8, dVar);
            gVar.e();
        } catch (Throwable th) {
            this.constructorFinished.e();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void B1(a3 a3Var, d3.d dVar) {
        dVar.E(a3Var.playbackError);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void C1(a3 a3Var, d3.d dVar) {
        dVar.F(a3Var.playbackError);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void D1(a3 a3Var, d3.d dVar) {
        dVar.N(a3Var.trackSelectorResult.tracks);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void F1(a3 a3Var, d3.d dVar) {
        dVar.onLoadingChanged(a3Var.isLoading);
        dVar.onIsLoadingChanged(a3Var.isLoading);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void G1(a3 a3Var, d3.d dVar) {
        dVar.onPlayerStateChanged(a3Var.playWhenReady, a3Var.playbackState);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void H1(a3 a3Var, d3.d dVar) {
        dVar.onPlaybackStateChanged(a3Var.playbackState);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void I1(a3 a3Var, int i10, d3.d dVar) {
        dVar.onPlayWhenReadyChanged(a3Var.playWhenReady, i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void J1(a3 a3Var, d3.d dVar) {
        dVar.onPlaybackSuppressionReasonChanged(a3Var.playbackSuppressionReason);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void L1(a3 a3Var, d3.d dVar) {
        dVar.o(a3Var.playbackParameters);
    }

    private a3 M1(a3 a3Var, z3 z3Var, @Nullable Pair<Object, Long> pair) {
        com.google.android.exoplayer2.util.a.a(z3Var.u() || pair != null);
        z3 z3Var2 = a3Var.timeline;
        a3 a3VarI = a3Var.i(z3Var);
        if (z3Var.u()) {
            com.google.android.exoplayer2.source.b0.b bVarK = a3.k();
            long jW0 = com.google.android.exoplayer2.util.o0.w0(this.maskingWindowPositionMs);
            a3 a3VarB = a3VarI.c(bVarK, jW0, jW0, jW0, 0L, com.google.android.exoplayer2.source.h1.EMPTY, this.emptyTrackSelectorResult, com.google.common.collect.a0.x()).b(bVarK);
            a3VarB.bufferedPositionUs = a3VarB.positionUs;
            return a3VarB;
        }
        Object obj = a3VarI.periodId.periodUid;
        boolean z6 = !obj.equals(((Pair) com.google.android.exoplayer2.util.o0.j(pair)).first);
        com.google.android.exoplayer2.source.b0.b bVar = z6 ? new com.google.android.exoplayer2.source.b0.b(pair.first) : a3VarI.periodId;
        long jLongValue = ((Long) pair.second).longValue();
        long jW1 = com.google.android.exoplayer2.util.o0.w0(getContentPosition());
        if (!z3Var2.u()) {
            jW1 -= z3Var2.l(obj, this.period).q();
        }
        if (z6 || jLongValue < jW1) {
            com.google.android.exoplayer2.util.a.g(!bVar.b());
            a3 a3VarB2 = a3VarI.c(bVar, jLongValue, jLongValue, jLongValue, 0L, z6 ? com.google.android.exoplayer2.source.h1.EMPTY : a3VarI.trackGroups, z6 ? this.emptyTrackSelectorResult : a3VarI.trackSelectorResult, z6 ? com.google.common.collect.a0.x() : a3VarI.staticMetadata).b(bVar);
            a3VarB2.bufferedPositionUs = jLongValue;
            return a3VarB2;
        }
        if (jLongValue == jW1) {
            int iF = z3Var.f(a3VarI.loadingMediaPeriodId.periodUid);
            if (iF == -1 || z3Var.j(iF, this.period).windowIndex != z3Var.l(bVar.periodUid, this.period).windowIndex) {
                z3Var.l(bVar.periodUid, this.period);
                long jE = bVar.b() ? this.period.e(bVar.adGroupIndex, bVar.adIndexInAdGroup) : this.period.durationUs;
                a3VarI = a3VarI.c(bVar, a3VarI.positionUs, a3VarI.positionUs, a3VarI.discontinuityStartPositionUs, jE - a3VarI.positionUs, a3VarI.trackGroups, a3VarI.trackSelectorResult, a3VarI.staticMetadata).b(bVar);
                a3VarI.bufferedPositionUs = jE;
            }
        } else {
            com.google.android.exoplayer2.util.a.g(!bVar.b());
            long jMax = Math.max(0L, a3VarI.totalBufferedDurationUs - (jLongValue - jW1));
            long j6 = a3VarI.bufferedPositionUs;
            if (a3VarI.loadingMediaPeriodId.equals(a3VarI.periodId)) {
                j6 = jLongValue + jMax;
            }
            a3VarI = a3VarI.c(bVar, jLongValue, jLongValue, jLongValue, jMax, a3VarI.trackGroups, a3VarI.trackSelectorResult, a3VarI.staticMetadata);
            a3VarI.bufferedPositionUs = j6;
        }
        return a3VarI;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O1(final int i10, final int i11) {
        if (i10 == this.surfaceSize.b() && i11 == this.surfaceSize.a()) {
            return;
        }
        this.surfaceSize = new com.google.android.exoplayer2.util.g0(i10, i11);
        this.listeners.l(24, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.l0
            @Override // com.google.android.exoplayer2.util.s.a
            public final void invoke(Object obj) {
                ((d3.d) obj).onSurfaceSizeChanged(i10, i11);
            }
        });
    }

    private long P1(z3 z3Var, com.google.android.exoplayer2.source.b0.b bVar, long j6) {
        z3Var.l(bVar.periodUid, this.period);
        return j6 + this.period.q();
    }

    private void R1(int i10, int i11) {
        for (int i12 = i11 - 1; i12 >= i10; i12--) {
            this.mediaSourceHolderSnapshots.remove(i12);
        }
        this.shuffleOrder = this.shuffleOrder.a(i10, i11);
    }

    private void S1() {
        if (this.sphericalGLSurfaceView != null) {
            a1(this.frameMetadataListener).n(10000).m(null).l();
            this.sphericalGLSurfaceView.i(this.componentListener);
            this.sphericalGLSurfaceView = null;
        }
        TextureView textureView = this.textureView;
        if (textureView != null) {
            if (textureView.getSurfaceTextureListener() != this.componentListener) {
                com.google.android.exoplayer2.util.t.i(TAG, "SurfaceTextureListener already unset or replaced.");
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

    private List<u2.c> T0(int i10, List<com.google.android.exoplayer2.source.b0> list) {
        ArrayList arrayList = new ArrayList();
        for (int i11 = 0; i11 < list.size(); i11++) {
            u2.c cVar = new u2.c(list.get(i11), this.useLazyPreparation);
            arrayList.add(cVar);
            this.mediaSourceHolderSnapshots.add(i11 + i10, new e(cVar.uid, cVar.mediaSource.T()));
        }
        this.shuffleOrder = this.shuffleOrder.cloneAndInsert(i10, arrayList.size());
        return arrayList;
    }

    private void U1(int i10, int i11, @Nullable Object obj) {
        for (m3 m3Var : this.renderers) {
            if (m3Var.getTrackType() == i10) {
                a1(m3Var).n(i11).m(obj).l();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void V1() {
        U1(1, 2, Float.valueOf(this.volume * this.audioFocusManager.g()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static o X0(u3 u3Var) {
        return new o(0, u3Var.d(), u3Var.c());
    }

    private z3 Y0() {
        return new i3(this.mediaSourceHolderSnapshots, this.shuffleOrder);
    }

    private void Y1(List<com.google.android.exoplayer2.source.b0> list, int i10, long j6, boolean z6) {
        int iE;
        long j10;
        int iE1 = e1();
        long currentPosition = getCurrentPosition();
        this.pendingOperationAcks++;
        if (!this.mediaSourceHolderSnapshots.isEmpty()) {
            R1(0, this.mediaSourceHolderSnapshots.size());
        }
        List<u2.c> listT0 = T0(0, list);
        z3 z3VarY0 = Y0();
        if (!z3VarY0.u() && i10 >= z3VarY0.t()) {
            throw new e2(z3VarY0, i10, j6);
        }
        if (z6) {
            j10 = -9223372036854775807L;
            iE = z3VarY0.e(this.shuffleModeEnabled);
        } else if (i10 == -1) {
            iE = iE1;
            j10 = currentPosition;
        } else {
            iE = i10;
            j10 = j6;
        }
        a3 a3VarM1 = M1(this.playbackInfo, z3VarY0, N1(z3VarY0, iE, j10));
        int i11 = a3VarM1.playbackState;
        if (iE != -1 && i11 != 1) {
            i11 = (z3VarY0.u() || iE >= z3VarY0.t()) ? 4 : 2;
        }
        a3 a3VarG = a3VarM1.g(i11);
        this.internalPlayer.K0(listT0, iE, com.google.android.exoplayer2.util.o0.w0(j10), this.shuffleOrder);
        g2(a3VarG, 0, 1, false, (this.playbackInfo.periodId.periodUid.equals(a3VarG.periodId.periodUid) || this.playbackInfo.timeline.u()) ? false : true, 4, d1(a3VarG), -1, false);
    }

    private List<com.google.android.exoplayer2.source.b0> Z0(List<i2> list) {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < list.size(); i10++) {
            arrayList.add(this.mediaSourceFactory.c(list.get(i10)));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a2(SurfaceTexture surfaceTexture) {
        Surface surface = new Surface(surfaceTexture);
        b2(surface);
        this.ownedSurface = surface;
    }

    private Pair<Boolean, Integer> b1(a3 a3Var, a3 a3Var2, boolean z6, int i10, boolean z10, boolean z11) {
        z3 z3Var = a3Var2.timeline;
        z3 z3Var2 = a3Var.timeline;
        if (z3Var2.u() && z3Var.u()) {
            return new Pair<>(Boolean.FALSE, -1);
        }
        int i11 = 3;
        if (z3Var2.u() != z3Var.u()) {
            return new Pair<>(Boolean.TRUE, 3);
        }
        if (z3Var.r(z3Var.l(a3Var2.periodId.periodUid, this.period).windowIndex, this.window).uid.equals(z3Var2.r(z3Var2.l(a3Var.periodId.periodUid, this.period).windowIndex, this.window).uid)) {
            if (z6 && i10 == 0 && a3Var2.periodId.windowSequenceNumber < a3Var.periodId.windowSequenceNumber) {
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

    /* JADX INFO: Access modifiers changed from: private */
    public void b2(@Nullable Object obj) {
        boolean z6;
        ArrayList arrayList = new ArrayList();
        m3[] m3VarArr = this.renderers;
        int length = m3VarArr.length;
        int i10 = 0;
        while (true) {
            z6 = true;
            if (i10 >= length) {
                break;
            }
            m3 m3Var = m3VarArr[i10];
            if (m3Var.getTrackType() == 2) {
                arrayList.add(a1(m3Var).n(1).m(obj).l());
            }
            i10++;
        }
        Object obj2 = this.videoOutput;
        if (obj2 == null || obj2 == obj) {
            z6 = false;
        } else {
            try {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((h3) it.next()).a(this.detachSurfaceTimeoutMs);
                }
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            } catch (TimeoutException unused2) {
            }
            z6 = false;
            Object obj3 = this.videoOutput;
            Surface surface = this.ownedSurface;
            if (obj3 == surface) {
                surface.release();
                this.ownedSurface = null;
            }
        }
        this.videoOutput = obj;
        if (z6) {
            d2(false, q.j(new y1(3), 1003));
        }
    }

    private long d1(a3 a3Var) {
        if (a3Var.timeline.u()) {
            return com.google.android.exoplayer2.util.o0.w0(this.maskingWindowPositionMs);
        }
        return a3Var.periodId.b() ? a3Var.positionUs : P1(a3Var.timeline, a3Var.periodId, a3Var.positionUs);
    }

    private int e1() {
        if (this.playbackInfo.timeline.u()) {
            return this.maskingWindowIndex;
        }
        a3 a3Var = this.playbackInfo;
        return a3Var.timeline.l(a3Var.periodId.periodUid, this.period).windowIndex;
    }

    private void e2() {
        d3.b bVar = this.availableCommands;
        d3.b bVarE = com.google.android.exoplayer2.util.o0.E(this.wrappingPlayer, this.permanentAvailableCommands);
        this.availableCommands = bVarE;
        if (bVarE.equals(bVar)) {
            return;
        }
        this.listeners.i(13, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.b1
            @Override // com.google.android.exoplayer2.util.s.a
            public final void invoke(Object obj) {
                this.f1187a.x1((d3.d) obj);
            }
        });
    }

    private void h2(boolean z6) {
        com.google.android.exoplayer2.util.e0 e0Var = this.priorityTaskManager;
        if (e0Var != null) {
            if (z6 && !this.isPriorityTaskManagerRegistered) {
                e0Var.a(0);
                this.isPriorityTaskManagerRegistered = true;
            } else {
                if (z6 || !this.isPriorityTaskManagerRegistered) {
                    return;
                }
                e0Var.b(0);
                this.isPriorityTaskManagerRegistered = false;
            }
        }
    }

    private d3.e j1(int i10, a3 a3Var, int i11) {
        int i12;
        Object obj;
        i2 i2Var;
        Object obj2;
        int i13;
        long jK1;
        long jK2;
        z3.b bVar = new z3.b();
        if (a3Var.timeline.u()) {
            i12 = i11;
            obj = null;
            i2Var = null;
            obj2 = null;
            i13 = -1;
        } else {
            Object obj3 = a3Var.periodId.periodUid;
            a3Var.timeline.l(obj3, bVar);
            int i14 = bVar.windowIndex;
            int iF = a3Var.timeline.f(obj3);
            Object obj4 = a3Var.timeline.r(i14, this.window).uid;
            i2Var = this.window.mediaItem;
            obj2 = obj3;
            i13 = iF;
            obj = obj4;
            i12 = i14;
        }
        if (i10 == 0) {
            if (a3Var.periodId.b()) {
                com.google.android.exoplayer2.source.b0.b bVar2 = a3Var.periodId;
                jK1 = bVar.e(bVar2.adGroupIndex, bVar2.adIndexInAdGroup);
                jK2 = k1(a3Var);
            } else {
                jK1 = a3Var.periodId.nextAdGroupIndex != -1 ? k1(this.playbackInfo) : bVar.positionInWindowUs + bVar.durationUs;
                jK2 = jK1;
            }
        } else if (a3Var.periodId.b()) {
            jK1 = a3Var.positionUs;
            jK2 = k1(a3Var);
        } else {
            jK1 = bVar.positionInWindowUs + a3Var.positionUs;
            jK2 = jK1;
        }
        long jP0 = com.google.android.exoplayer2.util.o0.P0(jK1);
        long jP1 = com.google.android.exoplayer2.util.o0.P0(jK2);
        com.google.android.exoplayer2.source.b0.b bVar3 = a3Var.periodId;
        return new d3.e(obj, i12, i2Var, obj2, i13, jP0, jP1, bVar3.adGroupIndex, bVar3.adIndexInAdGroup);
    }

    private void j2() {
        this.constructorFinished.b();
        if (Thread.currentThread() != s().getThread()) {
            String strZ = com.google.android.exoplayer2.util.o0.z("Player is accessed on the wrong thread.\nCurrent thread: '%s'\nExpected thread: '%s'\nSee https://exoplayer.dev/issues/player-accessed-on-wrong-thread", Thread.currentThread().getName(), s().getThread().getName());
            if (this.throwsWhenUsingWrongThread) {
                throw new IllegalStateException(strZ);
            }
            com.google.android.exoplayer2.util.t.j(TAG, strZ, this.hasNotifiedFullWrongThreadWarning ? null : new IllegalStateException());
            this.hasNotifiedFullWrongThreadWarning = true;
        }
    }

    private static long k1(a3 a3Var) {
        z3.d dVar = new z3.d();
        z3.b bVar = new z3.b();
        a3Var.timeline.l(a3Var.periodId.periodUid, bVar);
        return a3Var.requestedContentPositionUs == -9223372036854775807L ? a3Var.timeline.r(bVar.windowIndex, dVar).f() : bVar.q() + a3Var.requestedContentPositionUs;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: l1, reason: merged with bridge method [inline-methods] */
    public void q1(w1.e eVar) {
        long j6;
        boolean z6;
        long jP1;
        int i10 = this.pendingOperationAcks - eVar.operationAcks;
        this.pendingOperationAcks = i10;
        boolean z10 = true;
        if (eVar.positionDiscontinuity) {
            this.pendingDiscontinuityReason = eVar.discontinuityReason;
            this.pendingDiscontinuity = true;
        }
        if (eVar.hasPlayWhenReadyChangeReason) {
            this.pendingPlayWhenReadyChangeReason = eVar.playWhenReadyChangeReason;
        }
        if (i10 == 0) {
            z3 z3Var = eVar.playbackInfo.timeline;
            if (!this.playbackInfo.timeline.u() && z3Var.u()) {
                this.maskingWindowIndex = -1;
                this.maskingWindowPositionMs = 0L;
                this.maskingPeriodIndex = 0;
            }
            if (!z3Var.u()) {
                List<z3> listK = ((i3) z3Var).K();
                com.google.android.exoplayer2.util.a.g(listK.size() == this.mediaSourceHolderSnapshots.size());
                for (int i11 = 0; i11 < listK.size(); i11++) {
                    this.mediaSourceHolderSnapshots.get(i11).timeline = listK.get(i11);
                }
            }
            if (this.pendingDiscontinuity) {
                if (eVar.playbackInfo.periodId.equals(this.playbackInfo.periodId) && eVar.playbackInfo.discontinuityStartPositionUs == this.playbackInfo.positionUs) {
                    z10 = false;
                }
                if (z10) {
                    if (z3Var.u() || eVar.playbackInfo.periodId.b()) {
                        jP1 = eVar.playbackInfo.discontinuityStartPositionUs;
                    } else {
                        a3 a3Var = eVar.playbackInfo;
                        jP1 = P1(z3Var, a3Var.periodId, a3Var.discontinuityStartPositionUs);
                    }
                    j6 = jP1;
                } else {
                    j6 = -9223372036854775807L;
                }
                z6 = z10;
            } else {
                j6 = -9223372036854775807L;
                z6 = false;
            }
            this.pendingDiscontinuity = false;
            g2(eVar.playbackInfo, 1, this.pendingPlayWhenReadyChangeReason, false, z6, this.pendingDiscontinuityReason, j6, -1, false);
        }
    }

    private int m1(int i10) {
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

    private static boolean n1(a3 a3Var) {
        return a3Var.playbackState == 3 && a3Var.playWhenReady && a3Var.playbackSuppressionReason == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void p1(d3.d dVar, com.google.android.exoplayer2.util.m mVar) {
        dVar.P(this.wrappingPlayer, new d3.c(mVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void r1(final w1.e eVar) {
        this.playbackInfoUpdateHandler.post(new Runnable() { // from class: com.google.android.exoplayer2.z0
            @Override // java.lang.Runnable
            public final void run() {
                this.f1391a.q1(eVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void s1(d3.d dVar) {
        dVar.F(q.j(new y1(1), 1003));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void x1(d3.d dVar) {
        dVar.H(this.availableCommands);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void y1(a3 a3Var, int i10, d3.d dVar) {
        dVar.z(a3Var.timeline, i10);
    }

    @Override // com.google.android.exoplayer2.d3
    public void F(d3.d dVar) {
        this.listeners.c((d3.d) com.google.android.exoplayer2.util.a.e(dVar));
    }

    public void R0(com.google.android.exoplayer2.analytics.c cVar) {
        this.analyticsCollector.D((com.google.android.exoplayer2.analytics.c) com.google.android.exoplayer2.util.a.e(cVar));
    }

    public void S0(s.a aVar) {
        this.audioOffloadListeners.add(aVar);
    }

    @Override // com.google.android.exoplayer2.d3
    public void release() {
        AudioTrack audioTrack;
        com.google.android.exoplayer2.util.t.f(TAG, "Release " + Integer.toHexString(System.identityHashCode(this)) + " [" + x1.VERSION_SLASHY + "] [" + com.google.android.exoplayer2.util.o0.DEVICE_DEBUG_INFO + "] [" + x1.b() + "]");
        j2();
        if (com.google.android.exoplayer2.util.o0.SDK_INT < 21 && (audioTrack = this.keepSessionIdAudioTrack) != null) {
            audioTrack.release();
            this.keepSessionIdAudioTrack = null;
        }
        this.audioBecomingNoisyManager.b(false);
        this.streamVolumeManager.g();
        this.wakeLockManager.b(false);
        this.wifiLockManager.b(false);
        this.audioFocusManager.i();
        if (!this.internalPlayer.i0()) {
            this.listeners.l(10, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.e1
                @Override // com.google.android.exoplayer2.util.s.a
                public final void invoke(Object obj) {
                    k1.s1((d3.d) obj);
                }
            });
        }
        this.listeners.j();
        this.playbackInfoUpdateHandler.removeCallbacksAndMessages(null);
        this.bandwidthMeter.f(this.analyticsCollector);
        a3 a3VarG = this.playbackInfo.g(1);
        this.playbackInfo = a3VarG;
        a3 a3VarB = a3VarG.b(a3VarG.periodId);
        this.playbackInfo = a3VarB;
        a3VarB.bufferedPositionUs = a3VarB.positionUs;
        this.playbackInfo.totalBufferedDurationUs = 0L;
        this.analyticsCollector.release();
        this.trackSelector.g();
        S1();
        Surface surface = this.ownedSurface;
        if (surface != null) {
            surface.release();
            this.ownedSurface = null;
        }
        if (this.isPriorityTaskManagerRegistered) {
            ((com.google.android.exoplayer2.util.e0) com.google.android.exoplayer2.util.a.e(this.priorityTaskManager)).b(0);
            this.isPriorityTaskManagerRegistered = false;
        }
        this.currentCueGroup = com.google.android.exoplayer2.text.f.EMPTY_TIME_ZERO;
        this.playerReleased = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void K1(a3 a3Var, d3.d dVar) {
        dVar.onIsPlayingChanged(n1(a3Var));
    }

    @Nullable
    private Pair<Object, Long> N1(z3 z3Var, int i10, long j6) {
        if (z3Var.u()) {
            this.maskingWindowIndex = i10;
            if (j6 == -9223372036854775807L) {
                j6 = 0;
            }
            this.maskingWindowPositionMs = j6;
            this.maskingPeriodIndex = 0;
            return null;
        }
        if (i10 == -1 || i10 >= z3Var.t()) {
            i10 = z3Var.e(this.shuffleModeEnabled);
            j6 = z3Var.r(i10, this.window).e();
        }
        return z3Var.n(this.window, this.period, i10, com.google.android.exoplayer2.util.o0.w0(j6));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public n2 U0() {
        z3 currentTimeline = getCurrentTimeline();
        if (currentTimeline.u()) {
            return this.staticAndDynamicMediaMetadata;
        }
        return this.staticAndDynamicMediaMetadata.b().H(currentTimeline.r(x(), this.window).mediaItem.mediaMetadata).F();
    }

    private h3 a1(h3.b bVar) {
        int iE1 = e1();
        w1 w1Var = this.internalPlayer;
        z3 z3Var = this.playbackInfo.timeline;
        if (iE1 == -1) {
            iE1 = 0;
        }
        return new h3(w1Var, bVar, z3Var, iE1, this.clock, w1Var.z());
    }

    @Nullable
    private Pair<Object, Long> f1(z3 z3Var, z3 z3Var2) {
        boolean z6;
        long contentPosition = getContentPosition();
        int iE1 = -1;
        if (!z3Var.u() && !z3Var2.u()) {
            Pair<Object, Long> pairN = z3Var.n(this.window, this.period, x(), com.google.android.exoplayer2.util.o0.w0(contentPosition));
            Object obj = ((Pair) com.google.android.exoplayer2.util.o0.j(pairN)).first;
            if (z3Var2.f(obj) != -1) {
                return pairN;
            }
            Object objW0 = w1.w0(this.window, this.period, this.repeatMode, this.shuffleModeEnabled, obj, z3Var, z3Var2);
            if (objW0 != null) {
                z3Var2.l(objW0, this.period);
                int i10 = this.period.windowIndex;
                return N1(z3Var2, i10, z3Var2.r(i10, this.window).e());
            }
            return N1(z3Var2, -1, -9223372036854775807L);
        }
        if (!z3Var.u() && z3Var2.u()) {
            z6 = true;
        } else {
            z6 = false;
        }
        if (!z6) {
            iE1 = e1();
        }
        if (z6) {
            contentPosition = -9223372036854775807L;
        }
        return N1(z3Var2, iE1, contentPosition);
    }

    private d3.e i1(long j6) {
        i2 i2Var;
        Object obj;
        int i10;
        Object obj2;
        long jP0;
        int iX = x();
        if (!this.playbackInfo.timeline.u()) {
            a3 a3Var = this.playbackInfo;
            Object obj3 = a3Var.periodId.periodUid;
            a3Var.timeline.l(obj3, this.period);
            int iF = this.playbackInfo.timeline.f(obj3);
            i10 = iF;
            obj = obj3;
            obj2 = this.playbackInfo.timeline.r(iX, this.window).uid;
            i2Var = this.window.mediaItem;
        } else {
            i2Var = null;
            obj = null;
            i10 = -1;
            obj2 = null;
        }
        long jP1 = com.google.android.exoplayer2.util.o0.P0(j6);
        if (this.playbackInfo.periodId.b()) {
            jP0 = com.google.android.exoplayer2.util.o0.P0(k1(this.playbackInfo));
        } else {
            jP0 = jP1;
        }
        com.google.android.exoplayer2.source.b0.b bVar = this.playbackInfo.periodId;
        return new d3.e(obj2, iX, i2Var, obj, i10, jP1, jP0, bVar.adGroupIndex, bVar.adIndexInAdGroup);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i2() {
        int playbackState = getPlaybackState();
        boolean z6 = true;
        if (playbackState != 1) {
            if (playbackState != 2 && playbackState != 3) {
                if (playbackState != 4) {
                    throw new IllegalStateException();
                }
            } else {
                boolean zC1 = c1();
                f4 f4Var = this.wakeLockManager;
                if (!getPlayWhenReady() || zC1) {
                    z6 = false;
                }
                f4Var.b(z6);
                this.wifiLockManager.b(getPlayWhenReady());
                return;
            }
        }
        this.wakeLockManager.b(false);
        this.wifiLockManager.b(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void z1(int i10, d3.e eVar, d3.e eVar2, d3.d dVar) {
        dVar.onPositionDiscontinuity(i10);
        dVar.y(eVar, eVar2, i10);
    }

    @Override // com.google.android.exoplayer2.d3
    public long A() {
        j2();
        return this.seekBackIncrementMs;
    }

    @Override // com.google.android.exoplayer2.d3
    public void B(d3.d dVar) {
        com.google.android.exoplayer2.util.a.e(dVar);
        this.listeners.k(dVar);
    }

    @Override // com.google.android.exoplayer2.d3
    public void C(List<i2> list, boolean z6) {
        j2();
        X1(Z0(list), z6);
    }

    @Override // com.google.android.exoplayer2.d3
    public void D(final com.google.android.exoplayer2.trackselection.z zVar) {
        j2();
        if (this.trackSelector.e() && !zVar.equals(this.trackSelector.b())) {
            this.trackSelector.j(zVar);
            this.listeners.l(19, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.a1
                @Override // com.google.android.exoplayer2.util.s.a
                public final void invoke(Object obj) {
                    ((d3.d) obj).M(zVar);
                }
            });
        }
    }

    @Override // com.google.android.exoplayer2.e
    protected void K() {
        j2();
        T1(x(), -9223372036854775807L, true);
    }

    public void V0() {
        j2();
        S1();
        b2(null);
        O1(0, 0);
    }

    public void W0(@Nullable SurfaceHolder surfaceHolder) {
        j2();
        if (surfaceHolder != null && surfaceHolder == this.surfaceHolder) {
            V0();
        }
    }

    public void W1(List<com.google.android.exoplayer2.source.b0> list) {
        j2();
        X1(list, true);
    }

    public void X1(List<com.google.android.exoplayer2.source.b0> list, boolean z6) {
        j2();
        Y1(list, -1, -9223372036854775807L, z6);
    }

    @Override // com.google.android.exoplayer2.s
    public void a(com.google.android.exoplayer2.source.b0 b0Var) {
        j2();
        W1(Collections.singletonList(b0Var));
    }

    @Override // com.google.android.exoplayer2.d3
    public void b(c3 c3Var) {
        j2();
        if (c3Var == null) {
            c3Var = c3.DEFAULT;
        }
        if (this.playbackInfo.playbackParameters.equals(c3Var)) {
            return;
        }
        a3 a3VarF = this.playbackInfo.f(c3Var);
        this.pendingOperationAcks++;
        this.internalPlayer.P0(c3Var);
        g2(a3VarF, 0, 1, false, false, 5, -9223372036854775807L, -1, false);
    }

    @Override // com.google.android.exoplayer2.d3
    public long c() {
        j2();
        return com.google.android.exoplayer2.util.o0.P0(this.playbackInfo.totalBufferedDurationUs);
    }

    public boolean c1() {
        j2();
        return this.playbackInfo.sleepingForOffload;
    }

    public void c2(@Nullable SurfaceHolder surfaceHolder) {
        j2();
        if (surfaceHolder == null) {
            V0();
            return;
        }
        S1();
        this.surfaceHolderSurfaceIsVideoOutput = true;
        this.surfaceHolder = surfaceHolder;
        surfaceHolder.addCallback(this.componentListener);
        Surface surface = surfaceHolder.getSurface();
        if (surface != null && surface.isValid()) {
            b2(surface);
            Rect surfaceFrame = surfaceHolder.getSurfaceFrame();
            O1(surfaceFrame.width(), surfaceFrame.height());
        } else {
            b2(null);
            O1(0, 0);
        }
    }

    @Override // com.google.android.exoplayer2.d3
    public void clearVideoSurfaceView(@Nullable SurfaceView surfaceView) {
        SurfaceHolder holder;
        j2();
        if (surfaceView == null) {
            holder = null;
        } else {
            holder = surfaceView.getHolder();
        }
        W0(holder);
    }

    @Override // com.google.android.exoplayer2.d3
    public void clearVideoTextureView(@Nullable TextureView textureView) {
        j2();
        if (textureView != null && textureView == this.textureView) {
            V0();
        }
    }

    @Override // com.google.android.exoplayer2.d3
    public e4 e() {
        j2();
        return this.playbackInfo.trackSelectorResult.tracks;
    }

    @Override // com.google.android.exoplayer2.d3
    public long getContentPosition() {
        j2();
        if (isPlayingAd()) {
            a3 a3Var = this.playbackInfo;
            a3Var.timeline.l(a3Var.periodId.periodUid, this.period);
            a3 a3Var2 = this.playbackInfo;
            if (a3Var2.requestedContentPositionUs == -9223372036854775807L) {
                return a3Var2.timeline.r(x(), this.window).e();
            }
            return this.period.p() + com.google.android.exoplayer2.util.o0.P0(this.playbackInfo.requestedContentPositionUs);
        }
        return getCurrentPosition();
    }

    @Override // com.google.android.exoplayer2.d3
    public int getCurrentAdGroupIndex() {
        j2();
        if (isPlayingAd()) {
            return this.playbackInfo.periodId.adGroupIndex;
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.d3
    public int getCurrentAdIndexInAdGroup() {
        j2();
        if (isPlayingAd()) {
            return this.playbackInfo.periodId.adIndexInAdGroup;
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.d3
    public int getCurrentPeriodIndex() {
        j2();
        if (this.playbackInfo.timeline.u()) {
            return this.maskingPeriodIndex;
        }
        a3 a3Var = this.playbackInfo;
        return a3Var.timeline.f(a3Var.periodId.periodUid);
    }

    @Override // com.google.android.exoplayer2.d3
    public long getCurrentPosition() {
        j2();
        return com.google.android.exoplayer2.util.o0.P0(d1(this.playbackInfo));
    }

    @Override // com.google.android.exoplayer2.d3
    public z3 getCurrentTimeline() {
        j2();
        return this.playbackInfo.timeline;
    }

    @Override // com.google.android.exoplayer2.d3
    public long getDuration() {
        j2();
        if (isPlayingAd()) {
            a3 a3Var = this.playbackInfo;
            com.google.android.exoplayer2.source.b0.b bVar = a3Var.periodId;
            a3Var.timeline.l(bVar.periodUid, this.period);
            return com.google.android.exoplayer2.util.o0.P0(this.period.e(bVar.adGroupIndex, bVar.adIndexInAdGroup));
        }
        return G();
    }

    @Override // com.google.android.exoplayer2.d3
    public boolean getPlayWhenReady() {
        j2();
        return this.playbackInfo.playWhenReady;
    }

    @Override // com.google.android.exoplayer2.d3
    public c3 getPlaybackParameters() {
        j2();
        return this.playbackInfo.playbackParameters;
    }

    @Override // com.google.android.exoplayer2.d3
    public int getPlaybackState() {
        j2();
        return this.playbackInfo.playbackState;
    }

    @Override // com.google.android.exoplayer2.d3
    public int getRepeatMode() {
        j2();
        return this.repeatMode;
    }

    @Override // com.google.android.exoplayer2.d3
    public boolean getShuffleModeEnabled() {
        j2();
        return this.shuffleModeEnabled;
    }

    @Override // com.google.android.exoplayer2.d3
    public com.google.android.exoplayer2.trackselection.z h() {
        j2();
        return this.trackSelector.b();
    }

    @Override // com.google.android.exoplayer2.d3
    @Nullable
    /* JADX INFO: renamed from: h1, reason: merged with bridge method [inline-methods] */
    public q d() {
        j2();
        return this.playbackInfo.playbackError;
    }

    @Override // com.google.android.exoplayer2.d3
    public long i() {
        j2();
        return 3000L;
    }

    @Override // com.google.android.exoplayer2.d3
    public boolean isPlayingAd() {
        j2();
        return this.playbackInfo.periodId.b();
    }

    @Override // com.google.android.exoplayer2.d3
    public long j() {
        j2();
        return this.seekForwardIncrementMs;
    }

    @Override // com.google.android.exoplayer2.d3
    public long l() {
        j2();
        if (this.playbackInfo.timeline.u()) {
            return this.maskingWindowPositionMs;
        }
        a3 a3Var = this.playbackInfo;
        if (a3Var.loadingMediaPeriodId.windowSequenceNumber != a3Var.periodId.windowSequenceNumber) {
            return a3Var.timeline.r(x(), this.window).g();
        }
        long j6 = a3Var.bufferedPositionUs;
        if (this.playbackInfo.loadingMediaPeriodId.b()) {
            a3 a3Var2 = this.playbackInfo;
            z3.b bVarL = a3Var2.timeline.l(a3Var2.loadingMediaPeriodId.periodUid, this.period);
            long jI = bVarL.i(this.playbackInfo.loadingMediaPeriodId.adGroupIndex);
            if (jI == Long.MIN_VALUE) {
                j6 = bVarL.durationUs;
            } else {
                j6 = jI;
            }
        }
        a3 a3Var3 = this.playbackInfo;
        return com.google.android.exoplayer2.util.o0.P0(P1(a3Var3.timeline, a3Var3.loadingMediaPeriodId, j6));
    }

    @Override // com.google.android.exoplayer2.d3
    public com.google.android.exoplayer2.text.f p() {
        j2();
        return this.currentCueGroup;
    }

    @Override // com.google.android.exoplayer2.d3
    public void prepare() {
        j2();
        boolean playWhenReady = getPlayWhenReady();
        int i10 = 2;
        int iP = this.audioFocusManager.p(playWhenReady, 2);
        f2(playWhenReady, iP, g1(playWhenReady, iP));
        a3 a3Var = this.playbackInfo;
        if (a3Var.playbackState != 1) {
            return;
        }
        a3 a3VarE = a3Var.e(null);
        if (a3VarE.timeline.u()) {
            i10 = 4;
        }
        a3 a3VarG = a3VarE.g(i10);
        this.pendingOperationAcks++;
        this.internalPlayer.g0();
        g2(a3VarG, 1, 1, false, false, 5, -9223372036854775807L, -1, false);
    }

    @Override // com.google.android.exoplayer2.d3
    public int r() {
        j2();
        return this.playbackInfo.playbackSuppressionReason;
    }

    @Override // com.google.android.exoplayer2.d3
    public void seekTo(int i10, long j6) {
        j2();
        T1(i10, j6, false);
    }

    @Override // com.google.android.exoplayer2.d3
    public void setPlayWhenReady(boolean z6) {
        j2();
        int iP = this.audioFocusManager.p(z6, getPlaybackState());
        f2(z6, iP, g1(z6, iP));
    }

    @Override // com.google.android.exoplayer2.d3
    public void setRepeatMode(final int i10) {
        j2();
        if (this.repeatMode != i10) {
            this.repeatMode = i10;
            this.internalPlayer.R0(i10);
            this.listeners.i(8, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.g1
                @Override // com.google.android.exoplayer2.util.s.a
                public final void invoke(Object obj) {
                    ((d3.d) obj).onRepeatModeChanged(i10);
                }
            });
            e2();
            this.listeners.f();
        }
    }

    @Override // com.google.android.exoplayer2.d3
    public void setShuffleModeEnabled(final boolean z6) {
        j2();
        if (this.shuffleModeEnabled != z6) {
            this.shuffleModeEnabled = z6;
            this.internalPlayer.U0(z6);
            this.listeners.i(9, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.d1
                @Override // com.google.android.exoplayer2.util.s.a
                public final void invoke(Object obj) {
                    ((d3.d) obj).onShuffleModeEnabledChanged(z6);
                }
            });
            e2();
            this.listeners.f();
        }
    }

    @Override // com.google.android.exoplayer2.d3
    public void setVideoSurfaceView(@Nullable SurfaceView surfaceView) {
        SurfaceHolder holder;
        j2();
        if (surfaceView instanceof com.google.android.exoplayer2.video.j) {
            S1();
            b2(surfaceView);
            Z1(surfaceView.getHolder());
        } else {
            if (surfaceView instanceof com.google.android.exoplayer2.video.spherical.l) {
                S1();
                this.sphericalGLSurfaceView = (com.google.android.exoplayer2.video.spherical.l) surfaceView;
                a1(this.frameMetadataListener).n(10000).m(this.sphericalGLSurfaceView).l();
                this.sphericalGLSurfaceView.d(this.componentListener);
                b2(this.sphericalGLSurfaceView.getVideoSurface());
                Z1(surfaceView.getHolder());
                return;
            }
            if (surfaceView == null) {
                holder = null;
            } else {
                holder = surfaceView.getHolder();
            }
            c2(holder);
        }
    }

    @Override // com.google.android.exoplayer2.d3
    public void setVideoTextureView(@Nullable TextureView textureView) {
        SurfaceTexture surfaceTexture;
        j2();
        if (textureView == null) {
            V0();
            return;
        }
        S1();
        this.textureView = textureView;
        if (textureView.getSurfaceTextureListener() != null) {
            com.google.android.exoplayer2.util.t.i(TAG, "Replacing existing SurfaceTextureListener.");
        }
        textureView.setSurfaceTextureListener(this.componentListener);
        if (textureView.isAvailable()) {
            surfaceTexture = textureView.getSurfaceTexture();
        } else {
            surfaceTexture = null;
        }
        if (surfaceTexture == null) {
            b2(null);
            O1(0, 0);
        } else {
            a2(surfaceTexture);
            O1(textureView.getWidth(), textureView.getHeight());
        }
    }

    @Override // com.google.android.exoplayer2.d3
    public void setVolume(float f) {
        j2();
        final float fO = com.google.android.exoplayer2.util.o0.o(f, 0.0f, 1.0f);
        if (this.volume == fO) {
            return;
        }
        this.volume = fO;
        V1();
        this.listeners.l(22, new com.google.android.exoplayer2.util.s.a() { // from class: com.google.android.exoplayer2.f1
            @Override // com.google.android.exoplayer2.util.s.a
            public final void invoke(Object obj) {
                ((d3.d) obj).onVolumeChanged(fO);
            }
        });
    }

    @Override // com.google.android.exoplayer2.d3
    public d3.b u() {
        j2();
        return this.availableCommands;
    }

    @Override // com.google.android.exoplayer2.d3
    public com.google.android.exoplayer2.video.a0 v() {
        j2();
        return this.videoSize;
    }

    @Override // com.google.android.exoplayer2.d3
    public int x() {
        j2();
        int iE1 = e1();
        if (iE1 == -1) {
            return 0;
        }
        return iE1;
    }

    @Override // com.google.android.exoplayer2.d3
    public n2 z() {
        j2();
        return this.mediaMetadata;
    }
}
