.class public Lcom/narvii/flag/TagWithIconSpan;
.super Landroid/text/style/ReplacementSpan;
.source "SourceFile"


# static fields
.field private static DEFAULT_BACK_COLOR:I = -0x10000

.field private static DEFAULT_CORNER_RADIUS:I = 0x8

.field private static DEFAULT_FLAG_ICON:Ljava/lang/String; = "ion_ios_flag"

.field private static DEFAULT_TEXT_COLOR:I = -0x1

.field private static final DIRECTION_NORMAL:I = 0x0

.field private static final DIRECTION_REVERSAL:I = 0x1


# instance fields
.field private direction:F

.field private iconCharacters:Ljava/lang/String;

.field private mBackColor:I

.field private mColor:I

.field private mContentStr:Ljava/lang/String;

.field private mContentTextSize:F

.field private mContext:Landroid/content/Context;

.field private mIconStr:Ljava/lang/String;

.field private mIconTextSie:F

.field private mSameBaseLine:Z

.field private mShowRoundRect:Z

.field rect:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/narvii/flag/TagWithIconSpan;->DEFAULT_FLAG_ICON:Ljava/lang/String;

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, p1, v0, p2, v1}, Lcom/narvii/flag/TagWithIconSpan;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 11

    sget v4, Lcom/narvii/flag/TagWithIconSpan;->DEFAULT_TEXT_COLOR:I

    sget v5, Lcom/narvii/flag/TagWithIconSpan;->DEFAULT_BACK_COLOR:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v10, p4

    .line 2
    invoke-direct/range {v0 .. v10}, Lcom/narvii/flag/TagWithIconSpan;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIFFZZI)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIFFZZI)V
    .locals 0

    .line 3
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    iput-object p2, p0, Lcom/narvii/flag/TagWithIconSpan;->mIconStr:Ljava/lang/String;

    iput-object p3, p0, Lcom/narvii/flag/TagWithIconSpan;->mContentStr:Ljava/lang/String;

    iput-object p1, p0, Lcom/narvii/flag/TagWithIconSpan;->mContext:Landroid/content/Context;

    iput p4, p0, Lcom/narvii/flag/TagWithIconSpan;->mColor:I

    iput p5, p0, Lcom/narvii/flag/TagWithIconSpan;->mBackColor:I

    iput-boolean p8, p0, Lcom/narvii/flag/TagWithIconSpan;->mShowRoundRect:Z

    iput-boolean p9, p0, Lcom/narvii/flag/TagWithIconSpan;->mSameBaseLine:Z

    iput p6, p0, Lcom/narvii/flag/TagWithIconSpan;->mIconTextSie:F

    iput p7, p0, Lcom/narvii/flag/TagWithIconSpan;->mContentTextSize:F

    int-to-float p1, p10

    iput p1, p0, Lcom/narvii/flag/TagWithIconSpan;->direction:F

    .line 4
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/flag/TagWithIconSpan;->rect:Landroid/graphics/RectF;

    return-void
.end method

.method private getTypeFace()Landroid/graphics/Typeface;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/flag/TagWithIconSpan;->mIconStr:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/util/fonticon/FontAwesomeUtil;->getNvTypeface(Ljava/lang/String;)Lcom/narvii/util/fonticon/NVTypeface;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    .line 12
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    const-string v2, ""

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Lcom/narvii/util/fonticon/NVTypeface;->getCharacters()Ljava/util/HashMap;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    iget-object v3, p0, Lcom/narvii/flag/TagWithIconSpan;->mIconStr:Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    iput-object v1, p0, Lcom/narvii/flag/TagWithIconSpan;->iconCharacters:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/narvii/flag/TagWithIconSpan;->mContext:Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    invoke-interface {v0, v1}, Lcom/narvii/util/fonticon/NVTypeface;->getTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    .line 45
    move-result-object v0

    .line 46
    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 16

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v8, p1

    .line 5
    .line 6
    move/from16 v9, p5

    .line 7
    .line 8
    move/from16 v1, p6

    .line 9
    .line 10
    move-object/from16 v10, p9

    .line 11
    .line 12
    new-instance v11, Landroid/graphics/Paint;

    .line 13
    .line 14
    .line 15
    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .line 16
    .line 17
    iget v2, v0, Lcom/narvii/flag/TagWithIconSpan;->mIconTextSie:F

    .line 18
    const/4 v3, 0x0

    .line 19
    .line 20
    cmpl-float v4, v2, v3

    .line 21
    .line 22
    if-eqz v4, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v11, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 26
    goto :goto_0

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getTextSize()F

    .line 30
    move-result v2

    .line 31
    .line 32
    .line 33
    invoke-virtual {v11, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/narvii/flag/TagWithIconSpan;->getTypeFace()Landroid/graphics/Typeface;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    .line 40
    invoke-virtual {v11, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 41
    .line 42
    iget-object v2, v0, Lcom/narvii/flag/TagWithIconSpan;->iconCharacters:Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 46
    move-result v4

    .line 47
    const/4 v5, 0x0

    .line 48
    .line 49
    .line 50
    invoke-virtual {v11, v2, v5, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    .line 51
    move-result v2

    .line 52
    .line 53
    iget-object v4, v0, Lcom/narvii/flag/TagWithIconSpan;->mContentStr:Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 57
    move-result v6

    .line 58
    .line 59
    .line 60
    invoke-virtual {v10, v4, v5, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    .line 61
    move-result v12

    .line 62
    int-to-float v4, v1

    .line 63
    .line 64
    sub-int v1, p8, v1

    .line 65
    int-to-float v1, v1

    .line 66
    .line 67
    .line 68
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->descent()F

    .line 69
    move-result v5

    .line 70
    .line 71
    .line 72
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->ascent()F

    .line 73
    move-result v6

    .line 74
    sub-float/2addr v5, v6

    .line 75
    sub-float/2addr v1, v5

    .line 76
    .line 77
    const/high16 v13, 0x40000000    # 2.0f

    .line 78
    div-float/2addr v1, v13

    .line 79
    add-float/2addr v4, v1

    .line 80
    .line 81
    .line 82
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->ascent()F

    .line 83
    move-result v1

    .line 84
    sub-float/2addr v4, v1

    .line 85
    float-to-int v1, v4

    .line 86
    .line 87
    const-string v4, "x"

    .line 88
    .line 89
    .line 90
    invoke-virtual {v10, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 91
    move-result v4

    .line 92
    .line 93
    const/high16 v5, 0x3f000000    # 0.5f

    .line 94
    .line 95
    mul-float v14, v4, v5

    .line 96
    .line 97
    iget-object v4, v0, Lcom/narvii/flag/TagWithIconSpan;->rect:Landroid/graphics/RectF;

    .line 98
    .line 99
    iput v9, v4, Landroid/graphics/RectF;->left:F

    .line 100
    add-float/2addr v2, v9

    .line 101
    .line 102
    add-float v5, v2, v12

    .line 103
    .line 104
    const/high16 v6, 0x40800000    # 4.0f

    .line 105
    mul-float/2addr v6, v14

    .line 106
    add-float/2addr v5, v6

    .line 107
    .line 108
    iput v5, v4, Landroid/graphics/RectF;->right:F

    .line 109
    int-to-float v15, v1

    .line 110
    .line 111
    .line 112
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->ascent()F

    .line 113
    move-result v1

    .line 114
    add-float/2addr v1, v15

    .line 115
    .line 116
    iput v1, v4, Landroid/graphics/RectF;->top:F

    .line 117
    .line 118
    iget-object v1, v0, Lcom/narvii/flag/TagWithIconSpan;->rect:Landroid/graphics/RectF;

    .line 119
    .line 120
    .line 121
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->descent()F

    .line 122
    move-result v4

    .line 123
    add-float/2addr v4, v15

    .line 124
    .line 125
    iput v4, v1, Landroid/graphics/RectF;->bottom:F

    .line 126
    .line 127
    iget v1, v0, Lcom/narvii/flag/TagWithIconSpan;->mBackColor:I

    .line 128
    .line 129
    .line 130
    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    .line 132
    iget-boolean v1, v0, Lcom/narvii/flag/TagWithIconSpan;->mShowRoundRect:Z

    .line 133
    .line 134
    if-eqz v1, :cond_1

    .line 135
    .line 136
    iget-object v1, v0, Lcom/narvii/flag/TagWithIconSpan;->rect:Landroid/graphics/RectF;

    .line 137
    .line 138
    sget v4, Lcom/narvii/flag/TagWithIconSpan;->DEFAULT_CORNER_RADIUS:I

    .line 139
    int-to-float v5, v4

    .line 140
    int-to-float v4, v4

    .line 141
    .line 142
    .line 143
    invoke-virtual {v8, v1, v5, v4, v10}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 144
    .line 145
    :cond_1
    iget v1, v0, Lcom/narvii/flag/TagWithIconSpan;->mColor:I

    .line 146
    .line 147
    .line 148
    invoke-virtual {v11, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 149
    .line 150
    iget v1, v0, Lcom/narvii/flag/TagWithIconSpan;->mColor:I

    .line 151
    .line 152
    .line 153
    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 154
    .line 155
    iget v1, v0, Lcom/narvii/flag/TagWithIconSpan;->mContentTextSize:F

    .line 156
    .line 157
    cmpl-float v4, v1, v3

    .line 158
    .line 159
    if-eqz v4, :cond_2

    .line 160
    .line 161
    .line 162
    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 163
    .line 164
    :cond_2
    iget v1, v0, Lcom/narvii/flag/TagWithIconSpan;->direction:F

    .line 165
    .line 166
    cmpl-float v1, v1, v3

    .line 167
    .line 168
    if-nez v1, :cond_4

    .line 169
    .line 170
    iget-boolean v1, v0, Lcom/narvii/flag/TagWithIconSpan;->mSameBaseLine:Z

    .line 171
    .line 172
    if-eqz v1, :cond_3

    .line 173
    .line 174
    iget-object v1, v0, Lcom/narvii/flag/TagWithIconSpan;->iconCharacters:Ljava/lang/String;

    .line 175
    .line 176
    add-float v3, v9, v14

    .line 177
    .line 178
    .line 179
    invoke-virtual {v8, v1, v3, v15, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 180
    goto :goto_1

    .line 181
    .line 182
    :cond_3
    iget-object v1, v0, Lcom/narvii/flag/TagWithIconSpan;->iconCharacters:Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->descent()F

    .line 186
    move-result v3

    .line 187
    add-float/2addr v3, v15

    .line 188
    .line 189
    .line 190
    invoke-virtual {v8, v1, v9, v3, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 191
    .line 192
    :goto_1
    iget-object v1, v0, Lcom/narvii/flag/TagWithIconSpan;->mContentStr:Ljava/lang/String;

    .line 193
    const/4 v3, 0x0

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 197
    move-result v4

    .line 198
    mul-float/2addr v14, v13

    .line 199
    add-float/2addr v2, v14

    .line 200
    .line 201
    move-object/from16 p2, v1

    .line 202
    .line 203
    move/from16 p3, v3

    .line 204
    .line 205
    move/from16 p4, v4

    .line 206
    .line 207
    move/from16 p5, v2

    .line 208
    .line 209
    move/from16 p6, v15

    .line 210
    .line 211
    move-object/from16 p7, p9

    .line 212
    .line 213
    .line 214
    invoke-virtual/range {p1 .. p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 215
    goto :goto_2

    .line 216
    .line 217
    :cond_4
    iget-object v2, v0, Lcom/narvii/flag/TagWithIconSpan;->mContentStr:Ljava/lang/String;

    .line 218
    const/4 v3, 0x0

    .line 219
    .line 220
    .line 221
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 222
    move-result v4

    .line 223
    .line 224
    add-float v5, v9, v14

    .line 225
    .line 226
    move-object/from16 v1, p1

    .line 227
    move v6, v15

    .line 228
    .line 229
    move-object/from16 v7, p9

    .line 230
    .line 231
    .line 232
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 233
    .line 234
    iget-boolean v1, v0, Lcom/narvii/flag/TagWithIconSpan;->mSameBaseLine:Z

    .line 235
    .line 236
    if-eqz v1, :cond_5

    .line 237
    .line 238
    iget-object v1, v0, Lcom/narvii/flag/TagWithIconSpan;->iconCharacters:Ljava/lang/String;

    .line 239
    mul-float/2addr v14, v13

    .line 240
    .line 241
    add-float v2, v9, v14

    .line 242
    add-float/2addr v2, v12

    .line 243
    .line 244
    .line 245
    invoke-virtual {v8, v1, v2, v15, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 246
    goto :goto_2

    .line 247
    .line 248
    :cond_5
    iget-object v1, v0, Lcom/narvii/flag/TagWithIconSpan;->iconCharacters:Ljava/lang/String;

    .line 249
    .line 250
    add-float v2, v9, v12

    .line 251
    .line 252
    .line 253
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->descent()F

    .line 254
    move-result v3

    .line 255
    add-float/2addr v15, v3

    .line 256
    .line 257
    .line 258
    invoke-virtual {v8, v1, v2, v15, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 259
    :goto_2
    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 8
    move-result p1

    .line 9
    return p1
.end method
