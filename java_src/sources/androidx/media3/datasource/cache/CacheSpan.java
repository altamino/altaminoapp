package androidx.media3.datasource.cache;

import androidx.annotation.Nullable;
import androidx.media3.common.util.UnstableApi;
import java.io.File;

/* JADX INFO: loaded from: classes9.dex */
@UnstableApi
public class CacheSpan implements Comparable<CacheSpan> {

    @Nullable
    public final File file;
    public final boolean isCached;
    public final String key;
    public final long lastTouchTimestamp;
    public final long length;
    public final long position;

    public CacheSpan(String str, long j6, long j10) {
        this(str, j6, j10, -9223372036854775807L, null);
    }

    public boolean b() {
        return !this.isCached;
    }

    public boolean c() {
        return this.length == -1;
    }

    public CacheSpan(String str, long j6, long j10, long j11, @Nullable File file) {
        this.key = str;
        this.position = j6;
        this.length = j10;
        this.isCached = file != null;
        this.file = file;
        this.lastTouchTimestamp = j11;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(CacheSpan cacheSpan) {
        if (!this.key.equals(cacheSpan.key)) {
            return this.key.compareTo(cacheSpan.key);
        }
        long j6 = this.position - cacheSpan.position;
        if (j6 == 0) {
            return 0;
        }
        return j6 < 0 ? -1 : 1;
    }

    public String toString() {
        return "[" + this.position + ", " + this.length + "]";
    }
}
