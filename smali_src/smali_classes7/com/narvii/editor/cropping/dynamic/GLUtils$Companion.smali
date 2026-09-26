.class public final Lcom/narvii/editor/cropping/dynamic/GLUtils$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/editor/cropping/dynamic/GLUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/editor/cropping/dynamic/GLUtils$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final checkGlError(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "op"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string p1, ": glError 0x"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    const-string v0, "checkGlError"

    .line 38
    .line 39
    .line 40
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_0
    return-void
.end method

.method public final createBuffer([F)Ljava/nio/FloatBuffer;
    .locals 3
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "vertexData"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    array-length v0, p1

    .line 7
    .line 8
    mul-int/lit8 v0, v0, 0x4

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    .line 24
    move-result-object v0

    .line 25
    array-length v1, p1

    .line 26
    const/4 v2, 0x0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1, v2, v1}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 37
    return-object v0
.end method

.method public final createOESTextureObject()I
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    new-array v1, v0, [I

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 8
    .line 9
    aget v0, v1, v2

    .line 10
    .line 11
    .line 12
    const v3, 0x8d65

    .line 13
    .line 14
    .line 15
    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 16
    .line 17
    const/16 v0, 0x2800

    .line 18
    .line 19
    const/16 v4, 0x2601

    .line 20
    .line 21
    .line 22
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 23
    .line 24
    const/16 v0, 0x2801

    .line 25
    .line 26
    const/16 v4, 0x2600

    .line 27
    .line 28
    .line 29
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 30
    .line 31
    const/16 v0, 0x2802

    .line 32
    .line 33
    .line 34
    const v4, 0x812f

    .line 35
    .line 36
    .line 37
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 38
    .line 39
    const/16 v0, 0x2803

    .line 40
    .line 41
    .line 42
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 43
    .line 44
    .line 45
    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 46
    .line 47
    aget v0, v1, v2

    .line 48
    return v0
.end method

.method public final createProgram(II)I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 16
    const/4 p1, 0x1

    .line 17
    .line 18
    new-array p1, p1, [I

    .line 19
    .line 20
    .line 21
    const p2, 0x8b82

    .line 22
    const/4 v1, 0x0

    .line 23
    .line 24
    .line 25
    invoke-static {v0, p2, p1, v1}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 26
    .line 27
    aget p1, p1, v1

    .line 28
    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    const-string p1, "Program Link Error: "

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    .line 35
    move-result-object p2

    .line 36
    .line 37
    .line 38
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 42
    :cond_0
    return v0

    .line 43
    .line 44
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 45
    .line 46
    const-string p2, "create gl program failed"

    .line 47
    .line 48
    .line 49
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 50
    throw p1
.end method

.method public final getDisplayRefreshNsec(Landroid/app/Activity;)J
    .locals 5
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "activity"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "window"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    const-string v0, "null cannot be cast to non-null type android.view.WindowManager"

    .line 14
    .line 15
    .line 16
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    check-cast p1, Landroid/view/WindowManager;

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/view/Display;->getRefreshRate()F

    .line 26
    move-result p1

    .line 27
    float-to-double v0, p1

    .line 28
    .line 29
    .line 30
    const-wide/32 v2, 0x3b9aca00

    .line 31
    long-to-double v2, v2

    .line 32
    div-double/2addr v2, v0

    .line 33
    .line 34
    .line 35
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    .line 36
    move-result-wide v2

    .line 37
    .line 38
    new-instance p1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    const-string v4, "refresh rate is "

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v0, " fps --> "

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string v0, " ns"

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    const-string v0, "getDisplayRefreshNsec"

    .line 69
    .line 70
    .line 71
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return-wide v2
.end method

.method public final getVertexData()[F
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/editor/cropping/dynamic/GLUtils;->access$getVertexData$cp()[F

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final getWaterMarkVertexData()[F
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/editor/cropping/dynamic/GLUtils;->access$getWaterMarkVertexData$cp()[F

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final loadShader(ILjava/lang/String;)I
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "shaderSource"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 18
    const/4 p1, 0x0

    .line 19
    .line 20
    .line 21
    filled-new-array {p1}, [I

    .line 22
    move-result-object p2

    .line 23
    .line 24
    .line 25
    const v1, 0x8b81

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1, p2, p1}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 29
    .line 30
    aget p1, p2, p1

    .line 31
    .line 32
    if-nez p1, :cond_0

    .line 33
    .line 34
    const-string p1, "Shader Compile Error: "

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    .line 38
    move-result-object p2

    .line 39
    .line 40
    .line 41
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 45
    :cond_0
    return v0

    .line 46
    .line 47
    :cond_1
    new-instance p2, Ljava/lang/RuntimeException;

    .line 48
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    const-string v1, "create shader failed "

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    .line 67
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 68
    throw p2
.end method

.method public final loadTexture(Landroid/content/Context;I)I
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v3, v1, v2

    if-nez v3, :cond_0

    return v2

    .line 2
    :cond_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v2, v3, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, p2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_1

    .line 4
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    return v2

    :cond_1
    aget p2, v1, v2

    const/16 v0, 0xde1

    .line 5
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 p2, 0x2800

    const/16 v3, 0x2601

    .line 6
    invoke-static {v0, p2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p2, 0x2801

    const/16 v3, 0x2703

    .line 7
    invoke-static {v0, p2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 8
    invoke-static {v0, v2, p1, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 9
    invoke-static {v0}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    .line 10
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 11
    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    aget p1, v1, v2

    return p1
.end method

.method public final loadTexture(Landroid/content/Context;Landroid/graphics/Bitmap;)I
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "bitmap"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    new-array v0, p1, [I

    const/4 v1, 0x0

    .line 12
    invoke-static {p1, v0, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget p1, v0, v1

    if-nez p1, :cond_0

    return v1

    :cond_0
    const/16 v2, 0xde1

    .line 13
    invoke-static {v2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 p1, 0x2800

    const/16 v3, 0x2601

    .line 14
    invoke-static {v2, p1, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2801

    const/16 v3, 0x2703

    .line 15
    invoke-static {v2, p1, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 16
    invoke-static {v2, v1, p2, v1}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 17
    invoke-static {v2}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    .line 18
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 19
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    aget p1, v0, v1

    return p1
.end method

.method public final readShaderFromResource(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "context"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    .line 14
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 19
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 20
    .line 21
    :try_start_1
    new-instance p2, Ljava/io/InputStreamReader;

    .line 22
    .line 23
    .line 24
    invoke-direct {p2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 25
    .line 26
    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    .line 27
    .line 28
    .line 29
    invoke-direct {v2, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 30
    .line 31
    .line 32
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    :goto_0
    if-eqz v1, :cond_0

    .line 36
    .line 37
    .line 38
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 39
    move-result v3

    .line 40
    .line 41
    if-lez v3, :cond_0

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v1, "\n"

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 53
    move-result-object v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    .line 56
    :goto_1
    move-object v1, p1

    .line 57
    goto :goto_5

    .line 58
    :catch_0
    move-exception v1

    .line 59
    goto :goto_3

    .line 60
    .line 61
    :cond_0
    if-eqz p1, :cond_1

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 65
    .line 66
    .line 67
    :cond_1
    invoke-virtual {p2}, Ljava/io/InputStreamReader;->close()V

    .line 68
    .line 69
    .line 70
    :goto_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 71
    goto :goto_4

    .line 72
    :catchall_1
    move-exception v0

    .line 73
    move-object v2, v1

    .line 74
    goto :goto_1

    .line 75
    :catch_1
    move-exception v2

    .line 76
    move-object v4, v2

    .line 77
    move-object v2, v1

    .line 78
    move-object v1, v4

    .line 79
    goto :goto_3

    .line 80
    :catchall_2
    move-exception v0

    .line 81
    move-object p2, v1

    .line 82
    move-object v2, p2

    .line 83
    goto :goto_1

    .line 84
    :catch_2
    move-exception p2

    .line 85
    move-object v2, v1

    .line 86
    move-object v1, p2

    .line 87
    move-object p2, v2

    .line 88
    goto :goto_3

    .line 89
    :catchall_3
    move-exception v0

    .line 90
    move-object p2, v1

    .line 91
    move-object v2, p2

    .line 92
    goto :goto_5

    .line 93
    :catch_3
    move-exception p1

    .line 94
    move-object p2, v1

    .line 95
    move-object v2, p2

    .line 96
    move-object v1, p1

    .line 97
    move-object p1, v2

    .line 98
    .line 99
    .line 100
    :goto_3
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 101
    .line 102
    if-eqz p1, :cond_2

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 106
    .line 107
    :cond_2
    if-eqz p2, :cond_3

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2}, Ljava/io/InputStreamReader;->close()V

    .line 111
    .line 112
    :cond_3
    if-eqz v2, :cond_4

    .line 113
    goto :goto_2

    .line 114
    .line 115
    .line 116
    :cond_4
    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object p1

    .line 118
    .line 119
    const-string p2, "toString(...)"

    .line 120
    .line 121
    .line 122
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    return-object p1

    .line 124
    .line 125
    :goto_5
    if-eqz v1, :cond_5

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 129
    .line 130
    :cond_5
    if-eqz p2, :cond_6

    .line 131
    .line 132
    .line 133
    invoke-virtual {p2}, Ljava/io/InputStreamReader;->close()V

    .line 134
    .line 135
    :cond_6
    if-eqz v2, :cond_7

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 139
    :cond_7
    throw v0
.end method
