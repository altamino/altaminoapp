.class public Lcom/narvii/util/SafeFileOutputStream;
.super Ljava/io/OutputStream;
.source "SafeFileOutputStream.java"


# instance fields
.field private fos:Ljava/io/FileOutputStream;

.field private target:Ljava/io/File;

.field private tmp:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/narvii/util/SafeFileOutputStream;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/narvii/util/SafeFileOutputStream;->target:Ljava/io/File;

    const/4 p1, 0x0

    :goto_0
    const/16 v0, 0xa

    if-ge p1, v0, :cond_1

    .line 30
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    int-to-long v2, p1

    add-long/2addr v0, v2

    const-wide/32 v2, 0x10000

    .line 31
    rem-long/2addr v0, v2

    .line 32
    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    .line 33
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    iput-object v1, p0, Lcom/narvii/util/SafeFileOutputStream;->tmp:Ljava/io/File;

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 39
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/narvii/util/SafeFileOutputStream;->tmp:Ljava/io/File;

    if-eqz p1, :cond_2

    .line 42
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object p2, p0, Lcom/narvii/util/SafeFileOutputStream;->fos:Ljava/io/FileOutputStream;

    return-void

    .line 40
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "no useable tmp file"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public static getBakFile(Ljava/io/File;)Ljava/io/File;
    .locals 3

    .line 58
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".bak"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public abort()V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/narvii/util/SafeFileOutputStream;->tmp:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/narvii/util/SafeFileOutputStream;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :catch_0
    iget-object v0, p0, Lcom/narvii/util/SafeFileOutputStream;->tmp:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/narvii/util/SafeFileOutputStream;->tmp:Ljava/io/File;

    :cond_0
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 97
    invoke-virtual {p0, v0}, Lcom/narvii/util/SafeFileOutputStream;->close(Z)V

    return-void
.end method

.method public close(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 92
    invoke-virtual {p0, p1, v0}, Lcom/narvii/util/SafeFileOutputStream;->close(ZZ)Z

    return-void
.end method

.method public close(ZZ)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/narvii/util/SafeFileOutputStream;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 69
    iget-object v0, p0, Lcom/narvii/util/SafeFileOutputStream;->tmp:Ljava/io/File;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_0

    .line 71
    iget-object p1, p0, Lcom/narvii/util/SafeFileOutputStream;->target:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 72
    iget-object p1, p0, Lcom/narvii/util/SafeFileOutputStream;->target:Ljava/io/File;

    invoke-static {p1}, Lcom/narvii/util/SafeFileOutputStream;->getBakFile(Ljava/io/File;)Ljava/io/File;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 74
    :cond_0
    iget-object p1, p0, Lcom/narvii/util/SafeFileOutputStream;->tmp:Ljava/io/File;

    iget-object p2, p0, Lcom/narvii/util/SafeFileOutputStream;->target:Ljava/io/File;

    invoke-virtual {p1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 75
    iput-object v2, p0, Lcom/narvii/util/SafeFileOutputStream;->tmp:Ljava/io/File;

    return v1

    .line 78
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unable to move tmp file from "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/narvii/util/SafeFileOutputStream;->tmp:Ljava/io/File;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/narvii/util/SafeFileOutputStream;->target:Ljava/io/File;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 82
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 83
    iput-object v2, p0, Lcom/narvii/util/SafeFileOutputStream;->tmp:Ljava/io/File;

    const/4 p1, 0x0

    return p1

    :cond_3
    return v1
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/narvii/util/SafeFileOutputStream;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 119
    iget-object v0, p0, Lcom/narvii/util/SafeFileOutputStream;->tmp:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/narvii/util/SafeFileOutputStream;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 121
    iget-object v0, p0, Lcom/narvii/util/SafeFileOutputStream;->tmp:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v0, 0x0

    .line 122
    iput-object v0, p0, Lcom/narvii/util/SafeFileOutputStream;->tmp:Ljava/io/File;

    .line 124
    :cond_0
    throw p1
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/narvii/util/SafeFileOutputStream;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 105
    iget-object p2, p0, Lcom/narvii/util/SafeFileOutputStream;->tmp:Ljava/io/File;

    if-eqz p2, :cond_0

    .line 106
    iget-object p2, p0, Lcom/narvii/util/SafeFileOutputStream;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    .line 107
    iget-object p2, p0, Lcom/narvii/util/SafeFileOutputStream;->tmp:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    const/4 p2, 0x0

    .line 108
    iput-object p2, p0, Lcom/narvii/util/SafeFileOutputStream;->tmp:Ljava/io/File;

    .line 110
    :cond_0
    throw p1
.end method
