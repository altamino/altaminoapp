package androidx.media3.exoplayer.offline;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.media3.common.MediaItem;
import androidx.media3.common.PriorityTaskManager;
import androidx.media3.common.StreamKey;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.RunnableFutureTask;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.cache.Cache;
import androidx.media3.datasource.cache.CacheDataSource;
import androidx.media3.datasource.cache.CacheKeyFactory;
import androidx.media3.datasource.cache.CacheWriter;
import androidx.media3.exoplayer.offline.FilterableManifest;
import androidx.media3.exoplayer.upstream.ParsingLoadable;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes6.dex */
@UnstableApi
public abstract class SegmentDownloader<M extends FilterableManifest<M>> implements Downloader {
    private static final int BUFFER_SIZE_BYTES = 131072;
    public static final long DEFAULT_MAX_MERGED_SEGMENT_START_TIME_DIFF_MS = 20000;
    private final ArrayList<RunnableFutureTask<?, ?>> activeRunnables;
    private final Cache cache;
    private final CacheDataSource.Factory cacheDataSourceFactory;
    private final CacheKeyFactory cacheKeyFactory;
    private final Executor executor;
    private volatile boolean isCanceled;
    private final DataSpec manifestDataSpec;
    private final ParsingLoadable.Parser<M> manifestParser;
    private final long maxMergedSegmentStartTimeDiffUs;

    @Nullable
    private final PriorityTaskManager priorityTaskManager;
    private final ArrayList<StreamKey> streamKeys;

    private static final class ProgressNotifier implements CacheWriter.ProgressListener {
        private long bytesDownloaded;
        private final long contentLength;
        private final Downloader.ProgressListener progressListener;
        private int segmentsDownloaded;
        private final int totalSegments;

        private float b() {
            long j6 = this.contentLength;
            if (j6 != -1 && j6 != 0) {
                return (this.bytesDownloaded * 100.0f) / j6;
            }
            int i10 = this.totalSegments;
            if (i10 != 0) {
                return (this.segmentsDownloaded * 100.0f) / i10;
            }
            return -1.0f;
        }

        @Override // androidx.media3.datasource.cache.CacheWriter.ProgressListener
        public void a(long j6, long j10, long j11) {
            long j12 = this.bytesDownloaded + j11;
            this.bytesDownloaded = j12;
            this.progressListener.a(this.contentLength, j12, b());
        }

        public void c() {
            this.segmentsDownloaded++;
            this.progressListener.a(this.contentLength, this.bytesDownloaded, b());
        }

        public ProgressNotifier(Downloader.ProgressListener progressListener, long j6, int i10, long j10, int i11) {
            this.progressListener = progressListener;
            this.contentLength = j6;
            this.totalSegments = i10;
            this.bytesDownloaded = j10;
            this.segmentsDownloaded = i11;
        }
    }

    protected static class Segment implements Comparable<Segment> {
        public final DataSpec dataSpec;
        public final long startTimeUs;

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(Segment segment) {
            return Util.o(this.startTimeUs, segment.startTimeUs);
        }

        public Segment(long j6, DataSpec dataSpec) {
            this.startTimeUs = j6;
            this.dataSpec = dataSpec;
        }
    }

    private static final class SegmentDownloadRunnable extends RunnableFutureTask<Void, IOException> {
        private final CacheWriter cacheWriter;
        public final CacheDataSource dataSource;

        @Nullable
        private final ProgressNotifier progressNotifier;
        public final Segment segment;
        public final byte[] temporaryBuffer;

        @Override // androidx.media3.common.util.RunnableFutureTask
        protected void c() {
            this.cacheWriter.b();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.media3.common.util.RunnableFutureTask
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public Void d() throws IOException {
            this.cacheWriter.a();
            ProgressNotifier progressNotifier = this.progressNotifier;
            if (progressNotifier == null) {
                return null;
            }
            progressNotifier.c();
            return null;
        }

        public SegmentDownloadRunnable(Segment segment, CacheDataSource cacheDataSource, @Nullable ProgressNotifier progressNotifier, byte[] bArr) {
            this.segment = segment;
            this.dataSource = cacheDataSource;
            this.progressNotifier = progressNotifier;
            this.temporaryBuffer = bArr;
            this.cacheWriter = new CacheWriter(cacheDataSource, segment.dataSpec, bArr, progressNotifier);
        }
    }

    @Deprecated
    public SegmentDownloader(MediaItem mediaItem, ParsingLoadable.Parser<M> parser, CacheDataSource.Factory factory, Executor executor) {
        this(mediaItem, parser, factory, executor, 20000L);
    }

    protected abstract List<Segment> h(DataSource dataSource, M m, boolean z6) throws InterruptedException, IOException;

    public SegmentDownloader(MediaItem mediaItem, ParsingLoadable.Parser<M> parser, CacheDataSource.Factory factory, Executor executor, long j6) {
        Assertions.e(mediaItem.localConfiguration);
        this.manifestDataSpec = f(mediaItem.localConfiguration.uri);
        this.manifestParser = parser;
        this.streamKeys = new ArrayList<>(mediaItem.localConfiguration.streamKeys);
        this.cacheDataSourceFactory = factory;
        this.executor = executor;
        this.cache = (Cache) Assertions.e(factory.e());
        this.cacheKeyFactory = factory.f();
        this.priorityTaskManager = factory.g();
        this.activeRunnables = new ArrayList<>();
        this.maxMergedSegmentStartTimeDiffUs = Util.K0(j6);
    }

    private <T> void c(RunnableFutureTask<T, ?> runnableFutureTask) throws InterruptedException {
        synchronized (this.activeRunnables) {
            try {
                if (this.isCanceled) {
                    throw new InterruptedException();
                }
                this.activeRunnables.add(runnableFutureTask);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static boolean d(DataSpec dataSpec, DataSpec dataSpec2) {
        if (dataSpec.uri.equals(dataSpec2.uri)) {
            long j6 = dataSpec.length;
            if (j6 != -1 && dataSpec.position + j6 == dataSpec2.position && Util.c(dataSpec.key, dataSpec2.key) && dataSpec.flags == dataSpec2.flags && dataSpec.httpMethod == dataSpec2.httpMethod && dataSpec.httpRequestHeaders.equals(dataSpec2.httpRequestHeaders)) {
                return true;
            }
        }
        return false;
    }

    protected static DataSpec f(Uri uri) {
        return new DataSpec.Builder().i(uri).b(1).a();
    }

    private static void i(List<Segment> list, CacheKeyFactory cacheKeyFactory, long j6) {
        HashMap map = new HashMap();
        int i10 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            Segment segment = list.get(i11);
            String strBuildCacheKey = cacheKeyFactory.buildCacheKey(segment.dataSpec);
            Integer num = (Integer) map.get(strBuildCacheKey);
            Segment segment2 = num == null ? null : list.get(num.intValue());
            if (segment2 == null || segment.startTimeUs > segment2.startTimeUs + j6 || !d(segment2.dataSpec, segment.dataSpec)) {
                map.put(strBuildCacheKey, Integer.valueOf(i10));
                list.set(i10, segment);
                i10++;
            } else {
                long j10 = segment.dataSpec.length;
                list.set(((Integer) Assertions.e(num)).intValue(), new Segment(segment2.startTimeUs, segment2.dataSpec.f(0L, j10 != -1 ? segment2.dataSpec.length + j10 : -1L)));
            }
        }
        Util.V0(list, i10, list.size());
    }

    private void j(int i10) {
        synchronized (this.activeRunnables) {
            this.activeRunnables.remove(i10);
        }
    }

    private void k(RunnableFutureTask<?, ?> runnableFutureTask) {
        synchronized (this.activeRunnables) {
            this.activeRunnables.remove(runnableFutureTask);
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0034 */
    @Override // androidx.media3.exoplayer.offline.Downloader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(@Nullable Downloader.ProgressListener progressListener) throws InterruptedException, IOException {
        CacheDataSource cacheDataSourceB;
        byte[] bArr;
        int i10;
        ArrayDeque arrayDeque = new ArrayDeque();
        ArrayDeque arrayDeque2 = new ArrayDeque();
        PriorityTaskManager priorityTaskManager = this.priorityTaskManager;
        if (priorityTaskManager != null) {
            priorityTaskManager.a(-1000);
        }
        CacheDataSource cacheDataSourceB2 = this.cacheDataSourceFactory.b();
        FilterableManifest filterableManifestG = g(cacheDataSourceB2, this.manifestDataSpec, false);
        if (!this.streamKeys.isEmpty()) {
            filterableManifestG = (FilterableManifest) filterableManifestG.copy(this.streamKeys);
        }
        List<Segment> listH = h(cacheDataSourceB2, filterableManifestG, false);
        Collections.sort(listH);
        i(listH, this.cacheKeyFactory, this.maxMergedSegmentStartTimeDiffUs);
        int size = listH.size();
        int i11 = 0;
        long j6 = 0;
        long j10 = 0;
        for (int size2 = listH.size() - 1; size2 >= 0; size2 = i10 - 1) {
            DataSpec dataSpec = listH.get(size2).dataSpec;
            String strBuildCacheKey = this.cacheKeyFactory.buildCacheKey(dataSpec);
            long j11 = dataSpec.length;
            if (j11 == -1) {
                long jA = androidx.media3.datasource.cache.c.a(this.cache.getContentMetadata(strBuildCacheKey));
                if (jA != -1) {
                    j11 = jA - dataSpec.position;
                }
            }
            int i12 = size2;
            long jE = this.cache.e(strBuildCacheKey, dataSpec.position, j11);
            j10 += jE;
            if (j11 != -1) {
                if (j11 == jE) {
                    i11++;
                    i10 = i12;
                    listH.remove(i10);
                } else {
                    i10 = i12;
                }
                if (j6 != -1) {
                    j6 += j11;
                }
            } else {
                i10 = i12;
                j6 = -1;
            }
        }
        ProgressNotifier progressNotifier = progressListener != null ? new ProgressNotifier(progressListener, j6, size, j10, i11) : null;
        arrayDeque.addAll(listH);
        while (!this.isCanceled && !arrayDeque.isEmpty()) {
            PriorityTaskManager priorityTaskManager2 = this.priorityTaskManager;
            if (priorityTaskManager2 != null) {
                priorityTaskManager2.b(-1000);
            }
            if (arrayDeque2.isEmpty()) {
                cacheDataSourceB = this.cacheDataSourceFactory.b();
                bArr = new byte[131072];
            } else {
                SegmentDownloadRunnable segmentDownloadRunnable = (SegmentDownloadRunnable) arrayDeque2.removeFirst();
                cacheDataSourceB = segmentDownloadRunnable.dataSource;
                bArr = segmentDownloadRunnable.temporaryBuffer;
            }
            SegmentDownloadRunnable segmentDownloadRunnable2 = new SegmentDownloadRunnable((Segment) arrayDeque.removeFirst(), cacheDataSourceB, progressNotifier, bArr);
            c(segmentDownloadRunnable2);
            this.executor.execute(segmentDownloadRunnable2);
            for (int size3 = this.activeRunnables.size() - 1; size3 >= 0; size3--) {
                SegmentDownloadRunnable segmentDownloadRunnable3 = (SegmentDownloadRunnable) this.activeRunnables.get(size3);
                if (arrayDeque.isEmpty() || segmentDownloadRunnable3.isDone()) {
                    try {
                        segmentDownloadRunnable3.get();
                        j(size3);
                        arrayDeque2.addLast(segmentDownloadRunnable3);
                    } catch (ExecutionException e) {
                        Throwable th = (Throwable) Assertions.e(e.getCause());
                        if (th instanceof PriorityTaskManager.PriorityTooLowException) {
                            arrayDeque.addFirst(segmentDownloadRunnable3.segment);
                            j(size3);
                            arrayDeque2.addLast(segmentDownloadRunnable3);
                        } else {
                            if (th instanceof IOException) {
                                throw ((IOException) th);
                            }
                            Util.b1(th);
                        }
                    }
                }
            }
            segmentDownloadRunnable2.b();
        }
        for (int i13 = 0; i13 < this.activeRunnables.size(); i13++) {
            this.activeRunnables.get(i13).cancel(true);
        }
        for (int size4 = this.activeRunnables.size() - 1; size4 >= 0; size4--) {
            this.activeRunnables.get(size4).a();
            j(size4);
        }
        PriorityTaskManager priorityTaskManager3 = this.priorityTaskManager;
        if (priorityTaskManager3 != null) {
            priorityTaskManager3.d(-1000);
        }
    }

    @Override // androidx.media3.exoplayer.offline.Downloader
    public void cancel() {
        synchronized (this.activeRunnables) {
            try {
                this.isCanceled = true;
                for (int i10 = 0; i10 < this.activeRunnables.size(); i10++) {
                    this.activeRunnables.get(i10).cancel(true);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    protected final <T> T e(RunnableFutureTask<T, ?> runnableFutureTask, boolean z6) throws Throwable {
        if (z6) {
            runnableFutureTask.run();
            try {
                return runnableFutureTask.get();
            } catch (ExecutionException e) {
                Throwable th = (Throwable) Assertions.e(e.getCause());
                if (th instanceof IOException) {
                    throw ((IOException) th);
                }
                Util.b1(e);
            }
        }
        while (!this.isCanceled) {
            PriorityTaskManager priorityTaskManager = this.priorityTaskManager;
            if (priorityTaskManager != null) {
                priorityTaskManager.b(-1000);
            }
            c(runnableFutureTask);
            this.executor.execute(runnableFutureTask);
            try {
                T t5 = runnableFutureTask.get();
                runnableFutureTask.a();
                k(runnableFutureTask);
                return t5;
            } catch (ExecutionException e2) {
                try {
                    Throwable th2 = (Throwable) Assertions.e(e2.getCause());
                    if (!(th2 instanceof PriorityTaskManager.PriorityTooLowException)) {
                        if (th2 instanceof IOException) {
                            throw ((IOException) th2);
                        }
                        Util.b1(e2);
                    }
                    runnableFutureTask.a();
                    k(runnableFutureTask);
                } catch (Throwable th3) {
                    runnableFutureTask.a();
                    k(runnableFutureTask);
                    throw th3;
                }
            }
        }
        throw new InterruptedException();
    }

    protected final M g(final DataSource dataSource, final DataSpec dataSpec, boolean z6) throws InterruptedException, IOException {
        return (M) e(new RunnableFutureTask<M, IOException>() { // from class: androidx.media3.exoplayer.offline.SegmentDownloader.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // androidx.media3.common.util.RunnableFutureTask
            /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
            public M d() throws IOException {
                return (M) ParsingLoadable.e(dataSource, SegmentDownloader.this.manifestParser, dataSpec, 4);
            }
        }, z6);
    }

    @Override // androidx.media3.exoplayer.offline.Downloader
    public final void remove() {
        CacheDataSource cacheDataSourceC = this.cacheDataSourceFactory.c();
        try {
            List<Segment> listH = h(cacheDataSourceC, g(cacheDataSourceC, this.manifestDataSpec, true), true);
            for (int i10 = 0; i10 < listH.size(); i10++) {
                this.cache.d(this.cacheKeyFactory.buildCacheKey(listH.get(i10).dataSpec));
            }
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        } catch (Exception unused2) {
        } finally {
            this.cache.d(this.cacheKeyFactory.buildCacheKey(this.manifestDataSpec));
        }
    }
}
