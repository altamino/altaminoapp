package androidx.media3.exoplayer.analytics;

import android.annotation.SuppressLint;
import android.content.Context;
import android.media.DeniedByServerException;
import android.media.MediaCodec;
import android.media.MediaDrm;
import android.media.MediaDrmResetException;
import android.media.NotProvisionedException;
import android.media.metrics.LogSessionId;
import android.media.metrics.MediaMetricsManager;
import android.media.metrics.PlaybackMetrics;
import android.media.metrics.PlaybackSession;
import android.media.metrics.TrackChangeEvent;
import android.os.SystemClock;
import android.system.ErrnoException;
import android.system.OsConstants;
import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.C;
import androidx.media3.common.DeviceInfo;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.Format;
import androidx.media3.common.MediaItem;
import androidx.media3.common.MediaLibraryInfo;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.Metadata;
import androidx.media3.common.ParserException;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.Player;
import androidx.media3.common.Timeline;
import androidx.media3.common.TrackSelectionParameters;
import androidx.media3.common.Tracks;
import androidx.media3.common.VideoSize;
import androidx.media3.common.text.CueGroup;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.NetworkTypeObserver;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.FileDataSource;
import androidx.media3.datasource.HttpDataSource;
import androidx.media3.datasource.UdpDataSource;
import androidx.media3.exoplayer.DecoderCounters;
import androidx.media3.exoplayer.DecoderReuseEvaluation;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.audio.AudioSink;
import androidx.media3.exoplayer.drm.DefaultDrmSessionManager;
import androidx.media3.exoplayer.drm.DrmSession;
import androidx.media3.exoplayer.drm.UnsupportedDrmException;
import androidx.media3.exoplayer.mediacodec.MediaCodecDecoderException;
import androidx.media3.exoplayer.mediacodec.MediaCodecRenderer;
import androidx.media3.exoplayer.source.LoadEventInfo;
import androidx.media3.exoplayer.source.MediaLoadData;
import androidx.media3.exoplayer.source.MediaSource;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;

/* JADX INFO: loaded from: classes3.dex */
@RequiresApi
@UnstableApi
public final class MediaMetricsListener implements AnalyticsListener, PlaybackSessionManager.Listener {

    @Nullable
    private String activeSessionId;
    private int audioUnderruns;
    private final Context context;

    @Nullable
    private Format currentAudioFormat;

    @Nullable
    private Format currentTextFormat;

    @Nullable
    private Format currentVideoFormat;
    private int discontinuityReason;
    private int droppedFrames;
    private boolean hasFatalError;
    private int ioErrorType;
    private boolean isSeeking;

    @Nullable
    private PlaybackMetrics.Builder metricsBuilder;

    @Nullable
    private PendingFormatUpdate pendingAudioFormat;

    @Nullable
    private PlaybackException pendingPlayerError;

    @Nullable
    private PendingFormatUpdate pendingTextFormat;

    @Nullable
    private PendingFormatUpdate pendingVideoFormat;
    private final PlaybackSession playbackSession;
    private int playedFrames;
    private boolean reportedEventsForCurrentSession;
    private final PlaybackSessionManager sessionManager;
    private final Timeline.Window window = new Timeline.Window();
    private final Timeline.Period period = new Timeline.Period();
    private final HashMap<String, Long> bandwidthBytes = new HashMap<>();
    private final HashMap<String, Long> bandwidthTimeMs = new HashMap<>();
    private final long startTimeMs = SystemClock.elapsedRealtime();
    private int currentPlaybackState = 0;
    private int currentNetworkType = 0;

    private static int F0(DrmInitData drmInitData) {
        for (int i10 = 0; i10 < drmInitData.schemeDataCount; i10++) {
            UUID uuid = drmInitData.h(i10).uuid;
            if (uuid.equals(C.WIDEVINE_UUID)) {
                return 3;
            }
            if (uuid.equals(C.PLAYREADY_UUID)) {
                return 2;
            }
            if (uuid.equals(C.CLEARKEY_UUID)) {
                return 6;
            }
        }
        return 1;
    }

    private static int L0(int i10) {
        if (i10 == 1) {
            return 2;
        }
        if (i10 != 2) {
            return i10 != 3 ? 1 : 4;
        }
        return 3;
    }

    private void M0(AnalyticsListener.Events events) {
        for (int i10 = 0; i10 < events.d(); i10++) {
            int iB = events.b(i10);
            AnalyticsListener.EventTime eventTimeC = events.c(iB);
            if (iB == 0) {
                this.sessionManager.g(eventTimeC);
            } else if (iB == 11) {
                this.sessionManager.d(eventTimeC, this.discontinuityReason);
            } else {
                this.sessionManager.b(eventTimeC);
            }
        }
    }

    private void Q0(Player player, AnalyticsListener.Events events, long j6) {
        if (events.a(2)) {
            Tracks tracksE = player.e();
            boolean zD = tracksE.d(2);
            boolean zD2 = tracksE.d(1);
            boolean zD3 = tracksE.d(3);
            if (zD || zD2 || zD3) {
                if (!zD) {
                    V0(j6, null, 0);
                }
                if (!zD2) {
                    R0(j6, null, 0);
                }
                if (!zD3) {
                    T0(j6, null, 0);
                }
            }
        }
        if (A0(this.pendingVideoFormat)) {
            PendingFormatUpdate pendingFormatUpdate = this.pendingVideoFormat;
            Format format = pendingFormatUpdate.format;
            if (format.height != -1) {
                V0(j6, format, pendingFormatUpdate.selectionReason);
                this.pendingVideoFormat = null;
            }
        }
        if (A0(this.pendingAudioFormat)) {
            PendingFormatUpdate pendingFormatUpdate2 = this.pendingAudioFormat;
            R0(j6, pendingFormatUpdate2.format, pendingFormatUpdate2.selectionReason);
            this.pendingAudioFormat = null;
        }
        if (A0(this.pendingTextFormat)) {
            PendingFormatUpdate pendingFormatUpdate3 = this.pendingTextFormat;
            T0(j6, pendingFormatUpdate3.format, pendingFormatUpdate3.selectionReason);
            this.pendingTextFormat = null;
        }
    }

    private void S0(Player player, AnalyticsListener.Events events) {
        DrmInitData drmInitDataE0;
        if (events.a(0)) {
            AnalyticsListener.EventTime eventTimeC = events.c(0);
            if (this.metricsBuilder != null) {
                U0(eventTimeC.timeline, eventTimeC.mediaPeriodId);
            }
        }
        if (events.a(2) && this.metricsBuilder != null && (drmInitDataE0 = E0(player.e().b())) != null) {
            p2.a(Util.j(this.metricsBuilder)).setDrmType(F0(drmInitDataE0));
        }
        if (events.a(1011)) {
            this.audioUnderruns++;
        }
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void A(AnalyticsListener.EventTime eventTime, String str, long j6) {
        a.h0(this, eventTime, str, j6);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void B(AnalyticsListener.EventTime eventTime) {
        a.t(this, eventTime);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void C(AnalyticsListener.EventTime eventTime, Tracks tracks) {
        a.e0(this, eventTime, tracks);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void F(AnalyticsListener.EventTime eventTime, long j6) {
        a.X(this, eventTime, j6);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void G(AnalyticsListener.EventTime eventTime, long j6, int i10) {
        a.m0(this, eventTime, j6, i10);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void J(AnalyticsListener.EventTime eventTime, DeviceInfo deviceInfo) {
        a.p(this, eventTime, deviceInfo);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void K(AnalyticsListener.EventTime eventTime) {
        a.r(this, eventTime);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void L(AnalyticsListener.EventTime eventTime, Object obj, long j6) {
        a.U(this, eventTime, obj, j6);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void M(AnalyticsListener.EventTime eventTime, boolean z6) {
        a.A(this, eventTime, z6);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void N(AnalyticsListener.EventTime eventTime, int i10, boolean z6) {
        a.q(this, eventTime, i10, z6);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void O(AnalyticsListener.EventTime eventTime, Metadata metadata) {
        a.J(this, eventTime, metadata);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void P(AnalyticsListener.EventTime eventTime, List list) {
        a.o(this, eventTime, list);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void Q(AnalyticsListener.EventTime eventTime, boolean z6) {
        a.a0(this, eventTime, z6);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public void R(AnalyticsListener.EventTime eventTime, PlaybackException playbackException) {
        this.pendingPlayerError = playbackException;
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void S(AnalyticsListener.EventTime eventTime, long j6) {
        a.W(this, eventTime, j6);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void U(AnalyticsListener.EventTime eventTime, Format format) {
        a.n0(this, eventTime, format);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void V(AnalyticsListener.EventTime eventTime, MediaMetadata mediaMetadata) {
        a.I(this, eventTime, mediaMetadata);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void W(AnalyticsListener.EventTime eventTime, AudioAttributes audioAttributes) {
        a.a(this, eventTime, audioAttributes);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void X(AnalyticsListener.EventTime eventTime, int i10) {
        a.c0(this, eventTime, i10);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void Y(AnalyticsListener.EventTime eventTime, DecoderCounters decoderCounters) {
        a.f(this, eventTime, decoderCounters);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void Z(AnalyticsListener.EventTime eventTime) {
        a.Q(this, eventTime);
    }

    @Override // androidx.media3.exoplayer.analytics.PlaybackSessionManager.Listener
    public void a(AnalyticsListener.EventTime eventTime, String str, String str2) {
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public void a0(AnalyticsListener.EventTime eventTime, Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2, int i10) {
        if (i10 == 1) {
            this.isSeeking = true;
        }
        this.discontinuityReason = i10;
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void b(AnalyticsListener.EventTime eventTime, boolean z6) {
        a.B(this, eventTime, z6);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void b0(AnalyticsListener.EventTime eventTime, DecoderCounters decoderCounters) {
        a.l0(this, eventTime, decoderCounters);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void c(AnalyticsListener.EventTime eventTime, int i10) {
        a.T(this, eventTime, i10);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void c0(AnalyticsListener.EventTime eventTime, Exception exc) {
        a.k(this, eventTime, exc);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void d(AnalyticsListener.EventTime eventTime, boolean z6, int i10) {
        a.K(this, eventTime, z6, i10);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void d0(AnalyticsListener.EventTime eventTime, float f) {
        a.q0(this, eventTime, f);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void e(AnalyticsListener.EventTime eventTime, Format format) {
        a.h(this, eventTime, format);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void f(AnalyticsListener.EventTime eventTime) {
        a.x(this, eventTime);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void f0(AnalyticsListener.EventTime eventTime, long j6) {
        a.j(this, eventTime, j6);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void g0(AnalyticsListener.EventTime eventTime, int i10, long j6, long j10) {
        a.l(this, eventTime, i10, j6, j10);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void h(AnalyticsListener.EventTime eventTime, Exception exc) {
        a.b(this, eventTime, exc);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void h0(AnalyticsListener.EventTime eventTime, String str, long j6) {
        a.c(this, eventTime, str, j6);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void i(AnalyticsListener.EventTime eventTime, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
        a.D(this, eventTime, loadEventInfo, mediaLoadData);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void i0(AnalyticsListener.EventTime eventTime, String str) {
        a.e(this, eventTime, str);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void j(AnalyticsListener.EventTime eventTime, String str, long j6, long j10) {
        a.d(this, eventTime, str, j6, j10);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void j0(AnalyticsListener.EventTime eventTime, String str) {
        a.j0(this, eventTime, str);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void k(AnalyticsListener.EventTime eventTime, TrackSelectionParameters trackSelectionParameters) {
        a.d0(this, eventTime, trackSelectionParameters);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void k0(AnalyticsListener.EventTime eventTime) {
        a.s(this, eventTime);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void l(AnalyticsListener.EventTime eventTime, Exception exc) {
        a.w(this, eventTime, exc);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void l0(AnalyticsListener.EventTime eventTime, int i10, int i11, int i12, float f) {
        a.p0(this, eventTime, i10, i11, i12, f);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void m(AnalyticsListener.EventTime eventTime, MediaItem mediaItem, int i10) {
        a.H(this, eventTime, mediaItem, i10);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void m0(AnalyticsListener.EventTime eventTime) {
        a.u(this, eventTime);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void n(AnalyticsListener.EventTime eventTime, DecoderCounters decoderCounters) {
        a.g(this, eventTime, decoderCounters);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void n0(AnalyticsListener.EventTime eventTime, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
        a.E(this, eventTime, loadEventInfo, mediaLoadData);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void o(AnalyticsListener.EventTime eventTime, int i10, int i11) {
        a.b0(this, eventTime, i10, i11);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void o0(AnalyticsListener.EventTime eventTime, boolean z6, int i10) {
        a.R(this, eventTime, z6, i10);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void p(AnalyticsListener.EventTime eventTime, int i10) {
        a.v(this, eventTime, i10);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void p0(AnalyticsListener.EventTime eventTime, PlaybackException playbackException) {
        a.P(this, eventTime, playbackException);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void q(AnalyticsListener.EventTime eventTime, Player.Commands commands) {
        a.m(this, eventTime, commands);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void q0(AnalyticsListener.EventTime eventTime) {
        a.Y(this, eventTime);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void r(AnalyticsListener.EventTime eventTime, Exception exc) {
        a.g0(this, eventTime, exc);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void r0(AnalyticsListener.EventTime eventTime, long j6) {
        a.G(this, eventTime, j6);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void s(AnalyticsListener.EventTime eventTime, boolean z6) {
        a.Z(this, eventTime, z6);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void s0(AnalyticsListener.EventTime eventTime, int i10) {
        a.V(this, eventTime, i10);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void t(AnalyticsListener.EventTime eventTime, int i10) {
        a.M(this, eventTime, i10);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void t0(AnalyticsListener.EventTime eventTime, CueGroup cueGroup) {
        a.n(this, eventTime, cueGroup);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void u(AnalyticsListener.EventTime eventTime, Format format, DecoderReuseEvaluation decoderReuseEvaluation) {
        a.i(this, eventTime, format, decoderReuseEvaluation);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void u0(AnalyticsListener.EventTime eventTime, String str, long j6, long j10) {
        a.i0(this, eventTime, str, j6, j10);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void v(AnalyticsListener.EventTime eventTime, PlaybackParameters playbackParameters) {
        a.L(this, eventTime, playbackParameters);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void v0(AnalyticsListener.EventTime eventTime, MediaMetadata mediaMetadata) {
        a.S(this, eventTime, mediaMetadata);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void w(AnalyticsListener.EventTime eventTime, int i10) {
        a.N(this, eventTime, i10);
    }

    @Override // androidx.media3.exoplayer.analytics.PlaybackSessionManager.Listener
    public void w0(AnalyticsListener.EventTime eventTime, String str) {
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void x(AnalyticsListener.EventTime eventTime, MediaLoadData mediaLoadData) {
        a.f0(this, eventTime, mediaLoadData);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void x0(AnalyticsListener.EventTime eventTime, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
        a.C(this, eventTime, loadEventInfo, mediaLoadData);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void y(AnalyticsListener.EventTime eventTime, boolean z6) {
        a.F(this, eventTime, z6);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void z(AnalyticsListener.EventTime eventTime, int i10, long j6) {
        a.y(this, eventTime, i10, j6);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void z0(AnalyticsListener.EventTime eventTime, Format format, DecoderReuseEvaluation decoderReuseEvaluation) {
        a.o0(this, eventTime, format, decoderReuseEvaluation);
    }

    private static final class ErrorInfo {
        public final int errorCode;
        public final int subErrorCode;

        public ErrorInfo(int i10, int i11) {
            this.errorCode = i10;
            this.subErrorCode = i11;
        }
    }

    private static final class PendingFormatUpdate {
        public final Format format;
        public final int selectionReason;
        public final String sessionId;

        public PendingFormatUpdate(Format format, int i10, String str) {
            this.format = format;
            this.selectionReason = i10;
            this.sessionId = str;
        }
    }

    private boolean A0(@Nullable PendingFormatUpdate pendingFormatUpdate) {
        return pendingFormatUpdate != null && pendingFormatUpdate.sessionId.equals(this.sessionManager.a());
    }

    @Nullable
    public static MediaMetricsListener B0(Context context) {
        MediaMetricsManager mediaMetricsManagerA = o3.a(context.getSystemService("media_metrics"));
        if (mediaMetricsManagerA == null) {
            return null;
        }
        return new MediaMetricsListener(context, mediaMetricsManagerA.createPlaybackSession());
    }

    private void C0() {
        PlaybackMetrics.Builder builder = this.metricsBuilder;
        if (builder != null && this.reportedEventsForCurrentSession) {
            builder.setAudioUnderrunCount(this.audioUnderruns);
            this.metricsBuilder.setVideoFramesDropped(this.droppedFrames);
            this.metricsBuilder.setVideoFramesPlayed(this.playedFrames);
            Long l = this.bandwidthTimeMs.get(this.activeSessionId);
            this.metricsBuilder.setNetworkTransferDurationMillis(l == null ? 0L : l.longValue());
            Long l6 = this.bandwidthBytes.get(this.activeSessionId);
            this.metricsBuilder.setNetworkBytesRead(l6 == null ? 0L : l6.longValue());
            this.metricsBuilder.setStreamSource((l6 == null || l6.longValue() <= 0) ? 0 : 1);
            this.playbackSession.reportPlaybackMetrics(this.metricsBuilder.build());
        }
        this.metricsBuilder = null;
        this.activeSessionId = null;
        this.audioUnderruns = 0;
        this.droppedFrames = 0;
        this.playedFrames = 0;
        this.currentVideoFormat = null;
        this.currentAudioFormat = null;
        this.currentTextFormat = null;
        this.reportedEventsForCurrentSession = false;
    }

    private static ErrorInfo G0(PlaybackException playbackException, Context context, boolean z6) {
        int i10;
        boolean z10;
        if (playbackException.errorCode == 1001) {
            return new ErrorInfo(20, 0);
        }
        if (playbackException instanceof ExoPlaybackException) {
            ExoPlaybackException exoPlaybackException = (ExoPlaybackException) playbackException;
            z10 = exoPlaybackException.type == 1;
            i10 = exoPlaybackException.rendererFormatSupport;
        } else {
            i10 = 0;
            z10 = false;
        }
        Throwable th = (Throwable) Assertions.e(playbackException.getCause());
        if (!(th instanceof IOException)) {
            if (z10 && (i10 == 0 || i10 == 1)) {
                return new ErrorInfo(35, 0);
            }
            if (z10 && i10 == 3) {
                return new ErrorInfo(15, 0);
            }
            if (z10 && i10 == 2) {
                return new ErrorInfo(23, 0);
            }
            if (th instanceof MediaCodecRenderer.DecoderInitializationException) {
                return new ErrorInfo(13, Util.Y(((MediaCodecRenderer.DecoderInitializationException) th).diagnosticInfo));
            }
            if (th instanceof MediaCodecDecoderException) {
                return new ErrorInfo(14, Util.Y(((MediaCodecDecoderException) th).diagnosticInfo));
            }
            if (th instanceof OutOfMemoryError) {
                return new ErrorInfo(14, 0);
            }
            if (th instanceof AudioSink.InitializationException) {
                return new ErrorInfo(17, ((AudioSink.InitializationException) th).audioTrackState);
            }
            if (th instanceof AudioSink.WriteException) {
                return new ErrorInfo(18, ((AudioSink.WriteException) th).errorCode);
            }
            if (Util.SDK_INT < 16 || !(th instanceof MediaCodec.CryptoException)) {
                return new ErrorInfo(22, 0);
            }
            int errorCode = ((MediaCodec.CryptoException) th).getErrorCode();
            return new ErrorInfo(D0(errorCode), errorCode);
        }
        if (th instanceof HttpDataSource.InvalidResponseCodeException) {
            return new ErrorInfo(5, ((HttpDataSource.InvalidResponseCodeException) th).responseCode);
        }
        if ((th instanceof HttpDataSource.InvalidContentTypeException) || (th instanceof ParserException)) {
            return new ErrorInfo(z6 ? 10 : 11, 0);
        }
        if ((th instanceof HttpDataSource.HttpDataSourceException) || (th instanceof UdpDataSource.UdpDataSourceException)) {
            if (NetworkTypeObserver.d(context).f() == 1) {
                return new ErrorInfo(3, 0);
            }
            Throwable cause = th.getCause();
            if (cause instanceof UnknownHostException) {
                return new ErrorInfo(6, 0);
            }
            if (cause instanceof SocketTimeoutException) {
                return new ErrorInfo(7, 0);
            }
            return ((th instanceof HttpDataSource.HttpDataSourceException) && ((HttpDataSource.HttpDataSourceException) th).type == 1) ? new ErrorInfo(4, 0) : new ErrorInfo(8, 0);
        }
        if (playbackException.errorCode == 1002) {
            return new ErrorInfo(21, 0);
        }
        if (!(th instanceof DrmSession.DrmSessionException)) {
            if (!(th instanceof FileDataSource.FileDataSourceException) || !(th.getCause() instanceof FileNotFoundException)) {
                return new ErrorInfo(9, 0);
            }
            Throwable cause2 = ((Throwable) Assertions.e(th.getCause())).getCause();
            return (Util.SDK_INT >= 21 && (cause2 instanceof ErrnoException) && ((ErrnoException) cause2).errno == OsConstants.EACCES) ? new ErrorInfo(32, 0) : new ErrorInfo(31, 0);
        }
        Throwable th2 = (Throwable) Assertions.e(th.getCause());
        int i11 = Util.SDK_INT;
        if (i11 >= 21 && (th2 instanceof MediaDrm.MediaDrmStateException)) {
            int iY = Util.Y(((MediaDrm.MediaDrmStateException) th2).getDiagnosticInfo());
            return new ErrorInfo(D0(iY), iY);
        }
        if (i11 >= 23 && (th2 instanceof MediaDrmResetException)) {
            return new ErrorInfo(27, 0);
        }
        if (i11 >= 18 && (th2 instanceof NotProvisionedException)) {
            return new ErrorInfo(24, 0);
        }
        if (i11 >= 18 && (th2 instanceof DeniedByServerException)) {
            return new ErrorInfo(29, 0);
        }
        if (th2 instanceof UnsupportedDrmException) {
            return new ErrorInfo(23, 0);
        }
        return th2 instanceof DefaultDrmSessionManager.MissingSchemeDataException ? new ErrorInfo(28, 0) : new ErrorInfo(30, 0);
    }

    private static Pair<String, String> H0(String str) {
        String[] strArrD1 = Util.d1(str, "-");
        return Pair.create(strArrD1[0], strArrD1.length >= 2 ? strArrD1[1] : null);
    }

    private static int K0(MediaItem mediaItem) {
        MediaItem.LocalConfiguration localConfiguration = mediaItem.localConfiguration;
        if (localConfiguration == null) {
            return 0;
        }
        int iX0 = Util.x0(localConfiguration.uri, localConfiguration.mimeType);
        if (iX0 == 0) {
            return 3;
        }
        if (iX0 != 1) {
            return iX0 != 2 ? 1 : 4;
        }
        return 5;
    }

    private void N0(long j6) {
        int iJ0 = J0(this.context);
        if (iJ0 != this.currentNetworkType) {
            this.currentNetworkType = iJ0;
            this.playbackSession.reportNetworkEvent(k3.a().setNetworkType(iJ0).setTimeSinceCreatedMillis(j6 - this.startTimeMs).build());
        }
    }

    private void O0(long j6) {
        PlaybackException playbackException = this.pendingPlayerError;
        if (playbackException == null) {
            return;
        }
        ErrorInfo errorInfoG0 = G0(playbackException, this.context, this.ioErrorType == 4);
        this.playbackSession.reportPlaybackErrorEvent(s1.a().setTimeSinceCreatedMillis(j6 - this.startTimeMs).setErrorCode(errorInfoG0.errorCode).setSubErrorCode(errorInfoG0.subErrorCode).setException(playbackException).build());
        this.reportedEventsForCurrentSession = true;
        this.pendingPlayerError = null;
    }

    private void R0(long j6, @Nullable Format format, int i10) {
        if (Util.c(this.currentAudioFormat, format)) {
            return;
        }
        if (this.currentAudioFormat == null && i10 == 0) {
            i10 = 1;
        }
        this.currentAudioFormat = format;
        W0(0, j6, format, i10);
    }

    private void T0(long j6, @Nullable Format format, int i10) {
        if (Util.c(this.currentTextFormat, format)) {
            return;
        }
        if (this.currentTextFormat == null && i10 == 0) {
            i10 = 1;
        }
        this.currentTextFormat = format;
        W0(2, j6, format, i10);
    }

    private void U0(Timeline timeline, @Nullable MediaSource.MediaPeriodId mediaPeriodId) {
        int iF;
        PlaybackMetrics.Builder builder = this.metricsBuilder;
        if (mediaPeriodId == null || (iF = timeline.f(mediaPeriodId.periodUid)) == -1) {
            return;
        }
        timeline.j(iF, this.period);
        timeline.r(this.period.windowIndex, this.window);
        builder.setStreamType(K0(this.window.mediaItem));
        Timeline.Window window = this.window;
        if (window.durationUs != -9223372036854775807L && !window.isPlaceholder && !window.isDynamic && !window.h()) {
            builder.setMediaDurationMillis(this.window.f());
        }
        builder.setPlaybackType(this.window.h() ? 2 : 1);
        this.reportedEventsForCurrentSession = true;
    }

    private void V0(long j6, @Nullable Format format, int i10) {
        if (Util.c(this.currentVideoFormat, format)) {
            return;
        }
        if (this.currentVideoFormat == null && i10 == 0) {
            i10 = 1;
        }
        this.currentVideoFormat = format;
        W0(1, j6, format, i10);
    }

    @Override // androidx.media3.exoplayer.analytics.PlaybackSessionManager.Listener
    public void D(AnalyticsListener.EventTime eventTime, String str, boolean z6) {
        MediaSource.MediaPeriodId mediaPeriodId = eventTime.mediaPeriodId;
        if ((mediaPeriodId == null || !mediaPeriodId.c()) && str.equals(this.activeSessionId)) {
            C0();
        }
        this.bandwidthTimeMs.remove(str);
        this.bandwidthBytes.remove(str);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public void E(AnalyticsListener.EventTime eventTime, VideoSize videoSize) {
        PendingFormatUpdate pendingFormatUpdate = this.pendingVideoFormat;
        if (pendingFormatUpdate != null) {
            Format format = pendingFormatUpdate.format;
            if (format.height == -1) {
                this.pendingVideoFormat = new PendingFormatUpdate(format.b().n0(videoSize.width).S(videoSize.height).G(), pendingFormatUpdate.selectionReason, pendingFormatUpdate.sessionId);
            }
        }
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public void H(AnalyticsListener.EventTime eventTime, MediaLoadData mediaLoadData) {
        if (eventTime.mediaPeriodId == null) {
            return;
        }
        PendingFormatUpdate pendingFormatUpdate = new PendingFormatUpdate((Format) Assertions.e(mediaLoadData.trackFormat), mediaLoadData.trackSelectionReason, this.sessionManager.e(eventTime.timeline, (MediaSource.MediaPeriodId) Assertions.e(eventTime.mediaPeriodId)));
        int i10 = mediaLoadData.trackType;
        if (i10 != 0) {
            if (i10 == 1) {
                this.pendingAudioFormat = pendingFormatUpdate;
                return;
            } else if (i10 != 2) {
                if (i10 != 3) {
                    return;
                }
                this.pendingTextFormat = pendingFormatUpdate;
                return;
            }
        }
        this.pendingVideoFormat = pendingFormatUpdate;
    }

    public LogSessionId I0() {
        return this.playbackSession.getSessionId();
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public void T(AnalyticsListener.EventTime eventTime, DecoderCounters decoderCounters) {
        this.droppedFrames += decoderCounters.droppedBufferCount;
        this.playedFrames += decoderCounters.renderedOutputBufferCount;
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public void e0(AnalyticsListener.EventTime eventTime, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, IOException iOException, boolean z6) {
        this.ioErrorType = mediaLoadData.dataType;
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public void g(AnalyticsListener.EventTime eventTime, int i10, long j6, long j10) {
        MediaSource.MediaPeriodId mediaPeriodId = eventTime.mediaPeriodId;
        if (mediaPeriodId != null) {
            String strE = this.sessionManager.e(eventTime.timeline, (MediaSource.MediaPeriodId) Assertions.e(mediaPeriodId));
            Long l = this.bandwidthBytes.get(strE);
            Long l6 = this.bandwidthTimeMs.get(strE);
            this.bandwidthBytes.put(strE, Long.valueOf((l == null ? 0L : l.longValue()) + j6));
            this.bandwidthTimeMs.put(strE, Long.valueOf((l6 != null ? l6.longValue() : 0L) + ((long) i10)));
        }
    }

    @Override // androidx.media3.exoplayer.analytics.PlaybackSessionManager.Listener
    public void y0(AnalyticsListener.EventTime eventTime, String str) {
        MediaSource.MediaPeriodId mediaPeriodId = eventTime.mediaPeriodId;
        if (mediaPeriodId == null || !mediaPeriodId.c()) {
            C0();
            this.activeSessionId = str;
            this.metricsBuilder = o2.a().setPlayerName(MediaLibraryInfo.TAG).setPlayerVersion(MediaLibraryInfo.VERSION);
            U0(eventTime.timeline, eventTime.mediaPeriodId);
        }
    }

    private MediaMetricsListener(Context context, PlaybackSession playbackSession) {
        this.context = context.getApplicationContext();
        this.playbackSession = playbackSession;
        DefaultPlaybackSessionManager defaultPlaybackSessionManager = new DefaultPlaybackSessionManager();
        this.sessionManager = defaultPlaybackSessionManager;
        defaultPlaybackSessionManager.c(this);
    }

    @SuppressLint({"SwitchIntDef"})
    private static int D0(int i10) {
        switch (Util.X(i10)) {
            case 6002:
                return 24;
            case 6003:
                return 28;
            case 6004:
                return 25;
            case 6005:
                return 26;
            default:
                return 27;
        }
    }

    @Nullable
    private static DrmInitData E0(com.google.common.collect.a0<Tracks.Group> a0Var) {
        DrmInitData drmInitData;
        com.google.common.collect.l1<Tracks.Group> it = a0Var.iterator();
        while (it.hasNext()) {
            Tracks.Group next = it.next();
            for (int i10 = 0; i10 < next.length; i10++) {
                if (next.i(i10) && (drmInitData = next.c(i10).drmInitData) != null) {
                    return drmInitData;
                }
            }
        }
        return null;
    }

    private static int J0(Context context) {
        switch (NetworkTypeObserver.d(context).f()) {
            case 0:
                return 0;
            case 1:
                return 9;
            case 2:
                return 2;
            case 3:
                return 4;
            case 4:
                return 5;
            case 5:
                return 6;
            case 6:
            case 8:
            default:
                return 1;
            case 7:
                return 3;
            case 9:
                return 8;
            case 10:
                return 7;
        }
    }

    private void P0(Player player, AnalyticsListener.Events events, long j6) {
        if (player.getPlaybackState() != 2) {
            this.isSeeking = false;
        }
        if (player.d() == null) {
            this.hasFatalError = false;
        } else if (events.a(10)) {
            this.hasFatalError = true;
        }
        int iX0 = X0(player);
        if (this.currentPlaybackState != iX0) {
            this.currentPlaybackState = iX0;
            this.reportedEventsForCurrentSession = true;
            this.playbackSession.reportPlaybackStateEvent(z2.a().setState(this.currentPlaybackState).setTimeSinceCreatedMillis(j6 - this.startTimeMs).build());
        }
    }

    private void W0(int i10, long j6, @Nullable Format format, int i11) {
        TrackChangeEvent.Builder timeSinceCreatedMillis = d2.a(i10).setTimeSinceCreatedMillis(j6 - this.startTimeMs);
        if (format != null) {
            timeSinceCreatedMillis.setTrackState(1);
            timeSinceCreatedMillis.setTrackChangeReason(L0(i11));
            String str = format.containerMimeType;
            if (str != null) {
                timeSinceCreatedMillis.setContainerMimeType(str);
            }
            String str2 = format.sampleMimeType;
            if (str2 != null) {
                timeSinceCreatedMillis.setSampleMimeType(str2);
            }
            String str3 = format.codecs;
            if (str3 != null) {
                timeSinceCreatedMillis.setCodecName(str3);
            }
            int i12 = format.bitrate;
            if (i12 != -1) {
                timeSinceCreatedMillis.setBitrate(i12);
            }
            int i13 = format.width;
            if (i13 != -1) {
                timeSinceCreatedMillis.setWidth(i13);
            }
            int i14 = format.height;
            if (i14 != -1) {
                timeSinceCreatedMillis.setHeight(i14);
            }
            int i15 = format.channelCount;
            if (i15 != -1) {
                timeSinceCreatedMillis.setChannelCount(i15);
            }
            int i16 = format.sampleRate;
            if (i16 != -1) {
                timeSinceCreatedMillis.setAudioSampleRate(i16);
            }
            String str4 = format.language;
            if (str4 != null) {
                Pair<String, String> pairH0 = H0(str4);
                timeSinceCreatedMillis.setLanguage((String) pairH0.first);
                Object obj = pairH0.second;
                if (obj != null) {
                    timeSinceCreatedMillis.setLanguageRegion((String) obj);
                }
            }
            float f = format.frameRate;
            if (f != -1.0f) {
                timeSinceCreatedMillis.setVideoFrameRate(f);
            }
        } else {
            timeSinceCreatedMillis.setTrackState(0);
        }
        this.reportedEventsForCurrentSession = true;
        this.playbackSession.reportTrackChangeEvent(timeSinceCreatedMillis.build());
    }

    private int X0(Player player) {
        int playbackState = player.getPlaybackState();
        if (this.isSeeking) {
            return 5;
        }
        if (this.hasFatalError) {
            return 13;
        }
        if (playbackState == 4) {
            return 11;
        }
        if (playbackState == 2) {
            int i10 = this.currentPlaybackState;
            if (i10 == 0 || i10 == 2) {
                return 2;
            }
            if (!player.getPlayWhenReady()) {
                return 7;
            }
            if (player.r() != 0) {
                return 10;
            }
            return 6;
        }
        if (playbackState == 3) {
            if (!player.getPlayWhenReady()) {
                return 4;
            }
            if (player.r() == 0) {
                return 3;
            }
            return 9;
        }
        if (playbackState == 1 && this.currentPlaybackState != 0) {
            return 12;
        }
        return this.currentPlaybackState;
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public void I(Player player, AnalyticsListener.Events events) {
        if (events.d() == 0) {
            return;
        }
        M0(events);
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        S0(player, events);
        O0(jElapsedRealtime);
        Q0(player, events, jElapsedRealtime);
        N0(jElapsedRealtime);
        P0(player, events, jElapsedRealtime);
        if (events.a(1028)) {
            this.sessionManager.h(events.c(1028));
        }
    }
}
