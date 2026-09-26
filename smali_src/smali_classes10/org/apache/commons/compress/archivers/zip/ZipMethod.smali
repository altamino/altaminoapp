.class public final enum Lorg/apache/commons/compress/archivers/zip/ZipMethod;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/compress/archivers/zip/ZipMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/compress/archivers/zip/ZipMethod;

.field public static final enum AES_ENCRYPTED:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

.field public static final enum BZIP2:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

.field public static final enum DEFLATED:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

.field public static final enum ENHANCED_DEFLATED:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

.field public static final enum EXPANDING_LEVEL_1:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

.field public static final enum EXPANDING_LEVEL_2:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

.field public static final enum EXPANDING_LEVEL_3:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

.field public static final enum EXPANDING_LEVEL_4:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

.field public static final enum IMPLODING:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

.field public static final enum JPEG:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

.field public static final enum LZMA:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

.field public static final enum PKWARE_IMPLODING:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

.field public static final enum PPMD:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

.field public static final enum STORED:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

.field public static final enum TOKENIZATION:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

.field public static final enum UNKNOWN:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

.field static final UNKNOWN_CODE:I = -0x1

.field public static final enum UNSHRINKING:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

.field public static final enum WAVPACK:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

.field public static final enum XZ:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

.field private static final codeToEnum:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/commons/compress/archivers/zip/ZipMethod;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final code:I


# direct methods
.method static constructor <clinit>()V
    .locals 22

    .line 1
    .line 2
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 3
    .line 4
    const-string v1, "STORED"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2, v2}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;-><init>(Ljava/lang/String;II)V

    .line 9
    .line 10
    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->STORED:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 11
    .line 12
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 13
    .line 14
    const-string v3, "UNSHRINKING"

    .line 15
    const/4 v4, 0x1

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v3, v4, v4}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;-><init>(Ljava/lang/String;II)V

    .line 19
    .line 20
    sput-object v1, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->UNSHRINKING:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 21
    .line 22
    new-instance v3, Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 23
    .line 24
    const-string v5, "EXPANDING_LEVEL_1"

    .line 25
    const/4 v6, 0x2

    .line 26
    .line 27
    .line 28
    invoke-direct {v3, v5, v6, v6}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;-><init>(Ljava/lang/String;II)V

    .line 29
    .line 30
    sput-object v3, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->EXPANDING_LEVEL_1:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 31
    .line 32
    new-instance v5, Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 33
    .line 34
    const-string v7, "EXPANDING_LEVEL_2"

    .line 35
    const/4 v8, 0x3

    .line 36
    .line 37
    .line 38
    invoke-direct {v5, v7, v8, v8}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;-><init>(Ljava/lang/String;II)V

    .line 39
    .line 40
    sput-object v5, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->EXPANDING_LEVEL_2:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 41
    .line 42
    new-instance v7, Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 43
    .line 44
    const-string v9, "EXPANDING_LEVEL_3"

    .line 45
    const/4 v10, 0x4

    .line 46
    .line 47
    .line 48
    invoke-direct {v7, v9, v10, v10}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;-><init>(Ljava/lang/String;II)V

    .line 49
    .line 50
    sput-object v7, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->EXPANDING_LEVEL_3:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 51
    .line 52
    new-instance v9, Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 53
    .line 54
    const-string v11, "EXPANDING_LEVEL_4"

    .line 55
    const/4 v12, 0x5

    .line 56
    .line 57
    .line 58
    invoke-direct {v9, v11, v12, v12}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;-><init>(Ljava/lang/String;II)V

    .line 59
    .line 60
    sput-object v9, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->EXPANDING_LEVEL_4:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 61
    .line 62
    new-instance v11, Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 63
    .line 64
    const-string v13, "IMPLODING"

    .line 65
    const/4 v14, 0x6

    .line 66
    .line 67
    .line 68
    invoke-direct {v11, v13, v14, v14}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;-><init>(Ljava/lang/String;II)V

    .line 69
    .line 70
    sput-object v11, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->IMPLODING:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 71
    .line 72
    new-instance v13, Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 73
    .line 74
    const-string v15, "TOKENIZATION"

    .line 75
    const/4 v14, 0x7

    .line 76
    .line 77
    .line 78
    invoke-direct {v13, v15, v14, v14}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;-><init>(Ljava/lang/String;II)V

    .line 79
    .line 80
    sput-object v13, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->TOKENIZATION:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 81
    .line 82
    new-instance v15, Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 83
    .line 84
    const-string v14, "DEFLATED"

    .line 85
    .line 86
    const/16 v12, 0x8

    .line 87
    .line 88
    .line 89
    invoke-direct {v15, v14, v12, v12}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;-><init>(Ljava/lang/String;II)V

    .line 90
    .line 91
    sput-object v15, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->DEFLATED:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 92
    .line 93
    new-instance v14, Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 94
    .line 95
    const-string v12, "ENHANCED_DEFLATED"

    .line 96
    .line 97
    const/16 v10, 0x9

    .line 98
    .line 99
    .line 100
    invoke-direct {v14, v12, v10, v10}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;-><init>(Ljava/lang/String;II)V

    .line 101
    .line 102
    sput-object v14, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->ENHANCED_DEFLATED:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 103
    .line 104
    new-instance v12, Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 105
    .line 106
    const-string v10, "PKWARE_IMPLODING"

    .line 107
    .line 108
    const/16 v8, 0xa

    .line 109
    .line 110
    .line 111
    invoke-direct {v12, v10, v8, v8}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;-><init>(Ljava/lang/String;II)V

    .line 112
    .line 113
    sput-object v12, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->PKWARE_IMPLODING:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 114
    .line 115
    new-instance v10, Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 116
    .line 117
    const-string v8, "BZIP2"

    .line 118
    .line 119
    const/16 v6, 0xb

    .line 120
    .line 121
    const/16 v4, 0xc

    .line 122
    .line 123
    .line 124
    invoke-direct {v10, v8, v6, v4}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;-><init>(Ljava/lang/String;II)V

    .line 125
    .line 126
    sput-object v10, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->BZIP2:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 127
    .line 128
    new-instance v8, Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 129
    .line 130
    const-string v6, "LZMA"

    .line 131
    .line 132
    const/16 v2, 0xe

    .line 133
    .line 134
    .line 135
    invoke-direct {v8, v6, v4, v2}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;-><init>(Ljava/lang/String;II)V

    .line 136
    .line 137
    sput-object v8, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->LZMA:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 138
    .line 139
    new-instance v6, Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 140
    .line 141
    const/16 v4, 0x5f

    .line 142
    .line 143
    const-string v2, "XZ"

    .line 144
    .line 145
    move-object/from16 v17, v8

    .line 146
    .line 147
    const/16 v8, 0xd

    .line 148
    .line 149
    .line 150
    invoke-direct {v6, v2, v8, v4}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;-><init>(Ljava/lang/String;II)V

    .line 151
    .line 152
    sput-object v6, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->XZ:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 153
    .line 154
    new-instance v2, Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 155
    .line 156
    const-string v4, "JPEG"

    .line 157
    .line 158
    const/16 v8, 0x60

    .line 159
    .line 160
    move-object/from16 v18, v6

    .line 161
    .line 162
    const/16 v6, 0xe

    .line 163
    .line 164
    .line 165
    invoke-direct {v2, v4, v6, v8}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;-><init>(Ljava/lang/String;II)V

    .line 166
    .line 167
    sput-object v2, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->JPEG:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 168
    .line 169
    new-instance v4, Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 170
    .line 171
    const/16 v6, 0x61

    .line 172
    .line 173
    const-string v8, "WAVPACK"

    .line 174
    .line 175
    move-object/from16 v19, v2

    .line 176
    .line 177
    const/16 v2, 0xf

    .line 178
    .line 179
    .line 180
    invoke-direct {v4, v8, v2, v6}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;-><init>(Ljava/lang/String;II)V

    .line 181
    .line 182
    sput-object v4, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->WAVPACK:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 183
    .line 184
    new-instance v6, Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 185
    .line 186
    const/16 v8, 0x62

    .line 187
    .line 188
    const-string v2, "PPMD"

    .line 189
    .line 190
    move-object/from16 v20, v4

    .line 191
    .line 192
    const/16 v4, 0x10

    .line 193
    .line 194
    .line 195
    invoke-direct {v6, v2, v4, v8}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;-><init>(Ljava/lang/String;II)V

    .line 196
    .line 197
    sput-object v6, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->PPMD:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 198
    .line 199
    new-instance v2, Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 200
    .line 201
    const/16 v8, 0x63

    .line 202
    .line 203
    const-string v4, "AES_ENCRYPTED"

    .line 204
    .line 205
    move-object/from16 v21, v6

    .line 206
    .line 207
    const/16 v6, 0x11

    .line 208
    .line 209
    .line 210
    invoke-direct {v2, v4, v6, v8}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;-><init>(Ljava/lang/String;II)V

    .line 211
    .line 212
    sput-object v2, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->AES_ENCRYPTED:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 213
    .line 214
    new-instance v4, Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 215
    .line 216
    const-string v8, "UNKNOWN"

    .line 217
    .line 218
    const/16 v6, 0x12

    .line 219
    .line 220
    .line 221
    invoke-direct {v4, v8, v6}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;-><init>(Ljava/lang/String;I)V

    .line 222
    .line 223
    sput-object v4, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->UNKNOWN:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 224
    .line 225
    const/16 v8, 0x13

    .line 226
    .line 227
    new-array v8, v8, [Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 228
    .line 229
    const/16 v16, 0x0

    .line 230
    .line 231
    aput-object v0, v8, v16

    .line 232
    const/4 v0, 0x1

    .line 233
    .line 234
    aput-object v1, v8, v0

    .line 235
    const/4 v0, 0x2

    .line 236
    .line 237
    aput-object v3, v8, v0

    .line 238
    const/4 v0, 0x3

    .line 239
    .line 240
    aput-object v5, v8, v0

    .line 241
    const/4 v0, 0x4

    .line 242
    .line 243
    aput-object v7, v8, v0

    .line 244
    const/4 v0, 0x5

    .line 245
    .line 246
    aput-object v9, v8, v0

    .line 247
    const/4 v0, 0x6

    .line 248
    .line 249
    aput-object v11, v8, v0

    .line 250
    const/4 v0, 0x7

    .line 251
    .line 252
    aput-object v13, v8, v0

    .line 253
    .line 254
    const/16 v0, 0x8

    .line 255
    .line 256
    aput-object v15, v8, v0

    .line 257
    .line 258
    const/16 v0, 0x9

    .line 259
    .line 260
    aput-object v14, v8, v0

    .line 261
    .line 262
    const/16 v0, 0xa

    .line 263
    .line 264
    aput-object v12, v8, v0

    .line 265
    .line 266
    const/16 v0, 0xb

    .line 267
    .line 268
    aput-object v10, v8, v0

    .line 269
    .line 270
    const/16 v0, 0xc

    .line 271
    .line 272
    aput-object v17, v8, v0

    .line 273
    .line 274
    const/16 v0, 0xd

    .line 275
    .line 276
    aput-object v18, v8, v0

    .line 277
    .line 278
    const/16 v0, 0xe

    .line 279
    .line 280
    aput-object v19, v8, v0

    .line 281
    .line 282
    const/16 v0, 0xf

    .line 283
    .line 284
    aput-object v20, v8, v0

    .line 285
    .line 286
    const/16 v0, 0x10

    .line 287
    .line 288
    aput-object v21, v8, v0

    .line 289
    .line 290
    const/16 v0, 0x11

    .line 291
    .line 292
    aput-object v2, v8, v0

    .line 293
    .line 294
    aput-object v4, v8, v6

    .line 295
    .line 296
    sput-object v8, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->$VALUES:[Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 297
    .line 298
    new-instance v0, Ljava/util/HashMap;

    .line 299
    .line 300
    .line 301
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 302
    .line 303
    .line 304
    invoke-static {}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->values()[Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 305
    move-result-object v1

    .line 306
    array-length v2, v1

    .line 307
    .line 308
    move/from16 v3, v16

    .line 309
    .line 310
    :goto_0
    if-ge v3, v2, :cond_0

    .line 311
    .line 312
    aget-object v4, v1, v3

    .line 313
    .line 314
    .line 315
    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->getCode()I

    .line 316
    move-result v5

    .line 317
    .line 318
    .line 319
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 320
    move-result-object v5

    .line 321
    .line 322
    .line 323
    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    .line 325
    add-int/lit8 v3, v3, 0x1

    .line 326
    goto :goto_0

    .line 327
    .line 328
    .line 329
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 330
    move-result-object v0

    .line 331
    .line 332
    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->codeToEnum:Ljava/util/Map;

    .line 333
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v0, -0x1

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->code:I

    return-void
.end method

.method public static getMethodByCode(I)Lorg/apache/commons/compress/archivers/zip/ZipMethod;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->codeToEnum:Ljava/util/Map;

    .line 3
    .line 4
    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 11
    .line 12
    check-cast p0, Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 13
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/ZipMethod;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 9
    return-object p0
.end method

.method public static values()[Lorg/apache/commons/compress/archivers/zip/ZipMethod;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->$VALUES:[Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Lorg/apache/commons/compress/archivers/zip/ZipMethod;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 9
    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->code:I

    return v0
.end method
