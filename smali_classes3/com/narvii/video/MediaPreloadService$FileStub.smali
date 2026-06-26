.class Lcom/narvii/video/MediaPreloadService$FileStub;
.super Ljava/lang/Object;
.source "MediaPreloadService.java"

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

    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 404
    iput-wide v0, p0, Lcom/narvii/video/MediaPreloadService$FileStub;->time:J

    .line 407
    iput-object p1, p0, Lcom/narvii/video/MediaPreloadService$FileStub;->file:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/narvii/video/MediaPreloadService$FileStub;)I
    .locals 4

    .line 419
    invoke-virtual {p0}, Lcom/narvii/video/MediaPreloadService$FileStub;->time()J

    move-result-wide v0

    .line 420
    invoke-virtual {p1}, Lcom/narvii/video/MediaPreloadService$FileStub;->time()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    cmp-long p1, v0, v2

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

    .line 402
    check-cast p1, Lcom/narvii/video/MediaPreloadService$FileStub;

    invoke-virtual {p0, p1}, Lcom/narvii/video/MediaPreloadService$FileStub;->compareTo(Lcom/narvii/video/MediaPreloadService$FileStub;)I

    move-result p1

    return p1
.end method

.method public time()J
    .locals 5

    .line 411
    iget-wide v0, p0, Lcom/narvii/video/MediaPreloadService$FileStub;->time:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 412
    iget-object v0, p0, Lcom/narvii/video/MediaPreloadService$FileStub;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/narvii/video/MediaPreloadService$FileStub;->time:J

    .line 414
    :cond_0
    iget-wide v0, p0, Lcom/narvii/video/MediaPreloadService$FileStub;->time:J

    return-wide v0
.end method
