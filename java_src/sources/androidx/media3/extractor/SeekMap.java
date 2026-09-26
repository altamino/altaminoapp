package androidx.media3.extractor;

import androidx.annotation.Nullable;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;

/* JADX INFO: loaded from: classes6.dex */
@UnstableApi
public interface SeekMap {

    public static final class SeekPoints {
        public final SeekPoint first;
        public final SeekPoint second;

        public SeekPoints(SeekPoint seekPoint) {
            this(seekPoint, seekPoint);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || SeekPoints.class != obj.getClass()) {
                return false;
            }
            SeekPoints seekPoints = (SeekPoints) obj;
            return this.first.equals(seekPoints.first) && this.second.equals(seekPoints.second);
        }

        public SeekPoints(SeekPoint seekPoint, SeekPoint seekPoint2) {
            this.first = (SeekPoint) Assertions.e(seekPoint);
            this.second = (SeekPoint) Assertions.e(seekPoint2);
        }

        public int hashCode() {
            return (this.first.hashCode() * 31) + this.second.hashCode();
        }

        public String toString() {
            String str;
            StringBuilder sb = new StringBuilder();
            sb.append("[");
            sb.append(this.first);
            if (this.first.equals(this.second)) {
                str = "";
            } else {
                str = ", " + this.second;
            }
            sb.append(str);
            sb.append("]");
            return sb.toString();
        }
    }

    public static class Unseekable implements SeekMap {
        private final long durationUs;
        private final SeekPoints startSeekPoints;

        public Unseekable(long j6) {
            this(j6, 0L);
        }

        @Override // androidx.media3.extractor.SeekMap
        public long getDurationUs() {
            return this.durationUs;
        }

        @Override // androidx.media3.extractor.SeekMap
        public SeekPoints getSeekPoints(long j6) {
            return this.startSeekPoints;
        }

        @Override // androidx.media3.extractor.SeekMap
        public boolean isSeekable() {
            return false;
        }

        public Unseekable(long j6, long j10) {
            this.durationUs = j6;
            this.startSeekPoints = new SeekPoints(j10 == 0 ? SeekPoint.START : new SeekPoint(0L, j10));
        }
    }

    long getDurationUs();

    SeekPoints getSeekPoints(long j6);

    boolean isSeekable();
}
