package androidx.media3.exoplayer.audio;

import android.annotation.TargetApi;
import android.media.AudioTimestamp;
import android.media.AudioTrack;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.media3.common.util.Util;
import androidx.work.WorkRequest;

/* JADX INFO: loaded from: classes9.dex */
final class AudioTimestampPoller {
    private static final int ERROR_POLL_INTERVAL_US = 500000;
    private static final int FAST_POLL_INTERVAL_US = 10000;
    private static final int INITIALIZING_DURATION_US = 500000;
    private static final int SLOW_POLL_INTERVAL_US = 10000000;
    private static final int STATE_ERROR = 4;
    private static final int STATE_INITIALIZING = 0;
    private static final int STATE_NO_TIMESTAMP = 3;
    private static final int STATE_TIMESTAMP = 1;
    private static final int STATE_TIMESTAMP_ADVANCING = 2;

    @Nullable
    private final AudioTimestampV19 audioTimestamp;
    private long initialTimestampPositionFrames;
    private long initializeSystemTimeUs;
    private long lastTimestampSampleTimeUs;
    private long sampleIntervalUs;
    private int state;

    @RequiresApi
    private static final class AudioTimestampV19 {
        private final AudioTimestamp audioTimestamp = new AudioTimestamp();
        private final AudioTrack audioTrack;
        private long lastTimestampPositionFrames;
        private long lastTimestampRawPositionFrames;
        private long rawTimestampFramePositionWrapCount;

        public long a() {
            return this.lastTimestampPositionFrames;
        }

        public long b() {
            return this.audioTimestamp.nanoTime / 1000;
        }

        public boolean c() {
            boolean timestamp = this.audioTrack.getTimestamp(this.audioTimestamp);
            if (timestamp) {
                long j6 = this.audioTimestamp.framePosition;
                if (this.lastTimestampRawPositionFrames > j6) {
                    this.rawTimestampFramePositionWrapCount++;
                }
                this.lastTimestampRawPositionFrames = j6;
                this.lastTimestampPositionFrames = j6 + (this.rawTimestampFramePositionWrapCount << 32);
            }
            return timestamp;
        }

        public AudioTimestampV19(AudioTrack audioTrack) {
            this.audioTrack = audioTrack;
        }
    }

    public boolean d() {
        return this.state == 2;
    }

    public void f() {
        h(4);
    }

    private void h(int i10) {
        this.state = i10;
        if (i10 == 0) {
            this.lastTimestampSampleTimeUs = 0L;
            this.initialTimestampPositionFrames = -1L;
            this.initializeSystemTimeUs = System.nanoTime() / 1000;
            this.sampleIntervalUs = WorkRequest.MIN_BACKOFF_MILLIS;
            return;
        }
        if (i10 == 1) {
            this.sampleIntervalUs = WorkRequest.MIN_BACKOFF_MILLIS;
            return;
        }
        if (i10 == 2 || i10 == 3) {
            this.sampleIntervalUs = 10000000L;
        } else {
            if (i10 != 4) {
                throw new IllegalStateException();
            }
            this.sampleIntervalUs = 500000L;
        }
    }

    public void a() {
        if (this.state == 4) {
            g();
        }
    }

    @TargetApi(19)
    public long b() {
        AudioTimestampV19 audioTimestampV19 = this.audioTimestamp;
        if (audioTimestampV19 != null) {
            return audioTimestampV19.a();
        }
        return -1L;
    }

    @TargetApi(19)
    public long c() {
        AudioTimestampV19 audioTimestampV19 = this.audioTimestamp;
        if (audioTimestampV19 != null) {
            return audioTimestampV19.b();
        }
        return -9223372036854775807L;
    }

    @TargetApi(19)
    public boolean e(long j6) {
        AudioTimestampV19 audioTimestampV19 = this.audioTimestamp;
        if (audioTimestampV19 == null || j6 - this.lastTimestampSampleTimeUs < this.sampleIntervalUs) {
            return false;
        }
        this.lastTimestampSampleTimeUs = j6;
        boolean zC = audioTimestampV19.c();
        int i10 = this.state;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 != 4) {
                            throw new IllegalStateException();
                        }
                    } else if (zC) {
                        g();
                    }
                } else if (!zC) {
                    g();
                }
            } else if (!zC) {
                g();
            } else if (this.audioTimestamp.a() > this.initialTimestampPositionFrames) {
                h(2);
            }
        } else if (zC) {
            if (this.audioTimestamp.b() < this.initializeSystemTimeUs) {
                return false;
            }
            this.initialTimestampPositionFrames = this.audioTimestamp.a();
            h(1);
        } else if (j6 - this.initializeSystemTimeUs > 500000) {
            h(3);
        }
        return zC;
    }

    public void g() {
        if (this.audioTimestamp != null) {
            h(0);
        }
    }

    public AudioTimestampPoller(AudioTrack audioTrack) {
        if (Util.SDK_INT >= 19) {
            this.audioTimestamp = new AudioTimestampV19(audioTrack);
            g();
        } else {
            this.audioTimestamp = null;
            h(3);
        }
    }
}
