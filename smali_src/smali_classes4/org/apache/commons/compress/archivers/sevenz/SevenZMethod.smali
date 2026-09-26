.class public final enum Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

.field public static final enum AES256SHA256:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

.field public static final enum BCJ_ARM_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

.field public static final enum BCJ_ARM_THUMB_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

.field public static final enum BCJ_IA64_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

.field public static final enum BCJ_PPC_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

.field public static final enum BCJ_SPARC_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

.field public static final enum BCJ_X86_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

.field public static final enum BZIP2:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

.field public static final enum COPY:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

.field public static final enum DEFLATE:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

.field public static final enum DEFLATE64:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

.field public static final enum DELTA_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

.field public static final enum LZMA:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

.field public static final enum LZMA2:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;


# instance fields
.field private final id:[B


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 1
    .line 2
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    new-array v2, v1, [B

    .line 6
    const/4 v3, 0x0

    .line 7
    .line 8
    aput-byte v3, v2, v3

    .line 9
    .line 10
    const-string v4, "COPY"

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v4, v3, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;-><init>(Ljava/lang/String;I[B)V

    .line 14
    .line 15
    sput-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->COPY:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 16
    .line 17
    new-instance v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 18
    const/4 v4, 0x3

    .line 19
    .line 20
    new-array v5, v4, [B

    .line 21
    .line 22
    .line 23
    fill-array-data v5, :array_0

    .line 24
    .line 25
    const-string v6, "LZMA"

    .line 26
    .line 27
    .line 28
    invoke-direct {v2, v6, v1, v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;-><init>(Ljava/lang/String;I[B)V

    .line 29
    .line 30
    sput-object v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->LZMA:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 31
    .line 32
    new-instance v5, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 33
    .line 34
    new-array v6, v1, [B

    .line 35
    .line 36
    const/16 v7, 0x21

    .line 37
    .line 38
    aput-byte v7, v6, v3

    .line 39
    .line 40
    const-string v7, "LZMA2"

    .line 41
    const/4 v8, 0x2

    .line 42
    .line 43
    .line 44
    invoke-direct {v5, v7, v8, v6}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;-><init>(Ljava/lang/String;I[B)V

    .line 45
    .line 46
    sput-object v5, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->LZMA2:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 47
    .line 48
    new-instance v6, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 49
    .line 50
    new-array v7, v4, [B

    .line 51
    .line 52
    .line 53
    fill-array-data v7, :array_1

    .line 54
    .line 55
    const-string v9, "DEFLATE"

    .line 56
    .line 57
    .line 58
    invoke-direct {v6, v9, v4, v7}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;-><init>(Ljava/lang/String;I[B)V

    .line 59
    .line 60
    sput-object v6, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->DEFLATE:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 61
    .line 62
    new-instance v7, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 63
    .line 64
    new-array v9, v4, [B

    .line 65
    .line 66
    .line 67
    fill-array-data v9, :array_2

    .line 68
    .line 69
    const-string v10, "DEFLATE64"

    .line 70
    const/4 v11, 0x4

    .line 71
    .line 72
    .line 73
    invoke-direct {v7, v10, v11, v9}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;-><init>(Ljava/lang/String;I[B)V

    .line 74
    .line 75
    sput-object v7, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->DEFLATE64:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 76
    .line 77
    new-instance v9, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 78
    .line 79
    new-array v10, v4, [B

    .line 80
    .line 81
    .line 82
    fill-array-data v10, :array_3

    .line 83
    .line 84
    const-string v12, "BZIP2"

    .line 85
    const/4 v13, 0x5

    .line 86
    .line 87
    .line 88
    invoke-direct {v9, v12, v13, v10}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;-><init>(Ljava/lang/String;I[B)V

    .line 89
    .line 90
    sput-object v9, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->BZIP2:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 91
    .line 92
    new-instance v10, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 93
    .line 94
    new-array v12, v11, [B

    .line 95
    .line 96
    .line 97
    fill-array-data v12, :array_4

    .line 98
    .line 99
    const-string v14, "AES256SHA256"

    .line 100
    const/4 v15, 0x6

    .line 101
    .line 102
    .line 103
    invoke-direct {v10, v14, v15, v12}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;-><init>(Ljava/lang/String;I[B)V

    .line 104
    .line 105
    sput-object v10, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->AES256SHA256:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 106
    .line 107
    new-instance v12, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 108
    .line 109
    new-array v14, v11, [B

    .line 110
    .line 111
    .line 112
    fill-array-data v14, :array_5

    .line 113
    .line 114
    const-string v15, "BCJ_X86_FILTER"

    .line 115
    const/4 v13, 0x7

    .line 116
    .line 117
    .line 118
    invoke-direct {v12, v15, v13, v14}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;-><init>(Ljava/lang/String;I[B)V

    .line 119
    .line 120
    sput-object v12, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->BCJ_X86_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 121
    .line 122
    new-instance v14, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 123
    .line 124
    new-array v15, v11, [B

    .line 125
    .line 126
    .line 127
    fill-array-data v15, :array_6

    .line 128
    .line 129
    const-string v13, "BCJ_PPC_FILTER"

    .line 130
    .line 131
    const/16 v8, 0x8

    .line 132
    .line 133
    .line 134
    invoke-direct {v14, v13, v8, v15}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;-><init>(Ljava/lang/String;I[B)V

    .line 135
    .line 136
    sput-object v14, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->BCJ_PPC_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 137
    .line 138
    new-instance v13, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 139
    .line 140
    new-array v15, v11, [B

    .line 141
    .line 142
    .line 143
    fill-array-data v15, :array_7

    .line 144
    .line 145
    const-string v8, "BCJ_IA64_FILTER"

    .line 146
    .line 147
    const/16 v3, 0x9

    .line 148
    .line 149
    .line 150
    invoke-direct {v13, v8, v3, v15}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;-><init>(Ljava/lang/String;I[B)V

    .line 151
    .line 152
    sput-object v13, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->BCJ_IA64_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 153
    .line 154
    new-instance v8, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 155
    .line 156
    new-array v15, v11, [B

    .line 157
    .line 158
    .line 159
    fill-array-data v15, :array_8

    .line 160
    .line 161
    const-string v3, "BCJ_ARM_FILTER"

    .line 162
    .line 163
    const/16 v4, 0xa

    .line 164
    .line 165
    .line 166
    invoke-direct {v8, v3, v4, v15}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;-><init>(Ljava/lang/String;I[B)V

    .line 167
    .line 168
    sput-object v8, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->BCJ_ARM_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 169
    .line 170
    new-instance v3, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 171
    .line 172
    new-array v15, v11, [B

    .line 173
    .line 174
    .line 175
    fill-array-data v15, :array_9

    .line 176
    .line 177
    const-string v4, "BCJ_ARM_THUMB_FILTER"

    .line 178
    .line 179
    const/16 v1, 0xb

    .line 180
    .line 181
    .line 182
    invoke-direct {v3, v4, v1, v15}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;-><init>(Ljava/lang/String;I[B)V

    .line 183
    .line 184
    sput-object v3, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->BCJ_ARM_THUMB_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 185
    .line 186
    new-instance v4, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 187
    .line 188
    new-array v15, v11, [B

    .line 189
    .line 190
    .line 191
    fill-array-data v15, :array_a

    .line 192
    .line 193
    const-string v1, "BCJ_SPARC_FILTER"

    .line 194
    .line 195
    const/16 v11, 0xc

    .line 196
    .line 197
    .line 198
    invoke-direct {v4, v1, v11, v15}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;-><init>(Ljava/lang/String;I[B)V

    .line 199
    .line 200
    sput-object v4, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->BCJ_SPARC_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 201
    .line 202
    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 203
    const/4 v15, 0x1

    .line 204
    .line 205
    new-array v11, v15, [B

    .line 206
    .line 207
    const/16 v16, 0x0

    .line 208
    .line 209
    const/16 v17, 0x3

    .line 210
    .line 211
    aput-byte v17, v11, v16

    .line 212
    .line 213
    const-string v15, "DELTA_FILTER"

    .line 214
    .line 215
    move-object/from16 v18, v4

    .line 216
    .line 217
    const/16 v4, 0xd

    .line 218
    .line 219
    .line 220
    invoke-direct {v1, v15, v4, v11}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;-><init>(Ljava/lang/String;I[B)V

    .line 221
    .line 222
    sput-object v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->DELTA_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 223
    .line 224
    const/16 v11, 0xe

    .line 225
    .line 226
    new-array v11, v11, [Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 227
    .line 228
    aput-object v0, v11, v16

    .line 229
    const/4 v0, 0x1

    .line 230
    .line 231
    aput-object v2, v11, v0

    .line 232
    const/4 v0, 0x2

    .line 233
    .line 234
    aput-object v5, v11, v0

    .line 235
    .line 236
    aput-object v6, v11, v17

    .line 237
    const/4 v0, 0x4

    .line 238
    .line 239
    aput-object v7, v11, v0

    .line 240
    const/4 v0, 0x5

    .line 241
    .line 242
    aput-object v9, v11, v0

    .line 243
    const/4 v0, 0x6

    .line 244
    .line 245
    aput-object v10, v11, v0

    .line 246
    const/4 v0, 0x7

    .line 247
    .line 248
    aput-object v12, v11, v0

    .line 249
    .line 250
    const/16 v0, 0x8

    .line 251
    .line 252
    aput-object v14, v11, v0

    .line 253
    .line 254
    const/16 v0, 0x9

    .line 255
    .line 256
    aput-object v13, v11, v0

    .line 257
    .line 258
    const/16 v0, 0xa

    .line 259
    .line 260
    aput-object v8, v11, v0

    .line 261
    .line 262
    const/16 v0, 0xb

    .line 263
    .line 264
    aput-object v3, v11, v0

    .line 265
    .line 266
    const/16 v0, 0xc

    .line 267
    .line 268
    aput-object v18, v11, v0

    .line 269
    .line 270
    aput-object v1, v11, v4

    .line 271
    .line 272
    sput-object v11, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->$VALUES:[Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 273
    return-void

    .line 274
    nop

    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    :array_0
    .array-data 1
        0x3t
        0x1t
        0x1t
    .end array-data

    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    :array_1
    .array-data 1
        0x4t
        0x1t
        0x8t
    .end array-data

    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    :array_2
    .array-data 1
        0x4t
        0x1t
        0x9t
    .end array-data

    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    :array_3
    .array-data 1
        0x4t
        0x2t
        0x2t
    .end array-data

    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    :array_4
    .array-data 1
        0x6t
        -0xft
        0x7t
        0x1t
    .end array-data

    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    :array_5
    .array-data 1
        0x3t
        0x3t
        0x1t
        0x3t
    .end array-data

    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    :array_6
    .array-data 1
        0x3t
        0x3t
        0x2t
        0x5t
    .end array-data

    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    :array_7
    .array-data 1
        0x3t
        0x3t
        0x4t
        0x1t
    .end array-data

    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    :array_8
    .array-data 1
        0x3t
        0x3t
        0x5t
        0x1t
    .end array-data

    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    :array_9
    .array-data 1
        0x3t
        0x3t
        0x7t
        0x1t
    .end array-data

    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    :array_a
    .array-data 1
        0x3t
        0x3t
        0x8t
        0x5t
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    .line 5
    iput-object p3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->id:[B

    .line 6
    return-void
.end method

.method static byId([B)Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;
    .locals 5

    .line 1
    .line 2
    const-class v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 9
    array-length v1, v0

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    :goto_0
    if-ge v2, v1, :cond_1

    .line 13
    .line 14
    aget-object v3, v0, v2

    .line 15
    .line 16
    iget-object v4, v3, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->id:[B

    .line 17
    .line 18
    .line 19
    invoke-static {v4, p0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 20
    move-result v4

    .line 21
    .line 22
    if-eqz v4, :cond_0

    .line 23
    return-object v3

    .line 24
    .line 25
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 p0, 0x0

    .line 28
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 9
    return-object p0
.end method

.method public static values()[Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->$VALUES:[Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 9
    return-object v0
.end method


# virtual methods
.method getId()[B
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->id:[B

    .line 3
    array-length v1, v0

    .line 4
    .line 5
    new-array v1, v1, [B

    .line 6
    const/4 v2, 0x0

    .line 7
    array-length v3, v0

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    return-object v1
.end method
