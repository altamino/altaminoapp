.class public final Landroidx/compose/ui/graphics/vector/compat/XmlVectorParser_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nXmlVectorParser.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 XmlVectorParser.android.kt\nandroidx/compose/ui/graphics/vector/compat/XmlVectorParser_androidKt\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,726:1\n175#2:727\n175#2:728\n*S KotlinDebug\n*F\n+ 1 XmlVectorParser.android.kt\nandroidx/compose/ui/graphics/vector/compat/XmlVectorParser_androidKt\n*L\n239#1:727\n240#1:728\n*E\n"
.end annotation


# static fields
.field private static final FILL_TYPE_WINDING:I = 0x0

.field private static final LINECAP_BUTT:I = 0x0

.field private static final LINECAP_ROUND:I = 0x1

.field private static final LINECAP_SQUARE:I = 0x2

.field private static final LINEJOIN_BEVEL:I = 0x2

.field private static final LINEJOIN_MITER:I = 0x0

.field private static final LINEJOIN_ROUND:I = 0x1

.field private static final SHAPE_CLIP_PATH:Ljava/lang/String; = "clip-path"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SHAPE_GROUP:Ljava/lang/String; = "group"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SHAPE_PATH:Ljava/lang/String; = "path"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final a(Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .locals 20
    .param p0    # Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/res/Resources;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/Resources$Theme;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    move-object/from16 v2, p2

    .line 7
    .line 8
    move-object/from16 v3, p3

    .line 9
    .line 10
    const-string v4, "<this>"

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v4}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    const-string v4, "res"

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v4}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    const-string v4, "attrs"

    .line 21
    .line 22
    .line 23
    invoke-static {v3, v4}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    sget-object v4, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->INSTANCE:Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->F()[I

    .line 29
    move-result-object v5

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1, v2, v3, v5}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->l(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 33
    move-result-object v3

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->a()I

    .line 37
    move-result v5

    .line 38
    const/4 v6, 0x0

    .line 39
    .line 40
    const-string v7, "autoMirrored"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v3, v7, v5, v6}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->e(Landroid/content/res/TypedArray;Ljava/lang/String;IZ)Z

    .line 44
    move-result v17

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->H()I

    .line 48
    move-result v5

    .line 49
    .line 50
    const-string v6, "viewportWidth"

    .line 51
    const/4 v7, 0x0

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v3, v6, v5, v7}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->h(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    .line 55
    move-result v12

    .line 56
    .line 57
    const-string v5, "viewportHeight"

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->G()I

    .line 61
    move-result v6

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v3, v5, v6, v7}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->h(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    .line 65
    move-result v13

    .line 66
    .line 67
    cmpg-float v5, v12, v7

    .line 68
    .line 69
    if-lez v5, :cond_8

    .line 70
    .line 71
    cmpg-float v5, v13, v7

    .line 72
    .line 73
    if-lez v5, :cond_7

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->I()I

    .line 77
    move-result v5

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v3, v5, v7}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->b(Landroid/content/res/TypedArray;IF)F

    .line 81
    move-result v5

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->n()I

    .line 85
    move-result v6

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v3, v6, v7}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->b(Landroid/content/res/TypedArray;IF)F

    .line 89
    move-result v6

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->D()I

    .line 93
    move-result v7

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 97
    move-result v7

    .line 98
    .line 99
    if-eqz v7, :cond_2

    .line 100
    .line 101
    new-instance v7, Landroid/util/TypedValue;

    .line 102
    .line 103
    .line 104
    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->D()I

    .line 108
    move-result v8

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3, v8, v7}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 112
    .line 113
    iget v7, v7, Landroid/util/TypedValue;->type:I

    .line 114
    const/4 v8, 0x2

    .line 115
    .line 116
    if-ne v7, v8, :cond_0

    .line 117
    .line 118
    sget-object v2, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color$Companion;->f()J

    .line 122
    move-result-wide v7

    .line 123
    :goto_0
    move-wide v14, v7

    .line 124
    goto :goto_1

    .line 125
    .line 126
    :cond_0
    const-string v7, "tint"

    .line 127
    .line 128
    .line 129
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->D()I

    .line 130
    move-result v8

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v3, v2, v7, v8}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->f(Landroid/content/res/TypedArray;Landroid/content/res/Resources$Theme;Ljava/lang/String;I)Landroid/content/res/ColorStateList;

    .line 134
    move-result-object v2

    .line 135
    .line 136
    if-eqz v2, :cond_1

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 140
    move-result v2

    .line 141
    .line 142
    .line 143
    invoke-static {v2}, Landroidx/compose/ui/graphics/ColorKt;->b(I)J

    .line 144
    move-result-wide v7

    .line 145
    goto :goto_0

    .line 146
    .line 147
    :cond_1
    sget-object v2, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color$Companion;->f()J

    .line 151
    move-result-wide v7

    .line 152
    goto :goto_0

    .line 153
    .line 154
    :cond_2
    sget-object v2, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color$Companion;->f()J

    .line 158
    move-result-wide v7

    .line 159
    goto :goto_0

    .line 160
    .line 161
    .line 162
    :goto_1
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->E()I

    .line 163
    move-result v2

    .line 164
    const/4 v4, -0x1

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v3, v2, v4}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->d(Landroid/content/res/TypedArray;II)I

    .line 168
    move-result v0

    .line 169
    .line 170
    if-eq v0, v4, :cond_6

    .line 171
    const/4 v2, 0x3

    .line 172
    .line 173
    if-eq v0, v2, :cond_5

    .line 174
    const/4 v2, 0x5

    .line 175
    .line 176
    if-eq v0, v2, :cond_4

    .line 177
    .line 178
    const/16 v2, 0x9

    .line 179
    .line 180
    if-eq v0, v2, :cond_3

    .line 181
    .line 182
    .line 183
    packed-switch v0, :pswitch_data_0

    .line 184
    .line 185
    sget-object v0, Landroidx/compose/ui/graphics/BlendMode;->Companion:Landroidx/compose/ui/graphics/BlendMode$Companion;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/BlendMode$Companion;->z()I

    .line 189
    move-result v0

    .line 190
    .line 191
    :goto_2
    move/from16 v16, v0

    .line 192
    goto :goto_3

    .line 193
    .line 194
    :pswitch_0
    sget-object v0, Landroidx/compose/ui/graphics/BlendMode;->Companion:Landroidx/compose/ui/graphics/BlendMode$Companion;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/BlendMode$Companion;->t()I

    .line 198
    move-result v0

    .line 199
    goto :goto_2

    .line 200
    .line 201
    :pswitch_1
    sget-object v0, Landroidx/compose/ui/graphics/BlendMode;->Companion:Landroidx/compose/ui/graphics/BlendMode$Companion;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/BlendMode$Companion;->v()I

    .line 205
    move-result v0

    .line 206
    goto :goto_2

    .line 207
    .line 208
    :pswitch_2
    sget-object v0, Landroidx/compose/ui/graphics/BlendMode;->Companion:Landroidx/compose/ui/graphics/BlendMode$Companion;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/BlendMode$Companion;->q()I

    .line 212
    move-result v0

    .line 213
    goto :goto_2

    .line 214
    .line 215
    :cond_3
    sget-object v0, Landroidx/compose/ui/graphics/BlendMode;->Companion:Landroidx/compose/ui/graphics/BlendMode$Companion;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/BlendMode$Companion;->y()I

    .line 219
    move-result v0

    .line 220
    goto :goto_2

    .line 221
    .line 222
    :cond_4
    sget-object v0, Landroidx/compose/ui/graphics/BlendMode;->Companion:Landroidx/compose/ui/graphics/BlendMode$Companion;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/BlendMode$Companion;->z()I

    .line 226
    move-result v0

    .line 227
    goto :goto_2

    .line 228
    .line 229
    :cond_5
    sget-object v0, Landroidx/compose/ui/graphics/BlendMode;->Companion:Landroidx/compose/ui/graphics/BlendMode$Companion;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/BlendMode$Companion;->B()I

    .line 233
    move-result v0

    .line 234
    goto :goto_2

    .line 235
    .line 236
    :cond_6
    sget-object v0, Landroidx/compose/ui/graphics/BlendMode;->Companion:Landroidx/compose/ui/graphics/BlendMode$Companion;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/BlendMode$Companion;->z()I

    .line 240
    move-result v0

    .line 241
    goto :goto_2

    .line 242
    .line 243
    .line 244
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 245
    move-result-object v0

    .line 246
    .line 247
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 248
    div-float/2addr v5, v0

    .line 249
    .line 250
    .line 251
    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 252
    move-result v10

    .line 253
    .line 254
    .line 255
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 256
    move-result-object v0

    .line 257
    .line 258
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 259
    div-float/2addr v6, v0

    .line 260
    .line 261
    .line 262
    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 263
    move-result v11

    .line 264
    .line 265
    .line 266
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 267
    .line 268
    new-instance v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 269
    const/4 v9, 0x0

    .line 270
    .line 271
    const/16 v18, 0x1

    .line 272
    .line 273
    const/16 v19, 0x0

    .line 274
    move-object v8, v0

    .line 275
    .line 276
    .line 277
    invoke-direct/range {v8 .. v19}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/k;)V

    .line 278
    return-object v0

    .line 279
    .line 280
    :cond_7
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 281
    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    .line 289
    move-result-object v2

    .line 290
    .line 291
    .line 292
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    const-string v2, "<VectorGraphic> tag requires viewportHeight > 0"

    .line 295
    .line 296
    .line 297
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 301
    move-result-object v1

    .line 302
    .line 303
    .line 304
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 305
    throw v0

    .line 306
    .line 307
    :cond_8
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 308
    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    .line 316
    move-result-object v2

    .line 317
    .line 318
    .line 319
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    const-string v2, "<VectorGraphic> tag requires viewportWidth > 0"

    .line 322
    .line 323
    .line 324
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 328
    move-result-object v1

    .line 329
    .line 330
    .line 331
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 332
    throw v0

    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final b(II)I
    .locals 1

    .line 1
    .line 2
    if-eqz p0, :cond_2

    .line 3
    const/4 v0, 0x1

    .line 4
    .line 5
    if-eq p0, v0, :cond_1

    .line 6
    const/4 v0, 0x2

    .line 7
    .line 8
    if-eq p0, v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    sget-object p0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->c()I

    .line 15
    move-result p1

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_1
    sget-object p0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->b()I

    .line 22
    move-result p1

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_2
    sget-object p0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->a()I

    .line 29
    move-result p1

    .line 30
    :goto_0
    return p1
.end method

.method private static final c(II)I
    .locals 1

    .line 1
    .line 2
    if-eqz p0, :cond_2

    .line 3
    const/4 v0, 0x1

    .line 4
    .line 5
    if-eq p0, v0, :cond_1

    .line 6
    const/4 v0, 0x2

    .line 7
    .line 8
    if-eq p0, v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    sget-object p0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->a()I

    .line 15
    move-result p1

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_1
    sget-object p0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->c()I

    .line 22
    move-result p1

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_2
    sget-object p0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->b()I

    .line 29
    move-result p1

    .line 30
    :goto_0
    return p1
.end method

.method public static final d(Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 2
    .param p0    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    .line 12
    if-eq v0, v1, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 16
    move-result v0

    .line 17
    .line 18
    if-ge v0, v1, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 22
    move-result p0

    .line 23
    const/4 v0, 0x3

    .line 24
    .line 25
    if-ne p0, v0, :cond_0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v1, 0x0

    .line 28
    :cond_1
    :goto_0
    return v1
.end method

.method private static final e(Landroidx/core/content/res/ComplexColorCompat;)Landroidx/compose/ui/graphics/Brush;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/core/content/res/ComplexColorCompat;->l()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/core/content/res/ComplexColorCompat;->f()Landroid/graphics/Shader;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Landroidx/compose/ui/graphics/BrushKt;->a(Landroid/graphics/Shader;)Landroidx/compose/ui/graphics/ShaderBrush;

    .line 17
    move-result-object v1

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/core/content/res/ComplexColorCompat;->e()I

    .line 24
    move-result p0

    .line 25
    .line 26
    .line 27
    invoke-static {p0}, Landroidx/compose/ui/graphics/ColorKt;->b(I)J

    .line 28
    move-result-wide v2

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v2, v3, v1}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/k;)V

    .line 32
    move-object v1, v0

    .line 33
    :cond_1
    :goto_0
    return-object v1
.end method

.method public static final f(Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroidx/compose/ui/graphics/vector/ImageVector$Builder;)V
    .locals 16
    .param p0    # Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/res/Resources;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/Resources$Theme;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    move-object/from16 v2, p3

    .line 7
    .line 8
    const-string v3, "<this>"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    const-string v3, "res"

    .line 14
    .line 15
    .line 16
    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    const-string v3, "attrs"

    .line 19
    .line 20
    .line 21
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    const-string v3, "builder"

    .line 24
    .line 25
    move-object/from16 v4, p4

    .line 26
    .line 27
    .line 28
    invoke-static {v4, v3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    sget-object v3, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->INSTANCE:Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->b()[I

    .line 34
    move-result-object v5

    .line 35
    .line 36
    move-object/from16 v6, p2

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1, v6, v2, v5}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->l(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->c()I

    .line 44
    move-result v2

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->j(Landroid/content/res/TypedArray;I)Ljava/lang/String;

    .line 48
    move-result-object v2

    .line 49
    .line 50
    if-nez v2, :cond_0

    .line 51
    .line 52
    const-string v2, ""

    .line 53
    :cond_0
    move-object v5, v2

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->d()I

    .line 57
    move-result v2

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->j(Landroid/content/res/TypedArray;I)Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    .line 64
    invoke-static {v0}, Landroidx/compose/ui/graphics/vector/VectorKt;->a(Ljava/lang/String;)Ljava/util/List;

    .line 65
    move-result-object v13

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    const/4 v6, 0x0

    .line 70
    const/4 v7, 0x0

    .line 71
    const/4 v8, 0x0

    .line 72
    const/4 v9, 0x0

    .line 73
    const/4 v10, 0x0

    .line 74
    const/4 v11, 0x0

    .line 75
    const/4 v12, 0x0

    .line 76
    .line 77
    const/16 v14, 0xfe

    .line 78
    const/4 v15, 0x0

    .line 79
    .line 80
    move-object/from16 v4, p4

    .line 81
    .line 82
    .line 83
    invoke-static/range {v4 .. v15}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->b(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/lang/String;FFFFFFFLjava/util/List;ILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 84
    return-void
.end method

.method public static final g(Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Landroidx/compose/ui/graphics/vector/ImageVector$Builder;I)I
    .locals 4
    .param p0    # Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/res/Resources;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/res/Resources$Theme;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "res"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "attrs"

    .line 13
    .line 14
    .line 15
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    const-string v0, "builder"

    .line 18
    .line 19
    .line 20
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->k()Lorg/xmlpull/v1/XmlPullParser;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 28
    move-result v0

    .line 29
    const/4 v1, 0x2

    .line 30
    .line 31
    const-string v2, "group"

    .line 32
    .line 33
    if-eq v0, v1, :cond_2

    .line 34
    const/4 p1, 0x3

    .line 35
    .line 36
    if-eq v0, p1, :cond_0

    .line 37
    goto :goto_1

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->k()Lorg/xmlpull/v1/XmlPullParser;

    .line 41
    move-result-object p0

    .line 42
    .line 43
    .line 44
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 45
    move-result-object p0

    .line 46
    .line 47
    .line 48
    invoke-static {v2, p0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    move-result p0

    .line 50
    .line 51
    if-eqz p0, :cond_9

    .line 52
    .line 53
    add-int/lit8 p5, p5, 0x1

    .line 54
    const/4 p0, 0x0

    .line 55
    move p1, p0

    .line 56
    .line 57
    :goto_0
    if-ge p1, p5, :cond_1

    .line 58
    .line 59
    .line 60
    invoke-virtual {p4}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->g()Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 61
    .line 62
    add-int/lit8 p1, p1, 0x1

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    return p0

    .line 65
    .line 66
    .line 67
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->k()Lorg/xmlpull/v1/XmlPullParser;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    .line 71
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 72
    move-result-object v0

    .line 73
    .line 74
    if-eqz v0, :cond_9

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 78
    move-result v1

    .line 79
    .line 80
    .line 81
    const v3, -0x624e8b7e

    .line 82
    .line 83
    if-eq v1, v3, :cond_7

    .line 84
    .line 85
    .line 86
    const v3, 0x346425

    .line 87
    .line 88
    if-eq v1, v3, :cond_5

    .line 89
    .line 90
    .line 91
    const v3, 0x5e0f67f

    .line 92
    .line 93
    if-eq v1, v3, :cond_3

    .line 94
    goto :goto_1

    .line 95
    .line 96
    .line 97
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    move-result v0

    .line 99
    .line 100
    if-nez v0, :cond_4

    .line 101
    goto :goto_1

    .line 102
    .line 103
    .line 104
    :cond_4
    invoke-static {p0, p1, p3, p2, p4}, Landroidx/compose/ui/graphics/vector/compat/XmlVectorParser_androidKt;->h(Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroidx/compose/ui/graphics/vector/ImageVector$Builder;)V

    .line 105
    goto :goto_1

    .line 106
    .line 107
    :cond_5
    const-string v1, "path"

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    move-result v0

    .line 112
    .line 113
    if-nez v0, :cond_6

    .line 114
    goto :goto_1

    .line 115
    .line 116
    .line 117
    :cond_6
    invoke-static {p0, p1, p3, p2, p4}, Landroidx/compose/ui/graphics/vector/compat/XmlVectorParser_androidKt;->i(Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroidx/compose/ui/graphics/vector/ImageVector$Builder;)V

    .line 118
    goto :goto_1

    .line 119
    .line 120
    :cond_7
    const-string v1, "clip-path"

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    move-result v0

    .line 125
    .line 126
    if-nez v0, :cond_8

    .line 127
    goto :goto_1

    .line 128
    .line 129
    .line 130
    :cond_8
    invoke-static {p0, p1, p3, p2, p4}, Landroidx/compose/ui/graphics/vector/compat/XmlVectorParser_androidKt;->f(Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroidx/compose/ui/graphics/vector/ImageVector$Builder;)V

    .line 131
    .line 132
    add-int/lit8 p5, p5, 0x1

    .line 133
    :cond_9
    :goto_1
    return p5
.end method

.method public static final h(Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroidx/compose/ui/graphics/vector/ImageVector$Builder;)V
    .locals 14
    .param p0    # Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/res/Resources;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/Resources$Theme;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    .line 4
    move-object/from16 v2, p3

    .line 5
    .line 6
    const-string v3, "<this>"

    .line 7
    .line 8
    .line 9
    invoke-static {p0, v3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    const-string v3, "res"

    .line 12
    .line 13
    .line 14
    invoke-static {p1, v3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    const-string v3, "attrs"

    .line 17
    .line 18
    .line 19
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    const-string v3, "builder"

    .line 22
    .line 23
    move-object/from16 v4, p4

    .line 24
    .line 25
    .line 26
    invoke-static {v4, v3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    sget-object v3, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->INSTANCE:Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->e()[I

    .line 32
    move-result-object v5

    .line 33
    .line 34
    move-object/from16 v6, p2

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1, v6, v2, v5}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->l(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->i()I

    .line 42
    move-result v2

    .line 43
    .line 44
    const-string v5, "rotation"

    .line 45
    const/4 v6, 0x0

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v1, v5, v2, v6}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->h(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    .line 49
    move-result v2

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->g()I

    .line 53
    move-result v5

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v1, v5, v6}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->c(Landroid/content/res/TypedArray;IF)F

    .line 57
    move-result v7

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->h()I

    .line 61
    move-result v5

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v1, v5, v6}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->c(Landroid/content/res/TypedArray;IF)F

    .line 65
    move-result v8

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->j()I

    .line 69
    move-result v5

    .line 70
    .line 71
    const-string v9, "scaleX"

    .line 72
    .line 73
    const/high16 v10, 0x3f800000    # 1.0f

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v1, v9, v5, v10}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->h(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    .line 77
    move-result v9

    .line 78
    .line 79
    const-string v5, "scaleY"

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->k()I

    .line 83
    move-result v11

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v1, v5, v11, v10}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->h(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    .line 87
    move-result v10

    .line 88
    .line 89
    const-string v5, "translateX"

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->l()I

    .line 93
    move-result v11

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, v1, v5, v11, v6}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->h(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    .line 97
    move-result v11

    .line 98
    .line 99
    const-string v5, "translateY"

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->m()I

    .line 103
    move-result v12

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, v1, v5, v12, v6}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->h(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    .line 107
    move-result v12

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->f()I

    .line 111
    move-result v3

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, v1, v3}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->j(Landroid/content/res/TypedArray;I)Ljava/lang/String;

    .line 115
    move-result-object v0

    .line 116
    .line 117
    if-nez v0, :cond_0

    .line 118
    .line 119
    const-string v0, ""

    .line 120
    :cond_0
    move-object v5, v0

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 124
    .line 125
    .line 126
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->e()Ljava/util/List;

    .line 127
    move-result-object v13

    .line 128
    .line 129
    move-object/from16 v4, p4

    .line 130
    move v6, v2

    .line 131
    .line 132
    .line 133
    invoke-virtual/range {v4 .. v13}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->a(Ljava/lang/String;FFFFFFFLjava/util/List;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 134
    return-void
.end method

.method public static final i(Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroidx/compose/ui/graphics/vector/ImageVector$Builder;)V
    .locals 22
    .param p0    # Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/res/Resources;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/Resources$Theme;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v6, p0

    .line 3
    .line 4
    move-object/from16 v0, p1

    .line 5
    .line 6
    move-object/from16 v1, p3

    .line 7
    .line 8
    const-string v2, "<this>"

    .line 9
    .line 10
    .line 11
    invoke-static {v6, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    const-string v2, "res"

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    const-string v2, "attrs"

    .line 19
    .line 20
    .line 21
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    const-string v2, "builder"

    .line 24
    .line 25
    move-object/from16 v7, p4

    .line 26
    .line 27
    .line 28
    invoke-static {v7, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    sget-object v8, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->INSTANCE:Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->o()[I

    .line 34
    move-result-object v2

    .line 35
    .line 36
    move-object/from16 v9, p2

    .line 37
    .line 38
    .line 39
    invoke-virtual {v6, v0, v9, v1, v2}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->l(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 40
    move-result-object v10

    .line 41
    .line 42
    .line 43
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->k()Lorg/xmlpull/v1/XmlPullParser;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    const-string v1, "pathData"

    .line 47
    .line 48
    .line 49
    invoke-static {v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->r(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 50
    move-result v0

    .line 51
    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    .line 55
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->r()I

    .line 56
    move-result v0

    .line 57
    .line 58
    .line 59
    invoke-virtual {v6, v10, v0}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->j(Landroid/content/res/TypedArray;I)Ljava/lang/String;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    if-nez v0, :cond_0

    .line 63
    .line 64
    const-string v0, ""

    .line 65
    :cond_0
    move-object v11, v0

    .line 66
    .line 67
    .line 68
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->s()I

    .line 69
    move-result v0

    .line 70
    .line 71
    .line 72
    invoke-virtual {v6, v10, v0}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->j(Landroid/content/res/TypedArray;I)Ljava/lang/String;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    .line 76
    invoke-static {v0}, Landroidx/compose/ui/graphics/vector/VectorKt;->a(Ljava/lang/String;)Ljava/util/List;

    .line 77
    move-result-object v12

    .line 78
    .line 79
    const-string v3, "fillColor"

    .line 80
    .line 81
    .line 82
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->q()I

    .line 83
    move-result v4

    .line 84
    const/4 v5, 0x0

    .line 85
    .line 86
    move-object/from16 v0, p0

    .line 87
    move-object v1, v10

    .line 88
    .line 89
    move-object/from16 v2, p2

    .line 90
    .line 91
    .line 92
    invoke-virtual/range {v0 .. v5}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->g(Landroid/content/res/TypedArray;Landroid/content/res/Resources$Theme;Ljava/lang/String;II)Landroidx/core/content/res/ComplexColorCompat;

    .line 93
    move-result-object v13

    .line 94
    .line 95
    const-string v0, "fillAlpha"

    .line 96
    .line 97
    .line 98
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->p()I

    .line 99
    move-result v1

    .line 100
    .line 101
    const/high16 v14, 0x3f800000    # 1.0f

    .line 102
    .line 103
    .line 104
    invoke-virtual {v6, v10, v0, v1, v14}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->h(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    .line 105
    move-result v15

    .line 106
    .line 107
    const-string v0, "strokeLineCap"

    .line 108
    .line 109
    .line 110
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->v()I

    .line 111
    move-result v1

    .line 112
    const/4 v2, -0x1

    .line 113
    .line 114
    .line 115
    invoke-virtual {v6, v10, v0, v1, v2}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->i(Landroid/content/res/TypedArray;Ljava/lang/String;II)I

    .line 116
    move-result v0

    .line 117
    .line 118
    sget-object v1, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->a()I

    .line 122
    move-result v1

    .line 123
    .line 124
    .line 125
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/vector/compat/XmlVectorParser_androidKt;->b(II)I

    .line 126
    move-result v16

    .line 127
    .line 128
    const-string v0, "strokeLineJoin"

    .line 129
    .line 130
    .line 131
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->w()I

    .line 132
    move-result v1

    .line 133
    .line 134
    .line 135
    invoke-virtual {v6, v10, v0, v1, v2}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->i(Landroid/content/res/TypedArray;Ljava/lang/String;II)I

    .line 136
    move-result v0

    .line 137
    .line 138
    sget-object v1, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->a()I

    .line 142
    move-result v1

    .line 143
    .line 144
    .line 145
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/vector/compat/XmlVectorParser_androidKt;->c(II)I

    .line 146
    move-result v17

    .line 147
    .line 148
    const-string v0, "strokeMiterLimit"

    .line 149
    .line 150
    .line 151
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->x()I

    .line 152
    move-result v1

    .line 153
    .line 154
    .line 155
    invoke-virtual {v6, v10, v0, v1, v14}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->h(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    .line 156
    move-result v18

    .line 157
    .line 158
    const-string v3, "strokeColor"

    .line 159
    .line 160
    .line 161
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->u()I

    .line 162
    move-result v4

    .line 163
    .line 164
    move-object/from16 v0, p0

    .line 165
    move-object v1, v10

    .line 166
    .line 167
    move-object/from16 v2, p2

    .line 168
    .line 169
    .line 170
    invoke-virtual/range {v0 .. v5}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->g(Landroid/content/res/TypedArray;Landroid/content/res/Resources$Theme;Ljava/lang/String;II)Landroidx/core/content/res/ComplexColorCompat;

    .line 171
    move-result-object v0

    .line 172
    .line 173
    const-string v1, "strokeAlpha"

    .line 174
    .line 175
    .line 176
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->t()I

    .line 177
    move-result v2

    .line 178
    .line 179
    .line 180
    invoke-virtual {v6, v10, v1, v2, v14}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->h(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    .line 181
    move-result v1

    .line 182
    .line 183
    const-string v2, "strokeWidth"

    .line 184
    .line 185
    .line 186
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->y()I

    .line 187
    move-result v3

    .line 188
    .line 189
    .line 190
    invoke-virtual {v6, v10, v2, v3, v14}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->h(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    .line 191
    move-result v2

    .line 192
    .line 193
    const-string v3, "trimPathEnd"

    .line 194
    .line 195
    .line 196
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->z()I

    .line 197
    move-result v4

    .line 198
    .line 199
    .line 200
    invoke-virtual {v6, v10, v3, v4, v14}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->h(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    .line 201
    move-result v19

    .line 202
    .line 203
    const-string v3, "trimPathOffset"

    .line 204
    .line 205
    .line 206
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->B()I

    .line 207
    move-result v4

    .line 208
    const/4 v5, 0x0

    .line 209
    .line 210
    .line 211
    invoke-virtual {v6, v10, v3, v4, v5}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->h(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    .line 212
    move-result v20

    .line 213
    .line 214
    const-string v3, "trimPathStart"

    .line 215
    .line 216
    .line 217
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->C()I

    .line 218
    move-result v4

    .line 219
    .line 220
    .line 221
    invoke-virtual {v6, v10, v3, v4, v5}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->h(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    .line 222
    move-result v21

    .line 223
    .line 224
    .line 225
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->A()I

    .line 226
    move-result v3

    .line 227
    .line 228
    sget v4, Landroidx/compose/ui/graphics/vector/compat/XmlVectorParser_androidKt;->FILL_TYPE_WINDING:I

    .line 229
    .line 230
    const-string v5, "fillType"

    .line 231
    .line 232
    .line 233
    invoke-virtual {v6, v10, v5, v3, v4}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->i(Landroid/content/res/TypedArray;Ljava/lang/String;II)I

    .line 234
    move-result v3

    .line 235
    .line 236
    .line 237
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 238
    .line 239
    .line 240
    invoke-static {v13}, Landroidx/compose/ui/graphics/vector/compat/XmlVectorParser_androidKt;->e(Landroidx/core/content/res/ComplexColorCompat;)Landroidx/compose/ui/graphics/Brush;

    .line 241
    move-result-object v8

    .line 242
    .line 243
    .line 244
    invoke-static {v0}, Landroidx/compose/ui/graphics/vector/compat/XmlVectorParser_androidKt;->e(Landroidx/core/content/res/ComplexColorCompat;)Landroidx/compose/ui/graphics/Brush;

    .line 245
    move-result-object v9

    .line 246
    .line 247
    sget-object v0, Landroidx/compose/ui/graphics/PathFillType;->Companion:Landroidx/compose/ui/graphics/PathFillType$Companion;

    .line 248
    .line 249
    if-nez v3, :cond_1

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/PathFillType$Companion;->b()I

    .line 253
    move-result v0

    .line 254
    :goto_0
    move v5, v0

    .line 255
    goto :goto_1

    .line 256
    .line 257
    .line 258
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/PathFillType$Companion;->a()I

    .line 259
    move-result v0

    .line 260
    goto :goto_0

    .line 261
    .line 262
    :goto_1
    move-object/from16 v3, p4

    .line 263
    move-object v4, v12

    .line 264
    move-object v6, v11

    .line 265
    move-object v7, v8

    .line 266
    move v8, v15

    .line 267
    move v10, v1

    .line 268
    move v11, v2

    .line 269
    .line 270
    move/from16 v12, v16

    .line 271
    .line 272
    move/from16 v13, v17

    .line 273
    .line 274
    move/from16 v14, v18

    .line 275
    .line 276
    move/from16 v15, v21

    .line 277
    .line 278
    move/from16 v16, v19

    .line 279
    .line 280
    move/from16 v17, v20

    .line 281
    .line 282
    .line 283
    invoke-virtual/range {v3 .. v17}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->c(Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFF)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 284
    return-void

    .line 285
    .line 286
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 287
    .line 288
    const-string v1, "No path data available"

    .line 289
    .line 290
    .line 291
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 292
    throw v0
.end method

.method public static final j(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/XmlPullParser;
    .locals 3
    .param p0    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 9
    move-result v0

    .line 10
    :goto_0
    const/4 v1, 0x2

    .line 11
    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    const/4 v2, 0x1

    .line 14
    .line 15
    if-eq v0, v2, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 19
    move-result v0

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_0
    if-ne v0, v1, :cond_1

    .line 23
    return-object p0

    .line 24
    .line 25
    :cond_1
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 26
    .line 27
    const-string v0, "No start tag found"

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 31
    throw p0
.end method
