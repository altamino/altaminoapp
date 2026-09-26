.class public Lio/agora/rtc/gl/TextureBufferImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/agora/rtc/gl/VideoFrame$TextureBuffer;


# instance fields
.field private final height:I

.field private final id:I

.field private refCount:I

.field private final refCountLock:Ljava/lang/Object;

.field private final releaseCallback:Ljava/lang/Runnable;

.field private final surfaceTextureHelper:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

.field private final transformMatrix:Landroid/graphics/Matrix;

.field private final type:Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;

.field private final width:I


# direct methods
.method public constructor <init>(IILio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;ILandroid/graphics/Matrix;Lio/agora/rtc/mediaio/SurfaceTextureHelper;Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "type",
            "id",
            "transformMatrix",
            "surfaceTextureHelper",
            "releaseCallback"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lio/agora/rtc/gl/TextureBufferImpl;->refCountLock:Ljava/lang/Object;

    .line 11
    .line 12
    iput p1, p0, Lio/agora/rtc/gl/TextureBufferImpl;->width:I

    .line 13
    .line 14
    iput p2, p0, Lio/agora/rtc/gl/TextureBufferImpl;->height:I

    .line 15
    .line 16
    iput-object p3, p0, Lio/agora/rtc/gl/TextureBufferImpl;->type:Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;

    .line 17
    .line 18
    iput p4, p0, Lio/agora/rtc/gl/TextureBufferImpl;->id:I

    .line 19
    .line 20
    iput-object p5, p0, Lio/agora/rtc/gl/TextureBufferImpl;->transformMatrix:Landroid/graphics/Matrix;

    .line 21
    .line 22
    iput-object p6, p0, Lio/agora/rtc/gl/TextureBufferImpl;->surfaceTextureHelper:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    .line 23
    .line 24
    iput-object p7, p0, Lio/agora/rtc/gl/TextureBufferImpl;->releaseCallback:Ljava/lang/Runnable;

    .line 25
    const/4 p1, 0x1

    .line 26
    .line 27
    iput p1, p0, Lio/agora/rtc/gl/TextureBufferImpl;->refCount:I

    .line 28
    return-void
.end method


# virtual methods
.method public cropAndScale(IIIIII)Lio/agora/rtc/gl/VideoFrame$Buffer;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cropX",
            "cropY",
            "cropWidth",
            "cropHeight",
            "scaleWidth",
            "scaleHeight"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lio/agora/rtc/gl/TextureBufferImpl;->retain()V

    .line 4
    .line 5
    new-instance v5, Landroid/graphics/Matrix;

    .line 6
    .line 7
    iget-object v0, p0, Lio/agora/rtc/gl/TextureBufferImpl;->transformMatrix:Landroid/graphics/Matrix;

    .line 8
    .line 9
    .line 10
    invoke-direct {v5, v0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 11
    int-to-float p3, p3

    .line 12
    .line 13
    iget v0, p0, Lio/agora/rtc/gl/TextureBufferImpl;->width:I

    .line 14
    int-to-float v0, v0

    .line 15
    div-float/2addr p3, v0

    .line 16
    int-to-float p4, p4

    .line 17
    .line 18
    iget v0, p0, Lio/agora/rtc/gl/TextureBufferImpl;->height:I

    .line 19
    int-to-float v0, v0

    .line 20
    div-float/2addr p4, v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v5, p3, p4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 24
    int-to-float p1, p1

    .line 25
    .line 26
    iget p3, p0, Lio/agora/rtc/gl/TextureBufferImpl;->width:I

    .line 27
    int-to-float p3, p3

    .line 28
    div-float/2addr p1, p3

    .line 29
    int-to-float p2, p2

    .line 30
    .line 31
    iget p3, p0, Lio/agora/rtc/gl/TextureBufferImpl;->height:I

    .line 32
    int-to-float p3, p3

    .line 33
    div-float/2addr p2, p3

    .line 34
    .line 35
    .line 36
    invoke-virtual {v5, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 37
    .line 38
    new-instance p1, Lio/agora/rtc/gl/TextureBufferImpl;

    .line 39
    .line 40
    iget-object v3, p0, Lio/agora/rtc/gl/TextureBufferImpl;->type:Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;

    .line 41
    .line 42
    iget v4, p0, Lio/agora/rtc/gl/TextureBufferImpl;->id:I

    .line 43
    .line 44
    iget-object v6, p0, Lio/agora/rtc/gl/TextureBufferImpl;->surfaceTextureHelper:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    .line 45
    .line 46
    new-instance v7, Lio/agora/rtc/gl/TextureBufferImpl$1;

    .line 47
    .line 48
    .line 49
    invoke-direct {v7, p0}, Lio/agora/rtc/gl/TextureBufferImpl$1;-><init>(Lio/agora/rtc/gl/TextureBufferImpl;)V

    .line 50
    move-object v0, p1

    .line 51
    move v1, p5

    .line 52
    move v2, p6

    .line 53
    .line 54
    .line 55
    invoke-direct/range {v0 .. v7}, Lio/agora/rtc/gl/TextureBufferImpl;-><init>(IILio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;ILandroid/graphics/Matrix;Lio/agora/rtc/mediaio/SurfaceTextureHelper;Ljava/lang/Runnable;)V

    .line 56
    return-object p1
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lio/agora/rtc/gl/TextureBufferImpl;->height:I

    return v0
.end method

.method public getTextureId()I
    .locals 1

    iget v0, p0, Lio/agora/rtc/gl/TextureBufferImpl;->id:I

    return v0
.end method

.method public getTransformMatrix()Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Lio/agora/rtc/gl/TextureBufferImpl;->transformMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getType()Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;
    .locals 1

    iget-object v0, p0, Lio/agora/rtc/gl/TextureBufferImpl;->type:Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lio/agora/rtc/gl/TextureBufferImpl;->width:I

    return v0
.end method

.method public release()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/gl/TextureBufferImpl;->refCountLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget v1, p0, Lio/agora/rtc/gl/TextureBufferImpl;->refCount:I

    .line 6
    .line 7
    add-int/lit8 v1, v1, -0x1

    .line 8
    .line 9
    iput v1, p0, Lio/agora/rtc/gl/TextureBufferImpl;->refCount:I

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lio/agora/rtc/gl/TextureBufferImpl;->releaseCallback:Ljava/lang/Runnable;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v1
.end method

.method public retain()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/gl/TextureBufferImpl;->refCountLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget v1, p0, Lio/agora/rtc/gl/TextureBufferImpl;->refCount:I

    .line 6
    .line 7
    add-int/lit8 v1, v1, 0x1

    .line 8
    .line 9
    iput v1, p0, Lio/agora/rtc/gl/TextureBufferImpl;->refCount:I

    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v1

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw v1
.end method

.method public toI420()Lio/agora/rtc/gl/VideoFrame$I420Buffer;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/gl/TextureBufferImpl;->surfaceTextureHelper:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->textureToYuv(Lio/agora/rtc/gl/VideoFrame$TextureBuffer;)Lio/agora/rtc/gl/VideoFrame$I420Buffer;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
