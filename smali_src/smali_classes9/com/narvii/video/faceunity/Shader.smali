.class public Lcom/narvii/video/faceunity/Shader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mProgram:I

.field private mShaderFragment:I

.field private final mShaderHandleMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mShaderVertex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/video/faceunity/Shader;->mProgram:I

    .line 7
    .line 8
    iput v0, p0, Lcom/narvii/video/faceunity/Shader;->mShaderVertex:I

    .line 9
    .line 10
    iput v0, p0, Lcom/narvii/video/faceunity/Shader;->mShaderFragment:I

    .line 11
    .line 12
    new-instance v0, Ljava/util/HashMap;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/video/faceunity/Shader;->mShaderHandleMap:Ljava/util/HashMap;

    .line 18
    return-void
.end method

.method private loadRawString(ILandroid/content/Context;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    .line 11
    .line 12
    .line 13
    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 14
    .line 15
    const/16 v0, 0x400

    .line 16
    .line 17
    new-array v0, v0, [B

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 21
    move-result v1

    .line 22
    const/4 v2, -0x1

    .line 23
    .line 24
    if-eq v1, v2, :cond_0

    .line 25
    const/4 v2, 0x0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, v0, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 29
    goto :goto_0

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    return-object p1
.end method

.method private loadShader(ILjava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    .line 4
    move-result p1

    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 13
    const/4 p2, 0x1

    .line 14
    .line 15
    new-array p2, p2, [I

    .line 16
    .line 17
    .line 18
    const v0, 0x8b81

    .line 19
    const/4 v1, 0x0

    .line 20
    .line 21
    .line 22
    invoke-static {p1, v0, p2, v1}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 23
    .line 24
    aget p2, p2, v1

    .line 25
    .line 26
    if-eqz p2, :cond_0

    .line 27
    goto :goto_0

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-static {p1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    .line 31
    move-result-object p2

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 35
    .line 36
    new-instance p1, Ljava/lang/Exception;

    .line 37
    .line 38
    .line 39
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 40
    throw p1

    .line 41
    :cond_1
    :goto_0
    return p1
.end method


# virtual methods
.method public deleteProgram()V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/video/faceunity/Shader;->mShaderVertex:I

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 6
    .line 7
    iget v0, p0, Lcom/narvii/video/faceunity/Shader;->mShaderFragment:I

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 11
    .line 12
    iget v0, p0, Lcom/narvii/video/faceunity/Shader;->mProgram:I

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 16
    const/4 v0, 0x0

    .line 17
    .line 18
    iput v0, p0, Lcom/narvii/video/faceunity/Shader;->mShaderFragment:I

    .line 19
    .line 20
    iput v0, p0, Lcom/narvii/video/faceunity/Shader;->mShaderVertex:I

    .line 21
    .line 22
    iput v0, p0, Lcom/narvii/video/faceunity/Shader;->mProgram:I

    .line 23
    return-void
.end method

.method public getHandle(Ljava/lang/String;)I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/faceunity/Shader;->mShaderHandleMap:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/video/faceunity/Shader;->mShaderHandleMap:Ljava/util/HashMap;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    check-cast p1, Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 20
    move-result p1

    .line 21
    return p1

    .line 22
    .line 23
    :cond_0
    iget v0, p0, Lcom/narvii/video/faceunity/Shader;->mProgram:I

    .line 24
    .line 25
    .line 26
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    .line 27
    move-result v0

    .line 28
    const/4 v1, -0x1

    .line 29
    .line 30
    if-ne v0, v1, :cond_1

    .line 31
    .line 32
    iget v0, p0, Lcom/narvii/video/faceunity/Shader;->mProgram:I

    .line 33
    .line 34
    .line 35
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 36
    move-result v0

    .line 37
    .line 38
    :cond_1
    if-ne v0, v1, :cond_2

    .line 39
    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    const-string v2, "Could not get attrib location for "

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    const-string v1, "GLSL shader"

    .line 58
    .line 59
    .line 60
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    goto :goto_0

    .line 62
    .line 63
    :cond_2
    iget-object v1, p0, Lcom/narvii/video/faceunity/Shader;->mShaderHandleMap:Ljava/util/HashMap;

    .line 64
    .line 65
    .line 66
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    move-result-object v2

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :goto_0
    return v0
.end method

.method public varargs getHandles([Ljava/lang/String;)[I
    .locals 3

    .line 1
    array-length v0, p1

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    array-length v2, p1

    .line 6
    .line 7
    if-ge v1, v2, :cond_0

    .line 8
    .line 9
    aget-object v2, p1, v1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v2}, Lcom/narvii/video/faceunity/Shader;->getHandle(Ljava/lang/String;)I

    .line 13
    move-result v2

    .line 14
    .line 15
    aput v2, v0, v1

    .line 16
    .line 17
    add-int/lit8 v1, v1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-object v0
.end method

.method public programHandle()I
    .locals 1

    iget v0, p0, Lcom/narvii/video/faceunity/Shader;->mProgram:I

    return v0
.end method

.method public setProgram(IILandroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/narvii/video/faceunity/Shader;->loadRawString(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {p0, p2, p3}, Lcom/narvii/video/faceunity/Shader;->loadRawString(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/video/faceunity/Shader;->setProgram(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public setProgram(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const p3, 0x8b31

    .line 4
    invoke-direct {p0, p3, p1}, Lcom/narvii/video/faceunity/Shader;->loadShader(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/narvii/video/faceunity/Shader;->mShaderVertex:I

    const p1, 0x8b30

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/narvii/video/faceunity/Shader;->loadShader(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/narvii/video/faceunity/Shader;->mShaderFragment:I

    .line 6
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result p1

    if-eqz p1, :cond_1

    iget p2, p0, Lcom/narvii/video/faceunity/Shader;->mShaderVertex:I

    .line 7
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    iget p2, p0, Lcom/narvii/video/faceunity/Shader;->mShaderFragment:I

    .line 8
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 9
    invoke-static {p1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 p2, 0x1

    new-array p3, p2, [I

    const v0, 0x8b82

    const/4 v1, 0x0

    .line 10
    invoke-static {p1, v0, p3, v1}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget p3, p3, v1

    if-ne p3, p2, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {p1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-virtual {p0}, Lcom/narvii/video/faceunity/Shader;->deleteProgram()V

    .line 13
    new-instance p2, Ljava/lang/Exception;

    invoke-direct {p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    iput p1, p0, Lcom/narvii/video/faceunity/Shader;->mProgram:I

    iget-object p1, p0, Lcom/narvii/video/faceunity/Shader;->mShaderHandleMap:Ljava/util/HashMap;

    .line 14
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public useProgram()V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/video/faceunity/Shader;->mProgram:I

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 6
    return-void
.end method
