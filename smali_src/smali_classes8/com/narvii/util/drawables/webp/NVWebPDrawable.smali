.class public Lcom/narvii/util/drawables/webp/NVWebPDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# instance fields
.field callback:Landroid/graphics/drawable/Drawable$Callback;

.field public drawable:Landroid/support/rastermill/FrameSequenceDrawable;


# direct methods
.method public constructor <init>(Landroid/support/rastermill/FrameSequenceDrawable;)V
    .locals 0
    .param p1    # Landroid/support/rastermill/FrameSequenceDrawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/util/drawables/webp/NVWebPDrawable;->drawable:Landroid/support/rastermill/FrameSequenceDrawable;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 9
    return-void
.end method

.method public static getFromFile(Ljava/io/File;)Lcom/narvii/util/drawables/webp/NVWebPDrawable;
    .locals 6
    .param p0    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/io/File;->length()J

    .line 11
    move-result-wide v2

    .line 12
    .line 13
    const-wide/16 v4, 0x0

    .line 14
    .line 15
    cmp-long v0, v2, v4

    .line 16
    .line 17
    if-lez v0, :cond_2

    .line 18
    .line 19
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 23
    .line 24
    .line 25
    :try_start_1
    invoke-static {v0}, Landroid/support/rastermill/FrameSequence;->decodeStream(Ljava/io/InputStream;)Landroid/support/rastermill/FrameSequence;

    .line 26
    move-result-object p0

    .line 27
    .line 28
    if-eqz p0, :cond_1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/support/rastermill/FrameSequence;->getFrameCount()I

    .line 32
    move-result v2

    .line 33
    .line 34
    if-lez v2, :cond_1

    .line 35
    .line 36
    new-instance v2, Landroid/support/rastermill/FrameSequenceDrawable;

    .line 37
    .line 38
    .line 39
    invoke-direct {v2, p0}, Landroid/support/rastermill/FrameSequenceDrawable;-><init>(Landroid/support/rastermill/FrameSequence;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/support/rastermill/FrameSequence;->getFrameCount()I

    .line 43
    move-result p0

    .line 44
    const/4 v3, 0x1

    .line 45
    .line 46
    if-ne p0, v3, :cond_0

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v3}, Landroid/support/rastermill/FrameSequenceDrawable;->setLoopBehavior(I)V

    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    move-object v1, v0

    .line 53
    goto :goto_4

    .line 54
    :catch_0
    move-exception p0

    .line 55
    goto :goto_3

    .line 56
    :catch_1
    move-exception p0

    .line 57
    goto :goto_3

    .line 58
    :cond_0
    const/4 p0, 0x2

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, p0}, Landroid/support/rastermill/FrameSequenceDrawable;->setLoopBehavior(I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Landroid/support/rastermill/FrameSequenceDrawable;->start()V

    .line 65
    .line 66
    :goto_0
    new-instance p0, Lcom/narvii/util/drawables/webp/NVWebPDrawable;

    .line 67
    .line 68
    .line 69
    invoke-direct {p0, v2}, Lcom/narvii/util/drawables/webp/NVWebPDrawable;-><init>(Landroid/support/rastermill/FrameSequenceDrawable;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    move-object v1, p0

    .line 71
    .line 72
    .line 73
    :cond_1
    :goto_1
    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 74
    goto :goto_5

    .line 75
    :catchall_1
    move-exception p0

    .line 76
    goto :goto_4

    .line 77
    :catch_2
    move-exception p0

    .line 78
    :goto_2
    move-object v0, v1

    .line 79
    goto :goto_3

    .line 80
    :catch_3
    move-exception p0

    .line 81
    goto :goto_2

    .line 82
    .line 83
    .line 84
    :goto_3
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    goto :goto_1

    .line 86
    .line 87
    .line 88
    :goto_4
    invoke-static {v1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 89
    throw p0

    .line 90
    :cond_2
    :goto_5
    return-object v1
.end method


# virtual methods
.method public draw()Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/narvii/util/drawables/webp/NVWebPDrawable;->drawable:Landroid/support/rastermill/FrameSequenceDrawable;

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/narvii/util/drawables/webp/NVWebPDrawable;->drawable:Landroid/support/rastermill/FrameSequenceDrawable;

    .line 2
    invoke-virtual {v0}, Landroid/support/rastermill/FrameSequenceDrawable;->draw()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/narvii/util/drawables/webp/NVWebPDrawable;->drawable:Landroid/support/rastermill/FrameSequenceDrawable;

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/narvii/util/drawables/webp/NVWebPDrawable;->drawable:Landroid/support/rastermill/FrameSequenceDrawable;

    .line 4
    invoke-virtual {v0, p1}, Landroid/support/rastermill/FrameSequenceDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public declared-synchronized getIntrinsicHeight()I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/narvii/util/drawables/webp/NVWebPDrawable;->drawable:Landroid/support/rastermill/FrameSequenceDrawable;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/support/rastermill/FrameSequenceDrawable;->getIntrinsicHeight()I

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
    iget-object v0, p0, Lcom/narvii/util/drawables/webp/NVWebPDrawable;->drawable:Landroid/support/rastermill/FrameSequenceDrawable;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/support/rastermill/FrameSequenceDrawable;->getIntrinsicWidth()I

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
    iget-object v0, p0, Lcom/narvii/util/drawables/webp/NVWebPDrawable;->drawable:Landroid/support/rastermill/FrameSequenceDrawable;

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
    iget-object v0, p0, Lcom/narvii/util/drawables/webp/NVWebPDrawable;->drawable:Landroid/support/rastermill/FrameSequenceDrawable;

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

.method public getOpacity()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/drawables/webp/NVWebPDrawable;->drawable:Landroid/support/rastermill/FrameSequenceDrawable;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/support/rastermill/FrameSequenceDrawable;->getOpacity()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/drawables/webp/NVWebPDrawable;->drawable:Landroid/support/rastermill/FrameSequenceDrawable;

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 8
    :cond_0
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/drawables/webp/NVWebPDrawable;->drawable:Landroid/support/rastermill/FrameSequenceDrawable;

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 8
    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/drawables/webp/NVWebPDrawable;->drawable:Landroid/support/rastermill/FrameSequenceDrawable;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/support/rastermill/FrameSequenceDrawable;->setAlpha(I)V

    .line 6
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/drawables/webp/NVWebPDrawable;->drawable:Landroid/support/rastermill/FrameSequenceDrawable;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/support/rastermill/FrameSequenceDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 6
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 4
    return-void
.end method
