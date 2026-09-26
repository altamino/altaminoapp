.class public Lcom/narvii/video/gles/FlatShadedProgram;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "precision mediump float;uniform vec4 uColor;void main() {    gl_FragColor = uColor;}"

.field private static final TAG:Ljava/lang/String; = "Grafika"

.field private static final VERTEX_SHADER:Ljava/lang/String; = "uniform mat4 uMVPMatrix;attribute vec4 aPosition;void main() {    gl_Position = uMVPMatrix * aPosition;}"


# instance fields
.field private mProgramHandle:I

.field private maPositionLoc:I

.field private muColorLoc:I

.field private muMVPMatrixLoc:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/video/gles/FlatShadedProgram;->mProgramHandle:I

    .line 7
    .line 8
    iput v0, p0, Lcom/narvii/video/gles/FlatShadedProgram;->muColorLoc:I

    .line 9
    .line 10
    iput v0, p0, Lcom/narvii/video/gles/FlatShadedProgram;->muMVPMatrixLoc:I

    .line 11
    .line 12
    iput v0, p0, Lcom/narvii/video/gles/FlatShadedProgram;->maPositionLoc:I

    .line 13
    .line 14
    .line 15
    const-string/jumbo v0, "uniform mat4 uMVPMatrix;attribute vec4 aPosition;void main() {    gl_Position = uMVPMatrix * aPosition;}"

    .line 16
    .line 17
    const-string v1, "precision mediump float;uniform vec4 uColor;void main() {    gl_FragColor = uColor;}"

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Lcom/narvii/video/gles/GlUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    move-result v0

    .line 22
    .line 23
    iput v0, p0, Lcom/narvii/video/gles/FlatShadedProgram;->mProgramHandle:I

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    const-string v1, "Created program "

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    iget v1, p0, Lcom/narvii/video/gles/FlatShadedProgram;->mProgramHandle:I

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    const-string v1, "Grafika"

    .line 47
    .line 48
    .line 49
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    iget v0, p0, Lcom/narvii/video/gles/FlatShadedProgram;->mProgramHandle:I

    .line 52
    .line 53
    const-string v1, "aPosition"

    .line 54
    .line 55
    .line 56
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    .line 57
    move-result v0

    .line 58
    .line 59
    iput v0, p0, Lcom/narvii/video/gles/FlatShadedProgram;->maPositionLoc:I

    .line 60
    .line 61
    .line 62
    invoke-static {v0, v1}, Lcom/narvii/video/gles/GlUtil;->checkLocation(ILjava/lang/String;)V

    .line 63
    .line 64
    iget v0, p0, Lcom/narvii/video/gles/FlatShadedProgram;->mProgramHandle:I

    .line 65
    .line 66
    .line 67
    const-string/jumbo v1, "uMVPMatrix"

    .line 68
    .line 69
    .line 70
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 71
    move-result v0

    .line 72
    .line 73
    iput v0, p0, Lcom/narvii/video/gles/FlatShadedProgram;->muMVPMatrixLoc:I

    .line 74
    .line 75
    .line 76
    invoke-static {v0, v1}, Lcom/narvii/video/gles/GlUtil;->checkLocation(ILjava/lang/String;)V

    .line 77
    .line 78
    iget v0, p0, Lcom/narvii/video/gles/FlatShadedProgram;->mProgramHandle:I

    .line 79
    .line 80
    .line 81
    const-string/jumbo v1, "uColor"

    .line 82
    .line 83
    .line 84
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 85
    move-result v0

    .line 86
    .line 87
    iput v0, p0, Lcom/narvii/video/gles/FlatShadedProgram;->muColorLoc:I

    .line 88
    .line 89
    .line 90
    invoke-static {v0, v1}, Lcom/narvii/video/gles/GlUtil;->checkLocation(ILjava/lang/String;)V

    .line 91
    return-void

    .line 92
    .line 93
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 94
    .line 95
    const-string v1, "Unable to create program"

    .line 96
    .line 97
    .line 98
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 99
    throw v0
.end method


# virtual methods
.method public draw([F[FLjava/nio/FloatBuffer;IIII)V
    .locals 10

    .line 1
    move-object v0, p0

    .line 2
    .line 3
    const-string v1, "draw start"

    .line 4
    .line 5
    .line 6
    invoke-static {v1}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 7
    .line 8
    iget v1, v0, Lcom/narvii/video/gles/FlatShadedProgram;->mProgramHandle:I

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 12
    .line 13
    const-string v1, "glUseProgram"

    .line 14
    .line 15
    .line 16
    invoke-static {v1}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 17
    .line 18
    iget v1, v0, Lcom/narvii/video/gles/FlatShadedProgram;->muMVPMatrixLoc:I

    .line 19
    const/4 v2, 0x1

    .line 20
    const/4 v3, 0x0

    .line 21
    move-object v4, p1

    .line 22
    .line 23
    .line 24
    invoke-static {v1, v2, v3, p1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 25
    .line 26
    const-string v1, "glUniformMatrix4fv"

    .line 27
    .line 28
    .line 29
    invoke-static {v1}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 30
    .line 31
    iget v1, v0, Lcom/narvii/video/gles/FlatShadedProgram;->muColorLoc:I

    .line 32
    move-object v4, p2

    .line 33
    .line 34
    .line 35
    invoke-static {v1, v2, p2, v3}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    .line 36
    .line 37
    const-string v1, "glUniform4fv "

    .line 38
    .line 39
    .line 40
    invoke-static {v1}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 41
    .line 42
    iget v1, v0, Lcom/narvii/video/gles/FlatShadedProgram;->maPositionLoc:I

    .line 43
    .line 44
    .line 45
    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 46
    .line 47
    const-string v1, "glEnableVertexAttribArray"

    .line 48
    .line 49
    .line 50
    invoke-static {v1}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 51
    .line 52
    iget v4, v0, Lcom/narvii/video/gles/FlatShadedProgram;->maPositionLoc:I

    .line 53
    .line 54
    const/16 v6, 0x1406

    .line 55
    const/4 v7, 0x0

    .line 56
    .line 57
    move/from16 v5, p6

    .line 58
    .line 59
    move/from16 v8, p7

    .line 60
    move-object v9, p3

    .line 61
    .line 62
    .line 63
    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 64
    .line 65
    const-string v1, "glVertexAttribPointer"

    .line 66
    .line 67
    .line 68
    invoke-static {v1}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 69
    const/4 v1, 0x5

    .line 70
    move v2, p4

    .line 71
    move v4, p5

    .line 72
    .line 73
    .line 74
    invoke-static {v1, p4, p5}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 75
    .line 76
    const-string v1, "glDrawArrays"

    .line 77
    .line 78
    .line 79
    invoke-static {v1}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 80
    .line 81
    iget v1, v0, Lcom/narvii/video/gles/FlatShadedProgram;->maPositionLoc:I

    .line 82
    .line 83
    .line 84
    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 85
    .line 86
    .line 87
    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 88
    return-void
.end method

.method public release()V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/video/gles/FlatShadedProgram;->mProgramHandle:I

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 6
    const/4 v0, -0x1

    .line 7
    .line 8
    iput v0, p0, Lcom/narvii/video/gles/FlatShadedProgram;->mProgramHandle:I

    .line 9
    return-void
.end method
