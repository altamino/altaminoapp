package androidx.media3.exoplayer.upstream;

import androidx.annotation.Nullable;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.cache.Cache;
import androidx.media3.datasource.cache.CacheSpan;
import androidx.media3.extractor.ChunkIndex;
import java.util.Arrays;
import java.util.Iterator;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes10.dex */
@UnstableApi
public final class CachedRegionTracker implements Cache.Listener {
    public static final int CACHED_TO_END = -2;
    public static final int NOT_CACHED = -1;
    private static final String TAG = "CachedRegionTracker";
    private final Cache cache;
    private final String cacheKey;
    private final ChunkIndex chunkIndex;
    private final TreeSet<Region> regions = new TreeSet<>();
    private final Region lookupRegion = new Region(0, 0);

    private static class Region implements Comparable<Region> {
        public long endOffset;
        public int endOffsetIndex;
        public long startOffset;

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(Region region) {
            return Util.o(this.startOffset, region.startOffset);
        }

        public Region(long j6, long j10) {
            this.startOffset = j6;
            this.endOffset = j10;
        }
    }

    @Override // androidx.media3.datasource.cache.Cache.Listener
    public void c(Cache cache, CacheSpan cacheSpan, CacheSpan cacheSpan2) {
    }

    @Override // androidx.media3.datasource.cache.Cache.Listener
    public synchronized void d(Cache cache, CacheSpan cacheSpan) {
        f(cacheSpan);
    }

    @Override // androidx.media3.datasource.cache.Cache.Listener
    public synchronized void e(Cache cache, CacheSpan cacheSpan) {
        long j6 = cacheSpan.position;
        Region region = new Region(j6, cacheSpan.length + j6);
        Region regionFloor = this.regions.floor(region);
        if (regionFloor == null) {
            Log.c(TAG, "Removed a span we were not aware of");
            return;
        }
        this.regions.remove(regionFloor);
        long j10 = regionFloor.startOffset;
        long j11 = region.startOffset;
        if (j10 < j11) {
            Region region2 = new Region(j10, j11);
            int iBinarySearch = Arrays.binarySearch(this.chunkIndex.offsets, region2.endOffset);
            if (iBinarySearch < 0) {
                iBinarySearch = (-iBinarySearch) - 2;
            }
            region2.endOffsetIndex = iBinarySearch;
            this.regions.add(region2);
        }
        long j12 = regionFloor.endOffset;
        long j13 = region.endOffset;
        if (j12 > j13) {
            Region region3 = new Region(j13 + 1, j12);
            region3.endOffsetIndex = regionFloor.endOffsetIndex;
            this.regions.add(region3);
        }
    }

    private void f(CacheSpan cacheSpan) {
        long j6 = cacheSpan.position;
        Region region = new Region(j6, cacheSpan.length + j6);
        Region regionFloor = this.regions.floor(region);
        Region regionCeiling = this.regions.ceiling(region);
        boolean zG = g(regionFloor, region);
        if (g(region, regionCeiling)) {
            if (zG) {
                regionFloor.endOffset = regionCeiling.endOffset;
                regionFloor.endOffsetIndex = regionCeiling.endOffsetIndex;
            } else {
                region.endOffset = regionCeiling.endOffset;
                region.endOffsetIndex = regionCeiling.endOffsetIndex;
                this.regions.add(region);
            }
            this.regions.remove(regionCeiling);
            return;
        }
        if (!zG) {
            int iBinarySearch = Arrays.binarySearch(this.chunkIndex.offsets, region.endOffset);
            if (iBinarySearch < 0) {
                iBinarySearch = (-iBinarySearch) - 2;
            }
            region.endOffsetIndex = iBinarySearch;
            this.regions.add(region);
            return;
        }
        regionFloor.endOffset = region.endOffset;
        int i10 = regionFloor.endOffsetIndex;
        while (true) {
            ChunkIndex chunkIndex = this.chunkIndex;
            if (i10 >= chunkIndex.length - 1) {
                break;
            }
            int i11 = i10 + 1;
            if (chunkIndex.offsets[i11] > regionFloor.endOffset) {
                break;
            } else {
                i10 = i11;
            }
        }
        regionFloor.endOffsetIndex = i10;
    }

    private boolean g(@Nullable Region region, @Nullable Region region2) {
        return (region == null || region2 == null || region.endOffset != region2.startOffset) ? false : true;
    }

    public CachedRegionTracker(Cache cache, String str, ChunkIndex chunkIndex) {
        this.cache = cache;
        this.cacheKey = str;
        this.chunkIndex = chunkIndex;
        synchronized (this) {
            try {
                Iterator<CacheSpan> itDescendingIterator = cache.b(str, this).descendingIterator();
                while (itDescendingIterator.hasNext()) {
                    f(itDescendingIterator.next());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
