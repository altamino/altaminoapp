.class public Lpl/droidsonroids/gif/g;
.super Lpl/droidsonroids/gif/k;
.source "SourceFile"


# instance fields
.field public dListener:Lpl/droidsonroids/gif/a;

.field final initLength:J

.field final numFrames:I

.field stopFrame:I


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lpl/droidsonroids/gif/k;-><init>(Ljava/io/File;)V

    .line 4
    const/4 v0, -0x1

    .line 5
    .line 6
    iput v0, p0, Lpl/droidsonroids/gif/g;->stopFrame:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/io/File;->length()J

    .line 10
    move-result-wide v0

    .line 11
    .line 12
    iput-wide v0, p0, Lpl/droidsonroids/gif/g;->initLength:J

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lpl/droidsonroids/gif/b;->d()I

    .line 16
    move-result p1

    .line 17
    .line 18
    iput p1, p0, Lpl/droidsonroids/gif/g;->numFrames:I

    .line 19
    .line 20
    iget-object p1, p0, Lpl/droidsonroids/gif/b;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lpl/droidsonroids/gif/GifInfoHandle;->q()Z

    .line 24
    return-void
.end method

.method public static n(Ljava/io/File;)I
    .locals 1

    .line 1
    .line 2
    :try_start_0
    new-instance v0, Lpl/droidsonroids/gif/GifInfoHandle;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p0}, Lpl/droidsonroids/gif/GifInfoHandle;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->i()I

    .line 13
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    return p0

    .line 15
    :catch_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lpl/droidsonroids/gif/b;->draw(Landroid/graphics/Canvas;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lpl/droidsonroids/gif/b;->b()I

    .line 7
    move-result p1

    .line 8
    .line 9
    iget v0, p0, Lpl/droidsonroids/gif/g;->numFrames:I

    .line 10
    .line 11
    add-int/lit8 v0, v0, -0x2

    .line 12
    .line 13
    if-lt p1, v0, :cond_0

    .line 14
    .line 15
    iget v0, p0, Lpl/droidsonroids/gif/g;->stopFrame:I

    .line 16
    const/4 v1, -0x1

    .line 17
    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    iput p1, p0, Lpl/droidsonroids/gif/g;->stopFrame:I

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lpl/droidsonroids/gif/b;->stop()V

    .line 24
    .line 25
    iget-object p1, p0, Lpl/droidsonroids/gif/g;->dListener:Lpl/droidsonroids/gif/a;

    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 29
    .line 30
    .line 31
    invoke-interface {p1, v0}, Lpl/droidsonroids/gif/a;->onAnimationCompleted(I)V

    .line 32
    :cond_0
    return-void
.end method

.method public o(Ljava/io/File;)Lpl/droidsonroids/gif/g;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/io/File;->length()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    iget-wide v2, p0, Lpl/droidsonroids/gif/g;->initLength:J

    .line 7
    .line 8
    cmp-long v0, v0, v2

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    if-gtz v0, :cond_0

    .line 12
    return-object v1

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Lpl/droidsonroids/gif/b;->d()I

    .line 16
    move-result v0

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lpl/droidsonroids/gif/g;->n(Ljava/io/File;)I

    .line 20
    move-result v2

    .line 21
    .line 22
    add-int/lit8 v0, v0, 0x2

    .line 23
    .line 24
    if-le v2, v0, :cond_2

    .line 25
    .line 26
    new-instance v0, Lpl/droidsonroids/gif/g;

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, p1}, Lpl/droidsonroids/gif/g;-><init>(Ljava/io/File;)V

    .line 30
    .line 31
    iget p1, p0, Lpl/droidsonroids/gif/g;->stopFrame:I

    .line 32
    .line 33
    if-lez p1, :cond_1

    .line 34
    .line 35
    iget-object v1, v0, Lpl/droidsonroids/gif/b;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 36
    .line 37
    add-int/lit8 p1, p1, -0x1

    .line 38
    .line 39
    iget-object v2, v0, Lpl/droidsonroids/gif/b;->mBuffer:Landroid/graphics/Bitmap;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, p1, v2}, Lpl/droidsonroids/gif/GifInfoHandle;->t(ILandroid/graphics/Bitmap;)V

    .line 43
    :cond_1
    return-object v0

    .line 44
    :cond_2
    return-object v1
.end method

.method public p(Ljava/io/File;)Lpl/droidsonroids/gif/b;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lpl/droidsonroids/gif/GifInfoHandle;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p1}, Lpl/droidsonroids/gif/GifInfoHandle;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    new-instance p1, Lpl/droidsonroids/gif/b;

    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x1

    .line 14
    .line 15
    .line 16
    invoke-direct {p1, v0, p0, v1, v2}, Lpl/droidsonroids/gif/b;-><init>(Lpl/droidsonroids/gif/GifInfoHandle;Lpl/droidsonroids/gif/b;Ljava/util/concurrent/ScheduledThreadPoolExecutor;Z)V

    .line 17
    .line 18
    iget v1, p0, Lpl/droidsonroids/gif/g;->stopFrame:I

    .line 19
    .line 20
    if-lez v1, :cond_0

    .line 21
    sub-int/2addr v1, v2

    .line 22
    .line 23
    iget-object v2, p1, Lpl/droidsonroids/gif/b;->mBuffer:Landroid/graphics/Bitmap;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Lpl/droidsonroids/gif/GifInfoHandle;->t(ILandroid/graphics/Bitmap;)V

    .line 27
    :cond_0
    return-object p1
.end method
