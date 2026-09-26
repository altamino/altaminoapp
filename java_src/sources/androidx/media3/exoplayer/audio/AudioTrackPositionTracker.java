package androidx.media3.exoplayer.audio;

import android.media.AudioTrack;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.dash.DashMediaSource;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes8.dex */
final class AudioTrackPositionTracker {
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
    private static final long RAW_PLAYBACK_HEAD_POSITION_UPDATE_INTERVAL_MS = 5;

    @Nullable
    private AudioTimestampPoller audioTimestampPoller;

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
    private long lastRawPlaybackHeadPositionSampleTimeMs;
    private boolean lastSampleUsedGetTimestampMode;
    private long lastSystemTimeUs;
    private long latencyUs;
    private final Listener listener;
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
    private long rawPlaybackHeadPosition;
    private long rawPlaybackHeadWrapCount;
    private long smoothedPlayheadOffsetUs;
    private long stopPlaybackHeadPosition;
    private long stopTimestampUs;

    public interface Listener {
        void b(long j6);

        void onInvalidLatency(long j6);

        void onPositionFramesMismatch(long j6, long j10, long j11, long j12);

        void onSystemTimeUsMismatch(long j6, long j10, long j11, long j12);

        void onUnderrun(int i10, long j6);
    }

    private void q() {
        this.smoothedPlayheadOffsetUs = 0L;
        this.playheadOffsetCount = 0;
        this.nextPlayheadOffsetIndex = 0;
        this.lastPlayheadSampleTimeUs = 0L;
        this.lastSystemTimeUs = 0L;
        this.previousModeSystemTimeUs = 0L;
        this.notifiedPositionIncreasing = false;
    }

    public boolean g(long j6) {
        return j6 > Util.B(c(false), this.outputSampleRate) || a();
    }

    private boolean a() {
        return this.needsPassthroughWorkarounds && ((AudioTrack) Assertions.e(this.audioTrack)).getPlayState() == 2 && d() == 0;
    }

    private void k(long j6) {
        AudioTimestampPoller audioTimestampPoller = (AudioTimestampPoller) Assertions.e(this.audioTimestampPoller);
        if (audioTimestampPoller.e(j6)) {
            long jC = audioTimestampPoller.c();
            long jB = audioTimestampPoller.b();
            long jE = e();
            if (Math.abs(jC - j6) > DashMediaSource.MIN_LIVE_DEFAULT_START_POSITION_US) {
                this.listener.onSystemTimeUsMismatch(jB, jC, j6, jE);
                audioTimestampPoller.f();
            } else if (Math.abs(Util.W0(jB, this.outputSampleRate) - jE) <= DashMediaSource.MIN_LIVE_DEFAULT_START_POSITION_US) {
                audioTimestampPoller.a();
            } else {
                this.listener.onPositionFramesMismatch(jB, jC, j6, jE);
                audioTimestampPoller.f();
            }
        }
    }

    private void m(long j6) {
        Method method;
        if (!this.isOutputPcm || (method = this.getLatencyMethod) == null || j6 - this.lastLatencySampleTimeUs < 500000) {
            return;
        }
        try {
            long jIntValue = (((long) ((Integer) Util.j((Integer) method.invoke(Assertions.e(this.audioTrack), new Object[0]))).intValue()) * 1000) - this.bufferSizeUs;
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

    private static boolean n(int i10) {
        return Util.SDK_INT < 23 && (i10 == 5 || i10 == 6);
    }

    private void u(long j6) {
        AudioTrack audioTrack = (AudioTrack) Assertions.e(this.audioTrack);
        int playState = audioTrack.getPlayState();
        if (playState == 1) {
            return;
        }
        long playbackHeadPosition = ((long) audioTrack.getPlaybackHeadPosition()) & 4294967295L;
        if (this.needsPassthroughWorkarounds) {
            if (playState == 2 && playbackHeadPosition == 0) {
                this.passthroughWorkaroundPauseOffset = this.rawPlaybackHeadPosition;
            }
            playbackHeadPosition += this.passthroughWorkaroundPauseOffset;
        }
        if (Util.SDK_INT <= 29) {
            if (playbackHeadPosition == 0 && this.rawPlaybackHeadPosition > 0 && playState == 3) {
                if (this.forceResetWorkaroundTimeMs == -9223372036854775807L) {
                    this.forceResetWorkaroundTimeMs = j6;
                    return;
                }
                return;
            }
            this.forceResetWorkaroundTimeMs = -9223372036854775807L;
        }
        if (this.rawPlaybackHeadPosition > playbackHeadPosition) {
            this.rawPlaybackHeadWrapCount++;
        }
        this.rawPlaybackHeadPosition = playbackHeadPosition;
    }

    public long c(boolean z6) {
        long jE;
        if (((AudioTrack) Assertions.e(this.audioTrack)).getPlayState() == 3) {
            l();
        }
        long jNanoTime = System.nanoTime() / 1000;
        AudioTimestampPoller audioTimestampPoller = (AudioTimestampPoller) Assertions.e(this.audioTimestampPoller);
        boolean zD = audioTimestampPoller.d();
        if (zD) {
            jE = Util.W0(audioTimestampPoller.b(), this.outputSampleRate) + Util.d0(jNanoTime - audioTimestampPoller.c(), this.audioTrackPlaybackSpeed);
        } else {
            jE = this.playheadOffsetCount == 0 ? e() : Util.d0(this.smoothedPlayheadOffsetUs + jNanoTime, this.audioTrackPlaybackSpeed);
            if (!z6) {
                jE = Math.max(0L, jE - this.latencyUs);
            }
        }
        if (this.lastSampleUsedGetTimestampMode != zD) {
            this.previousModeSystemTimeUs = this.lastSystemTimeUs;
            this.previousModePositionUs = this.lastPositionUs;
        }
        long j6 = jNanoTime - this.previousModeSystemTimeUs;
        if (j6 < 1000000) {
            long jD0 = this.previousModePositionUs + Util.d0(j6, this.audioTrackPlaybackSpeed);
            long j10 = (j6 * 1000) / 1000000;
            jE = ((jE * j10) + ((1000 - j10) * jD0)) / 1000;
        }
        if (!this.notifiedPositionIncreasing) {
            long j11 = this.lastPositionUs;
            if (jE > j11) {
                this.notifiedPositionIncreasing = true;
                this.listener.b(System.currentTimeMillis() - Util.q1(Util.i0(Util.q1(jE - j11), this.audioTrackPlaybackSpeed)));
            }
        }
        this.lastSystemTimeUs = jNanoTime;
        this.lastPositionUs = jE;
        this.lastSampleUsedGetTimestampMode = zD;
        return jE;
    }

    public boolean h() {
        return ((AudioTrack) Assertions.e(this.audioTrack)).getPlayState() == 3;
    }

    public boolean i(long j6) {
        return this.forceResetWorkaroundTimeMs != -9223372036854775807L && j6 > 0 && SystemClock.elapsedRealtime() - this.forceResetWorkaroundTimeMs >= FORCE_RESET_WORKAROUND_TIMEOUT_MS;
    }

    public boolean j(long j6) {
        int playState = ((AudioTrack) Assertions.e(this.audioTrack)).getPlayState();
        if (this.needsPassthroughWorkarounds) {
            if (playState == 2) {
                this.hasData = false;
                return false;
            }
            if (playState == 1 && d() == 0) {
                return false;
            }
        }
        boolean z6 = this.hasData;
        boolean zG = g(j6);
        this.hasData = zG;
        if (z6 && !zG && playState != 1) {
            this.listener.onUnderrun(this.bufferSize, Util.q1(this.bufferSizeUs));
        }
        return true;
    }

    public void r(AudioTrack audioTrack, boolean z6, int i10, int i11, int i12) {
        this.audioTrack = audioTrack;
        this.outputPcmFrameSize = i11;
        this.bufferSize = i12;
        this.audioTimestampPoller = new AudioTimestampPoller(audioTrack);
        this.outputSampleRate = audioTrack.getSampleRate();
        this.needsPassthroughWorkarounds = z6 && n(i10);
        boolean zC0 = Util.C0(i10);
        this.isOutputPcm = zC0;
        this.bufferSizeUs = zC0 ? Util.W0(i12 / i11, this.outputSampleRate) : -9223372036854775807L;
        this.rawPlaybackHeadPosition = 0L;
        this.rawPlaybackHeadWrapCount = 0L;
        this.passthroughWorkaroundPauseOffset = 0L;
        this.hasData = false;
        this.stopTimestampUs = -9223372036854775807L;
        this.forceResetWorkaroundTimeMs = -9223372036854775807L;
        this.lastLatencySampleTimeUs = 0L;
        this.latencyUs = 0L;
        this.audioTrackPlaybackSpeed = 1.0f;
    }

    public void s(float f) {
        this.audioTrackPlaybackSpeed = f;
        AudioTimestampPoller audioTimestampPoller = this.audioTimestampPoller;
        if (audioTimestampPoller != null) {
            audioTimestampPoller.g();
        }
        q();
    }

    public void t() {
        ((AudioTimestampPoller) Assertions.e(this.audioTimestampPoller)).g();
    }

    public AudioTrackPositionTracker(Listener listener) {
        this.listener = (Listener) Assertions.e(listener);
        if (Util.SDK_INT >= 18) {
            try {
                this.getLatencyMethod = AudioTrack.class.getMethod("getLatency", null);
            } catch (NoSuchMethodException unused) {
            }
        }
        this.playheadOffsets = new long[10];
    }

    private long d() {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long j6 = this.stopTimestampUs;
        if (j6 != -9223372036854775807L) {
            return Math.min(this.endPlaybackHeadPosition, this.stopPlaybackHeadPosition + Util.B(Util.d0((jElapsedRealtime * 1000) - j6, this.audioTrackPlaybackSpeed), this.outputSampleRate));
        }
        if (jElapsedRealtime - this.lastRawPlaybackHeadPositionSampleTimeMs >= 5) {
            u(jElapsedRealtime);
            this.lastRawPlaybackHeadPositionSampleTimeMs = jElapsedRealtime;
        }
        return this.rawPlaybackHeadPosition + (this.rawPlaybackHeadWrapCount << 32);
    }

    private long e() {
        return Util.W0(d(), this.outputSampleRate);
    }

    private void l() {
        long jNanoTime = System.nanoTime() / 1000;
        if (jNanoTime - this.lastPlayheadSampleTimeUs >= 30000) {
            long jE = e();
            if (jE == 0) {
                return;
            }
            this.playheadOffsets[this.nextPlayheadOffsetIndex] = Util.i0(jE, this.audioTrackPlaybackSpeed) - jNanoTime;
            this.nextPlayheadOffsetIndex = (this.nextPlayheadOffsetIndex + 1) % 10;
            int i10 = this.playheadOffsetCount;
            if (i10 < 10) {
                this.playheadOffsetCount = i10 + 1;
            }
            this.lastPlayheadSampleTimeUs = jNanoTime;
            this.smoothedPlayheadOffsetUs = 0L;
            int i11 = 0;
            while (true) {
                int i12 = this.playheadOffsetCount;
                if (i11 >= i12) {
                    break;
                }
                this.smoothedPlayheadOffsetUs += this.playheadOffsets[i11] / ((long) i12);
                i11++;
            }
        }
        if (this.needsPassthroughWorkarounds) {
            return;
        }
        k(jNanoTime);
        m(jNanoTime);
    }

    public int b(long j6) {
        return this.bufferSize - ((int) (j6 - (d() * ((long) this.outputPcmFrameSize))));
    }

    public void f(long j6) {
        this.stopPlaybackHeadPosition = d();
        this.stopTimestampUs = SystemClock.elapsedRealtime() * 1000;
        this.endPlaybackHeadPosition = j6;
    }

    public boolean o() {
        q();
        if (this.stopTimestampUs == -9223372036854775807L) {
            ((AudioTimestampPoller) Assertions.e(this.audioTimestampPoller)).g();
            return true;
        }
        return false;
    }

    public void p() {
        q();
        this.audioTrack = null;
        this.audioTimestampPoller = null;
    }
}
