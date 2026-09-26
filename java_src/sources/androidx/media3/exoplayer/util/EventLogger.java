package androidx.media3.exoplayer.util;

import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.DeviceInfo;
import androidx.media3.common.Format;
import androidx.media3.common.MediaItem;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.Metadata;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.Player;
import androidx.media3.common.Timeline;
import androidx.media3.common.TrackSelectionParameters;
import androidx.media3.common.Tracks;
import androidx.media3.common.VideoSize;
import androidx.media3.common.text.CueGroup;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.DecoderCounters;
import androidx.media3.exoplayer.DecoderReuseEvaluation;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.media3.exoplayer.analytics.a;
import androidx.media3.exoplayer.source.LoadEventInfo;
import androidx.media3.exoplayer.source.MediaLoadData;
import androidx.media3.exoplayer.trackselection.MappingTrackSelector;
import com.google.common.collect.a0;
import java.io.IOException;
import java.text.NumberFormat;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes10.dex */
public class EventLogger implements AnalyticsListener {
    private static final String DEFAULT_TAG = "EventLogger";
    private static final int MAX_TIMELINE_ITEM_LINES = 3;
    private static final NumberFormat TIME_FORMAT;
    private final Timeline.Period period;
    private final long startTimeMs;
    private final String tag;
    private final Timeline.Window window;

    public EventLogger() {
        this(DEFAULT_TAG);
    }

    private static String A0(int i10) {
        if (i10 == 1) {
            return "USER_REQUEST";
        }
        if (i10 == 2) {
            return "AUDIO_FOCUS_LOSS";
        }
        if (i10 == 3) {
            return "AUDIO_BECOMING_NOISY";
        }
        if (i10 != 4) {
            return i10 != 5 ? "?" : "END_OF_MEDIA_ITEM";
        }
        return "REMOTE";
    }

    private static String B0(int i10) {
        if (i10 != 0) {
            return i10 != 1 ? "?" : "TRANSIENT_AUDIO_FOCUS_LOSS";
        }
        return "NONE";
    }

    private static String C0(int i10) {
        if (i10 == 0) {
            return "OFF";
        }
        if (i10 != 1) {
            return i10 != 2 ? "?" : "ALL";
        }
        return "ONE";
    }

    private static String D0(int i10) {
        if (i10 == 1) {
            return "IDLE";
        }
        if (i10 == 2) {
            return "BUFFERING";
        }
        if (i10 != 3) {
            return i10 != 4 ? "?" : "ENDED";
        }
        return "READY";
    }

    private static String F0(int i10) {
        if (i10 != 0) {
            return i10 != 1 ? "?" : "SOURCE_UPDATE";
        }
        return "PLAYLIST_CHANGED";
    }

    private static String G0(boolean z6) {
        return z6 ? "[X]" : "[ ]";
    }

    private void H0(AnalyticsListener.EventTime eventTime, String str) {
        J0(D(eventTime, str, null, null));
    }

    private void I0(AnalyticsListener.EventTime eventTime, String str, String str2) {
        J0(D(eventTime, str, str2, null));
    }

    private void L0(AnalyticsListener.EventTime eventTime, String str, @Nullable Throwable th) {
        M0(D(eventTime, str, null, th));
    }

    private void O0(Metadata metadata, String str) {
        for (int i10 = 0; i10 < metadata.h(); i10++) {
            J0(str + metadata.g(i10));
        }
    }

    private static String a(int i10) {
        if (i10 == 0) {
            return "AUTO_TRANSITION";
        }
        if (i10 == 1) {
            return "SEEK";
        }
        if (i10 == 2) {
            return "SEEK_ADJUSTMENT";
        }
        if (i10 == 3) {
            return "SKIP";
        }
        if (i10 != 4) {
            return i10 != 5 ? "?" : "INTERNAL";
        }
        return "REMOVE";
    }

    private static String y0(int i10) {
        if (i10 == 0) {
            return "REPEAT";
        }
        if (i10 == 1) {
            return "AUTO";
        }
        if (i10 != 2) {
            return i10 != 3 ? "?" : "PLAYLIST_CHANGED";
        }
        return "SEEK";
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
    public /* synthetic */ void I(Player player, AnalyticsListener.Events events) {
        a.z(this, player, events);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void J(AnalyticsListener.EventTime eventTime, DeviceInfo deviceInfo) {
        a.p(this, eventTime, deviceInfo);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void N(AnalyticsListener.EventTime eventTime, int i10, boolean z6) {
        a.q(this, eventTime, i10, z6);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void P(AnalyticsListener.EventTime eventTime, List list) {
        a.o(this, eventTime, list);
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
    public /* synthetic */ void Z(AnalyticsListener.EventTime eventTime) {
        a.Q(this, eventTime);
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
    public /* synthetic */ void e(AnalyticsListener.EventTime eventTime, Format format) {
        a.h(this, eventTime, format);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void f0(AnalyticsListener.EventTime eventTime, long j6) {
        a.j(this, eventTime, j6);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    @UnstableApi
    public void g(AnalyticsListener.EventTime eventTime, int i10, long j6, long j10) {
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void h(AnalyticsListener.EventTime eventTime, Exception exc) {
        a.b(this, eventTime, exc);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    @UnstableApi
    public void i(AnalyticsListener.EventTime eventTime, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void j(AnalyticsListener.EventTime eventTime, String str, long j6, long j10) {
        a.d(this, eventTime, str, j6, j10);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void k(AnalyticsListener.EventTime eventTime, TrackSelectionParameters trackSelectionParameters) {
        a.d0(this, eventTime, trackSelectionParameters);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void l0(AnalyticsListener.EventTime eventTime, int i10, int i11, int i12, float f) {
        a.p0(this, eventTime, i10, i11, i12, f);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void m0(AnalyticsListener.EventTime eventTime) {
        a.u(this, eventTime);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    @UnstableApi
    public void n0(AnalyticsListener.EventTime eventTime, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void o0(AnalyticsListener.EventTime eventTime, boolean z6, int i10) {
        a.R(this, eventTime, z6, i10);
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
    public /* synthetic */ void t0(AnalyticsListener.EventTime eventTime, CueGroup cueGroup) {
        a.n(this, eventTime, cueGroup);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void u0(AnalyticsListener.EventTime eventTime, String str, long j6, long j10) {
        a.i0(this, eventTime, str, j6, j10);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void v0(AnalyticsListener.EventTime eventTime, MediaMetadata mediaMetadata) {
        a.S(this, eventTime, mediaMetadata);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    @UnstableApi
    public void x0(AnalyticsListener.EventTime eventTime, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public /* synthetic */ void y(AnalyticsListener.EventTime eventTime, boolean z6) {
        a.F(this, eventTime, z6);
    }

    static {
        NumberFormat numberFormat = NumberFormat.getInstance(Locale.US);
        TIME_FORMAT = numberFormat;
        numberFormat.setMinimumFractionDigits(2);
        numberFormat.setMaximumFractionDigits(2);
        numberFormat.setGroupingUsed(false);
    }

    public EventLogger(String str) {
        this.tag = str;
        this.window = new Timeline.Window();
        this.period = new Timeline.Period();
        this.startTimeMs = SystemClock.elapsedRealtime();
    }

    private String D(AnalyticsListener.EventTime eventTime, String str, @Nullable String str2, @Nullable Throwable th) {
        String str3 = str + " [" + w0(eventTime);
        if (th instanceof PlaybackException) {
            str3 = str3 + ", errorCode=" + ((PlaybackException) th).d();
        }
        if (str2 != null) {
            str3 = str3 + ", " + str2;
        }
        String strE = Log.e(th);
        if (!TextUtils.isEmpty(strE)) {
            str3 = str3 + "\n  " + strE.replace("\n", "\n  ") + '\n';
        }
        return str3 + "]";
    }

    private void N0(AnalyticsListener.EventTime eventTime, String str, Exception exc) {
        K0(eventTime, "internalError", str, exc);
    }

    private String w0(AnalyticsListener.EventTime eventTime) {
        String str = "window=" + eventTime.windowIndex;
        if (eventTime.mediaPeriodId != null) {
            str = str + ", period=" + eventTime.timeline.f(eventTime.mediaPeriodId.periodUid);
            if (eventTime.mediaPeriodId.c()) {
                str = (str + ", adGroup=" + eventTime.mediaPeriodId.adGroupIndex) + ", ad=" + eventTime.mediaPeriodId.adIndexInAdGroup;
            }
        }
        return "eventTime=" + E0(eventTime.realtimeMs - this.startTimeMs) + ", mediaPos=" + E0(eventTime.eventPlaybackPositionMs) + ", " + str;
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    @UnstableApi
    public void B(AnalyticsListener.EventTime eventTime) {
        H0(eventTime, "drmKeysRestored");
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    @UnstableApi
    public void C(AnalyticsListener.EventTime eventTime, Tracks tracks) {
        Metadata metadata;
        J0("tracks [" + w0(eventTime));
        a0<Tracks.Group> a0VarB = tracks.b();
        for (int i10 = 0; i10 < a0VarB.size(); i10++) {
            Tracks.Group group = a0VarB.get(i10);
            J0("  group [");
            for (int i11 = 0; i11 < group.length; i11++) {
                J0("    " + G0(group.i(i11)) + " Track:" + i11 + ", " + Format.j(group.c(i11)) + ", supported=" + Util.Z(group.d(i11)));
            }
            J0("  ]");
        }
        boolean z6 = false;
        for (int i12 = 0; !z6 && i12 < a0VarB.size(); i12++) {
            Tracks.Group group2 = a0VarB.get(i12);
            for (int i13 = 0; !z6 && i13 < group2.length; i13++) {
                if (group2.i(i13) && (metadata = group2.c(i13).metadata) != null && metadata.h() > 0) {
                    J0("  Metadata [");
                    O0(metadata, "    ");
                    J0("  ]");
                    z6 = true;
                }
            }
        }
        J0("]");
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    @UnstableApi
    public void E(AnalyticsListener.EventTime eventTime, VideoSize videoSize) {
        I0(eventTime, "videoSize", videoSize.width + ", " + videoSize.height);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    @UnstableApi
    public void H(AnalyticsListener.EventTime eventTime, MediaLoadData mediaLoadData) {
        I0(eventTime, "downstreamFormat", Format.j(mediaLoadData.trackFormat));
    }

    @UnstableApi
    protected void J0(String str) {
        Log.b(this.tag, str);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    @UnstableApi
    public void K(AnalyticsListener.EventTime eventTime) {
        H0(eventTime, "drmKeysLoaded");
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    @UnstableApi
    public void M(AnalyticsListener.EventTime eventTime, boolean z6) {
        I0(eventTime, "loading", Boolean.toString(z6));
    }

    @UnstableApi
    protected void M0(String str) {
        Log.c(this.tag, str);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    @UnstableApi
    public void O(AnalyticsListener.EventTime eventTime, Metadata metadata) {
        J0("metadata [" + w0(eventTime));
        O0(metadata, "  ");
        J0("]");
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    @UnstableApi
    public void W(AnalyticsListener.EventTime eventTime, AudioAttributes audioAttributes) {
        I0(eventTime, "audioAttributes", audioAttributes.contentType + "," + audioAttributes.flags + "," + audioAttributes.usage + "," + audioAttributes.allowedCapturePolicy);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    @UnstableApi
    public void X(AnalyticsListener.EventTime eventTime, int i10) {
        int iM = eventTime.timeline.m();
        int iT = eventTime.timeline.t();
        J0("timeline [" + w0(eventTime) + ", periodCount=" + iM + ", windowCount=" + iT + ", reason=" + F0(i10));
        for (int i11 = 0; i11 < Math.min(iM, 3); i11++) {
            eventTime.timeline.j(i11, this.period);
            J0("  period [" + E0(this.period.m()) + "]");
        }
        if (iM > 3) {
            J0("  ...");
        }
        for (int i12 = 0; i12 < Math.min(iT, 3); i12++) {
            eventTime.timeline.r(i12, this.window);
            J0("  window [" + E0(this.window.f()) + ", seekable=" + this.window.isSeekable + ", dynamic=" + this.window.isDynamic + "]");
        }
        if (iT > 3) {
            J0("  ...");
        }
        J0("]");
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    @UnstableApi
    public void Y(AnalyticsListener.EventTime eventTime, DecoderCounters decoderCounters) {
        H0(eventTime, "audioDisabled");
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    @UnstableApi
    public void a0(AnalyticsListener.EventTime eventTime, Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2, int i10) {
        StringBuilder sb = new StringBuilder();
        sb.append("reason=");
        sb.append(a(i10));
        sb.append(", PositionInfo:old [");
        sb.append("mediaItem=");
        sb.append(positionInfo.mediaItemIndex);
        sb.append(", period=");
        sb.append(positionInfo.periodIndex);
        sb.append(", pos=");
        sb.append(positionInfo.positionMs);
        if (positionInfo.adGroupIndex != -1) {
            sb.append(", contentPos=");
            sb.append(positionInfo.contentPositionMs);
            sb.append(", adGroup=");
            sb.append(positionInfo.adGroupIndex);
            sb.append(", ad=");
            sb.append(positionInfo.adIndexInAdGroup);
        }
        sb.append("], PositionInfo:new [");
        sb.append("mediaItem=");
        sb.append(positionInfo2.mediaItemIndex);
        sb.append(", period=");
        sb.append(positionInfo2.periodIndex);
        sb.append(", pos=");
        sb.append(positionInfo2.positionMs);
        if (positionInfo2.adGroupIndex != -1) {
            sb.append(", contentPos=");
            sb.append(positionInfo2.contentPositionMs);
            sb.append(", adGroup=");
            sb.append(positionInfo2.adGroupIndex);
            sb.append(", ad=");
            sb.append(positionInfo2.adIndexInAdGroup);
        }
        sb.append("]");
        I0(eventTime, "positionDiscontinuity", sb.toString());
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    @UnstableApi
    public void b(AnalyticsListener.EventTime eventTime, boolean z6) {
        I0(eventTime, "isPlaying", Boolean.toString(z6));
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    @UnstableApi
    public void d(AnalyticsListener.EventTime eventTime, boolean z6, int i10) {
        I0(eventTime, "playWhenReady", z6 + ", " + A0(i10));
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    @UnstableApi
    public void e0(AnalyticsListener.EventTime eventTime, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, IOException iOException, boolean z6) {
        N0(eventTime, "loadError", iOException);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    @UnstableApi
    public void f(AnalyticsListener.EventTime eventTime) {
        H0(eventTime, "drmSessionReleased");
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    @UnstableApi
    public void g0(AnalyticsListener.EventTime eventTime, int i10, long j6, long j10) {
        K0(eventTime, "audioTrackUnderrun", i10 + ", " + j6 + ", " + j10, null);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    @UnstableApi
    public void h0(AnalyticsListener.EventTime eventTime, String str, long j6) {
        I0(eventTime, "audioDecoderInitialized", str);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    @UnstableApi
    public void i0(AnalyticsListener.EventTime eventTime, String str) {
        I0(eventTime, "audioDecoderReleased", str);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    @UnstableApi
    public void k0(AnalyticsListener.EventTime eventTime) {
        H0(eventTime, "drmKeysRemoved");
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    @UnstableApi
    public void l(AnalyticsListener.EventTime eventTime, Exception exc) {
        N0(eventTime, "drmSessionManagerError", exc);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    @UnstableApi
    public void m(AnalyticsListener.EventTime eventTime, @Nullable MediaItem mediaItem, int i10) {
        J0("mediaItem [" + w0(eventTime) + ", reason=" + y0(i10) + "]");
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    @UnstableApi
    public void n(AnalyticsListener.EventTime eventTime, DecoderCounters decoderCounters) {
        H0(eventTime, "audioEnabled");
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    @UnstableApi
    public void o(AnalyticsListener.EventTime eventTime, int i10, int i11) {
        I0(eventTime, "surfaceSize", i10 + ", " + i11);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    @UnstableApi
    public void p(AnalyticsListener.EventTime eventTime, int i10) {
        I0(eventTime, "drmSessionAcquired", "state=" + i10);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    @UnstableApi
    public void u(AnalyticsListener.EventTime eventTime, Format format, @Nullable DecoderReuseEvaluation decoderReuseEvaluation) {
        I0(eventTime, "audioInputFormat", Format.j(format));
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    @UnstableApi
    public void x(AnalyticsListener.EventTime eventTime, MediaLoadData mediaLoadData) {
        I0(eventTime, "upstreamDiscarded", Format.j(mediaLoadData.trackFormat));
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    @UnstableApi
    public void z(AnalyticsListener.EventTime eventTime, int i10, long j6) {
        I0(eventTime, "droppedFrames", Integer.toString(i10));
    }

    private void K0(AnalyticsListener.EventTime eventTime, String str, String str2, @Nullable Throwable th) {
        M0(D(eventTime, str, str2, th));
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    @UnstableApi
    public void A(AnalyticsListener.EventTime eventTime, String str, long j6) {
        I0(eventTime, "videoDecoderInitialized", str);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    @UnstableApi
    public void L(AnalyticsListener.EventTime eventTime, Object obj, long j6) {
        I0(eventTime, "renderedFirstFrame", String.valueOf(obj));
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    @UnstableApi
    public void Q(AnalyticsListener.EventTime eventTime, boolean z6) {
        I0(eventTime, "skipSilenceEnabled", Boolean.toString(z6));
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    @UnstableApi
    public void R(AnalyticsListener.EventTime eventTime, PlaybackException playbackException) {
        L0(eventTime, "playerFailed", playbackException);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    @UnstableApi
    public void T(AnalyticsListener.EventTime eventTime, DecoderCounters decoderCounters) {
        H0(eventTime, "videoDisabled");
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    @UnstableApi
    public void b0(AnalyticsListener.EventTime eventTime, DecoderCounters decoderCounters) {
        H0(eventTime, "videoEnabled");
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    @UnstableApi
    public void d0(AnalyticsListener.EventTime eventTime, float f) {
        I0(eventTime, "volume", Float.toString(f));
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    @UnstableApi
    public void j0(AnalyticsListener.EventTime eventTime, String str) {
        I0(eventTime, "videoDecoderReleased", str);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    @UnstableApi
    public void s(AnalyticsListener.EventTime eventTime, boolean z6) {
        I0(eventTime, "shuffleModeEnabled", Boolean.toString(z6));
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    @UnstableApi
    public void s0(AnalyticsListener.EventTime eventTime, int i10) {
        I0(eventTime, "repeatMode", C0(i10));
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    @UnstableApi
    public void t(AnalyticsListener.EventTime eventTime, int i10) {
        I0(eventTime, "state", D0(i10));
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    @UnstableApi
    public void v(AnalyticsListener.EventTime eventTime, PlaybackParameters playbackParameters) {
        I0(eventTime, "playbackParameters", playbackParameters.toString());
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    @UnstableApi
    public void w(AnalyticsListener.EventTime eventTime, int i10) {
        I0(eventTime, "playbackSuppressionReason", B0(i10));
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    @UnstableApi
    public void z0(AnalyticsListener.EventTime eventTime, Format format, @Nullable DecoderReuseEvaluation decoderReuseEvaluation) {
        I0(eventTime, "videoInputFormat", Format.j(format));
    }

    private static String E0(long j6) {
        if (j6 == -9223372036854775807L) {
            return "?";
        }
        return TIME_FORMAT.format(j6 / 1000.0f);
    }

    @UnstableApi
    @Deprecated
    public EventLogger(@Nullable MappingTrackSelector mappingTrackSelector) {
        this(DEFAULT_TAG);
    }

    @UnstableApi
    @Deprecated
    public EventLogger(@Nullable MappingTrackSelector mappingTrackSelector, String str) {
        this(str);
    }
}
