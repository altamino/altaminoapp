.class Lcom/narvii/util/fileloader/DiskDaemonHelper$FileDesc;
.super Ljava/lang/Object;
.source "DiskDaemonHelper.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/fileloader/DiskDaemonHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileDesc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/narvii/util/fileloader/DiskDaemonHelper$FileDesc;",
        ">;"
    }
.end annotation


# instance fields
.field final file:Ljava/io/File;

.field final size:J

.field final time:J


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput-object p1, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$FileDesc;->file:Ljava/io/File;

    .line 202
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$FileDesc;->time:J

    .line 203
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$FileDesc;->size:J

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/narvii/util/fileloader/DiskDaemonHelper$FileDesc;)I
    .locals 4

    .line 208
    iget-wide v0, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$FileDesc;->time:J

    iget-wide v2, p1, Lcom/narvii/util/fileloader/DiskDaemonHelper$FileDesc;->time:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

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

    .line 195
    check-cast p1, Lcom/narvii/util/fileloader/DiskDaemonHelper$FileDesc;

    invoke-virtual {p0, p1}, Lcom/narvii/util/fileloader/DiskDaemonHelper$FileDesc;->compareTo(Lcom/narvii/util/fileloader/DiskDaemonHelper$FileDesc;)I

    move-result p1

    return p1
.end method
