package androidx.media3.exoplayer.offline;

import android.util.SparseArray;
import androidx.media3.common.MediaItem;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.cache.CacheDataSource;
import androidx.media3.exoplayer.dash.offline.DashDownloader;
import androidx.media3.exoplayer.hls.offline.HlsDownloader;
import androidx.media3.exoplayer.smoothstreaming.offline.SsDownloader;
import java.lang.reflect.Constructor;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes11.dex */
@UnstableApi
public class DefaultDownloaderFactory implements DownloaderFactory {
    private static final SparseArray<Constructor<? extends Downloader>> CONSTRUCTORS = c();
    private final CacheDataSource.Factory cacheDataSourceFactory;
    private final Executor executor;

    @Deprecated
    public DefaultDownloaderFactory(CacheDataSource.Factory factory) {
        this(factory, new androidx.media3.exoplayer.dash.offline.a());
    }

    public DefaultDownloaderFactory(CacheDataSource.Factory factory, Executor executor) {
        this.cacheDataSourceFactory = (CacheDataSource.Factory) Assertions.e(factory);
        this.executor = (Executor) Assertions.e(executor);
    }

    private Downloader b(DownloadRequest downloadRequest, int i10) {
        Constructor<? extends Downloader> constructor = CONSTRUCTORS.get(i10);
        if (constructor == null) {
            throw new IllegalStateException("Module missing for content type " + i10);
        }
        try {
            return constructor.newInstance(new MediaItem.Builder().j(downloadRequest.uri).g(downloadRequest.streamKeys).b(downloadRequest.customCacheKey).a(), this.cacheDataSourceFactory, this.executor);
        } catch (Exception e) {
            throw new IllegalStateException("Failed to instantiate downloader for content type " + i10, e);
        }
    }

    private static SparseArray<Constructor<? extends Downloader>> c() {
        SparseArray<Constructor<? extends Downloader>> sparseArray = new SparseArray<>();
        try {
            sparseArray.put(0, d(DashDownloader.class));
        } catch (ClassNotFoundException unused) {
        }
        try {
            sparseArray.put(2, d(HlsDownloader.class));
        } catch (ClassNotFoundException unused2) {
        }
        try {
            sparseArray.put(1, d(SsDownloader.class));
        } catch (ClassNotFoundException unused3) {
        }
        return sparseArray;
    }

    private static Constructor<? extends Downloader> d(Class<?> cls) {
        try {
            return cls.asSubclass(Downloader.class).getConstructor(MediaItem.class, CacheDataSource.Factory.class, Executor.class);
        } catch (NoSuchMethodException e) {
            throw new IllegalStateException("Downloader constructor missing", e);
        }
    }

    @Override // androidx.media3.exoplayer.offline.DownloaderFactory
    public Downloader a(DownloadRequest downloadRequest) {
        int iX0 = Util.x0(downloadRequest.uri, downloadRequest.mimeType);
        if (iX0 == 0 || iX0 == 1 || iX0 == 2) {
            return b(downloadRequest, iX0);
        }
        if (iX0 == 4) {
            return new ProgressiveDownloader(new MediaItem.Builder().j(downloadRequest.uri).b(downloadRequest.customCacheKey).a(), this.cacheDataSourceFactory, this.executor);
        }
        throw new IllegalArgumentException("Unsupported type: " + iX0);
    }
}
