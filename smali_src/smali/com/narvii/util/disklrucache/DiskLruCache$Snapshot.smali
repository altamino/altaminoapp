.class public final Lcom/narvii/util/disklrucache/DiskLruCache$Snapshot;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/disklrucache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Snapshot"
.end annotation


# instance fields
.field final ins:[Ljava/io/InputStream;

.field final key:Ljava/lang/String;

.field final lengths:[J

.field final sequenceNumber:J

.field final synthetic this$0:Lcom/narvii/util/disklrucache/DiskLruCache;


# direct methods
.method constructor <init>(Lcom/narvii/util/disklrucache/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;[J)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/disklrucache/DiskLruCache$Snapshot;->this$0:Lcom/narvii/util/disklrucache/DiskLruCache;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/util/disklrucache/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    .line 8
    .line 9
    iput-wide p3, p0, Lcom/narvii/util/disklrucache/DiskLruCache$Snapshot;->sequenceNumber:J

    .line 10
    .line 11
    iput-object p5, p0, Lcom/narvii/util/disklrucache/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    .line 12
    .line 13
    iput-object p6, p0, Lcom/narvii/util/disklrucache/DiskLruCache$Snapshot;->lengths:[J

    .line 14
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    :goto_0
    if-ge v2, v1, :cond_0

    .line 7
    .line 8
    aget-object v3, v0, v2

    .line 9
    .line 10
    .line 11
    invoke-static {v3}, Lcom/narvii/util/disklrucache/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 12
    .line 13
    add-int/lit8 v2, v2, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return-void
.end method

.method public edit()Lcom/narvii/util/disklrucache/DiskLruCache$Editor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache$Snapshot;->this$0:Lcom/narvii/util/disklrucache/DiskLruCache;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/util/disklrucache/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    .line 5
    .line 6
    iget-wide v2, p0, Lcom/narvii/util/disklrucache/DiskLruCache$Snapshot;->sequenceNumber:J

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/util/disklrucache/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/narvii/util/disklrucache/DiskLruCache$Editor;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getInputStream(I)Ljava/io/InputStream;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    .line 3
    .line 4
    aget-object p1, v0, p1

    .line 5
    return-object p1
.end method

.method public getLength(I)J
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache$Snapshot;->lengths:[J

    .line 3
    .line 4
    aget-wide v1, v0, p1

    .line 5
    return-wide v1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/util/disklrucache/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lcom/narvii/util/disklrucache/DiskLruCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
