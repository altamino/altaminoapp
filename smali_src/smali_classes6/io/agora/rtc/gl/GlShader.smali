.class public Lio/agora/rtc/gl/GlShader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "GlShader"


# instance fields
.field private program:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vertexSource",
            "fragmentSource"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const v0, 0x8b31

    .line 7
    .line 8
    .line 9
    invoke-static {v0, p1}, Lio/agora/rtc/gl/GlShader;->compileShader(ILjava/lang/String;)I

    .line 10
    move-result p1

    .line 11
    .line 12
    .line 13
    const v0, 0x8b30

    .line 14
    .line 15
    .line 16
    invoke-static {v0, p2}, Lio/agora/rtc/gl/GlShader;->compileShader(ILjava/lang/String;)I

    .line 17
    move-result p2

    .line 18
    .line 19
    .line 20
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    .line 21
    move-result v0

    .line 22
    .line 23
    iput v0, p0, Lio/agora/rtc/gl/GlShader;->program:I

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 29
    .line 30
    iget v0, p0, Lio/agora/rtc/gl/GlShader;->program:I

    .line 31
    .line 32
    .line 33
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 34
    .line 35
    iget v0, p0, Lio/agora/rtc/gl/GlShader;->program:I

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 39
    const/4 v0, 0x0

    .line 40
    .line 41
    .line 42
    filled-new-array {v0}, [I

    .line 43
    move-result-object v1

    .line 44
    .line 45
    iget v2, p0, Lio/agora/rtc/gl/GlShader;->program:I

    .line 46
    .line 47
    .line 48
    const v3, 0x8b82

    .line 49
    .line 50
    .line 51
    invoke-static {v2, v3, v1, v0}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 52
    .line 53
    aget v0, v1, v0

    .line 54
    const/4 v1, 0x1

    .line 55
    .line 56
    if-ne v0, v1, :cond_0

    .line 57
    .line 58
    .line 59
    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 60
    .line 61
    .line 62
    invoke-static {p2}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 63
    .line 64
    const-string p1, "Creating GlShader"

    .line 65
    .line 66
    .line 67
    invoke-static {p1}, Lio/agora/rtc/gl/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    .line 68
    return-void

    .line 69
    .line 70
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    const-string p2, "Could not link program: "

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    iget p2, p0, Lio/agora/rtc/gl/GlShader;->program:I

    .line 81
    .line 82
    .line 83
    invoke-static {p2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    .line 84
    move-result-object p2

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object p1

    .line 92
    .line 93
    const-string p2, "GlShader"

    .line 94
    .line 95
    .line 96
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    new-instance p1, Ljava/lang/RuntimeException;

    .line 99
    .line 100
    iget p2, p0, Lio/agora/rtc/gl/GlShader;->program:I

    .line 101
    .line 102
    .line 103
    invoke-static {p2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    .line 104
    move-result-object p2

    .line 105
    .line 106
    .line 107
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 108
    throw p1

    .line 109
    .line 110
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 111
    .line 112
    new-instance p2, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    const-string v0, "glCreateProgram() failed. GLES20 error: "

    .line 118
    .line 119
    .line 120
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    .line 124
    move-result v0

    .line 125
    .line 126
    .line 127
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    move-result-object p2

    .line 132
    .line 133
    .line 134
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 135
    throw p1
.end method

.method private static compileShader(ILjava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "shaderType",
            "source"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 13
    const/4 p1, 0x0

    .line 14
    .line 15
    .line 16
    filled-new-array {p1}, [I

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    const v2, 0x8b81

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v2, v1, p1}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 24
    .line 25
    aget p1, v1, p1

    .line 26
    const/4 v1, 0x1

    .line 27
    .line 28
    if-ne p1, v1, :cond_0

    .line 29
    .line 30
    const-string p0, "compileShader"

    .line 31
    .line 32
    .line 33
    invoke-static {p0}, Lio/agora/rtc/gl/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    .line 34
    return v0

    .line 35
    .line 36
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    const-string v1, "Could not compile shader "

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string p0, ":"

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    .line 56
    move-result-object p0

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object p0

    .line 64
    .line 65
    const-string p1, "GlShader"

    .line 66
    .line 67
    .line 68
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    new-instance p0, Ljava/lang/RuntimeException;

    .line 71
    .line 72
    .line 73
    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    .line 74
    move-result-object p1

    .line 75
    .line 76
    .line 77
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 78
    throw p0

    .line 79
    .line 80
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    .line 81
    .line 82
    new-instance p1, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    const-string v0, "glCreateShader() failed. GLES20 error: "

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    .line 94
    move-result v0

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    move-result-object p1

    .line 102
    .line 103
    .line 104
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 105
    throw p0
.end method


# virtual methods
.method public getAttribLocation(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "label"
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lio/agora/rtc/gl/GlShader;->program:I

    .line 3
    const/4 v1, -0x1

    .line 4
    .line 5
    if-eq v0, v1, :cond_1

    .line 6
    .line 7
    .line 8
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    .line 9
    move-result v0

    .line 10
    .line 11
    if-ltz v0, :cond_0

    .line 12
    return v0

    .line 13
    .line 14
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    const-string v2, "Could not locate \'"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string p1, "\' in program"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 40
    throw v0

    .line 41
    .line 42
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 43
    .line 44
    const-string v0, "The program has been released"

    .line 45
    .line 46
    .line 47
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 48
    throw p1
.end method

.method public getUniformLocation(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "label"
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lio/agora/rtc/gl/GlShader;->program:I

    .line 3
    const/4 v1, -0x1

    .line 4
    .line 5
    if-eq v0, v1, :cond_1

    .line 6
    .line 7
    .line 8
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 9
    move-result v0

    .line 10
    .line 11
    if-ltz v0, :cond_0

    .line 12
    return v0

    .line 13
    .line 14
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    const-string v2, "Could not locate uniform \'"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string p1, "\' in program"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 40
    throw v0

    .line 41
    .line 42
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 43
    .line 44
    const-string v0, "The program has been released"

    .line 45
    .line 46
    .line 47
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 48
    throw p1
.end method

.method public release()V
    .locals 2

    .line 1
    .line 2
    const-string v0, "GlShader"

    .line 3
    .line 4
    const-string v1, "Deleting shader."

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    iget v0, p0, Lio/agora/rtc/gl/GlShader;->program:I

    .line 10
    const/4 v1, -0x1

    .line 11
    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 16
    .line 17
    iput v1, p0, Lio/agora/rtc/gl/GlShader;->program:I

    .line 18
    :cond_0
    return-void
.end method

.method public setVertexAttribArray(Ljava/lang/String;IILjava/nio/FloatBuffer;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "label",
            "dimension",
            "stride",
            "buffer"
        }
    .end annotation

    iget v0, p0, Lio/agora/rtc/gl/GlShader;->program:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lio/agora/rtc/gl/GlShader;->getAttribLocation(Ljava/lang/String;)I

    move-result v2

    .line 3
    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/16 v4, 0x1406

    const/4 v5, 0x0

    move v3, p2

    move v6, p3

    move-object v7, p4

    .line 4
    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const-string/jumbo p1, "setVertexAttribArray"

    .line 5
    invoke-static {p1}, Lio/agora/rtc/gl/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "The program has been released"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setVertexAttribArray(Ljava/lang/String;ILjava/nio/FloatBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "label",
            "dimension",
            "buffer"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0, p3}, Lio/agora/rtc/gl/GlShader;->setVertexAttribArray(Ljava/lang/String;IILjava/nio/FloatBuffer;)V

    return-void
.end method

.method public useProgram()V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lio/agora/rtc/gl/GlShader;->program:I

    .line 3
    const/4 v1, -0x1

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 9
    .line 10
    const-string v0, "glUseProgram"

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lio/agora/rtc/gl/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    .line 14
    return-void

    .line 15
    .line 16
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 17
    .line 18
    const-string v1, "The program has been released"

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 22
    throw v0
.end method
