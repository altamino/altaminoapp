package com.google.android.exoplayer2;

import android.os.SystemClock;

/* JADX INFO: loaded from: classes9.dex */
public final class j implements f2 {
    public static final float DEFAULT_FALLBACK_MAX_PLAYBACK_SPEED = 1.03f;
    public static final float DEFAULT_FALLBACK_MIN_PLAYBACK_SPEED = 0.97f;
    public static final long DEFAULT_MAX_LIVE_OFFSET_ERROR_MS_FOR_UNIT_SPEED = 20;
    public static final float DEFAULT_MIN_POSSIBLE_LIVE_OFFSET_SMOOTHING_FACTOR = 0.999f;
    public static final long DEFAULT_MIN_UPDATE_INTERVAL_MS = 1000;
    public static final float DEFAULT_PROPORTIONAL_CONTROL_FACTOR = 0.1f;
    public static final long DEFAULT_TARGET_LIVE_OFFSET_INCREMENT_ON_REBUFFER_MS = 500;
    private float adjustedPlaybackSpeed;
    private long currentTargetLiveOffsetUs;
    private final float fallbackMaxPlaybackSpeed;
    private final float fallbackMinPlaybackSpeed;
    private long idealTargetLiveOffsetUs;
    private long lastPlaybackSpeedUpdateMs;
    private final long maxLiveOffsetErrorUsForUnitSpeed;
    private float maxPlaybackSpeed;
    private long maxTargetLiveOffsetUs;
    private long mediaConfigurationTargetLiveOffsetUs;
    private float minPlaybackSpeed;
    private final float minPossibleLiveOffsetSmoothingFactor;
    private long minTargetLiveOffsetUs;
    private final long minUpdateIntervalMs;
    private final float proportionalControlFactor;
    private long smoothedMinPossibleLiveOffsetDeviationUs;
    private long smoothedMinPossibleLiveOffsetUs;
    private long targetLiveOffsetOverrideUs;
    private final long targetLiveOffsetRebufferDeltaUs;

    public static final class b {
        private float fallbackMinPlaybackSpeed = 0.97f;
        private float fallbackMaxPlaybackSpeed = 1.03f;
        private long minUpdateIntervalMs = 1000;
        private float proportionalControlFactorUs = 1.0E-7f;
        private long maxLiveOffsetErrorUsForUnitSpeed = com.google.android.exoplayer2.util.o0.w0(20);
        private long targetLiveOffsetIncrementOnRebufferUs = com.google.android.exoplayer2.util.o0.w0(500);
        private float minPossibleLiveOffsetSmoothingFactor = 0.999f;

        public j a() {
            return new j(this.fallbackMinPlaybackSpeed, this.fallbackMaxPlaybackSpeed, this.minUpdateIntervalMs, this.proportionalControlFactorUs, this.maxLiveOffsetErrorUsForUnitSpeed, this.targetLiveOffsetIncrementOnRebufferUs, this.minPossibleLiveOffsetSmoothingFactor);
        }
    }

    private void g() {
        long j6 = this.mediaConfigurationTargetLiveOffsetUs;
        if (j6 != -9223372036854775807L) {
            long j10 = this.targetLiveOffsetOverrideUs;
            if (j10 != -9223372036854775807L) {
                j6 = j10;
            }
            long j11 = this.minTargetLiveOffsetUs;
            if (j11 != -9223372036854775807L && j6 < j11) {
                j6 = j11;
            }
            long j12 = this.maxTargetLiveOffsetUs;
            if (j12 != -9223372036854775807L && j6 > j12) {
                j6 = j12;
            }
        } else {
            j6 = -9223372036854775807L;
        }
        if (this.idealTargetLiveOffsetUs == j6) {
            return;
        }
        this.idealTargetLiveOffsetUs = j6;
        this.currentTargetLiveOffsetUs = j6;
        this.smoothedMinPossibleLiveOffsetUs = -9223372036854775807L;
        this.smoothedMinPossibleLiveOffsetDeviationUs = -9223372036854775807L;
        this.lastPlaybackSpeedUpdateMs = -9223372036854775807L;
    }

    private static long h(long j6, long j10, float f) {
        return (long) ((j6 * f) + ((1.0f - f) * j10));
    }

    private void i(long j6, long j10) {
        long j11 = j6 - j10;
        long j12 = this.smoothedMinPossibleLiveOffsetUs;
        if (j12 == -9223372036854775807L) {
            this.smoothedMinPossibleLiveOffsetUs = j11;
            this.smoothedMinPossibleLiveOffsetDeviationUs = 0L;
        } else {
            long jMax = Math.max(j11, h(j12, j11, this.minPossibleLiveOffsetSmoothingFactor));
            this.smoothedMinPossibleLiveOffsetUs = jMax;
            this.smoothedMinPossibleLiveOffsetDeviationUs = h(this.smoothedMinPossibleLiveOffsetDeviationUs, Math.abs(j11 - jMax), this.minPossibleLiveOffsetSmoothingFactor);
        }
    }

    @Override // com.google.android.exoplayer2.f2
    public long b() {
        return this.currentTargetLiveOffsetUs;
    }

    @Override // com.google.android.exoplayer2.f2
    public void c() {
        long j6 = this.currentTargetLiveOffsetUs;
        if (j6 == -9223372036854775807L) {
            return;
        }
        long j10 = j6 + this.targetLiveOffsetRebufferDeltaUs;
        this.currentTargetLiveOffsetUs = j10;
        long j11 = this.maxTargetLiveOffsetUs;
        if (j11 != -9223372036854775807L && j10 > j11) {
            this.currentTargetLiveOffsetUs = j11;
        }
        this.lastPlaybackSpeedUpdateMs = -9223372036854775807L;
    }

    private j(float f, float f6, long j6, float f7, long j10, long j11, float f10) {
        this.fallbackMinPlaybackSpeed = f;
        this.fallbackMaxPlaybackSpeed = f6;
        this.minUpdateIntervalMs = j6;
        this.proportionalControlFactor = f7;
        this.maxLiveOffsetErrorUsForUnitSpeed = j10;
        this.targetLiveOffsetRebufferDeltaUs = j11;
        this.minPossibleLiveOffsetSmoothingFactor = f10;
        this.mediaConfigurationTargetLiveOffsetUs = -9223372036854775807L;
        this.targetLiveOffsetOverrideUs = -9223372036854775807L;
        this.minTargetLiveOffsetUs = -9223372036854775807L;
        this.maxTargetLiveOffsetUs = -9223372036854775807L;
        this.minPlaybackSpeed = f;
        this.maxPlaybackSpeed = f6;
        this.adjustedPlaybackSpeed = 1.0f;
        this.lastPlaybackSpeedUpdateMs = -9223372036854775807L;
        this.idealTargetLiveOffsetUs = -9223372036854775807L;
        this.currentTargetLiveOffsetUs = -9223372036854775807L;
        this.smoothedMinPossibleLiveOffsetUs = -9223372036854775807L;
        this.smoothedMinPossibleLiveOffsetDeviationUs = -9223372036854775807L;
    }

    private void f(long j6) {
        long j10 = this.smoothedMinPossibleLiveOffsetUs + (this.smoothedMinPossibleLiveOffsetDeviationUs * 3);
        if (this.currentTargetLiveOffsetUs > j10) {
            float fW0 = com.google.android.exoplayer2.util.o0.w0(this.minUpdateIntervalMs);
            this.currentTargetLiveOffsetUs = com.google.common.primitives.g.c(j10, this.idealTargetLiveOffsetUs, this.currentTargetLiveOffsetUs - (((long) ((this.adjustedPlaybackSpeed - 1.0f) * fW0)) + ((long) ((this.maxPlaybackSpeed - 1.0f) * fW0))));
            return;
        }
        long jQ = com.google.android.exoplayer2.util.o0.q(j6 - ((long) (Math.max(0.0f, this.adjustedPlaybackSpeed - 1.0f) / this.proportionalControlFactor)), this.currentTargetLiveOffsetUs, j10);
        this.currentTargetLiveOffsetUs = jQ;
        long j11 = this.maxTargetLiveOffsetUs;
        if (j11 == -9223372036854775807L || jQ <= j11) {
            return;
        }
        this.currentTargetLiveOffsetUs = j11;
    }

    @Override // com.google.android.exoplayer2.f2
    public float a(long j6, long j10) {
        if (this.mediaConfigurationTargetLiveOffsetUs == -9223372036854775807L) {
            return 1.0f;
        }
        i(j6, j10);
        if (this.lastPlaybackSpeedUpdateMs != -9223372036854775807L && SystemClock.elapsedRealtime() - this.lastPlaybackSpeedUpdateMs < this.minUpdateIntervalMs) {
            return this.adjustedPlaybackSpeed;
        }
        this.lastPlaybackSpeedUpdateMs = SystemClock.elapsedRealtime();
        f(j6);
        long j11 = j6 - this.currentTargetLiveOffsetUs;
        if (Math.abs(j11) < this.maxLiveOffsetErrorUsForUnitSpeed) {
            this.adjustedPlaybackSpeed = 1.0f;
        } else {
            this.adjustedPlaybackSpeed = com.google.android.exoplayer2.util.o0.o((this.proportionalControlFactor * j11) + 1.0f, this.minPlaybackSpeed, this.maxPlaybackSpeed);
        }
        return this.adjustedPlaybackSpeed;
    }

    @Override // com.google.android.exoplayer2.f2
    public void d(long j6) {
        this.targetLiveOffsetOverrideUs = j6;
        g();
    }

    @Override // com.google.android.exoplayer2.f2
    public void e(i2.g gVar) {
        this.mediaConfigurationTargetLiveOffsetUs = com.google.android.exoplayer2.util.o0.w0(gVar.targetOffsetMs);
        this.minTargetLiveOffsetUs = com.google.android.exoplayer2.util.o0.w0(gVar.minOffsetMs);
        this.maxTargetLiveOffsetUs = com.google.android.exoplayer2.util.o0.w0(gVar.maxOffsetMs);
        float f = gVar.minPlaybackSpeed;
        if (f == -3.4028235E38f) {
            f = this.fallbackMinPlaybackSpeed;
        }
        this.minPlaybackSpeed = f;
        float f6 = gVar.maxPlaybackSpeed;
        if (f6 == -3.4028235E38f) {
            f6 = this.fallbackMaxPlaybackSpeed;
        }
        this.maxPlaybackSpeed = f6;
        if (f == 1.0f && f6 == 1.0f) {
            this.mediaConfigurationTargetLiveOffsetUs = -9223372036854775807L;
        }
        g();
    }
}
