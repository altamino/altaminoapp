.class public final Landroidx/compose/ui/graphics/ColorKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nColor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Color.kt\nandroidx/compose/ui/graphics/ColorKt\n*L\n1#1,667:1\n583#1:668\n583#1:669\n583#1:670\n654#1:671\n*S KotlinDebug\n*F\n+ 1 Color.kt\nandroidx/compose/ui/graphics/ColorKt\n*L\n563#1:668\n564#1:669\n565#1:670\n666#1:671\n*E\n"
.end annotation


# direct methods
.method public static final a(FFFFLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J
    .locals 7
    .param p4    # Landroidx/compose/ui/graphics/colorspace/ColorSpace;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    .line 2
    const-string v0, "colorSpace"

    .line 3
    .line 4
    .line 5
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p4, v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->e(I)F

    .line 10
    move-result v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p4, v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->d(I)F

    .line 14
    move-result v0

    .line 15
    .line 16
    cmpg-float v0, p0, v0

    .line 17
    .line 18
    if-gtz v0, :cond_3

    .line 19
    .line 20
    cmpg-float v0, v1, p0

    .line 21
    .line 22
    if-gtz v0, :cond_3

    .line 23
    const/4 v0, 0x1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p4, v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->e(I)F

    .line 27
    move-result v1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p4, v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->d(I)F

    .line 31
    move-result v0

    .line 32
    .line 33
    cmpg-float v0, p1, v0

    .line 34
    .line 35
    if-gtz v0, :cond_3

    .line 36
    .line 37
    cmpg-float v0, v1, p1

    .line 38
    .line 39
    if-gtz v0, :cond_3

    .line 40
    const/4 v0, 0x2

    .line 41
    .line 42
    .line 43
    invoke-virtual {p4, v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->e(I)F

    .line 44
    move-result v1

    .line 45
    .line 46
    .line 47
    invoke-virtual {p4, v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->d(I)F

    .line 48
    move-result v0

    .line 49
    .line 50
    cmpg-float v0, p2, v0

    .line 51
    .line 52
    if-gtz v0, :cond_3

    .line 53
    .line 54
    cmpg-float v0, v1, p2

    .line 55
    .line 56
    if-gtz v0, :cond_3

    .line 57
    const/4 v0, 0x0

    .line 58
    .line 59
    cmpg-float v1, v0, p3

    .line 60
    .line 61
    if-gtz v1, :cond_3

    .line 62
    .line 63
    const/high16 v1, 0x3f800000    # 1.0f

    .line 64
    .line 65
    cmpg-float v2, p3, v1

    .line 66
    .line 67
    if-gtz v2, :cond_3

    .line 68
    .line 69
    .line 70
    invoke-virtual {p4}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->h()Z

    .line 71
    move-result v2

    .line 72
    .line 73
    const/16 v3, 0x20

    .line 74
    .line 75
    const/16 v4, 0x10

    .line 76
    .line 77
    const/high16 v5, 0x3f000000    # 0.5f

    .line 78
    .line 79
    if-eqz v2, :cond_0

    .line 80
    .line 81
    const/high16 p4, 0x437f0000    # 255.0f

    .line 82
    mul-float/2addr p3, p4

    .line 83
    add-float/2addr p3, v5

    .line 84
    float-to-int p3, p3

    .line 85
    .line 86
    shl-int/lit8 p3, p3, 0x18

    .line 87
    mul-float/2addr p0, p4

    .line 88
    add-float/2addr p0, v5

    .line 89
    float-to-int p0, p0

    .line 90
    shl-int/2addr p0, v4

    .line 91
    or-int/2addr p0, p3

    .line 92
    mul-float/2addr p1, p4

    .line 93
    add-float/2addr p1, v5

    .line 94
    float-to-int p1, p1

    .line 95
    .line 96
    shl-int/lit8 p1, p1, 0x8

    .line 97
    or-int/2addr p0, p1

    .line 98
    mul-float/2addr p2, p4

    .line 99
    add-float/2addr p2, v5

    .line 100
    float-to-int p1, p2

    .line 101
    or-int/2addr p0, p1

    .line 102
    int-to-long p0, p0

    .line 103
    .line 104
    .line 105
    invoke-static {p0, p1}, Lw7/f0;->b(J)J

    .line 106
    move-result-wide p0

    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    const-wide p2, 0xffffffffL

    .line 112
    and-long/2addr p0, p2

    .line 113
    .line 114
    .line 115
    invoke-static {p0, p1}, Lw7/f0;->b(J)J

    .line 116
    move-result-wide p0

    .line 117
    shl-long/2addr p0, v3

    .line 118
    .line 119
    .line 120
    invoke-static {p0, p1}, Lw7/f0;->b(J)J

    .line 121
    move-result-wide p0

    .line 122
    .line 123
    .line 124
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->i(J)J

    .line 125
    move-result-wide p0

    .line 126
    return-wide p0

    .line 127
    .line 128
    .line 129
    :cond_0
    invoke-virtual {p4}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->b()I

    .line 130
    move-result v2

    .line 131
    const/4 v6, 0x3

    .line 132
    .line 133
    if-ne v2, v6, :cond_2

    .line 134
    .line 135
    .line 136
    invoke-virtual {p4}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->c()I

    .line 137
    move-result p4

    .line 138
    const/4 v2, -0x1

    .line 139
    .line 140
    if-eq p4, v2, :cond_1

    .line 141
    .line 142
    .line 143
    invoke-static {p0}, Landroidx/compose/ui/graphics/Float16;->c(F)S

    .line 144
    move-result p0

    .line 145
    .line 146
    .line 147
    invoke-static {p1}, Landroidx/compose/ui/graphics/Float16;->c(F)S

    .line 148
    move-result p1

    .line 149
    .line 150
    .line 151
    invoke-static {p2}, Landroidx/compose/ui/graphics/Float16;->c(F)S

    .line 152
    move-result p2

    .line 153
    .line 154
    .line 155
    invoke-static {p3, v1}, Ljava/lang/Math;->min(FF)F

    .line 156
    move-result p3

    .line 157
    .line 158
    .line 159
    invoke-static {v0, p3}, Ljava/lang/Math;->max(FF)F

    .line 160
    move-result p3

    .line 161
    .line 162
    .line 163
    const v0, 0x447fc000    # 1023.0f

    .line 164
    mul-float/2addr p3, v0

    .line 165
    add-float/2addr p3, v5

    .line 166
    float-to-int p3, p3

    .line 167
    int-to-long v0, p0

    .line 168
    .line 169
    .line 170
    invoke-static {v0, v1}, Lw7/f0;->b(J)J

    .line 171
    move-result-wide v0

    .line 172
    .line 173
    .line 174
    const-wide/32 v5, 0xffff

    .line 175
    and-long/2addr v0, v5

    .line 176
    .line 177
    .line 178
    invoke-static {v0, v1}, Lw7/f0;->b(J)J

    .line 179
    move-result-wide v0

    .line 180
    .line 181
    const/16 p0, 0x30

    .line 182
    shl-long/2addr v0, p0

    .line 183
    .line 184
    .line 185
    invoke-static {v0, v1}, Lw7/f0;->b(J)J

    .line 186
    move-result-wide v0

    .line 187
    int-to-long p0, p1

    .line 188
    .line 189
    .line 190
    invoke-static {p0, p1}, Lw7/f0;->b(J)J

    .line 191
    move-result-wide p0

    .line 192
    and-long/2addr p0, v5

    .line 193
    .line 194
    .line 195
    invoke-static {p0, p1}, Lw7/f0;->b(J)J

    .line 196
    move-result-wide p0

    .line 197
    shl-long/2addr p0, v3

    .line 198
    .line 199
    .line 200
    invoke-static {p0, p1}, Lw7/f0;->b(J)J

    .line 201
    move-result-wide p0

    .line 202
    or-long/2addr p0, v0

    .line 203
    .line 204
    .line 205
    invoke-static {p0, p1}, Lw7/f0;->b(J)J

    .line 206
    move-result-wide p0

    .line 207
    int-to-long v0, p2

    .line 208
    .line 209
    .line 210
    invoke-static {v0, v1}, Lw7/f0;->b(J)J

    .line 211
    move-result-wide v0

    .line 212
    and-long/2addr v0, v5

    .line 213
    .line 214
    .line 215
    invoke-static {v0, v1}, Lw7/f0;->b(J)J

    .line 216
    move-result-wide v0

    .line 217
    shl-long/2addr v0, v4

    .line 218
    .line 219
    .line 220
    invoke-static {v0, v1}, Lw7/f0;->b(J)J

    .line 221
    move-result-wide v0

    .line 222
    or-long/2addr p0, v0

    .line 223
    .line 224
    .line 225
    invoke-static {p0, p1}, Lw7/f0;->b(J)J

    .line 226
    move-result-wide p0

    .line 227
    int-to-long p2, p3

    .line 228
    .line 229
    .line 230
    invoke-static {p2, p3}, Lw7/f0;->b(J)J

    .line 231
    move-result-wide p2

    .line 232
    .line 233
    const-wide/16 v0, 0x3ff

    .line 234
    and-long/2addr p2, v0

    .line 235
    .line 236
    .line 237
    invoke-static {p2, p3}, Lw7/f0;->b(J)J

    .line 238
    move-result-wide p2

    .line 239
    const/4 v0, 0x6

    .line 240
    shl-long/2addr p2, v0

    .line 241
    .line 242
    .line 243
    invoke-static {p2, p3}, Lw7/f0;->b(J)J

    .line 244
    move-result-wide p2

    .line 245
    or-long/2addr p0, p2

    .line 246
    .line 247
    .line 248
    invoke-static {p0, p1}, Lw7/f0;->b(J)J

    .line 249
    move-result-wide p0

    .line 250
    int-to-long p2, p4

    .line 251
    .line 252
    .line 253
    invoke-static {p2, p3}, Lw7/f0;->b(J)J

    .line 254
    move-result-wide p2

    .line 255
    .line 256
    const-wide/16 v0, 0x3f

    .line 257
    and-long/2addr p2, v0

    .line 258
    .line 259
    .line 260
    invoke-static {p2, p3}, Lw7/f0;->b(J)J

    .line 261
    move-result-wide p2

    .line 262
    or-long/2addr p0, p2

    .line 263
    .line 264
    .line 265
    invoke-static {p0, p1}, Lw7/f0;->b(J)J

    .line 266
    move-result-wide p0

    .line 267
    .line 268
    .line 269
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->i(J)J

    .line 270
    move-result-wide p0

    .line 271
    return-wide p0

    .line 272
    .line 273
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 274
    .line 275
    const-string p1, "Unknown color space, please use a color space in ColorSpaces"

    .line 276
    .line 277
    .line 278
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 279
    move-result-object p1

    .line 280
    .line 281
    .line 282
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 283
    throw p0

    .line 284
    .line 285
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 286
    .line 287
    const-string p1, "Color only works with ColorSpaces with 3 components"

    .line 288
    .line 289
    .line 290
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 291
    move-result-object p1

    .line 292
    .line 293
    .line 294
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 295
    throw p0

    .line 296
    .line 297
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 301
    .line 302
    const-string v1, "red = "

    .line 303
    .line 304
    .line 305
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    const-string p0, ", green = "

    .line 311
    .line 312
    .line 313
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    const-string p0, ", blue = "

    .line 319
    .line 320
    .line 321
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    const-string p0, ", alpha = "

    .line 327
    .line 328
    .line 329
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    const-string p0, " outside the range for "

    .line 335
    .line 336
    .line 337
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 344
    move-result-object p0

    .line 345
    .line 346
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 347
    .line 348
    .line 349
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 350
    move-result-object p0

    .line 351
    .line 352
    .line 353
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 354
    throw p1
.end method

.method public static final b(I)J
    .locals 2
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    int-to-long v0, p0

    .line 2
    .line 3
    .line 4
    invoke-static {v0, v1}, Lw7/f0;->b(J)J

    .line 5
    move-result-wide v0

    .line 6
    .line 7
    const/16 p0, 0x20

    .line 8
    shl-long/2addr v0, p0

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lw7/f0;->b(J)J

    .line 12
    move-result-wide v0

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->i(J)J

    .line 16
    move-result-wide v0

    .line 17
    return-wide v0
.end method

.method public static final c(IIII)J
    .locals 0
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    .line 2
    and-int/lit16 p3, p3, 0xff

    .line 3
    .line 4
    shl-int/lit8 p3, p3, 0x18

    .line 5
    .line 6
    and-int/lit16 p0, p0, 0xff

    .line 7
    .line 8
    shl-int/lit8 p0, p0, 0x10

    .line 9
    or-int/2addr p0, p3

    .line 10
    .line 11
    and-int/lit16 p1, p1, 0xff

    .line 12
    .line 13
    shl-int/lit8 p1, p1, 0x8

    .line 14
    or-int/2addr p0, p1

    .line 15
    .line 16
    and-int/lit16 p1, p2, 0xff

    .line 17
    or-int/2addr p0, p1

    .line 18
    .line 19
    .line 20
    invoke-static {p0}, Landroidx/compose/ui/graphics/ColorKt;->b(I)J

    .line 21
    move-result-wide p0

    .line 22
    return-wide p0
.end method

.method public static final d(J)J
    .locals 2
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lw7/f0;->b(J)J

    .line 4
    move-result-wide p0

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    const-wide v0, 0xffffffffL

    .line 10
    and-long/2addr p0, v0

    .line 11
    .line 12
    .line 13
    invoke-static {p0, p1}, Lw7/f0;->b(J)J

    .line 14
    move-result-wide p0

    .line 15
    .line 16
    const/16 v0, 0x20

    .line 17
    shl-long/2addr p0, v0

    .line 18
    .line 19
    .line 20
    invoke-static {p0, p1}, Lw7/f0;->b(J)J

    .line 21
    move-result-wide p0

    .line 22
    .line 23
    .line 24
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->i(J)J

    .line 25
    move-result-wide p0

    .line 26
    return-wide p0
.end method

.method public static synthetic e(IIIIILjava/lang/Object;)J
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p4, p4, 0x8

    .line 3
    .line 4
    if-eqz p4, :cond_0

    .line 5
    .line 6
    const/16 p3, 0xff

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/graphics/ColorKt;->c(IIII)J

    .line 10
    move-result-wide p0

    .line 11
    return-wide p0
.end method

.method public static final synthetic f(J)[F
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/ColorKt;->h(J)[F

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final g(JJ)J
    .locals 9
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p2, p3}, Landroidx/compose/ui/graphics/Color;->q(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {p0, p1, v0}, Landroidx/compose/ui/graphics/Color;->j(JLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J

    .line 8
    move-result-wide p0

    .line 9
    .line 10
    .line 11
    invoke-static {p2, p3}, Landroidx/compose/ui/graphics/Color;->o(J)F

    .line 12
    move-result v0

    .line 13
    .line 14
    .line 15
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->o(J)F

    .line 16
    move-result v1

    .line 17
    .line 18
    const/high16 v2, 0x3f800000    # 1.0f

    .line 19
    sub-float/2addr v2, v1

    .line 20
    .line 21
    mul-float v3, v0, v2

    .line 22
    add-float/2addr v3, v1

    .line 23
    .line 24
    .line 25
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->s(J)F

    .line 26
    move-result v4

    .line 27
    .line 28
    .line 29
    invoke-static {p2, p3}, Landroidx/compose/ui/graphics/Color;->s(J)F

    .line 30
    move-result v5

    .line 31
    const/4 v6, 0x0

    .line 32
    .line 33
    cmpg-float v7, v3, v6

    .line 34
    .line 35
    if-nez v7, :cond_0

    .line 36
    move v4, v6

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    mul-float/2addr v4, v1

    .line 39
    mul-float/2addr v5, v0

    .line 40
    mul-float/2addr v5, v2

    .line 41
    add-float/2addr v4, v5

    .line 42
    div-float/2addr v4, v3

    .line 43
    .line 44
    .line 45
    :goto_0
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->r(J)F

    .line 46
    move-result v5

    .line 47
    .line 48
    .line 49
    invoke-static {p2, p3}, Landroidx/compose/ui/graphics/Color;->r(J)F

    .line 50
    move-result v8

    .line 51
    .line 52
    if-nez v7, :cond_1

    .line 53
    move v5, v6

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    mul-float/2addr v5, v1

    .line 56
    mul-float/2addr v8, v0

    .line 57
    mul-float/2addr v8, v2

    .line 58
    add-float/2addr v5, v8

    .line 59
    div-float/2addr v5, v3

    .line 60
    .line 61
    .line 62
    :goto_1
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->p(J)F

    .line 63
    move-result p0

    .line 64
    .line 65
    .line 66
    invoke-static {p2, p3}, Landroidx/compose/ui/graphics/Color;->p(J)F

    .line 67
    move-result p1

    .line 68
    .line 69
    if-nez v7, :cond_2

    .line 70
    goto :goto_2

    .line 71
    :cond_2
    mul-float/2addr p0, v1

    .line 72
    mul-float/2addr p1, v0

    .line 73
    mul-float/2addr p1, v2

    .line 74
    add-float/2addr p0, p1

    .line 75
    .line 76
    div-float v6, p0, v3

    .line 77
    .line 78
    .line 79
    :goto_2
    invoke-static {p2, p3}, Landroidx/compose/ui/graphics/Color;->q(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    .line 80
    move-result-object p0

    .line 81
    .line 82
    .line 83
    invoke-static {v4, v5, v6, v3, p0}, Landroidx/compose/ui/graphics/ColorKt;->a(FFFFLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J

    .line 84
    move-result-wide p0

    .line 85
    return-wide p0
.end method

.method private static final h(J)[F
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    .line 3
    new-array v0, v0, [F

    .line 4
    const/4 v1, 0x0

    .line 5
    .line 6
    .line 7
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->s(J)F

    .line 8
    move-result v2

    .line 9
    .line 10
    aput v2, v0, v1

    .line 11
    const/4 v1, 0x1

    .line 12
    .line 13
    .line 14
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->r(J)F

    .line 15
    move-result v2

    .line 16
    .line 17
    aput v2, v0, v1

    .line 18
    const/4 v1, 0x2

    .line 19
    .line 20
    .line 21
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->p(J)F

    .line 22
    move-result v2

    .line 23
    .line 24
    aput v2, v0, v1

    .line 25
    const/4 v1, 0x3

    .line 26
    .line 27
    .line 28
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->o(J)F

    .line 29
    move-result p0

    .line 30
    .line 31
    aput p0, v0, v1

    .line 32
    return-object v0
.end method

.method public static final i(JJF)J
    .locals 8
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->p()Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {p0, p1, v0}, Landroidx/compose/ui/graphics/Color;->j(JLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J

    .line 10
    move-result-wide p0

    .line 11
    .line 12
    .line 13
    invoke-static {p2, p3, v0}, Landroidx/compose/ui/graphics/Color;->j(JLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J

    .line 14
    move-result-wide v1

    .line 15
    .line 16
    .line 17
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->o(J)F

    .line 18
    move-result v3

    .line 19
    .line 20
    .line 21
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->s(J)F

    .line 22
    move-result v4

    .line 23
    .line 24
    .line 25
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->r(J)F

    .line 26
    move-result v5

    .line 27
    .line 28
    .line 29
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->p(J)F

    .line 30
    move-result p0

    .line 31
    .line 32
    .line 33
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->o(J)F

    .line 34
    move-result p1

    .line 35
    .line 36
    .line 37
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->s(J)F

    .line 38
    move-result v6

    .line 39
    .line 40
    .line 41
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->r(J)F

    .line 42
    move-result v7

    .line 43
    .line 44
    .line 45
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->p(J)F

    .line 46
    move-result v1

    .line 47
    .line 48
    .line 49
    invoke-static {v3, p1, p4}, Landroidx/compose/ui/util/MathHelpersKt;->a(FFF)F

    .line 50
    move-result p1

    .line 51
    .line 52
    .line 53
    invoke-static {v4, v6, p4}, Landroidx/compose/ui/util/MathHelpersKt;->a(FFF)F

    .line 54
    move-result v2

    .line 55
    .line 56
    .line 57
    invoke-static {v5, v7, p4}, Landroidx/compose/ui/util/MathHelpersKt;->a(FFF)F

    .line 58
    move-result v3

    .line 59
    .line 60
    .line 61
    invoke-static {p0, v1, p4}, Landroidx/compose/ui/util/MathHelpersKt;->a(FFF)F

    .line 62
    move-result p0

    .line 63
    .line 64
    .line 65
    invoke-static {v2, v3, p0, p1, v0}, Landroidx/compose/ui/graphics/ColorKt;->a(FFFFLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J

    .line 66
    move-result-wide p0

    .line 67
    .line 68
    .line 69
    invoke-static {p2, p3}, Landroidx/compose/ui/graphics/Color;->q(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    .line 70
    move-result-object p2

    .line 71
    .line 72
    .line 73
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/graphics/Color;->j(JLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J

    .line 74
    move-result-wide p0

    .line 75
    return-wide p0
.end method

.method public static final j(J)F
    .locals 7
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->q(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->f()J

    .line 8
    move-result-wide v1

    .line 9
    .line 10
    sget-object v3, Landroidx/compose/ui/graphics/colorspace/ColorModel;->Companion:Landroidx/compose/ui/graphics/colorspace/ColorModel$Companion;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/colorspace/ColorModel$Companion;->b()J

    .line 14
    move-result-wide v3

    .line 15
    .line 16
    .line 17
    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/graphics/colorspace/ColorModel;->f(JJ)Z

    .line 18
    move-result v1

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    check-cast v0, Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/Rgb;->l()Le8/l;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->s(J)F

    .line 30
    move-result v1

    .line 31
    float-to-double v1, v1

    .line 32
    .line 33
    .line 34
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    .line 38
    invoke-interface {v0, v1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    check-cast v1, Ljava/lang/Number;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    .line 45
    move-result-wide v1

    .line 46
    .line 47
    .line 48
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->r(J)F

    .line 49
    move-result v3

    .line 50
    float-to-double v3, v3

    .line 51
    .line 52
    .line 53
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 54
    move-result-object v3

    .line 55
    .line 56
    .line 57
    invoke-interface {v0, v3}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    move-result-object v3

    .line 59
    .line 60
    check-cast v3, Ljava/lang/Number;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    .line 64
    move-result-wide v3

    .line 65
    .line 66
    .line 67
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->p(J)F

    .line 68
    move-result p0

    .line 69
    float-to-double p0, p0

    .line 70
    .line 71
    .line 72
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 73
    move-result-object p0

    .line 74
    .line 75
    .line 76
    invoke-interface {v0, p0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    move-result-object p0

    .line 78
    .line 79
    check-cast p0, Ljava/lang/Number;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    .line 83
    move-result-wide p0

    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    const-wide v5, 0x3fcb367a0f9096bcL    # 0.2126

    .line 89
    mul-double/2addr v1, v5

    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    const-wide v5, 0x3fe6e2eb1c432ca5L    # 0.7152

    .line 95
    mul-double/2addr v3, v5

    .line 96
    add-double/2addr v1, v3

    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    const-wide v3, 0x3fb27bb2fec56d5dL    # 0.0722

    .line 102
    mul-double/2addr p0, v3

    .line 103
    add-double/2addr v1, p0

    .line 104
    double-to-float p0, v1

    .line 105
    .line 106
    .line 107
    invoke-static {p0}, Landroidx/compose/ui/graphics/ColorKt;->k(F)F

    .line 108
    move-result p0

    .line 109
    return p0

    .line 110
    .line 111
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    const-string p1, "The specified color must be encoded in an RGB color space. The supplied color space is "

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->f()J

    .line 123
    move-result-wide v0

    .line 124
    .line 125
    .line 126
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/colorspace/ColorModel;->i(J)Ljava/lang/String;

    .line 127
    move-result-object p1

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    move-result-object p0

    .line 135
    .line 136
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 140
    move-result-object p0

    .line 141
    .line 142
    .line 143
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 144
    throw p1
.end method

.method private static final k(F)F
    .locals 2

    .line 1
    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-gtz v1, :cond_0

    :goto_0
    move p0, v0

    goto :goto_1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p0, v0

    if-ltz v1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return p0
.end method

.method public static final l(J)I
    .locals 3
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->q(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->h()Z

    .line 8
    move-result v1

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const/16 v0, 0x20

    .line 13
    ushr-long/2addr p0, v0

    .line 14
    .line 15
    .line 16
    invoke-static {p0, p1}, Lw7/f0;->b(J)J

    .line 17
    move-result-wide p0

    .line 18
    long-to-int p0, p0

    .line 19
    return p0

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/ColorKt;->h(J)[F

    .line 23
    move-result-object p0

    .line 24
    const/4 p1, 0x0

    .line 25
    const/4 v1, 0x0

    .line 26
    const/4 v2, 0x3

    .line 27
    .line 28
    .line 29
    invoke-static {v0, p1, v1, v2, p1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->i(Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;IILjava/lang/Object;)Landroidx/compose/ui/graphics/colorspace/Connector;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p0}, Landroidx/compose/ui/graphics/colorspace/Connector;->a([F)[F

    .line 34
    .line 35
    aget p1, p0, v2

    .line 36
    .line 37
    const/high16 v0, 0x437f0000    # 255.0f

    .line 38
    mul-float/2addr p1, v0

    .line 39
    .line 40
    const/high16 v2, 0x3f000000    # 0.5f

    .line 41
    add-float/2addr p1, v2

    .line 42
    float-to-int p1, p1

    .line 43
    .line 44
    shl-int/lit8 p1, p1, 0x18

    .line 45
    .line 46
    aget v1, p0, v1

    .line 47
    mul-float/2addr v1, v0

    .line 48
    add-float/2addr v1, v2

    .line 49
    float-to-int v1, v1

    .line 50
    .line 51
    shl-int/lit8 v1, v1, 0x10

    .line 52
    or-int/2addr p1, v1

    .line 53
    const/4 v1, 0x1

    .line 54
    .line 55
    aget v1, p0, v1

    .line 56
    mul-float/2addr v1, v0

    .line 57
    add-float/2addr v1, v2

    .line 58
    float-to-int v1, v1

    .line 59
    .line 60
    shl-int/lit8 v1, v1, 0x8

    .line 61
    or-int/2addr p1, v1

    .line 62
    const/4 v1, 0x2

    .line 63
    .line 64
    aget p0, p0, v1

    .line 65
    mul-float/2addr p0, v0

    .line 66
    add-float/2addr p0, v2

    .line 67
    float-to-int p0, p0

    .line 68
    or-int/2addr p0, p1

    .line 69
    return p0
.end method
