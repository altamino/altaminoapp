.class public Lcom/narvii/video/gles/Sprite2d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "Grafika"


# instance fields
.field private mAngle:F

.field private mColor:[F

.field private mDrawable:Lcom/narvii/video/gles/Drawable2d;

.field private mMatrixReady:Z

.field private mModelViewMatrix:[F

.field private mPosX:F

.field private mPosY:F

.field private mScaleX:F

.field private mScaleY:F

.field private mScratchMatrix:[F

.field private mTextureId:I


# direct methods
.method public constructor <init>(Lcom/narvii/video/gles/Drawable2d;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    const/16 v0, 0x10

    .line 6
    .line 7
    new-array v1, v0, [F

    .line 8
    .line 9
    iput-object v1, p0, Lcom/narvii/video/gles/Sprite2d;->mScratchMatrix:[F

    .line 10
    .line 11
    iput-object p1, p0, Lcom/narvii/video/gles/Sprite2d;->mDrawable:Lcom/narvii/video/gles/Drawable2d;

    .line 12
    const/4 p1, 0x4

    .line 13
    .line 14
    new-array p1, p1, [F

    .line 15
    .line 16
    iput-object p1, p0, Lcom/narvii/video/gles/Sprite2d;->mColor:[F

    .line 17
    const/4 v1, 0x3

    .line 18
    .line 19
    const/high16 v2, 0x3f800000    # 1.0f

    .line 20
    .line 21
    aput v2, p1, v1

    .line 22
    const/4 p1, -0x1

    .line 23
    .line 24
    iput p1, p0, Lcom/narvii/video/gles/Sprite2d;->mTextureId:I

    .line 25
    .line 26
    new-array p1, v0, [F

    .line 27
    .line 28
    iput-object p1, p0, Lcom/narvii/video/gles/Sprite2d;->mModelViewMatrix:[F

    .line 29
    const/4 p1, 0x0

    .line 30
    .line 31
    iput-boolean p1, p0, Lcom/narvii/video/gles/Sprite2d;->mMatrixReady:Z

    .line 32
    return-void
.end method

.method private recomputeMatrix()V
    .locals 9

    .line 1
    .line 2
    iget-object v6, p0, Lcom/narvii/video/gles/Sprite2d;->mModelViewMatrix:[F

    .line 3
    const/4 v7, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {v6, v7}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 7
    .line 8
    iget v0, p0, Lcom/narvii/video/gles/Sprite2d;->mPosX:F

    .line 9
    .line 10
    iget v1, p0, Lcom/narvii/video/gles/Sprite2d;->mPosY:F

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    .line 14
    invoke-static {v6, v7, v0, v1, v2}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 15
    .line 16
    iget v3, p0, Lcom/narvii/video/gles/Sprite2d;->mAngle:F

    .line 17
    .line 18
    cmpl-float v0, v3, v2

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    const/4 v1, 0x0

    .line 22
    const/4 v4, 0x0

    .line 23
    const/4 v5, 0x0

    .line 24
    .line 25
    const/high16 v8, 0x3f800000    # 1.0f

    .line 26
    move-object v0, v6

    .line 27
    move v2, v3

    .line 28
    move v3, v4

    .line 29
    move v4, v5

    .line 30
    move v5, v8

    .line 31
    .line 32
    .line 33
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 34
    .line 35
    :cond_0
    iget v0, p0, Lcom/narvii/video/gles/Sprite2d;->mScaleX:F

    .line 36
    .line 37
    iget v1, p0, Lcom/narvii/video/gles/Sprite2d;->mScaleY:F

    .line 38
    .line 39
    const/high16 v2, 0x3f800000    # 1.0f

    .line 40
    .line 41
    .line 42
    invoke-static {v6, v7, v0, v1, v2}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 43
    const/4 v0, 0x1

    .line 44
    .line 45
    iput-boolean v0, p0, Lcom/narvii/video/gles/Sprite2d;->mMatrixReady:Z

    .line 46
    return-void
.end method


# virtual methods
.method public draw(Lcom/narvii/video/gles/FlatShadedProgram;[F)V
    .locals 15

    move-object v0, p0

    iget-object v1, v0, Lcom/narvii/video/gles/Sprite2d;->mScratchMatrix:[F

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1
    invoke-virtual {p0}, Lcom/narvii/video/gles/Sprite2d;->getModelViewMatrix()[F

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v3, p2

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v8, v0, Lcom/narvii/video/gles/Sprite2d;->mScratchMatrix:[F

    iget-object v9, v0, Lcom/narvii/video/gles/Sprite2d;->mColor:[F

    iget-object v1, v0, Lcom/narvii/video/gles/Sprite2d;->mDrawable:Lcom/narvii/video/gles/Drawable2d;

    .line 2
    invoke-virtual {v1}, Lcom/narvii/video/gles/Drawable2d;->getVertexArray()Ljava/nio/FloatBuffer;

    move-result-object v10

    const/4 v11, 0x0

    iget-object v1, v0, Lcom/narvii/video/gles/Sprite2d;->mDrawable:Lcom/narvii/video/gles/Drawable2d;

    .line 3
    invoke-virtual {v1}, Lcom/narvii/video/gles/Drawable2d;->getVertexCount()I

    move-result v12

    iget-object v1, v0, Lcom/narvii/video/gles/Sprite2d;->mDrawable:Lcom/narvii/video/gles/Drawable2d;

    invoke-virtual {v1}, Lcom/narvii/video/gles/Drawable2d;->getCoordsPerVertex()I

    move-result v13

    iget-object v1, v0, Lcom/narvii/video/gles/Sprite2d;->mDrawable:Lcom/narvii/video/gles/Drawable2d;

    .line 4
    invoke-virtual {v1}, Lcom/narvii/video/gles/Drawable2d;->getVertexStride()I

    move-result v14

    move-object/from16 v7, p1

    .line 5
    invoke-virtual/range {v7 .. v14}, Lcom/narvii/video/gles/FlatShadedProgram;->draw([F[FLjava/nio/FloatBuffer;IIII)V

    return-void
.end method

.method public draw(Lcom/narvii/video/gles/Texture2dProgram;[F)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/narvii/video/gles/Sprite2d;->mScratchMatrix:[F

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/video/gles/Sprite2d;->getModelViewMatrix()[F

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v3, p2

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v8, v0, Lcom/narvii/video/gles/Sprite2d;->mScratchMatrix:[F

    iget-object v1, v0, Lcom/narvii/video/gles/Sprite2d;->mDrawable:Lcom/narvii/video/gles/Drawable2d;

    .line 7
    invoke-virtual {v1}, Lcom/narvii/video/gles/Drawable2d;->getVertexArray()Ljava/nio/FloatBuffer;

    move-result-object v9

    const/4 v10, 0x0

    iget-object v1, v0, Lcom/narvii/video/gles/Sprite2d;->mDrawable:Lcom/narvii/video/gles/Drawable2d;

    .line 8
    invoke-virtual {v1}, Lcom/narvii/video/gles/Drawable2d;->getVertexCount()I

    move-result v11

    iget-object v1, v0, Lcom/narvii/video/gles/Sprite2d;->mDrawable:Lcom/narvii/video/gles/Drawable2d;

    invoke-virtual {v1}, Lcom/narvii/video/gles/Drawable2d;->getCoordsPerVertex()I

    move-result v12

    iget-object v1, v0, Lcom/narvii/video/gles/Sprite2d;->mDrawable:Lcom/narvii/video/gles/Drawable2d;

    .line 9
    invoke-virtual {v1}, Lcom/narvii/video/gles/Drawable2d;->getVertexStride()I

    move-result v13

    sget-object v14, Lcom/narvii/video/gles/GlUtil;->IDENTITY_MATRIX:[F

    iget-object v1, v0, Lcom/narvii/video/gles/Sprite2d;->mDrawable:Lcom/narvii/video/gles/Drawable2d;

    invoke-virtual {v1}, Lcom/narvii/video/gles/Drawable2d;->getTexCoordArray()Ljava/nio/FloatBuffer;

    move-result-object v15

    iget v1, v0, Lcom/narvii/video/gles/Sprite2d;->mTextureId:I

    iget-object v2, v0, Lcom/narvii/video/gles/Sprite2d;->mDrawable:Lcom/narvii/video/gles/Drawable2d;

    .line 10
    invoke-virtual {v2}, Lcom/narvii/video/gles/Drawable2d;->getTexCoordStride()I

    move-result v17

    move-object/from16 v7, p1

    move/from16 v16, v1

    .line 11
    invoke-virtual/range {v7 .. v17}, Lcom/narvii/video/gles/Texture2dProgram;->draw([FLjava/nio/FloatBuffer;IIII[FLjava/nio/FloatBuffer;II)V

    return-void
.end method

.method public getColor()[F
    .locals 1

    iget-object v0, p0, Lcom/narvii/video/gles/Sprite2d;->mColor:[F

    return-object v0
.end method

.method public getModelViewMatrix()[F
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/video/gles/Sprite2d;->mMatrixReady:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/narvii/video/gles/Sprite2d;->recomputeMatrix()V

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/gles/Sprite2d;->mModelViewMatrix:[F

    .line 10
    return-object v0
.end method

.method public getPositionX()F
    .locals 1

    iget v0, p0, Lcom/narvii/video/gles/Sprite2d;->mPosX:F

    return v0
.end method

.method public getPositionY()F
    .locals 1

    iget v0, p0, Lcom/narvii/video/gles/Sprite2d;->mPosY:F

    return v0
.end method

.method public getRotation()F
    .locals 1

    iget v0, p0, Lcom/narvii/video/gles/Sprite2d;->mAngle:F

    return v0
.end method

.method public getScaleX()F
    .locals 1

    iget v0, p0, Lcom/narvii/video/gles/Sprite2d;->mScaleX:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    iget v0, p0, Lcom/narvii/video/gles/Sprite2d;->mScaleY:F

    return v0
.end method

.method public setColor(FFF)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/gles/Sprite2d;->mColor:[F

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    aput p1, v0, v1

    .line 6
    const/4 p1, 0x1

    .line 7
    .line 8
    aput p2, v0, p1

    .line 9
    const/4 p1, 0x2

    .line 10
    .line 11
    aput p3, v0, p1

    .line 12
    return-void
.end method

.method public setPosition(FF)V
    .locals 0

    iput p1, p0, Lcom/narvii/video/gles/Sprite2d;->mPosX:F

    iput p2, p0, Lcom/narvii/video/gles/Sprite2d;->mPosY:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/narvii/video/gles/Sprite2d;->mMatrixReady:Z

    return-void
.end method

.method public setRotation(F)V
    .locals 2

    :goto_0
    const/high16 v0, 0x43b40000    # 360.0f

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_0

    sub-float/2addr p1, v0

    goto :goto_0

    :cond_0
    :goto_1
    const/high16 v1, -0x3c4c0000    # -360.0f

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_1

    add-float/2addr p1, v0

    goto :goto_1

    :cond_1
    iput p1, p0, Lcom/narvii/video/gles/Sprite2d;->mAngle:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/narvii/video/gles/Sprite2d;->mMatrixReady:Z

    return-void
.end method

.method public setScale(FF)V
    .locals 0

    iput p1, p0, Lcom/narvii/video/gles/Sprite2d;->mScaleX:F

    iput p2, p0, Lcom/narvii/video/gles/Sprite2d;->mScaleY:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/narvii/video/gles/Sprite2d;->mMatrixReady:Z

    return-void
.end method

.method public setTexture(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/video/gles/Sprite2d;->mTextureId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "[Sprite2d pos="

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget v1, p0, Lcom/narvii/video/gles/Sprite2d;->mPosX:F

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, ","

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    iget v2, p0, Lcom/narvii/video/gles/Sprite2d;->mPosY:F

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v2, " scale="

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    iget v2, p0, Lcom/narvii/video/gles/Sprite2d;->mScaleX:F

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    iget v2, p0, Lcom/narvii/video/gles/Sprite2d;->mScaleY:F

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v2, " angle="

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    iget v2, p0, Lcom/narvii/video/gles/Sprite2d;->mAngle:F

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v2, " color={"

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    iget-object v2, p0, Lcom/narvii/video/gles/Sprite2d;->mColor:[F

    .line 61
    const/4 v3, 0x0

    .line 62
    .line 63
    aget v2, v2, v3

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    iget-object v2, p0, Lcom/narvii/video/gles/Sprite2d;->mColor:[F

    .line 72
    const/4 v3, 0x1

    .line 73
    .line 74
    aget v2, v2, v3

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    iget-object v1, p0, Lcom/narvii/video/gles/Sprite2d;->mColor:[F

    .line 83
    const/4 v2, 0x2

    .line 84
    .line 85
    aget v1, v1, v2

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string/jumbo v1, "} drawable="

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    iget-object v1, p0, Lcom/narvii/video/gles/Sprite2d;->mDrawable:Lcom/narvii/video/gles/Drawable2d;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    const-string v1, "]"

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    move-result-object v0

    .line 109
    return-object v0
.end method
