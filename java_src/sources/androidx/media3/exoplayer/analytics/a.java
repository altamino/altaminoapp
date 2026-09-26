package androidx.media3.exoplayer.analytics;

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
import androidx.media3.common.TrackSelectionParameters;
import androidx.media3.common.Tracks;
import androidx.media3.common.text.CueGroup;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.DecoderCounters;
import androidx.media3.exoplayer.DecoderReuseEvaluation;
import androidx.media3.exoplayer.source.LoadEventInfo;
import androidx.media3.exoplayer.source.MediaLoadData;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class a {
    @UnstableApi
    public static void A(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, boolean z6) {
    }

    @UnstableApi
    public static void B(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, boolean z6) {
    }

    @UnstableApi
    public static void C(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
    }

    @UnstableApi
    public static void D(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
    }

    @UnstableApi
    public static void E(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
    }

    @UnstableApi
    @Deprecated
    public static void F(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, boolean z6) {
    }

    @UnstableApi
    public static void G(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, long j6) {
    }

    @UnstableApi
    public static void H(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, @Nullable MediaItem mediaItem, int i10) {
    }

    @UnstableApi
    public static void I(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, MediaMetadata mediaMetadata) {
    }

    @UnstableApi
    public static void J(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, Metadata metadata) {
    }

    @UnstableApi
    public static void K(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, boolean z6, int i10) {
    }

    @UnstableApi
    public static void L(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, PlaybackParameters playbackParameters) {
    }

    @UnstableApi
    public static void M(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, int i10) {
    }

    @UnstableApi
    public static void N(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, int i10) {
    }

    @UnstableApi
    public static void O(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, PlaybackException playbackException) {
    }

    @UnstableApi
    public static void P(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, @Nullable PlaybackException playbackException) {
    }

    @UnstableApi
    public static void Q(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime) {
    }

    @UnstableApi
    @Deprecated
    public static void R(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, boolean z6, int i10) {
    }

    @UnstableApi
    public static void S(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, MediaMetadata mediaMetadata) {
    }

    @UnstableApi
    @Deprecated
    public static void T(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, int i10) {
    }

    @UnstableApi
    public static void U(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, Object obj, long j6) {
    }

    @UnstableApi
    public static void V(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, int i10) {
    }

    @UnstableApi
    public static void W(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, long j6) {
    }

    @UnstableApi
    public static void X(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, long j6) {
    }

    @UnstableApi
    @Deprecated
    public static void Y(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime) {
    }

    @UnstableApi
    public static void Z(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, boolean z6) {
    }

    @UnstableApi
    public static void a(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, AudioAttributes audioAttributes) {
    }

    @UnstableApi
    public static void a0(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, boolean z6) {
    }

    @UnstableApi
    public static void b(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, Exception exc) {
    }

    @UnstableApi
    public static void b0(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, int i10, int i11) {
    }

    @UnstableApi
    @Deprecated
    public static void c(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, String str, long j6) {
    }

    @UnstableApi
    public static void c0(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, int i10) {
    }

    @UnstableApi
    public static void d(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, String str, long j6, long j10) {
    }

    @UnstableApi
    public static void d0(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, TrackSelectionParameters trackSelectionParameters) {
    }

    @UnstableApi
    public static void e(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, String str) {
    }

    @UnstableApi
    public static void e0(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, Tracks tracks) {
    }

    @UnstableApi
    public static void f(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, DecoderCounters decoderCounters) {
    }

    @UnstableApi
    public static void f0(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, MediaLoadData mediaLoadData) {
    }

    @UnstableApi
    public static void g(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, DecoderCounters decoderCounters) {
    }

    @UnstableApi
    public static void g0(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, Exception exc) {
    }

    @UnstableApi
    @Deprecated
    public static void h(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, Format format) {
    }

    @UnstableApi
    @Deprecated
    public static void h0(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, String str, long j6) {
    }

    @UnstableApi
    public static void i(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, Format format, @Nullable DecoderReuseEvaluation decoderReuseEvaluation) {
    }

    @UnstableApi
    public static void i0(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, String str, long j6, long j10) {
    }

    @UnstableApi
    public static void j(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, long j6) {
    }

    @UnstableApi
    public static void j0(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, String str) {
    }

    @UnstableApi
    public static void k(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, Exception exc) {
    }

    @UnstableApi
    public static void k0(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, DecoderCounters decoderCounters) {
    }

    @UnstableApi
    public static void l(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, int i10, long j6, long j10) {
    }

    @UnstableApi
    public static void l0(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, DecoderCounters decoderCounters) {
    }

    @UnstableApi
    public static void m(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, Player.Commands commands) {
    }

    @UnstableApi
    public static void m0(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, long j6, int i10) {
    }

    @UnstableApi
    public static void n(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, CueGroup cueGroup) {
    }

    @UnstableApi
    @Deprecated
    public static void n0(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, Format format) {
    }

    @UnstableApi
    @Deprecated
    public static void o(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, List list) {
    }

    @UnstableApi
    public static void o0(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, Format format, @Nullable DecoderReuseEvaluation decoderReuseEvaluation) {
    }

    @UnstableApi
    public static void p(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, DeviceInfo deviceInfo) {
    }

    @UnstableApi
    @Deprecated
    public static void p0(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, int i10, int i11, int i12, float f) {
    }

    @UnstableApi
    public static void q(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, int i10, boolean z6) {
    }

    @UnstableApi
    public static void q0(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, float f) {
    }

    @UnstableApi
    public static void r(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime) {
    }

    @UnstableApi
    public static void s(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime) {
    }

    @UnstableApi
    public static void t(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime) {
    }

    @UnstableApi
    @Deprecated
    public static void u(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime) {
    }

    @UnstableApi
    public static void v(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, int i10) {
    }

    @UnstableApi
    public static void w(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, Exception exc) {
    }

    @UnstableApi
    public static void x(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime) {
    }

    @UnstableApi
    public static void y(AnalyticsListener analyticsListener, AnalyticsListener.EventTime eventTime, int i10, long j6) {
    }

    @UnstableApi
    public static void z(AnalyticsListener analyticsListener, Player player, AnalyticsListener.Events events) {
    }
}
