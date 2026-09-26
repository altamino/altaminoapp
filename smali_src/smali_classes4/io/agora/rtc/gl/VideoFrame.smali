.class public Lio/agora/rtc/gl/VideoFrame;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc/gl/VideoFrame$TextureBuffer;,
        Lio/agora/rtc/gl/VideoFrame$I420Buffer;,
        Lio/agora/rtc/gl/VideoFrame$Buffer;
    }
.end annotation


# instance fields
.field private final buffer:Lio/agora/rtc/gl/VideoFrame$Buffer;

.field private final rotation:I

.field private final timestampNs:J


# direct methods
.method public constructor <init>(Lio/agora/rtc/gl/VideoFrame$Buffer;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "rotation",
            "timestampNs"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    rem-int/lit8 v0, p2, 0x5a

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iput-object p1, p0, Lio/agora/rtc/gl/VideoFrame;->buffer:Lio/agora/rtc/gl/VideoFrame$Buffer;

    .line 12
    .line 13
    iput p2, p0, Lio/agora/rtc/gl/VideoFrame;->rotation:I

    .line 14
    .line 15
    iput-wide p3, p0, Lio/agora/rtc/gl/VideoFrame;->timestampNs:J

    .line 16
    return-void

    .line 17
    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 19
    .line 20
    .line 21
    const-string/jumbo p2, "rotation must be a multiple of 90"

    .line 22
    .line 23
    .line 24
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    throw p1

    .line 26
    .line 27
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 28
    .line 29
    const-string p2, "buffer not allowed to be null"

    .line 30
    .line 31
    .line 32
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    throw p1
.end method

.method public static cropAndScaleI420(Lio/agora/rtc/gl/VideoFrame$I420Buffer;IIIIII)Lio/agora/rtc/gl/VideoFrame$Buffer;
    .locals 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "cropX",
            "cropY",
            "cropWidth",
            "cropHeight",
            "scaleWidth",
            "scaleHeight"
        }
    .end annotation

    .line 1
    .line 2
    move/from16 v8, p3

    .line 3
    .line 4
    move/from16 v9, p5

    .line 5
    .line 6
    if-ne v8, v9, :cond_1

    .line 7
    .line 8
    move/from16 v7, p4

    .line 9
    .line 10
    move/from16 v6, p6

    .line 11
    .line 12
    if-ne v7, v6, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-interface/range {p0 .. p0}, Lio/agora/rtc/gl/VideoFrame$I420Buffer;->getDataY()Ljava/nio/ByteBuffer;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-interface/range {p0 .. p0}, Lio/agora/rtc/gl/VideoFrame$I420Buffer;->getDataU()Ljava/nio/ByteBuffer;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-interface/range {p0 .. p0}, Lio/agora/rtc/gl/VideoFrame$I420Buffer;->getDataV()Ljava/nio/ByteBuffer;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    .line 27
    invoke-interface/range {p0 .. p0}, Lio/agora/rtc/gl/VideoFrame$I420Buffer;->getStrideY()I

    .line 28
    move-result v3

    .line 29
    .line 30
    mul-int v3, v3, p2

    .line 31
    .line 32
    add-int v3, p1, v3

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 36
    .line 37
    div-int/lit8 v3, p1, 0x2

    .line 38
    .line 39
    div-int/lit8 v4, p2, 0x2

    .line 40
    .line 41
    .line 42
    invoke-interface/range {p0 .. p0}, Lio/agora/rtc/gl/VideoFrame$I420Buffer;->getStrideU()I

    .line 43
    move-result v5

    .line 44
    mul-int/2addr v5, v4

    .line 45
    add-int/2addr v5, v3

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 49
    .line 50
    .line 51
    invoke-interface/range {p0 .. p0}, Lio/agora/rtc/gl/VideoFrame$I420Buffer;->getStrideV()I

    .line 52
    move-result v5

    .line 53
    mul-int/2addr v4, v5

    .line 54
    add-int/2addr v3, v4

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 58
    .line 59
    .line 60
    invoke-interface/range {p0 .. p0}, Lio/agora/rtc/gl/VideoFrame$Buffer;->retain()V

    .line 61
    .line 62
    .line 63
    invoke-interface/range {p0 .. p0}, Lio/agora/rtc/gl/VideoFrame$Buffer;->getWidth()I

    .line 64
    move-result v4

    .line 65
    .line 66
    .line 67
    invoke-interface/range {p0 .. p0}, Lio/agora/rtc/gl/VideoFrame$Buffer;->getHeight()I

    .line 68
    move-result v5

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 72
    move-result-object v6

    .line 73
    .line 74
    .line 75
    invoke-interface/range {p0 .. p0}, Lio/agora/rtc/gl/VideoFrame$I420Buffer;->getStrideY()I

    .line 76
    move-result v7

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 80
    move-result-object v8

    .line 81
    .line 82
    .line 83
    invoke-interface/range {p0 .. p0}, Lio/agora/rtc/gl/VideoFrame$I420Buffer;->getStrideU()I

    .line 84
    move-result v9

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 88
    move-result-object v10

    .line 89
    .line 90
    .line 91
    invoke-interface/range {p0 .. p0}, Lio/agora/rtc/gl/VideoFrame$I420Buffer;->getStrideV()I

    .line 92
    move-result v11

    .line 93
    .line 94
    new-instance v12, Lio/agora/rtc/gl/VideoFrame$1;

    .line 95
    .line 96
    move-object/from16 v13, p0

    .line 97
    .line 98
    .line 99
    invoke-direct {v12, v13}, Lio/agora/rtc/gl/VideoFrame$1;-><init>(Lio/agora/rtc/gl/VideoFrame$I420Buffer;)V

    .line 100
    .line 101
    .line 102
    invoke-static/range {v4 .. v12}, Lio/agora/rtc/gl/JavaI420Buffer;->wrap(IILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/lang/Runnable;)Lio/agora/rtc/gl/JavaI420Buffer;

    .line 103
    move-result-object v0

    .line 104
    return-object v0

    .line 105
    .line 106
    :cond_0
    move-object/from16 v13, p0

    .line 107
    goto :goto_0

    .line 108
    .line 109
    :cond_1
    move-object/from16 v13, p0

    .line 110
    .line 111
    move/from16 v7, p4

    .line 112
    .line 113
    move/from16 v6, p6

    .line 114
    .line 115
    .line 116
    :goto_0
    invoke-static/range {p5 .. p6}, Lio/agora/rtc/gl/JavaI420Buffer;->allocate(II)Lio/agora/rtc/gl/JavaI420Buffer;

    .line 117
    move-result-object v18

    .line 118
    .line 119
    .line 120
    invoke-interface/range {p0 .. p0}, Lio/agora/rtc/gl/VideoFrame$I420Buffer;->getDataY()Ljava/nio/ByteBuffer;

    .line 121
    move-result-object v0

    .line 122
    .line 123
    .line 124
    invoke-interface/range {p0 .. p0}, Lio/agora/rtc/gl/VideoFrame$I420Buffer;->getStrideY()I

    .line 125
    move-result v1

    .line 126
    .line 127
    .line 128
    invoke-interface/range {p0 .. p0}, Lio/agora/rtc/gl/VideoFrame$I420Buffer;->getDataU()Ljava/nio/ByteBuffer;

    .line 129
    move-result-object v2

    .line 130
    .line 131
    .line 132
    invoke-interface/range {p0 .. p0}, Lio/agora/rtc/gl/VideoFrame$I420Buffer;->getStrideU()I

    .line 133
    move-result v3

    .line 134
    .line 135
    .line 136
    invoke-interface/range {p0 .. p0}, Lio/agora/rtc/gl/VideoFrame$I420Buffer;->getDataV()Ljava/nio/ByteBuffer;

    .line 137
    move-result-object v4

    .line 138
    .line 139
    .line 140
    invoke-interface/range {p0 .. p0}, Lio/agora/rtc/gl/VideoFrame$I420Buffer;->getStrideV()I

    .line 141
    move-result v5

    .line 142
    .line 143
    .line 144
    invoke-virtual/range {v18 .. v18}, Lio/agora/rtc/gl/JavaI420Buffer;->getDataY()Ljava/nio/ByteBuffer;

    .line 145
    move-result-object v10

    .line 146
    .line 147
    .line 148
    invoke-virtual/range {v18 .. v18}, Lio/agora/rtc/gl/JavaI420Buffer;->getStrideY()I

    .line 149
    move-result v11

    .line 150
    .line 151
    .line 152
    invoke-virtual/range {v18 .. v18}, Lio/agora/rtc/gl/JavaI420Buffer;->getDataU()Ljava/nio/ByteBuffer;

    .line 153
    move-result-object v12

    .line 154
    .line 155
    .line 156
    invoke-virtual/range {v18 .. v18}, Lio/agora/rtc/gl/JavaI420Buffer;->getStrideU()I

    .line 157
    move-result v13

    .line 158
    .line 159
    .line 160
    invoke-virtual/range {v18 .. v18}, Lio/agora/rtc/gl/JavaI420Buffer;->getDataV()Ljava/nio/ByteBuffer;

    .line 161
    move-result-object v14

    .line 162
    .line 163
    .line 164
    invoke-virtual/range {v18 .. v18}, Lio/agora/rtc/gl/JavaI420Buffer;->getStrideV()I

    .line 165
    move-result v15

    .line 166
    .line 167
    move/from16 v6, p1

    .line 168
    .line 169
    move/from16 v7, p2

    .line 170
    .line 171
    move/from16 v8, p3

    .line 172
    .line 173
    move/from16 v9, p4

    .line 174
    .line 175
    move/from16 v16, p5

    .line 176
    .line 177
    move/from16 v17, p6

    .line 178
    .line 179
    .line 180
    invoke-static/range {v0 .. v17}, Lio/agora/rtc/gl/VideoFrame;->nativeCropAndScaleI420(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;IIIIILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;III)V

    .line 181
    return-object v18
.end method

.method private static native nativeCropAndScaleI420(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;IIIIILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;III)V
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
            0x0,
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
            "srcY",
            "srcStrideY",
            "srcU",
            "srcStrideU",
            "srcV",
            "srcStrideV",
            "cropX",
            "cropY",
            "cropWidth",
            "cropHeight",
            "dstY",
            "dstStrideY",
            "dstU",
            "dstStrideU",
            "dstV",
            "dstStrideV",
            "scaleWidth",
            "scaleHeight"
        }
    .end annotation
.end method


# virtual methods
.method public getBuffer()Lio/agora/rtc/gl/VideoFrame$Buffer;
    .locals 1

    iget-object v0, p0, Lio/agora/rtc/gl/VideoFrame;->buffer:Lio/agora/rtc/gl/VideoFrame$Buffer;

    return-object v0
.end method

.method public getRotatedHeight()I
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lio/agora/rtc/gl/VideoFrame;->rotation:I

    .line 3
    .line 4
    rem-int/lit16 v0, v0, 0xb4

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lio/agora/rtc/gl/VideoFrame;->buffer:Lio/agora/rtc/gl/VideoFrame$Buffer;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Lio/agora/rtc/gl/VideoFrame$Buffer;->getHeight()I

    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/gl/VideoFrame;->buffer:Lio/agora/rtc/gl/VideoFrame$Buffer;

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Lio/agora/rtc/gl/VideoFrame$Buffer;->getWidth()I

    .line 19
    move-result v0

    .line 20
    return v0
.end method

.method public getRotatedWidth()I
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lio/agora/rtc/gl/VideoFrame;->rotation:I

    .line 3
    .line 4
    rem-int/lit16 v0, v0, 0xb4

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lio/agora/rtc/gl/VideoFrame;->buffer:Lio/agora/rtc/gl/VideoFrame$Buffer;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Lio/agora/rtc/gl/VideoFrame$Buffer;->getWidth()I

    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/gl/VideoFrame;->buffer:Lio/agora/rtc/gl/VideoFrame$Buffer;

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Lio/agora/rtc/gl/VideoFrame$Buffer;->getHeight()I

    .line 19
    move-result v0

    .line 20
    return v0
.end method

.method public getRotation()I
    .locals 1

    iget v0, p0, Lio/agora/rtc/gl/VideoFrame;->rotation:I

    return v0
.end method

.method public getTimestampNs()J
    .locals 2

    iget-wide v0, p0, Lio/agora/rtc/gl/VideoFrame;->timestampNs:J

    return-wide v0
.end method

.method public release()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/gl/VideoFrame;->buffer:Lio/agora/rtc/gl/VideoFrame$Buffer;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lio/agora/rtc/gl/VideoFrame$Buffer;->release()V

    .line 6
    return-void
.end method

.method public retain()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/gl/VideoFrame;->buffer:Lio/agora/rtc/gl/VideoFrame$Buffer;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lio/agora/rtc/gl/VideoFrame$Buffer;->retain()V

    .line 6
    return-void
.end method
