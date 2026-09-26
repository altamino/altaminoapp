package androidx.media3.exoplayer.video;

import androidx.annotation.VisibleForTesting;
import java.util.Arrays;

/* JADX INFO: loaded from: classes8.dex */
final class FixedFrameRateEstimator {
    public static final int CONSECUTIVE_MATCHING_FRAME_DURATIONS_FOR_SYNC = 15;

    @VisibleForTesting
    static final long MAX_MATCHING_FRAME_DIFFERENCE_NS = 1000000;
    private boolean candidateMatcherActive;
    private int framesWithoutSyncCount;
    private boolean switchToCandidateMatcherWhenSynced;
    private Matcher currentMatcher = new Matcher();
    private Matcher candidateMatcher = new Matcher();
    private long lastFramePresentationTimeNs = -9223372036854775807L;

    private static final class Matcher {
        private long firstFrameDurationNs;
        private long firstFramePresentationTimeNs;
        private long frameCount;
        private long lastFramePresentationTimeNs;
        private long matchingFrameCount;
        private long matchingFrameDurationSumNs;
        private int recentFrameOutlierCount;
        private final boolean[] recentFrameOutlierFlags = new boolean[15];

        public long b() {
            return this.matchingFrameDurationSumNs;
        }

        public boolean e() {
            return this.frameCount > 15 && this.recentFrameOutlierCount == 0;
        }

        private static int c(long j6) {
            return (int) (j6 % 15);
        }

        public long a() {
            long j6 = this.matchingFrameCount;
            if (j6 == 0) {
                return 0L;
            }
            return this.matchingFrameDurationSumNs / j6;
        }

        public boolean d() {
            long j6 = this.frameCount;
            if (j6 == 0) {
                return false;
            }
            return this.recentFrameOutlierFlags[c(j6 - 1)];
        }

        public void f(long j6) {
            long j10 = this.frameCount;
            if (j10 == 0) {
                this.firstFramePresentationTimeNs = j6;
            } else if (j10 == 1) {
                long j11 = j6 - this.firstFramePresentationTimeNs;
                this.firstFrameDurationNs = j11;
                this.matchingFrameDurationSumNs = j11;
                this.matchingFrameCount = 1L;
            } else {
                long j12 = j6 - this.lastFramePresentationTimeNs;
                int iC = c(j10);
                if (Math.abs(j12 - this.firstFrameDurationNs) <= 1000000) {
                    this.matchingFrameCount++;
                    this.matchingFrameDurationSumNs += j12;
                    boolean[] zArr = this.recentFrameOutlierFlags;
                    if (zArr[iC]) {
                        zArr[iC] = false;
                        this.recentFrameOutlierCount--;
                    }
                } else {
                    boolean[] zArr2 = this.recentFrameOutlierFlags;
                    if (!zArr2[iC]) {
                        zArr2[iC] = true;
                        this.recentFrameOutlierCount++;
                    }
                }
            }
            this.frameCount++;
            this.lastFramePresentationTimeNs = j6;
        }

        public void g() {
            this.frameCount = 0L;
            this.matchingFrameCount = 0L;
            this.matchingFrameDurationSumNs = 0L;
            this.recentFrameOutlierCount = 0;
            Arrays.fill(this.recentFrameOutlierFlags, false);
        }
    }

    public int c() {
        return this.framesWithoutSyncCount;
    }

    public boolean e() {
        return this.currentMatcher.e();
    }

    public void f(long j6) {
        this.currentMatcher.f(j6);
        if (this.currentMatcher.e() && !this.switchToCandidateMatcherWhenSynced) {
            this.candidateMatcherActive = false;
        } else if (this.lastFramePresentationTimeNs != -9223372036854775807L) {
            if (!this.candidateMatcherActive || this.candidateMatcher.d()) {
                this.candidateMatcher.g();
                this.candidateMatcher.f(this.lastFramePresentationTimeNs);
            }
            this.candidateMatcherActive = true;
            this.candidateMatcher.f(j6);
        }
        if (this.candidateMatcherActive && this.candidateMatcher.e()) {
            Matcher matcher = this.currentMatcher;
            this.currentMatcher = this.candidateMatcher;
            this.candidateMatcher = matcher;
            this.candidateMatcherActive = false;
            this.switchToCandidateMatcherWhenSynced = false;
        }
        this.lastFramePresentationTimeNs = j6;
        this.framesWithoutSyncCount = this.currentMatcher.e() ? 0 : this.framesWithoutSyncCount + 1;
    }

    public void g() {
        this.currentMatcher.g();
        this.candidateMatcher.g();
        this.candidateMatcherActive = false;
        this.lastFramePresentationTimeNs = -9223372036854775807L;
        this.framesWithoutSyncCount = 0;
    }

    public long a() {
        if (e()) {
            return this.currentMatcher.a();
        }
        return -9223372036854775807L;
    }

    public float b() {
        if (e()) {
            return (float) (1.0E9d / this.currentMatcher.a());
        }
        return -1.0f;
    }

    public long d() {
        if (e()) {
            return this.currentMatcher.b();
        }
        return -9223372036854775807L;
    }
}
