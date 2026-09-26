package androidx.media3.exoplayer.source.ads;

import androidx.media3.common.AdPlaybackState;
import androidx.media3.common.MediaPeriodId;
import androidx.media3.common.util.UnstableApi;

/* JADX INFO: loaded from: classes6.dex */
@UnstableApi
public final class ServerSideAdInsertionUtil {
    public static long d(long j6, int i10, AdPlaybackState adPlaybackState) {
        if (i10 == -1) {
            i10 = adPlaybackState.adGroupCount;
        }
        long j10 = 0;
        for (int i11 = adPlaybackState.removedAdGroupCount; i11 < i10; i11++) {
            AdPlaybackState.AdGroup adGroupD = adPlaybackState.d(i11);
            long j11 = adGroupD.timeUs;
            if (j11 == Long.MIN_VALUE || j11 > j6 - j10) {
                break;
            }
            for (int i12 = 0; i12 < a(adPlaybackState, i11); i12++) {
                j10 += adGroupD.durationsUs[i12];
            }
            long j12 = adGroupD.contentResumeOffsetUs;
            j10 -= j12;
            long j13 = adGroupD.timeUs;
            long j14 = j6 - j10;
            if (j12 + j13 > j14) {
                return Math.max(j13, j14);
            }
        }
        return j6 - j10;
    }

    public static long g(long j6, int i10, AdPlaybackState adPlaybackState) {
        if (i10 == -1) {
            i10 = adPlaybackState.adGroupCount;
        }
        long j10 = 0;
        for (int i11 = adPlaybackState.removedAdGroupCount; i11 < i10; i11++) {
            AdPlaybackState.AdGroup adGroupD = adPlaybackState.d(i11);
            long j11 = adGroupD.timeUs;
            if (j11 == Long.MIN_VALUE || j11 > j6) {
                break;
            }
            long j12 = j11 + j10;
            for (int i12 = 0; i12 < a(adPlaybackState, i11); i12++) {
                j10 += adGroupD.durationsUs[i12];
            }
            long j13 = adGroupD.contentResumeOffsetUs;
            j10 -= j13;
            if (adGroupD.timeUs + j13 > j6) {
                return Math.max(j12, j6 + j10);
            }
        }
        return j6 + j10;
    }

    private ServerSideAdInsertionUtil() {
    }

    public static int a(AdPlaybackState adPlaybackState, int i10) {
        int i11 = adPlaybackState.d(i10).count;
        if (i11 == -1) {
            return 0;
        }
        return i11;
    }

    public static long b(long j6, MediaPeriodId mediaPeriodId, AdPlaybackState adPlaybackState) {
        if (mediaPeriodId.c()) {
            return c(j6, mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup, adPlaybackState);
        }
        return d(j6, mediaPeriodId.nextAdGroupIndex, adPlaybackState);
    }

    public static long c(long j6, int i10, int i11, AdPlaybackState adPlaybackState) {
        int i12;
        AdPlaybackState.AdGroup adGroupD = adPlaybackState.d(i10);
        long j10 = j6 - adGroupD.timeUs;
        int i13 = adPlaybackState.removedAdGroupCount;
        while (true) {
            i12 = 0;
            if (i13 >= i10) {
                break;
            }
            AdPlaybackState.AdGroup adGroupD2 = adPlaybackState.d(i13);
            while (i12 < a(adPlaybackState, i13)) {
                j10 -= adGroupD2.durationsUs[i12];
                i12++;
            }
            j10 += adGroupD2.contentResumeOffsetUs;
            i13++;
        }
        if (i11 < a(adPlaybackState, i10)) {
            while (i12 < i11) {
                j10 -= adGroupD.durationsUs[i12];
                i12++;
            }
        }
        return j10;
    }

    public static long e(long j6, MediaPeriodId mediaPeriodId, AdPlaybackState adPlaybackState) {
        if (mediaPeriodId.c()) {
            return f(j6, mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup, adPlaybackState);
        }
        return g(j6, mediaPeriodId.nextAdGroupIndex, adPlaybackState);
    }

    public static long f(long j6, int i10, int i11, AdPlaybackState adPlaybackState) {
        int i12;
        AdPlaybackState.AdGroup adGroupD = adPlaybackState.d(i10);
        long j10 = j6 + adGroupD.timeUs;
        int i13 = adPlaybackState.removedAdGroupCount;
        while (true) {
            i12 = 0;
            if (i13 >= i10) {
                break;
            }
            AdPlaybackState.AdGroup adGroupD2 = adPlaybackState.d(i13);
            while (i12 < a(adPlaybackState, i13)) {
                j10 += adGroupD2.durationsUs[i12];
                i12++;
            }
            j10 -= adGroupD2.contentResumeOffsetUs;
            i13++;
        }
        if (i11 < a(adPlaybackState, i10)) {
            while (i12 < i11) {
                j10 += adGroupD.durationsUs[i12];
                i12++;
            }
        }
        return j10;
    }
}
