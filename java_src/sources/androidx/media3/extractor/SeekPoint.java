package androidx.media3.extractor;

import androidx.annotation.Nullable;
import androidx.media3.common.util.UnstableApi;

/* JADX INFO: loaded from: classes9.dex */
@UnstableApi
public final class SeekPoint {
    public static final SeekPoint START = new SeekPoint(0, 0);
    public final long position;
    public final long timeUs;

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || SeekPoint.class != obj.getClass()) {
            return false;
        }
        SeekPoint seekPoint = (SeekPoint) obj;
        return this.timeUs == seekPoint.timeUs && this.position == seekPoint.position;
    }

    public int hashCode() {
        return (((int) this.timeUs) * 31) + ((int) this.position);
    }

    public String toString() {
        return "[timeUs=" + this.timeUs + ", position=" + this.position + "]";
    }

    public SeekPoint(long j6, long j10) {
        this.timeUs = j6;
        this.position = j10;
    }
}
