package com.google.android.exoplayer2.audio;

import android.media.AudioTrack;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import androidx.media3.exoplayer.dash.DashMediaSource;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes3.dex */
final class x {
    private static final long FORCE_RESET_WORKAROUND_TIMEOUT_MS = 200;
    private static final long MAX_AUDIO_TIMESTAMP_OFFSET_US = 5000000;
    private static final long MAX_LATENCY_US = 5000000;
    private static final int MAX_PLAYHEAD_OFFSET_COUNT = 10;
    private static final int MIN_LATENCY_SAMPLE_INTERVAL_US = 500000;
    private static final int MIN_PLAYHEAD_OFFSET_SAMPLE_INTERVAL_US = 30000;
    private static final long MODE_SWITCH_SMOOTHING_DURATION_US = 1000000;
    private static final int PLAYSTATE_PAUSED = 2;
    private static final int PLAYSTATE_PLAYING = 3;
    private static final int PLAYSTATE_STOPPED = 1;

    @Nullable
    private w audioTimestampPoller;

    @Nullable
    private AudioTrack audioTrack;
    private float audioTrackPlaybackSpeed;
    private int bufferSize;
    private long bufferSizeUs;
    private long endPlaybackHeadPosition;
    private long forceResetWorkaroundTimeMs;

    @Nullable
    private Method getLatencyMethod;
    private boolean hasData;
    private boolean isOutputPcm;
    private long lastLatencySampleTimeUs;
    private long lastPlayheadSampleTimeUs;
    private long lastPositionUs;
    private long lastRawPlaybackHeadPosition;
    private boolean lastSampleUsedGetTimestampMode;
    private long lastSystemTimeUs;
    private long latencyUs;
    private final a listener;
    private boolean needsPassthroughWorkarounds;
    private int nextPlayheadOffsetIndex;
    private boolean notifiedPositionIncreasing;
    private int outputPcmFrameSize;
    private int outputSampleRate;
    private long passthroughWorkaroundPauseOffset;
    private int playheadOffsetCount;
    private final long[] playheadOffsets;
    private long previousModePositionUs;
    private long previousModeSystemTimeUs;
    private long rawPlaybackHeadWrapCount;
    private long smoothedPlayheadOffsetUs;
    private long stopPlaybackHeadPosition;
    private long stopTimestampUs;

    public interface a {
        void b(long j6);

        void onInvalidLatency(long j6);

        void onPositionFramesMismatch(long j6, long j10, long j11, long j12);

        void onSystemTimeUsMismatch(long j6, long j10, long j11, long j12);

        void onUnderrun(int i10, long j6);
    }

    private void r() {
        this.smoothedPlayheadOffsetUs = 0L;
        this.playheadOffsetCount = 0;
        this.nextPlayheadOffsetIndex = 0;
        this.lastPlayheadSampleTimeUs = 0L;
        this.lastSystemTimeUs = 0L;
        this.previousModeSystemTimeUs = 0L;
        this.notifiedPositionIncreasing = false;
    }

    private boolean a() {
        return this.needsPassthroughWorkarounds && ((AudioTrack) com.google.android.exoplayer2.util.a.e(this.audioTrack)).getPlayState() == 2 && e() == 0;
    }

    private long e() {
        AudioTrack audioTrack = (AudioTrack) com.google.android.exoplayer2.util.a.e(this.audioTrack);
        if (this.stopTimestampUs != -9223372036854775807L) {
            return Math.min(this.endPlaybackHeadPosition, this.stopPlaybackHeadPosition + ((((SystemClock.elapsedRealtime() * 1000) - this.stopTimestampUs) * ((long) this.outputSampleRate)) / 1000000));
        }
        int playState = audioTrack.getPlayState();
        if (playState == 1) {
            return 0L;
        }
        long playbackHeadPosition = ((long) audioTrack.getPlaybackHeadPosition()) & 4294967295L;
        if (this.needsPassthroughWorkarounds) {
            if (playState == 2 && playbackHeadPosition == 0) {
                this.passthroughWorkaroundPauseOffset = this.lastRawPlaybackHeadPosition;
            }
            playbackHeadPosition += this.passthroughWorkaroundPauseOffset;
        }
        if (com.google.android.exoplayer2.util.o0.SDK_INT <= 29) {
            if (playbackHeadPosition == 0 && this.lastRawPlaybackHeadPosition > 0 && playState == 3) {
                if (this.forceResetWorkaroundTimeMs == -9223372036854775807L) {
                    this.forceResetWorkaroundTimeMs = SystemClock.elapsedRealtime();
                }
                return this.lastRawPlaybackHeadPosition;
            }
            this.forceResetWorkaroundTimeMs = -9223372036854775807L;
        }
        if (this.lastRawPlaybackHeadPosition > playbackHeadPosition) {
            this.rawPlaybackHeadWrapCount++;
        }
        this.lastRawPlaybackHeadPosition = playbackHeadPosition;
        return playbackHeadPosition + (this.rawPlaybackHeadWrapCount << 32);
    }

    private void l(long j6, long j10) {
        w wVar = (w) com.google.android.exoplayer2.util.a.e(this.audioTimestampPoller);
        if (wVar.e(j6)) {
            long jC = wVar.c();
            long jB = wVar.b();
            if (Math.abs(jC - j6) > DashMediaSource.MIN_LIVE_DEFAULT_START_POSITION_US) {
                this.listener.onSystemTimeUsMismatch(jB, jC, j6, j10);
                wVar.f();
            } else if (Math.abs(b(jB) - j10) <= DashMediaSource.MIN_LIVE_DEFAULT_START_POSITION_US) {
                wVar.a();
            } else {
                this.listener.onPositionFramesMismatch(jB, jC, j6, j10);
                wVar.f();
            }
        }
    }

    private void n(long j6) {
        Method method;
        if (!this.isOutputPcm || (method = this.getLatencyMethod) == null || j6 - this.lastLatencySampleTimeUs < 500000) {
            return;
        }
        try {
            long jIntValue = (((long) ((Integer) com.google.android.exoplayer2.util.o0.j((Integer) method.invoke(com.google.android.exoplayer2.util.a.e(this.audioTrack), new Object[0]))).intValue()) * 1000) - this.bufferSizeUs;
            this.latencyUs = jIntValue;
            long jMax = Math.max(jIntValue, 0L);
            this.latencyUs = jMax;
            if (jMax > DashMediaSource.MIN_LIVE_DEFAULT_START_POSITION_US) {
                this.listener.onInvalidLatency(jMax);
                this.latencyUs = 0L;
            }
        } catch (Exception unused) {
            this.getLatencyMethod = null;
        }
        this.lastLatencySampleTimeUs = j6;
    }

    private static boolean o(int i10) {
        return com.google.android.exoplayer2.util.o0.SDK_INT < 23 && (i10 == 5 || i10 == 6);
    }

    public long d(boolean z6) {
        long jF;
        if (((AudioTrack) com.google.android.exoplayer2.util.a.e(this.audioTrack)).getPlayState() == 3) {
            m();
        }
        long jNanoTime = System.nanoTime() / 1000;
        w wVar = (w) com.google.android.exoplayer2.util.a.e(this.audioTimestampPoller);
        boolean zD = wVar.d();
        if (zD) {
            jF = b(wVar.b()) + com.google.android.exoplayer2.util.o0.U(jNanoTime - wVar.c(), this.audioTrackPlaybackSpeed);
        } else {
            jF = this.playheadOffsetCount == 0 ? f() : this.smoothedPlayheadOffsetUs + jNanoTime;
            if (!z6) {
                jF = Math.max(0L, jF - this.latencyUs);
            }
        }
        if (this.lastSampleUsedGetTimestampMode != zD) {
            this.previousModeSystemTimeUs = this.lastSystemTimeUs;
            this.previousModePositionUs = this.lastPositionUs;
        }
        long j6 = jNanoTime - this.previousModeSystemTimeUs;
        if (j6 < 1000000) {
            long jU = this.previousModePositionUs + com.google.android.exoplayer2.util.o0.U(j6, this.audioTrackPlaybackSpeed);
            long j10 = (j6 * 1000) / 1000000;
            jF = ((jF * j10) + ((1000 - j10) * jU)) / 1000;
        }
        if (!this.notifiedPositionIncreasing) {
            long j11 = this.lastPositionUs;
            if (jF > j11) {
                this.notifiedPositionIncreasing = true;
                this.listener.b(System.currentTimeMillis() - com.google.android.exoplayer2.util.o0.P0(com.google.android.exoplayer2.util.o0.Z(com.google.android.exoplayer2.util.o0.P0(jF - j11), this.audioTrackPlaybackSpeed)));
            }
        }
        this.lastSystemTimeUs = jNanoTime;
        this.lastPositionUs = jF;
        this.lastSampleUsedGetTimestampMode = zD;
        return jF;
    }

    public boolean i() {
        return ((AudioTrack) com.google.android.exoplayer2.util.a.e(this.audioTrack)).getPlayState() == 3;
    }

    public boolean j(long j6) {
        return this.forceResetWorkaroundTimeMs != -9223372036854775807L && j6 > 0 && SystemClock.elapsedRealtime() - this.forceResetWorkaroundTimeMs >= FORCE_RESET_WORKAROUND_TIMEOUT_MS;
    }

    public boolean k(long j6) {
        int playState = ((AudioTrack) com.google.android.exoplayer2.util.a.e(this.audioTrack)).getPlayState();
        if (this.needsPassthroughWorkarounds) {
            if (playState == 2) {
                this.hasData = false;
                return false;
            }
            if (playState == 1 && e() == 0) {
                return false;
            }
        }
        boolean z6 = this.hasData;
        boolean zH = h(j6);
        this.hasData = zH;
        if (z6 && !zH && playState != 1) {
            this.listener.onUnderrun(this.bufferSize, com.google.android.exoplayer2.util.o0.P0(this.bufferSizeUs));
        }
        return true;
    }

    public void s(AudioTrack audioTrack, boolean z6, int i10, int i11, int i12) {
        this.audioTrack = audioTrack;
        this.outputPcmFrameSize = i11;
        this.bufferSize = i12;
        this.audioTimestampPoller = new w(audioTrack);
        this.outputSampleRate = audioTrack.getSampleRate();
        this.needsPassthroughWorkarounds = z6 && o(i10);
        boolean zO0 = com.google.android.exoplayer2.util.o0.o0(i10);
        this.isOutputPcm = zO0;
        this.bufferSizeUs = zO0 ? b(i12 / i11) : -9223372036854775807L;
        this.lastRawPlaybackHeadPosition = 0L;
        this.rawPlaybackHeadWrapCount = 0L;
        this.passthroughWorkaroundPauseOffset = 0L;
        this.hasData = false;
        this.stopTimestampUs = -9223372036854775807L;
        this.forceResetWorkaroundTimeMs = -9223372036854775807L;
        this.lastLatencySampleTimeUs = 0L;
        this.latencyUs = 0L;
        this.audioTrackPlaybackSpeed = 1.0f;
    }

    public void t(float f) {
        this.audioTrackPlaybackSpeed = f;
        w wVar = this.audioTimestampPoller;
        if (wVar != null) {
            wVar.g();
        }
    }

    public void u() {
        ((w) com.google.android.exoplayer2.util.a.e(this.audioTimestampPoller)).g();
    }

    public x(a aVar) {
        this.listener = (a) com.google.android.exoplayer2.util.a.e(aVar);
        if (com.google.android.exoplayer2.util.o0.SDK_INT >= 18) {
            try {
                this.getLatencyMethod = AudioTrack.class.getMethod("getLatency", null);
            } catch (NoSuchMethodException unused) {
            }
        }
        this.playheadOffsets = new long[10];
    }

    private long b(long j6) {
        return (j6 * 1000000) / ((long) this.outputSampleRate);
    }

    private long f() {
        return b(e());
    }

    private void m() {
        long jF = f();
        if (jF == 0) {
            return;
        }
        long jNanoTime = System.nanoTime() / 1000;
        if (jNanoTime - this.lastPlayheadSampleTimeUs >= 30000) {
            long[] jArr = this.playheadOffsets;
            int i10 = this.nextPlayheadOffsetIndex;
            jArr[i10] = jF - jNanoTime;
            this.nextPlayheadOffsetIndex = (i10 + 1) % 10;
            int i11 = this.playheadOffsetCount;
            if (i11 < 10) {
                this.playheadOffsetCount = i11 + 1;
            }
            this.lastPlayheadSampleTimeUs = jNanoTime;
            this.smoothedPlayheadOffsetUs = 0L;
            int i12 = 0;
            while (true) {
                int i13 = this.playheadOffsetCount;
                if (i12 >= i13) {
                    break;
                }
                this.smoothedPlayheadOffsetUs += this.playheadOffsets[i12] / ((long) i13);
                i12++;
            }
        }
        if (this.needsPassthroughWorkarounds) {
            return;
        }
        l(jNanoTime, jF);
        n(jNanoTime);
    }

    public int c(long j6) {
        return this.bufferSize - ((int) (j6 - (e() * ((long) this.outputPcmFrameSize))));
    }

    public void g(long j6) {
        this.stopPlaybackHeadPosition = e();
        this.stopTimestampUs = SystemClock.elapsedRealtime() * 1000;
        this.endPlaybackHeadPosition = j6;
    }

    public boolean h(long j6) {
        if (j6 <= e() && !a()) {
            return false;
        }
        return true;
    }

    public boolean p() {
        r();
        if (this.stopTimestampUs == -9223372036854775807L) {
            ((w) com.google.android.exoplayer2.util.a.e(this.audioTimestampPoller)).g();
            return true;
        }
        return false;
    }

    public void q() {
        r();
        this.audioTrack = null;
        this.audioTimestampPoller = null;
    }
}
