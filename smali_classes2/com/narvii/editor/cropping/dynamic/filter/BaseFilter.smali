.class public Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;
.super Ljava/lang/Object;
.source "BaseFilter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter$Companion;

.field public static final aPosition:Ljava/lang/String; = "aPosition"

.field public static final aTextureCoordinate:Ljava/lang/String; = "aTextureCoordinate"

.field public static final uTextureMatrix:Ljava/lang/String; = "uTextureMatrix"

.field public static final uTextureSampler:Ljava/lang/String; = "uTextureSampler"


# instance fields
.field private aPositionLocation:I

.field private aTextureCoordinateLocation:I

.field private context:Landroid/content/Context;

.field private floatBuffer:Ljava/nio/FloatBuffer;

.field private fragmentShader:I

.field private mOESTextureId:I

.field private program:I

.field private scaleX:F

.field private scaleY:F

.field private scrollX:F

.field private scrollY:F

.field private transformMatrix:[F

.field private uTextureMatrixLocation:I

.field private uTextureSamplerLocation:I

.field private vertexShader:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->Companion:Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 25
    iput v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->vertexShader:I

    .line 26
    iput v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->fragmentShader:I

    .line 27
    iput v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->program:I

    const/16 v1, 0x10

    new-array v1, v1, [F

    .line 28
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->transformMatrix:[F

    .line 35
    iput v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->aPositionLocation:I

    .line 36
    iput v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->uTextureMatrixLocation:I

    .line 37
    iput v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->aTextureCoordinateLocation:I

    .line 38
    iput v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->uTextureSamplerLocation:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 40
    iput v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->scaleX:F

    .line 41
    iput v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->scaleY:F

    .line 46
    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->context:Landroid/content/Context;

    .line 47
    iput p2, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->mOESTextureId:I

    .line 48
    sget-object p1, Lcom/narvii/editor/cropping/dynamic/GLUtils;->Companion:Lcom/narvii/editor/cropping/dynamic/GLUtils$Companion;

    invoke-virtual {p1}, Lcom/narvii/editor/cropping/dynamic/GLUtils$Companion;->getVertexData()[F

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/editor/cropping/dynamic/GLUtils$Companion;->createBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->floatBuffer:Ljava/nio/FloatBuffer;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private final resetTransformMatrix()V
    .locals 5

    .line 123
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->transformMatrix:[F

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 124
    aput v2, v0, v3

    const/4 v3, 0x2

    .line 125
    aput v2, v0, v3

    const/4 v3, 0x3

    .line 126
    aput v2, v0, v3

    const/4 v3, 0x4

    .line 127
    aput v2, v0, v3

    const/4 v3, 0x5

    const/high16 v4, -0x40800000    # -1.0f

    .line 128
    aput v4, v0, v3

    const/4 v3, 0x6

    .line 129
    aput v2, v0, v3

    const/4 v3, 0x7

    .line 130
    aput v2, v0, v3

    const/16 v3, 0x8

    .line 131
    aput v2, v0, v3

    const/16 v3, 0x9

    .line 132
    aput v2, v0, v3

    const/16 v3, 0xa

    .line 133
    aput v1, v0, v3

    const/16 v3, 0xb

    .line 134
    aput v2, v0, v3

    const/16 v3, 0xc

    .line 135
    aput v2, v0, v3

    const/16 v3, 0xd

    .line 136
    aput v1, v0, v3

    const/16 v3, 0xe

    .line 137
    aput v2, v0, v3

    const/16 v2, 0xf

    .line 138
    aput v1, v0, v2

    return-void
.end method


# virtual methods
.method public drawFrame()V
    .locals 9

    .line 64
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->program:I

    invoke-static {v0}, Landroid/opengl/GLES30;->glUseProgram(I)V

    .line 66
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->program:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->aPositionLocation:I

    .line 67
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->program:I

    const-string v1, "aTextureCoordinate"

    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->aTextureCoordinateLocation:I

    .line 68
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->program:I

    const-string/jumbo v1, "uTextureMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->uTextureMatrixLocation:I

    .line 69
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->program:I

    const-string/jumbo v1, "uTextureSampler"

    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->uTextureSamplerLocation:I

    const v0, 0x84c0

    .line 71
    invoke-static {v0}, Landroid/opengl/GLES30;->glActiveTexture(I)V

    .line 72
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->mOESTextureId:I

    const v1, 0x8d65

    invoke-static {v1, v0}, Landroid/opengl/GLES30;->glBindTexture(II)V

    .line 74
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->uTextureSamplerLocation:I

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/opengl/GLES30;->glUniform1i(II)V

    .line 75
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->uTextureMatrixLocation:I

    iget-object v3, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->transformMatrix:[F

    const/4 v4, 0x1

    invoke-static {v0, v4, v2, v3, v2}, Landroid/opengl/GLES30;->glUniformMatrix4fv(IIZ[FI)V

    .line 77
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->floatBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 78
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->aPositionLocation:I

    invoke-static {v0}, Landroid/opengl/GLES30;->glEnableVertexAttribArray(I)V

    .line 79
    iget v3, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->aPositionLocation:I

    iget-object v8, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->floatBuffer:Ljava/nio/FloatBuffer;

    const/4 v4, 0x2

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/16 v7, 0x10

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES30;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 80
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->floatBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 81
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->aTextureCoordinateLocation:I

    invoke-static {v0}, Landroid/opengl/GLES30;->glEnableVertexAttribArray(I)V

    .line 82
    iget v3, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->aTextureCoordinateLocation:I

    iget-object v8, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->floatBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES30;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v0, 0x4

    const/4 v3, 0x6

    .line 84
    invoke-static {v0, v2, v3}, Landroid/opengl/GLES30;->glDrawArrays(III)V

    .line 86
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->aPositionLocation:I

    invoke-static {v0}, Landroid/opengl/GLES30;->glDisableVertexAttribArray(I)V

    .line 87
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->aTextureCoordinateLocation:I

    invoke-static {v0}, Landroid/opengl/GLES30;->glDisableVertexAttribArray(I)V

    .line 88
    invoke-static {v1, v2}, Landroid/opengl/GLES30;->glBindTexture(II)V

    return-void
.end method

.method protected final getContext()Landroid/content/Context;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->context:Landroid/content/Context;

    return-object v0
.end method

.method protected final getFragmentShader()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->fragmentShader:I

    return v0
.end method

.method protected final getProgram()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->program:I

    return v0
.end method

.method public final getScaleX()F
    .locals 1

    .line 40
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->scaleX:F

    return v0
.end method

.method public final getTransformMatrix()[F
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->transformMatrix:[F

    return-object v0
.end method

.method protected final getVertexShader()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->vertexShader:I

    return v0
.end method

.method public initProgram()V
    .locals 3

    .line 52
    sget-object v0, Lcom/narvii/editor/cropping/dynamic/GLUtils;->Companion:Lcom/narvii/editor/cropping/dynamic/GLUtils$Companion;

    .line 54
    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->context:Landroid/content/Context;

    sget v2, Lcom/narvii/meisheeditor/R$raw;->base_vertex_shader:I

    invoke-virtual {v0, v1, v2}, Lcom/narvii/editor/cropping/dynamic/GLUtils$Companion;->readShaderFromResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x8b31

    .line 52
    invoke-virtual {v0, v2, v1}, Lcom/narvii/editor/cropping/dynamic/GLUtils$Companion;->loadShader(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->vertexShader:I

    .line 56
    sget-object v0, Lcom/narvii/editor/cropping/dynamic/GLUtils;->Companion:Lcom/narvii/editor/cropping/dynamic/GLUtils$Companion;

    .line 58
    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->context:Landroid/content/Context;

    sget v2, Lcom/narvii/meisheeditor/R$raw;->base_fragment_shader:I

    invoke-virtual {v0, v1, v2}, Lcom/narvii/editor/cropping/dynamic/GLUtils$Companion;->readShaderFromResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x8b30

    .line 56
    invoke-virtual {v0, v2, v1}, Lcom/narvii/editor/cropping/dynamic/GLUtils$Companion;->loadShader(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->fragmentShader:I

    .line 60
    sget-object v0, Lcom/narvii/editor/cropping/dynamic/GLUtils;->Companion:Lcom/narvii/editor/cropping/dynamic/GLUtils$Companion;

    iget v1, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->vertexShader:I

    iget v2, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->fragmentShader:I

    invoke-virtual {v0, v1, v2}, Lcom/narvii/editor/cropping/dynamic/GLUtils$Companion;->createProgram(II)I

    move-result v0

    iput v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->program:I

    return-void
.end method

.method public release()V
    .locals 2

    .line 92
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->program:I

    invoke-static {v0}, Landroid/opengl/GLES30;->glDeleteProgram(I)V

    const/4 v0, 0x0

    .line 93
    iput v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->program:I

    .line 94
    iget v1, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->vertexShader:I

    invoke-static {v1}, Landroid/opengl/GLES30;->glDeleteShader(I)V

    .line 95
    iput v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->vertexShader:I

    .line 96
    iget v1, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->fragmentShader:I

    invoke-static {v1}, Landroid/opengl/GLES30;->glDeleteShader(I)V

    .line 97
    iput v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->fragmentShader:I

    .line 98
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->floatBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    return-void
.end method

.method protected final setContext(Landroid/content/Context;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->context:Landroid/content/Context;

    return-void
.end method

.method protected final setFragmentShader(I)V
    .locals 0

    .line 26
    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->fragmentShader:I

    return-void
.end method

.method protected final setProgram(I)V
    .locals 0

    .line 27
    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->program:I

    return-void
.end method

.method public final setScaleAndTransform(FFFF)V
    .locals 3

    .line 113
    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->scaleX:F

    .line 114
    iput p2, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->scaleY:F

    .line 115
    iput p3, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->scrollX:F

    .line 116
    iput p4, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->scrollY:F

    .line 117
    invoke-direct {p0}, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->resetTransformMatrix()V

    .line 118
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->transformMatrix:[F

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 119
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->transformMatrix:[F

    invoke-static {p1, v2, p3, p4, v1}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    return-void
.end method

.method public final setScaleX(F)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->scaleX:F

    return-void
.end method

.method public final setTransform(FF)V
    .locals 2

    .line 102
    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->scrollX:F

    .line 103
    iput p2, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->scrollY:F

    .line 104
    iget p1, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->scaleX:F

    iget p2, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->scaleY:F

    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->scrollX:F

    iget v1, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->scrollY:F

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->setScaleAndTransform(FFFF)V

    return-void
.end method

.method public final setTransformMatrix([F)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->transformMatrix:[F

    return-void
.end method

.method protected final setVertexShader(I)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->vertexShader:I

    return-void
.end method

.method public final setVideoAndViewSize(IIII)V
    .locals 1

    int-to-float p2, p2

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float p2, p2, v0

    int-to-float p1, p1

    div-float/2addr p2, p1

    int-to-float p1, p3

    mul-float p2, p2, p1

    int-to-float p1, p4

    div-float/2addr p2, p1

    .line 109
    iget p1, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->scrollX:F

    iget p3, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->scrollY:F

    invoke-virtual {p0, p2, v0, p1, p3}, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->setScaleAndTransform(FFFF)V

    return-void
.end method
