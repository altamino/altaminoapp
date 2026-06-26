.class Lcom/narvii/video/EmbedHttpServer$BodyInputStream;
.super Ljava/io/InputStream;
.source "EmbedHttpServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/video/EmbedHttpServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BodyInputStream"
.end annotation


# instance fields
.field private ins:Ljava/io/InputStream;

.field private n:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 0

    .line 166
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 167
    iput-object p1, p0, Lcom/narvii/video/EmbedHttpServer$BodyInputStream;->ins:Ljava/io/InputStream;

    .line 168
    iput p2, p0, Lcom/narvii/video/EmbedHttpServer$BodyInputStream;->n:I

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    iget v0, p0, Lcom/narvii/video/EmbedHttpServer$BodyInputStream;->n:I

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/narvii/video/EmbedHttpServer$BodyInputStream;->ins:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public declared-synchronized mark(I)V
    .locals 0

    monitor-enter p0

    .line 208
    :try_start_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    iget v0, p0, Lcom/narvii/video/EmbedHttpServer$BodyInputStream;->n:I

    const/4 v1, -0x1

    if-gtz v0, :cond_0

    return v1

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/EmbedHttpServer$BodyInputStream;->ins:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 182
    iget v1, p0, Lcom/narvii/video/EmbedHttpServer$BodyInputStream;->n:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/narvii/video/EmbedHttpServer$BodyInputStream;->n:I

    :cond_1
    return v0
.end method

.method public read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    iget v0, p0, Lcom/narvii/video/EmbedHttpServer$BodyInputStream;->n:I

    const/4 v1, -0x1

    if-gtz v0, :cond_0

    return v1

    .line 190
    :cond_0
    iget-object v2, p0, Lcom/narvii/video/EmbedHttpServer$BodyInputStream;->ins:Ljava/io/InputStream;

    if-ge p3, v0, :cond_1

    goto :goto_0

    :cond_1
    move p3, v0

    :goto_0
    invoke-virtual {v2, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-eq p1, v1, :cond_2

    .line 192
    iget p2, p0, Lcom/narvii/video/EmbedHttpServer$BodyInputStream;->n:I

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/narvii/video/EmbedHttpServer$BodyInputStream;->n:I

    :cond_2
    return p1
.end method

.method public declared-synchronized reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 213
    :try_start_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unsupported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    new-instance p1, Ljava/io/IOException;

    const-string p2, "unsupported"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
