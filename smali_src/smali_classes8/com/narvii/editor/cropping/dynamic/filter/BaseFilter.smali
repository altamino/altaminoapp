.class public Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final aPosition:Ljava/lang/String; = "aPosition"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final aTextureCoordinate:Ljava/lang/String; = "aTextureCoordinate"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final uTextureMatrix:Ljava/lang/String; = "uTextureMatrix"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final uTextureSampler:Ljava/lang/String; = "uTextureSampler"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private aPositionLocation:I

.field private aTextureCoordinateLocation:I

.field private context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private floatBuffer:Ljava/nio/FloatBuffer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private fragmentShader:I

.field private mOESTextureId:I

.field private program:I

.field private scaleX:F

.field private scaleY:F

.field private scrollX:F

.field private scrollY:F

.field private transformMatrix:[F
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private uTextureMatrixLocation:I

.field private uTextureSamplerLocation:I

.field private vertexShader:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->Companion:Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "context"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, -0x1

    .line 10
    .line 11
    iput v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->vertexShader:I

    .line 12
    .line 13
    iput v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->fragmentShader:I

    .line 14
    .line 15
    iput v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->program:I

    .line 16
    .line 17
    const/16 v1, 0x10

    .line 18
    .line 19
    new-array v1, v1, [F

    .line 20
    .line 21
    .line 22
    fill-array-data v1, :array_0

    .line 23
    .line 24
    iput-object v1, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->transformMatrix:[F

    .line 25
    .line 26
    iput v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->aPositionLocation:I

    .line 27
    .line 28
    iput v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->uTextureMatrixLocation:I

    .line 29
    .line 30
    iput v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->aTextureCoordinateLocation:I

    .line 31
    .line 32
    iput v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->uTextureSamplerLocation:I

    .line 33
    .line 34
    const/high16 v0, 0x3f800000    # 1.0f

    .line 35
    .line 36
    iput v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->scaleX:F

    .line 37
    .line 38
    iput v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->scaleY:F

    .line 39
    .line 40
    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->context:Landroid/content/Context;

    .line 41
    .line 42
    iput p2, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->mOESTextureId:I

    .line 43
    .line 44
    sget-object p1, Lcom/narvii/editor/cropping/dynamic/GLUtils;->Companion:Lcom/narvii/editor/cropping/dynamic/GLUtils$Companion;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/narvii/editor/cropping/dynamic/GLUtils$Companion;->getVertexData()[F

    .line 48
    move-result-object p2

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p2}, Lcom/narvii/editor/cropping/dynamic/GLUtils$Companion;->createBuffer([F)Ljava/nio/FloatBuffer;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->floatBuffer:Ljava/nio/FloatBuffer;

    .line 55
    return-void

    .line 56
    nop

    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->transformMatrix:[F

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    const/high16 v2, 0x3f800000    # 1.0f

    .line 6
    .line 7
    aput v2, v0, v1

    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    .line 11
    aput v3, v0, v1

    .line 12
    const/4 v1, 0x2

    .line 13
    .line 14
    aput v3, v0, v1

    .line 15
    const/4 v1, 0x3

    .line 16
    .line 17
    aput v3, v0, v1

    .line 18
    const/4 v1, 0x4

    .line 19
    .line 20
    aput v3, v0, v1

    .line 21
    const/4 v1, 0x5

    .line 22
    .line 23
    const/high16 v4, -0x40800000    # -1.0f

    .line 24
    .line 25
    aput v4, v0, v1

    .line 26
    const/4 v1, 0x6

    .line 27
    .line 28
    aput v3, v0, v1

    .line 29
    const/4 v1, 0x7

    .line 30
    .line 31
    aput v3, v0, v1

    .line 32
    .line 33
    const/16 v1, 0x8

    .line 34
    .line 35
    aput v3, v0, v1

    .line 36
    .line 37
    const/16 v1, 0x9

    .line 38
    .line 39
    aput v3, v0, v1

    .line 40
    .line 41
    const/16 v1, 0xa

    .line 42
    .line 43
    aput v2, v0, v1

    .line 44
    .line 45
    const/16 v1, 0xb

    .line 46
    .line 47
    aput v3, v0, v1

    .line 48
    .line 49
    const/16 v1, 0xc

    .line 50
    .line 51
    aput v3, v0, v1

    .line 52
    .line 53
    const/16 v1, 0xd

    .line 54
    .line 55
    aput v2, v0, v1

    .line 56
    .line 57
    const/16 v1, 0xe

    .line 58
    .line 59
    aput v3, v0, v1

    .line 60
    .line 61
    const/16 v1, 0xf

    .line 62
    .line 63
    aput v2, v0, v1

    .line 64
    return-void
.end method


# virtual methods
.method public drawFrame()V
    .locals 9

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->program:I

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 6
    .line 7
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->program:I

    .line 8
    .line 9
    const-string v1, "aPosition"

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    .line 13
    move-result v0

    .line 14
    .line 15
    iput v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->aPositionLocation:I

    .line 16
    .line 17
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->program:I

    .line 18
    .line 19
    const-string v1, "aTextureCoordinate"

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    .line 23
    move-result v0

    .line 24
    .line 25
    iput v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->aTextureCoordinateLocation:I

    .line 26
    .line 27
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->program:I

    .line 28
    .line 29
    const-string v1, "uTextureMatrix"

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 33
    move-result v0

    .line 34
    .line 35
    iput v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->uTextureMatrixLocation:I

    .line 36
    .line 37
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->program:I

    .line 38
    .line 39
    const-string v1, "uTextureSampler"

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 43
    move-result v0

    .line 44
    .line 45
    iput v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->uTextureSamplerLocation:I

    .line 46
    .line 47
    .line 48
    const v0, 0x84c0

    .line 49
    .line 50
    .line 51
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 52
    .line 53
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->mOESTextureId:I

    .line 54
    .line 55
    .line 56
    const v1, 0x8d65

    .line 57
    .line 58
    .line 59
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 60
    .line 61
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->uTextureSamplerLocation:I

    .line 62
    const/4 v2, 0x0

    .line 63
    .line 64
    .line 65
    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 66
    .line 67
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->uTextureMatrixLocation:I

    .line 68
    const/4 v3, 0x1

    .line 69
    .line 70
    iget-object v4, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->transformMatrix:[F

    .line 71
    .line 72
    .line 73
    invoke-static {v0, v3, v2, v4, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 74
    .line 75
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->floatBuffer:Ljava/nio/FloatBuffer;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 79
    .line 80
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->aPositionLocation:I

    .line 81
    .line 82
    .line 83
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 84
    .line 85
    iget v3, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->aPositionLocation:I

    .line 86
    const/4 v4, 0x2

    .line 87
    .line 88
    const/16 v5, 0x1406

    .line 89
    const/4 v6, 0x0

    .line 90
    .line 91
    const/16 v7, 0x10

    .line 92
    .line 93
    iget-object v8, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->floatBuffer:Ljava/nio/FloatBuffer;

    .line 94
    .line 95
    .line 96
    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 97
    .line 98
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->floatBuffer:Ljava/nio/FloatBuffer;

    .line 99
    const/4 v3, 0x2

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 103
    .line 104
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->aTextureCoordinateLocation:I

    .line 105
    .line 106
    .line 107
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 108
    .line 109
    iget v3, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->aTextureCoordinateLocation:I

    .line 110
    .line 111
    iget-object v8, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->floatBuffer:Ljava/nio/FloatBuffer;

    .line 112
    .line 113
    .line 114
    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 115
    const/4 v0, 0x4

    .line 116
    const/4 v3, 0x6

    .line 117
    .line 118
    .line 119
    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 120
    .line 121
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->aPositionLocation:I

    .line 122
    .line 123
    .line 124
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 125
    .line 126
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->aTextureCoordinateLocation:I

    .line 127
    .line 128
    .line 129
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 130
    .line 131
    .line 132
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 133
    return-void
.end method

.method protected final getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->context:Landroid/content/Context;

    return-object v0
.end method

.method protected final getFragmentShader()I
    .locals 1

    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->fragmentShader:I

    return v0
.end method

.method protected final getProgram()I
    .locals 1

    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->program:I

    return v0
.end method

.method public final getScaleX()F
    .locals 1

    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->scaleX:F

    return v0
.end method

.method public final getTransformMatrix()[F
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->transformMatrix:[F

    return-object v0
.end method

.method protected final getVertexShader()I
    .locals 1

    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->vertexShader:I

    return v0
.end method

.method public initProgram()V
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/editor/cropping/dynamic/GLUtils;->Companion:Lcom/narvii/editor/cropping/dynamic/GLUtils$Companion;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->context:Landroid/content/Context;

    .line 5
    .line 6
    sget v2, Lcom/narvii/meisheeditor/R$raw;->base_vertex_shader:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/narvii/editor/cropping/dynamic/GLUtils$Companion;->readShaderFromResource(Landroid/content/Context;I)Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    const v2, 0x8b31

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v2, v1}, Lcom/narvii/editor/cropping/dynamic/GLUtils$Companion;->loadShader(ILjava/lang/String;)I

    .line 17
    move-result v1

    .line 18
    .line 19
    iput v1, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->vertexShader:I

    .line 20
    .line 21
    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->context:Landroid/content/Context;

    .line 22
    .line 23
    sget v2, Lcom/narvii/meisheeditor/R$raw;->base_fragment_shader:I

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/narvii/editor/cropping/dynamic/GLUtils$Companion;->readShaderFromResource(Landroid/content/Context;I)Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    .line 30
    const v2, 0x8b30

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v2, v1}, Lcom/narvii/editor/cropping/dynamic/GLUtils$Companion;->loadShader(ILjava/lang/String;)I

    .line 34
    move-result v1

    .line 35
    .line 36
    iput v1, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->fragmentShader:I

    .line 37
    .line 38
    iget v2, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->vertexShader:I

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v2, v1}, Lcom/narvii/editor/cropping/dynamic/GLUtils$Companion;->createProgram(II)I

    .line 42
    move-result v0

    .line 43
    .line 44
    iput v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->program:I

    .line 45
    return-void
.end method

.method public release()V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->program:I

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    iput v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->program:I

    .line 9
    .line 10
    iget v1, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->vertexShader:I

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 14
    .line 15
    iput v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->vertexShader:I

    .line 16
    .line 17
    iget v1, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->fragmentShader:I

    .line 18
    .line 19
    .line 20
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 21
    .line 22
    iput v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->fragmentShader:I

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->floatBuffer:Ljava/nio/FloatBuffer;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 28
    return-void
.end method

.method protected final setContext(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->context:Landroid/content/Context;

    return-void
.end method

.method protected final setFragmentShader(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->fragmentShader:I

    return-void
.end method

.method protected final setProgram(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->program:I

    return-void
.end method

.method public final setScaleAndTransform(FFFF)V
    .locals 3

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->scaleX:F

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->scaleY:F

    .line 5
    .line 6
    iput p3, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->scrollX:F

    .line 7
    .line 8
    iput p4, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->scrollY:F

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->resetTransformMatrix()V

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->transformMatrix:[F

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    const/high16 v2, 0x3f800000    # 1.0f

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1, p1, p2, v2}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 20
    .line 21
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->transformMatrix:[F

    .line 22
    .line 23
    .line 24
    invoke-static {p1, v1, p3, p4, v2}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 25
    return-void
.end method

.method public final setScaleX(F)V
    .locals 0

    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->scaleX:F

    return-void
.end method

.method public final setTransform(FF)V
    .locals 2

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->scrollX:F

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->scrollY:F

    .line 5
    .line 6
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->scaleX:F

    .line 7
    .line 8
    iget v1, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->scaleY:F

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->setScaleAndTransform(FFFF)V

    .line 12
    return-void
.end method

.method public final setTransformMatrix([F)V
    .locals 1
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->transformMatrix:[F

    return-void
.end method

.method protected final setVertexShader(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->vertexShader:I

    return-void
.end method

.method public final setVideoAndViewSize(IIII)V
    .locals 1

    .line 1
    int-to-float p2, p2

    .line 2
    .line 3
    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    mul-float/2addr p2, v0

    .line 5
    int-to-float p1, p1

    .line 6
    div-float/2addr p2, p1

    .line 7
    int-to-float p1, p3

    .line 8
    mul-float/2addr p2, p1

    .line 9
    int-to-float p1, p4

    .line 10
    div-float/2addr p2, p1

    .line 11
    .line 12
    iget p1, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->scrollX:F

    .line 13
    .line 14
    iget p3, p0, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->scrollY:F

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p2, v0, p1, p3}, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;->setScaleAndTransform(FFFF)V

    .line 18
    return-void
.end method
