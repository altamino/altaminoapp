.class final Landroidx/compose/ui/graphics/Api26Bitmap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/graphics/Api26Bitmap;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/graphics/Api26Bitmap;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/Api26Bitmap;-><init>()V

    sput-object v0, Landroidx/compose/ui/graphics/Api26Bitmap;->INSTANCE:Landroidx/compose/ui/graphics/Api26Bitmap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static final a(Landroid/graphics/Bitmap;)Landroidx/compose/ui/graphics/colorspace/ColorSpace;
    .locals 1
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/DoNotInline;
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
    invoke-static {p0}, Landroidx/compose/ui/graphics/p0;->a(Landroid/graphics/Bitmap;)Landroid/graphics/ColorSpace;

    .line 9
    move-result-object p0

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-static {p0}, Landroidx/compose/ui/graphics/Api26Bitmap;->b(Landroid/graphics/ColorSpace;)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    .line 15
    move-result-object p0

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->s()Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 24
    move-result-object p0

    .line 25
    :goto_0
    return-object p0
.end method

.method public static final b(Landroid/graphics/ColorSpace;)Landroidx/compose/ui/graphics/colorspace/ColorSpace;
    .locals 1
    .param p0    # Landroid/graphics/ColorSpace;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/DoNotInline;
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
    invoke-static {}, Landroidx/compose/ui/graphics/q0;->a()Landroid/graphics/ColorSpace$Named;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Landroidx/compose/ui/graphics/x0;->a(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->s()Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 25
    move-result-object p0

    .line 26
    .line 27
    goto/16 :goto_0

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-static {}, Landroidx/compose/ui/graphics/y0;->a()Landroid/graphics/ColorSpace$Named;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Landroidx/compose/ui/graphics/x0;->a(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    move-result v0

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->a()Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 47
    move-result-object p0

    .line 48
    .line 49
    goto/16 :goto_0

    .line 50
    .line 51
    .line 52
    :cond_1
    invoke-static {}, Landroidx/compose/ui/graphics/h0;->a()Landroid/graphics/ColorSpace$Named;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    .line 56
    invoke-static {v0}, Landroidx/compose/ui/graphics/x0;->a(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    .line 60
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    move-result v0

    .line 62
    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->b()Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 69
    move-result-object p0

    .line 70
    .line 71
    goto/16 :goto_0

    .line 72
    .line 73
    .line 74
    :cond_2
    invoke-static {}, Landroidx/compose/ui/graphics/i0;->a()Landroid/graphics/ColorSpace$Named;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    .line 78
    invoke-static {v0}, Landroidx/compose/ui/graphics/x0;->a(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    .line 79
    move-result-object v0

    .line 80
    .line 81
    .line 82
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 83
    move-result v0

    .line 84
    .line 85
    if-eqz v0, :cond_3

    .line 86
    .line 87
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->c()Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 91
    move-result-object p0

    .line 92
    .line 93
    goto/16 :goto_0

    .line 94
    .line 95
    .line 96
    :cond_3
    invoke-static {}, Landroidx/compose/ui/graphics/j0;->a()Landroid/graphics/ColorSpace$Named;

    .line 97
    move-result-object v0

    .line 98
    .line 99
    .line 100
    invoke-static {v0}, Landroidx/compose/ui/graphics/x0;->a(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    .line 101
    move-result-object v0

    .line 102
    .line 103
    .line 104
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 105
    move-result v0

    .line 106
    .line 107
    if-eqz v0, :cond_4

    .line 108
    .line 109
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->d()Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 113
    move-result-object p0

    .line 114
    .line 115
    goto/16 :goto_0

    .line 116
    .line 117
    .line 118
    :cond_4
    invoke-static {}, Landroidx/compose/ui/graphics/k0;->a()Landroid/graphics/ColorSpace$Named;

    .line 119
    move-result-object v0

    .line 120
    .line 121
    .line 122
    invoke-static {v0}, Landroidx/compose/ui/graphics/x0;->a(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    .line 123
    move-result-object v0

    .line 124
    .line 125
    .line 126
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 127
    move-result v0

    .line 128
    .line 129
    if-eqz v0, :cond_5

    .line 130
    .line 131
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->e()Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 135
    move-result-object p0

    .line 136
    .line 137
    goto/16 :goto_0

    .line 138
    .line 139
    .line 140
    :cond_5
    invoke-static {}, Landroidx/compose/ui/graphics/l0;->a()Landroid/graphics/ColorSpace$Named;

    .line 141
    move-result-object v0

    .line 142
    .line 143
    .line 144
    invoke-static {v0}, Landroidx/compose/ui/graphics/x0;->a(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    .line 145
    move-result-object v0

    .line 146
    .line 147
    .line 148
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 149
    move-result v0

    .line 150
    .line 151
    if-eqz v0, :cond_6

    .line 152
    .line 153
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->f()Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    .line 157
    move-result-object p0

    .line 158
    .line 159
    goto/16 :goto_0

    .line 160
    .line 161
    .line 162
    :cond_6
    invoke-static {}, Landroidx/compose/ui/graphics/m0;->a()Landroid/graphics/ColorSpace$Named;

    .line 163
    move-result-object v0

    .line 164
    .line 165
    .line 166
    invoke-static {v0}, Landroidx/compose/ui/graphics/x0;->a(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    .line 167
    move-result-object v0

    .line 168
    .line 169
    .line 170
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 171
    move-result v0

    .line 172
    .line 173
    if-eqz v0, :cond_7

    .line 174
    .line 175
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->g()Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    .line 179
    move-result-object p0

    .line 180
    .line 181
    goto/16 :goto_0

    .line 182
    .line 183
    .line 184
    :cond_7
    invoke-static {}, Landroidx/compose/ui/graphics/n0;->a()Landroid/graphics/ColorSpace$Named;

    .line 185
    move-result-object v0

    .line 186
    .line 187
    .line 188
    invoke-static {v0}, Landroidx/compose/ui/graphics/x0;->a(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    .line 189
    move-result-object v0

    .line 190
    .line 191
    .line 192
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 193
    move-result v0

    .line 194
    .line 195
    if-eqz v0, :cond_8

    .line 196
    .line 197
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    .line 198
    .line 199
    .line 200
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->i()Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 201
    move-result-object p0

    .line 202
    .line 203
    goto/16 :goto_0

    .line 204
    .line 205
    .line 206
    :cond_8
    invoke-static {}, Landroidx/compose/ui/graphics/o0;->a()Landroid/graphics/ColorSpace$Named;

    .line 207
    move-result-object v0

    .line 208
    .line 209
    .line 210
    invoke-static {v0}, Landroidx/compose/ui/graphics/x0;->a(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    .line 211
    move-result-object v0

    .line 212
    .line 213
    .line 214
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 215
    move-result v0

    .line 216
    .line 217
    if-eqz v0, :cond_9

    .line 218
    .line 219
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    .line 220
    .line 221
    .line 222
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->j()Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 223
    move-result-object p0

    .line 224
    .line 225
    goto/16 :goto_0

    .line 226
    .line 227
    .line 228
    :cond_9
    invoke-static {}, Landroidx/compose/ui/graphics/r0;->a()Landroid/graphics/ColorSpace$Named;

    .line 229
    move-result-object v0

    .line 230
    .line 231
    .line 232
    invoke-static {v0}, Landroidx/compose/ui/graphics/x0;->a(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    .line 233
    move-result-object v0

    .line 234
    .line 235
    .line 236
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 237
    move-result v0

    .line 238
    .line 239
    if-eqz v0, :cond_a

    .line 240
    .line 241
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    .line 242
    .line 243
    .line 244
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->k()Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 245
    move-result-object p0

    .line 246
    .line 247
    goto/16 :goto_0

    .line 248
    .line 249
    .line 250
    :cond_a
    invoke-static {}, Landroidx/compose/ui/graphics/s0;->a()Landroid/graphics/ColorSpace$Named;

    .line 251
    move-result-object v0

    .line 252
    .line 253
    .line 254
    invoke-static {v0}, Landroidx/compose/ui/graphics/x0;->a(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    .line 255
    move-result-object v0

    .line 256
    .line 257
    .line 258
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 259
    move-result v0

    .line 260
    .line 261
    if-eqz v0, :cond_b

    .line 262
    .line 263
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    .line 264
    .line 265
    .line 266
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->l()Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 267
    move-result-object p0

    .line 268
    goto :goto_0

    .line 269
    .line 270
    .line 271
    :cond_b
    invoke-static {}, Landroidx/compose/ui/graphics/t0;->a()Landroid/graphics/ColorSpace$Named;

    .line 272
    move-result-object v0

    .line 273
    .line 274
    .line 275
    invoke-static {v0}, Landroidx/compose/ui/graphics/x0;->a(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    .line 276
    move-result-object v0

    .line 277
    .line 278
    .line 279
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 280
    move-result v0

    .line 281
    .line 282
    if-eqz v0, :cond_c

    .line 283
    .line 284
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    .line 285
    .line 286
    .line 287
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->m()Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 288
    move-result-object p0

    .line 289
    goto :goto_0

    .line 290
    .line 291
    .line 292
    :cond_c
    invoke-static {}, Landroidx/compose/ui/graphics/u0;->a()Landroid/graphics/ColorSpace$Named;

    .line 293
    move-result-object v0

    .line 294
    .line 295
    .line 296
    invoke-static {v0}, Landroidx/compose/ui/graphics/x0;->a(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    .line 297
    move-result-object v0

    .line 298
    .line 299
    .line 300
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 301
    move-result v0

    .line 302
    .line 303
    if-eqz v0, :cond_d

    .line 304
    .line 305
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    .line 306
    .line 307
    .line 308
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->n()Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 309
    move-result-object p0

    .line 310
    goto :goto_0

    .line 311
    .line 312
    .line 313
    :cond_d
    invoke-static {}, Landroidx/compose/ui/graphics/v0;->a()Landroid/graphics/ColorSpace$Named;

    .line 314
    move-result-object v0

    .line 315
    .line 316
    .line 317
    invoke-static {v0}, Landroidx/compose/ui/graphics/x0;->a(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    .line 318
    move-result-object v0

    .line 319
    .line 320
    .line 321
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 322
    move-result v0

    .line 323
    .line 324
    if-eqz v0, :cond_e

    .line 325
    .line 326
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    .line 327
    .line 328
    .line 329
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->q()Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 330
    move-result-object p0

    .line 331
    goto :goto_0

    .line 332
    .line 333
    .line 334
    :cond_e
    invoke-static {}, Landroidx/compose/ui/graphics/w0;->a()Landroid/graphics/ColorSpace$Named;

    .line 335
    move-result-object v0

    .line 336
    .line 337
    .line 338
    invoke-static {v0}, Landroidx/compose/ui/graphics/x0;->a(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    .line 339
    move-result-object v0

    .line 340
    .line 341
    .line 342
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 343
    move-result p0

    .line 344
    .line 345
    if-eqz p0, :cond_f

    .line 346
    .line 347
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    .line 348
    .line 349
    .line 350
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->r()Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 351
    move-result-object p0

    .line 352
    goto :goto_0

    .line 353
    .line 354
    :cond_f
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    .line 355
    .line 356
    .line 357
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->s()Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 358
    move-result-object p0

    .line 359
    :goto_0
    return-object p0
.end method

.method public static final c(IIIZLandroidx/compose/ui/graphics/colorspace/ColorSpace;)Landroid/graphics/Bitmap;
    .locals 7
    .param p4    # Landroidx/compose/ui/graphics/colorspace/ColorSpace;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "colorSpace"

    .line 3
    .line 4
    .line 5
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    .line 9
    invoke-static {p2}, Landroidx/compose/ui/graphics/AndroidImageBitmap_androidKt;->d(I)Landroid/graphics/Bitmap$Config;

    .line 10
    move-result-object v4

    .line 11
    .line 12
    .line 13
    invoke-static {p4}, Landroidx/compose/ui/graphics/Api26Bitmap;->d(Landroidx/compose/ui/graphics/colorspace/ColorSpace;)Landroid/graphics/ColorSpace;

    .line 14
    move-result-object v6

    .line 15
    move v2, p0

    .line 16
    move v3, p1

    .line 17
    move v5, p3

    .line 18
    .line 19
    .line 20
    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/graphics/g0;->a(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;ZLandroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    .line 21
    move-result-object p0

    .line 22
    .line 23
    const-string p1, "createBitmap(\n          \u2026orkColorSpace()\n        )"

    .line 24
    .line 25
    .line 26
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    return-object p0
.end method

.method public static final d(Landroidx/compose/ui/graphics/colorspace/ColorSpace;)Landroid/graphics/ColorSpace;
    .locals 2
    .param p0    # Landroidx/compose/ui/graphics/colorspace/ColorSpace;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/DoNotInline;
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
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->s()Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-static {p0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    move-result v1

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-static {}, Landroidx/compose/ui/graphics/q0;->a()Landroid/graphics/ColorSpace$Named;

    .line 21
    move-result-object p0

    .line 22
    .line 23
    goto/16 :goto_0

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->a()Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    .line 30
    invoke-static {p0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    move-result v1

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-static {}, Landroidx/compose/ui/graphics/y0;->a()Landroid/graphics/ColorSpace$Named;

    .line 37
    move-result-object p0

    .line 38
    .line 39
    goto/16 :goto_0

    .line 40
    .line 41
    .line 42
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->b()Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    .line 46
    invoke-static {p0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    move-result v1

    .line 48
    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    .line 52
    invoke-static {}, Landroidx/compose/ui/graphics/h0;->a()Landroid/graphics/ColorSpace$Named;

    .line 53
    move-result-object p0

    .line 54
    .line 55
    goto/16 :goto_0

    .line 56
    .line 57
    .line 58
    :cond_2
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->c()Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 59
    move-result-object v1

    .line 60
    .line 61
    .line 62
    invoke-static {p0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    move-result v1

    .line 64
    .line 65
    if-eqz v1, :cond_3

    .line 66
    .line 67
    .line 68
    invoke-static {}, Landroidx/compose/ui/graphics/i0;->a()Landroid/graphics/ColorSpace$Named;

    .line 69
    move-result-object p0

    .line 70
    .line 71
    goto/16 :goto_0

    .line 72
    .line 73
    .line 74
    :cond_3
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->d()Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 75
    move-result-object v1

    .line 76
    .line 77
    .line 78
    invoke-static {p0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 79
    move-result v1

    .line 80
    .line 81
    if-eqz v1, :cond_4

    .line 82
    .line 83
    .line 84
    invoke-static {}, Landroidx/compose/ui/graphics/j0;->a()Landroid/graphics/ColorSpace$Named;

    .line 85
    move-result-object p0

    .line 86
    .line 87
    goto/16 :goto_0

    .line 88
    .line 89
    .line 90
    :cond_4
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->e()Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 91
    move-result-object v1

    .line 92
    .line 93
    .line 94
    invoke-static {p0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    move-result v1

    .line 96
    .line 97
    if-eqz v1, :cond_5

    .line 98
    .line 99
    .line 100
    invoke-static {}, Landroidx/compose/ui/graphics/k0;->a()Landroid/graphics/ColorSpace$Named;

    .line 101
    move-result-object p0

    .line 102
    .line 103
    goto/16 :goto_0

    .line 104
    .line 105
    .line 106
    :cond_5
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->f()Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    .line 107
    move-result-object v1

    .line 108
    .line 109
    .line 110
    invoke-static {p0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 111
    move-result v1

    .line 112
    .line 113
    if-eqz v1, :cond_6

    .line 114
    .line 115
    .line 116
    invoke-static {}, Landroidx/compose/ui/graphics/l0;->a()Landroid/graphics/ColorSpace$Named;

    .line 117
    move-result-object p0

    .line 118
    .line 119
    goto/16 :goto_0

    .line 120
    .line 121
    .line 122
    :cond_6
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->g()Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    .line 123
    move-result-object v1

    .line 124
    .line 125
    .line 126
    invoke-static {p0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 127
    move-result v1

    .line 128
    .line 129
    if-eqz v1, :cond_7

    .line 130
    .line 131
    .line 132
    invoke-static {}, Landroidx/compose/ui/graphics/m0;->a()Landroid/graphics/ColorSpace$Named;

    .line 133
    move-result-object p0

    .line 134
    .line 135
    goto/16 :goto_0

    .line 136
    .line 137
    .line 138
    :cond_7
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->i()Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 139
    move-result-object v1

    .line 140
    .line 141
    .line 142
    invoke-static {p0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 143
    move-result v1

    .line 144
    .line 145
    if-eqz v1, :cond_8

    .line 146
    .line 147
    .line 148
    invoke-static {}, Landroidx/compose/ui/graphics/n0;->a()Landroid/graphics/ColorSpace$Named;

    .line 149
    move-result-object p0

    .line 150
    .line 151
    goto/16 :goto_0

    .line 152
    .line 153
    .line 154
    :cond_8
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->j()Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 155
    move-result-object v1

    .line 156
    .line 157
    .line 158
    invoke-static {p0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 159
    move-result v1

    .line 160
    .line 161
    if-eqz v1, :cond_9

    .line 162
    .line 163
    .line 164
    invoke-static {}, Landroidx/compose/ui/graphics/o0;->a()Landroid/graphics/ColorSpace$Named;

    .line 165
    move-result-object p0

    .line 166
    goto :goto_0

    .line 167
    .line 168
    .line 169
    :cond_9
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->k()Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 170
    move-result-object v1

    .line 171
    .line 172
    .line 173
    invoke-static {p0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 174
    move-result v1

    .line 175
    .line 176
    if-eqz v1, :cond_a

    .line 177
    .line 178
    .line 179
    invoke-static {}, Landroidx/compose/ui/graphics/r0;->a()Landroid/graphics/ColorSpace$Named;

    .line 180
    move-result-object p0

    .line 181
    goto :goto_0

    .line 182
    .line 183
    .line 184
    :cond_a
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->l()Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 185
    move-result-object v1

    .line 186
    .line 187
    .line 188
    invoke-static {p0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 189
    move-result v1

    .line 190
    .line 191
    if-eqz v1, :cond_b

    .line 192
    .line 193
    .line 194
    invoke-static {}, Landroidx/compose/ui/graphics/s0;->a()Landroid/graphics/ColorSpace$Named;

    .line 195
    move-result-object p0

    .line 196
    goto :goto_0

    .line 197
    .line 198
    .line 199
    :cond_b
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->m()Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 200
    move-result-object v1

    .line 201
    .line 202
    .line 203
    invoke-static {p0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 204
    move-result v1

    .line 205
    .line 206
    if-eqz v1, :cond_c

    .line 207
    .line 208
    .line 209
    invoke-static {}, Landroidx/compose/ui/graphics/t0;->a()Landroid/graphics/ColorSpace$Named;

    .line 210
    move-result-object p0

    .line 211
    goto :goto_0

    .line 212
    .line 213
    .line 214
    :cond_c
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->n()Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 215
    move-result-object v1

    .line 216
    .line 217
    .line 218
    invoke-static {p0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 219
    move-result v1

    .line 220
    .line 221
    if-eqz v1, :cond_d

    .line 222
    .line 223
    .line 224
    invoke-static {}, Landroidx/compose/ui/graphics/u0;->a()Landroid/graphics/ColorSpace$Named;

    .line 225
    move-result-object p0

    .line 226
    goto :goto_0

    .line 227
    .line 228
    .line 229
    :cond_d
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->q()Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 230
    move-result-object v1

    .line 231
    .line 232
    .line 233
    invoke-static {p0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 234
    move-result v1

    .line 235
    .line 236
    if-eqz v1, :cond_e

    .line 237
    .line 238
    .line 239
    invoke-static {}, Landroidx/compose/ui/graphics/v0;->a()Landroid/graphics/ColorSpace$Named;

    .line 240
    move-result-object p0

    .line 241
    goto :goto_0

    .line 242
    .line 243
    .line 244
    :cond_e
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->r()Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 245
    move-result-object v0

    .line 246
    .line 247
    .line 248
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 249
    move-result p0

    .line 250
    .line 251
    if-eqz p0, :cond_f

    .line 252
    .line 253
    .line 254
    invoke-static {}, Landroidx/compose/ui/graphics/w0;->a()Landroid/graphics/ColorSpace$Named;

    .line 255
    move-result-object p0

    .line 256
    goto :goto_0

    .line 257
    .line 258
    .line 259
    :cond_f
    invoke-static {}, Landroidx/compose/ui/graphics/q0;->a()Landroid/graphics/ColorSpace$Named;

    .line 260
    move-result-object p0

    .line 261
    .line 262
    .line 263
    :goto_0
    invoke-static {p0}, Landroidx/compose/ui/graphics/x0;->a(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    .line 264
    move-result-object p0

    .line 265
    .line 266
    const-string v0, "get(frameworkNamedSpace)"

    .line 267
    .line 268
    .line 269
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    return-object p0
.end method
