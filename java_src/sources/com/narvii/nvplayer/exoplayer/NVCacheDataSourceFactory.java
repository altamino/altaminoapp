package com.narvii.nvplayer.exoplayer;

import androidx.annotation.NonNull;
import androidx.annotation.OptIn;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.datasource.DataSink;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.cache.Cache;
import androidx.media3.datasource.cache.CacheDataSource;
import androidx.media3.datasource.cache.CacheKeyFactory;

/* JADX INFO: loaded from: classes.dex */
@UnstableApi
public final class NVCacheDataSourceFactory implements DataSource.Factory {
    private final Cache cache;
    private final CacheKeyFactory cacheKeyFactory;
    private final DataSource.Factory cacheReadDataSourceFactory;
    private final DataSink.Factory cacheWriteDataSinkFactory;
    private final CacheDataSource.EventListener eventListener;
    private final int flags;
    private final DataSource.Factory upstreamFactory;

    @Override // androidx.media3.datasource.DataSource.Factory
    @NonNull
    public CacheDataSource createDataSource() {
        Cache cache = this.cache;
        DataSource dataSourceCreateDataSource = this.upstreamFactory.createDataSource();
        DataSource dataSourceCreateDataSource2 = this.cacheReadDataSourceFactory.createDataSource();
        DataSink.Factory factory = this.cacheWriteDataSinkFactory;
        return new CacheDataSource(cache, dataSourceCreateDataSource, dataSourceCreateDataSource2, factory != null ? factory.createDataSink() : null, this.flags, this.eventListener, this.cacheKeyFactory);
    }

    @OptIn
    public NVCacheDataSourceFactory(Cache cache, DataSource.Factory factory, DataSource.Factory factory2, DataSink.Factory factory3, int i10, CacheDataSource.EventListener eventListener, CacheKeyFactory cacheKeyFactory) {
        this.cache = cache;
        this.upstreamFactory = factory;
        this.cacheReadDataSourceFactory = factory2;
        this.cacheWriteDataSinkFactory = factory3;
        this.flags = i10;
        this.eventListener = eventListener;
        this.cacheKeyFactory = cacheKeyFactory;
    }
}
