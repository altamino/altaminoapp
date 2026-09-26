.class public Lio/agora/rtc/mediaio/VideoFrameConsumerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/agora/rtc/mediaio/IVideoFrameConsumer;


# instance fields
.field private mCaptureHandle:J


# direct methods
.method public constructor <init>(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeHandle"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-wide p1, p0, Lio/agora/rtc/mediaio/VideoFrameConsumerImpl;->mCaptureHandle:J

    .line 6
    return-void
.end method


# virtual methods
.method public consumeByteArrayFrame([BIIIIJ)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "format",
            "width",
            "height",
            "rotation",
            "ts"
        }
    .end annotation

    .line 1
    move v4, p2

    .line 2
    .line 3
    const/16 v0, 0x8

    .line 4
    const/4 v1, 0x2

    .line 5
    const/4 v2, 0x1

    .line 6
    .line 7
    if-eq v4, v0, :cond_3

    .line 8
    const/4 v0, 0x3

    .line 9
    .line 10
    if-eq v4, v0, :cond_3

    .line 11
    .line 12
    if-ne v4, v2, :cond_0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    const/4 v0, 0x4

    .line 15
    .line 16
    if-eq v4, v0, :cond_2

    .line 17
    .line 18
    if-eq v4, v1, :cond_2

    .line 19
    const/4 v1, 0x7

    .line 20
    .line 21
    if-ne v4, v1, :cond_1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    goto :goto_2

    .line 25
    .line 26
    :cond_2
    :goto_0
    mul-int v1, p3, p4

    .line 27
    mul-int/2addr v0, v1

    .line 28
    goto :goto_2

    .line 29
    .line 30
    :cond_3
    :goto_1
    add-int/lit8 v0, p3, 0x1

    .line 31
    shr-int/2addr v0, v2

    .line 32
    .line 33
    add-int/lit8 v3, p4, 0x1

    .line 34
    .line 35
    shr-int/lit8 v2, v3, 0x1

    .line 36
    .line 37
    mul-int v3, p3, p4

    .line 38
    mul-int/2addr v0, v2

    .line 39
    mul-int/2addr v0, v1

    .line 40
    add-int/2addr v0, v3

    .line 41
    :goto_2
    move-object v3, p1

    .line 42
    .line 43
    if-eqz v0, :cond_4

    .line 44
    array-length v1, v3

    .line 45
    .line 46
    if-eq v1, v0, :cond_4

    .line 47
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    const-string v1, "The size of consumeByteArrayFrame is illegal, format "

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    const-string v1, "IVideoFrameConsumer"

    .line 66
    .line 67
    .line 68
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    move-object v10, p0

    .line 70
    goto :goto_3

    .line 71
    :cond_4
    move-object v10, p0

    .line 72
    .line 73
    iget-wide v1, v10, Lio/agora/rtc/mediaio/VideoFrameConsumerImpl;->mCaptureHandle:J

    .line 74
    move-object v0, p0

    .line 75
    move-object v3, p1

    .line 76
    move v4, p2

    .line 77
    move v5, p3

    .line 78
    move v6, p4

    .line 79
    .line 80
    move/from16 v7, p5

    .line 81
    .line 82
    move-wide/from16 v8, p6

    .line 83
    .line 84
    .line 85
    invoke-virtual/range {v0 .. v9}, Lio/agora/rtc/mediaio/VideoFrameConsumerImpl;->provideByteArrayFrame(J[BIIIIJ)V

    .line 86
    :goto_3
    return-void
.end method

.method public consumeByteBufferFrame(Ljava/nio/ByteBuffer;IIIIJ)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "format",
            "width",
            "height",
            "rotation",
            "ts"
        }
    .end annotation

    .line 1
    move-object v10, p0

    .line 2
    .line 3
    iget-wide v1, v10, Lio/agora/rtc/mediaio/VideoFrameConsumerImpl;->mCaptureHandle:J

    .line 4
    move-object v0, p0

    .line 5
    move-object v3, p1

    .line 6
    move v4, p2

    .line 7
    move v5, p3

    .line 8
    move v6, p4

    .line 9
    .line 10
    move/from16 v7, p5

    .line 11
    .line 12
    move-wide/from16 v8, p6

    .line 13
    .line 14
    .line 15
    invoke-virtual/range {v0 .. v9}, Lio/agora/rtc/mediaio/VideoFrameConsumerImpl;->provideByteBufferFrame(JLjava/nio/ByteBuffer;IIIIJ)V

    .line 16
    return-void
.end method

.method public consumeTextureFrame(IIIIIJ[F)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "texId",
            "format",
            "width",
            "height",
            "rotation",
            "ts",
            "matrix"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    .line 4
    move-result-object v3

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    .line 8
    move-result v0

    .line 9
    .line 10
    const/16 v1, 0x3000

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    move-object v12, p0

    .line 14
    .line 15
    iget-wide v1, v12, Lio/agora/rtc/mediaio/VideoFrameConsumerImpl;->mCaptureHandle:J

    .line 16
    move-object v0, p0

    .line 17
    move v4, p1

    .line 18
    move v5, p2

    .line 19
    .line 20
    move/from16 v6, p3

    .line 21
    .line 22
    move/from16 v7, p4

    .line 23
    .line 24
    move/from16 v8, p5

    .line 25
    .line 26
    move-wide/from16 v9, p6

    .line 27
    .line 28
    move-object/from16 v11, p8

    .line 29
    .line 30
    .line 31
    invoke-virtual/range {v0 .. v11}, Lio/agora/rtc/mediaio/VideoFrameConsumerImpl;->provideTextureFrame(JLjava/lang/Object;IIIIIJ[F)V

    .line 32
    return-void

    .line 33
    :cond_0
    move-object v12, p0

    .line 34
    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    const-string v2, "eglError: "

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    new-instance v2, Landroid/opengl/GLException;

    .line 53
    .line 54
    .line 55
    invoke-direct {v2, v0, v1}, Landroid/opengl/GLException;-><init>(ILjava/lang/String;)V

    .line 56
    throw v2
.end method

.method public native provideByteArrayFrame(J[BIIIIJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "data",
            "format",
            "width",
            "height",
            "rotation",
            "ts"
        }
    .end annotation
.end method

.method public native provideByteBufferFrame(JLjava/nio/ByteBuffer;IIIIJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "buffer",
            "format",
            "width",
            "height",
            "rotation",
            "ts"
        }
    .end annotation
.end method

.method public native provideTextureFrame(JLjava/lang/Object;IIIIIJ[F)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "sharedContext",
            "texId",
            "format",
            "width",
            "height",
            "rotation",
            "ts",
            "matrix"
        }
    .end annotation
.end method
