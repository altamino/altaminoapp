.class Lcom/narvii/util/disklrucache/DiskLruCache$Editor$FaultHidingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/disklrucache/DiskLruCache$Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FaultHidingOutputStream"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/util/disklrucache/DiskLruCache$Editor;


# direct methods
.method constructor <init>(Lcom/narvii/util/disklrucache/DiskLruCache$Editor;Ljava/io/OutputStream;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/disklrucache/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/narvii/util/disklrucache/DiskLruCache$Editor;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 6
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    :catch_0
    iget-object v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/narvii/util/disklrucache/DiskLruCache$Editor;

    .line 9
    const/4 v1, 0x1

    .line 10
    .line 11
    iput-boolean v1, v0, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->hasErrors:Z

    .line 12
    :goto_0
    return-void
.end method

.method public flush()V
    .locals 2

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    :catch_0
    iget-object v0, p0, Lcom/narvii/util/disklrucache/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/narvii/util/disklrucache/DiskLruCache$Editor;

    .line 9
    const/4 v1, 0x1

    .line 10
    .line 11
    iput-boolean v1, v0, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->hasErrors:Z

    .line 12
    :goto_0
    return-void
.end method

.method public write(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 1
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p1, p0, Lcom/narvii/util/disklrucache/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/narvii/util/disklrucache/DiskLruCache$Editor;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p1, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->hasErrors:Z

    :goto_0
    return-void
.end method

.method public write([BII)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p1, p0, Lcom/narvii/util/disklrucache/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/narvii/util/disklrucache/DiskLruCache$Editor;

    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p1, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->hasErrors:Z

    :goto_0
    return-void
.end method
