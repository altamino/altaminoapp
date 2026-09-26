.class public Lio/agora/rtc/gl/GlTextureFrameBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final frameBufferId:I

.field private height:I

.field private final pixelFormat:I

.field private final textureId:I

.field private width:I


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pixelFormat"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    packed-switch p1, :pswitch_data_0

    .line 7
    .line 8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    const-string v2, "Invalid pixel format: "

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    throw v0

    .line 30
    .line 31
    :pswitch_0
    iput p1, p0, Lio/agora/rtc/gl/GlTextureFrameBuffer;->pixelFormat:I

    .line 32
    .line 33
    const/16 p1, 0xde1

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Lio/agora/rtc/gl/GlUtil;->generateTexture(I)I

    .line 37
    move-result p1

    .line 38
    .line 39
    iput p1, p0, Lio/agora/rtc/gl/GlTextureFrameBuffer;->textureId:I

    .line 40
    const/4 p1, 0x0

    .line 41
    .line 42
    iput p1, p0, Lio/agora/rtc/gl/GlTextureFrameBuffer;->width:I

    .line 43
    .line 44
    iput p1, p0, Lio/agora/rtc/gl/GlTextureFrameBuffer;->height:I

    .line 45
    const/4 v0, 0x1

    .line 46
    .line 47
    new-array v1, v0, [I

    .line 48
    .line 49
    .line 50
    invoke-static {v0, v1, p1}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 51
    .line 52
    aget p1, v1, p1

    .line 53
    .line 54
    iput p1, p0, Lio/agora/rtc/gl/GlTextureFrameBuffer;->frameBufferId:I

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
    :pswitch_data_0
    .packed-switch 0x1907
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getFrameBufferId()I
    .locals 1

    iget v0, p0, Lio/agora/rtc/gl/GlTextureFrameBuffer;->frameBufferId:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lio/agora/rtc/gl/GlTextureFrameBuffer;->height:I

    return v0
.end method

.method public getTextureId()I
    .locals 1

    iget v0, p0, Lio/agora/rtc/gl/GlTextureFrameBuffer;->textureId:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lio/agora/rtc/gl/GlTextureFrameBuffer;->width:I

    return v0
.end method

.method public release()V
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lio/agora/rtc/gl/GlTextureFrameBuffer;->textureId:I

    .line 3
    .line 4
    .line 5
    filled-new-array {v0}, [I

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    .line 10
    .line 11
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 12
    .line 13
    iget v0, p0, Lio/agora/rtc/gl/GlTextureFrameBuffer;->frameBufferId:I

    .line 14
    .line 15
    .line 16
    filled-new-array {v0}, [I

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 21
    .line 22
    iput v2, p0, Lio/agora/rtc/gl/GlTextureFrameBuffer;->width:I

    .line 23
    .line 24
    iput v2, p0, Lio/agora/rtc/gl/GlTextureFrameBuffer;->height:I

    .line 25
    return-void
.end method

.method public setSize(II)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    if-eqz p2, :cond_2

    .line 5
    .line 6
    iget v0, p0, Lio/agora/rtc/gl/GlTextureFrameBuffer;->width:I

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    iget v0, p0, Lio/agora/rtc/gl/GlTextureFrameBuffer;->height:I

    .line 11
    .line 12
    if-ne p2, v0, :cond_0

    .line 13
    return-void

    .line 14
    .line 15
    :cond_0
    iput p1, p0, Lio/agora/rtc/gl/GlTextureFrameBuffer;->width:I

    .line 16
    .line 17
    iput p2, p0, Lio/agora/rtc/gl/GlTextureFrameBuffer;->height:I

    .line 18
    .line 19
    .line 20
    const v0, 0x84c0

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 24
    .line 25
    iget v0, p0, Lio/agora/rtc/gl/GlTextureFrameBuffer;->textureId:I

    .line 26
    .line 27
    const/16 v1, 0xde1

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 31
    .line 32
    const/16 v2, 0xde1

    .line 33
    const/4 v3, 0x0

    .line 34
    .line 35
    iget v8, p0, Lio/agora/rtc/gl/GlTextureFrameBuffer;->pixelFormat:I

    .line 36
    const/4 v7, 0x0

    .line 37
    .line 38
    const/16 v9, 0x1401

    .line 39
    const/4 v10, 0x0

    .line 40
    move v4, v8

    .line 41
    move v5, p1

    .line 42
    move v6, p2

    .line 43
    .line 44
    .line 45
    invoke-static/range {v2 .. v10}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 46
    const/4 p1, 0x0

    .line 47
    .line 48
    .line 49
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 50
    .line 51
    const-string p2, "GlTextureFrameBuffer setSize"

    .line 52
    .line 53
    .line 54
    invoke-static {p2}, Lio/agora/rtc/gl/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    .line 55
    .line 56
    iget p2, p0, Lio/agora/rtc/gl/GlTextureFrameBuffer;->frameBufferId:I

    .line 57
    .line 58
    .line 59
    const v0, 0x8d40

    .line 60
    .line 61
    .line 62
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 63
    .line 64
    .line 65
    const p2, 0x8ce0

    .line 66
    .line 67
    iget v2, p0, Lio/agora/rtc/gl/GlTextureFrameBuffer;->textureId:I

    .line 68
    .line 69
    .line 70
    invoke-static {v0, p2, v1, v2, p1}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 71
    .line 72
    .line 73
    invoke-static {v0}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    .line 74
    move-result p2

    .line 75
    .line 76
    .line 77
    const v1, 0x8cd5

    .line 78
    .line 79
    if-ne p2, v1, :cond_1

    .line 80
    .line 81
    .line 82
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 83
    return-void

    .line 84
    .line 85
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 86
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    const-string v1, "Framebuffer not complete, status: "

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    move-result-object p2

    .line 103
    .line 104
    .line 105
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 106
    throw p1

    .line 107
    .line 108
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 109
    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    const-string v2, "Invalid size: "

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string/jumbo p1, "x"

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    move-result-object p1

    .line 135
    .line 136
    .line 137
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 138
    throw v0
.end method
