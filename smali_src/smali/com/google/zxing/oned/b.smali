.class public final Lcom/google/zxing/oned/b;
.super Lcom/google/zxing/oned/o;
.source "SourceFile"


# static fields
.field private static final ALT_START_END_CHARS:[C

.field private static final CHARS_WHICH_ARE_TEN_LENGTH_EACH_AFTER_DECODED:[C

.field private static final DEFAULT_GUARD:C

.field private static final START_END_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v1, v0, [C

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/zxing/oned/b;->START_END_CHARS:[C

    new-array v2, v0, [C

    fill-array-data v2, :array_1

    sput-object v2, Lcom/google/zxing/oned/b;->ALT_START_END_CHARS:[C

    new-array v0, v0, [C

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/zxing/oned/b;->CHARS_WHICH_ARE_TEN_LENGTH_EACH_AFTER_DECODED:[C

    const/4 v0, 0x0

    aget-char v0, v1, v0

    sput-char v0, Lcom/google/zxing/oned/b;->DEFAULT_GUARD:C

    return-void

    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
    .end array-data

    :array_1
    .array-data 2
        0x54s
        0x4es
        0x2as
        0x45s
    .end array-data

    :array_2
    .array-data 2
        0x2fs
        0x3as
        0x2bs
        0x2es
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/zxing/oned/o;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)[Z
    .locals 10

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    .line 9
    if-ge v0, v1, :cond_0

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    sget-char v1, Lcom/google/zxing/oned/b;->DEFAULT_GUARD:C

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    goto :goto_0

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .line 34
    move-result v0

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    .line 38
    move-result v0

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 42
    move-result v1

    .line 43
    sub-int/2addr v1, v3

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 47
    move-result v1

    .line 48
    .line 49
    .line 50
    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    .line 51
    move-result v1

    .line 52
    .line 53
    sget-object v4, Lcom/google/zxing/oned/b;->START_END_CHARS:[C

    .line 54
    .line 55
    .line 56
    invoke-static {v4, v0}, Lcom/google/zxing/oned/a;->a([CC)Z

    .line 57
    move-result v5

    .line 58
    .line 59
    .line 60
    invoke-static {v4, v1}, Lcom/google/zxing/oned/a;->a([CC)Z

    .line 61
    move-result v4

    .line 62
    .line 63
    sget-object v6, Lcom/google/zxing/oned/b;->ALT_START_END_CHARS:[C

    .line 64
    .line 65
    .line 66
    invoke-static {v6, v0}, Lcom/google/zxing/oned/a;->a([CC)Z

    .line 67
    move-result v0

    .line 68
    .line 69
    .line 70
    invoke-static {v6, v1}, Lcom/google/zxing/oned/a;->a([CC)Z

    .line 71
    move-result v1

    .line 72
    .line 73
    const-string v6, "Invalid start/end guards: "

    .line 74
    .line 75
    if-eqz v5, :cond_2

    .line 76
    .line 77
    if-eqz v4, :cond_1

    .line 78
    goto :goto_0

    .line 79
    .line 80
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v6, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    move-result-object p1

    .line 85
    .line 86
    .line 87
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 88
    throw v0

    .line 89
    .line 90
    :cond_2
    if-eqz v0, :cond_4

    .line 91
    .line 92
    if-eqz v1, :cond_3

    .line 93
    goto :goto_0

    .line 94
    .line 95
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v6, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    move-result-object p1

    .line 100
    .line 101
    .line 102
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 103
    throw v0

    .line 104
    .line 105
    :cond_4
    if-nez v4, :cond_16

    .line 106
    .line 107
    if-nez v1, :cond_16

    .line 108
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    sget-char v1, Lcom/google/zxing/oned/b;->DEFAULT_GUARD:C

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    move-result-object p1

    .line 128
    .line 129
    :goto_0
    const/16 v0, 0x14

    .line 130
    move v1, v3

    .line 131
    .line 132
    .line 133
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 134
    move-result v4

    .line 135
    sub-int/2addr v4, v3

    .line 136
    .line 137
    if-ge v1, v4, :cond_8

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 141
    move-result v4

    .line 142
    .line 143
    .line 144
    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    .line 145
    move-result v4

    .line 146
    .line 147
    if-nez v4, :cond_7

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 151
    move-result v4

    .line 152
    .line 153
    const/16 v5, 0x2d

    .line 154
    .line 155
    if-eq v4, v5, :cond_7

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 159
    move-result v4

    .line 160
    .line 161
    const/16 v5, 0x24

    .line 162
    .line 163
    if-ne v4, v5, :cond_5

    .line 164
    goto :goto_2

    .line 165
    .line 166
    :cond_5
    sget-object v4, Lcom/google/zxing/oned/b;->CHARS_WHICH_ARE_TEN_LENGTH_EACH_AFTER_DECODED:[C

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 170
    move-result v5

    .line 171
    .line 172
    .line 173
    invoke-static {v4, v5}, Lcom/google/zxing/oned/a;->a([CC)Z

    .line 174
    move-result v4

    .line 175
    .line 176
    if-eqz v4, :cond_6

    .line 177
    .line 178
    add-int/lit8 v0, v0, 0xa

    .line 179
    goto :goto_3

    .line 180
    .line 181
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 182
    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    const-string v3, "Cannot encode : \'"

    .line 186
    .line 187
    .line 188
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 192
    move-result p1

    .line 193
    .line 194
    .line 195
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    const/16 p1, 0x27

    .line 198
    .line 199
    .line 200
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    move-result-object p1

    .line 205
    .line 206
    .line 207
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 208
    throw v0

    .line 209
    .line 210
    :cond_7
    :goto_2
    add-int/lit8 v0, v0, 0x9

    .line 211
    .line 212
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 213
    goto :goto_1

    .line 214
    .line 215
    .line 216
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 217
    move-result v1

    .line 218
    sub-int/2addr v1, v3

    .line 219
    add-int/2addr v0, v1

    .line 220
    .line 221
    new-array v0, v0, [Z

    .line 222
    move v1, v2

    .line 223
    move v4, v1

    .line 224
    .line 225
    .line 226
    :goto_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 227
    move-result v5

    .line 228
    .line 229
    if-ge v1, v5, :cond_15

    .line 230
    .line 231
    .line 232
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 233
    move-result v5

    .line 234
    .line 235
    .line 236
    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    .line 237
    move-result v5

    .line 238
    .line 239
    if-eqz v1, :cond_9

    .line 240
    .line 241
    .line 242
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 243
    move-result v6

    .line 244
    sub-int/2addr v6, v3

    .line 245
    .line 246
    if-ne v1, v6, :cond_e

    .line 247
    .line 248
    :cond_9
    const/16 v6, 0x2a

    .line 249
    .line 250
    if-eq v5, v6, :cond_d

    .line 251
    .line 252
    const/16 v6, 0x45

    .line 253
    .line 254
    if-eq v5, v6, :cond_c

    .line 255
    .line 256
    const/16 v6, 0x4e

    .line 257
    .line 258
    if-eq v5, v6, :cond_b

    .line 259
    .line 260
    const/16 v6, 0x54

    .line 261
    .line 262
    if-eq v5, v6, :cond_a

    .line 263
    goto :goto_5

    .line 264
    .line 265
    :cond_a
    const/16 v5, 0x41

    .line 266
    goto :goto_5

    .line 267
    .line 268
    :cond_b
    const/16 v5, 0x42

    .line 269
    goto :goto_5

    .line 270
    .line 271
    :cond_c
    const/16 v5, 0x44

    .line 272
    goto :goto_5

    .line 273
    .line 274
    :cond_d
    const/16 v5, 0x43

    .line 275
    :cond_e
    :goto_5
    move v6, v2

    .line 276
    .line 277
    :goto_6
    sget-object v7, Lcom/google/zxing/oned/a;->ALPHABET:[C

    .line 278
    array-length v8, v7

    .line 279
    .line 280
    if-ge v6, v8, :cond_10

    .line 281
    .line 282
    aget-char v7, v7, v6

    .line 283
    .line 284
    if-ne v5, v7, :cond_f

    .line 285
    .line 286
    sget-object v5, Lcom/google/zxing/oned/a;->CHARACTER_ENCODINGS:[I

    .line 287
    .line 288
    aget v5, v5, v6

    .line 289
    goto :goto_7

    .line 290
    .line 291
    :cond_f
    add-int/lit8 v6, v6, 0x1

    .line 292
    goto :goto_6

    .line 293
    :cond_10
    move v5, v2

    .line 294
    :goto_7
    move v6, v2

    .line 295
    move v8, v6

    .line 296
    move v7, v3

    .line 297
    :goto_8
    const/4 v9, 0x7

    .line 298
    .line 299
    if-ge v6, v9, :cond_13

    .line 300
    .line 301
    aput-boolean v7, v0, v4

    .line 302
    .line 303
    add-int/lit8 v4, v4, 0x1

    .line 304
    .line 305
    rsub-int/lit8 v9, v6, 0x6

    .line 306
    .line 307
    shr-int v9, v5, v9

    .line 308
    and-int/2addr v9, v3

    .line 309
    .line 310
    if-eqz v9, :cond_12

    .line 311
    .line 312
    if-ne v8, v3, :cond_11

    .line 313
    goto :goto_9

    .line 314
    .line 315
    :cond_11
    add-int/lit8 v8, v8, 0x1

    .line 316
    goto :goto_8

    .line 317
    .line 318
    :cond_12
    :goto_9
    xor-int/lit8 v7, v7, 0x1

    .line 319
    .line 320
    add-int/lit8 v6, v6, 0x1

    .line 321
    move v8, v2

    .line 322
    goto :goto_8

    .line 323
    .line 324
    .line 325
    :cond_13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 326
    move-result v5

    .line 327
    sub-int/2addr v5, v3

    .line 328
    .line 329
    if-ge v1, v5, :cond_14

    .line 330
    .line 331
    aput-boolean v2, v0, v4

    .line 332
    .line 333
    add-int/lit8 v4, v4, 0x1

    .line 334
    .line 335
    :cond_14
    add-int/lit8 v1, v1, 0x1

    .line 336
    goto :goto_4

    .line 337
    :cond_15
    return-object v0

    .line 338
    .line 339
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v6, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 343
    move-result-object p1

    .line 344
    .line 345
    .line 346
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 347
    throw v0
.end method
