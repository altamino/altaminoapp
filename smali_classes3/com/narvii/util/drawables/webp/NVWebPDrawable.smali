.class public Lcom/narvii/util/drawables/webp/NVWebPDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "NVWebPDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# instance fields
.field callback:Landroid/graphics/drawable/Drawable$Callback;

.field public drawable:Landroid/support/rastermill/FrameSequenceDrawable;


# direct methods
.method public constructor <init>(Landroid/support/rastermill/FrameSequenceDrawable;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/narvii/util/drawables/webp/NVWebPDrawable;->drawable:Landroid/support/rastermill/FrameSequenceDrawable;

    .line 57
    iget-object p1, p0, Lcom/narvii/util/drawables/webp/NVWebPDrawable;->drawable:Landroid/support/rastermill/FrameSequenceDrawable;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-void
.end method

.method public static getFromFile(Ljava/io/File;)Lcom/narvii/util/drawables/webp/NVWebPDrawable;
    .locals 6

    .line 30
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 32
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :try_start_1
    invoke-static {v0}, Landroid/support/rastermill/FrameSequence;->decodeStream(Ljava/io/InputStream;)Landroid/support/rastermill/FrameSequence;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 34
    invoke-virtual {p0}, Landroid/support/rastermill/FrameSequence;->getFrameCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 35
    new-instance v2, Landroid/support/rastermill/FrameSequenceDrawable;

    invoke-direct {v2, p0}, Landroid/support/rastermill/FrameSequenceDrawable;-><init>(Landroid/support/rastermill/FrameSequence;)V

    .line 36
    invoke-virtual {p0}, Landroid/support/rastermill/FrameSequence;->getFrameCount()I

    move-result p0

    const/4 v3, 0x1

    if-ne p0, v3, :cond_0

    .line 37
    invoke-virtual {v2, v3}, Landroid/support/rastermill/FrameSequenceDrawable;->setLoopBehavior(I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    .line 39
    invoke-virtual {v2, p0}, Landroid/support/rastermill/FrameSequenceDrawable;->setLoopBehavior(I)V

    .line 40
    invoke-virtual {v2}, Landroid/support/rastermill/FrameSequenceDrawable;->start()V

    .line 42
    :goto_0
    new-instance p0, Lcom/narvii/util/drawables/webp/NVWebPDrawable;

    invoke-direct {p0, v2}, Lcom/narvii/util/drawables/webp/NVWebPDrawable;-><init>(Landroid/support/rastermill/FrameSequenceDrawable;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, p0

    .line 47
    :cond_1
    :goto_1
    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    goto :goto_5

    :catch_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_4

    :catch_2
    move-exception p0

    goto :goto_2

    :catch_3
    move-exception p0

    :goto_2
    move-object v0, v1

    .line 45
    :goto_3
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    .line 47
    :goto_4
    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 49
    throw p0

    :cond_2
    :goto_5
    return-object v1
.end method


# virtual methods
.method public draw()Landroid/graphics/Bitmap;
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/narvii/util/drawables/webp/NVWebPDrawable;->drawable:Landroid/support/rastermill/FrameSequenceDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 62
    iget-object v0, p0, Lcom/narvii/util/drawables/webp/NVWebPDrawable;->drawable:Landroid/support/rastermill/FrameSequenceDrawable;

    invoke-virtual {v0}, Landroid/support/rastermill/FrameSequenceDrawable;->draw()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/narvii/util/drawables/webp/NVWebPDrawable;->drawable:Landroid/support/rastermill/FrameSequenceDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 68
    iget-object v0, p0, Lcom/narvii/util/drawables/webp/NVWebPDrawable;->drawable:Landroid/support/rastermill/FrameSequenceDrawable;

    invoke-virtual {v0, p1}, Landroid/support/rastermill/FrameSequenceDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public declared-synchronized getIntrinsicHeight()I
    .locals 1

    monitor-enter p0

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/narvii/util/drawables/webp/NVWebPDrawable;->drawable:Landroid/support/rastermill/FrameSequenceDrawable;

    invoke-virtual {v0}, Landroid/support/rastermill/FrameSequenceDrawable;->getIntrinsicHeight()I

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

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/narvii/util/drawables/webp/NVWebPDrawable;->drawable:Landroid/support/rastermill/FrameSequenceDrawable;

    invoke-virtual {v0}, Landroid/support/rastermill/FrameSequenceDrawable;->getIntrinsicWidth()I

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

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/narvii/util/drawables/webp/NVWebPDrawable;->drawable:Landroid/support/rastermill/FrameSequenceDrawable;

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

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/narvii/util/drawables/webp/NVWebPDrawable;->drawable:Landroid/support/rastermill/FrameSequenceDrawable;

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

.method public getOpacity()I
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/narvii/util/drawables/webp/NVWebPDrawable;->drawable:Landroid/support/rastermill/FrameSequenceDrawable;

    invoke-virtual {v0}, Landroid/support/rastermill/FrameSequenceDrawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/narvii/util/drawables/webp/NVWebPDrawable;->drawable:Landroid/support/rastermill/FrameSequenceDrawable;

    if-ne p1, v0, :cond_0

    .line 109
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/narvii/util/drawables/webp/NVWebPDrawable;->drawable:Landroid/support/rastermill/FrameSequenceDrawable;

    if-ne p1, v0, :cond_0

    .line 116
    invoke-virtual {p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/narvii/util/drawables/webp/NVWebPDrawable;->drawable:Landroid/support/rastermill/FrameSequenceDrawable;

    invoke-virtual {v0, p1}, Landroid/support/rastermill/FrameSequenceDrawable;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/narvii/util/drawables/webp/NVWebPDrawable;->drawable:Landroid/support/rastermill/FrameSequenceDrawable;

    invoke-virtual {v0, p1}, Landroid/support/rastermill/FrameSequenceDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    .line 122
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method
