.class public Lcom/narvii/video/ui/camera/CameraUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MAX_ASPECT_DISTORTION:D = 0.15

.field private static final MIN_PREVIEW_PIXELS:I = 0x25800

.field private static final TAG:Ljava/lang/String; = "CameraUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static chooseFixedPreviewFps(Landroid/hardware/Camera$Parameters;I)I
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x1

    .line 14
    const/4 v3, 0x0

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    check-cast v1, [I

    .line 23
    .line 24
    aget v4, v1, v3

    .line 25
    .line 26
    aget v2, v1, v2

    .line 27
    .line 28
    if-ne v4, v2, :cond_0

    .line 29
    .line 30
    if-ne v4, p1, :cond_0

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v4, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 34
    .line 35
    aget p0, v1, v3

    .line 36
    return p0

    .line 37
    :cond_1
    const/4 v0, 0x2

    .line 38
    .line 39
    new-array v1, v0, [I

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->getPreviewFpsRange([I)V

    .line 43
    .line 44
    aget p0, v1, v3

    .line 45
    .line 46
    aget v1, v1, v2

    .line 47
    .line 48
    if-ne p0, v1, :cond_2

    .line 49
    goto :goto_0

    .line 50
    .line 51
    :cond_2
    div-int/lit8 p0, v1, 0x2

    .line 52
    .line 53
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    const-string v1, "Couldn\'t find match for "

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string p1, ", using "

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    const-string v0, "CameraUtils"

    .line 79
    .line 80
    .line 81
    invoke-static {v0, p1}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return p0
.end method

.method public static choosePreviewSize(Landroid/hardware/Camera$Parameters;II)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getPreferredPreviewSizeForVideo()Landroid/hardware/Camera$Size;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    const-string/jumbo v1, "x"

    .line 8
    .line 9
    const-string v2, "CameraUtils"

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    const-string v4, "Camera preferred preview size for video is "

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    iget v4, v0, Landroid/hardware/Camera$Size;->height:I

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v3

    .line 39
    .line 40
    .line 41
    invoke-static {v2, v3}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    .line 45
    move-result-object v3

    .line 46
    .line 47
    .line 48
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 49
    move-result-object v3

    .line 50
    .line 51
    .line 52
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    move-result v4

    .line 54
    .line 55
    if-eqz v4, :cond_2

    .line 56
    .line 57
    .line 58
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    move-result-object v4

    .line 60
    .line 61
    check-cast v4, Landroid/hardware/Camera$Size;

    .line 62
    .line 63
    iget v5, v4, Landroid/hardware/Camera$Size;->width:I

    .line 64
    .line 65
    if-ne v5, p1, :cond_1

    .line 66
    .line 67
    iget v4, v4, Landroid/hardware/Camera$Size;->height:I

    .line 68
    .line 69
    if-ne v4, p2, :cond_1

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, p1, p2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 73
    return-void

    .line 74
    .line 75
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    const-string v4, "Unable to set preview size to "

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object p1

    .line 97
    .line 98
    .line 99
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    if-eqz v0, :cond_3

    .line 102
    .line 103
    iget p1, v0, Landroid/hardware/Camera$Size;->width:I

    .line 104
    .line 105
    iget p2, v0, Landroid/hardware/Camera$Size;->height:I

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, p1, p2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 109
    :cond_3
    return-void
.end method

.method public static findBestPreviewResolution(Landroid/hardware/Camera$Parameters;Landroid/graphics/Point;II)Landroid/graphics/Point;
    .locals 16

    .line 1
    .line 2
    move-object/from16 v0, p1

    .line 3
    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    const-string v3, "camera default resolution "

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string/jumbo v3, "x"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    iget v3, v1, Landroid/hardware/Camera$Size;->height:I

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    const-string v3, "CameraUtils"

    .line 39
    .line 40
    .line 41
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    .line 45
    move-result-object v2

    .line 46
    .line 47
    if-nez v2, :cond_0

    .line 48
    .line 49
    const-string v0, "Device returned no supported preview sizes; using default"

    .line 50
    .line 51
    .line 52
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    new-instance v0, Landroid/graphics/Point;

    .line 55
    .line 56
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    .line 57
    .line 58
    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    .line 59
    .line 60
    .line 61
    invoke-direct {v0, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 62
    return-object v0

    .line 63
    .line 64
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    .line 65
    .line 66
    .line 67
    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 68
    .line 69
    new-instance v2, Lcom/narvii/video/ui/camera/CameraUtils$1;

    .line 70
    .line 71
    .line 72
    invoke-direct {v2}, Lcom/narvii/video/ui/camera/CameraUtils$1;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-static {v4, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 76
    .line 77
    .line 78
    invoke-static {v4}, Lcom/narvii/video/ui/camera/CameraUtils;->printlnSupportedPreviewSize(Ljava/util/List;)V

    .line 79
    .line 80
    move/from16 v2, p2

    .line 81
    .line 82
    rem-int/lit16 v2, v2, 0xb4

    .line 83
    .line 84
    move/from16 v5, p3

    .line 85
    .line 86
    rem-int/lit16 v5, v5, 0xb4

    .line 87
    const/4 v6, 0x0

    .line 88
    .line 89
    if-eq v2, v5, :cond_1

    .line 90
    const/4 v2, 0x1

    .line 91
    goto :goto_0

    .line 92
    :cond_1
    move v2, v6

    .line 93
    .line 94
    :goto_0
    iget v5, v0, Landroid/graphics/Point;->x:I

    .line 95
    int-to-double v7, v5

    .line 96
    .line 97
    iget v5, v0, Landroid/graphics/Point;->y:I

    .line 98
    int-to-double v9, v5

    .line 99
    div-double/2addr v7, v9

    .line 100
    .line 101
    .line 102
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 103
    move-result-object v5

    .line 104
    .line 105
    .line 106
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 107
    move-result v9

    .line 108
    .line 109
    if-eqz v9, :cond_7

    .line 110
    .line 111
    .line 112
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 113
    move-result-object v9

    .line 114
    .line 115
    check-cast v9, Landroid/hardware/Camera$Size;

    .line 116
    .line 117
    iget v10, v9, Landroid/hardware/Camera$Size;->width:I

    .line 118
    .line 119
    iget v9, v9, Landroid/hardware/Camera$Size;->height:I

    .line 120
    .line 121
    mul-int v11, v10, v9

    .line 122
    .line 123
    .line 124
    const v12, 0x25800

    .line 125
    .line 126
    if-ge v11, v12, :cond_2

    .line 127
    .line 128
    .line 129
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 130
    goto :goto_1

    .line 131
    .line 132
    :cond_2
    if-eqz v2, :cond_3

    .line 133
    move v11, v9

    .line 134
    goto :goto_2

    .line 135
    :cond_3
    move v11, v10

    .line 136
    .line 137
    :goto_2
    if-eqz v2, :cond_4

    .line 138
    move v12, v10

    .line 139
    goto :goto_3

    .line 140
    :cond_4
    move v12, v9

    .line 141
    :goto_3
    int-to-double v13, v11

    .line 142
    move-object v15, v1

    .line 143
    .line 144
    move/from16 p0, v2

    .line 145
    int-to-double v1, v12

    .line 146
    div-double/2addr v13, v1

    .line 147
    sub-double/2addr v13, v7

    .line 148
    .line 149
    .line 150
    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    .line 151
    move-result-wide v1

    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    const-wide v13, 0x3fc3333333333333L    # 0.15

    .line 157
    .line 158
    cmpl-double v1, v1, v13

    .line 159
    .line 160
    if-lez v1, :cond_6

    .line 161
    .line 162
    .line 163
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 164
    .line 165
    :cond_5
    move/from16 v2, p0

    .line 166
    move-object v1, v15

    .line 167
    goto :goto_1

    .line 168
    .line 169
    :cond_6
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 170
    .line 171
    if-ne v11, v1, :cond_5

    .line 172
    .line 173
    iget v1, v0, Landroid/graphics/Point;->y:I

    .line 174
    .line 175
    if-ne v12, v1, :cond_5

    .line 176
    .line 177
    new-instance v0, Landroid/graphics/Point;

    .line 178
    .line 179
    .line 180
    invoke-direct {v0, v10, v9}, Landroid/graphics/Point;-><init>(II)V

    .line 181
    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .line 187
    const-string v2, "found preview resolution exactly matching screen resolutions: "

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    move-result-object v1

    .line 198
    .line 199
    .line 200
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return-object v0

    .line 202
    :cond_7
    move-object v15, v1

    .line 203
    .line 204
    .line 205
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 206
    move-result v0

    .line 207
    .line 208
    if-nez v0, :cond_8

    .line 209
    .line 210
    .line 211
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 212
    move-result-object v0

    .line 213
    .line 214
    check-cast v0, Landroid/hardware/Camera$Size;

    .line 215
    .line 216
    new-instance v1, Landroid/graphics/Point;

    .line 217
    .line 218
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    .line 219
    .line 220
    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    .line 221
    .line 222
    .line 223
    invoke-direct {v1, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    .line 224
    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    .line 230
    .line 231
    const-string/jumbo v2, "using largest suitable preview resolution: "

    .line 232
    .line 233
    .line 234
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    move-result-object v0

    .line 242
    .line 243
    .line 244
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    return-object v1

    .line 246
    .line 247
    :cond_8
    new-instance v0, Landroid/graphics/Point;

    .line 248
    move-object v1, v15

    .line 249
    .line 250
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    .line 251
    .line 252
    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    .line 253
    .line 254
    .line 255
    invoke-direct {v0, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 256
    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    .line 262
    const-string v2, "No suitable preview resolutions, using default: "

    .line 263
    .line 264
    .line 265
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    move-result-object v1

    .line 273
    .line 274
    .line 275
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    return-object v0
.end method

.method public static findSuitablePreviewSize(Landroid/hardware/Camera$Parameters;II)Landroid/graphics/Point;
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    .line 7
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    const v1, 0x7fffffff

    .line 12
    const/4 v2, 0x0

    .line 13
    .line 14
    .line 15
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v3

    .line 17
    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v3

    .line 23
    .line 24
    check-cast v3, Landroid/hardware/Camera$Size;

    .line 25
    .line 26
    iget v4, v3, Landroid/hardware/Camera$Size;->width:I

    .line 27
    sub-int/2addr v4, p1

    .line 28
    .line 29
    .line 30
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 31
    move-result v4

    .line 32
    .line 33
    iget v5, v3, Landroid/hardware/Camera$Size;->height:I

    .line 34
    sub-int/2addr v5, p2

    .line 35
    .line 36
    .line 37
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    .line 38
    move-result v5

    .line 39
    add-int/2addr v4, v5

    .line 40
    .line 41
    if-ge v4, v1, :cond_0

    .line 42
    .line 43
    new-instance v1, Landroid/graphics/Point;

    .line 44
    .line 45
    iget v2, v3, Landroid/hardware/Camera$Size;->width:I

    .line 46
    .line 47
    iget v3, v3, Landroid/hardware/Camera$Size;->height:I

    .line 48
    .line 49
    .line 50
    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 51
    move-object v2, v1

    .line 52
    move v1, v4

    .line 53
    goto :goto_0

    .line 54
    .line 55
    :cond_1
    if-nez v2, :cond_2

    .line 56
    .line 57
    .line 58
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 59
    move-result p1

    .line 60
    .line 61
    if-lez p1, :cond_2

    .line 62
    .line 63
    new-instance v2, Landroid/graphics/Point;

    .line 64
    const/4 p1, 0x0

    .line 65
    .line 66
    .line 67
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 68
    move-result-object p2

    .line 69
    .line 70
    check-cast p2, Landroid/hardware/Camera$Size;

    .line 71
    .line 72
    iget p2, p2, Landroid/hardware/Camera$Size;->width:I

    .line 73
    .line 74
    .line 75
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 76
    move-result-object p0

    .line 77
    .line 78
    check-cast p0, Landroid/hardware/Camera$Size;

    .line 79
    .line 80
    iget p0, p0, Landroid/hardware/Camera$Size;->height:I

    .line 81
    .line 82
    .line 83
    invoke-direct {v2, p2, p0}, Landroid/graphics/Point;-><init>(II)V

    .line 84
    :cond_2
    return-object v2
.end method

.method public static getCameraInstance()Landroid/hardware/Camera;
    .locals 1

    .line 1
    invoke-static {}, Lcom/narvii/video/ui/camera/CameraUtils;->getDefaultCameraId()I

    move-result v0

    invoke-static {v0}, Lcom/narvii/video/ui/camera/CameraUtils;->getCameraInstance(I)Landroid/hardware/Camera;

    move-result-object v0

    return-object v0
.end method

.method public static getCameraInstance(I)Landroid/hardware/Camera;
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    .line 2
    :try_start_0
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getDefaultCameraId()I
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    .line 4
    move-result v0

    .line 5
    .line 6
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 10
    const/4 v2, -0x1

    .line 11
    const/4 v3, 0x0

    .line 12
    :goto_0
    move v4, v3

    .line 13
    move v3, v2

    .line 14
    move v2, v4

    .line 15
    .line 16
    if-ge v2, v0, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-static {v2, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 20
    .line 21
    iget v3, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    .line 22
    .line 23
    if-nez v3, :cond_0

    .line 24
    return v2

    .line 25
    .line 26
    :cond_0
    add-int/lit8 v3, v2, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return v3
.end method

.method public static isFlashSupported(Landroid/hardware/Camera;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_2

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    .line 7
    move-result-object p0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    return v0

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    .line 18
    move-result-object p0

    .line 19
    .line 20
    if-eqz p0, :cond_2

    .line 21
    .line 22
    .line 23
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 24
    move-result v1

    .line 25
    .line 26
    if-nez v1, :cond_2

    .line 27
    .line 28
    .line 29
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 30
    move-result v1

    .line 31
    const/4 v2, 0x1

    .line 32
    .line 33
    if-ne v1, v2, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    move-result-object p0

    .line 38
    .line 39
    check-cast p0, Ljava/lang/String;

    .line 40
    .line 41
    const-string v1, "off"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result p0

    .line 46
    .line 47
    if-eqz p0, :cond_1

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    return v2

    .line 50
    :cond_2
    :goto_0
    return v0
.end method

.method private static printlnSupportedPreviewSize(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "--------------------Support Preview Size--------------------"

    .line 3
    .line 4
    const-string v1, "CameraUtils"

    .line 5
    .line 6
    .line 7
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    const/4 v0, 0x0

    .line 9
    move v2, v0

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 13
    move-result v3

    .line 14
    .line 15
    if-ge v2, v3, :cond_0

    .line 16
    const/4 v3, 0x2

    .line 17
    .line 18
    new-array v3, v3, [Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object v4

    .line 23
    .line 24
    check-cast v4, Landroid/hardware/Camera$Size;

    .line 25
    .line 26
    iget v4, v4, Landroid/hardware/Camera$Size;->width:I

    .line 27
    .line 28
    .line 29
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object v4

    .line 31
    .line 32
    aput-object v4, v3, v0

    .line 33
    .line 34
    .line 35
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    move-result-object v4

    .line 37
    .line 38
    check-cast v4, Landroid/hardware/Camera$Size;

    .line 39
    .line 40
    iget v4, v4, Landroid/hardware/Camera$Size;->height:I

    .line 41
    .line 42
    .line 43
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    move-result-object v4

    .line 45
    const/4 v5, 0x1

    .line 46
    .line 47
    aput-object v4, v3, v5

    .line 48
    .line 49
    const-string v4, "(%s,%s)"

    .line 50
    .line 51
    .line 52
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    move-result-object v3

    .line 54
    .line 55
    .line 56
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    add-int/lit8 v2, v2, 0x1

    .line 59
    goto :goto_0

    .line 60
    .line 61
    :cond_0
    const-string p0, "------------------------------------------------------------"

    .line 62
    .line 63
    .line 64
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void
.end method

.method public static setCameraDisplayOrientation(Landroid/content/Context;ILandroid/hardware/Camera;)I
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {p1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 9
    .line 10
    .line 11
    const-string/jumbo p1, "window"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    move-result-object p0

    .line 16
    .line 17
    check-cast p0, Landroid/view/WindowManager;

    .line 18
    .line 19
    .line 20
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 21
    move-result-object p0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    .line 25
    move-result p0

    .line 26
    const/4 p1, 0x1

    .line 27
    const/4 v1, 0x0

    .line 28
    .line 29
    if-eqz p0, :cond_3

    .line 30
    .line 31
    if-eq p0, p1, :cond_2

    .line 32
    const/4 v2, 0x2

    .line 33
    .line 34
    if-eq p0, v2, :cond_1

    .line 35
    const/4 v2, 0x3

    .line 36
    .line 37
    if-eq p0, v2, :cond_0

    .line 38
    goto :goto_0

    .line 39
    .line 40
    :cond_0
    const/16 v1, 0x10e

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :cond_1
    const/16 v1, 0xb4

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_2
    const/16 v1, 0x5a

    .line 47
    .line 48
    :cond_3
    :goto_0
    iget p0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    .line 49
    .line 50
    if-ne p0, p1, :cond_4

    .line 51
    .line 52
    iget p0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    .line 53
    add-int/2addr p0, v1

    .line 54
    .line 55
    rem-int/lit16 p0, p0, 0x168

    .line 56
    .line 57
    rsub-int p0, p0, 0x168

    .line 58
    .line 59
    rem-int/lit16 p0, p0, 0x168

    .line 60
    goto :goto_1

    .line 61
    .line 62
    :cond_4
    iget p0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    .line 63
    sub-int/2addr p0, v1

    .line 64
    .line 65
    add-int/lit16 p0, p0, 0x168

    .line 66
    .line 67
    rem-int/lit16 p0, p0, 0x168

    .line 68
    .line 69
    .line 70
    :goto_1
    invoke-virtual {p2, p0}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 71
    .line 72
    iget p0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    .line 73
    return p0
.end method
