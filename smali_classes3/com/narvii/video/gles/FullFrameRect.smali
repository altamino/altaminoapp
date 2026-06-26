.class public Lcom/narvii/video/gles/FullFrameRect;
.super Ljava/lang/Object;
.source "FullFrameRect.java"


# instance fields
.field private mProgram:Lcom/narvii/video/gles/Texture2dProgram;

.field private final mRectDrawable:Lcom/narvii/video/gles/Drawable2d;

.field mvpMatrix:[F


# direct methods
.method public constructor <init>(Lcom/narvii/video/gles/Texture2dProgram;)V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/narvii/video/gles/Drawable2d;

    sget-object v1, Lcom/narvii/video/gles/Drawable2d$Prefab;->FULL_RECTANGLE:Lcom/narvii/video/gles/Drawable2d$Prefab;

    invoke-direct {v0, v1}, Lcom/narvii/video/gles/Drawable2d;-><init>(Lcom/narvii/video/gles/Drawable2d$Prefab;)V

    iput-object v0, p0, Lcom/narvii/video/gles/FullFrameRect;->mRectDrawable:Lcom/narvii/video/gles/Drawable2d;

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 28
    iput-object v0, p0, Lcom/narvii/video/gles/FullFrameRect;->mvpMatrix:[F

    .line 37
    iput-object p1, p0, Lcom/narvii/video/gles/FullFrameRect;->mProgram:Lcom/narvii/video/gles/Texture2dProgram;

    .line 38
    iget-object p1, p0, Lcom/narvii/video/gles/FullFrameRect;->mvpMatrix:[F

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method


# virtual methods
.method public changeProgram(Lcom/narvii/video/gles/Texture2dProgram;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/narvii/video/gles/FullFrameRect;->mProgram:Lcom/narvii/video/gles/Texture2dProgram;

    invoke-virtual {v0}, Lcom/narvii/video/gles/Texture2dProgram;->release()V

    .line 72
    iput-object p1, p0, Lcom/narvii/video/gles/FullFrameRect;->mProgram:Lcom/narvii/video/gles/Texture2dProgram;

    return-void
.end method

.method public createTextureObject()I
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/narvii/video/gles/FullFrameRect;->mProgram:Lcom/narvii/video/gles/Texture2dProgram;

    invoke-virtual {v0}, Lcom/narvii/video/gles/Texture2dProgram;->createTextureObject()I

    move-result v0

    return v0
.end method

.method public drawFrame(I[F)V
    .locals 11

    .line 94
    iget-object v0, p0, Lcom/narvii/video/gles/FullFrameRect;->mProgram:Lcom/narvii/video/gles/Texture2dProgram;

    if-nez v0, :cond_0

    return-void

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/narvii/video/gles/FullFrameRect;->mvpMatrix:[F

    iget-object v2, p0, Lcom/narvii/video/gles/FullFrameRect;->mRectDrawable:Lcom/narvii/video/gles/Drawable2d;

    invoke-virtual {v2}, Lcom/narvii/video/gles/Drawable2d;->getVertexArray()Ljava/nio/FloatBuffer;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/narvii/video/gles/FullFrameRect;->mRectDrawable:Lcom/narvii/video/gles/Drawable2d;

    .line 99
    invoke-virtual {v4}, Lcom/narvii/video/gles/Drawable2d;->getVertexCount()I

    move-result v4

    iget-object v5, p0, Lcom/narvii/video/gles/FullFrameRect;->mRectDrawable:Lcom/narvii/video/gles/Drawable2d;

    invoke-virtual {v5}, Lcom/narvii/video/gles/Drawable2d;->getCoordsPerVertex()I

    move-result v5

    iget-object v6, p0, Lcom/narvii/video/gles/FullFrameRect;->mRectDrawable:Lcom/narvii/video/gles/Drawable2d;

    .line 100
    invoke-virtual {v6}, Lcom/narvii/video/gles/Drawable2d;->getVertexStride()I

    move-result v6

    iget-object v7, p0, Lcom/narvii/video/gles/FullFrameRect;->mRectDrawable:Lcom/narvii/video/gles/Drawable2d;

    .line 101
    invoke-virtual {v7}, Lcom/narvii/video/gles/Drawable2d;->getTexCoordArray()Ljava/nio/FloatBuffer;

    move-result-object v8

    iget-object v7, p0, Lcom/narvii/video/gles/FullFrameRect;->mRectDrawable:Lcom/narvii/video/gles/Drawable2d;

    .line 102
    invoke-virtual {v7}, Lcom/narvii/video/gles/Drawable2d;->getTexCoordStride()I

    move-result v10

    move-object v7, p2

    move v9, p1

    .line 98
    invoke-virtual/range {v0 .. v10}, Lcom/narvii/video/gles/Texture2dProgram;->draw([FLjava/nio/FloatBuffer;IIII[FLjava/nio/FloatBuffer;II)V

    return-void
.end method

.method public getProgram()Lcom/narvii/video/gles/Texture2dProgram;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/narvii/video/gles/FullFrameRect;->mProgram:Lcom/narvii/video/gles/Texture2dProgram;

    return-object v0
.end method

.method public release(Z)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/narvii/video/gles/FullFrameRect;->mProgram:Lcom/narvii/video/gles/Texture2dProgram;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 52
    invoke-virtual {v0}, Lcom/narvii/video/gles/Texture2dProgram;->release()V

    :cond_0
    const/4 p1, 0x0

    .line 54
    iput-object p1, p0, Lcom/narvii/video/gles/FullFrameRect;->mProgram:Lcom/narvii/video/gles/Texture2dProgram;

    :cond_1
    return-void
.end method

.method public rotation(I)V
    .locals 4

    int-to-double v0, p1

    const-wide v2, 0x4066800000000000L    # 180.0

    .line 83
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double v0, v0, v2

    .line 84
    iget-object p1, p0, Lcom/narvii/video/gles/FullFrameRect;->mvpMatrix:[F

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    const/4 v3, 0x0

    aput v2, p1, v3

    .line 85
    iget-object p1, p0, Lcom/narvii/video/gles/FullFrameRect;->mvpMatrix:[F

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    neg-float v2, v2

    const/4 v3, 0x1

    aput v2, p1, v3

    .line 86
    iget-object p1, p0, Lcom/narvii/video/gles/FullFrameRect;->mvpMatrix:[F

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    const/4 v3, 0x4

    aput v2, p1, v3

    .line 87
    iget-object p1, p0, Lcom/narvii/video/gles/FullFrameRect;->mvpMatrix:[F

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v1, 0x5

    aput v0, p1, v1

    return-void
.end method
