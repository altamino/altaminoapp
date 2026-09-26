.class public final Landroidx/compose/ui/text/SpanStyleKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSpanStyle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SpanStyle.kt\nandroidx/compose/ui/text/SpanStyleKt\n+ 2 Color.kt\nandroidx/compose/ui/graphics/ColorKt\n*L\n1#1,683:1\n666#2:684\n654#2:685\n*S KotlinDebug\n*F\n+ 1 SpanStyle.kt\nandroidx/compose/ui/text/SpanStyleKt\n*L\n679#1:684\n679#1:685\n*E\n"
.end annotation


# static fields
.field private static final DefaultBackgroundColor:J

.field private static final DefaultColor:J

.field private static final DefaultFontSize:J

.field private static final DefaultLetterSpacing:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    const/16 v0, 0xe

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->e(I)J

    .line 6
    move-result-wide v0

    .line 7
    .line 8
    sput-wide v0, Landroidx/compose/ui/text/SpanStyleKt;->DefaultFontSize:J

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->e(I)J

    .line 13
    move-result-wide v0

    .line 14
    .line 15
    sput-wide v0, Landroidx/compose/ui/text/SpanStyleKt;->DefaultLetterSpacing:J

    .line 16
    .line 17
    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->e()J

    .line 21
    move-result-wide v1

    .line 22
    .line 23
    sput-wide v1, Landroidx/compose/ui/text/SpanStyleKt;->DefaultBackgroundColor:J

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->a()J

    .line 27
    move-result-wide v0

    .line 28
    .line 29
    sput-wide v0, Landroidx/compose/ui/text/SpanStyleKt;->DefaultColor:J

    .line 30
    return-void
.end method

.method public static final synthetic a()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/ui/text/SpanStyleKt;->DefaultColor:J

    return-wide v0
.end method

.method public static final b(Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/SpanStyle;F)Landroidx/compose/ui/text/SpanStyle;
    .locals 30
    .param p0    # Landroidx/compose/ui/text/SpanStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/text/SpanStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    move/from16 v0, p2

    .line 3
    .line 4
    const-string v1, "start"

    .line 5
    .line 6
    move-object/from16 v2, p0

    .line 7
    .line 8
    .line 9
    invoke-static {v2, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    const-string v1, "stop"

    .line 12
    .line 13
    move-object/from16 v3, p1

    .line 14
    .line 15
    .line 16
    invoke-static {v3, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/SpanStyle;->r()Landroidx/compose/ui/text/style/TextDrawStyle;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->r()Landroidx/compose/ui/text/style/TextDrawStyle;

    .line 24
    move-result-object v4

    .line 25
    .line 26
    .line 27
    invoke-static {v1, v4, v0}, Landroidx/compose/ui/text/style/TextDrawStyleKt;->a(Landroidx/compose/ui/text/style/TextDrawStyle;Landroidx/compose/ui/text/style/TextDrawStyle;F)Landroidx/compose/ui/text/style/TextDrawStyle;

    .line 28
    move-result-object v6

    .line 29
    .line 30
    .line 31
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/SpanStyle;->g()Landroidx/compose/ui/text/font/FontFamily;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    .line 35
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->g()Landroidx/compose/ui/text/font/FontFamily;

    .line 36
    move-result-object v4

    .line 37
    .line 38
    .line 39
    invoke-static {v1, v4, v0}, Landroidx/compose/ui/text/SpanStyleKt;->c(Ljava/lang/Object;Ljava/lang/Object;F)Ljava/lang/Object;

    .line 40
    move-result-object v1

    .line 41
    move-object v12, v1

    .line 42
    .line 43
    check-cast v12, Landroidx/compose/ui/text/font/FontFamily;

    .line 44
    .line 45
    .line 46
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/SpanStyle;->i()J

    .line 47
    move-result-wide v4

    .line 48
    .line 49
    .line 50
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->i()J

    .line 51
    move-result-wide v7

    .line 52
    .line 53
    .line 54
    invoke-static {v4, v5, v7, v8, v0}, Landroidx/compose/ui/text/SpanStyleKt;->e(JJF)J

    .line 55
    move-result-wide v7

    .line 56
    .line 57
    .line 58
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/SpanStyle;->l()Landroidx/compose/ui/text/font/FontWeight;

    .line 59
    move-result-object v1

    .line 60
    .line 61
    if-nez v1, :cond_0

    .line 62
    .line 63
    sget-object v1, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Landroidx/compose/ui/text/font/FontWeight$Companion;->d()Landroidx/compose/ui/text/font/FontWeight;

    .line 67
    move-result-object v1

    .line 68
    .line 69
    .line 70
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->l()Landroidx/compose/ui/text/font/FontWeight;

    .line 71
    move-result-object v4

    .line 72
    .line 73
    if-nez v4, :cond_1

    .line 74
    .line 75
    sget-object v4, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4}, Landroidx/compose/ui/text/font/FontWeight$Companion;->d()Landroidx/compose/ui/text/font/FontWeight;

    .line 79
    move-result-object v4

    .line 80
    .line 81
    .line 82
    :cond_1
    invoke-static {v1, v4, v0}, Landroidx/compose/ui/text/font/FontWeightKt;->a(Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontWeight;F)Landroidx/compose/ui/text/font/FontWeight;

    .line 83
    move-result-object v9

    .line 84
    .line 85
    .line 86
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/SpanStyle;->j()Landroidx/compose/ui/text/font/FontStyle;

    .line 87
    move-result-object v1

    .line 88
    .line 89
    .line 90
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->j()Landroidx/compose/ui/text/font/FontStyle;

    .line 91
    move-result-object v4

    .line 92
    .line 93
    .line 94
    invoke-static {v1, v4, v0}, Landroidx/compose/ui/text/SpanStyleKt;->c(Ljava/lang/Object;Ljava/lang/Object;F)Ljava/lang/Object;

    .line 95
    move-result-object v1

    .line 96
    move-object v10, v1

    .line 97
    .line 98
    check-cast v10, Landroidx/compose/ui/text/font/FontStyle;

    .line 99
    .line 100
    .line 101
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/SpanStyle;->k()Landroidx/compose/ui/text/font/FontSynthesis;

    .line 102
    move-result-object v1

    .line 103
    .line 104
    .line 105
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->k()Landroidx/compose/ui/text/font/FontSynthesis;

    .line 106
    move-result-object v4

    .line 107
    .line 108
    .line 109
    invoke-static {v1, v4, v0}, Landroidx/compose/ui/text/SpanStyleKt;->c(Ljava/lang/Object;Ljava/lang/Object;F)Ljava/lang/Object;

    .line 110
    move-result-object v1

    .line 111
    move-object v11, v1

    .line 112
    .line 113
    check-cast v11, Landroidx/compose/ui/text/font/FontSynthesis;

    .line 114
    .line 115
    .line 116
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/SpanStyle;->h()Ljava/lang/String;

    .line 117
    move-result-object v1

    .line 118
    .line 119
    .line 120
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->h()Ljava/lang/String;

    .line 121
    move-result-object v4

    .line 122
    .line 123
    .line 124
    invoke-static {v1, v4, v0}, Landroidx/compose/ui/text/SpanStyleKt;->c(Ljava/lang/Object;Ljava/lang/Object;F)Ljava/lang/Object;

    .line 125
    move-result-object v1

    .line 126
    move-object v13, v1

    .line 127
    .line 128
    check-cast v13, Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/SpanStyle;->m()J

    .line 132
    move-result-wide v4

    .line 133
    .line 134
    .line 135
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->m()J

    .line 136
    move-result-wide v14

    .line 137
    .line 138
    .line 139
    invoke-static {v4, v5, v14, v15, v0}, Landroidx/compose/ui/text/SpanStyleKt;->e(JJF)J

    .line 140
    move-result-wide v14

    .line 141
    .line 142
    .line 143
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/SpanStyle;->d()Landroidx/compose/ui/text/style/BaselineShift;

    .line 144
    move-result-object v1

    .line 145
    const/4 v4, 0x0

    .line 146
    .line 147
    if-eqz v1, :cond_2

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1}, Landroidx/compose/ui/text/style/BaselineShift;->h()F

    .line 151
    move-result v1

    .line 152
    goto :goto_0

    .line 153
    .line 154
    .line 155
    :cond_2
    invoke-static {v4}, Landroidx/compose/ui/text/style/BaselineShift;->c(F)F

    .line 156
    move-result v1

    .line 157
    .line 158
    .line 159
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->d()Landroidx/compose/ui/text/style/BaselineShift;

    .line 160
    move-result-object v5

    .line 161
    .line 162
    if-eqz v5, :cond_3

    .line 163
    .line 164
    .line 165
    invoke-virtual {v5}, Landroidx/compose/ui/text/style/BaselineShift;->h()F

    .line 166
    move-result v4

    .line 167
    goto :goto_1

    .line 168
    .line 169
    .line 170
    :cond_3
    invoke-static {v4}, Landroidx/compose/ui/text/style/BaselineShift;->c(F)F

    .line 171
    move-result v4

    .line 172
    .line 173
    .line 174
    :goto_1
    invoke-static {v1, v4, v0}, Landroidx/compose/ui/text/style/BaselineShiftKt;->a(FFF)F

    .line 175
    move-result v1

    .line 176
    .line 177
    .line 178
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/SpanStyle;->s()Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 179
    move-result-object v4

    .line 180
    .line 181
    if-nez v4, :cond_4

    .line 182
    .line 183
    sget-object v4, Landroidx/compose/ui/text/style/TextGeometricTransform;->Companion:Landroidx/compose/ui/text/style/TextGeometricTransform$Companion;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v4}, Landroidx/compose/ui/text/style/TextGeometricTransform$Companion;->a()Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 187
    move-result-object v4

    .line 188
    .line 189
    .line 190
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->s()Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 191
    move-result-object v5

    .line 192
    .line 193
    if-nez v5, :cond_5

    .line 194
    .line 195
    sget-object v5, Landroidx/compose/ui/text/style/TextGeometricTransform;->Companion:Landroidx/compose/ui/text/style/TextGeometricTransform$Companion;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v5}, Landroidx/compose/ui/text/style/TextGeometricTransform$Companion;->a()Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 199
    move-result-object v5

    .line 200
    .line 201
    .line 202
    :cond_5
    invoke-static {v4, v5, v0}, Landroidx/compose/ui/text/style/TextGeometricTransformKt;->a(Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/style/TextGeometricTransform;F)Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 203
    move-result-object v17

    .line 204
    .line 205
    .line 206
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/SpanStyle;->n()Landroidx/compose/ui/text/intl/LocaleList;

    .line 207
    move-result-object v4

    .line 208
    .line 209
    .line 210
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->n()Landroidx/compose/ui/text/intl/LocaleList;

    .line 211
    move-result-object v5

    .line 212
    .line 213
    .line 214
    invoke-static {v4, v5, v0}, Landroidx/compose/ui/text/SpanStyleKt;->c(Ljava/lang/Object;Ljava/lang/Object;F)Ljava/lang/Object;

    .line 215
    move-result-object v4

    .line 216
    .line 217
    move-object/from16 v18, v4

    .line 218
    .line 219
    check-cast v18, Landroidx/compose/ui/text/intl/LocaleList;

    .line 220
    .line 221
    .line 222
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/SpanStyle;->c()J

    .line 223
    move-result-wide v4

    .line 224
    .line 225
    .line 226
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->c()J

    .line 227
    move-result-wide v2

    .line 228
    .line 229
    .line 230
    invoke-static {v4, v5, v2, v3, v0}, Landroidx/compose/ui/graphics/ColorKt;->i(JJF)J

    .line 231
    move-result-wide v19

    .line 232
    .line 233
    .line 234
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/SpanStyle;->q()Landroidx/compose/ui/text/style/TextDecoration;

    .line 235
    move-result-object v2

    .line 236
    .line 237
    .line 238
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->q()Landroidx/compose/ui/text/style/TextDecoration;

    .line 239
    move-result-object v3

    .line 240
    .line 241
    .line 242
    invoke-static {v2, v3, v0}, Landroidx/compose/ui/text/SpanStyleKt;->c(Ljava/lang/Object;Ljava/lang/Object;F)Ljava/lang/Object;

    .line 243
    move-result-object v2

    .line 244
    .line 245
    move-object/from16 v21, v2

    .line 246
    .line 247
    check-cast v21, Landroidx/compose/ui/text/style/TextDecoration;

    .line 248
    .line 249
    .line 250
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/SpanStyle;->p()Landroidx/compose/ui/graphics/Shadow;

    .line 251
    move-result-object v2

    .line 252
    .line 253
    if-nez v2, :cond_6

    .line 254
    .line 255
    new-instance v2, Landroidx/compose/ui/graphics/Shadow;

    .line 256
    .line 257
    const-wide/16 v23, 0x0

    .line 258
    .line 259
    const-wide/16 v25, 0x0

    .line 260
    .line 261
    const/16 v27, 0x0

    .line 262
    .line 263
    const/16 v28, 0x7

    .line 264
    .line 265
    const/16 v29, 0x0

    .line 266
    .line 267
    move-object/from16 v22, v2

    .line 268
    .line 269
    .line 270
    invoke-direct/range {v22 .. v29}, Landroidx/compose/ui/graphics/Shadow;-><init>(JJFILkotlin/jvm/internal/k;)V

    .line 271
    .line 272
    .line 273
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->p()Landroidx/compose/ui/graphics/Shadow;

    .line 274
    move-result-object v3

    .line 275
    .line 276
    if-nez v3, :cond_7

    .line 277
    .line 278
    new-instance v3, Landroidx/compose/ui/graphics/Shadow;

    .line 279
    .line 280
    const-wide/16 v23, 0x0

    .line 281
    .line 282
    const-wide/16 v25, 0x0

    .line 283
    .line 284
    const/16 v27, 0x0

    .line 285
    .line 286
    const/16 v28, 0x7

    .line 287
    .line 288
    const/16 v29, 0x0

    .line 289
    .line 290
    move-object/from16 v22, v3

    .line 291
    .line 292
    .line 293
    invoke-direct/range {v22 .. v29}, Landroidx/compose/ui/graphics/Shadow;-><init>(JJFILkotlin/jvm/internal/k;)V

    .line 294
    .line 295
    .line 296
    :cond_7
    invoke-static {v2, v3, v0}, Landroidx/compose/ui/graphics/ShadowKt;->a(Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/graphics/Shadow;F)Landroidx/compose/ui/graphics/Shadow;

    .line 297
    move-result-object v22

    .line 298
    .line 299
    .line 300
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/SpanStyle;->o()Landroidx/compose/ui/text/PlatformSpanStyle;

    .line 301
    move-result-object v2

    .line 302
    .line 303
    .line 304
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/SpanStyle;->o()Landroidx/compose/ui/text/PlatformSpanStyle;

    .line 305
    move-result-object v3

    .line 306
    .line 307
    .line 308
    invoke-static {v2, v3, v0}, Landroidx/compose/ui/text/SpanStyleKt;->d(Landroidx/compose/ui/text/PlatformSpanStyle;Landroidx/compose/ui/text/PlatformSpanStyle;F)Landroidx/compose/ui/text/PlatformSpanStyle;

    .line 309
    move-result-object v23

    .line 310
    .line 311
    new-instance v0, Landroidx/compose/ui/text/SpanStyle;

    .line 312
    move-object v5, v0

    .line 313
    .line 314
    .line 315
    invoke-static {v1}, Landroidx/compose/ui/text/style/BaselineShift;->b(F)Landroidx/compose/ui/text/style/BaselineShift;

    .line 316
    move-result-object v16

    .line 317
    .line 318
    const/16 v24, 0x0

    .line 319
    .line 320
    .line 321
    invoke-direct/range {v5 .. v24}, Landroidx/compose/ui/text/SpanStyle;-><init>(Landroidx/compose/ui/text/style/TextDrawStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/PlatformSpanStyle;Lkotlin/jvm/internal/k;)V

    .line 322
    return-object v0
.end method

.method public static final c(Ljava/lang/Object;Ljava/lang/Object;F)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;F)TT;"
        }
    .end annotation

    .line 1
    float-to-double v0, p2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double p2, v0, v2

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method private static final d(Landroidx/compose/ui/text/PlatformSpanStyle;Landroidx/compose/ui/text/PlatformSpanStyle;F)Landroidx/compose/ui/text/PlatformSpanStyle;
    .locals 0

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    .line 8
    :cond_0
    if-nez p0, :cond_1

    .line 9
    .line 10
    sget-object p0, Landroidx/compose/ui/text/PlatformSpanStyle;->Companion:Landroidx/compose/ui/text/PlatformSpanStyle$Companion;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/compose/ui/text/PlatformSpanStyle$Companion;->a()Landroidx/compose/ui/text/PlatformSpanStyle;

    .line 14
    move-result-object p0

    .line 15
    .line 16
    :cond_1
    if-nez p1, :cond_2

    .line 17
    .line 18
    sget-object p1, Landroidx/compose/ui/text/PlatformSpanStyle;->Companion:Landroidx/compose/ui/text/PlatformSpanStyle$Companion;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/compose/ui/text/PlatformSpanStyle$Companion;->a()Landroidx/compose/ui/text/PlatformSpanStyle;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    :cond_2
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/text/AndroidTextStyle_androidKt;->c(Landroidx/compose/ui/text/PlatformSpanStyle;Landroidx/compose/ui/text/PlatformSpanStyle;F)Landroidx/compose/ui/text/PlatformSpanStyle;

    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method public static final e(JJF)J
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/TextUnitKt;->f(J)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/TextUnitKt;->f(J)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/ui/unit/TextUnitKt;->g(JJF)J

    .line 17
    move-result-wide p0

    .line 18
    return-wide p0

    .line 19
    .line 20
    .line 21
    :cond_1
    :goto_0
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/TextUnit;->b(J)Landroidx/compose/ui/unit/TextUnit;

    .line 22
    move-result-object p0

    .line 23
    .line 24
    .line 25
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/TextUnit;->b(J)Landroidx/compose/ui/unit/TextUnit;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-static {p0, p1, p4}, Landroidx/compose/ui/text/SpanStyleKt;->c(Ljava/lang/Object;Ljava/lang/Object;F)Ljava/lang/Object;

    .line 30
    move-result-object p0

    .line 31
    .line 32
    check-cast p0, Landroidx/compose/ui/unit/TextUnit;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/compose/ui/unit/TextUnit;->k()J

    .line 36
    move-result-wide p0

    .line 37
    return-wide p0
.end method

.method public static final f(Landroidx/compose/ui/text/SpanStyle;)Landroidx/compose/ui/text/SpanStyle;
    .locals 23
    .param p0    # Landroidx/compose/ui/text/SpanStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "style"

    .line 3
    .line 4
    move-object/from16 v1, p0

    .line 5
    .line 6
    .line 7
    invoke-static {v1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/SpanStyle;->r()Landroidx/compose/ui/text/style/TextDrawStyle;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    sget-object v2, Landroidx/compose/ui/text/SpanStyleKt$resolveSpanStyleDefaults$1;->INSTANCE:Landroidx/compose/ui/text/SpanStyleKt$resolveSpanStyleDefaults$1;

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, v2}, Landroidx/compose/ui/text/style/TextDrawStyle;->c(Le8/a;)Landroidx/compose/ui/text/style/TextDrawStyle;

    .line 17
    move-result-object v4

    .line 18
    .line 19
    .line 20
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/SpanStyle;->i()J

    .line 21
    move-result-wide v2

    .line 22
    .line 23
    .line 24
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/TextUnitKt;->f(J)Z

    .line 25
    move-result v0

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    sget-wide v2, Landroidx/compose/ui/text/SpanStyleKt;->DefaultFontSize:J

    .line 30
    :goto_0
    move-wide v5, v2

    .line 31
    goto :goto_1

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/SpanStyle;->i()J

    .line 35
    move-result-wide v2

    .line 36
    goto :goto_0

    .line 37
    .line 38
    .line 39
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/SpanStyle;->l()Landroidx/compose/ui/text/font/FontWeight;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontWeight$Companion;->d()Landroidx/compose/ui/text/font/FontWeight;

    .line 48
    move-result-object v0

    .line 49
    :cond_1
    move-object v7, v0

    .line 50
    .line 51
    .line 52
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/SpanStyle;->j()Landroidx/compose/ui/text/font/FontStyle;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontStyle;->i()I

    .line 59
    move-result v0

    .line 60
    goto :goto_2

    .line 61
    .line 62
    :cond_2
    sget-object v0, Landroidx/compose/ui/text/font/FontStyle;->Companion:Landroidx/compose/ui/text/font/FontStyle$Companion;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontStyle$Companion;->b()I

    .line 66
    move-result v0

    .line 67
    .line 68
    .line 69
    :goto_2
    invoke-static {v0}, Landroidx/compose/ui/text/font/FontStyle;->c(I)Landroidx/compose/ui/text/font/FontStyle;

    .line 70
    move-result-object v8

    .line 71
    .line 72
    .line 73
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/SpanStyle;->k()Landroidx/compose/ui/text/font/FontSynthesis;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    if-eqz v0, :cond_3

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontSynthesis;->m()I

    .line 80
    move-result v0

    .line 81
    goto :goto_3

    .line 82
    .line 83
    :cond_3
    sget-object v0, Landroidx/compose/ui/text/font/FontSynthesis;->Companion:Landroidx/compose/ui/text/font/FontSynthesis$Companion;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontSynthesis$Companion;->a()I

    .line 87
    move-result v0

    .line 88
    .line 89
    .line 90
    :goto_3
    invoke-static {v0}, Landroidx/compose/ui/text/font/FontSynthesis;->e(I)Landroidx/compose/ui/text/font/FontSynthesis;

    .line 91
    move-result-object v9

    .line 92
    .line 93
    .line 94
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/SpanStyle;->g()Landroidx/compose/ui/text/font/FontFamily;

    .line 95
    move-result-object v0

    .line 96
    .line 97
    if-nez v0, :cond_4

    .line 98
    .line 99
    sget-object v0, Landroidx/compose/ui/text/font/FontFamily;->Companion:Landroidx/compose/ui/text/font/FontFamily$Companion;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontFamily$Companion;->b()Landroidx/compose/ui/text/font/SystemFontFamily;

    .line 103
    move-result-object v0

    .line 104
    :cond_4
    move-object v10, v0

    .line 105
    .line 106
    .line 107
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/SpanStyle;->h()Ljava/lang/String;

    .line 108
    move-result-object v0

    .line 109
    .line 110
    if-nez v0, :cond_5

    .line 111
    .line 112
    const-string v0, ""

    .line 113
    :cond_5
    move-object v11, v0

    .line 114
    .line 115
    .line 116
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/SpanStyle;->m()J

    .line 117
    move-result-wide v2

    .line 118
    .line 119
    .line 120
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/TextUnitKt;->f(J)Z

    .line 121
    move-result v0

    .line 122
    .line 123
    if-eqz v0, :cond_6

    .line 124
    .line 125
    sget-wide v2, Landroidx/compose/ui/text/SpanStyleKt;->DefaultLetterSpacing:J

    .line 126
    :goto_4
    move-wide v12, v2

    .line 127
    goto :goto_5

    .line 128
    .line 129
    .line 130
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/SpanStyle;->m()J

    .line 131
    move-result-wide v2

    .line 132
    goto :goto_4

    .line 133
    .line 134
    .line 135
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/SpanStyle;->d()Landroidx/compose/ui/text/style/BaselineShift;

    .line 136
    move-result-object v0

    .line 137
    .line 138
    if-eqz v0, :cond_7

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/BaselineShift;->h()F

    .line 142
    move-result v0

    .line 143
    goto :goto_6

    .line 144
    .line 145
    :cond_7
    sget-object v0, Landroidx/compose/ui/text/style/BaselineShift;->Companion:Landroidx/compose/ui/text/style/BaselineShift$Companion;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/BaselineShift$Companion;->a()F

    .line 149
    move-result v0

    .line 150
    .line 151
    .line 152
    :goto_6
    invoke-static {v0}, Landroidx/compose/ui/text/style/BaselineShift;->b(F)Landroidx/compose/ui/text/style/BaselineShift;

    .line 153
    move-result-object v14

    .line 154
    .line 155
    .line 156
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/SpanStyle;->s()Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 157
    move-result-object v0

    .line 158
    .line 159
    if-nez v0, :cond_8

    .line 160
    .line 161
    sget-object v0, Landroidx/compose/ui/text/style/TextGeometricTransform;->Companion:Landroidx/compose/ui/text/style/TextGeometricTransform$Companion;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextGeometricTransform$Companion;->a()Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 165
    move-result-object v0

    .line 166
    :cond_8
    move-object v15, v0

    .line 167
    .line 168
    .line 169
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/SpanStyle;->n()Landroidx/compose/ui/text/intl/LocaleList;

    .line 170
    move-result-object v0

    .line 171
    .line 172
    if-nez v0, :cond_9

    .line 173
    .line 174
    sget-object v0, Landroidx/compose/ui/text/intl/LocaleList;->Companion:Landroidx/compose/ui/text/intl/LocaleList$Companion;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0}, Landroidx/compose/ui/text/intl/LocaleList$Companion;->a()Landroidx/compose/ui/text/intl/LocaleList;

    .line 178
    move-result-object v0

    .line 179
    .line 180
    :cond_9
    move-object/from16 v16, v0

    .line 181
    .line 182
    .line 183
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/SpanStyle;->c()J

    .line 184
    move-result-wide v2

    .line 185
    .line 186
    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->f()J

    .line 190
    move-result-wide v17

    .line 191
    .line 192
    cmp-long v0, v2, v17

    .line 193
    .line 194
    if-eqz v0, :cond_a

    .line 195
    .line 196
    :goto_7
    move-wide/from16 v17, v2

    .line 197
    goto :goto_8

    .line 198
    .line 199
    :cond_a
    sget-wide v2, Landroidx/compose/ui/text/SpanStyleKt;->DefaultBackgroundColor:J

    .line 200
    goto :goto_7

    .line 201
    .line 202
    .line 203
    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/SpanStyle;->q()Landroidx/compose/ui/text/style/TextDecoration;

    .line 204
    move-result-object v0

    .line 205
    .line 206
    if-nez v0, :cond_b

    .line 207
    .line 208
    sget-object v0, Landroidx/compose/ui/text/style/TextDecoration;->Companion:Landroidx/compose/ui/text/style/TextDecoration$Companion;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextDecoration$Companion;->c()Landroidx/compose/ui/text/style/TextDecoration;

    .line 212
    move-result-object v0

    .line 213
    .line 214
    :cond_b
    move-object/from16 v19, v0

    .line 215
    .line 216
    .line 217
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/SpanStyle;->p()Landroidx/compose/ui/graphics/Shadow;

    .line 218
    move-result-object v0

    .line 219
    .line 220
    if-nez v0, :cond_c

    .line 221
    .line 222
    sget-object v0, Landroidx/compose/ui/graphics/Shadow;->Companion:Landroidx/compose/ui/graphics/Shadow$Companion;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Shadow$Companion;->a()Landroidx/compose/ui/graphics/Shadow;

    .line 226
    move-result-object v0

    .line 227
    .line 228
    :cond_c
    move-object/from16 v20, v0

    .line 229
    .line 230
    .line 231
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/SpanStyle;->o()Landroidx/compose/ui/text/PlatformSpanStyle;

    .line 232
    move-result-object v21

    .line 233
    .line 234
    const/16 v22, 0x0

    .line 235
    .line 236
    new-instance v0, Landroidx/compose/ui/text/SpanStyle;

    .line 237
    move-object v3, v0

    .line 238
    .line 239
    .line 240
    invoke-direct/range {v3 .. v22}, Landroidx/compose/ui/text/SpanStyle;-><init>(Landroidx/compose/ui/text/style/TextDrawStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/PlatformSpanStyle;Lkotlin/jvm/internal/k;)V

    .line 241
    return-object v0
.end method
