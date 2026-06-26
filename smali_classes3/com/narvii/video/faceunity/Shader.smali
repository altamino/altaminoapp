.class public Lcom/narvii/video/faceunity/Shader;
.super Ljava/lang/Object;
.source "Shader.java"


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

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/narvii/video/faceunity/Shader;->mProgram:I

    .line 13
    iput v0, p0, Lcom/narvii/video/faceunity/Shader;->mShaderVertex:I

    .line 14
    iput v0, p0, Lcom/narvii/video/faceunity/Shader;->mShaderFragment:I

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/faceunity/Shader;->mShaderHandleMap:Ljava/util/HashMap;

    return-void
.end method

.method private loadRawString(ILandroid/content/Context;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 113
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    .line 114
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 117
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    .line 118
    invoke-virtual {p2, v0, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private loadShader(ILjava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 95
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p1

    if-eqz p1, :cond_1

    .line 97
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 98
    invoke-static {p1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p2, 0x1

    new-array p2, p2, [I

    const v0, 0x8b81

    const/4 v1, 0x0

    .line 100
    invoke-static {p1, v0, p2, v1}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 102
    aget p2, p2, v1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    invoke-static {p1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p2

    .line 104
    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 105
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return p1
.end method


# virtual methods
.method public deleteProgram()V
    .locals 1

    .line 57
    iget v0, p0, Lcom/narvii/video/faceunity/Shader;->mShaderVertex:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 58
    iget v0, p0, Lcom/narvii/video/faceunity/Shader;->mShaderFragment:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 59
    iget v0, p0, Lcom/narvii/video/faceunity/Shader;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 v0, 0x0

    .line 60
    iput v0, p0, Lcom/narvii/video/faceunity/Shader;->mShaderFragment:I

    iput v0, p0, Lcom/narvii/video/faceunity/Shader;->mShaderVertex:I

    iput v0, p0, Lcom/narvii/video/faceunity/Shader;->mProgram:I

    return-void
.end method

.method public getHandle(Ljava/lang/String;)I
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/narvii/video/faceunity/Shader;->mShaderHandleMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/narvii/video/faceunity/Shader;->mShaderHandleMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 72
    :cond_0
    iget v0, p0, Lcom/narvii/video/faceunity/Shader;->mProgram:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 74
    iget v0, p0, Lcom/narvii/video/faceunity/Shader;->mProgram:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    :cond_1
    if-ne v0, v1, :cond_2

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not get attrib location for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "GLSL shader"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 79
    :cond_2
    iget-object v1, p0, Lcom/narvii/video/faceunity/Shader;->mShaderHandleMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return v0
.end method

.method public varargs getHandles([Ljava/lang/String;)[I
    .locals 3

    .line 86
    array-length v0, p1

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 87
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 88
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/narvii/video/faceunity/Shader;->getHandle(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public programHandle()I
    .locals 1

    .line 64
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

    .line 24
    invoke-direct {p0, p1, p3}, Lcom/narvii/video/faceunity/Shader;->loadRawString(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-direct {p0, p2, p3}, Lcom/narvii/video/faceunity/Shader;->loadRawString(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 27
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

    .line 31
    invoke-direct {p0, p3, p1}, Lcom/narvii/video/faceunity/Shader;->loadShader(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/narvii/video/faceunity/Shader;->mShaderVertex:I

    const p1, 0x8b30

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/narvii/video/faceunity/Shader;->loadShader(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/narvii/video/faceunity/Shader;->mShaderFragment:I

    .line 34
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result p1

    if-eqz p1, :cond_1

    .line 36
    iget p2, p0, Lcom/narvii/video/faceunity/Shader;->mShaderVertex:I

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 37
    iget p2, p0, Lcom/narvii/video/faceunity/Shader;->mShaderFragment:I

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 38
    invoke-static {p1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 p2, 0x1

    new-array p3, p2, [I

    const v0, 0x8b82

    const/4 v1, 0x0

    .line 40
    invoke-static {p1, v0, p3, v1}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 41
    aget p3, p3, v1

    if-ne p3, p2, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    invoke-static {p1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object p1

    .line 43
    invoke-virtual {p0}, Lcom/narvii/video/faceunity/Shader;->deleteProgram()V

    .line 44
    new-instance p2, Ljava/lang/Exception;

    invoke-direct {p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p2

    .line 48
    :cond_1
    :goto_0
    iput p1, p0, Lcom/narvii/video/faceunity/Shader;->mProgram:I

    .line 49
    iget-object p1, p0, Lcom/narvii/video/faceunity/Shader;->mShaderHandleMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public useProgram()V
    .locals 1

    .line 53
    iget v0, p0, Lcom/narvii/video/faceunity/Shader;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    return-void
.end method
