.class Lcom/narvii/video/EmbedHttpServer$BodyInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/video/EmbedHttpServer$BodyInputStream;->ins:Ljava/io/InputStream;

    .line 6
    .line 7
    iput p2, p0, Lcom/narvii/video/EmbedHttpServer$BodyInputStream;->n:I

    .line 8
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/EmbedHttpServer$BodyInputStream;->ins:Ljava/io/InputStream;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 6
    return-void
.end method

.method public declared-synchronized mark(I)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 4
    .line 5
    .line 6
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 7
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :catchall_0
    move-exception p1

    .line 9
    monitor-exit p0

    .line 10
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

    iget v0, p0, Lcom/narvii/video/EmbedHttpServer$BodyInputStream;->n:I

    const/4 v1, -0x1

    if-gtz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/narvii/video/EmbedHttpServer$BodyInputStream;->ins:Ljava/io/InputStream;

    .line 1
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-eq v0, v1, :cond_1

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

    iget v0, p0, Lcom/narvii/video/EmbedHttpServer$BodyInputStream;->n:I

    const/4 v1, -0x1

    if-gtz v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/narvii/video/EmbedHttpServer$BodyInputStream;->ins:Ljava/io/InputStream;

    if-ge p3, v0, :cond_1

    goto :goto_0

    :cond_1
    move p3, v0

    .line 2
    :goto_0
    invoke-virtual {v2, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-eq p1, v1, :cond_2

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

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    new-instance v0, Ljava/io/IOException;

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "unsupported"

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 10
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    monitor-exit p0

    .line 13
    throw v0
.end method

.method public skip(J)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance p1, Ljava/io/IOException;

    .line 3
    .line 4
    .line 5
    const-string/jumbo p2, "unsupported"

    .line 6
    .line 7
    .line 8
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 9
    throw p1
.end method
