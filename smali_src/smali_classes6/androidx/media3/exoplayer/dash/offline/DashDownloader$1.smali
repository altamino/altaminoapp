.class Landroidx/media3/exoplayer/dash/offline/DashDownloader$1;
.super Landroidx/media3/common/util/RunnableFutureTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/exoplayer/dash/offline/DashDownloader;->n(Landroidx/media3/datasource/DataSource;ILandroidx/media3/exoplayer/dash/manifest/Representation;Z)Landroidx/media3/exoplayer/dash/DashSegmentIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media3/common/util/RunnableFutureTask<",
        "Landroidx/media3/extractor/ChunkIndex;",
        "Ljava/io/IOException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/exoplayer/dash/offline/DashDownloader;

.field final synthetic val$dataSource:Landroidx/media3/datasource/DataSource;

.field final synthetic val$representation:Landroidx/media3/exoplayer/dash/manifest/Representation;

.field final synthetic val$trackType:I


# direct methods
.method constructor <init>(Landroidx/media3/exoplayer/dash/offline/DashDownloader;Landroidx/media3/datasource/DataSource;ILandroidx/media3/exoplayer/dash/manifest/Representation;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/media3/exoplayer/dash/offline/DashDownloader$1;->this$0:Landroidx/media3/exoplayer/dash/offline/DashDownloader;

    .line 3
    .line 4
    iput-object p2, p0, Landroidx/media3/exoplayer/dash/offline/DashDownloader$1;->val$dataSource:Landroidx/media3/datasource/DataSource;

    .line 5
    .line 6
    iput p3, p0, Landroidx/media3/exoplayer/dash/offline/DashDownloader$1;->val$trackType:I

    .line 7
    .line 8
    iput-object p4, p0, Landroidx/media3/exoplayer/dash/offline/DashDownloader$1;->val$representation:Landroidx/media3/exoplayer/dash/manifest/Representation;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Landroidx/media3/common/util/RunnableFutureTask;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
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
    invoke-virtual {p0}, Landroidx/media3/exoplayer/dash/offline/DashDownloader$1;->f()Landroidx/media3/extractor/ChunkIndex;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method protected f()Landroidx/media3/extractor/ChunkIndex;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/offline/DashDownloader$1;->val$dataSource:Landroidx/media3/datasource/DataSource;

    .line 3
    .line 4
    iget v1, p0, Landroidx/media3/exoplayer/dash/offline/DashDownloader$1;->val$trackType:I

    .line 5
    .line 6
    iget-object v2, p0, Landroidx/media3/exoplayer/dash/offline/DashDownloader$1;->val$representation:Landroidx/media3/exoplayer/dash/manifest/Representation;

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1, v2}, Landroidx/media3/exoplayer/dash/DashUtil;->b(Landroidx/media3/datasource/DataSource;ILandroidx/media3/exoplayer/dash/manifest/Representation;)Landroidx/media3/extractor/ChunkIndex;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method
