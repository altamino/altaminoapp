.class public final Lcom/narvii/nvplayer/exoplayer/NVCacheDataSourceFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/datasource/DataSource$Factory;


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# instance fields
.field private final cache:Landroidx/media3/datasource/cache/Cache;

.field private final cacheKeyFactory:Landroidx/media3/datasource/cache/CacheKeyFactory;

.field private final cacheReadDataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

.field private final cacheWriteDataSinkFactory:Landroidx/media3/datasource/DataSink$Factory;

.field private final eventListener:Landroidx/media3/datasource/cache/CacheDataSource$EventListener;

.field private final flags:I

.field private final upstreamFactory:Landroidx/media3/datasource/DataSource$Factory;


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/cache/Cache;Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/datasource/DataSink$Factory;ILandroidx/media3/datasource/cache/CacheDataSource$EventListener;Landroidx/media3/datasource/cache/CacheKeyFactory;)V
    .locals 0
    .annotation build Landroidx/annotation/OptIn;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVCacheDataSourceFactory;->cache:Landroidx/media3/datasource/cache/Cache;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/nvplayer/exoplayer/NVCacheDataSourceFactory;->upstreamFactory:Landroidx/media3/datasource/DataSource$Factory;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/nvplayer/exoplayer/NVCacheDataSourceFactory;->cacheReadDataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/narvii/nvplayer/exoplayer/NVCacheDataSourceFactory;->cacheWriteDataSinkFactory:Landroidx/media3/datasource/DataSink$Factory;

    .line 12
    .line 13
    iput p5, p0, Lcom/narvii/nvplayer/exoplayer/NVCacheDataSourceFactory;->flags:I

    .line 14
    .line 15
    iput-object p6, p0, Lcom/narvii/nvplayer/exoplayer/NVCacheDataSourceFactory;->eventListener:Landroidx/media3/datasource/cache/CacheDataSource$EventListener;

    .line 16
    .line 17
    iput-object p7, p0, Lcom/narvii/nvplayer/exoplayer/NVCacheDataSourceFactory;->cacheKeyFactory:Landroidx/media3/datasource/cache/CacheKeyFactory;

    .line 18
    return-void
.end method


# virtual methods
.method public bridge synthetic createDataSource()Landroidx/media3/datasource/DataSource;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/narvii/nvplayer/exoplayer/NVCacheDataSourceFactory;->createDataSource()Landroidx/media3/datasource/cache/CacheDataSource;

    move-result-object v0

    return-object v0
.end method

.method public createDataSource()Landroidx/media3/datasource/cache/CacheDataSource;
    .locals 9
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    new-instance v8, Landroidx/media3/datasource/cache/CacheDataSource;

    iget-object v1, p0, Lcom/narvii/nvplayer/exoplayer/NVCacheDataSourceFactory;->cache:Landroidx/media3/datasource/cache/Cache;

    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVCacheDataSourceFactory;->upstreamFactory:Landroidx/media3/datasource/DataSource$Factory;

    invoke-interface {v0}, Landroidx/media3/datasource/DataSource$Factory;->createDataSource()Landroidx/media3/datasource/DataSource;

    move-result-object v2

    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVCacheDataSourceFactory;->cacheReadDataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    .line 3
    invoke-interface {v0}, Landroidx/media3/datasource/DataSource$Factory;->createDataSource()Landroidx/media3/datasource/DataSource;

    move-result-object v3

    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVCacheDataSourceFactory;->cacheWriteDataSinkFactory:Landroidx/media3/datasource/DataSink$Factory;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Landroidx/media3/datasource/DataSink$Factory;->createDataSink()Landroidx/media3/datasource/DataSink;

    move-result-object v0

    :goto_0
    move-object v4, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget v5, p0, Lcom/narvii/nvplayer/exoplayer/NVCacheDataSourceFactory;->flags:I

    iget-object v6, p0, Lcom/narvii/nvplayer/exoplayer/NVCacheDataSourceFactory;->eventListener:Landroidx/media3/datasource/cache/CacheDataSource$EventListener;

    iget-object v7, p0, Lcom/narvii/nvplayer/exoplayer/NVCacheDataSourceFactory;->cacheKeyFactory:Landroidx/media3/datasource/cache/CacheKeyFactory;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroidx/media3/datasource/cache/CacheDataSource;-><init>(Landroidx/media3/datasource/cache/Cache;Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSink;ILandroidx/media3/datasource/cache/CacheDataSource$EventListener;Landroidx/media3/datasource/cache/CacheKeyFactory;)V

    return-object v8
.end method
