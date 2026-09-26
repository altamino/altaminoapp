.class final Lcom/google/android/exoplayer2/video/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/video/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "precision mediump float;\nvarying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nuniform sampler2D y_tex;\nuniform sampler2D u_tex;\nuniform sampler2D v_tex;\nuniform mat3 mColorConversion;\nvoid main() {\n  vec3 yuv;\n  yuv.x = texture2D(y_tex, interp_tc_y).r - 0.0625;\n  yuv.y = texture2D(u_tex, interp_tc_u).r - 0.5;\n  yuv.z = texture2D(v_tex, interp_tc_v).r - 0.5;\n  gl_FragColor = vec4(mColorConversion * yuv, 1.0);\n}\n"

.field private static final TEXTURE_UNIFORMS:[Ljava/lang/String;

.field private static final TEXTURE_VERTICES:Ljava/nio/FloatBuffer;

.field private static final VERTEX_SHADER:Ljava/lang/String; = "varying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nattribute vec4 in_pos;\nattribute vec2 in_tc_y;\nattribute vec2 in_tc_u;\nattribute vec2 in_tc_v;\nvoid main() {\n  gl_Position = in_pos;\n  interp_tc_y = in_tc_y;\n  interp_tc_u = in_tc_u;\n  interp_tc_v = in_tc_v;\n}\n"

.field private static final kColorConversion2020:[F

.field private static final kColorConversion601:[F

.field private static final kColorConversion709:[F


# instance fields
.field private colorMatrixLocation:I

.field private final pendingOutputBufferReference:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/exoplayer2/decoder/k;",
            ">;"
        }
    .end annotation
.end field

.field private final previousStrides:[I

.field private final previousWidths:[I

.field private program:Lcom/google/android/exoplayer2/util/n;

.field private renderedOutputBuffer:Lcom/google/android/exoplayer2/decoder/k;

.field private final surfaceView:Landroid/opengl/GLSurfaceView;

.field private final texLocations:[I

.field private final textureCoords:[Ljava/nio/FloatBuffer;

.field private final yuvTextures:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    const/16 v0, 0x9

    .line 3
    .line 4
    new-array v1, v0, [F

    .line 5
    .line 6
    .line 7
    fill-array-data v1, :array_0

    .line 8
    .line 9
    sput-object v1, Lcom/google/android/exoplayer2/video/i$a;->kColorConversion601:[F

    .line 10
    .line 11
    new-array v1, v0, [F

    .line 12
    .line 13
    .line 14
    fill-array-data v1, :array_1

    .line 15
    .line 16
    sput-object v1, Lcom/google/android/exoplayer2/video/i$a;->kColorConversion709:[F

    .line 17
    .line 18
    new-array v0, v0, [F

    .line 19
    .line 20
    .line 21
    fill-array-data v0, :array_2

    .line 22
    .line 23
    sput-object v0, Lcom/google/android/exoplayer2/video/i$a;->kColorConversion2020:[F

    .line 24
    .line 25
    const-string v0, "u_tex"

    .line 26
    .line 27
    const-string v1, "v_tex"

    .line 28
    .line 29
    const-string v2, "y_tex"

    .line 30
    .line 31
    .line 32
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    sput-object v0, Lcom/google/android/exoplayer2/video/i$a;->TEXTURE_UNIFORMS:[Ljava/lang/String;

    .line 36
    .line 37
    const/16 v0, 0x8

    .line 38
    .line 39
    new-array v0, v0, [F

    .line 40
    .line 41
    .line 42
    fill-array-data v0, :array_3

    .line 43
    .line 44
    .line 45
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/o;->e([F)Ljava/nio/FloatBuffer;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    sput-object v0, Lcom/google/android/exoplayer2/video/i$a;->TEXTURE_VERTICES:Ljava/nio/FloatBuffer;

    .line 49
    return-void

    .line 50
    nop

    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
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
    :array_0
    .array-data 4
        0x3f94fdf4    # 1.164f
        0x3f94fdf4    # 1.164f
        0x3f94fdf4    # 1.164f
        0x0
        -0x41374bc7    # -0.392f
        0x40011687    # 2.017f
        0x3fcc49ba    # 1.596f
        -0x40afdf3b    # -0.813f
        0x0
    .end array-data

    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    :array_1
    .array-data 4
        0x3f94fdf4    # 1.164f
        0x3f94fdf4    # 1.164f
        0x3f94fdf4    # 1.164f
        0x0
        -0x41a5e354    # -0.213f
        0x40072b02    # 2.112f
        0x3fe58106    # 1.793f
        -0x40f78d50    # -0.533f
        0x0
    .end array-data

    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    :array_2
    .array-data 4
        0x3f958106    # 1.168f
        0x3f958106    # 1.168f
        0x3f958106    # 1.168f
        0x0
        -0x41bf7cee    # -0.188f
        0x400978d5    # 2.148f
        0x3fd76c8b    # 1.683f
        -0x40d91687    # -0.652f
        0x0
    .end array-data

    :array_3
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/opengl/GLSurfaceView;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/i$a;->surfaceView:Landroid/opengl/GLSurfaceView;

    .line 6
    const/4 p1, 0x3

    .line 7
    .line 8
    new-array v0, p1, [I

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/i$a;->yuvTextures:[I

    .line 11
    .line 12
    new-array v0, p1, [I

    .line 13
    .line 14
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/i$a;->texLocations:[I

    .line 15
    .line 16
    new-array v0, p1, [I

    .line 17
    .line 18
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/i$a;->previousWidths:[I

    .line 19
    .line 20
    new-array v0, p1, [I

    .line 21
    .line 22
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/i$a;->previousStrides:[I

    .line 23
    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 25
    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 28
    .line 29
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/i$a;->pendingOutputBufferReference:Ljava/util/concurrent/atomic/AtomicReference;

    .line 30
    .line 31
    new-array v0, p1, [Ljava/nio/FloatBuffer;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/i$a;->textureCoords:[Ljava/nio/FloatBuffer;

    .line 34
    const/4 v0, 0x0

    .line 35
    .line 36
    :goto_0
    if-ge v0, p1, :cond_0

    .line 37
    .line 38
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/i$a;->previousWidths:[I

    .line 39
    .line 40
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/i$a;->previousStrides:[I

    .line 41
    const/4 v3, -0x1

    .line 42
    .line 43
    aput v3, v2, v0

    .line 44
    .line 45
    aput v3, v1, v0

    .line 46
    .line 47
    add-int/lit8 v0, v0, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    return-void
.end method

.method private b()V
    .locals 4

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/i$a;->yuvTextures:[I

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x3

    .line 5
    .line 6
    .line 7
    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 8
    .line 9
    :goto_0
    if-ge v1, v2, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/i$a;->program:Lcom/google/android/exoplayer2/util/n;

    .line 12
    .line 13
    sget-object v3, Lcom/google/android/exoplayer2/video/i$a;->TEXTURE_UNIFORMS:[Ljava/lang/String;

    .line 14
    .line 15
    aget-object v3, v3, v1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/n;->j(Ljava/lang/String;)I

    .line 19
    move-result v0

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 23
    .line 24
    .line 25
    const v0, 0x84c0

    .line 26
    add-int/2addr v0, v1

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 30
    .line 31
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/i$a;->yuvTextures:[I

    .line 32
    .line 33
    aget v0, v0, v1

    .line 34
    .line 35
    const/16 v3, 0xde1

    .line 36
    .line 37
    .line 38
    invoke-static {v3, v0}, Lcom/google/android/exoplayer2/util/o;->a(II)V

    .line 39
    .line 40
    add-int/lit8 v1, v1, 0x1

    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    goto :goto_1

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-static {}, Lcom/google/android/exoplayer2/util/o;->b()V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/util/o$a; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    goto :goto_2

    .line 48
    .line 49
    :goto_1
    const-string v1, "VideoDecoderGLSV"

    .line 50
    .line 51
    const-string v2, "Failed to set up the textures"

    .line 52
    .line 53
    .line 54
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    :goto_2
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/decoder/k;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/i$a;->pendingOutputBufferReference:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/google/android/exoplayer2/decoder/k;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/k;->l()V

    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/i$a;->surfaceView:Landroid/opengl/GLSurfaceView;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 19
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 18

    .line 1
    .line 2
    move-object/from16 v1, p0

    .line 3
    .line 4
    iget-object v0, v1, Lcom/google/android/exoplayer2/video/i$a;->pendingOutputBufferReference:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Lcom/google/android/exoplayer2/decoder/k;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v2, v1, Lcom/google/android/exoplayer2/video/i$a;->renderedOutputBuffer:Lcom/google/android/exoplayer2/decoder/k;

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    return-void

    .line 19
    .line 20
    :cond_0
    if-eqz v0, :cond_2

    .line 21
    .line 22
    iget-object v2, v1, Lcom/google/android/exoplayer2/video/i$a;->renderedOutputBuffer:Lcom/google/android/exoplayer2/decoder/k;

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/decoder/k;->l()V

    .line 28
    .line 29
    :cond_1
    iput-object v0, v1, Lcom/google/android/exoplayer2/video/i$a;->renderedOutputBuffer:Lcom/google/android/exoplayer2/decoder/k;

    .line 30
    .line 31
    :cond_2
    iget-object v0, v1, Lcom/google/android/exoplayer2/video/i$a;->renderedOutputBuffer:Lcom/google/android/exoplayer2/decoder/k;

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    check-cast v0, Lcom/google/android/exoplayer2/decoder/k;

    .line 38
    .line 39
    sget-object v2, Lcom/google/android/exoplayer2/video/i$a;->kColorConversion709:[F

    .line 40
    .line 41
    iget v3, v0, Lcom/google/android/exoplayer2/decoder/k;->colorspace:I

    .line 42
    const/4 v4, 0x3

    .line 43
    const/4 v5, 0x1

    .line 44
    .line 45
    if-eq v3, v5, :cond_4

    .line 46
    .line 47
    if-eq v3, v4, :cond_3

    .line 48
    goto :goto_0

    .line 49
    .line 50
    :cond_3
    sget-object v2, Lcom/google/android/exoplayer2/video/i$a;->kColorConversion2020:[F

    .line 51
    goto :goto_0

    .line 52
    .line 53
    :cond_4
    sget-object v2, Lcom/google/android/exoplayer2/video/i$a;->kColorConversion601:[F

    .line 54
    .line 55
    :goto_0
    iget v3, v1, Lcom/google/android/exoplayer2/video/i$a;->colorMatrixLocation:I

    .line 56
    const/4 v6, 0x0

    .line 57
    .line 58
    .line 59
    invoke-static {v3, v5, v6, v2, v6}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    .line 60
    .line 61
    iget-object v2, v0, Lcom/google/android/exoplayer2/decoder/k;->yuvStrides:[I

    .line 62
    .line 63
    .line 64
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    move-result-object v2

    .line 66
    .line 67
    check-cast v2, [I

    .line 68
    .line 69
    iget-object v3, v0, Lcom/google/android/exoplayer2/decoder/k;->yuvPlanes:[Ljava/nio/ByteBuffer;

    .line 70
    .line 71
    .line 72
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    move-result-object v3

    .line 74
    .line 75
    check-cast v3, [Ljava/nio/ByteBuffer;

    .line 76
    move v7, v6

    .line 77
    :goto_1
    const/4 v8, 0x2

    .line 78
    .line 79
    if-ge v7, v4, :cond_6

    .line 80
    .line 81
    if-nez v7, :cond_5

    .line 82
    .line 83
    iget v8, v0, Lcom/google/android/exoplayer2/decoder/k;->height:I

    .line 84
    :goto_2
    move v13, v8

    .line 85
    goto :goto_3

    .line 86
    .line 87
    :cond_5
    iget v9, v0, Lcom/google/android/exoplayer2/decoder/k;->height:I

    .line 88
    add-int/2addr v9, v5

    .line 89
    .line 90
    div-int/lit8 v8, v9, 0x2

    .line 91
    goto :goto_2

    .line 92
    .line 93
    .line 94
    :goto_3
    const v8, 0x84c0

    .line 95
    add-int/2addr v8, v7

    .line 96
    .line 97
    .line 98
    invoke-static {v8}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 99
    .line 100
    iget-object v8, v1, Lcom/google/android/exoplayer2/video/i$a;->yuvTextures:[I

    .line 101
    .line 102
    aget v8, v8, v7

    .line 103
    .line 104
    const/16 v9, 0xde1

    .line 105
    .line 106
    .line 107
    invoke-static {v9, v8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 108
    .line 109
    const/16 v8, 0xcf5

    .line 110
    .line 111
    .line 112
    invoke-static {v8, v5}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 113
    const/4 v10, 0x0

    .line 114
    .line 115
    const/16 v11, 0x1909

    .line 116
    .line 117
    aget v12, v2, v7

    .line 118
    const/4 v14, 0x0

    .line 119
    .line 120
    const/16 v15, 0x1909

    .line 121
    .line 122
    const/16 v16, 0x1401

    .line 123
    .line 124
    aget-object v17, v3, v7

    .line 125
    .line 126
    .line 127
    invoke-static/range {v9 .. v17}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 128
    .line 129
    add-int/lit8 v7, v7, 0x1

    .line 130
    goto :goto_1

    .line 131
    .line 132
    :cond_6
    new-array v3, v4, [I

    .line 133
    .line 134
    iget v0, v0, Lcom/google/android/exoplayer2/decoder/k;->width:I

    .line 135
    .line 136
    aput v0, v3, v6

    .line 137
    add-int/2addr v0, v5

    .line 138
    div-int/2addr v0, v8

    .line 139
    .line 140
    aput v0, v3, v8

    .line 141
    .line 142
    aput v0, v3, v5

    .line 143
    move v0, v6

    .line 144
    :goto_4
    const/4 v7, 0x5

    .line 145
    const/4 v9, 0x4

    .line 146
    .line 147
    if-ge v0, v4, :cond_a

    .line 148
    .line 149
    iget-object v10, v1, Lcom/google/android/exoplayer2/video/i$a;->previousWidths:[I

    .line 150
    .line 151
    aget v10, v10, v0

    .line 152
    .line 153
    aget v11, v3, v0

    .line 154
    .line 155
    if-ne v10, v11, :cond_7

    .line 156
    .line 157
    iget-object v10, v1, Lcom/google/android/exoplayer2/video/i$a;->previousStrides:[I

    .line 158
    .line 159
    aget v10, v10, v0

    .line 160
    .line 161
    aget v11, v2, v0

    .line 162
    .line 163
    if-eq v10, v11, :cond_9

    .line 164
    .line 165
    :cond_7
    aget v10, v2, v0

    .line 166
    .line 167
    if-eqz v10, :cond_8

    .line 168
    move v10, v5

    .line 169
    goto :goto_5

    .line 170
    :cond_8
    move v10, v6

    .line 171
    .line 172
    .line 173
    :goto_5
    invoke-static {v10}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 174
    .line 175
    aget v10, v3, v0

    .line 176
    int-to-float v10, v10

    .line 177
    .line 178
    aget v11, v2, v0

    .line 179
    int-to-float v11, v11

    .line 180
    div-float/2addr v10, v11

    .line 181
    .line 182
    iget-object v11, v1, Lcom/google/android/exoplayer2/video/i$a;->textureCoords:[Ljava/nio/FloatBuffer;

    .line 183
    .line 184
    const/16 v12, 0x8

    .line 185
    .line 186
    new-array v12, v12, [F

    .line 187
    const/4 v13, 0x0

    .line 188
    .line 189
    aput v13, v12, v6

    .line 190
    .line 191
    aput v13, v12, v5

    .line 192
    .line 193
    aput v13, v12, v8

    .line 194
    .line 195
    const/high16 v14, 0x3f800000    # 1.0f

    .line 196
    .line 197
    aput v14, v12, v4

    .line 198
    .line 199
    aput v10, v12, v9

    .line 200
    .line 201
    aput v13, v12, v7

    .line 202
    const/4 v7, 0x6

    .line 203
    .line 204
    aput v10, v12, v7

    .line 205
    const/4 v7, 0x7

    .line 206
    .line 207
    aput v14, v12, v7

    .line 208
    .line 209
    .line 210
    invoke-static {v12}, Lcom/google/android/exoplayer2/util/o;->e([F)Ljava/nio/FloatBuffer;

    .line 211
    move-result-object v7

    .line 212
    .line 213
    aput-object v7, v11, v0

    .line 214
    .line 215
    iget-object v7, v1, Lcom/google/android/exoplayer2/video/i$a;->texLocations:[I

    .line 216
    .line 217
    aget v9, v7, v0

    .line 218
    const/4 v10, 0x2

    .line 219
    .line 220
    const/16 v11, 0x1406

    .line 221
    const/4 v12, 0x0

    .line 222
    const/4 v13, 0x0

    .line 223
    .line 224
    iget-object v7, v1, Lcom/google/android/exoplayer2/video/i$a;->textureCoords:[Ljava/nio/FloatBuffer;

    .line 225
    .line 226
    aget-object v14, v7, v0

    .line 227
    .line 228
    .line 229
    invoke-static/range {v9 .. v14}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 230
    .line 231
    iget-object v7, v1, Lcom/google/android/exoplayer2/video/i$a;->previousWidths:[I

    .line 232
    .line 233
    aget v9, v3, v0

    .line 234
    .line 235
    aput v9, v7, v0

    .line 236
    .line 237
    iget-object v7, v1, Lcom/google/android/exoplayer2/video/i$a;->previousStrides:[I

    .line 238
    .line 239
    aget v9, v2, v0

    .line 240
    .line 241
    aput v9, v7, v0

    .line 242
    .line 243
    :cond_9
    add-int/lit8 v0, v0, 0x1

    .line 244
    goto :goto_4

    .line 245
    .line 246
    :cond_a
    const/16 v0, 0x4000

    .line 247
    .line 248
    .line 249
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 250
    .line 251
    .line 252
    invoke-static {v7, v6, v9}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 253
    .line 254
    .line 255
    :try_start_0
    invoke-static {}, Lcom/google/android/exoplayer2/util/o;->b()V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/util/o$a; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    goto :goto_6

    .line 257
    :catch_0
    move-exception v0

    .line 258
    move-object v2, v0

    .line 259
    .line 260
    const-string v0, "VideoDecoderGLSV"

    .line 261
    .line 262
    const-string v3, "Failed to draw a frame"

    .line 263
    .line 264
    .line 265
    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 266
    :goto_6
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    .line 3
    .line 4
    invoke-static {p1, p1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 5
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 6

    .line 1
    .line 2
    :try_start_0
    new-instance p1, Lcom/google/android/exoplayer2/util/n;

    .line 3
    .line 4
    const-string p2, "varying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nattribute vec4 in_pos;\nattribute vec2 in_tc_y;\nattribute vec2 in_tc_u;\nattribute vec2 in_tc_v;\nvoid main() {\n  gl_Position = in_pos;\n  interp_tc_y = in_tc_y;\n  interp_tc_u = in_tc_u;\n  interp_tc_v = in_tc_v;\n}\n"

    .line 5
    .line 6
    const-string v0, "precision mediump float;\nvarying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nuniform sampler2D y_tex;\nuniform sampler2D u_tex;\nuniform sampler2D v_tex;\nuniform mat3 mColorConversion;\nvoid main() {\n  vec3 yuv;\n  yuv.x = texture2D(y_tex, interp_tc_y).r - 0.0625;\n  yuv.y = texture2D(u_tex, interp_tc_u).r - 0.5;\n  yuv.z = texture2D(v_tex, interp_tc_v).r - 0.5;\n  gl_FragColor = vec4(mColorConversion * yuv, 1.0);\n}\n"

    .line 7
    .line 8
    .line 9
    invoke-direct {p1, p2, v0}, Lcom/google/android/exoplayer2/util/n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/i$a;->program:Lcom/google/android/exoplayer2/util/n;

    .line 12
    .line 13
    const-string p2, "in_pos"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/util/n;->e(Ljava/lang/String;)I

    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x2

    .line 19
    .line 20
    const/16 v2, 0x1406

    .line 21
    const/4 v3, 0x0

    .line 22
    const/4 v4, 0x0

    .line 23
    .line 24
    sget-object v5, Lcom/google/android/exoplayer2/video/i$a;->TEXTURE_VERTICES:Ljava/nio/FloatBuffer;

    .line 25
    .line 26
    .line 27
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 28
    .line 29
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/i$a;->texLocations:[I

    .line 30
    .line 31
    iget-object p2, p0, Lcom/google/android/exoplayer2/video/i$a;->program:Lcom/google/android/exoplayer2/util/n;

    .line 32
    .line 33
    const-string v0, "in_tc_y"

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/util/n;->e(Ljava/lang/String;)I

    .line 37
    move-result p2

    .line 38
    const/4 v0, 0x0

    .line 39
    .line 40
    aput p2, p1, v0

    .line 41
    .line 42
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/i$a;->texLocations:[I

    .line 43
    .line 44
    iget-object p2, p0, Lcom/google/android/exoplayer2/video/i$a;->program:Lcom/google/android/exoplayer2/util/n;

    .line 45
    .line 46
    const-string v0, "in_tc_u"

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/util/n;->e(Ljava/lang/String;)I

    .line 50
    move-result p2

    .line 51
    const/4 v0, 0x1

    .line 52
    .line 53
    aput p2, p1, v0

    .line 54
    .line 55
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/i$a;->texLocations:[I

    .line 56
    .line 57
    iget-object p2, p0, Lcom/google/android/exoplayer2/video/i$a;->program:Lcom/google/android/exoplayer2/util/n;

    .line 58
    .line 59
    const-string v0, "in_tc_v"

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/util/n;->e(Ljava/lang/String;)I

    .line 63
    move-result p2

    .line 64
    const/4 v0, 0x2

    .line 65
    .line 66
    aput p2, p1, v0

    .line 67
    .line 68
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/i$a;->program:Lcom/google/android/exoplayer2/util/n;

    .line 69
    .line 70
    const-string p2, "mColorConversion"

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/util/n;->j(Ljava/lang/String;)I

    .line 74
    move-result p1

    .line 75
    .line 76
    iput p1, p0, Lcom/google/android/exoplayer2/video/i$a;->colorMatrixLocation:I

    .line 77
    .line 78
    .line 79
    invoke-static {}, Lcom/google/android/exoplayer2/util/o;->b()V

    .line 80
    .line 81
    .line 82
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/i$a;->b()V

    .line 83
    .line 84
    .line 85
    invoke-static {}, Lcom/google/android/exoplayer2/util/o;->b()V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/util/o$a; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    goto :goto_0

    .line 87
    :catch_0
    move-exception p1

    .line 88
    .line 89
    const-string p2, "VideoDecoderGLSV"

    .line 90
    .line 91
    const-string v0, "Failed to set up the textures and program"

    .line 92
    .line 93
    .line 94
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    :goto_0
    return-void
.end method
