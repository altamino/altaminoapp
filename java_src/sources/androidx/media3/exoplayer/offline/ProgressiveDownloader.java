package androidx.media3.exoplayer.offline;

import androidx.annotation.Nullable;
import androidx.media3.common.MediaItem;
import androidx.media3.common.PriorityTaskManager;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.RunnableFutureTask;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.cache.CacheDataSource;
import androidx.media3.datasource.cache.CacheWriter;
import java.io.IOException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes7.dex */
@UnstableApi
public final class ProgressiveDownloader implements Downloader {
    private final CacheWriter cacheWriter;
    private final CacheDataSource dataSource;
    private final DataSpec dataSpec;
    private volatile RunnableFutureTask<Void, IOException> downloadRunnable;
    private final Executor executor;
    private volatile boolean isCanceled;

    @Nullable
    private final PriorityTaskManager priorityTaskManager;

    @Nullable
    private Downloader.ProgressListener progressListener;

    public ProgressiveDownloader(MediaItem mediaItem, CacheDataSource.Factory factory) {
        this(mediaItem, factory, new androidx.media3.exoplayer.dash.offline.a());
    }

    @Override // androidx.media3.exoplayer.offline.Downloader
    public void cancel() {
        this.isCanceled = true;
        RunnableFutureTask<Void, IOException> runnableFutureTask = this.downloadRunnable;
        if (runnableFutureTask != null) {
            runnableFutureTask.cancel(true);
        }
    }

    public ProgressiveDownloader(MediaItem mediaItem, CacheDataSource.Factory factory, Executor executor) {
        this.executor = (Executor) Assertions.e(executor);
        Assertions.e(mediaItem.localConfiguration);
        DataSpec dataSpecA = new DataSpec.Builder().i(mediaItem.localConfiguration.uri).f(mediaItem.localConfiguration.customCacheKey).b(4).a();
        this.dataSpec = dataSpecA;
        CacheDataSource cacheDataSourceB = factory.b();
        this.dataSource = cacheDataSourceB;
        this.cacheWriter = new CacheWriter(cacheDataSourceB, dataSpecA, null, new CacheWriter.ProgressListener() { // from class: androidx.media3.exoplayer.offline.l
            @Override // androidx.media3.datasource.cache.CacheWriter.ProgressListener
            public final void a(long j6, long j10, long j11) {
                this.f573a.d(j6, j10, j11);
            }
        });
        this.priorityTaskManager = factory.g();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(long j6, long j10, long j11) {
        Downloader.ProgressListener progressListener = this.progressListener;
        if (progressListener == null) {
            return;
        }
        progressListener.a(j6, j10, (j6 == -1 || j6 == 0) ? -1.0f : (j10 * 100.0f) / j6);
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0021 */
    @Override // androidx.media3.exoplayer.offline.Downloader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void a(@Nullable Downloader.ProgressListener progressListener) throws InterruptedException, IOException {
        this.progressListener = progressListener;
        PriorityTaskManager priorityTaskManager = this.priorityTaskManager;
        if (priorityTaskManager != null) {
            priorityTaskManager.a(-1000);
        }
        boolean z6 = false;
        while (!z6) {
            if (this.isCanceled) {
                break;
            }
            this.downloadRunnable = new RunnableFutureTask<Void, IOException>() { // from class: androidx.media3.exoplayer.offline.ProgressiveDownloader.1
                @Override // androidx.media3.common.util.RunnableFutureTask
                protected void c() {
                    ProgressiveDownloader.this.cacheWriter.b();
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // androidx.media3.common.util.RunnableFutureTask
                /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
                public Void d() throws IOException {
                    ProgressiveDownloader.this.cacheWriter.a();
                    return null;
                }
            };
            PriorityTaskManager priorityTaskManager2 = this.priorityTaskManager;
            if (priorityTaskManager2 != null) {
                priorityTaskManager2.b(-1000);
            }
            this.executor.execute(this.downloadRunnable);
            try {
                this.downloadRunnable.get();
                z6 = true;
            } catch (ExecutionException e) {
                Throwable th = (Throwable) Assertions.e(e.getCause());
                if (!(th instanceof PriorityTaskManager.PriorityTooLowException)) {
                    if (th instanceof IOException) {
                        throw ((IOException) th);
                    }
                    Util.b1(th);
                }
            }
        }
        ((RunnableFutureTask) Assertions.e(this.downloadRunnable)).a();
        PriorityTaskManager priorityTaskManager3 = this.priorityTaskManager;
        if (priorityTaskManager3 != null) {
            priorityTaskManager3.d(-1000);
        }
    }

    @Override // androidx.media3.exoplayer.offline.Downloader
    public void remove() {
        this.dataSource.e().d(this.dataSource.f().buildCacheKey(this.dataSpec));
    }
}
