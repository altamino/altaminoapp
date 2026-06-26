.class public final Lcom/narvii/editor/cropping/dynamic/GLUtils$Companion;
.super Ljava/lang/Object;
.source "GLUtils.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/editor/cropping/dynamic/GLUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGLUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GLUtils.kt\ncom/narvii/editor/cropping/dynamic/GLUtils$Companion\n*L\n1#1,182:1\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/narvii/editor/cropping/dynamic/GLUtils$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final checkGlError(Ljava/lang/String;)V
    .locals 2

    const-string v0, "op"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": glError 0x"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "checkGlError"

    .line 175
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final createBuffer([F)Ljava/nio/FloatBuffer;
    .locals 3

    const-string/jumbo v0, "vertexData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 64
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 66
    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const-string p1, "floatBuffer"

    .line 67
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final createOESTextureObject()I
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 27
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES30;->glGenTextures(I[II)V

    .line 28
    aget v0, v1, v2

    const v3, 0x8d65

    invoke-static {v3, v0}, Landroid/opengl/GLES30;->glBindTexture(II)V

    const/16 v0, 0x2800

    const/16 v4, 0x2601

    .line 29
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES30;->glTexParameteri(III)V

    const/16 v0, 0x2801

    const/16 v4, 0x2600

    .line 30
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES30;->glTexParameteri(III)V

    const v0, 0x812f

    const/16 v4, 0x2802

    .line 31
    invoke-static {v3, v4, v0}, Landroid/opengl/GLES30;->glTexParameteri(III)V

    const/16 v4, 0x2803

    .line 32
    invoke-static {v3, v4, v0}, Landroid/opengl/GLES30;->glTexParameteri(III)V

    .line 33
    invoke-static {v3, v2}, Landroid/opengl/GLES30;->glBindTexture(II)V

    .line 34
    aget v0, v1, v2

    return v0
.end method

.method public final createProgram(II)I
    .locals 2

    .line 87
    invoke-static {}, Landroid/opengl/GLES30;->glCreateProgram()I

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    invoke-static {v0, p1}, Landroid/opengl/GLES30;->glAttachShader(II)V

    .line 92
    invoke-static {v0, p2}, Landroid/opengl/GLES30;->glAttachShader(II)V

    .line 93
    invoke-static {v0}, Landroid/opengl/GLES30;->glLinkProgram(I)V

    const/4 p1, 0x1

    new-array p1, p1, [I

    const p2, 0x8b82

    const/4 v1, 0x0

    .line 95
    invoke-static {v0, p2, p1, v1}, Landroid/opengl/GLES30;->glGetProgramiv(II[II)V

    .line 96
    aget p1, p1, v1

    if-nez p1, :cond_0

    .line 97
    invoke-static {v0}, Landroid/opengl/GLES30;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Program Link Error: "

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-static {v0}, Landroid/opengl/GLES30;->glDeleteProgram(I)V

    :cond_0
    return v0

    .line 89
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "create gl program failed"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getDisplayRefreshNsec(Landroid/app/Activity;)J
    .locals 5

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "window"

    .line 161
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    const-string v0, "display"

    .line 162
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/Display;->getRefreshRate()F

    move-result p1

    float-to-double v0, p1

    const-wide/32 v2, 0x3b9aca00

    long-to-double v2, v2

    .line 163
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    .line 164
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refresh rate is "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, " fps --> "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ns"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getDisplayRefreshNsec"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v2

    .line 161
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getVertexData()[F
    .locals 1

    .line 103
    invoke-static {}, Lcom/narvii/editor/cropping/dynamic/GLUtils;->access$getVertexData$cp()[F

    move-result-object v0

    return-object v0
.end method

.method public final getWaterMarkVertexData()[F
    .locals 1

    .line 151
    invoke-static {}, Lcom/narvii/editor/cropping/dynamic/GLUtils;->access$getWaterMarkVertexData$cp()[F

    move-result-object v0

    return-object v0
.end method

.method public final loadShader(ILjava/lang/String;)I
    .locals 2

    const-string v0, "shaderSource"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-static {p1}, Landroid/opengl/GLES30;->glCreateShader(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    invoke-static {v0, p2}, Landroid/opengl/GLES30;->glShaderSource(ILjava/lang/String;)V

    .line 76
    invoke-static {v0}, Landroid/opengl/GLES30;->glCompileShader(I)V

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 p2, 0x0

    aput p2, p1, p2

    const v1, 0x8b81

    .line 78
    invoke-static {v0, v1, p1, p2}, Landroid/opengl/GLES30;->glGetShaderiv(II[II)V

    .line 79
    aget p1, p1, p2

    if-nez p1, :cond_0

    .line 80
    invoke-static {v0}, Landroid/opengl/GLES30;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Shader Compile Error: "

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-static {v0}, Landroid/opengl/GLES30;->glDeleteShader(I)V

    :cond_0
    return v0

    .line 73
    :cond_1
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create shader failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final loadTexture(Landroid/content/Context;I)I
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 114
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES30;->glGenTextures(I[II)V

    .line 115
    aget v3, v1, v2

    if-nez v3, :cond_0

    return v2

    .line 118
    :cond_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 119
    iput-boolean v2, v3, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, p2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_1

    .line 122
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES30;->glDeleteTextures(I[II)V

    return v2

    .line 125
    :cond_1
    aget p2, v1, v2

    const/16 v0, 0xde1

    invoke-static {v0, p2}, Landroid/opengl/GLES30;->glBindTexture(II)V

    const/16 p2, 0x2800

    const/16 v3, 0x2601

    .line 126
    invoke-static {v0, p2, v3}, Landroid/opengl/GLES30;->glTexParameteri(III)V

    const/16 p2, 0x2801

    const/16 v3, 0x2703

    .line 127
    invoke-static {v0, p2, v3}, Landroid/opengl/GLES30;->glTexParameteri(III)V

    .line 128
    invoke-static {v0, v2, p1, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 129
    invoke-static {v0}, Landroid/opengl/GLES30;->glGenerateMipmap(I)V

    .line 130
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 131
    invoke-static {v0, v2}, Landroid/opengl/GLES30;->glBindTexture(II)V

    .line 132
    aget p1, v1, v2

    return p1
.end method

.method public final loadTexture(Landroid/content/Context;Landroid/graphics/Bitmap;)I
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "bitmap"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    new-array v0, p1, [I

    const/4 v1, 0x0

    .line 137
    invoke-static {p1, v0, v1}, Landroid/opengl/GLES30;->glGenTextures(I[II)V

    .line 138
    aget p1, v0, v1

    if-nez p1, :cond_0

    return v1

    .line 141
    :cond_0
    aget p1, v0, v1

    const/16 v2, 0xde1

    invoke-static {v2, p1}, Landroid/opengl/GLES30;->glBindTexture(II)V

    const/16 p1, 0x2800

    const/16 v3, 0x2601

    .line 142
    invoke-static {v2, p1, v3}, Landroid/opengl/GLES30;->glTexParameteri(III)V

    const/16 p1, 0x2801

    const/16 v3, 0x2703

    .line 143
    invoke-static {v2, p1, v3}, Landroid/opengl/GLES30;->glTexParameteri(III)V

    .line 144
    invoke-static {v2, v1, p2, v1}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 145
    invoke-static {v2}, Landroid/opengl/GLES30;->glGenerateMipmap(I)V

    .line 146
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 147
    invoke-static {v2, v1}, Landroid/opengl/GLES30;->glBindTexture(II)V

    .line 148
    aget p1, v0, v1

    return p1
.end method

.method public final readShaderFromResource(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 44
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 45
    :try_start_1
    new-instance p2, Ljava/io/InputStreamReader;

    invoke-direct {p2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 46
    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    .line 48
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_1

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 55
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 56
    :cond_2
    invoke-virtual {p2}, Ljava/io/InputStreamReader;->close()V

    .line 57
    :goto_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    goto :goto_5

    :catch_0
    move-exception v1

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v2, v1

    goto :goto_6

    :catch_1
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object p2, v1

    goto :goto_3

    :catch_2
    move-exception p2

    move-object v2, v1

    move-object v1, p2

    move-object p2, v2

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object p1, v1

    move-object p2, p1

    :goto_3
    move-object v2, p2

    goto :goto_6

    :catch_3
    move-exception p1

    move-object p2, v1

    move-object v2, p2

    move-object v1, p1

    move-object p1, v2

    .line 53
    :goto_4
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz p1, :cond_3

    .line 55
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_3
    if-eqz p2, :cond_4

    .line 56
    invoke-virtual {p2}, Ljava/io/InputStreamReader;->close()V

    :cond_4
    if-eqz v2, :cond_5

    goto :goto_2

    .line 59
    :cond_5
    :goto_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "builder.toString()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :catchall_3
    move-exception v0

    :goto_6
    if-eqz p1, :cond_6

    .line 55
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_6
    if-eqz p2, :cond_7

    .line 56
    invoke-virtual {p2}, Ljava/io/InputStreamReader;->close()V

    :cond_7
    if-eqz v2, :cond_8

    .line 57
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    :cond_8
    goto :goto_8

    :goto_7
    throw v0

    :goto_8
    goto :goto_7
.end method
