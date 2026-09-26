.class final Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;
.super Landroidx/media3/common/util/RunnableFutureTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/offline/SegmentDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SegmentDownloadRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media3/common/util/RunnableFutureTask<",
        "Ljava/lang/Void;",
        "Ljava/io/IOException;",
        ">;"
    }
.end annotation


# instance fields
.field private final cacheWriter:Landroidx/media3/datasource/cache/CacheWriter;

.field public final dataSource:Landroidx/media3/datasource/cache/CacheDataSource;

.field private final progressNotifier:Landroidx/media3/exoplayer/offline/SegmentDownloader$ProgressNotifier;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final segment:Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;

.field public final temporaryBuffer:[B


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;Landroidx/media3/datasource/cache/CacheDataSource;Landroidx/media3/exoplayer/offline/SegmentDownloader$ProgressNotifier;[B)V
    .locals 1
    .param p3    # Landroidx/media3/exoplayer/offline/SegmentDownloader$ProgressNotifier;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/common/util/RunnableFutureTask;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;->segment:Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;

    .line 6
    .line 7
    iput-object p2, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;->dataSource:Landroidx/media3/datasource/cache/CacheDataSource;

    .line 8
    .line 9
    iput-object p3, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;->progressNotifier:Landroidx/media3/exoplayer/offline/SegmentDownloader$ProgressNotifier;

    .line 10
    .line 11
    iput-object p4, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;->temporaryBuffer:[B

    .line 12
    .line 13
    new-instance v0, Landroidx/media3/datasource/cache/CacheWriter;

    .line 14
    .line 15
    iget-object p1, p1, Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;->dataSpec:Landroidx/media3/datasource/DataSpec;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p2, p1, p4, p3}, Landroidx/media3/datasource/cache/CacheWriter;-><init>(Landroidx/media3/datasource/cache/CacheDataSource;Landroidx/media3/datasource/DataSpec;[BLandroidx/media3/datasource/cache/CacheWriter$ProgressListener;)V

    .line 19
    .line 20
    iput-object v0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;->cacheWriter:Landroidx/media3/datasource/cache/CacheWriter;

    .line 21
    return-void
.end method


# virtual methods
.method protected c()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;->cacheWriter:Landroidx/media3/datasource/cache/CacheWriter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/media3/datasource/cache/CacheWriter;->b()V

    .line 6
    return-void
.end method

.method protected bridge synthetic d()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;->f()Ljava/lang/Void;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method protected f()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;->cacheWriter:Landroidx/media3/datasource/cache/CacheWriter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/media3/datasource/cache/CacheWriter;->a()V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;->progressNotifier:Landroidx/media3/exoplayer/offline/SegmentDownloader$ProgressNotifier;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/media3/exoplayer/offline/SegmentDownloader$ProgressNotifier;->c()V

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return-object v0
.end method
