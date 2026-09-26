.class public Lcom/narvii/video/gles/FullFrameRect;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mProgram:Lcom/narvii/video/gles/Texture2dProgram;

.field private final mRectDrawable:Lcom/narvii/video/gles/Drawable2d;

.field mvpMatrix:[F


# direct methods
.method public constructor <init>(Lcom/narvii/video/gles/Texture2dProgram;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/video/gles/Drawable2d;

    .line 6
    .line 7
    sget-object v1, Lcom/narvii/video/gles/Drawable2d$Prefab;->FULL_RECTANGLE:Lcom/narvii/video/gles/Drawable2d$Prefab;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/narvii/video/gles/Drawable2d;-><init>(Lcom/narvii/video/gles/Drawable2d$Prefab;)V

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/video/gles/FullFrameRect;->mRectDrawable:Lcom/narvii/video/gles/Drawable2d;

    .line 13
    .line 14
    const/16 v0, 0x10

    .line 15
    .line 16
    new-array v0, v0, [F

    .line 17
    .line 18
    iput-object v0, p0, Lcom/narvii/video/gles/FullFrameRect;->mvpMatrix:[F

    .line 19
    .line 20
    iput-object p1, p0, Lcom/narvii/video/gles/FullFrameRect;->mProgram:Lcom/narvii/video/gles/Texture2dProgram;

    .line 21
    const/4 p1, 0x0

    .line 22
    .line 23
    .line 24
    invoke-static {v0, p1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 25
    return-void
.end method


# virtual methods
.method public changeProgram(Lcom/narvii/video/gles/Texture2dProgram;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/gles/FullFrameRect;->mProgram:Lcom/narvii/video/gles/Texture2dProgram;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/video/gles/Texture2dProgram;->release()V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/video/gles/FullFrameRect;->mProgram:Lcom/narvii/video/gles/Texture2dProgram;

    .line 8
    return-void
.end method

.method public createTextureObject()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/gles/FullFrameRect;->mProgram:Lcom/narvii/video/gles/Texture2dProgram;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/video/gles/Texture2dProgram;->createTextureObject()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public drawFrame(I[F)V
    .locals 11

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/gles/FullFrameRect;->mProgram:Lcom/narvii/video/gles/Texture2dProgram;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v1, p0, Lcom/narvii/video/gles/FullFrameRect;->mvpMatrix:[F

    .line 8
    .line 9
    iget-object v2, p0, Lcom/narvii/video/gles/FullFrameRect;->mRectDrawable:Lcom/narvii/video/gles/Drawable2d;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2}, Lcom/narvii/video/gles/Drawable2d;->getVertexArray()Ljava/nio/FloatBuffer;

    .line 13
    move-result-object v2

    .line 14
    const/4 v3, 0x0

    .line 15
    .line 16
    iget-object v4, p0, Lcom/narvii/video/gles/FullFrameRect;->mRectDrawable:Lcom/narvii/video/gles/Drawable2d;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v4}, Lcom/narvii/video/gles/Drawable2d;->getVertexCount()I

    .line 20
    move-result v4

    .line 21
    .line 22
    iget-object v5, p0, Lcom/narvii/video/gles/FullFrameRect;->mRectDrawable:Lcom/narvii/video/gles/Drawable2d;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v5}, Lcom/narvii/video/gles/Drawable2d;->getCoordsPerVertex()I

    .line 26
    move-result v5

    .line 27
    .line 28
    iget-object v6, p0, Lcom/narvii/video/gles/FullFrameRect;->mRectDrawable:Lcom/narvii/video/gles/Drawable2d;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v6}, Lcom/narvii/video/gles/Drawable2d;->getVertexStride()I

    .line 32
    move-result v6

    .line 33
    .line 34
    iget-object v7, p0, Lcom/narvii/video/gles/FullFrameRect;->mRectDrawable:Lcom/narvii/video/gles/Drawable2d;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v7}, Lcom/narvii/video/gles/Drawable2d;->getTexCoordArray()Ljava/nio/FloatBuffer;

    .line 38
    move-result-object v8

    .line 39
    .line 40
    iget-object v7, p0, Lcom/narvii/video/gles/FullFrameRect;->mRectDrawable:Lcom/narvii/video/gles/Drawable2d;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v7}, Lcom/narvii/video/gles/Drawable2d;->getTexCoordStride()I

    .line 44
    move-result v10

    .line 45
    move-object v7, p2

    .line 46
    move v9, p1

    .line 47
    .line 48
    .line 49
    invoke-virtual/range {v0 .. v10}, Lcom/narvii/video/gles/Texture2dProgram;->draw([FLjava/nio/FloatBuffer;IIII[FLjava/nio/FloatBuffer;II)V

    .line 50
    return-void
.end method

.method public getProgram()Lcom/narvii/video/gles/Texture2dProgram;
    .locals 1

    iget-object v0, p0, Lcom/narvii/video/gles/FullFrameRect;->mProgram:Lcom/narvii/video/gles/Texture2dProgram;

    return-object v0
.end method

.method public release(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/gles/FullFrameRect;->mProgram:Lcom/narvii/video/gles/Texture2dProgram;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/video/gles/Texture2dProgram;->release()V

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/video/gles/FullFrameRect;->mProgram:Lcom/narvii/video/gles/Texture2dProgram;

    .line 13
    :cond_1
    return-void
.end method

.method public rotation(I)V
    .locals 4

    .line 1
    int-to-double v0, p1

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    const-wide v2, 0x4066800000000000L    # 180.0

    .line 7
    div-double/2addr v0, v2

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    const-wide v2, 0x400921fb54442d18L    # Math.PI

    .line 13
    mul-double/2addr v0, v2

    .line 14
    .line 15
    iget-object p1, p0, Lcom/narvii/video/gles/FullFrameRect;->mvpMatrix:[F

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    .line 19
    move-result-wide v2

    .line 20
    double-to-float v2, v2

    .line 21
    const/4 v3, 0x0

    .line 22
    .line 23
    aput v2, p1, v3

    .line 24
    .line 25
    iget-object p1, p0, Lcom/narvii/video/gles/FullFrameRect;->mvpMatrix:[F

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    .line 29
    move-result-wide v2

    .line 30
    double-to-float v2, v2

    .line 31
    neg-float v2, v2

    .line 32
    const/4 v3, 0x1

    .line 33
    .line 34
    aput v2, p1, v3

    .line 35
    .line 36
    iget-object p1, p0, Lcom/narvii/video/gles/FullFrameRect;->mvpMatrix:[F

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    .line 40
    move-result-wide v2

    .line 41
    double-to-float v2, v2

    .line 42
    const/4 v3, 0x4

    .line 43
    .line 44
    aput v2, p1, v3

    .line 45
    .line 46
    iget-object p1, p0, Lcom/narvii/video/gles/FullFrameRect;->mvpMatrix:[F

    .line 47
    .line 48
    .line 49
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    .line 50
    move-result-wide v0

    .line 51
    double-to-float v0, v0

    .line 52
    const/4 v1, 0x5

    .line 53
    .line 54
    aput v0, p1, v1

    .line 55
    return-void
.end method
