package androidx.media3.exoplayer.dash.manifest;

import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.media3.common.Format;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import com.google.common.math.a;
import java.math.BigInteger;
import java.math.RoundingMode;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
@UnstableApi
public abstract class SegmentBase {

    @Nullable
    final RangedUri initialization;
    final long presentationTimeOffset;
    final long timescale;

    public static abstract class MultiSegmentBase extends SegmentBase {

        @VisibleForTesting
        final long availabilityTimeOffsetUs;
        final long duration;
        private final long periodStartUnixTimeUs;

        @Nullable
        final List<SegmentTimelineElement> segmentTimeline;
        final long startNumber;
        private final long timeShiftBufferDepthUs;

        public MultiSegmentBase(@Nullable RangedUri rangedUri, long j6, long j10, long j11, long j12, @Nullable List<SegmentTimelineElement> list, long j13, long j14, long j15) {
            super(rangedUri, j6, j10);
            this.startNumber = j11;
            this.duration = j12;
            this.segmentTimeline = list;
            this.availabilityTimeOffsetUs = j13;
            this.timeShiftBufferDepthUs = j14;
            this.periodStartUnixTimeUs = j15;
        }

        public long e() {
            return this.startNumber;
        }

        public abstract long g(long j6);

        public abstract RangedUri k(Representation representation, long j6);

        public boolean l() {
            return this.segmentTimeline != null;
        }

        public long f(long j6, long j10) {
            if (this.segmentTimeline != null) {
                return -9223372036854775807L;
            }
            long jD = d(j6, j10) + c(j6, j10);
            return (j(jD) + h(jD, j6)) - this.availabilityTimeOffsetUs;
        }

        public final long h(long j6, long j10) {
            List<SegmentTimelineElement> list = this.segmentTimeline;
            if (list != null) {
                return (list.get((int) (j6 - this.startNumber)).duration * 1000000) / this.timescale;
            }
            long jG = g(j10);
            return (jG == -1 || j6 != (e() + jG) - 1) ? (this.duration * 1000000) / this.timescale : j10 - j(j6);
        }

        public final long j(long j6) {
            List<SegmentTimelineElement> list = this.segmentTimeline;
            return Util.X0(list != null ? list.get((int) (j6 - this.startNumber)).startTime - this.presentationTimeOffset : (j6 - this.startNumber) * this.duration, 1000000L, this.timescale);
        }

        public long c(long j6, long j10) {
            long jG = g(j6);
            if (jG != -1) {
                return jG;
            }
            return (int) (i((j10 - this.periodStartUnixTimeUs) + this.availabilityTimeOffsetUs, j6) - d(j6, j10));
        }

        public long d(long j6, long j10) {
            if (g(j6) == -1) {
                long j11 = this.timeShiftBufferDepthUs;
                if (j11 != -9223372036854775807L) {
                    return Math.max(e(), i((j10 - this.periodStartUnixTimeUs) - j11, j6));
                }
            }
            return e();
        }

        public long i(long j6, long j10) {
            long jE = e();
            long jG = g(j10);
            if (jG == 0) {
                return jE;
            }
            if (this.segmentTimeline == null) {
                long j11 = this.startNumber + (j6 / ((this.duration * 1000000) / this.timescale));
                if (j11 >= jE) {
                    if (jG == -1) {
                        return j11;
                    }
                    return Math.min(j11, (jE + jG) - 1);
                }
                return jE;
            }
            long j12 = (jG + jE) - 1;
            long j13 = jE;
            while (j13 <= j12) {
                long j14 = ((j12 - j13) / 2) + j13;
                long j15 = j(j14);
                if (j15 < j6) {
                    j13 = j14 + 1;
                } else if (j15 > j6) {
                    j12 = j14 - 1;
                } else {
                    return j14;
                }
            }
            if (j13 == jE) {
                return j13;
            }
            return j12;
        }
    }

    public static final class SegmentList extends MultiSegmentBase {

        @Nullable
        final List<RangedUri> mediaSegments;

        @Override // androidx.media3.exoplayer.dash.manifest.SegmentBase.MultiSegmentBase
        public boolean l() {
            return true;
        }

        public SegmentList(RangedUri rangedUri, long j6, long j10, long j11, long j12, @Nullable List<SegmentTimelineElement> list, long j13, @Nullable List<RangedUri> list2, long j14, long j15) {
            super(rangedUri, j6, j10, j11, j12, list, j13, j14, j15);
            this.mediaSegments = list2;
        }

        @Override // androidx.media3.exoplayer.dash.manifest.SegmentBase.MultiSegmentBase
        public long g(long j6) {
            return this.mediaSegments.size();
        }

        @Override // androidx.media3.exoplayer.dash.manifest.SegmentBase.MultiSegmentBase
        public RangedUri k(Representation representation, long j6) {
            return this.mediaSegments.get((int) (j6 - this.startNumber));
        }
    }

    public static final class SegmentTemplate extends MultiSegmentBase {
        final long endNumber;

        @Nullable
        final UrlTemplate initializationTemplate;

        @Nullable
        final UrlTemplate mediaTemplate;

        @Override // androidx.media3.exoplayer.dash.manifest.SegmentBase.MultiSegmentBase
        public RangedUri k(Representation representation, long j6) {
            List<SegmentTimelineElement> list = this.segmentTimeline;
            long j10 = list != null ? list.get((int) (j6 - this.startNumber)).startTime : (j6 - this.startNumber) * this.duration;
            UrlTemplate urlTemplate = this.mediaTemplate;
            Format format = representation.format;
            return new RangedUri(urlTemplate.a(format.id, j6, format.bitrate, j10), 0L, -1L);
        }

        public SegmentTemplate(RangedUri rangedUri, long j6, long j10, long j11, long j12, long j13, @Nullable List<SegmentTimelineElement> list, long j14, @Nullable UrlTemplate urlTemplate, @Nullable UrlTemplate urlTemplate2, long j15, long j16) {
            super(rangedUri, j6, j10, j11, j13, list, j14, j15, j16);
            this.initializationTemplate = urlTemplate;
            this.mediaTemplate = urlTemplate2;
            this.endNumber = j12;
        }

        @Override // androidx.media3.exoplayer.dash.manifest.SegmentBase
        @Nullable
        public RangedUri a(Representation representation) {
            UrlTemplate urlTemplate = this.initializationTemplate;
            if (urlTemplate == null) {
                return super.a(representation);
            }
            Format format = representation.format;
            return new RangedUri(urlTemplate.a(format.id, 0L, format.bitrate, 0L), 0L, -1L);
        }

        @Override // androidx.media3.exoplayer.dash.manifest.SegmentBase.MultiSegmentBase
        public long g(long j6) {
            List<SegmentTimelineElement> list = this.segmentTimeline;
            if (list != null) {
                return list.size();
            }
            long j10 = this.endNumber;
            if (j10 != -1) {
                return (j10 - this.startNumber) + 1;
            }
            if (j6 != -9223372036854775807L) {
                return a.a(BigInteger.valueOf(j6).multiply(BigInteger.valueOf(this.timescale)), BigInteger.valueOf(this.duration).multiply(BigInteger.valueOf(1000000L)), RoundingMode.CEILING).longValue();
            }
            return -1L;
        }
    }

    public static class SingleSegmentBase extends SegmentBase {
        final long indexLength;
        final long indexStart;

        public SingleSegmentBase(@Nullable RangedUri rangedUri, long j6, long j10, long j11, long j12) {
            super(rangedUri, j6, j10);
            this.indexStart = j11;
            this.indexLength = j12;
        }

        public SingleSegmentBase() {
            this(null, 1L, 0L, 0L, 0L);
        }

        @Nullable
        public RangedUri c() {
            long j6 = this.indexLength;
            if (j6 <= 0) {
                return null;
            }
            return new RangedUri(null, this.indexStart, j6);
        }
    }

    @Nullable
    public RangedUri a(Representation representation) {
        return this.initialization;
    }

    public static final class SegmentTimelineElement {
        final long duration;
        final long startTime;

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || SegmentTimelineElement.class != obj.getClass()) {
                return false;
            }
            SegmentTimelineElement segmentTimelineElement = (SegmentTimelineElement) obj;
            return this.startTime == segmentTimelineElement.startTime && this.duration == segmentTimelineElement.duration;
        }

        public int hashCode() {
            return (((int) this.startTime) * 31) + ((int) this.duration);
        }

        public SegmentTimelineElement(long j6, long j10) {
            this.startTime = j6;
            this.duration = j10;
        }
    }

    public long b() {
        return Util.X0(this.presentationTimeOffset, 1000000L, this.timescale);
    }

    public SegmentBase(@Nullable RangedUri rangedUri, long j6, long j10) {
        this.initialization = rangedUri;
        this.timescale = j6;
        this.presentationTimeOffset = j10;
    }
}
