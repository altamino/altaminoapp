.class public Lcom/narvii/util/drawables/gif/NVGifDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "NVGifDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Ljava/lang/Runnable;
.implements Lpl/droidsonroids/gif/AnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/util/drawables/gif/NVGifDrawable$CheckTask;,
        Lcom/narvii/util/drawables/gif/NVGifDrawable$DrawToBuffer;
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

.field drawable:Lpl/droidsonroids/gif/GifDrawable;

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

    .line 53
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->originalFile:Ljava/io/File;

    .line 55
    iput-object v0, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->writingFile:Ljava/io/File;

    .line 56
    new-instance v0, Lpl/droidsonroids/gif/GifDrawable;

    invoke-direct {v0, p1, p2}, Lpl/droidsonroids/gif/GifDrawable;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/narvii/util/drawables/gif/NVGifDrawable;->setDrawable(Lpl/droidsonroids/gif/GifDrawable;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/narvii/util/drawables/gif/NVGifDrawable;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->originalFile:Ljava/io/File;

    .line 43
    iput-object p2, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->writingFile:Ljava/io/File;

    .line 44
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->originalFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 45
    new-instance p1, Lpl/droidsonroids/gif/SafeGifDrawable;

    iget-object p2, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->originalFile:Ljava/io/File;

    invoke-direct {p1, p2}, Lpl/droidsonroids/gif/SafeGifDrawable;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, p1}, Lcom/narvii/util/drawables/gif/NVGifDrawable;->setDrawable(Lpl/droidsonroids/gif/GifDrawable;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 47
    new-instance p1, Lpl/droidsonroids/gif/LGifDrawable;

    invoke-direct {p1, p2}, Lpl/droidsonroids/gif/LGifDrawable;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, p1}, Lcom/narvii/util/drawables/gif/NVGifDrawable;->setDrawable(Lpl/droidsonroids/gif/GifDrawable;)V

    :goto_0
    return-void

    .line 49
    :cond_1
    new-instance p2, Ljava/io/FileNotFoundException;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private scheduleCheck()V
    .locals 4

    .line 219
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->originalFile:Ljava/io/File;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->writingFile:Ljava/io/File;

    if-nez v0, :cond_0

    goto :goto_1

    .line 222
    :cond_0
    sget-object v0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->CHECK_HANDLER:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 223
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "gifcheck"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 225
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/narvii/util/drawables/gif/NVGifDrawable;->CHECK_HANDLER:Landroid/os/Handler;

    goto :goto_0

    .line 226
    :cond_1
    iget-object v1, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->task:Lcom/narvii/util/drawables/gif/NVGifDrawable$CheckTask;

    if-eqz v1, :cond_2

    .line 227
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 229
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->task:Lcom/narvii/util/drawables/gif/NVGifDrawable$CheckTask;

    if-nez v0, :cond_3

    .line 230
    new-instance v0, Lcom/narvii/util/drawables/gif/NVGifDrawable$CheckTask;

    invoke-direct {v0, p0}, Lcom/narvii/util/drawables/gif/NVGifDrawable$CheckTask;-><init>(Lcom/narvii/util/drawables/gif/NVGifDrawable;)V

    iput-object v0, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->task:Lcom/narvii/util/drawables/gif/NVGifDrawable$CheckTask;

    .line 232
    :cond_3
    sget-object v0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->CHECK_HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->task:Lcom/narvii/util/drawables/gif/NVGifDrawable$CheckTask;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public declared-synchronized draw()Landroid/graphics/Bitmap;
    .locals 2

    monitor-enter p0

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->drawToCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->drawToCanvas:Landroid/graphics/Canvas;

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->drawToBuffer:Lcom/narvii/util/drawables/gif/NVGifDrawable$DrawToBuffer;

    if-nez v0, :cond_1

    .line 179
    new-instance v0, Lcom/narvii/util/drawables/gif/NVGifDrawable$DrawToBuffer;

    invoke-direct {v0, p0}, Lcom/narvii/util/drawables/gif/NVGifDrawable$DrawToBuffer;-><init>(Lcom/narvii/util/drawables/gif/NVGifDrawable;)V

    iput-object v0, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->drawToBuffer:Lcom/narvii/util/drawables/gif/NVGifDrawable$DrawToBuffer;

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->drawable:Lpl/droidsonroids/gif/GifDrawable;

    iget-object v1, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->drawToBuffer:Lcom/narvii/util/drawables/gif/NVGifDrawable$DrawToBuffer;

    invoke-virtual {v0, v1}, Lpl/droidsonroids/gif/GifDrawable;->setTransform(Lpl/droidsonroids/gif/transforms/Transform;)V

    .line 182
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->drawable:Lpl/droidsonroids/gif/GifDrawable;

    iget-object v1, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->drawToCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Lpl/droidsonroids/gif/GifDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 183
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->drawable:Lpl/droidsonroids/gif/GifDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lpl/droidsonroids/gif/GifDrawable;->setTransform(Lpl/droidsonroids/gif/transforms/Transform;)V

    .line 184
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->buffer:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized draw(Landroid/graphics/Canvas;)V
    .locals 2

    monitor-enter p0

    .line 123
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 125
    monitor-exit p0

    return-void

    .line 126
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->drawable:Lpl/droidsonroids/gif/GifDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 127
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->drawable:Lpl/droidsonroids/gif/GifDrawable;

    invoke-virtual {v0, p1}, Lpl/droidsonroids/gif/GifDrawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
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

    .line 72
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->drawable:Lpl/droidsonroids/gif/GifDrawable;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifDrawable;->getCurrentFrameIndex()I

    move-result v0

    return v0
.end method

.method public declared-synchronized getIntrinsicHeight()I
    .locals 1

    monitor-enter p0

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->drawable:Lpl/droidsonroids/gif/GifDrawable;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifDrawable;->getIntrinsicHeight()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getIntrinsicWidth()I
    .locals 1

    monitor-enter p0

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->drawable:Lpl/droidsonroids/gif/GifDrawable;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifDrawable;->getIntrinsicWidth()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMinimumHeight()I
    .locals 1

    monitor-enter p0

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->drawable:Lpl/droidsonroids/gif/GifDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMinimumWidth()I
    .locals 1

    monitor-enter p0

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->drawable:Lpl/droidsonroids/gif/GifDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNumberOfFrames()I
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->drawable:Lpl/droidsonroids/gif/GifDrawable;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifDrawable;->getNumberOfFrames()I

    move-result v0

    return v0
.end method

.method public declared-synchronized getOpacity()I
    .locals 1

    monitor-enter p0

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->drawable:Lpl/droidsonroids/gif/GifDrawable;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifDrawable;->getOpacity()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    monitor-enter p0

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->drawable:Lpl/droidsonroids/gif/GifDrawable;

    if-ne p1, v0, :cond_0

    .line 149
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method isWriting()Z
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->drawable:Lpl/droidsonroids/gif/GifDrawable;

    instance-of v0, v0, Lpl/droidsonroids/gif/LGifDrawable;

    return v0
.end method

.method public onAnimationCompleted(I)V
    .locals 0

    .line 213
    invoke-direct {p0}, Lcom/narvii/util/drawables/gif/NVGifDrawable;->scheduleCheck()V

    return-void
.end method

.method public recycle()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->drawable:Lpl/droidsonroids/gif/GifDrawable;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifDrawable;->recycle()V

    return-void
.end method

.method public run()V
    .locals 0

    .line 208
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public declared-synchronized scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1

    monitor-enter p0

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->drawable:Lpl/droidsonroids/gif/GifDrawable;

    if-ne p1, v0, :cond_0

    .line 156
    invoke-virtual {p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

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

.method declared-synchronized setDrawable(Lpl/droidsonroids/gif/GifDrawable;)V
    .locals 2

    monitor-enter p0

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->drawable:Lpl/droidsonroids/gif/GifDrawable;

    instance-of v0, v0, Lpl/droidsonroids/gif/LGifDrawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->drawable:Lpl/droidsonroids/gif/GifDrawable;

    check-cast v0, Lpl/droidsonroids/gif/LGifDrawable;

    iput-object v1, v0, Lpl/droidsonroids/gif/LGifDrawable;->dListener:Lpl/droidsonroids/gif/AnimationListener;

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->drawable:Lpl/droidsonroids/gif/GifDrawable;

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->drawable:Lpl/droidsonroids/gif/GifDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 137
    :cond_1
    iput-object p1, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->drawable:Lpl/droidsonroids/gif/GifDrawable;

    .line 138
    instance-of v0, p1, Lpl/droidsonroids/gif/LGifDrawable;

    if-eqz v0, :cond_2

    .line 139
    move-object v0, p1

    check-cast v0, Lpl/droidsonroids/gif/LGifDrawable;

    iput-object p0, v0, Lpl/droidsonroids/gif/LGifDrawable;->dListener:Lpl/droidsonroids/gif/AnimationListener;

    :cond_2
    if-eqz p1, :cond_3

    .line 142
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setFilterBitmap(Z)V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/narvii/util/drawables/gif/NVGifDrawable;->drawable:Lpl/droidsonroids/gif/GifDrawable;

    invoke-virtual {v1}, Lpl/droidsonroids/gif/GifDrawable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", writing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/narvii/util/drawables/gif/NVGifDrawable;->isWriting()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    monitor-enter p0

    .line 162
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
