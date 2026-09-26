.class Lio/agora/rtc/gl/VideoFrameDrawer$YuvUploader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/gl/VideoFrameDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "YuvUploader"
.end annotation


# instance fields
.field private copyBuffer:Ljava/nio/ByteBuffer;

.field private yuvTextures:[I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/agora/rtc/gl/VideoFrameDrawer$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/agora/rtc/gl/VideoFrameDrawer$YuvUploader;-><init>()V

    return-void
.end method


# virtual methods
.method public getYuvTextures()[I
    .locals 1

    iget-object v0, p0, Lio/agora/rtc/gl/VideoFrameDrawer$YuvUploader;->yuvTextures:[I

    return-object v0
.end method

.method public release()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-object v0, p0, Lio/agora/rtc/gl/VideoFrameDrawer$YuvUploader;->copyBuffer:Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    iget-object v1, p0, Lio/agora/rtc/gl/VideoFrameDrawer$YuvUploader;->yuvTextures:[I

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    const/4 v2, 0x3

    .line 9
    const/4 v3, 0x0

    .line 10
    .line 11
    .line 12
    invoke-static {v2, v1, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 13
    .line 14
    iput-object v0, p0, Lio/agora/rtc/gl/VideoFrameDrawer$YuvUploader;->yuvTextures:[I

    .line 15
    :cond_0
    return-void
.end method

.method public uploadFromBuffer(Lio/agora/rtc/gl/VideoFrame$I420Buffer;)[I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Lio/agora/rtc/gl/VideoFrame$I420Buffer;->getStrideY()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Lio/agora/rtc/gl/VideoFrame$I420Buffer;->getStrideU()I

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Lio/agora/rtc/gl/VideoFrame$I420Buffer;->getStrideV()I

    .line 12
    move-result v2

    .line 13
    .line 14
    .line 15
    filled-new-array {v0, v1, v2}, [I

    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x3

    .line 18
    .line 19
    new-array v1, v1, [Ljava/nio/ByteBuffer;

    .line 20
    const/4 v2, 0x0

    .line 21
    .line 22
    .line 23
    invoke-interface {p1}, Lio/agora/rtc/gl/VideoFrame$I420Buffer;->getDataY()Ljava/nio/ByteBuffer;

    .line 24
    move-result-object v3

    .line 25
    .line 26
    aput-object v3, v1, v2

    .line 27
    const/4 v2, 0x1

    .line 28
    .line 29
    .line 30
    invoke-interface {p1}, Lio/agora/rtc/gl/VideoFrame$I420Buffer;->getDataU()Ljava/nio/ByteBuffer;

    .line 31
    move-result-object v3

    .line 32
    .line 33
    aput-object v3, v1, v2

    .line 34
    const/4 v2, 0x2

    .line 35
    .line 36
    .line 37
    invoke-interface {p1}, Lio/agora/rtc/gl/VideoFrame$I420Buffer;->getDataV()Ljava/nio/ByteBuffer;

    .line 38
    move-result-object v3

    .line 39
    .line 40
    aput-object v3, v1, v2

    .line 41
    .line 42
    .line 43
    invoke-interface {p1}, Lio/agora/rtc/gl/VideoFrame$Buffer;->getWidth()I

    .line 44
    move-result v2

    .line 45
    .line 46
    .line 47
    invoke-interface {p1}, Lio/agora/rtc/gl/VideoFrame$Buffer;->getHeight()I

    .line 48
    move-result p1

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v2, p1, v0, v1}, Lio/agora/rtc/gl/VideoFrameDrawer$YuvUploader;->uploadYuvData(II[I[Ljava/nio/ByteBuffer;)[I

    .line 52
    move-result-object p1

    .line 53
    return-object p1
.end method

.method public uploadYuvData(II[I[Ljava/nio/ByteBuffer;)[I
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "strides",
            "planes"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move/from16 v1, p1

    .line 5
    .line 6
    move/from16 v2, p2

    .line 7
    .line 8
    div-int/lit8 v3, v1, 0x2

    .line 9
    .line 10
    .line 11
    filled-new-array {v1, v3, v3}, [I

    .line 12
    move-result-object v1

    .line 13
    .line 14
    div-int/lit8 v3, v2, 0x2

    .line 15
    .line 16
    .line 17
    filled-new-array {v2, v3, v3}, [I

    .line 18
    move-result-object v2

    .line 19
    const/4 v3, 0x0

    .line 20
    move v4, v3

    .line 21
    move v5, v4

    .line 22
    :goto_0
    const/4 v6, 0x3

    .line 23
    .line 24
    if-ge v4, v6, :cond_1

    .line 25
    .line 26
    aget v6, p3, v4

    .line 27
    .line 28
    aget v7, v1, v4

    .line 29
    .line 30
    if-le v6, v7, :cond_0

    .line 31
    .line 32
    aget v6, v2, v4

    .line 33
    mul-int/2addr v7, v6

    .line 34
    .line 35
    .line 36
    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    .line 37
    move-result v5

    .line 38
    .line 39
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 40
    goto :goto_0

    .line 41
    .line 42
    :cond_1
    if-lez v5, :cond_3

    .line 43
    .line 44
    iget-object v4, v0, Lio/agora/rtc/gl/VideoFrameDrawer$YuvUploader;->copyBuffer:Ljava/nio/ByteBuffer;

    .line 45
    .line 46
    if-eqz v4, :cond_2

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4}, Ljava/nio/Buffer;->capacity()I

    .line 50
    move-result v4

    .line 51
    .line 52
    if-ge v4, v5, :cond_3

    .line 53
    .line 54
    .line 55
    :cond_2
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 56
    move-result-object v4

    .line 57
    .line 58
    iput-object v4, v0, Lio/agora/rtc/gl/VideoFrameDrawer$YuvUploader;->copyBuffer:Ljava/nio/ByteBuffer;

    .line 59
    .line 60
    :cond_3
    iget-object v4, v0, Lio/agora/rtc/gl/VideoFrameDrawer$YuvUploader;->yuvTextures:[I

    .line 61
    .line 62
    const/16 v5, 0xde1

    .line 63
    .line 64
    if-nez v4, :cond_4

    .line 65
    .line 66
    new-array v4, v6, [I

    .line 67
    .line 68
    iput-object v4, v0, Lio/agora/rtc/gl/VideoFrameDrawer$YuvUploader;->yuvTextures:[I

    .line 69
    move v4, v3

    .line 70
    .line 71
    :goto_1
    if-ge v4, v6, :cond_4

    .line 72
    .line 73
    iget-object v7, v0, Lio/agora/rtc/gl/VideoFrameDrawer$YuvUploader;->yuvTextures:[I

    .line 74
    .line 75
    .line 76
    invoke-static {v5}, Lio/agora/rtc/gl/GlUtil;->generateTexture(I)I

    .line 77
    move-result v8

    .line 78
    .line 79
    aput v8, v7, v4

    .line 80
    .line 81
    add-int/lit8 v4, v4, 0x1

    .line 82
    goto :goto_1

    .line 83
    .line 84
    :cond_4
    :goto_2
    if-ge v3, v6, :cond_6

    .line 85
    .line 86
    .line 87
    const v4, 0x84c0

    .line 88
    add-int/2addr v4, v3

    .line 89
    .line 90
    .line 91
    invoke-static {v4}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 92
    .line 93
    iget-object v4, v0, Lio/agora/rtc/gl/VideoFrameDrawer$YuvUploader;->yuvTextures:[I

    .line 94
    .line 95
    aget v4, v4, v3

    .line 96
    .line 97
    .line 98
    invoke-static {v5, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 99
    .line 100
    aget v4, p3, v3

    .line 101
    .line 102
    aget v10, v1, v3

    .line 103
    .line 104
    if-ne v4, v10, :cond_5

    .line 105
    .line 106
    aget-object v4, p4, v3

    .line 107
    :goto_3
    move-object v15, v4

    .line 108
    goto :goto_4

    .line 109
    .line 110
    :cond_5
    iget-object v4, v0, Lio/agora/rtc/gl/VideoFrameDrawer$YuvUploader;->copyBuffer:Ljava/nio/ByteBuffer;

    .line 111
    goto :goto_3

    .line 112
    .line 113
    :goto_4
    const/16 v7, 0xde1

    .line 114
    const/4 v8, 0x0

    .line 115
    .line 116
    const/16 v9, 0x1909

    .line 117
    .line 118
    aget v11, v2, v3

    .line 119
    const/4 v12, 0x0

    .line 120
    .line 121
    const/16 v13, 0x1909

    .line 122
    .line 123
    const/16 v14, 0x1401

    .line 124
    .line 125
    .line 126
    invoke-static/range {v7 .. v15}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 127
    .line 128
    add-int/lit8 v3, v3, 0x1

    .line 129
    goto :goto_2

    .line 130
    .line 131
    :cond_6
    iget-object v1, v0, Lio/agora/rtc/gl/VideoFrameDrawer$YuvUploader;->yuvTextures:[I

    .line 132
    return-object v1
.end method
