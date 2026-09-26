package com.google.android.exoplayer2.analytics;

import android.util.SparseArray;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.a2;
import com.google.android.exoplayer2.c3;
import com.google.android.exoplayer2.d3;
import com.google.android.exoplayer2.e4;
import com.google.android.exoplayer2.i2;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.n2;
import com.google.android.exoplayer2.z2;
import com.google.android.exoplayer2.z3;
import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public interface c {
    public static final int EVENT_AUDIO_ATTRIBUTES_CHANGED = 20;
    public static final int EVENT_AUDIO_CODEC_ERROR = 1029;
    public static final int EVENT_AUDIO_DECODER_INITIALIZED = 1008;
    public static final int EVENT_AUDIO_DECODER_RELEASED = 1012;
    public static final int EVENT_AUDIO_DISABLED = 1013;
    public static final int EVENT_AUDIO_ENABLED = 1007;
    public static final int EVENT_AUDIO_INPUT_FORMAT_CHANGED = 1009;
    public static final int EVENT_AUDIO_POSITION_ADVANCING = 1010;
    public static final int EVENT_AUDIO_SESSION_ID = 21;
    public static final int EVENT_AUDIO_SINK_ERROR = 1014;
    public static final int EVENT_AUDIO_UNDERRUN = 1011;
    public static final int EVENT_AVAILABLE_COMMANDS_CHANGED = 13;
    public static final int EVENT_BANDWIDTH_ESTIMATE = 1006;
    public static final int EVENT_CUES = 27;
    public static final int EVENT_DEVICE_INFO_CHANGED = 29;
    public static final int EVENT_DEVICE_VOLUME_CHANGED = 30;
    public static final int EVENT_DOWNSTREAM_FORMAT_CHANGED = 1004;
    public static final int EVENT_DRM_KEYS_LOADED = 1023;
    public static final int EVENT_DRM_KEYS_REMOVED = 1026;
    public static final int EVENT_DRM_KEYS_RESTORED = 1025;
    public static final int EVENT_DRM_SESSION_ACQUIRED = 1022;
    public static final int EVENT_DRM_SESSION_MANAGER_ERROR = 1024;
    public static final int EVENT_DRM_SESSION_RELEASED = 1027;
    public static final int EVENT_DROPPED_VIDEO_FRAMES = 1018;
    public static final int EVENT_IS_LOADING_CHANGED = 3;
    public static final int EVENT_IS_PLAYING_CHANGED = 7;
    public static final int EVENT_LOAD_CANCELED = 1002;
    public static final int EVENT_LOAD_COMPLETED = 1001;
    public static final int EVENT_LOAD_ERROR = 1003;
    public static final int EVENT_LOAD_STARTED = 1000;
    public static final int EVENT_MAX_SEEK_TO_PREVIOUS_POSITION_CHANGED = 18;
    public static final int EVENT_MEDIA_ITEM_TRANSITION = 1;
    public static final int EVENT_MEDIA_METADATA_CHANGED = 14;
    public static final int EVENT_METADATA = 28;
    public static final int EVENT_PLAYBACK_PARAMETERS_CHANGED = 12;
    public static final int EVENT_PLAYBACK_STATE_CHANGED = 4;
    public static final int EVENT_PLAYBACK_SUPPRESSION_REASON_CHANGED = 6;
    public static final int EVENT_PLAYER_ERROR = 10;
    public static final int EVENT_PLAYER_RELEASED = 1028;
    public static final int EVENT_PLAYLIST_METADATA_CHANGED = 15;
    public static final int EVENT_PLAY_WHEN_READY_CHANGED = 5;
    public static final int EVENT_POSITION_DISCONTINUITY = 11;
    public static final int EVENT_RENDERED_FIRST_FRAME = 26;
    public static final int EVENT_REPEAT_MODE_CHANGED = 8;
    public static final int EVENT_SEEK_BACK_INCREMENT_CHANGED = 16;
    public static final int EVENT_SEEK_FORWARD_INCREMENT_CHANGED = 17;
    public static final int EVENT_SHUFFLE_MODE_ENABLED_CHANGED = 9;
    public static final int EVENT_SKIP_SILENCE_ENABLED_CHANGED = 23;
    public static final int EVENT_SURFACE_SIZE_CHANGED = 24;
    public static final int EVENT_TIMELINE_CHANGED = 0;
    public static final int EVENT_TRACKS_CHANGED = 2;
    public static final int EVENT_TRACK_SELECTION_PARAMETERS_CHANGED = 19;
    public static final int EVENT_UPSTREAM_DISCARDED = 1005;
    public static final int EVENT_VIDEO_CODEC_ERROR = 1030;
    public static final int EVENT_VIDEO_DECODER_INITIALIZED = 1016;
    public static final int EVENT_VIDEO_DECODER_RELEASED = 1019;
    public static final int EVENT_VIDEO_DISABLED = 1020;
    public static final int EVENT_VIDEO_ENABLED = 1015;
    public static final int EVENT_VIDEO_FRAME_PROCESSING_OFFSET = 1021;
    public static final int EVENT_VIDEO_INPUT_FORMAT_CHANGED = 1017;
    public static final int EVENT_VIDEO_SIZE_CHANGED = 25;
    public static final int EVENT_VOLUME_CHANGED = 22;

    public static final class a {

        @Nullable
        public final com.google.android.exoplayer2.source.b0.b currentMediaPeriodId;
        public final long currentPlaybackPositionMs;
        public final z3 currentTimeline;
        public final int currentWindowIndex;
        public final long eventPlaybackPositionMs;

        @Nullable
        public final com.google.android.exoplayer2.source.b0.b mediaPeriodId;
        public final long realtimeMs;
        public final z3 timeline;
        public final long totalBufferedDurationMs;
        public final int windowIndex;

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.realtimeMs == aVar.realtimeMs && this.windowIndex == aVar.windowIndex && this.eventPlaybackPositionMs == aVar.eventPlaybackPositionMs && this.currentWindowIndex == aVar.currentWindowIndex && this.currentPlaybackPositionMs == aVar.currentPlaybackPositionMs && this.totalBufferedDurationMs == aVar.totalBufferedDurationMs && com.google.common.base.k.a(this.timeline, aVar.timeline) && com.google.common.base.k.a(this.mediaPeriodId, aVar.mediaPeriodId) && com.google.common.base.k.a(this.currentTimeline, aVar.currentTimeline) && com.google.common.base.k.a(this.currentMediaPeriodId, aVar.currentMediaPeriodId);
        }

        public int hashCode() {
            return com.google.common.base.k.b(Long.valueOf(this.realtimeMs), this.timeline, Integer.valueOf(this.windowIndex), this.mediaPeriodId, Long.valueOf(this.eventPlaybackPositionMs), this.currentTimeline, Integer.valueOf(this.currentWindowIndex), this.currentMediaPeriodId, Long.valueOf(this.currentPlaybackPositionMs), Long.valueOf(this.totalBufferedDurationMs));
        }

        public a(long j6, z3 z3Var, int i10, @Nullable com.google.android.exoplayer2.source.b0.b bVar, long j10, z3 z3Var2, int i11, @Nullable com.google.android.exoplayer2.source.b0.b bVar2, long j11, long j12) {
            this.realtimeMs = j6;
            this.timeline = z3Var;
            this.windowIndex = i10;
            this.mediaPeriodId = bVar;
            this.eventPlaybackPositionMs = j10;
            this.currentTimeline = z3Var2;
            this.currentWindowIndex = i11;
            this.currentMediaPeriodId = bVar2;
            this.currentPlaybackPositionMs = j11;
            this.totalBufferedDurationMs = j12;
        }
    }

    public static final class b {
        private final SparseArray<a> eventTimes;
        private final com.google.android.exoplayer2.util.m flags;

        public boolean a(int i10) {
            return this.flags.a(i10);
        }

        public int b(int i10) {
            return this.flags.c(i10);
        }

        public a c(int i10) {
            return (a) com.google.android.exoplayer2.util.a.e(this.eventTimes.get(i10));
        }

        public int d() {
            return this.flags.d();
        }

        public b(com.google.android.exoplayer2.util.m mVar, SparseArray<a> sparseArray) {
            this.flags = mVar;
            SparseArray<a> sparseArray2 = new SparseArray<>(mVar.d());
            for (int i10 = 0; i10 < mVar.d(); i10++) {
                int iC = mVar.c(i10);
                sparseArray2.append(iC, (a) com.google.android.exoplayer2.util.a.e(sparseArray.get(iC)));
            }
            this.eventTimes = sparseArray2;
        }
    }

    void A(a aVar, int i10, long j6, long j10);

    void B(a aVar, String str, long j6, long j10);

    void C(a aVar, com.google.android.exoplayer2.source.u uVar, com.google.android.exoplayer2.source.x xVar);

    void D(a aVar, boolean z6);

    void E(a aVar, Exception exc);

    void F(a aVar, com.google.android.exoplayer2.source.x xVar);

    void G(a aVar, d3.e eVar, d3.e eVar2, int i10);

    void H(a aVar, d3.b bVar);

    void I(a aVar, Object obj, long j6);

    @Deprecated
    void J(a aVar, int i10, com.google.android.exoplayer2.decoder.e eVar);

    void K(a aVar, com.google.android.exoplayer2.o oVar);

    void L(a aVar, String str);

    void M(a aVar, int i10);

    void N(a aVar, Exception exc);

    @Deprecated
    void O(a aVar, boolean z6);

    void P(a aVar, n2 n2Var);

    void Q(a aVar, @Nullable z2 z2Var);

    @Deprecated
    void R(a aVar, String str, long j6);

    void S(d3 d3Var, b bVar);

    void T(a aVar, int i10, int i11);

    void U(a aVar, boolean z6, int i10);

    void V(a aVar, a2 a2Var, @Nullable com.google.android.exoplayer2.decoder.i iVar);

    void W(a aVar, int i10);

    @Deprecated
    void X(a aVar);

    void Y(a aVar, e4 e4Var);

    @Deprecated
    void Z(a aVar);

    void a(a aVar, long j6, int i10);

    void a0(a aVar);

    void b(a aVar);

    void b0(a aVar, int i10, long j6, long j10);

    void c(a aVar, int i10);

    void c0(a aVar, int i10, boolean z6);

    void d(a aVar, com.google.android.exoplayer2.decoder.e eVar);

    @Deprecated
    void d0(a aVar, int i10, int i11, int i12, float f);

    void e(a aVar, com.google.android.exoplayer2.source.u uVar, com.google.android.exoplayer2.source.x xVar, IOException iOException, boolean z6);

    @Deprecated
    void e0(a aVar, int i10, String str, long j6);

    @Deprecated
    void f(a aVar, int i10, com.google.android.exoplayer2.decoder.e eVar);

    @Deprecated
    void f0(a aVar, int i10);

    void g(a aVar, Metadata metadata);

    void g0(a aVar, com.google.android.exoplayer2.text.f fVar);

    @Deprecated
    void h(a aVar, boolean z6, int i10);

    void h0(a aVar, c3 c3Var);

    void i(a aVar, int i10);

    void i0(a aVar, com.google.android.exoplayer2.decoder.e eVar);

    @Deprecated
    void j(a aVar, a2 a2Var);

    void j0(a aVar, com.google.android.exoplayer2.decoder.e eVar);

    void k(a aVar, long j6);

    void k0(a aVar, int i10);

    void l(a aVar, boolean z6);

    void l0(a aVar);

    void m(a aVar, int i10, long j6);

    void m0(a aVar, com.google.android.exoplayer2.video.a0 a0Var);

    void n(a aVar, Exception exc);

    void o(a aVar, boolean z6);

    @Deprecated
    void p(a aVar, List<com.google.android.exoplayer2.text.b> list);

    @Deprecated
    void p0(a aVar, a2 a2Var);

    void q(a aVar, String str, long j6, long j10);

    void q0(a aVar);

    void r(a aVar, Exception exc);

    void r0(a aVar, float f);

    void s(a aVar, @Nullable i2 i2Var, int i10);

    void s0(a aVar, com.google.android.exoplayer2.source.u uVar, com.google.android.exoplayer2.source.x xVar);

    void t(a aVar, com.google.android.exoplayer2.trackselection.z zVar);

    void t0(a aVar, String str);

    void u(a aVar, com.google.android.exoplayer2.decoder.e eVar);

    @Deprecated
    void v(a aVar, int i10, a2 a2Var);

    @Deprecated
    void v0(a aVar, String str, long j6);

    @Deprecated
    void w(a aVar);

    void w0(a aVar, a2 a2Var, @Nullable com.google.android.exoplayer2.decoder.i iVar);

    void x(a aVar, com.google.android.exoplayer2.source.u uVar, com.google.android.exoplayer2.source.x xVar);

    void x0(a aVar, boolean z6);

    void y(a aVar, z2 z2Var);

    void z(a aVar);
}
