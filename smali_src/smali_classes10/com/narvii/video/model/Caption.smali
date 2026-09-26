.class public Lcom/narvii/video/model/Caption;
.super Lcom/narvii/video/model/BaseAttachmentInfoPack;
.source "SourceFile"


# instance fields
.field public fontObjectId:Ljava/lang/String;

.field public fontPath:Ljava/lang/String;

.field public fontSize:F

.field public hasShadow:Z

.field public hasStroke:Z

.field public isBold:Z

.field public shadowColor:I

.field public shadowOffset:Landroid/graphics/PointF;

.field public strokeColor:I

.field public strokeWidth:F

.field public styleId:Ljava/lang/String;

.field public styleObjectId:Ljava/lang/String;

.field public text:Ljava/lang/String;

.field public textColor:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/video/model/BaseAttachmentInfoPack;-><init>()V

    .line 4
    .line 5
    const/high16 v0, -0x1000000

    .line 6
    .line 7
    iput v0, p0, Lcom/narvii/video/model/Caption;->strokeColor:I

    .line 8
    .line 9
    const/high16 v0, 0x66000000

    .line 10
    .line 11
    iput v0, p0, Lcom/narvii/video/model/Caption;->shadowColor:I

    .line 12
    const/4 v0, -0x1

    .line 13
    .line 14
    iput v0, p0, Lcom/narvii/video/model/Caption;->textColor:I

    .line 15
    const/4 v0, 0x1

    .line 16
    .line 17
    iput-boolean v0, p0, Lcom/narvii/video/model/Caption;->isBold:Z

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    const/high16 v1, 0x40800000    # 4.0f

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 27
    move-result v1

    .line 28
    .line 29
    iput v1, p0, Lcom/narvii/video/model/Caption;->strokeWidth:F

    .line 30
    .line 31
    const/high16 v1, 0x41900000    # 18.0f

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 35
    move-result v1

    .line 36
    .line 37
    iput v1, p0, Lcom/narvii/video/model/Caption;->fontSize:F

    .line 38
    .line 39
    new-instance v1, Landroid/graphics/PointF;

    .line 40
    .line 41
    const/high16 v2, 0x40000000    # 2.0f

    .line 42
    .line 43
    .line 44
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 45
    move-result v0

    .line 46
    neg-float v0, v0

    .line 47
    const/4 v2, 0x0

    .line 48
    .line 49
    .line 50
    invoke-direct {v1, v2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 51
    .line 52
    iput-object v1, p0, Lcom/narvii/video/model/Caption;->shadowOffset:Landroid/graphics/PointF;

    .line 53
    return-void
.end method


# virtual methods
.method public clone()Lcom/narvii/video/model/Caption;
    .locals 2

    .line 2
    invoke-static {p0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/video/model/Caption;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/model/Caption;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/narvii/video/model/Caption;->clone()Lcom/narvii/video/model/Caption;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lcom/narvii/video/interfaces/ITimelineClip;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/narvii/video/model/Caption;->copy()Lcom/narvii/video/model/Caption;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lcom/narvii/video/model/BaseAttachmentInfoPack;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/video/model/Caption;->copy()Lcom/narvii/video/model/Caption;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcom/narvii/video/model/Caption;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/narvii/video/model/Caption;->clone()Lcom/narvii/video/model/Caption;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz p1, :cond_1e

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    move-result-object v3

    .line 16
    .line 17
    if-eq v2, v3, :cond_1

    .line 18
    .line 19
    goto/16 :goto_8

    .line 20
    .line 21
    :cond_1
    check-cast p1, Lcom/narvii/video/model/Caption;

    .line 22
    .line 23
    iget v2, p0, Lcom/narvii/video/model/Caption;->textColor:I

    .line 24
    .line 25
    iget v3, p1, Lcom/narvii/video/model/Caption;->textColor:I

    .line 26
    .line 27
    if-eq v2, v3, :cond_2

    .line 28
    return v1

    .line 29
    .line 30
    :cond_2
    iget-boolean v2, p0, Lcom/narvii/video/model/Caption;->hasStroke:Z

    .line 31
    .line 32
    iget-boolean v3, p1, Lcom/narvii/video/model/Caption;->hasStroke:Z

    .line 33
    .line 34
    if-eq v2, v3, :cond_3

    .line 35
    return v1

    .line 36
    .line 37
    :cond_3
    iget v2, p0, Lcom/narvii/video/model/Caption;->strokeColor:I

    .line 38
    .line 39
    iget v3, p1, Lcom/narvii/video/model/Caption;->strokeColor:I

    .line 40
    .line 41
    if-eq v2, v3, :cond_4

    .line 42
    return v1

    .line 43
    .line 44
    :cond_4
    iget-boolean v2, p0, Lcom/narvii/video/model/Caption;->hasShadow:Z

    .line 45
    .line 46
    iget-boolean v3, p1, Lcom/narvii/video/model/Caption;->hasShadow:Z

    .line 47
    .line 48
    if-eq v2, v3, :cond_5

    .line 49
    return v1

    .line 50
    .line 51
    :cond_5
    iget v2, p0, Lcom/narvii/video/model/Caption;->shadowColor:I

    .line 52
    .line 53
    iget v3, p1, Lcom/narvii/video/model/Caption;->shadowColor:I

    .line 54
    .line 55
    if-eq v2, v3, :cond_6

    .line 56
    return v1

    .line 57
    .line 58
    :cond_6
    iget v2, p1, Lcom/narvii/video/model/Caption;->fontSize:F

    .line 59
    .line 60
    iget v3, p0, Lcom/narvii/video/model/Caption;->fontSize:F

    .line 61
    .line 62
    .line 63
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    .line 64
    move-result v2

    .line 65
    .line 66
    if-eqz v2, :cond_7

    .line 67
    return v1

    .line 68
    .line 69
    :cond_7
    iget v2, p1, Lcom/narvii/video/model/Caption;->strokeWidth:F

    .line 70
    .line 71
    iget v3, p0, Lcom/narvii/video/model/Caption;->strokeWidth:F

    .line 72
    .line 73
    .line 74
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    .line 75
    move-result v2

    .line 76
    .line 77
    if-eqz v2, :cond_8

    .line 78
    return v1

    .line 79
    .line 80
    :cond_8
    iget v2, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleX:F

    .line 81
    .line 82
    iget v3, p0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleX:F

    .line 83
    .line 84
    .line 85
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    .line 86
    move-result v2

    .line 87
    .line 88
    if-eqz v2, :cond_9

    .line 89
    return v1

    .line 90
    .line 91
    :cond_9
    iget v2, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleY:F

    .line 92
    .line 93
    iget v3, p0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleY:F

    .line 94
    .line 95
    .line 96
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    .line 97
    move-result v2

    .line 98
    .line 99
    if-eqz v2, :cond_a

    .line 100
    return v1

    .line 101
    .line 102
    :cond_a
    iget v2, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->rotation:F

    .line 103
    .line 104
    iget v3, p0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->rotation:F

    .line 105
    .line 106
    .line 107
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    .line 108
    move-result v2

    .line 109
    .line 110
    if-eqz v2, :cond_b

    .line 111
    return v1

    .line 112
    .line 113
    :cond_b
    iget v2, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->zValue:F

    .line 114
    .line 115
    iget v3, p0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->zValue:F

    .line 116
    .line 117
    .line 118
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    .line 119
    move-result v2

    .line 120
    .line 121
    if-eqz v2, :cond_c

    .line 122
    return v1

    .line 123
    .line 124
    :cond_c
    iget-boolean v2, p0, Lcom/narvii/video/model/Caption;->isBold:Z

    .line 125
    .line 126
    iget-boolean v3, p1, Lcom/narvii/video/model/Caption;->isBold:Z

    .line 127
    .line 128
    if-eq v2, v3, :cond_d

    .line 129
    return v1

    .line 130
    .line 131
    :cond_d
    iget-object v2, p0, Lcom/narvii/video/model/Caption;->text:Ljava/lang/String;

    .line 132
    .line 133
    if-eqz v2, :cond_e

    .line 134
    .line 135
    iget-object v3, p1, Lcom/narvii/video/model/Caption;->text:Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    move-result v2

    .line 140
    .line 141
    if-nez v2, :cond_f

    .line 142
    goto :goto_0

    .line 143
    .line 144
    :cond_e
    iget-object v2, p1, Lcom/narvii/video/model/Caption;->text:Ljava/lang/String;

    .line 145
    .line 146
    if-eqz v2, :cond_f

    .line 147
    :goto_0
    return v1

    .line 148
    .line 149
    :cond_f
    iget-object v2, p0, Lcom/narvii/video/model/Caption;->shadowOffset:Landroid/graphics/PointF;

    .line 150
    .line 151
    if-eqz v2, :cond_10

    .line 152
    .line 153
    iget-object v3, p1, Lcom/narvii/video/model/Caption;->shadowOffset:Landroid/graphics/PointF;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2, v3}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    .line 157
    move-result v2

    .line 158
    .line 159
    if-nez v2, :cond_11

    .line 160
    goto :goto_1

    .line 161
    .line 162
    :cond_10
    iget-object v2, p1, Lcom/narvii/video/model/Caption;->shadowOffset:Landroid/graphics/PointF;

    .line 163
    .line 164
    if-eqz v2, :cond_11

    .line 165
    :goto_1
    return v1

    .line 166
    .line 167
    :cond_11
    iget-object v2, p0, Lcom/narvii/video/model/Caption;->styleId:Ljava/lang/String;

    .line 168
    .line 169
    if-eqz v2, :cond_12

    .line 170
    .line 171
    iget-object v3, p1, Lcom/narvii/video/model/Caption;->styleId:Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 175
    move-result v2

    .line 176
    .line 177
    if-nez v2, :cond_13

    .line 178
    goto :goto_2

    .line 179
    .line 180
    :cond_12
    iget-object v2, p1, Lcom/narvii/video/model/Caption;->styleId:Ljava/lang/String;

    .line 181
    .line 182
    if-eqz v2, :cond_13

    .line 183
    :goto_2
    return v1

    .line 184
    .line 185
    :cond_13
    iget-object v2, p0, Lcom/narvii/video/model/Caption;->styleObjectId:Ljava/lang/String;

    .line 186
    .line 187
    if-eqz v2, :cond_14

    .line 188
    .line 189
    iget-object v3, p1, Lcom/narvii/video/model/Caption;->styleObjectId:Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 193
    move-result v2

    .line 194
    .line 195
    if-nez v2, :cond_15

    .line 196
    goto :goto_3

    .line 197
    .line 198
    :cond_14
    iget-object v2, p1, Lcom/narvii/video/model/Caption;->styleObjectId:Ljava/lang/String;

    .line 199
    .line 200
    if-eqz v2, :cond_15

    .line 201
    :goto_3
    return v1

    .line 202
    .line 203
    :cond_15
    iget-object v2, p0, Lcom/narvii/video/model/Caption;->fontPath:Ljava/lang/String;

    .line 204
    .line 205
    if-eqz v2, :cond_16

    .line 206
    .line 207
    iget-object v3, p1, Lcom/narvii/video/model/Caption;->fontPath:Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 211
    move-result v2

    .line 212
    .line 213
    if-nez v2, :cond_17

    .line 214
    goto :goto_4

    .line 215
    .line 216
    :cond_16
    iget-object v2, p1, Lcom/narvii/video/model/Caption;->fontPath:Ljava/lang/String;

    .line 217
    .line 218
    if-eqz v2, :cond_17

    .line 219
    :goto_4
    return v1

    .line 220
    .line 221
    :cond_17
    iget-object v2, p0, Lcom/narvii/video/model/Caption;->fontObjectId:Ljava/lang/String;

    .line 222
    .line 223
    if-eqz v2, :cond_18

    .line 224
    .line 225
    iget-object v3, p1, Lcom/narvii/video/model/Caption;->fontObjectId:Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 229
    move-result v2

    .line 230
    .line 231
    if-nez v2, :cond_19

    .line 232
    goto :goto_5

    .line 233
    .line 234
    :cond_18
    iget-object v2, p1, Lcom/narvii/video/model/Caption;->fontObjectId:Ljava/lang/String;

    .line 235
    .line 236
    if-eqz v2, :cond_19

    .line 237
    :goto_5
    return v1

    .line 238
    .line 239
    :cond_19
    iget-object v2, p0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->anchor:Landroid/graphics/PointF;

    .line 240
    .line 241
    if-eqz v2, :cond_1a

    .line 242
    .line 243
    iget-object v3, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->anchor:Landroid/graphics/PointF;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v2, v3}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    .line 247
    move-result v2

    .line 248
    .line 249
    if-nez v2, :cond_1b

    .line 250
    goto :goto_6

    .line 251
    .line 252
    :cond_1a
    iget-object v2, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->anchor:Landroid/graphics/PointF;

    .line 253
    .line 254
    if-eqz v2, :cond_1b

    .line 255
    :goto_6
    return v1

    .line 256
    .line 257
    :cond_1b
    iget-object v2, p0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->translation:Landroid/graphics/PointF;

    .line 258
    .line 259
    iget-object p1, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->translation:Landroid/graphics/PointF;

    .line 260
    .line 261
    if-eqz v2, :cond_1c

    .line 262
    .line 263
    .line 264
    invoke-virtual {v2, p1}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    .line 265
    move-result v0

    .line 266
    goto :goto_7

    .line 267
    .line 268
    :cond_1c
    if-nez p1, :cond_1d

    .line 269
    goto :goto_7

    .line 270
    :cond_1d
    move v0, v1

    .line 271
    :goto_7
    return v0

    .line 272
    :cond_1e
    :goto_8
    return v1
.end method

.method public getTrackContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/video/model/Caption;->text:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/model/Caption;->text:Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 9
    move-result v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    .line 13
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 14
    .line 15
    iget v2, p0, Lcom/narvii/video/model/Caption;->textColor:I

    .line 16
    add-int/2addr v0, v2

    .line 17
    .line 18
    mul-int/lit8 v0, v0, 0x1f

    .line 19
    .line 20
    iget-boolean v2, p0, Lcom/narvii/video/model/Caption;->hasStroke:Z

    .line 21
    add-int/2addr v0, v2

    .line 22
    .line 23
    mul-int/lit8 v0, v0, 0x1f

    .line 24
    .line 25
    iget v2, p0, Lcom/narvii/video/model/Caption;->strokeColor:I

    .line 26
    add-int/2addr v0, v2

    .line 27
    .line 28
    mul-int/lit8 v0, v0, 0x1f

    .line 29
    .line 30
    iget-boolean v2, p0, Lcom/narvii/video/model/Caption;->hasShadow:Z

    .line 31
    add-int/2addr v0, v2

    .line 32
    .line 33
    mul-int/lit8 v0, v0, 0x1f

    .line 34
    .line 35
    iget v2, p0, Lcom/narvii/video/model/Caption;->shadowColor:I

    .line 36
    add-int/2addr v0, v2

    .line 37
    .line 38
    mul-int/lit8 v0, v0, 0x1f

    .line 39
    .line 40
    iget-object v2, p0, Lcom/narvii/video/model/Caption;->shadowOffset:Landroid/graphics/PointF;

    .line 41
    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Landroid/graphics/PointF;->hashCode()I

    .line 46
    move-result v2

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    move v2, v1

    .line 49
    :goto_1
    add-int/2addr v0, v2

    .line 50
    .line 51
    mul-int/lit8 v0, v0, 0x1f

    .line 52
    .line 53
    iget-object v2, p0, Lcom/narvii/video/model/Caption;->styleId:Ljava/lang/String;

    .line 54
    .line 55
    if-eqz v2, :cond_2

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 59
    move-result v2

    .line 60
    goto :goto_2

    .line 61
    :cond_2
    move v2, v1

    .line 62
    :goto_2
    add-int/2addr v0, v2

    .line 63
    .line 64
    mul-int/lit8 v0, v0, 0x1f

    .line 65
    .line 66
    iget-object v2, p0, Lcom/narvii/video/model/Caption;->styleObjectId:Ljava/lang/String;

    .line 67
    .line 68
    if-eqz v2, :cond_3

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 72
    move-result v2

    .line 73
    goto :goto_3

    .line 74
    :cond_3
    move v2, v1

    .line 75
    :goto_3
    add-int/2addr v0, v2

    .line 76
    .line 77
    mul-int/lit8 v0, v0, 0x1f

    .line 78
    .line 79
    iget-object v2, p0, Lcom/narvii/video/model/Caption;->fontPath:Ljava/lang/String;

    .line 80
    .line 81
    if-eqz v2, :cond_4

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 85
    move-result v2

    .line 86
    goto :goto_4

    .line 87
    :cond_4
    move v2, v1

    .line 88
    :goto_4
    add-int/2addr v0, v2

    .line 89
    .line 90
    mul-int/lit8 v0, v0, 0x1f

    .line 91
    .line 92
    iget-object v2, p0, Lcom/narvii/video/model/Caption;->fontObjectId:Ljava/lang/String;

    .line 93
    .line 94
    if-eqz v2, :cond_5

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 98
    move-result v2

    .line 99
    goto :goto_5

    .line 100
    :cond_5
    move v2, v1

    .line 101
    :goto_5
    add-int/2addr v0, v2

    .line 102
    .line 103
    mul-int/lit8 v0, v0, 0x1f

    .line 104
    .line 105
    iget v2, p0, Lcom/narvii/video/model/Caption;->fontSize:F

    .line 106
    const/4 v3, 0x0

    .line 107
    .line 108
    cmpl-float v4, v2, v3

    .line 109
    .line 110
    if-eqz v4, :cond_6

    .line 111
    .line 112
    .line 113
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 114
    move-result v2

    .line 115
    goto :goto_6

    .line 116
    :cond_6
    move v2, v1

    .line 117
    :goto_6
    add-int/2addr v0, v2

    .line 118
    .line 119
    mul-int/lit8 v0, v0, 0x1f

    .line 120
    .line 121
    iget v2, p0, Lcom/narvii/video/model/Caption;->strokeWidth:F

    .line 122
    .line 123
    cmpl-float v4, v2, v3

    .line 124
    .line 125
    if-eqz v4, :cond_7

    .line 126
    .line 127
    .line 128
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 129
    move-result v2

    .line 130
    goto :goto_7

    .line 131
    :cond_7
    move v2, v1

    .line 132
    :goto_7
    add-int/2addr v0, v2

    .line 133
    .line 134
    mul-int/lit8 v0, v0, 0x1f

    .line 135
    .line 136
    iget v2, p0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleX:F

    .line 137
    .line 138
    cmpl-float v4, v2, v3

    .line 139
    .line 140
    if-eqz v4, :cond_8

    .line 141
    .line 142
    .line 143
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 144
    move-result v2

    .line 145
    goto :goto_8

    .line 146
    :cond_8
    move v2, v1

    .line 147
    :goto_8
    add-int/2addr v0, v2

    .line 148
    .line 149
    mul-int/lit8 v0, v0, 0x1f

    .line 150
    .line 151
    iget v2, p0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleY:F

    .line 152
    .line 153
    cmpl-float v4, v2, v3

    .line 154
    .line 155
    if-eqz v4, :cond_9

    .line 156
    .line 157
    .line 158
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 159
    move-result v2

    .line 160
    goto :goto_9

    .line 161
    :cond_9
    move v2, v1

    .line 162
    :goto_9
    add-int/2addr v0, v2

    .line 163
    .line 164
    mul-int/lit8 v0, v0, 0x1f

    .line 165
    .line 166
    iget-object v2, p0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->anchor:Landroid/graphics/PointF;

    .line 167
    .line 168
    if-eqz v2, :cond_a

    .line 169
    .line 170
    .line 171
    invoke-virtual {v2}, Landroid/graphics/PointF;->hashCode()I

    .line 172
    move-result v2

    .line 173
    goto :goto_a

    .line 174
    :cond_a
    move v2, v1

    .line 175
    :goto_a
    add-int/2addr v0, v2

    .line 176
    .line 177
    mul-int/lit8 v0, v0, 0x1f

    .line 178
    .line 179
    iget-object v2, p0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->translation:Landroid/graphics/PointF;

    .line 180
    .line 181
    if-eqz v2, :cond_b

    .line 182
    .line 183
    .line 184
    invoke-virtual {v2}, Landroid/graphics/PointF;->hashCode()I

    .line 185
    move-result v2

    .line 186
    goto :goto_b

    .line 187
    :cond_b
    move v2, v1

    .line 188
    :goto_b
    add-int/2addr v0, v2

    .line 189
    .line 190
    mul-int/lit8 v0, v0, 0x1f

    .line 191
    .line 192
    iget v2, p0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->rotation:F

    .line 193
    .line 194
    cmpl-float v4, v2, v3

    .line 195
    .line 196
    if-eqz v4, :cond_c

    .line 197
    .line 198
    .line 199
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 200
    move-result v2

    .line 201
    goto :goto_c

    .line 202
    :cond_c
    move v2, v1

    .line 203
    :goto_c
    add-int/2addr v0, v2

    .line 204
    .line 205
    mul-int/lit8 v0, v0, 0x1f

    .line 206
    .line 207
    iget v2, p0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->zValue:F

    .line 208
    .line 209
    cmpl-float v3, v2, v3

    .line 210
    .line 211
    if-eqz v3, :cond_d

    .line 212
    .line 213
    .line 214
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 215
    move-result v1

    .line 216
    :cond_d
    add-int/2addr v0, v1

    .line 217
    .line 218
    mul-int/lit8 v0, v0, 0x1f

    .line 219
    .line 220
    iget-boolean v1, p0, Lcom/narvii/video/model/Caption;->isBold:Z

    .line 221
    add-int/2addr v0, v1

    .line 222
    return v0
.end method
