.class public Lio/agora/rtc/utils/YuvUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc/utils/YuvUtils$Plane;
    }
.end annotation


# static fields
.field public static final I420:I = 0x23

.field public static final NV21:I = 0x11

.field private static final TAG:Ljava/lang/String; = "YuvUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getImageData(Landroid/media/Image;I)[B
    .locals 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "image",
            "imageFormat"
        }
    .end annotation

    .line 1
    .line 2
    move/from16 v0, p1

    .line 3
    .line 4
    const/16 v1, 0x11

    .line 5
    .line 6
    const/16 v2, 0x23

    .line 7
    .line 8
    if-eq v0, v2, :cond_1

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    const-string v1, "only support COLOR_FormatI420 and COLOR_FormatNV21"

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 19
    throw v0

    .line 20
    .line 21
    .line 22
    :cond_1
    :goto_0
    invoke-static/range {p0 .. p0}, Lio/agora/rtc/utils/YuvUtils;->supportedImageFormat(Landroid/media/Image;)Z

    .line 23
    move-result v3

    .line 24
    .line 25
    if-eqz v3, :cond_e

    .line 26
    .line 27
    .line 28
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    .line 29
    move-result-object v3

    .line 30
    .line 31
    .line 32
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getFormat()I

    .line 33
    move-result v4

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 37
    move-result v5

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 41
    move-result v6

    .line 42
    .line 43
    .line 44
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    .line 45
    move-result-object v7

    .line 46
    .line 47
    mul-int v8, v5, v6

    .line 48
    .line 49
    .line 50
    invoke-static {v4}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    .line 51
    move-result v4

    .line 52
    mul-int/2addr v4, v8

    .line 53
    .line 54
    div-int/lit8 v4, v4, 0x8

    .line 55
    .line 56
    new-array v4, v4, [B

    .line 57
    const/4 v9, 0x0

    .line 58
    .line 59
    aget-object v10, v7, v9

    .line 60
    .line 61
    .line 62
    invoke-virtual {v10}, Landroid/media/Image$Plane;->getRowStride()I

    .line 63
    move-result v10

    .line 64
    .line 65
    new-array v10, v10, [B

    .line 66
    const/4 v11, 0x1

    .line 67
    move v12, v9

    .line 68
    move v13, v12

    .line 69
    move v14, v11

    .line 70
    :goto_1
    array-length v15, v7

    .line 71
    .line 72
    if-ge v12, v15, :cond_d

    .line 73
    .line 74
    if-eqz v12, :cond_6

    .line 75
    const/4 v15, 0x2

    .line 76
    .line 77
    if-eq v12, v11, :cond_4

    .line 78
    .line 79
    if-eq v12, v15, :cond_2

    .line 80
    goto :goto_4

    .line 81
    .line 82
    :cond_2
    if-ne v0, v2, :cond_3

    .line 83
    int-to-double v13, v8

    .line 84
    .line 85
    const-wide/high16 v15, 0x3ff4000000000000L    # 1.25

    .line 86
    mul-double/2addr v13, v15

    .line 87
    double-to-int v13, v13

    .line 88
    :goto_2
    move v14, v11

    .line 89
    goto :goto_4

    .line 90
    .line 91
    :cond_3
    if-ne v0, v1, :cond_7

    .line 92
    move v13, v8

    .line 93
    :goto_3
    move v14, v15

    .line 94
    goto :goto_4

    .line 95
    .line 96
    :cond_4
    if-ne v0, v2, :cond_5

    .line 97
    move v13, v8

    .line 98
    goto :goto_2

    .line 99
    .line 100
    :cond_5
    if-ne v0, v1, :cond_7

    .line 101
    .line 102
    add-int/lit8 v13, v8, 0x1

    .line 103
    goto :goto_3

    .line 104
    :cond_6
    move v13, v9

    .line 105
    goto :goto_2

    .line 106
    .line 107
    :cond_7
    :goto_4
    aget-object v15, v7, v12

    .line 108
    .line 109
    .line 110
    invoke-virtual {v15}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    .line 111
    move-result-object v15

    .line 112
    .line 113
    aget-object v16, v7, v12

    .line 114
    .line 115
    .line 116
    invoke-virtual/range {v16 .. v16}, Landroid/media/Image$Plane;->getRowStride()I

    .line 117
    move-result v16

    .line 118
    .line 119
    aget-object v17, v7, v12

    .line 120
    .line 121
    .line 122
    invoke-virtual/range {v17 .. v17}, Landroid/media/Image$Plane;->getPixelStride()I

    .line 123
    move-result v1

    .line 124
    .line 125
    if-nez v12, :cond_8

    .line 126
    .line 127
    move/from16 v17, v9

    .line 128
    goto :goto_5

    .line 129
    .line 130
    :cond_8
    move/from16 v17, v11

    .line 131
    .line 132
    :goto_5
    shr-int v2, v5, v17

    .line 133
    .line 134
    shr-int v9, v6, v17

    .line 135
    .line 136
    iget v11, v3, Landroid/graphics/Rect;->top:I

    .line 137
    .line 138
    shr-int v11, v11, v17

    .line 139
    .line 140
    mul-int v11, v11, v16

    .line 141
    .line 142
    iget v0, v3, Landroid/graphics/Rect;->left:I

    .line 143
    .line 144
    shr-int v0, v0, v17

    .line 145
    mul-int/2addr v0, v1

    .line 146
    add-int/2addr v11, v0

    .line 147
    .line 148
    .line 149
    invoke-virtual {v15, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 150
    const/4 v0, 0x0

    .line 151
    .line 152
    :goto_6
    if-ge v0, v9, :cond_c

    .line 153
    const/4 v11, 0x1

    .line 154
    .line 155
    if-ne v1, v11, :cond_9

    .line 156
    .line 157
    if-ne v14, v11, :cond_9

    .line 158
    .line 159
    .line 160
    invoke-virtual {v15, v4, v13, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 161
    add-int/2addr v13, v2

    .line 162
    .line 163
    move-object/from16 v18, v3

    .line 164
    move v3, v2

    .line 165
    goto :goto_8

    .line 166
    .line 167
    :cond_9
    add-int/lit8 v17, v2, -0x1

    .line 168
    .line 169
    mul-int v17, v17, v1

    .line 170
    .line 171
    move-object/from16 v18, v3

    .line 172
    .line 173
    add-int/lit8 v3, v17, 0x1

    .line 174
    const/4 v11, 0x0

    .line 175
    .line 176
    .line 177
    invoke-virtual {v15, v10, v11, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 178
    .line 179
    :goto_7
    if-ge v11, v2, :cond_a

    .line 180
    .line 181
    mul-int v19, v11, v1

    .line 182
    .line 183
    aget-byte v19, v10, v19

    .line 184
    .line 185
    aput-byte v19, v4, v13

    .line 186
    add-int/2addr v13, v14

    .line 187
    .line 188
    add-int/lit8 v11, v11, 0x1

    .line 189
    goto :goto_7

    .line 190
    .line 191
    :cond_a
    :goto_8
    add-int/lit8 v11, v9, -0x1

    .line 192
    .line 193
    if-ge v0, v11, :cond_b

    .line 194
    .line 195
    .line 196
    invoke-virtual {v15}, Ljava/nio/Buffer;->position()I

    .line 197
    move-result v11

    .line 198
    .line 199
    add-int v11, v11, v16

    .line 200
    sub-int/2addr v11, v3

    .line 201
    .line 202
    .line 203
    invoke-virtual {v15, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 204
    .line 205
    :cond_b
    add-int/lit8 v0, v0, 0x1

    .line 206
    .line 207
    move-object/from16 v3, v18

    .line 208
    goto :goto_6

    .line 209
    .line 210
    :cond_c
    move-object/from16 v18, v3

    .line 211
    .line 212
    add-int/lit8 v12, v12, 0x1

    .line 213
    .line 214
    move/from16 v0, p1

    .line 215
    .line 216
    const/16 v1, 0x11

    .line 217
    .line 218
    const/16 v2, 0x23

    .line 219
    const/4 v9, 0x0

    .line 220
    const/4 v11, 0x1

    .line 221
    .line 222
    goto/16 :goto_1

    .line 223
    :cond_d
    return-object v4

    .line 224
    .line 225
    :cond_e
    new-instance v0, Ljava/lang/RuntimeException;

    .line 226
    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    .line 232
    const-string v2, "can\'t convert Image to byte array, format "

    .line 233
    .line 234
    .line 235
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getFormat()I

    .line 239
    move-result v2

    .line 240
    .line 241
    .line 242
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    move-result-object v1

    .line 247
    .line 248
    .line 249
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 250
    throw v0
.end method

.method public static supportedImageFormat(Landroid/media/Image;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "image"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    .line 4
    move-result p0

    .line 5
    .line 6
    const/16 v0, 0x11

    .line 7
    .line 8
    if-eq p0, v0, :cond_0

    .line 9
    .line 10
    const/16 v0, 0x23

    .line 11
    .line 12
    if-eq p0, v0, :cond_0

    .line 13
    .line 14
    .line 15
    const v0, 0x32315659

    .line 16
    .line 17
    if-eq p0, v0, :cond_0

    .line 18
    const/4 p0, 0x0

    .line 19
    return p0

    .line 20
    :cond_0
    const/4 p0, 0x1

    .line 21
    return p0
.end method

.method public static write420ImageToFile(Landroid/media/Image;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "image",
            "filePath"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-static {p0}, Lio/agora/rtc/utils/YuvUtils;->yuv420toNV21(Landroid/media/Image;)[B

    .line 7
    move-result-object v1

    .line 8
    .line 9
    :try_start_0
    new-instance v6, Landroid/graphics/YuvImage;

    .line 10
    .line 11
    const/16 v2, 0x11

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    .line 15
    move-result v3

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    .line 19
    move-result v4

    .line 20
    const/4 v5, 0x0

    .line 21
    move-object v0, v6

    .line 22
    .line 23
    .line 24
    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 25
    .line 26
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 27
    .line 28
    .line 29
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 30
    .line 31
    new-instance v1, Landroid/graphics/Rect;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    .line 35
    move-result v2

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    .line 39
    move-result p0

    .line 40
    const/4 v3, 0x0

    .line 41
    .line 42
    .line 43
    invoke-direct {v1, v3, v3, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 44
    .line 45
    const/16 p0, 0x64

    .line 46
    .line 47
    .line 48
    invoke-virtual {v6, v1, p0, v0}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 49
    .line 50
    new-instance p0, Ljava/io/File;

    .line 51
    .line 52
    .line 53
    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    .line 57
    .line 58
    new-instance p1, Ljava/io/FileOutputStream;

    .line 59
    .line 60
    .line 61
    invoke-direct {p1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 65
    move-result-object p0

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    goto :goto_2

    .line 76
    :catchall_0
    move-exception p0

    .line 77
    goto :goto_0

    .line 78
    :catch_0
    move-exception p0

    .line 79
    goto :goto_1

    .line 80
    :goto_0
    throw p0

    .line 81
    .line 82
    :goto_1
    sget-object p1, Lio/agora/rtc/utils/YuvUtils;->TAG:Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 86
    move-result-object p0

    .line 87
    .line 88
    .line 89
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :goto_2
    return-void
.end method

.method public static writeNV21ToFile([BIILjava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "imageData",
            "width",
            "height",
            "filePath"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v6, Landroid/graphics/YuvImage;

    .line 3
    .line 4
    const/16 v2, 0x11

    .line 5
    const/4 v5, 0x0

    .line 6
    move-object v0, v6

    .line 7
    move-object v1, p0

    .line 8
    move v3, p1

    .line 9
    move v4, p2

    .line 10
    .line 11
    .line 12
    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 13
    .line 14
    new-instance p0, Landroid/graphics/Rect;

    .line 15
    const/4 v0, 0x0

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v0, v0, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 19
    .line 20
    :try_start_0
    new-instance p1, Ljava/io/File;

    .line 21
    .line 22
    .line 23
    invoke-direct {p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 27
    .line 28
    new-instance p2, Ljava/io/FileOutputStream;

    .line 29
    .line 30
    .line 31
    invoke-direct {p2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 32
    .line 33
    const/16 p1, 0x64

    .line 34
    .line 35
    .line 36
    invoke-virtual {v6, p0, p1, p2}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    const/4 p0, 0x1

    .line 44
    return p0

    .line 45
    :catch_0
    move-exception p0

    .line 46
    .line 47
    sget-object p1, Lio/agora/rtc/utils/YuvUtils;->TAG:Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 51
    move-result-object p0

    .line 52
    .line 53
    .line 54
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return v0
.end method

.method public static writeRawData([BLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "filePath"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p0, :cond_1

    .line 3
    array-length v0, p0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    goto :goto_2

    .line 7
    .line 8
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 15
    .line 16
    new-instance p1, Ljava/io/BufferedOutputStream;

    .line 17
    .line 18
    new-instance v1, Ljava/io/FileOutputStream;

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p1, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    goto :goto_2

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception p0

    .line 38
    goto :goto_1

    .line 39
    :goto_0
    throw p0

    .line 40
    .line 41
    :goto_1
    sget-object p1, Lio/agora/rtc/utils/YuvUtils;->TAG:Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 45
    move-result-object p0

    .line 46
    .line 47
    .line 48
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_1
    :goto_2
    return-void
.end method

.method public static writeRgbaToFile(Ljava/nio/Buffer;IILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "width",
            "height",
            "filePath"
        }
    .end annotation

    .line 1
    .line 2
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 9
    .line 10
    new-instance p3, Ljava/io/FileOutputStream;

    .line 11
    .line 12
    .line 13
    invoke-direct {p3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 14
    .line 15
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 16
    .line 17
    .line 18
    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 23
    .line 24
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 25
    .line 26
    const/16 p2, 0x32

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p0, p2, p3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 30
    .line 31
    .line 32
    invoke-virtual {p3}, Ljava/io/OutputStream;->flush()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception p0

    .line 38
    .line 39
    sget-object p1, Lio/agora/rtc/utils/YuvUtils;->TAG:Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 43
    move-result-object p0

    .line 44
    .line 45
    .line 46
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :goto_0
    return-void
.end method

.method public static yuv420toNV21(Landroid/media/Image;)[B
    .locals 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "image"
        }
    .end annotation

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getFormat()I

    move-result v1

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 4
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v4

    mul-int v5, v2, v3

    .line 6
    invoke-static {v1}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v1

    mul-int/2addr v1, v5

    div-int/lit8 v1, v1, 0x8

    new-array v1, v1, [B

    const/4 v6, 0x0

    .line 7
    aget-object v7, v4, v6

    invoke-virtual {v7}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v7

    new-array v7, v7, [B

    const/4 v8, 0x1

    move v9, v6

    move v10, v9

    move v11, v8

    .line 8
    :goto_0
    array-length v12, v4

    if-ge v9, v12, :cond_8

    if-eqz v9, :cond_2

    const/4 v12, 0x2

    if-eq v9, v8, :cond_1

    if-eq v9, v12, :cond_0

    goto :goto_2

    :cond_0
    move v10, v5

    :goto_1
    move v11, v12

    goto :goto_2

    :cond_1
    add-int/lit8 v10, v5, 0x1

    goto :goto_1

    :cond_2
    move v10, v6

    move v11, v8

    .line 9
    :goto_2
    aget-object v12, v4, v9

    invoke-virtual {v12}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 10
    aget-object v13, v4, v9

    invoke-virtual {v13}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v13

    .line 11
    aget-object v14, v4, v9

    invoke-virtual {v14}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v14

    if-nez v9, :cond_3

    move v15, v6

    goto :goto_3

    :cond_3
    move v15, v8

    :goto_3
    shr-int v6, v2, v15

    shr-int v8, v3, v15

    move/from16 v16, v2

    .line 12
    iget v2, v0, Landroid/graphics/Rect;->top:I

    shr-int/2addr v2, v15

    mul-int/2addr v2, v13

    move/from16 v17, v3

    iget v3, v0, Landroid/graphics/Rect;->left:I

    shr-int/2addr v3, v15

    mul-int/2addr v3, v14

    add-int/2addr v2, v3

    invoke-virtual {v12, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v8, :cond_7

    const/4 v3, 0x1

    if-ne v14, v3, :cond_4

    if-ne v11, v3, :cond_4

    .line 13
    invoke-virtual {v12, v1, v10, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v10, v6

    move v15, v6

    goto :goto_6

    :cond_4
    add-int/lit8 v15, v6, -0x1

    mul-int/2addr v15, v14

    add-int/2addr v15, v3

    const/4 v3, 0x0

    .line 14
    invoke-virtual {v12, v7, v3, v15}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    :goto_5
    if-ge v3, v6, :cond_5

    mul-int v18, v3, v14

    .line 15
    aget-byte v18, v7, v18

    aput-byte v18, v1, v10

    add-int/2addr v10, v11

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_5
    :goto_6
    add-int/lit8 v3, v8, -0x1

    if-ge v2, v3, :cond_6

    .line 16
    invoke-virtual {v12}, Ljava/nio/Buffer;->position()I

    move-result v3

    add-int/2addr v3, v13

    sub-int/2addr v3, v15

    invoke-virtual {v12, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    add-int/lit8 v9, v9, 0x1

    move/from16 v2, v16

    move/from16 v3, v17

    const/4 v6, 0x0

    const/4 v8, 0x1

    goto :goto_0

    :cond_8
    return-object v1
.end method

.method public static yuv420toNV21(Lio/agora/rtc/gl/VideoFrame$I420Buffer;II)[B
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "i420",
            "width",
            "height"
        }
    .end annotation

    move/from16 v0, p1

    move/from16 v1, p2

    .line 19
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v4, 0x3

    new-array v5, v4, [Lio/agora/rtc/utils/YuvUtils$Plane;

    .line 20
    new-instance v6, Lio/agora/rtc/utils/YuvUtils$Plane;

    invoke-interface/range {p0 .. p0}, Lio/agora/rtc/gl/VideoFrame$I420Buffer;->getDataY()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-interface/range {p0 .. p0}, Lio/agora/rtc/gl/VideoFrame$I420Buffer;->getStrideY()I

    move-result v8

    const/4 v9, 0x1

    invoke-direct {v6, v7, v8, v9}, Lio/agora/rtc/utils/YuvUtils$Plane;-><init>(Ljava/nio/ByteBuffer;II)V

    .line 21
    new-instance v7, Lio/agora/rtc/utils/YuvUtils$Plane;

    invoke-interface/range {p0 .. p0}, Lio/agora/rtc/gl/VideoFrame$I420Buffer;->getDataU()Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-interface/range {p0 .. p0}, Lio/agora/rtc/gl/VideoFrame$I420Buffer;->getStrideU()I

    move-result v10

    invoke-direct {v7, v8, v10, v9}, Lio/agora/rtc/utils/YuvUtils$Plane;-><init>(Ljava/nio/ByteBuffer;II)V

    .line 22
    new-instance v8, Lio/agora/rtc/utils/YuvUtils$Plane;

    invoke-interface/range {p0 .. p0}, Lio/agora/rtc/gl/VideoFrame$I420Buffer;->getDataV()Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-interface/range {p0 .. p0}, Lio/agora/rtc/gl/VideoFrame$I420Buffer;->getStrideV()I

    move-result v11

    invoke-direct {v8, v10, v11, v9}, Lio/agora/rtc/utils/YuvUtils$Plane;-><init>(Ljava/nio/ByteBuffer;II)V

    aput-object v6, v5, v3

    aput-object v7, v5, v9

    const/4 v6, 0x2

    aput-object v8, v5, v6

    mul-int v7, v0, v1

    const/16 v8, 0x23

    .line 23
    invoke-static {v8}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v8

    mul-int/2addr v8, v7

    div-int/lit8 v8, v8, 0x8

    new-array v8, v8, [B

    aget-object v10, v5, v3

    .line 24
    invoke-virtual {v10}, Lio/agora/rtc/utils/YuvUtils$Plane;->getRowStride()I

    move-result v10

    new-array v10, v10, [B

    move v11, v3

    move v12, v11

    move v13, v9

    :goto_0
    if-ge v11, v4, :cond_8

    if-eqz v11, :cond_2

    if-eq v11, v9, :cond_1

    if-eq v11, v6, :cond_0

    goto :goto_1

    :cond_0
    move v13, v6

    move v12, v7

    goto :goto_1

    :cond_1
    add-int/lit8 v12, v7, 0x1

    move v13, v6

    goto :goto_1

    :cond_2
    move v12, v3

    move v13, v9

    .line 25
    :goto_1
    aget-object v14, v5, v11

    invoke-virtual {v14}, Lio/agora/rtc/utils/YuvUtils$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 26
    aget-object v15, v5, v11

    invoke-virtual {v15}, Lio/agora/rtc/utils/YuvUtils$Plane;->getRowStride()I

    move-result v15

    .line 27
    aget-object v16, v5, v11

    invoke-virtual/range {v16 .. v16}, Lio/agora/rtc/utils/YuvUtils$Plane;->getPixelStride()I

    move-result v4

    if-nez v11, :cond_3

    move/from16 v16, v3

    goto :goto_2

    :cond_3
    move/from16 v16, v9

    :goto_2
    shr-int v6, v0, v16

    shr-int v3, v1, v16

    iget v9, v2, Landroid/graphics/Rect;->top:I

    shr-int v9, v9, v16

    mul-int/2addr v9, v15

    iget v0, v2, Landroid/graphics/Rect;->left:I

    shr-int v0, v0, v16

    mul-int/2addr v0, v4

    add-int/2addr v9, v0

    .line 28
    invoke-virtual {v14, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v3, :cond_7

    const/4 v9, 0x1

    if-ne v4, v9, :cond_4

    if-ne v13, v9, :cond_4

    .line 29
    invoke-virtual {v14, v8, v12, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v12, v6

    move v1, v6

    goto :goto_5

    :cond_4
    add-int/lit8 v16, v6, -0x1

    mul-int v16, v16, v4

    add-int/lit8 v1, v16, 0x1

    const/4 v9, 0x0

    .line 30
    invoke-virtual {v14, v10, v9, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    :goto_4
    if-ge v9, v6, :cond_5

    mul-int v16, v9, v4

    .line 31
    aget-byte v16, v10, v16

    aput-byte v16, v8, v12

    add-int/2addr v12, v13

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    add-int/lit8 v9, v3, -0x1

    if-ge v0, v9, :cond_6

    .line 32
    invoke-virtual {v14}, Ljava/nio/Buffer;->position()I

    move-result v9

    add-int/2addr v9, v15

    sub-int/2addr v9, v1

    invoke-virtual {v14, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_6
    add-int/lit8 v0, v0, 0x1

    move/from16 v1, p2

    goto :goto_3

    :cond_7
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p1

    move/from16 v1, p2

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v6, 0x2

    const/4 v9, 0x1

    goto :goto_0

    :cond_8
    return-object v8
.end method

.method public static yuv420toNV21([BII)[B
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "width",
            "height"
        }
    .end annotation

    .line 17
    invoke-static {p0, p1, p2}, Lio/agora/rtc/gl/JavaI420Buffer;->createYUV([BII)Lio/agora/rtc/gl/JavaI420Buffer;

    move-result-object p0

    .line 18
    invoke-static {p0, p1, p2}, Lio/agora/rtc/utils/YuvUtils;->yuv420toNV21(Lio/agora/rtc/gl/VideoFrame$I420Buffer;II)[B

    move-result-object p0

    return-object p0
.end method
