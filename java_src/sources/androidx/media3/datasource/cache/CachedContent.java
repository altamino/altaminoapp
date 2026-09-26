package androidx.media3.datasource.cache;

import androidx.annotation.Nullable;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Log;
import java.io.File;
import java.util.ArrayList;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes2.dex */
final class CachedContent {
    private static final String TAG = "CachedContent";
    private final TreeSet<SimpleCacheSpan> cachedSpans;
    public final int id;
    public final String key;
    private final ArrayList<Range> lockedRanges;
    private DefaultContentMetadata metadata;

    public CachedContent(int i10, String str) {
        this(i10, str, DefaultContentMetadata.EMPTY);
    }

    public DefaultContentMetadata d() {
        return this.metadata;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || CachedContent.class != obj.getClass()) {
            return false;
        }
        CachedContent cachedContent = (CachedContent) obj;
        return this.id == cachedContent.id && this.key.equals(cachedContent.key) && this.cachedSpans.equals(cachedContent.cachedSpans) && this.metadata.equals(cachedContent.metadata);
    }

    public TreeSet<SimpleCacheSpan> f() {
        return this.cachedSpans;
    }

    public boolean h(long j6, long j10) {
        for (int i10 = 0; i10 < this.lockedRanges.size(); i10++) {
            if (this.lockedRanges.get(i10).a(j6, j10)) {
                return true;
            }
        }
        return false;
    }

    public boolean j(long j6, long j10) {
        for (int i10 = 0; i10 < this.lockedRanges.size(); i10++) {
            if (this.lockedRanges.get(i10).b(j6, j10)) {
                return false;
            }
        }
        this.lockedRanges.add(new Range(j6, j10));
        return true;
    }

    public void m(long j6) {
        for (int i10 = 0; i10 < this.lockedRanges.size(); i10++) {
            if (this.lockedRanges.get(i10).position == j6) {
                this.lockedRanges.remove(i10);
                return;
            }
        }
        throw new IllegalStateException();
    }

    private static final class Range {
        public final long length;
        public final long position;

        public boolean a(long j6, long j10) {
            long j11 = this.length;
            if (j11 == -1) {
                return j6 >= this.position;
            }
            if (j10 == -1) {
                return false;
            }
            long j12 = this.position;
            return j12 <= j6 && j6 + j10 <= j12 + j11;
        }

        public boolean b(long j6, long j10) {
            long j11 = this.position;
            if (j11 > j6) {
                return j10 == -1 || j6 + j10 > j11;
            }
            long j12 = this.length;
            return j12 == -1 || j11 + j12 > j6;
        }

        public Range(long j6, long j10) {
            this.position = j6;
            this.length = j10;
        }
    }

    public CachedContent(int i10, String str, DefaultContentMetadata defaultContentMetadata) {
        this.id = i10;
        this.key = str;
        this.metadata = defaultContentMetadata;
        this.cachedSpans = new TreeSet<>();
        this.lockedRanges = new ArrayList<>();
    }

    public void a(SimpleCacheSpan simpleCacheSpan) {
        this.cachedSpans.add(simpleCacheSpan);
    }

    public boolean b(ContentMetadataMutations contentMetadataMutations) {
        DefaultContentMetadata defaultContentMetadata = this.metadata;
        DefaultContentMetadata defaultContentMetadataC = defaultContentMetadata.c(contentMetadataMutations);
        this.metadata = defaultContentMetadataC;
        return !defaultContentMetadataC.equals(defaultContentMetadata);
    }

    public long c(long j6, long j10) {
        Assertions.a(j6 >= 0);
        Assertions.a(j10 >= 0);
        SimpleCacheSpan simpleCacheSpanE = e(j6, j10);
        if (simpleCacheSpanE.b()) {
            return -Math.min(simpleCacheSpanE.c() ? Long.MAX_VALUE : simpleCacheSpanE.length, j10);
        }
        long j11 = j6 + j10;
        long j12 = j11 >= 0 ? j11 : Long.MAX_VALUE;
        long jMax = simpleCacheSpanE.position + simpleCacheSpanE.length;
        if (jMax < j12) {
            for (SimpleCacheSpan simpleCacheSpan : this.cachedSpans.tailSet(simpleCacheSpanE, false)) {
                long j13 = simpleCacheSpan.position;
                if (j13 > jMax) {
                    break;
                }
                jMax = Math.max(jMax, j13 + simpleCacheSpan.length);
                if (jMax >= j12) {
                    break;
                }
            }
        }
        return Math.min(jMax - j6, j10);
    }

    public SimpleCacheSpan e(long j6, long j10) {
        SimpleCacheSpan simpleCacheSpanI = SimpleCacheSpan.i(this.key, j6);
        SimpleCacheSpan simpleCacheSpanFloor = this.cachedSpans.floor(simpleCacheSpanI);
        if (simpleCacheSpanFloor != null && simpleCacheSpanFloor.position + simpleCacheSpanFloor.length > j6) {
            return simpleCacheSpanFloor;
        }
        SimpleCacheSpan simpleCacheSpanCeiling = this.cachedSpans.ceiling(simpleCacheSpanI);
        if (simpleCacheSpanCeiling != null) {
            long j11 = simpleCacheSpanCeiling.position - j6;
            j10 = j10 == -1 ? j11 : Math.min(j11, j10);
        }
        return SimpleCacheSpan.h(this.key, j6, j10);
    }

    public boolean g() {
        return this.cachedSpans.isEmpty();
    }

    public int hashCode() {
        return (((this.id * 31) + this.key.hashCode()) * 31) + this.metadata.hashCode();
    }

    public boolean i() {
        return this.lockedRanges.isEmpty();
    }

    public boolean k(CacheSpan cacheSpan) {
        if (!this.cachedSpans.remove(cacheSpan)) {
            return false;
        }
        File file = cacheSpan.file;
        if (file == null) {
            return true;
        }
        file.delete();
        return true;
    }

    public SimpleCacheSpan l(SimpleCacheSpan simpleCacheSpan, long j6, boolean z6) {
        Assertions.g(this.cachedSpans.remove(simpleCacheSpan));
        File file = (File) Assertions.e(simpleCacheSpan.file);
        if (z6) {
            File fileJ = SimpleCacheSpan.j((File) Assertions.e(file.getParentFile()), this.id, simpleCacheSpan.position, j6);
            if (file.renameTo(fileJ)) {
                file = fileJ;
            } else {
                Log.i(TAG, "Failed to rename " + file + " to " + fileJ);
            }
        }
        SimpleCacheSpan simpleCacheSpanD = simpleCacheSpan.d(file, j6);
        this.cachedSpans.add(simpleCacheSpanD);
        return simpleCacheSpanD;
    }
}
