.class Lcom/narvii/video/MediaPreloadService$FileStub;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/video/MediaPreloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileStub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/narvii/video/MediaPreloadService$FileStub;",
        ">;"
    }
.end annotation


# instance fields
.field file:Ljava/io/File;

.field time:J


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    const-wide/16 v0, -0x1

    .line 6
    .line 7
    iput-wide v0, p0, Lcom/narvii/video/MediaPreloadService$FileStub;->time:J

    .line 8
    .line 9
    iput-object p1, p0, Lcom/narvii/video/MediaPreloadService$FileStub;->file:Ljava/io/File;

    .line 10
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/narvii/video/MediaPreloadService$FileStub;)I
    .locals 4
    .param p1    # Lcom/narvii/video/MediaPreloadService$FileStub;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-virtual {p0}, Lcom/narvii/video/MediaPreloadService$FileStub;->time()J

    move-result-wide v0

    .line 3
    invoke-virtual {p1}, Lcom/narvii/video/MediaPreloadService$FileStub;->time()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/narvii/video/MediaPreloadService$FileStub;

    invoke-virtual {p0, p1}, Lcom/narvii/video/MediaPreloadService$FileStub;->compareTo(Lcom/narvii/video/MediaPreloadService$FileStub;)I

    move-result p1

    return p1
.end method

.method public time()J
    .locals 4

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/narvii/video/MediaPreloadService$FileStub;->time:J

    .line 3
    .line 4
    const-wide/16 v2, -0x1

    .line 5
    .line 6
    cmp-long v0, v0, v2

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/video/MediaPreloadService$FileStub;->file:Ljava/io/File;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    .line 14
    move-result-wide v0

    .line 15
    .line 16
    iput-wide v0, p0, Lcom/narvii/video/MediaPreloadService$FileStub;->time:J

    .line 17
    .line 18
    :cond_0
    iget-wide v0, p0, Lcom/narvii/video/MediaPreloadService$FileStub;->time:J

    .line 19
    return-wide v0
.end method
