.class public Lpl/droidsonroids/gif/LGifDrawable;
.super Lpl/droidsonroids/gif/SafeGifDrawable;
.source "LGifDrawable.java"


# instance fields
.field public dListener:Lpl/droidsonroids/gif/AnimationListener;

.field final initLength:J

.field final numFrames:I

.field stopFrame:I


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1}, Lpl/droidsonroids/gif/SafeGifDrawable;-><init>(Ljava/io/File;)V

    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lpl/droidsonroids/gif/LGifDrawable;->stopFrame:I

    .line 20
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lpl/droidsonroids/gif/LGifDrawable;->initLength:J

    .line 21
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifDrawable;->getNumberOfFrames()I

    move-result p1

    iput p1, p0, Lpl/droidsonroids/gif/LGifDrawable;->numFrames:I

    .line 22
    iget-object p1, p0, Lpl/droidsonroids/gif/GifDrawable;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {p1}, Lpl/droidsonroids/gif/GifInfoHandle;->reset()Z

    return-void
.end method

.method public static getNumberOfFrames(Ljava/io/File;)I
    .locals 1

    .line 40
    :try_start_0
    new-instance v0, Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lpl/droidsonroids/gif/GifInfoHandle;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->getNumberOfFrames()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 27
    invoke-super {p0, p1}, Lpl/droidsonroids/gif/GifDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 28
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifDrawable;->getCurrentFrameIndex()I

    move-result p1

    .line 29
    iget v0, p0, Lpl/droidsonroids/gif/LGifDrawable;->numFrames:I

    add-int/lit8 v0, v0, -0x2

    if-lt p1, v0, :cond_0

    iget v0, p0, Lpl/droidsonroids/gif/LGifDrawable;->stopFrame:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 30
    iput p1, p0, Lpl/droidsonroids/gif/LGifDrawable;->stopFrame:I

    .line 31
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifDrawable;->stop()V

    .line 32
    iget-object p1, p0, Lpl/droidsonroids/gif/LGifDrawable;->dListener:Lpl/droidsonroids/gif/AnimationListener;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 33
    invoke-interface {p1, v0}, Lpl/droidsonroids/gif/AnimationListener;->onAnimationCompleted(I)V

    :cond_0
    return-void
.end method

.method public recreate(Ljava/io/File;)Lpl/droidsonroids/gif/LGifDrawable;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-wide v2, p0, Lpl/droidsonroids/gif/LGifDrawable;->initLength:J

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-gtz v5, :cond_0

    return-object v4

    .line 54
    :cond_0
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifDrawable;->getNumberOfFrames()I

    move-result v0

    .line 55
    invoke-static {p1}, Lpl/droidsonroids/gif/LGifDrawable;->getNumberOfFrames(Ljava/io/File;)I

    move-result v1

    add-int/lit8 v0, v0, 0x2

    if-le v1, v0, :cond_2

    .line 59
    new-instance v0, Lpl/droidsonroids/gif/LGifDrawable;

    invoke-direct {v0, p1}, Lpl/droidsonroids/gif/LGifDrawable;-><init>(Ljava/io/File;)V

    .line 60
    iget p1, p0, Lpl/droidsonroids/gif/LGifDrawable;->stopFrame:I

    if-lez p1, :cond_1

    .line 61
    iget-object v1, v0, Lpl/droidsonroids/gif/GifDrawable;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    add-int/lit8 p1, p1, -0x1

    iget-object v2, v0, Lpl/droidsonroids/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v1, p1, v2}, Lpl/droidsonroids/gif/GifInfoHandle;->seekToFrame(ILandroid/graphics/Bitmap;)V

    :cond_1
    return-object v0

    :cond_2
    return-object v4
.end method

.method public recreateFinal(Ljava/io/File;)Lpl/droidsonroids/gif/GifDrawable;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    new-instance v0, Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lpl/droidsonroids/gif/GifInfoHandle;-><init>(Ljava/lang/String;)V

    .line 70
    new-instance p1, Lpl/droidsonroids/gif/GifDrawable;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p1, v0, p0, v2, v1}, Lpl/droidsonroids/gif/GifDrawable;-><init>(Lpl/droidsonroids/gif/GifInfoHandle;Lpl/droidsonroids/gif/GifDrawable;Ljava/util/concurrent/ScheduledThreadPoolExecutor;Z)V

    .line 71
    iget v2, p0, Lpl/droidsonroids/gif/LGifDrawable;->stopFrame:I

    if-lez v2, :cond_0

    sub-int/2addr v2, v1

    .line 72
    iget-object v1, p1, Lpl/droidsonroids/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2, v1}, Lpl/droidsonroids/gif/GifInfoHandle;->seekToFrame(ILandroid/graphics/Bitmap;)V

    :cond_0
    return-object p1
.end method
