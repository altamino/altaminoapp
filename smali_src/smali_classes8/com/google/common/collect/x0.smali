.class final Lcom/google/common/collect/x0;
.super Lcom/google/common/collect/b0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/x0$b;,
        Lcom/google/common/collect/x0$c;,
        Lcom/google/common/collect/x0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/b0<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final ABSENT:B = -0x1t

.field private static final BYTE_MASK:I = 0xff

.field private static final BYTE_MAX_SIZE:I = 0x80

.field static final EMPTY:Lcom/google/common/collect/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/b0<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final SHORT_MASK:I = 0xffff

.field private static final SHORT_MAX_SIZE:I = 0x8000

.field private static final serialVersionUID:J


# instance fields
.field final transient alternatingKeysAndValues:[Ljava/lang/Object;

.field private final transient hashTable:Ljava/lang/Object;

.field private final transient size:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/google/common/collect/x0;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    new-array v2, v1, [Ljava/lang/Object;

    .line 6
    const/4 v3, 0x0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v3, v2, v1}, Lcom/google/common/collect/x0;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    .line 10
    .line 11
    sput-object v0, Lcom/google/common/collect/x0;->EMPTY:Lcom/google/common/collect/b0;

    .line 12
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;[Ljava/lang/Object;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/common/collect/b0;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/common/collect/x0;->hashTable:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/google/common/collect/x0;->alternatingKeysAndValues:[Ljava/lang/Object;

    .line 8
    .line 9
    iput p3, p0, Lcom/google/common/collect/x0;->size:I

    .line 10
    return-void
.end method

.method static o(I[Ljava/lang/Object;Lcom/google/common/collect/b0$a;)Lcom/google/common/collect/x0;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I[",
            "Ljava/lang/Object;",
            "Lcom/google/common/collect/b0$a<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/x0<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    sget-object p0, Lcom/google/common/collect/x0;->EMPTY:Lcom/google/common/collect/b0;

    .line 5
    .line 6
    check-cast p0, Lcom/google/common/collect/x0;

    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    const/4 v1, 0x1

    .line 10
    .line 11
    if-ne p0, v1, :cond_1

    .line 12
    .line 13
    aget-object p0, p1, v0

    .line 14
    .line 15
    .line 16
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    aget-object p2, p1, v1

    .line 19
    .line 20
    .line 21
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    invoke-static {p0, p2}, Lcom/google/common/collect/k;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 25
    .line 26
    new-instance p0, Lcom/google/common/collect/x0;

    .line 27
    const/4 p2, 0x0

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, p2, p1, v1}, Lcom/google/common/collect/x0;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    .line 31
    return-object p0

    .line 32
    :cond_1
    array-length v2, p1

    .line 33
    shr-int/2addr v2, v1

    .line 34
    .line 35
    .line 36
    invoke-static {p0, v2}, Lcom/google/common/base/o;->m(II)I

    .line 37
    .line 38
    .line 39
    invoke-static {p0}, Lcom/google/common/collect/d0;->r(I)I

    .line 40
    move-result v2

    .line 41
    .line 42
    .line 43
    invoke-static {p1, p0, v2, v0}, Lcom/google/common/collect/x0;->p([Ljava/lang/Object;III)Ljava/lang/Object;

    .line 44
    move-result-object v2

    .line 45
    .line 46
    instance-of v3, v2, [Ljava/lang/Object;

    .line 47
    .line 48
    if-eqz v3, :cond_3

    .line 49
    .line 50
    check-cast v2, [Ljava/lang/Object;

    .line 51
    const/4 p0, 0x2

    .line 52
    .line 53
    aget-object p0, v2, p0

    .line 54
    .line 55
    check-cast p0, Lcom/google/common/collect/b0$a$a;

    .line 56
    .line 57
    if-eqz p2, :cond_2

    .line 58
    .line 59
    iput-object p0, p2, Lcom/google/common/collect/b0$a;->duplicateKey:Lcom/google/common/collect/b0$a$a;

    .line 60
    .line 61
    aget-object p0, v2, v0

    .line 62
    .line 63
    aget-object p2, v2, v1

    .line 64
    .line 65
    check-cast p2, Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 69
    move-result p2

    .line 70
    .line 71
    mul-int/lit8 v0, p2, 0x2

    .line 72
    .line 73
    .line 74
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 75
    move-result-object p1

    .line 76
    move-object v2, p0

    .line 77
    move p0, p2

    .line 78
    goto :goto_0

    .line 79
    .line 80
    .line 81
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/collect/b0$a$a;->a()Ljava/lang/IllegalArgumentException;

    .line 82
    move-result-object p0

    .line 83
    throw p0

    .line 84
    .line 85
    :cond_3
    :goto_0
    new-instance p2, Lcom/google/common/collect/x0;

    .line 86
    .line 87
    .line 88
    invoke-direct {p2, v2, p1, p0}, Lcom/google/common/collect/x0;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    .line 89
    return-object p2
.end method

.method private static p([Ljava/lang/Object;III)Ljava/lang/Object;
    .locals 16

    .line 1
    .line 2
    move/from16 v0, p1

    .line 3
    .line 4
    move/from16 v1, p2

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    .line 8
    if-ne v0, v3, :cond_0

    .line 9
    .line 10
    aget-object v0, p0, p3

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    xor-int/lit8 v1, p3, 0x1

    .line 16
    .line 17
    aget-object v1, p0, v1

    .line 18
    .line 19
    .line 20
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1}, Lcom/google/common/collect/k;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 24
    return-object v2

    .line 25
    .line 26
    :cond_0
    add-int/lit8 v4, v1, -0x1

    .line 27
    .line 28
    const/16 v5, 0x80

    .line 29
    const/4 v6, 0x3

    .line 30
    const/4 v7, -0x1

    .line 31
    const/4 v8, 0x2

    .line 32
    const/4 v9, 0x0

    .line 33
    .line 34
    if-gt v1, v5, :cond_6

    .line 35
    .line 36
    new-array v1, v1, [B

    .line 37
    .line 38
    .line 39
    invoke-static {v1, v7}, Ljava/util/Arrays;->fill([BB)V

    .line 40
    move v5, v9

    .line 41
    move v7, v5

    .line 42
    .line 43
    :goto_0
    if-ge v5, v0, :cond_4

    .line 44
    .line 45
    mul-int/lit8 v10, v5, 0x2

    .line 46
    .line 47
    add-int v10, v10, p3

    .line 48
    .line 49
    mul-int/lit8 v11, v7, 0x2

    .line 50
    .line 51
    add-int v11, v11, p3

    .line 52
    .line 53
    aget-object v12, p0, v10

    .line 54
    .line 55
    .line 56
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    xor-int/2addr v10, v3

    .line 58
    .line 59
    aget-object v10, p0, v10

    .line 60
    .line 61
    .line 62
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    invoke-static {v12, v10}, Lcom/google/common/collect/k;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    .line 69
    move-result v13

    .line 70
    .line 71
    .line 72
    invoke-static {v13}, Lcom/google/common/collect/x;->b(I)I

    .line 73
    move-result v13

    .line 74
    :goto_1
    and-int/2addr v13, v4

    .line 75
    .line 76
    aget-byte v14, v1, v13

    .line 77
    .line 78
    const/16 v15, 0xff

    .line 79
    and-int/2addr v14, v15

    .line 80
    .line 81
    if-ne v14, v15, :cond_2

    .line 82
    int-to-byte v14, v11

    .line 83
    .line 84
    aput-byte v14, v1, v13

    .line 85
    .line 86
    if-ge v7, v5, :cond_1

    .line 87
    .line 88
    aput-object v12, p0, v11

    .line 89
    .line 90
    xor-int/lit8 v11, v11, 0x1

    .line 91
    .line 92
    aput-object v10, p0, v11

    .line 93
    .line 94
    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 95
    goto :goto_2

    .line 96
    .line 97
    :cond_2
    aget-object v15, p0, v14

    .line 98
    .line 99
    .line 100
    invoke-virtual {v12, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 101
    move-result v15

    .line 102
    .line 103
    if-eqz v15, :cond_3

    .line 104
    .line 105
    new-instance v2, Lcom/google/common/collect/b0$a$a;

    .line 106
    .line 107
    xor-int/lit8 v11, v14, 0x1

    .line 108
    .line 109
    aget-object v13, p0, v11

    .line 110
    .line 111
    .line 112
    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    invoke-direct {v2, v12, v10, v13}, Lcom/google/common/collect/b0$a$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 116
    .line 117
    aput-object v10, p0, v11

    .line 118
    .line 119
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 120
    goto :goto_0

    .line 121
    .line 122
    :cond_3
    add-int/lit8 v13, v13, 0x1

    .line 123
    goto :goto_1

    .line 124
    .line 125
    :cond_4
    if-ne v7, v0, :cond_5

    .line 126
    goto :goto_3

    .line 127
    .line 128
    :cond_5
    new-array v0, v6, [Ljava/lang/Object;

    .line 129
    .line 130
    aput-object v1, v0, v9

    .line 131
    .line 132
    .line 133
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    move-result-object v1

    .line 135
    .line 136
    aput-object v1, v0, v3

    .line 137
    .line 138
    aput-object v2, v0, v8

    .line 139
    move-object v1, v0

    .line 140
    :goto_3
    return-object v1

    .line 141
    .line 142
    .line 143
    :cond_6
    const v5, 0x8000

    .line 144
    .line 145
    if-gt v1, v5, :cond_c

    .line 146
    .line 147
    new-array v1, v1, [S

    .line 148
    .line 149
    .line 150
    invoke-static {v1, v7}, Ljava/util/Arrays;->fill([SS)V

    .line 151
    move v5, v9

    .line 152
    move v7, v5

    .line 153
    .line 154
    :goto_4
    if-ge v5, v0, :cond_a

    .line 155
    .line 156
    mul-int/lit8 v10, v5, 0x2

    .line 157
    .line 158
    add-int v10, v10, p3

    .line 159
    .line 160
    mul-int/lit8 v11, v7, 0x2

    .line 161
    .line 162
    add-int v11, v11, p3

    .line 163
    .line 164
    aget-object v12, p0, v10

    .line 165
    .line 166
    .line 167
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    xor-int/2addr v10, v3

    .line 169
    .line 170
    aget-object v10, p0, v10

    .line 171
    .line 172
    .line 173
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    invoke-static {v12, v10}, Lcom/google/common/collect/k;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    .line 180
    move-result v13

    .line 181
    .line 182
    .line 183
    invoke-static {v13}, Lcom/google/common/collect/x;->b(I)I

    .line 184
    move-result v13

    .line 185
    :goto_5
    and-int/2addr v13, v4

    .line 186
    .line 187
    aget-short v14, v1, v13

    .line 188
    .line 189
    .line 190
    const v15, 0xffff

    .line 191
    and-int/2addr v14, v15

    .line 192
    .line 193
    if-ne v14, v15, :cond_8

    .line 194
    int-to-short v14, v11

    .line 195
    .line 196
    aput-short v14, v1, v13

    .line 197
    .line 198
    if-ge v7, v5, :cond_7

    .line 199
    .line 200
    aput-object v12, p0, v11

    .line 201
    .line 202
    xor-int/lit8 v11, v11, 0x1

    .line 203
    .line 204
    aput-object v10, p0, v11

    .line 205
    .line 206
    :cond_7
    add-int/lit8 v7, v7, 0x1

    .line 207
    goto :goto_6

    .line 208
    .line 209
    :cond_8
    aget-object v15, p0, v14

    .line 210
    .line 211
    .line 212
    invoke-virtual {v12, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 213
    move-result v15

    .line 214
    .line 215
    if-eqz v15, :cond_9

    .line 216
    .line 217
    new-instance v2, Lcom/google/common/collect/b0$a$a;

    .line 218
    .line 219
    xor-int/lit8 v11, v14, 0x1

    .line 220
    .line 221
    aget-object v13, p0, v11

    .line 222
    .line 223
    .line 224
    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    invoke-direct {v2, v12, v10, v13}, Lcom/google/common/collect/b0$a$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 228
    .line 229
    aput-object v10, p0, v11

    .line 230
    .line 231
    :goto_6
    add-int/lit8 v5, v5, 0x1

    .line 232
    goto :goto_4

    .line 233
    .line 234
    :cond_9
    add-int/lit8 v13, v13, 0x1

    .line 235
    goto :goto_5

    .line 236
    .line 237
    :cond_a
    if-ne v7, v0, :cond_b

    .line 238
    goto :goto_7

    .line 239
    .line 240
    :cond_b
    new-array v0, v6, [Ljava/lang/Object;

    .line 241
    .line 242
    aput-object v1, v0, v9

    .line 243
    .line 244
    .line 245
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 246
    move-result-object v1

    .line 247
    .line 248
    aput-object v1, v0, v3

    .line 249
    .line 250
    aput-object v2, v0, v8

    .line 251
    move-object v1, v0

    .line 252
    :goto_7
    return-object v1

    .line 253
    .line 254
    :cond_c
    new-array v1, v1, [I

    .line 255
    .line 256
    .line 257
    invoke-static {v1, v7}, Ljava/util/Arrays;->fill([II)V

    .line 258
    move v5, v9

    .line 259
    move v10, v5

    .line 260
    .line 261
    :goto_8
    if-ge v5, v0, :cond_10

    .line 262
    .line 263
    mul-int/lit8 v11, v5, 0x2

    .line 264
    .line 265
    add-int v11, v11, p3

    .line 266
    .line 267
    mul-int/lit8 v12, v10, 0x2

    .line 268
    .line 269
    add-int v12, v12, p3

    .line 270
    .line 271
    aget-object v13, p0, v11

    .line 272
    .line 273
    .line 274
    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    xor-int/2addr v11, v3

    .line 276
    .line 277
    aget-object v11, p0, v11

    .line 278
    .line 279
    .line 280
    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    invoke-static {v13, v11}, Lcom/google/common/collect/k;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v13}, Ljava/lang/Object;->hashCode()I

    .line 287
    move-result v14

    .line 288
    .line 289
    .line 290
    invoke-static {v14}, Lcom/google/common/collect/x;->b(I)I

    .line 291
    move-result v14

    .line 292
    :goto_9
    and-int/2addr v14, v4

    .line 293
    .line 294
    aget v15, v1, v14

    .line 295
    .line 296
    if-ne v15, v7, :cond_e

    .line 297
    .line 298
    aput v12, v1, v14

    .line 299
    .line 300
    if-ge v10, v5, :cond_d

    .line 301
    .line 302
    aput-object v13, p0, v12

    .line 303
    .line 304
    xor-int/lit8 v12, v12, 0x1

    .line 305
    .line 306
    aput-object v11, p0, v12

    .line 307
    .line 308
    :cond_d
    add-int/lit8 v10, v10, 0x1

    .line 309
    goto :goto_a

    .line 310
    .line 311
    :cond_e
    aget-object v7, p0, v15

    .line 312
    .line 313
    .line 314
    invoke-virtual {v13, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 315
    move-result v7

    .line 316
    .line 317
    if-eqz v7, :cond_f

    .line 318
    .line 319
    new-instance v2, Lcom/google/common/collect/b0$a$a;

    .line 320
    .line 321
    xor-int/lit8 v7, v15, 0x1

    .line 322
    .line 323
    aget-object v12, p0, v7

    .line 324
    .line 325
    .line 326
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    invoke-direct {v2, v13, v11, v12}, Lcom/google/common/collect/b0$a$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 330
    .line 331
    aput-object v11, p0, v7

    .line 332
    .line 333
    :goto_a
    add-int/lit8 v5, v5, 0x1

    .line 334
    const/4 v7, -0x1

    .line 335
    goto :goto_8

    .line 336
    .line 337
    :cond_f
    add-int/lit8 v14, v14, 0x1

    .line 338
    const/4 v7, -0x1

    .line 339
    goto :goto_9

    .line 340
    .line 341
    :cond_10
    if-ne v10, v0, :cond_11

    .line 342
    goto :goto_b

    .line 343
    .line 344
    :cond_11
    new-array v0, v6, [Ljava/lang/Object;

    .line 345
    .line 346
    aput-object v1, v0, v9

    .line 347
    .line 348
    .line 349
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 350
    move-result-object v1

    .line 351
    .line 352
    aput-object v1, v0, v3

    .line 353
    .line 354
    aput-object v2, v0, v8

    .line 355
    move-object v1, v0

    .line 356
    :goto_b
    return-object v1
.end method

.method static q(Ljava/lang/Object;[Ljava/lang/Object;IILjava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p4, :cond_0

    .line 4
    return-object v0

    .line 5
    :cond_0
    const/4 v1, 0x1

    .line 6
    .line 7
    if-ne p2, v1, :cond_2

    .line 8
    .line 9
    aget-object p0, p1, p3

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result p0

    .line 17
    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    xor-int/lit8 p0, p3, 0x1

    .line 21
    .line 22
    aget-object v0, p1, p0

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    :cond_1
    return-object v0

    .line 27
    .line 28
    :cond_2
    if-nez p0, :cond_3

    .line 29
    return-object v0

    .line 30
    .line 31
    :cond_3
    instance-of p2, p0, [B

    .line 32
    .line 33
    if-eqz p2, :cond_6

    .line 34
    move-object p2, p0

    .line 35
    .line 36
    check-cast p2, [B

    .line 37
    array-length p0, p2

    .line 38
    .line 39
    add-int/lit8 p3, p0, -0x1

    .line 40
    .line 41
    .line 42
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    .line 43
    move-result p0

    .line 44
    .line 45
    .line 46
    invoke-static {p0}, Lcom/google/common/collect/x;->b(I)I

    .line 47
    move-result p0

    .line 48
    :goto_0
    and-int/2addr p0, p3

    .line 49
    .line 50
    aget-byte v2, p2, p0

    .line 51
    .line 52
    const/16 v3, 0xff

    .line 53
    and-int/2addr v2, v3

    .line 54
    .line 55
    if-ne v2, v3, :cond_4

    .line 56
    return-object v0

    .line 57
    .line 58
    :cond_4
    aget-object v3, p1, v2

    .line 59
    .line 60
    .line 61
    invoke-virtual {p4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 62
    move-result v3

    .line 63
    .line 64
    if-eqz v3, :cond_5

    .line 65
    .line 66
    xor-int/lit8 p0, v2, 0x1

    .line 67
    .line 68
    aget-object p0, p1, p0

    .line 69
    return-object p0

    .line 70
    .line 71
    :cond_5
    add-int/lit8 p0, p0, 0x1

    .line 72
    goto :goto_0

    .line 73
    .line 74
    :cond_6
    instance-of p2, p0, [S

    .line 75
    .line 76
    if-eqz p2, :cond_9

    .line 77
    move-object p2, p0

    .line 78
    .line 79
    check-cast p2, [S

    .line 80
    array-length p0, p2

    .line 81
    .line 82
    add-int/lit8 p3, p0, -0x1

    .line 83
    .line 84
    .line 85
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    .line 86
    move-result p0

    .line 87
    .line 88
    .line 89
    invoke-static {p0}, Lcom/google/common/collect/x;->b(I)I

    .line 90
    move-result p0

    .line 91
    :goto_1
    and-int/2addr p0, p3

    .line 92
    .line 93
    aget-short v2, p2, p0

    .line 94
    .line 95
    .line 96
    const v3, 0xffff

    .line 97
    and-int/2addr v2, v3

    .line 98
    .line 99
    if-ne v2, v3, :cond_7

    .line 100
    return-object v0

    .line 101
    .line 102
    :cond_7
    aget-object v3, p1, v2

    .line 103
    .line 104
    .line 105
    invoke-virtual {p4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 106
    move-result v3

    .line 107
    .line 108
    if-eqz v3, :cond_8

    .line 109
    .line 110
    xor-int/lit8 p0, v2, 0x1

    .line 111
    .line 112
    aget-object p0, p1, p0

    .line 113
    return-object p0

    .line 114
    .line 115
    :cond_8
    add-int/lit8 p0, p0, 0x1

    .line 116
    goto :goto_1

    .line 117
    .line 118
    :cond_9
    check-cast p0, [I

    .line 119
    array-length p2, p0

    .line 120
    sub-int/2addr p2, v1

    .line 121
    .line 122
    .line 123
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    .line 124
    move-result p3

    .line 125
    .line 126
    .line 127
    invoke-static {p3}, Lcom/google/common/collect/x;->b(I)I

    .line 128
    move-result p3

    .line 129
    :goto_2
    and-int/2addr p3, p2

    .line 130
    .line 131
    aget v2, p0, p3

    .line 132
    const/4 v3, -0x1

    .line 133
    .line 134
    if-ne v2, v3, :cond_a

    .line 135
    return-object v0

    .line 136
    .line 137
    :cond_a
    aget-object v3, p1, v2

    .line 138
    .line 139
    .line 140
    invoke-virtual {p4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 141
    move-result v3

    .line 142
    .line 143
    if-eqz v3, :cond_b

    .line 144
    .line 145
    xor-int/lit8 p0, v2, 0x1

    .line 146
    .line 147
    aget-object p0, p1, p0

    .line 148
    return-object p0

    .line 149
    .line 150
    :cond_b
    add-int/lit8 p3, p3, 0x1

    .line 151
    goto :goto_2
.end method


# virtual methods
.method g()Lcom/google/common/collect/d0;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/d0<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/google/common/collect/x0$a;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/common/collect/x0;->alternatingKeysAndValues:[Ljava/lang/Object;

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    iget v3, p0, Lcom/google/common/collect/x0;->size:I

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/common/collect/x0$a;-><init>(Lcom/google/common/collect/b0;[Ljava/lang/Object;II)V

    .line 11
    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/common/collect/x0;->hashTable:Ljava/lang/Object;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/common/collect/x0;->alternatingKeysAndValues:[Ljava/lang/Object;

    .line 5
    .line 6
    iget v2, p0, Lcom/google/common/collect/x0;->size:I

    .line 7
    const/4 v3, 0x0

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/common/collect/x0;->q(Ljava/lang/Object;[Ljava/lang/Object;IILjava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    const/4 p1, 0x0

    .line 15
    :cond_0
    return-object p1
.end method

.method h()Lcom/google/common/collect/d0;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/d0<",
            "TK;>;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/google/common/collect/x0$c;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/common/collect/x0;->alternatingKeysAndValues:[Ljava/lang/Object;

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    iget v3, p0, Lcom/google/common/collect/x0;->size:I

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/collect/x0$c;-><init>([Ljava/lang/Object;II)V

    .line 11
    .line 12
    new-instance v1, Lcom/google/common/collect/x0$b;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/x0$b;-><init>(Lcom/google/common/collect/b0;Lcom/google/common/collect/a0;)V

    .line 16
    return-object v1
.end method

.method i()Lcom/google/common/collect/y;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/y<",
            "TV;>;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/google/common/collect/x0$c;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/common/collect/x0;->alternatingKeysAndValues:[Ljava/lang/Object;

    .line 5
    const/4 v2, 0x1

    .line 6
    .line 7
    iget v3, p0, Lcom/google/common/collect/x0;->size:I

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/collect/x0$c;-><init>([Ljava/lang/Object;II)V

    .line 11
    return-object v0
.end method

.method k()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/x0;->size:I

    return v0
.end method
