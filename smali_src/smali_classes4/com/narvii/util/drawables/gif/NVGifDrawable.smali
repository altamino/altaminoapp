.class public Lcom/narvii/util/drawables/gif/NVGifDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Ljava/lang/Runnable;
.implements Lpl/droidsonroids/gif/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/util/drawables/gif/NVGifDrawable$DrawToBuffer;,
        Lcom/narvii/util/drawables/gif/NVGifDrawable$CheckTask;
    }
.end annotation


# static fields
.field static CHECK_HANDLER:Landroid/os/Handler; = null

.field static final CHECK_INTERVAL:I = 0x190


# instance fields
.field buffer:Landroid/graphics/Bitmap;

.field callback:Landroid/graphics/drawable/Drawable$Callback;

.field drawToBuffer:Lcom/narvii/util/drawables/gif/NVGifDrawable$DrawToBuffer;

.field drawToCanvas:Landroid/graphics/Canvas;

.field drawable:Lpl/droidsonroids/gif/b;

.field final originalFile:Ljava/io/File;

.field task:Lcom/narvii/util/drawables/gif/NVGifDrawable$CheckTask;

.field final writingFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->originalFile:Ljava/io/File;

    iput-object v0, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->writingFile:Ljava/io/File;

    .line 8
    new-instance v0, Lpl/droidsonroids/gif/b;

    invoke-direct {v0, p1, p2}, Lpl/droidsonroids/gif/b;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/narvii/util/drawables/gif/NVGifDrawable;->setDrawable(Lpl/droidsonroids/gif/b;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/util/drawables/gif/NVGifDrawable;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .locals 4
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object p1, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->originalFile:Ljava/io/File;

    iput-object p2, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->writingFile:Ljava/io/File;

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 4
    new-instance p2, Lpl/droidsonroids/gif/k;

    invoke-direct {p2, p1}, Lpl/droidsonroids/gif/k;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, p2}, Lcom/narvii/util/drawables/gif/NVGifDrawable;->setDrawable(Lpl/droidsonroids/gif/b;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 5
    new-instance p1, Lpl/droidsonroids/gif/g;

    invoke-direct {p1, p2}, Lpl/droidsonroids/gif/g;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, p1}, Lcom/narvii/util/drawables/gif/NVGifDrawable;->setDrawable(Lpl/droidsonroids/gif/b;)V

    :goto_0
    return-void

    .line 6
    :cond_1
    new-instance p2, Ljava/io/FileNotFoundException;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private scheduleCheck()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->originalFile:Ljava/io/File;

    .line 3
    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->writingFile:Ljava/io/File;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    goto :goto_1

    .line 10
    .line 11
    :cond_0
    sget-object v0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->CHECK_HANDLER:Landroid/os/Handler;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    new-instance v0, Landroid/os/HandlerThread;

    .line 16
    .line 17
    const-string v1, "gifcheck"

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 24
    .line 25
    new-instance v1, Landroid/os/Handler;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 33
    .line 34
    sput-object v1, Lcom/narvii/util/drawables/gif/NVGifDrawable;->CHECK_HANDLER:Landroid/os/Handler;

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_1
    iget-object v1, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->task:Lcom/narvii/util/drawables/gif/NVGifDrawable$CheckTask;

    .line 38
    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 43
    .line 44
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->task:Lcom/narvii/util/drawables/gif/NVGifDrawable$CheckTask;

    .line 45
    .line 46
    if-nez v0, :cond_3

    .line 47
    .line 48
    new-instance v0, Lcom/narvii/util/drawables/gif/NVGifDrawable$CheckTask;

    .line 49
    .line 50
    .line 51
    invoke-direct {v0, p0}, Lcom/narvii/util/drawables/gif/NVGifDrawable$CheckTask;-><init>(Lcom/narvii/util/drawables/gif/NVGifDrawable;)V

    .line 52
    .line 53
    iput-object v0, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->task:Lcom/narvii/util/drawables/gif/NVGifDrawable$CheckTask;

    .line 54
    .line 55
    :cond_3
    sget-object v0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->CHECK_HANDLER:Landroid/os/Handler;

    .line 56
    .line 57
    iget-object v1, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->task:Lcom/narvii/util/drawables/gif/NVGifDrawable$CheckTask;

    .line 58
    .line 59
    const-wide/16 v2, 0x190

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 63
    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public declared-synchronized draw()Landroid/graphics/Bitmap;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->drawToCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_0

    .line 6
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->drawToCanvas:Landroid/graphics/Canvas;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->drawToBuffer:Lcom/narvii/util/drawables/gif/NVGifDrawable$DrawToBuffer;

    if-nez v0, :cond_1

    .line 7
    new-instance v0, Lcom/narvii/util/drawables/gif/NVGifDrawable$DrawToBuffer;

    invoke-direct {v0, p0}, Lcom/narvii/util/drawables/gif/NVGifDrawable$DrawToBuffer;-><init>(Lcom/narvii/util/drawables/gif/NVGifDrawable;)V

    iput-object v0, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->drawToBuffer:Lcom/narvii/util/drawables/gif/NVGifDrawable$DrawToBuffer;

    :cond_1
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->drawable:Lpl/droidsonroids/gif/b;

    iget-object v1, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->drawToBuffer:Lcom/narvii/util/drawables/gif/NVGifDrawable$DrawToBuffer;

    .line 8
    invoke-virtual {v0, v1}, Lpl/droidsonroids/gif/b;->i(Lsa/a;)V

    iget-object v0, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->drawable:Lpl/droidsonroids/gif/b;

    iget-object v1, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->drawToCanvas:Landroid/graphics/Canvas;

    .line 9
    invoke-virtual {v0, v1}, Lpl/droidsonroids/gif/b;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->drawable:Lpl/droidsonroids/gif/b;

    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Lpl/droidsonroids/gif/b;->i(Lsa/a;)V

    iget-object v0, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->buffer:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized draw(Landroid/graphics/Canvas;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->drawable:Lpl/droidsonroids/gif/b;

    .line 3
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->drawable:Lpl/droidsonroids/gif/b;

    .line 4
    invoke-virtual {v0, p1}, Lpl/droidsonroids/gif/b;->draw(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getAlpha()I
    .locals 1

    const/16 v0, 0xff

    return v0
.end method

.method public getCurrentFrameIndex()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->drawable:Lpl/droidsonroids/gif/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lpl/droidsonroids/gif/b;->b()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public declared-synchronized getIntrinsicHeight()I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->drawable:Lpl/droidsonroids/gif/b;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lpl/droidsonroids/gif/b;->getIntrinsicHeight()I

    .line 7
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    .line 9
    return v0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    monitor-exit p0

    .line 12
    throw v0
.end method

.method public declared-synchronized getIntrinsicWidth()I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->drawable:Lpl/droidsonroids/gif/b;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lpl/droidsonroids/gif/b;->getIntrinsicWidth()I

    .line 7
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    .line 9
    return v0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    monitor-exit p0

    .line 12
    throw v0
.end method

.method public declared-synchronized getMinimumHeight()I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->drawable:Lpl/droidsonroids/gif/b;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    .line 7
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    .line 9
    return v0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    monitor-exit p0

    .line 12
    throw v0
.end method

.method public declared-synchronized getMinimumWidth()I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->drawable:Lpl/droidsonroids/gif/b;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    .line 7
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    .line 9
    return v0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    monitor-exit p0

    .line 12
    throw v0
.end method

.method public getNumberOfFrames()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->drawable:Lpl/droidsonroids/gif/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lpl/droidsonroids/gif/b;->d()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public declared-synchronized getOpacity()I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->drawable:Lpl/droidsonroids/gif/b;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lpl/droidsonroids/gif/b;->getOpacity()I

    .line 7
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    .line 9
    return v0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    monitor-exit p0

    .line 12
    throw v0
.end method

.method public declared-synchronized invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->drawable:Lpl/droidsonroids/gif/b;

    .line 4
    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    :goto_0
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :goto_1
    monitor-exit p0

    .line 15
    throw p1
.end method

.method isWriting()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->drawable:Lpl/droidsonroids/gif/b;

    .line 3
    .line 4
    instance-of v0, v0, Lpl/droidsonroids/gif/g;

    .line 5
    return v0
.end method

.method public onAnimationCompleted(I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/util/drawables/gif/NVGifDrawable;->scheduleCheck()V

    .line 4
    return-void
.end method

.method public recycle()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->drawable:Lpl/droidsonroids/gif/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lpl/droidsonroids/gif/b;->f()V

    .line 6
    return-void
.end method

.method public run()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 4
    return-void
.end method

.method public declared-synchronized scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->drawable:Lpl/droidsonroids/gif/b;

    .line 4
    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    :goto_0
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :goto_1
    monitor-exit p0

    .line 15
    throw p1
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setDither(Z)V
    .locals 0

    return-void
.end method

.method declared-synchronized setDrawable(Lpl/droidsonroids/gif/b;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->drawable:Lpl/droidsonroids/gif/b;

    .line 4
    .line 5
    instance-of v1, v0, Lpl/droidsonroids/gif/g;

    .line 6
    const/4 v2, 0x0

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    move-object v1, v0

    .line 10
    .line 11
    check-cast v1, Lpl/droidsonroids/gif/g;

    .line 12
    .line 13
    iput-object v2, v1, Lpl/droidsonroids/gif/g;->dListener:Lpl/droidsonroids/gif/a;

    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    goto :goto_1

    .line 17
    .line 18
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 22
    .line 23
    :cond_1
    iput-object p1, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->drawable:Lpl/droidsonroids/gif/b;

    .line 24
    .line 25
    instance-of v0, p1, Lpl/droidsonroids/gif/g;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    move-object v0, p1

    .line 29
    .line 30
    check-cast v0, Lpl/droidsonroids/gif/g;

    .line 31
    .line 32
    iput-object p0, v0, Lpl/droidsonroids/gif/g;->dListener:Lpl/droidsonroids/gif/a;

    .line 33
    .line 34
    :cond_2
    if-eqz p1, :cond_3

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_3
    monitor-exit p0

    .line 39
    return-void

    .line 40
    :goto_1
    monitor-exit p0

    .line 41
    throw p1
.end method

.method public setFilterBitmap(Z)V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->drawable:Lpl/droidsonroids/gif/b;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Lpl/droidsonroids/gif/b;->toString()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v1, ", writing: "

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/narvii/util/drawables/gif/NVGifDrawable;->isWriting()Z

    .line 23
    move-result v1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    return-object v0
.end method

.method public declared-synchronized unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception p1

    .line 8
    monitor-exit p0

    .line 9
    throw p1
.end method
