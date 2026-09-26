.class final Lcom/google/android/exoplayer2/video/spherical/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/video/spherical/g$a;
    }
.end annotation


# static fields
.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "// This is required since the texture data is GL_TEXTURE_EXTERNAL_OES.\n#extension GL_OES_EGL_image_external : require\nprecision mediump float;\n// Standard texture rendering shader.\nuniform samplerExternalOES uTexture;\nvarying vec2 vTexCoords;\nvoid main() {\n  gl_FragColor = texture2D(uTexture, vTexCoords);\n}\n"

.field private static final TAG:Ljava/lang/String; = "ProjectionRenderer"

.field private static final TEX_MATRIX_BOTTOM:[F

.field private static final TEX_MATRIX_LEFT:[F

.field private static final TEX_MATRIX_RIGHT:[F

.field private static final TEX_MATRIX_TOP:[F

.field private static final TEX_MATRIX_WHOLE:[F

.field private static final VERTEX_SHADER:Ljava/lang/String; = "uniform mat4 uMvpMatrix;\nuniform mat3 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec2 aTexCoords;\nvarying vec2 vTexCoords;\n// Standard transformation.\nvoid main() {\n  gl_Position = uMvpMatrix * aPosition;\n  vTexCoords = (uTexMatrix * vec3(aTexCoords, 1)).xy;\n}\n"


# instance fields
.field private leftMeshData:Lcom/google/android/exoplayer2/video/spherical/g$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mvpMatrixHandle:I

.field private positionHandle:I

.field private program:Lcom/google/android/exoplayer2/util/n;

.field private rightMeshData:Lcom/google/android/exoplayer2/video/spherical/g$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private stereoMode:I

.field private texCoordsHandle:I

.field private textureHandle:I

.field private uTexMatrixHandle:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x9

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/android/exoplayer2/video/spherical/g;->TEX_MATRIX_WHOLE:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_1

    sput-object v1, Lcom/google/android/exoplayer2/video/spherical/g;->TEX_MATRIX_TOP:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_2

    sput-object v1, Lcom/google/android/exoplayer2/video/spherical/g;->TEX_MATRIX_BOTTOM:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_3

    sput-object v1, Lcom/google/android/exoplayer2/video/spherical/g;->TEX_MATRIX_LEFT:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_4

    sput-object v0, Lcom/google/android/exoplayer2/video/spherical/g;->TEX_MATRIX_RIGHT:[F

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        -0x41000000    # -0.5f
        0x0
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        -0x41000000    # -0.5f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f000000    # 0.5f
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f000000    # 0.5f
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static c(Lcom/google/android/exoplayer2/video/spherical/e;)Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/e;->leftMesh:Lcom/google/android/exoplayer2/video/spherical/e$a;

    .line 3
    .line 4
    iget-object p0, p0, Lcom/google/android/exoplayer2/video/spherical/e;->rightMesh:Lcom/google/android/exoplayer2/video/spherical/e$a;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/spherical/e$a;->b()I

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    .line 12
    if-ne v1, v3, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/video/spherical/e$a;->a(I)Lcom/google/android/exoplayer2/video/spherical/e$b;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    iget v0, v0, Lcom/google/android/exoplayer2/video/spherical/e$b;->textureId:I

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/spherical/e$a;->b()I

    .line 24
    move-result v0

    .line 25
    .line 26
    if-ne v0, v3, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/video/spherical/e$a;->a(I)Lcom/google/android/exoplayer2/video/spherical/e$b;

    .line 30
    move-result-object p0

    .line 31
    .line 32
    iget p0, p0, Lcom/google/android/exoplayer2/video/spherical/e$b;->textureId:I

    .line 33
    .line 34
    if-nez p0, :cond_0

    .line 35
    move v2, v3

    .line 36
    :cond_0
    return v2
.end method


# virtual methods
.method public a(I[FZ)V
    .locals 11

    .line 1
    .line 2
    const-string v0, "ProjectionRenderer"

    .line 3
    .line 4
    if-eqz p3, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/spherical/g;->rightMeshData:Lcom/google/android/exoplayer2/video/spherical/g$a;

    .line 7
    goto :goto_0

    .line 8
    .line 9
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/spherical/g;->leftMeshData:Lcom/google/android/exoplayer2/video/spherical/g$a;

    .line 10
    .line 11
    :goto_0
    if-nez v1, :cond_1

    .line 12
    return-void

    .line 13
    .line 14
    :cond_1
    iget v2, p0, Lcom/google/android/exoplayer2/video/spherical/g;->stereoMode:I

    .line 15
    const/4 v3, 0x1

    .line 16
    .line 17
    if-ne v2, v3, :cond_3

    .line 18
    .line 19
    if-eqz p3, :cond_2

    .line 20
    .line 21
    sget-object p3, Lcom/google/android/exoplayer2/video/spherical/g;->TEX_MATRIX_BOTTOM:[F

    .line 22
    goto :goto_1

    .line 23
    .line 24
    :cond_2
    sget-object p3, Lcom/google/android/exoplayer2/video/spherical/g;->TEX_MATRIX_TOP:[F

    .line 25
    goto :goto_1

    .line 26
    :cond_3
    const/4 v4, 0x2

    .line 27
    .line 28
    if-ne v2, v4, :cond_5

    .line 29
    .line 30
    if-eqz p3, :cond_4

    .line 31
    .line 32
    sget-object p3, Lcom/google/android/exoplayer2/video/spherical/g;->TEX_MATRIX_RIGHT:[F

    .line 33
    goto :goto_1

    .line 34
    .line 35
    :cond_4
    sget-object p3, Lcom/google/android/exoplayer2/video/spherical/g;->TEX_MATRIX_LEFT:[F

    .line 36
    goto :goto_1

    .line 37
    .line 38
    :cond_5
    sget-object p3, Lcom/google/android/exoplayer2/video/spherical/g;->TEX_MATRIX_WHOLE:[F

    .line 39
    .line 40
    :goto_1
    iget v2, p0, Lcom/google/android/exoplayer2/video/spherical/g;->uTexMatrixHandle:I

    .line 41
    const/4 v4, 0x0

    .line 42
    .line 43
    .line 44
    invoke-static {v2, v3, v4, p3, v4}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    .line 45
    .line 46
    iget p3, p0, Lcom/google/android/exoplayer2/video/spherical/g;->mvpMatrixHandle:I

    .line 47
    .line 48
    .line 49
    invoke-static {p3, v3, v4, p2, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 50
    .line 51
    .line 52
    const p2, 0x84c0

    .line 53
    .line 54
    .line 55
    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 56
    .line 57
    .line 58
    const p2, 0x8d65

    .line 59
    .line 60
    .line 61
    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 62
    .line 63
    iget p1, p0, Lcom/google/android/exoplayer2/video/spherical/g;->textureHandle:I

    .line 64
    .line 65
    .line 66
    invoke-static {p1, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 67
    .line 68
    .line 69
    :try_start_0
    invoke-static {}, Lcom/google/android/exoplayer2/util/o;->b()V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/util/o$a; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    goto :goto_2

    .line 71
    :catch_0
    move-exception p1

    .line 72
    .line 73
    const-string p2, "Failed to bind uniforms"

    .line 74
    .line 75
    .line 76
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    .line 78
    :goto_2
    iget v5, p0, Lcom/google/android/exoplayer2/video/spherical/g;->positionHandle:I

    .line 79
    const/4 v6, 0x3

    .line 80
    .line 81
    const/16 v7, 0x1406

    .line 82
    const/4 v8, 0x0

    .line 83
    .line 84
    const/16 v9, 0xc

    .line 85
    .line 86
    .line 87
    invoke-static {v1}, Lcom/google/android/exoplayer2/video/spherical/g$a;->a(Lcom/google/android/exoplayer2/video/spherical/g$a;)Ljava/nio/FloatBuffer;

    .line 88
    move-result-object v10

    .line 89
    .line 90
    .line 91
    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 92
    .line 93
    .line 94
    :try_start_1
    invoke-static {}, Lcom/google/android/exoplayer2/util/o;->b()V
    :try_end_1
    .catch Lcom/google/android/exoplayer2/util/o$a; {:try_start_1 .. :try_end_1} :catch_1

    .line 95
    goto :goto_3

    .line 96
    :catch_1
    move-exception p1

    .line 97
    .line 98
    const-string p2, "Failed to load position data"

    .line 99
    .line 100
    .line 101
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    .line 103
    :goto_3
    iget v5, p0, Lcom/google/android/exoplayer2/video/spherical/g;->texCoordsHandle:I

    .line 104
    const/4 v6, 0x2

    .line 105
    .line 106
    const/16 v7, 0x1406

    .line 107
    const/4 v8, 0x0

    .line 108
    .line 109
    const/16 v9, 0x8

    .line 110
    .line 111
    .line 112
    invoke-static {v1}, Lcom/google/android/exoplayer2/video/spherical/g$a;->b(Lcom/google/android/exoplayer2/video/spherical/g$a;)Ljava/nio/FloatBuffer;

    .line 113
    move-result-object v10

    .line 114
    .line 115
    .line 116
    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 117
    .line 118
    .line 119
    :try_start_2
    invoke-static {}, Lcom/google/android/exoplayer2/util/o;->b()V
    :try_end_2
    .catch Lcom/google/android/exoplayer2/util/o$a; {:try_start_2 .. :try_end_2} :catch_2

    .line 120
    goto :goto_4

    .line 121
    :catch_2
    move-exception p1

    .line 122
    .line 123
    const-string p2, "Failed to load texture data"

    .line 124
    .line 125
    .line 126
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    .line 128
    .line 129
    :goto_4
    invoke-static {v1}, Lcom/google/android/exoplayer2/video/spherical/g$a;->c(Lcom/google/android/exoplayer2/video/spherical/g$a;)I

    .line 130
    move-result p1

    .line 131
    .line 132
    .line 133
    invoke-static {v1}, Lcom/google/android/exoplayer2/video/spherical/g$a;->d(Lcom/google/android/exoplayer2/video/spherical/g$a;)I

    .line 134
    move-result p2

    .line 135
    .line 136
    .line 137
    invoke-static {p1, v4, p2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 138
    .line 139
    .line 140
    :try_start_3
    invoke-static {}, Lcom/google/android/exoplayer2/util/o;->b()V
    :try_end_3
    .catch Lcom/google/android/exoplayer2/util/o$a; {:try_start_3 .. :try_end_3} :catch_3

    .line 141
    goto :goto_5

    .line 142
    :catch_3
    move-exception p1

    .line 143
    .line 144
    const-string p2, "Failed to render"

    .line 145
    .line 146
    .line 147
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    :goto_5
    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    .line 2
    :try_start_0
    new-instance v0, Lcom/google/android/exoplayer2/util/n;

    .line 3
    .line 4
    const-string v1, "uniform mat4 uMvpMatrix;\nuniform mat3 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec2 aTexCoords;\nvarying vec2 vTexCoords;\n// Standard transformation.\nvoid main() {\n  gl_Position = uMvpMatrix * aPosition;\n  vTexCoords = (uTexMatrix * vec3(aTexCoords, 1)).xy;\n}\n"

    .line 5
    .line 6
    const-string v2, "// This is required since the texture data is GL_TEXTURE_EXTERNAL_OES.\n#extension GL_OES_EGL_image_external : require\nprecision mediump float;\n// Standard texture rendering shader.\nuniform samplerExternalOES uTexture;\nvarying vec2 vTexCoords;\nvoid main() {\n  gl_FragColor = texture2D(uTexture, vTexCoords);\n}\n"

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/util/n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/g;->program:Lcom/google/android/exoplayer2/util/n;

    .line 12
    .line 13
    const-string v1, "uMvpMatrix"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/n;->j(Ljava/lang/String;)I

    .line 17
    move-result v0

    .line 18
    .line 19
    iput v0, p0, Lcom/google/android/exoplayer2/video/spherical/g;->mvpMatrixHandle:I

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/g;->program:Lcom/google/android/exoplayer2/util/n;

    .line 22
    .line 23
    const-string v1, "uTexMatrix"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/n;->j(Ljava/lang/String;)I

    .line 27
    move-result v0

    .line 28
    .line 29
    iput v0, p0, Lcom/google/android/exoplayer2/video/spherical/g;->uTexMatrixHandle:I

    .line 30
    .line 31
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/g;->program:Lcom/google/android/exoplayer2/util/n;

    .line 32
    .line 33
    const-string v1, "aPosition"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/n;->e(Ljava/lang/String;)I

    .line 37
    move-result v0

    .line 38
    .line 39
    iput v0, p0, Lcom/google/android/exoplayer2/video/spherical/g;->positionHandle:I

    .line 40
    .line 41
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/g;->program:Lcom/google/android/exoplayer2/util/n;

    .line 42
    .line 43
    const-string v1, "aTexCoords"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/n;->e(Ljava/lang/String;)I

    .line 47
    move-result v0

    .line 48
    .line 49
    iput v0, p0, Lcom/google/android/exoplayer2/video/spherical/g;->texCoordsHandle:I

    .line 50
    .line 51
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/g;->program:Lcom/google/android/exoplayer2/util/n;

    .line 52
    .line 53
    const-string v1, "uTexture"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/n;->j(Ljava/lang/String;)I

    .line 57
    move-result v0

    .line 58
    .line 59
    iput v0, p0, Lcom/google/android/exoplayer2/video/spherical/g;->textureHandle:I
    :try_end_0
    .catch Lcom/google/android/exoplayer2/util/o$a; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .line 63
    const-string v1, "ProjectionRenderer"

    .line 64
    .line 65
    const-string v2, "Failed to initialize the program"

    .line 66
    .line 67
    .line 68
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    :goto_0
    return-void
.end method

.method public d(Lcom/google/android/exoplayer2/video/spherical/e;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/video/spherical/g;->c(Lcom/google/android/exoplayer2/video/spherical/e;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iget v0, p1, Lcom/google/android/exoplayer2/video/spherical/e;->stereoMode:I

    .line 10
    .line 11
    iput v0, p0, Lcom/google/android/exoplayer2/video/spherical/g;->stereoMode:I

    .line 12
    .line 13
    new-instance v0, Lcom/google/android/exoplayer2/video/spherical/g$a;

    .line 14
    .line 15
    iget-object v1, p1, Lcom/google/android/exoplayer2/video/spherical/e;->leftMesh:Lcom/google/android/exoplayer2/video/spherical/e$a;

    .line 16
    const/4 v2, 0x0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/video/spherical/e$a;->a(I)Lcom/google/android/exoplayer2/video/spherical/e$b;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/video/spherical/g$a;-><init>(Lcom/google/android/exoplayer2/video/spherical/e$b;)V

    .line 24
    .line 25
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/g;->leftMeshData:Lcom/google/android/exoplayer2/video/spherical/g$a;

    .line 26
    .line 27
    iget-boolean v1, p1, Lcom/google/android/exoplayer2/video/spherical/e;->singleMesh:Z

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/video/spherical/g$a;

    .line 33
    .line 34
    iget-object p1, p1, Lcom/google/android/exoplayer2/video/spherical/e;->rightMesh:Lcom/google/android/exoplayer2/video/spherical/e$a;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/video/spherical/e$a;->a(I)Lcom/google/android/exoplayer2/video/spherical/e$b;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    .line 41
    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/video/spherical/g$a;-><init>(Lcom/google/android/exoplayer2/video/spherical/e$b;)V

    .line 42
    .line 43
    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/g;->rightMeshData:Lcom/google/android/exoplayer2/video/spherical/g$a;

    .line 44
    return-void
.end method
