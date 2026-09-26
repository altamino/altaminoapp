.class public Landroidx/renderscript/FieldPacker;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAlignment:Ljava/util/BitSet;

.field private mData:[B

.field private mLen:I

.field private mPos:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    iput p1, p0, Landroidx/renderscript/FieldPacker;->mLen:I

    .line 2
    new-array p1, p1, [B

    iput-object p1, p0, Landroidx/renderscript/FieldPacker;->mData:[B

    .line 3
    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    iput-object p1, p0, Landroidx/renderscript/FieldPacker;->mAlignment:Ljava/util/BitSet;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    array-length v0, p1

    iput v0, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    .line 6
    array-length v0, p1

    iput v0, p0, Landroidx/renderscript/FieldPacker;->mLen:I

    iput-object p1, p0, Landroidx/renderscript/FieldPacker;->mData:[B

    .line 7
    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    iput-object p1, p0, Landroidx/renderscript/FieldPacker;->mAlignment:Ljava/util/BitSet;

    return-void
.end method

.method private addSafely(Ljava/lang/Object;)V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    .line 3
    .line 4
    .line 5
    :goto_0
    :try_start_0
    invoke-static {p0, p1}, Landroidx/renderscript/FieldPacker;->addToPack(Landroidx/renderscript/FieldPacker;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    return-void

    .line 7
    .line 8
    :catch_0
    iput v0, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    .line 9
    .line 10
    iget v1, p0, Landroidx/renderscript/FieldPacker;->mLen:I

    .line 11
    .line 12
    mul-int/lit8 v1, v1, 0x2

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v1}, Landroidx/renderscript/FieldPacker;->resize(I)Z

    .line 16
    goto :goto_0
.end method

.method private static addToPack(Landroidx/renderscript/FieldPacker;Ljava/lang/Object;)V
    .locals 2

    .line 1
    .line 2
    instance-of v0, p1, Ljava/lang/Boolean;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Ljava/lang/Boolean;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    move-result p1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addBoolean(Z)V

    .line 14
    return-void

    .line 15
    .line 16
    :cond_0
    instance-of v0, p1, Ljava/lang/Byte;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    check-cast p1, Ljava/lang/Byte;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    .line 24
    move-result p1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addI8(B)V

    .line 28
    return-void

    .line 29
    .line 30
    :cond_1
    instance-of v0, p1, Ljava/lang/Short;

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    check-cast p1, Ljava/lang/Short;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    .line 38
    move-result p1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addI16(S)V

    .line 42
    return-void

    .line 43
    .line 44
    :cond_2
    instance-of v0, p1, Ljava/lang/Integer;

    .line 45
    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    check-cast p1, Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 52
    move-result p1

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addI32(I)V

    .line 56
    return-void

    .line 57
    .line 58
    :cond_3
    instance-of v0, p1, Ljava/lang/Long;

    .line 59
    .line 60
    if-eqz v0, :cond_4

    .line 61
    .line 62
    check-cast p1, Ljava/lang/Long;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 66
    move-result-wide v0

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addI64(J)V

    .line 70
    return-void

    .line 71
    .line 72
    :cond_4
    instance-of v0, p1, Ljava/lang/Float;

    .line 73
    .line 74
    if-eqz v0, :cond_5

    .line 75
    .line 76
    check-cast p1, Ljava/lang/Float;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 80
    move-result p1

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addF32(F)V

    .line 84
    return-void

    .line 85
    .line 86
    :cond_5
    instance-of v0, p1, Ljava/lang/Double;

    .line 87
    .line 88
    if-eqz v0, :cond_6

    .line 89
    .line 90
    check-cast p1, Ljava/lang/Double;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 94
    move-result-wide v0

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addF64(D)V

    .line 98
    return-void

    .line 99
    .line 100
    :cond_6
    instance-of v0, p1, Landroidx/renderscript/Byte2;

    .line 101
    .line 102
    if-eqz v0, :cond_7

    .line 103
    .line 104
    check-cast p1, Landroidx/renderscript/Byte2;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addI8(Landroidx/renderscript/Byte2;)V

    .line 108
    return-void

    .line 109
    .line 110
    :cond_7
    instance-of v0, p1, Landroidx/renderscript/Byte3;

    .line 111
    .line 112
    if-eqz v0, :cond_8

    .line 113
    .line 114
    check-cast p1, Landroidx/renderscript/Byte3;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addI8(Landroidx/renderscript/Byte3;)V

    .line 118
    return-void

    .line 119
    .line 120
    :cond_8
    instance-of v0, p1, Landroidx/renderscript/Byte4;

    .line 121
    .line 122
    if-eqz v0, :cond_9

    .line 123
    .line 124
    check-cast p1, Landroidx/renderscript/Byte4;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addI8(Landroidx/renderscript/Byte4;)V

    .line 128
    return-void

    .line 129
    .line 130
    :cond_9
    instance-of v0, p1, Landroidx/renderscript/Short2;

    .line 131
    .line 132
    if-eqz v0, :cond_a

    .line 133
    .line 134
    check-cast p1, Landroidx/renderscript/Short2;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addI16(Landroidx/renderscript/Short2;)V

    .line 138
    return-void

    .line 139
    .line 140
    :cond_a
    instance-of v0, p1, Landroidx/renderscript/Short3;

    .line 141
    .line 142
    if-eqz v0, :cond_b

    .line 143
    .line 144
    check-cast p1, Landroidx/renderscript/Short3;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addI16(Landroidx/renderscript/Short3;)V

    .line 148
    return-void

    .line 149
    .line 150
    :cond_b
    instance-of v0, p1, Landroidx/renderscript/Short4;

    .line 151
    .line 152
    if-eqz v0, :cond_c

    .line 153
    .line 154
    check-cast p1, Landroidx/renderscript/Short4;

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addI16(Landroidx/renderscript/Short4;)V

    .line 158
    return-void

    .line 159
    .line 160
    :cond_c
    instance-of v0, p1, Landroidx/renderscript/Int2;

    .line 161
    .line 162
    if-eqz v0, :cond_d

    .line 163
    .line 164
    check-cast p1, Landroidx/renderscript/Int2;

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addI32(Landroidx/renderscript/Int2;)V

    .line 168
    return-void

    .line 169
    .line 170
    :cond_d
    instance-of v0, p1, Landroidx/renderscript/Int3;

    .line 171
    .line 172
    if-eqz v0, :cond_e

    .line 173
    .line 174
    check-cast p1, Landroidx/renderscript/Int3;

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addI32(Landroidx/renderscript/Int3;)V

    .line 178
    return-void

    .line 179
    .line 180
    :cond_e
    instance-of v0, p1, Landroidx/renderscript/Int4;

    .line 181
    .line 182
    if-eqz v0, :cond_f

    .line 183
    .line 184
    check-cast p1, Landroidx/renderscript/Int4;

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addI32(Landroidx/renderscript/Int4;)V

    .line 188
    return-void

    .line 189
    .line 190
    :cond_f
    instance-of v0, p1, Landroidx/renderscript/Long2;

    .line 191
    .line 192
    if-eqz v0, :cond_10

    .line 193
    .line 194
    check-cast p1, Landroidx/renderscript/Long2;

    .line 195
    .line 196
    .line 197
    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addI64(Landroidx/renderscript/Long2;)V

    .line 198
    return-void

    .line 199
    .line 200
    :cond_10
    instance-of v0, p1, Landroidx/renderscript/Long3;

    .line 201
    .line 202
    if-eqz v0, :cond_11

    .line 203
    .line 204
    check-cast p1, Landroidx/renderscript/Long3;

    .line 205
    .line 206
    .line 207
    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addI64(Landroidx/renderscript/Long3;)V

    .line 208
    return-void

    .line 209
    .line 210
    :cond_11
    instance-of v0, p1, Landroidx/renderscript/Long4;

    .line 211
    .line 212
    if-eqz v0, :cond_12

    .line 213
    .line 214
    check-cast p1, Landroidx/renderscript/Long4;

    .line 215
    .line 216
    .line 217
    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addI64(Landroidx/renderscript/Long4;)V

    .line 218
    return-void

    .line 219
    .line 220
    :cond_12
    instance-of v0, p1, Landroidx/renderscript/Float2;

    .line 221
    .line 222
    if-eqz v0, :cond_13

    .line 223
    .line 224
    check-cast p1, Landroidx/renderscript/Float2;

    .line 225
    .line 226
    .line 227
    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addF32(Landroidx/renderscript/Float2;)V

    .line 228
    return-void

    .line 229
    .line 230
    :cond_13
    instance-of v0, p1, Landroidx/renderscript/Float3;

    .line 231
    .line 232
    if-eqz v0, :cond_14

    .line 233
    .line 234
    check-cast p1, Landroidx/renderscript/Float3;

    .line 235
    .line 236
    .line 237
    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addF32(Landroidx/renderscript/Float3;)V

    .line 238
    return-void

    .line 239
    .line 240
    :cond_14
    instance-of v0, p1, Landroidx/renderscript/Float4;

    .line 241
    .line 242
    if-eqz v0, :cond_15

    .line 243
    .line 244
    check-cast p1, Landroidx/renderscript/Float4;

    .line 245
    .line 246
    .line 247
    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addF32(Landroidx/renderscript/Float4;)V

    .line 248
    return-void

    .line 249
    .line 250
    :cond_15
    instance-of v0, p1, Landroidx/renderscript/Double2;

    .line 251
    .line 252
    if-eqz v0, :cond_16

    .line 253
    .line 254
    check-cast p1, Landroidx/renderscript/Double2;

    .line 255
    .line 256
    .line 257
    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addF64(Landroidx/renderscript/Double2;)V

    .line 258
    return-void

    .line 259
    .line 260
    :cond_16
    instance-of v0, p1, Landroidx/renderscript/Double3;

    .line 261
    .line 262
    if-eqz v0, :cond_17

    .line 263
    .line 264
    check-cast p1, Landroidx/renderscript/Double3;

    .line 265
    .line 266
    .line 267
    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addF64(Landroidx/renderscript/Double3;)V

    .line 268
    return-void

    .line 269
    .line 270
    :cond_17
    instance-of v0, p1, Landroidx/renderscript/Double4;

    .line 271
    .line 272
    if-eqz v0, :cond_18

    .line 273
    .line 274
    check-cast p1, Landroidx/renderscript/Double4;

    .line 275
    .line 276
    .line 277
    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addF64(Landroidx/renderscript/Double4;)V

    .line 278
    return-void

    .line 279
    .line 280
    :cond_18
    instance-of v0, p1, Landroidx/renderscript/Matrix2f;

    .line 281
    .line 282
    if-eqz v0, :cond_19

    .line 283
    .line 284
    check-cast p1, Landroidx/renderscript/Matrix2f;

    .line 285
    .line 286
    .line 287
    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addMatrix(Landroidx/renderscript/Matrix2f;)V

    .line 288
    return-void

    .line 289
    .line 290
    :cond_19
    instance-of v0, p1, Landroidx/renderscript/Matrix3f;

    .line 291
    .line 292
    if-eqz v0, :cond_1a

    .line 293
    .line 294
    check-cast p1, Landroidx/renderscript/Matrix3f;

    .line 295
    .line 296
    .line 297
    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addMatrix(Landroidx/renderscript/Matrix3f;)V

    .line 298
    return-void

    .line 299
    .line 300
    :cond_1a
    instance-of v0, p1, Landroidx/renderscript/Matrix4f;

    .line 301
    .line 302
    if-eqz v0, :cond_1b

    .line 303
    .line 304
    check-cast p1, Landroidx/renderscript/Matrix4f;

    .line 305
    .line 306
    .line 307
    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addMatrix(Landroidx/renderscript/Matrix4f;)V

    .line 308
    return-void

    .line 309
    .line 310
    :cond_1b
    instance-of v0, p1, Landroidx/renderscript/BaseObj;

    .line 311
    .line 312
    if-eqz v0, :cond_1c

    .line 313
    .line 314
    check-cast p1, Landroidx/renderscript/BaseObj;

    .line 315
    .line 316
    .line 317
    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addObj(Landroidx/renderscript/BaseObj;)V

    .line 318
    :cond_1c
    return-void
.end method

.method static createFieldPack([Ljava/lang/Object;)Landroidx/renderscript/FieldPacker;
    .locals 5

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    move v3, v2

    .line 5
    .line 6
    :goto_0
    if-ge v2, v0, :cond_0

    .line 7
    .line 8
    aget-object v4, p0, v2

    .line 9
    .line 10
    .line 11
    invoke-static {v4}, Landroidx/renderscript/FieldPacker;->getPackedSize(Ljava/lang/Object;)I

    .line 12
    move-result v4

    .line 13
    add-int/2addr v3, v4

    .line 14
    .line 15
    add-int/lit8 v2, v2, 0x1

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    new-instance v0, Landroidx/renderscript/FieldPacker;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v3}, Landroidx/renderscript/FieldPacker;-><init>(I)V

    .line 22
    array-length v2, p0

    .line 23
    .line 24
    :goto_1
    if-ge v1, v2, :cond_1

    .line 25
    .line 26
    aget-object v3, p0, v1

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v3}, Landroidx/renderscript/FieldPacker;->addToPack(Landroidx/renderscript/FieldPacker;Ljava/lang/Object;)V

    .line 30
    .line 31
    add-int/lit8 v1, v1, 0x1

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    return-object v0
.end method

.method static createFromArray([Ljava/lang/Object;)Landroidx/renderscript/FieldPacker;
    .locals 4

    .line 1
    .line 2
    new-instance v0, Landroidx/renderscript/FieldPacker;

    .line 3
    .line 4
    sget v1, Landroidx/renderscript/RenderScript;->sPointerSize:I

    .line 5
    .line 6
    mul-int/lit8 v1, v1, 0x8

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Landroidx/renderscript/FieldPacker;-><init>(I)V

    .line 10
    array-length v1, p0

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    :goto_0
    if-ge v2, v1, :cond_0

    .line 14
    .line 15
    aget-object v3, p0, v2

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v3}, Landroidx/renderscript/FieldPacker;->addSafely(Ljava/lang/Object;)V

    .line 19
    .line 20
    add-int/lit8 v2, v2, 0x1

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    iget p0, v0, Landroidx/renderscript/FieldPacker;->mPos:I

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, p0}, Landroidx/renderscript/FieldPacker;->resize(I)Z

    .line 27
    return-object v0
.end method

.method private static getPackedSize(Ljava/lang/Object;)I
    .locals 7

    .line 1
    .line 2
    instance-of v0, p0, Ljava/lang/Boolean;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    :cond_0
    instance-of v0, p0, Ljava/lang/Byte;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    return v1

    .line 12
    .line 13
    :cond_1
    instance-of v0, p0, Ljava/lang/Short;

    .line 14
    const/4 v1, 0x2

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    return v1

    .line 18
    .line 19
    :cond_2
    instance-of v0, p0, Ljava/lang/Integer;

    .line 20
    const/4 v2, 0x4

    .line 21
    .line 22
    if-eqz v0, :cond_3

    .line 23
    return v2

    .line 24
    .line 25
    :cond_3
    instance-of v0, p0, Ljava/lang/Long;

    .line 26
    .line 27
    const/16 v3, 0x8

    .line 28
    .line 29
    if-eqz v0, :cond_4

    .line 30
    return v3

    .line 31
    .line 32
    :cond_4
    instance-of v0, p0, Ljava/lang/Float;

    .line 33
    .line 34
    if-eqz v0, :cond_5

    .line 35
    return v2

    .line 36
    .line 37
    :cond_5
    instance-of v0, p0, Ljava/lang/Double;

    .line 38
    .line 39
    if-eqz v0, :cond_6

    .line 40
    return v3

    .line 41
    .line 42
    :cond_6
    instance-of v0, p0, Landroidx/renderscript/Byte2;

    .line 43
    .line 44
    if-eqz v0, :cond_7

    .line 45
    return v1

    .line 46
    .line 47
    :cond_7
    instance-of v0, p0, Landroidx/renderscript/Byte3;

    .line 48
    .line 49
    if-eqz v0, :cond_8

    .line 50
    const/4 p0, 0x3

    .line 51
    return p0

    .line 52
    .line 53
    :cond_8
    instance-of v0, p0, Landroidx/renderscript/Byte4;

    .line 54
    .line 55
    if-eqz v0, :cond_9

    .line 56
    return v2

    .line 57
    .line 58
    :cond_9
    instance-of v0, p0, Landroidx/renderscript/Short2;

    .line 59
    .line 60
    if-eqz v0, :cond_a

    .line 61
    return v2

    .line 62
    .line 63
    :cond_a
    instance-of v0, p0, Landroidx/renderscript/Short3;

    .line 64
    .line 65
    if-eqz v0, :cond_b

    .line 66
    const/4 p0, 0x6

    .line 67
    return p0

    .line 68
    .line 69
    :cond_b
    instance-of v0, p0, Landroidx/renderscript/Short4;

    .line 70
    .line 71
    if-eqz v0, :cond_c

    .line 72
    return v3

    .line 73
    .line 74
    :cond_c
    instance-of v0, p0, Landroidx/renderscript/Int2;

    .line 75
    .line 76
    if-eqz v0, :cond_d

    .line 77
    return v3

    .line 78
    .line 79
    :cond_d
    instance-of v0, p0, Landroidx/renderscript/Int3;

    .line 80
    .line 81
    const/16 v1, 0xc

    .line 82
    .line 83
    if-eqz v0, :cond_e

    .line 84
    return v1

    .line 85
    .line 86
    :cond_e
    instance-of v0, p0, Landroidx/renderscript/Int4;

    .line 87
    .line 88
    const/16 v4, 0x10

    .line 89
    .line 90
    if-eqz v0, :cond_f

    .line 91
    return v4

    .line 92
    .line 93
    :cond_f
    instance-of v0, p0, Landroidx/renderscript/Long2;

    .line 94
    .line 95
    if-eqz v0, :cond_10

    .line 96
    return v4

    .line 97
    .line 98
    :cond_10
    instance-of v0, p0, Landroidx/renderscript/Long3;

    .line 99
    .line 100
    const/16 v5, 0x18

    .line 101
    .line 102
    if-eqz v0, :cond_11

    .line 103
    return v5

    .line 104
    .line 105
    :cond_11
    instance-of v0, p0, Landroidx/renderscript/Long4;

    .line 106
    .line 107
    const/16 v6, 0x20

    .line 108
    .line 109
    if-eqz v0, :cond_12

    .line 110
    return v6

    .line 111
    .line 112
    :cond_12
    instance-of v0, p0, Landroidx/renderscript/Float2;

    .line 113
    .line 114
    if-eqz v0, :cond_13

    .line 115
    return v3

    .line 116
    .line 117
    :cond_13
    instance-of v0, p0, Landroidx/renderscript/Float3;

    .line 118
    .line 119
    if-eqz v0, :cond_14

    .line 120
    return v1

    .line 121
    .line 122
    :cond_14
    instance-of v0, p0, Landroidx/renderscript/Float4;

    .line 123
    .line 124
    if-eqz v0, :cond_15

    .line 125
    return v4

    .line 126
    .line 127
    :cond_15
    instance-of v0, p0, Landroidx/renderscript/Double2;

    .line 128
    .line 129
    if-eqz v0, :cond_16

    .line 130
    return v4

    .line 131
    .line 132
    :cond_16
    instance-of v0, p0, Landroidx/renderscript/Double3;

    .line 133
    .line 134
    if-eqz v0, :cond_17

    .line 135
    return v5

    .line 136
    .line 137
    :cond_17
    instance-of v0, p0, Landroidx/renderscript/Double4;

    .line 138
    .line 139
    if-eqz v0, :cond_18

    .line 140
    return v6

    .line 141
    .line 142
    :cond_18
    instance-of v0, p0, Landroidx/renderscript/Matrix2f;

    .line 143
    .line 144
    if-eqz v0, :cond_19

    .line 145
    return v4

    .line 146
    .line 147
    :cond_19
    instance-of v0, p0, Landroidx/renderscript/Matrix3f;

    .line 148
    .line 149
    if-eqz v0, :cond_1a

    .line 150
    .line 151
    const/16 p0, 0x24

    .line 152
    return p0

    .line 153
    .line 154
    :cond_1a
    instance-of v0, p0, Landroidx/renderscript/Matrix4f;

    .line 155
    .line 156
    if-eqz v0, :cond_1b

    .line 157
    .line 158
    const/16 p0, 0x40

    .line 159
    return p0

    .line 160
    .line 161
    :cond_1b
    instance-of p0, p0, Landroidx/renderscript/BaseObj;

    .line 162
    .line 163
    if-eqz p0, :cond_1d

    .line 164
    .line 165
    sget p0, Landroidx/renderscript/RenderScript;->sPointerSize:I

    .line 166
    .line 167
    if-ne p0, v3, :cond_1c

    .line 168
    return v6

    .line 169
    :cond_1c
    return v2

    .line 170
    :cond_1d
    const/4 p0, 0x0

    .line 171
    return p0
.end method

.method private resize(I)Z
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Landroidx/renderscript/FieldPacker;->mLen:I

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    :cond_0
    new-array v0, p1, [B

    .line 9
    .line 10
    iget-object v2, p0, Landroidx/renderscript/FieldPacker;->mData:[B

    .line 11
    .line 12
    iget v3, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    .line 13
    .line 14
    .line 15
    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    .line 17
    iput-object v0, p0, Landroidx/renderscript/FieldPacker;->mData:[B

    .line 18
    .line 19
    iput p1, p0, Landroidx/renderscript/FieldPacker;->mLen:I

    .line 20
    const/4 p1, 0x1

    .line 21
    return p1
.end method


# virtual methods
.method public addBoolean(Z)V
    .locals 0

    .line 1
    int-to-byte p1, p1

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addI8(B)V

    .line 5
    return-void
.end method

.method public addF32(F)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addI32(I)V

    return-void
.end method

.method public addF32(Landroidx/renderscript/Float2;)V
    .locals 1

    .line 2
    iget v0, p1, Landroidx/renderscript/Float2;->x:F

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addF32(F)V

    .line 3
    iget p1, p1, Landroidx/renderscript/Float2;->y:F

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addF32(F)V

    return-void
.end method

.method public addF32(Landroidx/renderscript/Float3;)V
    .locals 1

    .line 4
    iget v0, p1, Landroidx/renderscript/Float3;->x:F

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addF32(F)V

    .line 5
    iget v0, p1, Landroidx/renderscript/Float3;->y:F

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addF32(F)V

    .line 6
    iget p1, p1, Landroidx/renderscript/Float3;->z:F

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addF32(F)V

    return-void
.end method

.method public addF32(Landroidx/renderscript/Float4;)V
    .locals 1

    .line 7
    iget v0, p1, Landroidx/renderscript/Float4;->x:F

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addF32(F)V

    .line 8
    iget v0, p1, Landroidx/renderscript/Float4;->y:F

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addF32(F)V

    .line 9
    iget v0, p1, Landroidx/renderscript/Float4;->z:F

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addF32(F)V

    .line 10
    iget p1, p1, Landroidx/renderscript/Float4;->w:F

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addF32(F)V

    return-void
.end method

.method public addF64(D)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroidx/renderscript/FieldPacker;->addI64(J)V

    return-void
.end method

.method public addF64(Landroidx/renderscript/Double2;)V
    .locals 2

    .line 2
    iget-wide v0, p1, Landroidx/renderscript/Double2;->x:D

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addF64(D)V

    .line 3
    iget-wide v0, p1, Landroidx/renderscript/Double2;->y:D

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addF64(D)V

    return-void
.end method

.method public addF64(Landroidx/renderscript/Double3;)V
    .locals 2

    .line 4
    iget-wide v0, p1, Landroidx/renderscript/Double3;->x:D

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addF64(D)V

    .line 5
    iget-wide v0, p1, Landroidx/renderscript/Double3;->y:D

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addF64(D)V

    .line 6
    iget-wide v0, p1, Landroidx/renderscript/Double3;->z:D

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addF64(D)V

    return-void
.end method

.method public addF64(Landroidx/renderscript/Double4;)V
    .locals 2

    .line 7
    iget-wide v0, p1, Landroidx/renderscript/Double4;->x:D

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addF64(D)V

    .line 8
    iget-wide v0, p1, Landroidx/renderscript/Double4;->y:D

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addF64(D)V

    .line 9
    iget-wide v0, p1, Landroidx/renderscript/Double4;->z:D

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addF64(D)V

    .line 10
    iget-wide v0, p1, Landroidx/renderscript/Double4;->w:D

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addF64(D)V

    return-void
.end method

.method public addI16(Landroidx/renderscript/Short2;)V
    .locals 1

    .line 4
    iget-short v0, p1, Landroidx/renderscript/Short2;->x:S

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addI16(S)V

    .line 5
    iget-short p1, p1, Landroidx/renderscript/Short2;->y:S

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addI16(S)V

    return-void
.end method

.method public addI16(Landroidx/renderscript/Short3;)V
    .locals 1

    .line 6
    iget-short v0, p1, Landroidx/renderscript/Short3;->x:S

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addI16(S)V

    .line 7
    iget-short v0, p1, Landroidx/renderscript/Short3;->y:S

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addI16(S)V

    .line 8
    iget-short p1, p1, Landroidx/renderscript/Short3;->z:S

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addI16(S)V

    return-void
.end method

.method public addI16(Landroidx/renderscript/Short4;)V
    .locals 1

    .line 9
    iget-short v0, p1, Landroidx/renderscript/Short4;->x:S

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addI16(S)V

    .line 10
    iget-short v0, p1, Landroidx/renderscript/Short4;->y:S

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addI16(S)V

    .line 11
    iget-short v0, p1, Landroidx/renderscript/Short4;->z:S

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addI16(S)V

    .line 12
    iget-short p1, p1, Landroidx/renderscript/Short4;->w:S

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addI16(S)V

    return-void
.end method

.method public addI16(S)V
    .locals 5

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->align(I)V

    iget-object v1, p0, Landroidx/renderscript/FieldPacker;->mData:[B

    iget v2, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v3, v2, 0x1

    and-int/lit16 v4, p1, 0xff

    int-to-byte v4, v4

    .line 2
    aput-byte v4, v1, v2

    add-int/2addr v2, v0

    iput v2, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    shr-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    .line 3
    aput-byte p1, v1, v3

    return-void
.end method

.method public addI32(I)V
    .locals 6

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->align(I)V

    iget-object v1, p0, Landroidx/renderscript/FieldPacker;->mData:[B

    iget v2, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v3, v2, 0x1

    and-int/lit16 v4, p1, 0xff

    int-to-byte v4, v4

    .line 2
    aput-byte v4, v1, v2

    add-int/lit8 v4, v2, 0x2

    shr-int/lit8 v5, p1, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    .line 3
    aput-byte v5, v1, v3

    add-int/lit8 v3, v2, 0x3

    shr-int/lit8 v5, p1, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    .line 4
    aput-byte v5, v1, v4

    add-int/2addr v2, v0

    iput v2, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 5
    aput-byte p1, v1, v3

    return-void
.end method

.method public addI32(Landroidx/renderscript/Int2;)V
    .locals 1

    .line 6
    iget v0, p1, Landroidx/renderscript/Int2;->x:I

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addI32(I)V

    .line 7
    iget p1, p1, Landroidx/renderscript/Int2;->y:I

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addI32(I)V

    return-void
.end method

.method public addI32(Landroidx/renderscript/Int3;)V
    .locals 1

    .line 8
    iget v0, p1, Landroidx/renderscript/Int3;->x:I

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addI32(I)V

    .line 9
    iget v0, p1, Landroidx/renderscript/Int3;->y:I

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addI32(I)V

    .line 10
    iget p1, p1, Landroidx/renderscript/Int3;->z:I

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addI32(I)V

    return-void
.end method

.method public addI32(Landroidx/renderscript/Int4;)V
    .locals 1

    .line 11
    iget v0, p1, Landroidx/renderscript/Int4;->x:I

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addI32(I)V

    .line 12
    iget v0, p1, Landroidx/renderscript/Int4;->y:I

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addI32(I)V

    .line 13
    iget v0, p1, Landroidx/renderscript/Int4;->z:I

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addI32(I)V

    .line 14
    iget p1, p1, Landroidx/renderscript/Int4;->w:I

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addI32(I)V

    return-void
.end method

.method public addI64(J)V
    .locals 9

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->align(I)V

    iget-object v1, p0, Landroidx/renderscript/FieldPacker;->mData:[B

    iget v2, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v3, v2, 0x1

    const-wide/16 v4, 0xff

    and-long v6, p1, v4

    long-to-int v6, v6

    int-to-byte v6, v6

    .line 2
    aput-byte v6, v1, v2

    add-int/lit8 v6, v2, 0x2

    shr-long v7, p1, v0

    and-long/2addr v7, v4

    long-to-int v7, v7

    int-to-byte v7, v7

    .line 3
    aput-byte v7, v1, v3

    add-int/lit8 v3, v2, 0x3

    const/16 v7, 0x10

    shr-long v7, p1, v7

    and-long/2addr v7, v4

    long-to-int v7, v7

    int-to-byte v7, v7

    .line 4
    aput-byte v7, v1, v6

    add-int/lit8 v6, v2, 0x4

    const/16 v7, 0x18

    shr-long v7, p1, v7

    and-long/2addr v7, v4

    long-to-int v7, v7

    int-to-byte v7, v7

    .line 5
    aput-byte v7, v1, v3

    add-int/lit8 v3, v2, 0x5

    const/16 v7, 0x20

    shr-long v7, p1, v7

    and-long/2addr v7, v4

    long-to-int v7, v7

    int-to-byte v7, v7

    .line 6
    aput-byte v7, v1, v6

    add-int/lit8 v6, v2, 0x6

    const/16 v7, 0x28

    shr-long v7, p1, v7

    and-long/2addr v7, v4

    long-to-int v7, v7

    int-to-byte v7, v7

    .line 7
    aput-byte v7, v1, v3

    add-int/lit8 v3, v2, 0x7

    const/16 v7, 0x30

    shr-long v7, p1, v7

    and-long/2addr v7, v4

    long-to-int v7, v7

    int-to-byte v7, v7

    .line 8
    aput-byte v7, v1, v6

    add-int/2addr v2, v0

    iput v2, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    const/16 v0, 0x38

    shr-long/2addr p1, v0

    and-long/2addr p1, v4

    long-to-int p1, p1

    int-to-byte p1, p1

    .line 9
    aput-byte p1, v1, v3

    return-void
.end method

.method public addI64(Landroidx/renderscript/Long2;)V
    .locals 2

    .line 10
    iget-wide v0, p1, Landroidx/renderscript/Long2;->x:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addI64(J)V

    .line 11
    iget-wide v0, p1, Landroidx/renderscript/Long2;->y:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addI64(J)V

    return-void
.end method

.method public addI64(Landroidx/renderscript/Long3;)V
    .locals 2

    .line 12
    iget-wide v0, p1, Landroidx/renderscript/Long3;->x:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addI64(J)V

    .line 13
    iget-wide v0, p1, Landroidx/renderscript/Long3;->y:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addI64(J)V

    .line 14
    iget-wide v0, p1, Landroidx/renderscript/Long3;->z:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addI64(J)V

    return-void
.end method

.method public addI64(Landroidx/renderscript/Long4;)V
    .locals 2

    .line 15
    iget-wide v0, p1, Landroidx/renderscript/Long4;->x:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addI64(J)V

    .line 16
    iget-wide v0, p1, Landroidx/renderscript/Long4;->y:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addI64(J)V

    .line 17
    iget-wide v0, p1, Landroidx/renderscript/Long4;->z:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addI64(J)V

    .line 18
    iget-wide v0, p1, Landroidx/renderscript/Long4;->w:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addI64(J)V

    return-void
.end method

.method public addI8(B)V
    .locals 3

    iget-object v0, p0, Landroidx/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    .line 1
    aput-byte p1, v0, v1

    return-void
.end method

.method public addI8(Landroidx/renderscript/Byte2;)V
    .locals 1

    .line 2
    iget-byte v0, p1, Landroidx/renderscript/Byte2;->x:B

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addI8(B)V

    .line 3
    iget-byte p1, p1, Landroidx/renderscript/Byte2;->y:B

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addI8(B)V

    return-void
.end method

.method public addI8(Landroidx/renderscript/Byte3;)V
    .locals 1

    .line 4
    iget-byte v0, p1, Landroidx/renderscript/Byte3;->x:B

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addI8(B)V

    .line 5
    iget-byte v0, p1, Landroidx/renderscript/Byte3;->y:B

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addI8(B)V

    .line 6
    iget-byte p1, p1, Landroidx/renderscript/Byte3;->z:B

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addI8(B)V

    return-void
.end method

.method public addI8(Landroidx/renderscript/Byte4;)V
    .locals 1

    .line 7
    iget-byte v0, p1, Landroidx/renderscript/Byte4;->x:B

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addI8(B)V

    .line 8
    iget-byte v0, p1, Landroidx/renderscript/Byte4;->y:B

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addI8(B)V

    .line 9
    iget-byte v0, p1, Landroidx/renderscript/Byte4;->z:B

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addI8(B)V

    .line 10
    iget-byte p1, p1, Landroidx/renderscript/Byte4;->w:B

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addI8(B)V

    return-void
.end method

.method public addMatrix(Landroidx/renderscript/Matrix2f;)V
    .locals 3

    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v1, p1, Landroidx/renderscript/Matrix2f;->mMat:[F

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 6
    aget v1, v1, v0

    invoke-virtual {p0, v1}, Landroidx/renderscript/FieldPacker;->addF32(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addMatrix(Landroidx/renderscript/Matrix3f;)V
    .locals 3

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p1, Landroidx/renderscript/Matrix3f;->mMat:[F

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 4
    aget v1, v1, v0

    invoke-virtual {p0, v1}, Landroidx/renderscript/FieldPacker;->addF32(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addMatrix(Landroidx/renderscript/Matrix4f;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p1, Landroidx/renderscript/Matrix4f;->mMat:[F

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 2
    aget v1, v1, v0

    invoke-virtual {p0, v1}, Landroidx/renderscript/FieldPacker;->addF32(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addObj(Landroidx/renderscript/BaseObj;)V
    .locals 5

    .line 1
    .line 2
    const/16 v0, 0x8

    .line 3
    .line 4
    const-wide/16 v1, 0x0

    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    sget v3, Landroidx/renderscript/RenderScript;->sPointerSize:I

    .line 9
    const/4 v4, 0x0

    .line 10
    .line 11
    if-ne v3, v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 15
    move-result-wide v3

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v3, v4}, Landroidx/renderscript/FieldPacker;->addI64(J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v1, v2}, Landroidx/renderscript/FieldPacker;->addI64(J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v1, v2}, Landroidx/renderscript/FieldPacker;->addI64(J)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v1, v2}, Landroidx/renderscript/FieldPacker;->addI64(J)V

    .line 28
    goto :goto_0

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-virtual {p1, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 32
    move-result-wide v0

    .line 33
    long-to-int p1, v0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addI32(I)V

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :cond_1
    sget p1, Landroidx/renderscript/RenderScript;->sPointerSize:I

    .line 40
    .line 41
    if-ne p1, v0, :cond_2

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v1, v2}, Landroidx/renderscript/FieldPacker;->addI64(J)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v1, v2}, Landroidx/renderscript/FieldPacker;->addI64(J)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v1, v2}, Landroidx/renderscript/FieldPacker;->addI64(J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v1, v2}, Landroidx/renderscript/FieldPacker;->addI64(J)V

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    const/4 p1, 0x0

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addI32(I)V

    .line 59
    :goto_0
    return-void
.end method

.method public addU16(I)V
    .locals 5

    if-ltz p1, :cond_0

    const v0, 0xffff

    if-gt p1, v0, :cond_0

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->align(I)V

    iget-object v1, p0, Landroidx/renderscript/FieldPacker;->mData:[B

    iget v2, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v3, v2, 0x1

    and-int/lit16 v4, p1, 0xff

    int-to-byte v4, v4

    .line 2
    aput-byte v4, v1, v2

    add-int/2addr v2, v0

    iput v2, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    shr-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    .line 3
    aput-byte p1, v1, v3

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FieldPacker.addU16( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " )"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "rs"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Saving value out of range for type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addU16(Landroidx/renderscript/Int2;)V
    .locals 1

    .line 6
    iget v0, p1, Landroidx/renderscript/Int2;->x:I

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addU16(I)V

    .line 7
    iget p1, p1, Landroidx/renderscript/Int2;->y:I

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addU16(I)V

    return-void
.end method

.method public addU16(Landroidx/renderscript/Int3;)V
    .locals 1

    .line 8
    iget v0, p1, Landroidx/renderscript/Int3;->x:I

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addU16(I)V

    .line 9
    iget v0, p1, Landroidx/renderscript/Int3;->y:I

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addU16(I)V

    .line 10
    iget p1, p1, Landroidx/renderscript/Int3;->z:I

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addU16(I)V

    return-void
.end method

.method public addU16(Landroidx/renderscript/Int4;)V
    .locals 1

    .line 11
    iget v0, p1, Landroidx/renderscript/Int4;->x:I

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addU16(I)V

    .line 12
    iget v0, p1, Landroidx/renderscript/Int4;->y:I

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addU16(I)V

    .line 13
    iget v0, p1, Landroidx/renderscript/Int4;->z:I

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addU16(I)V

    .line 14
    iget p1, p1, Landroidx/renderscript/Int4;->w:I

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addU16(I)V

    return-void
.end method

.method public addU32(J)V
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->align(I)V

    iget-object v1, p0, Landroidx/renderscript/FieldPacker;->mData:[B

    iget v2, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v3, v2, 0x1

    const-wide/16 v4, 0xff

    and-long v6, p1, v4

    long-to-int v6, v6

    int-to-byte v6, v6

    .line 2
    aput-byte v6, v1, v2

    add-int/lit8 v6, v2, 0x2

    const/16 v7, 0x8

    shr-long v7, p1, v7

    and-long/2addr v7, v4

    long-to-int v7, v7

    int-to-byte v7, v7

    .line 3
    aput-byte v7, v1, v3

    add-int/lit8 v3, v2, 0x3

    const/16 v7, 0x10

    shr-long v7, p1, v7

    and-long/2addr v7, v4

    long-to-int v7, v7

    int-to-byte v7, v7

    .line 4
    aput-byte v7, v1, v6

    add-int/2addr v2, v0

    iput v2, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    const/16 v0, 0x18

    shr-long/2addr p1, v0

    and-long/2addr p1, v4

    long-to-int p1, p1

    int-to-byte p1, p1

    .line 5
    aput-byte p1, v1, v3

    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FieldPacker.addU32( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " )"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "rs"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Saving value out of range for type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addU32(Landroidx/renderscript/Long2;)V
    .locals 2

    .line 8
    iget-wide v0, p1, Landroidx/renderscript/Long2;->x:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addU32(J)V

    .line 9
    iget-wide v0, p1, Landroidx/renderscript/Long2;->y:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addU32(J)V

    return-void
.end method

.method public addU32(Landroidx/renderscript/Long3;)V
    .locals 2

    .line 10
    iget-wide v0, p1, Landroidx/renderscript/Long3;->x:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addU32(J)V

    .line 11
    iget-wide v0, p1, Landroidx/renderscript/Long3;->y:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addU32(J)V

    .line 12
    iget-wide v0, p1, Landroidx/renderscript/Long3;->z:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addU32(J)V

    return-void
.end method

.method public addU32(Landroidx/renderscript/Long4;)V
    .locals 2

    .line 13
    iget-wide v0, p1, Landroidx/renderscript/Long4;->x:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addU32(J)V

    .line 14
    iget-wide v0, p1, Landroidx/renderscript/Long4;->y:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addU32(J)V

    .line 15
    iget-wide v0, p1, Landroidx/renderscript/Long4;->z:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addU32(J)V

    .line 16
    iget-wide v0, p1, Landroidx/renderscript/Long4;->w:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addU32(J)V

    return-void
.end method

.method public addU64(J)V
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->align(I)V

    iget-object v1, p0, Landroidx/renderscript/FieldPacker;->mData:[B

    iget v2, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v3, v2, 0x1

    const-wide/16 v4, 0xff

    and-long v6, p1, v4

    long-to-int v6, v6

    int-to-byte v6, v6

    .line 2
    aput-byte v6, v1, v2

    add-int/lit8 v6, v2, 0x2

    shr-long v7, p1, v0

    and-long/2addr v7, v4

    long-to-int v7, v7

    int-to-byte v7, v7

    .line 3
    aput-byte v7, v1, v3

    add-int/lit8 v3, v2, 0x3

    const/16 v7, 0x10

    shr-long v7, p1, v7

    and-long/2addr v7, v4

    long-to-int v7, v7

    int-to-byte v7, v7

    .line 4
    aput-byte v7, v1, v6

    add-int/lit8 v6, v2, 0x4

    const/16 v7, 0x18

    shr-long v7, p1, v7

    and-long/2addr v7, v4

    long-to-int v7, v7

    int-to-byte v7, v7

    .line 5
    aput-byte v7, v1, v3

    add-int/lit8 v3, v2, 0x5

    const/16 v7, 0x20

    shr-long v7, p1, v7

    and-long/2addr v7, v4

    long-to-int v7, v7

    int-to-byte v7, v7

    .line 6
    aput-byte v7, v1, v6

    add-int/lit8 v6, v2, 0x6

    const/16 v7, 0x28

    shr-long v7, p1, v7

    and-long/2addr v7, v4

    long-to-int v7, v7

    int-to-byte v7, v7

    .line 7
    aput-byte v7, v1, v3

    add-int/lit8 v3, v2, 0x7

    const/16 v7, 0x30

    shr-long v7, p1, v7

    and-long/2addr v7, v4

    long-to-int v7, v7

    int-to-byte v7, v7

    .line 8
    aput-byte v7, v1, v6

    add-int/2addr v2, v0

    iput v2, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    const/16 v0, 0x38

    shr-long/2addr p1, v0

    and-long/2addr p1, v4

    long-to-int p1, p1

    int-to-byte p1, p1

    .line 9
    aput-byte p1, v1, v3

    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FieldPacker.addU64( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " )"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "rs"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Saving value out of range for type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addU64(Landroidx/renderscript/Long2;)V
    .locals 2

    .line 12
    iget-wide v0, p1, Landroidx/renderscript/Long2;->x:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addU64(J)V

    .line 13
    iget-wide v0, p1, Landroidx/renderscript/Long2;->y:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addU64(J)V

    return-void
.end method

.method public addU64(Landroidx/renderscript/Long3;)V
    .locals 2

    .line 14
    iget-wide v0, p1, Landroidx/renderscript/Long3;->x:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addU64(J)V

    .line 15
    iget-wide v0, p1, Landroidx/renderscript/Long3;->y:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addU64(J)V

    .line 16
    iget-wide v0, p1, Landroidx/renderscript/Long3;->z:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addU64(J)V

    return-void
.end method

.method public addU64(Landroidx/renderscript/Long4;)V
    .locals 2

    .line 17
    iget-wide v0, p1, Landroidx/renderscript/Long4;->x:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addU64(J)V

    .line 18
    iget-wide v0, p1, Landroidx/renderscript/Long4;->y:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addU64(J)V

    .line 19
    iget-wide v0, p1, Landroidx/renderscript/Long4;->z:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addU64(J)V

    .line 20
    iget-wide v0, p1, Landroidx/renderscript/Long4;->w:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addU64(J)V

    return-void
.end method

.method public addU8(Landroidx/renderscript/Short2;)V
    .locals 1

    .line 4
    iget-short v0, p1, Landroidx/renderscript/Short2;->x:S

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addU8(S)V

    .line 5
    iget-short p1, p1, Landroidx/renderscript/Short2;->y:S

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addU8(S)V

    return-void
.end method

.method public addU8(Landroidx/renderscript/Short3;)V
    .locals 1

    .line 6
    iget-short v0, p1, Landroidx/renderscript/Short3;->x:S

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addU8(S)V

    .line 7
    iget-short v0, p1, Landroidx/renderscript/Short3;->y:S

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addU8(S)V

    .line 8
    iget-short p1, p1, Landroidx/renderscript/Short3;->z:S

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addU8(S)V

    return-void
.end method

.method public addU8(Landroidx/renderscript/Short4;)V
    .locals 1

    .line 9
    iget-short v0, p1, Landroidx/renderscript/Short4;->x:S

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addU8(S)V

    .line 10
    iget-short v0, p1, Landroidx/renderscript/Short4;->y:S

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addU8(S)V

    .line 11
    iget-short v0, p1, Landroidx/renderscript/Short4;->z:S

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addU8(S)V

    .line 12
    iget-short p1, p1, Landroidx/renderscript/Short4;->w:S

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addU8(S)V

    return-void
.end method

.method public addU8(S)V
    .locals 3

    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Landroidx/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    int-to-byte p1, p1

    .line 1
    aput-byte p1, v0, v1

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FieldPacker.addU8( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " )"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "rs"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Saving value out of range for type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public align(I)V
    .locals 3

    .line 1
    .line 2
    if-lez p1, :cond_1

    .line 3
    .line 4
    add-int/lit8 v0, p1, -0x1

    .line 5
    .line 6
    and-int v1, p1, v0

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    :goto_0
    iget p1, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    .line 11
    .line 12
    and-int v1, p1, v0

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Landroidx/renderscript/FieldPacker;->mAlignment:Ljava/util/BitSet;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1}, Ljava/util/BitSet;->flip(I)V

    .line 20
    .line 21
    iget-object p1, p0, Landroidx/renderscript/FieldPacker;->mData:[B

    .line 22
    .line 23
    iget v1, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    .line 24
    .line 25
    add-int/lit8 v2, v1, 0x1

    .line 26
    .line 27
    iput v2, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    .line 28
    const/4 v2, 0x0

    .line 29
    .line 30
    aput-byte v2, p1, v1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void

    .line 33
    .line 34
    :cond_1
    new-instance v0, Landroidx/renderscript/RSIllegalArgumentException;

    .line 35
    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    const-string v2, "argument must be a non-negative non-zero power of 2: "

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    .line 54
    invoke-direct {v0, p1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 55
    throw v0
.end method

.method public final getData()[B
    .locals 1

    iget-object v0, p0, Landroidx/renderscript/FieldPacker;->mData:[B

    return-object v0
.end method

.method public getPos()I
    .locals 1

    iget v0, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    return v0
.end method

.method public reset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    return-void
.end method

.method public reset(I)V
    .locals 3

    if-ltz p1, :cond_0

    iget v0, p0, Landroidx/renderscript/FieldPacker;->mLen:I

    if-gt p1, v0, :cond_0

    iput p1, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroidx/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "out of range argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skip(I)V
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    .line 3
    add-int/2addr v0, p1

    .line 4
    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    iget v1, p0, Landroidx/renderscript/FieldPacker;->mLen:I

    .line 8
    .line 9
    if-gt v0, v1, :cond_0

    .line 10
    .line 11
    iput v0, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    .line 12
    return-void

    .line 13
    .line 14
    :cond_0
    new-instance v0, Landroidx/renderscript/RSIllegalArgumentException;

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string/jumbo v2, "out of range argument: "

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, p1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 36
    throw v0
.end method

.method public subBoolean()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI8()B

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    return v1

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public subByte2()Landroidx/renderscript/Byte2;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/renderscript/Byte2;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/renderscript/Byte2;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI8()B

    .line 9
    move-result v1

    .line 10
    .line 11
    iput-byte v1, v0, Landroidx/renderscript/Byte2;->y:B

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI8()B

    .line 15
    move-result v1

    .line 16
    .line 17
    iput-byte v1, v0, Landroidx/renderscript/Byte2;->x:B

    .line 18
    return-object v0
.end method

.method public subByte3()Landroidx/renderscript/Byte3;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/renderscript/Byte3;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/renderscript/Byte3;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI8()B

    .line 9
    move-result v1

    .line 10
    .line 11
    iput-byte v1, v0, Landroidx/renderscript/Byte3;->z:B

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI8()B

    .line 15
    move-result v1

    .line 16
    .line 17
    iput-byte v1, v0, Landroidx/renderscript/Byte3;->y:B

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI8()B

    .line 21
    move-result v1

    .line 22
    .line 23
    iput-byte v1, v0, Landroidx/renderscript/Byte3;->x:B

    .line 24
    return-object v0
.end method

.method public subByte4()Landroidx/renderscript/Byte4;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/renderscript/Byte4;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/renderscript/Byte4;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI8()B

    .line 9
    move-result v1

    .line 10
    .line 11
    iput-byte v1, v0, Landroidx/renderscript/Byte4;->w:B

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI8()B

    .line 15
    move-result v1

    .line 16
    .line 17
    iput-byte v1, v0, Landroidx/renderscript/Byte4;->z:B

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI8()B

    .line 21
    move-result v1

    .line 22
    .line 23
    iput-byte v1, v0, Landroidx/renderscript/Byte4;->y:B

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI8()B

    .line 27
    move-result v1

    .line 28
    .line 29
    iput-byte v1, v0, Landroidx/renderscript/Byte4;->x:B

    .line 30
    return-object v0
.end method

.method public subDouble2()Landroidx/renderscript/Double2;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroidx/renderscript/Double2;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/renderscript/Double2;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subF64()D

    .line 9
    move-result-wide v1

    .line 10
    .line 11
    iput-wide v1, v0, Landroidx/renderscript/Double2;->y:D

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subF64()D

    .line 15
    move-result-wide v1

    .line 16
    .line 17
    iput-wide v1, v0, Landroidx/renderscript/Double2;->x:D

    .line 18
    return-object v0
.end method

.method public subDouble3()Landroidx/renderscript/Double3;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroidx/renderscript/Double3;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/renderscript/Double3;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subF64()D

    .line 9
    move-result-wide v1

    .line 10
    .line 11
    iput-wide v1, v0, Landroidx/renderscript/Double3;->z:D

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subF64()D

    .line 15
    move-result-wide v1

    .line 16
    .line 17
    iput-wide v1, v0, Landroidx/renderscript/Double3;->y:D

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subF64()D

    .line 21
    move-result-wide v1

    .line 22
    .line 23
    iput-wide v1, v0, Landroidx/renderscript/Double3;->x:D

    .line 24
    return-object v0
.end method

.method public subDouble4()Landroidx/renderscript/Double4;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroidx/renderscript/Double4;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/renderscript/Double4;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subF64()D

    .line 9
    move-result-wide v1

    .line 10
    .line 11
    iput-wide v1, v0, Landroidx/renderscript/Double4;->w:D

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subF64()D

    .line 15
    move-result-wide v1

    .line 16
    .line 17
    iput-wide v1, v0, Landroidx/renderscript/Double4;->z:D

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subF64()D

    .line 21
    move-result-wide v1

    .line 22
    .line 23
    iput-wide v1, v0, Landroidx/renderscript/Double4;->y:D

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subF64()D

    .line 27
    move-result-wide v1

    .line 28
    .line 29
    iput-wide v1, v0, Landroidx/renderscript/Double4;->x:D

    .line 30
    return-object v0
.end method

.method public subF32()F
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI32()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public subF64()D
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI64()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public subFloat2()Landroidx/renderscript/Float2;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/renderscript/Float2;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/renderscript/Float2;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subF32()F

    .line 9
    move-result v1

    .line 10
    .line 11
    iput v1, v0, Landroidx/renderscript/Float2;->y:F

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subF32()F

    .line 15
    move-result v1

    .line 16
    .line 17
    iput v1, v0, Landroidx/renderscript/Float2;->x:F

    .line 18
    return-object v0
.end method

.method public subFloat3()Landroidx/renderscript/Float3;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/renderscript/Float3;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/renderscript/Float3;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subF32()F

    .line 9
    move-result v1

    .line 10
    .line 11
    iput v1, v0, Landroidx/renderscript/Float3;->z:F

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subF32()F

    .line 15
    move-result v1

    .line 16
    .line 17
    iput v1, v0, Landroidx/renderscript/Float3;->y:F

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subF32()F

    .line 21
    move-result v1

    .line 22
    .line 23
    iput v1, v0, Landroidx/renderscript/Float3;->x:F

    .line 24
    return-object v0
.end method

.method public subFloat4()Landroidx/renderscript/Float4;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/renderscript/Float4;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/renderscript/Float4;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subF32()F

    .line 9
    move-result v1

    .line 10
    .line 11
    iput v1, v0, Landroidx/renderscript/Float4;->w:F

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subF32()F

    .line 15
    move-result v1

    .line 16
    .line 17
    iput v1, v0, Landroidx/renderscript/Float4;->z:F

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subF32()F

    .line 21
    move-result v1

    .line 22
    .line 23
    iput v1, v0, Landroidx/renderscript/Float4;->y:F

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subF32()F

    .line 27
    move-result v1

    .line 28
    .line 29
    iput v1, v0, Landroidx/renderscript/Float4;->x:F

    .line 30
    return-object v0
.end method

.method public subI16()S
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->subalign(I)V

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/renderscript/FieldPacker;->mData:[B

    .line 7
    .line 8
    iget v2, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    .line 9
    .line 10
    add-int/lit8 v3, v2, -0x1

    .line 11
    .line 12
    aget-byte v3, v1, v3

    .line 13
    .line 14
    and-int/lit16 v3, v3, 0xff

    .line 15
    .line 16
    shl-int/lit8 v3, v3, 0x8

    .line 17
    int-to-short v3, v3

    .line 18
    sub-int/2addr v2, v0

    .line 19
    .line 20
    iput v2, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    .line 21
    .line 22
    aget-byte v0, v1, v2

    .line 23
    .line 24
    and-int/lit16 v0, v0, 0xff

    .line 25
    int-to-short v0, v0

    .line 26
    or-int/2addr v0, v3

    .line 27
    int-to-short v0, v0

    .line 28
    return v0
.end method

.method public subI32()I
    .locals 5

    .line 1
    const/4 v0, 0x4

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->subalign(I)V

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/renderscript/FieldPacker;->mData:[B

    .line 7
    .line 8
    iget v2, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    .line 9
    .line 10
    add-int/lit8 v3, v2, -0x1

    .line 11
    .line 12
    aget-byte v3, v1, v3

    .line 13
    .line 14
    and-int/lit16 v3, v3, 0xff

    .line 15
    .line 16
    shl-int/lit8 v3, v3, 0x18

    .line 17
    .line 18
    add-int/lit8 v4, v2, -0x2

    .line 19
    .line 20
    aget-byte v4, v1, v4

    .line 21
    .line 22
    and-int/lit16 v4, v4, 0xff

    .line 23
    .line 24
    shl-int/lit8 v4, v4, 0x10

    .line 25
    or-int/2addr v3, v4

    .line 26
    .line 27
    add-int/lit8 v4, v2, -0x3

    .line 28
    .line 29
    aget-byte v4, v1, v4

    .line 30
    .line 31
    and-int/lit16 v4, v4, 0xff

    .line 32
    .line 33
    shl-int/lit8 v4, v4, 0x8

    .line 34
    or-int/2addr v3, v4

    .line 35
    sub-int/2addr v2, v0

    .line 36
    .line 37
    iput v2, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    .line 38
    .line 39
    aget-byte v0, v1, v2

    .line 40
    .line 41
    and-int/lit16 v0, v0, 0xff

    .line 42
    or-int/2addr v0, v3

    .line 43
    return v0
.end method

.method public subI64()J
    .locals 10

    .line 1
    .line 2
    const/16 v0, 0x8

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->subalign(I)V

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/renderscript/FieldPacker;->mData:[B

    .line 8
    .line 9
    iget v2, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    .line 10
    .line 11
    add-int/lit8 v3, v2, -0x1

    .line 12
    .line 13
    aget-byte v3, v1, v3

    .line 14
    int-to-long v3, v3

    .line 15
    .line 16
    const-wide/16 v5, 0xff

    .line 17
    and-long/2addr v3, v5

    .line 18
    .line 19
    const/16 v7, 0x38

    .line 20
    shl-long/2addr v3, v7

    .line 21
    .line 22
    add-int/lit8 v7, v2, -0x2

    .line 23
    .line 24
    aget-byte v7, v1, v7

    .line 25
    int-to-long v7, v7

    .line 26
    and-long/2addr v7, v5

    .line 27
    .line 28
    const/16 v9, 0x30

    .line 29
    shl-long/2addr v7, v9

    .line 30
    or-long/2addr v3, v7

    .line 31
    .line 32
    add-int/lit8 v7, v2, -0x3

    .line 33
    .line 34
    aget-byte v7, v1, v7

    .line 35
    int-to-long v7, v7

    .line 36
    and-long/2addr v7, v5

    .line 37
    .line 38
    const/16 v9, 0x28

    .line 39
    shl-long/2addr v7, v9

    .line 40
    or-long/2addr v3, v7

    .line 41
    .line 42
    add-int/lit8 v7, v2, -0x4

    .line 43
    .line 44
    aget-byte v7, v1, v7

    .line 45
    int-to-long v7, v7

    .line 46
    and-long/2addr v7, v5

    .line 47
    .line 48
    const/16 v9, 0x20

    .line 49
    shl-long/2addr v7, v9

    .line 50
    or-long/2addr v3, v7

    .line 51
    .line 52
    add-int/lit8 v7, v2, -0x5

    .line 53
    .line 54
    aget-byte v7, v1, v7

    .line 55
    int-to-long v7, v7

    .line 56
    and-long/2addr v7, v5

    .line 57
    .line 58
    const/16 v9, 0x18

    .line 59
    shl-long/2addr v7, v9

    .line 60
    or-long/2addr v3, v7

    .line 61
    .line 62
    add-int/lit8 v7, v2, -0x6

    .line 63
    .line 64
    aget-byte v7, v1, v7

    .line 65
    int-to-long v7, v7

    .line 66
    and-long/2addr v7, v5

    .line 67
    .line 68
    const/16 v9, 0x10

    .line 69
    shl-long/2addr v7, v9

    .line 70
    or-long/2addr v3, v7

    .line 71
    .line 72
    add-int/lit8 v7, v2, -0x7

    .line 73
    .line 74
    aget-byte v7, v1, v7

    .line 75
    int-to-long v7, v7

    .line 76
    and-long/2addr v7, v5

    .line 77
    shl-long/2addr v7, v0

    .line 78
    or-long/2addr v3, v7

    .line 79
    sub-int/2addr v2, v0

    .line 80
    .line 81
    iput v2, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    .line 82
    .line 83
    aget-byte v0, v1, v2

    .line 84
    int-to-long v0, v0

    .line 85
    and-long/2addr v0, v5

    .line 86
    or-long/2addr v0, v3

    .line 87
    return-wide v0
.end method

.method public subI8()B
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->subalign(I)V

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/renderscript/FieldPacker;->mData:[B

    .line 7
    .line 8
    iget v2, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    .line 9
    sub-int/2addr v2, v0

    .line 10
    .line 11
    iput v2, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    .line 12
    .line 13
    aget-byte v0, v1, v2

    .line 14
    return v0
.end method

.method public subInt2()Landroidx/renderscript/Int2;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/renderscript/Int2;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/renderscript/Int2;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI32()I

    .line 9
    move-result v1

    .line 10
    .line 11
    iput v1, v0, Landroidx/renderscript/Int2;->y:I

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI32()I

    .line 15
    move-result v1

    .line 16
    .line 17
    iput v1, v0, Landroidx/renderscript/Int2;->x:I

    .line 18
    return-object v0
.end method

.method public subInt3()Landroidx/renderscript/Int3;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/renderscript/Int3;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/renderscript/Int3;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI32()I

    .line 9
    move-result v1

    .line 10
    .line 11
    iput v1, v0, Landroidx/renderscript/Int3;->z:I

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI32()I

    .line 15
    move-result v1

    .line 16
    .line 17
    iput v1, v0, Landroidx/renderscript/Int3;->y:I

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI32()I

    .line 21
    move-result v1

    .line 22
    .line 23
    iput v1, v0, Landroidx/renderscript/Int3;->x:I

    .line 24
    return-object v0
.end method

.method public subInt4()Landroidx/renderscript/Int4;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/renderscript/Int4;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/renderscript/Int4;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI32()I

    .line 9
    move-result v1

    .line 10
    .line 11
    iput v1, v0, Landroidx/renderscript/Int4;->w:I

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI32()I

    .line 15
    move-result v1

    .line 16
    .line 17
    iput v1, v0, Landroidx/renderscript/Int4;->z:I

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI32()I

    .line 21
    move-result v1

    .line 22
    .line 23
    iput v1, v0, Landroidx/renderscript/Int4;->y:I

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI32()I

    .line 27
    move-result v1

    .line 28
    .line 29
    iput v1, v0, Landroidx/renderscript/Int4;->x:I

    .line 30
    return-object v0
.end method

.method public subLong2()Landroidx/renderscript/Long2;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroidx/renderscript/Long2;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/renderscript/Long2;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI64()J

    .line 9
    move-result-wide v1

    .line 10
    .line 11
    iput-wide v1, v0, Landroidx/renderscript/Long2;->y:J

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI64()J

    .line 15
    move-result-wide v1

    .line 16
    .line 17
    iput-wide v1, v0, Landroidx/renderscript/Long2;->x:J

    .line 18
    return-object v0
.end method

.method public subLong3()Landroidx/renderscript/Long3;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroidx/renderscript/Long3;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/renderscript/Long3;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI64()J

    .line 9
    move-result-wide v1

    .line 10
    .line 11
    iput-wide v1, v0, Landroidx/renderscript/Long3;->z:J

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI64()J

    .line 15
    move-result-wide v1

    .line 16
    .line 17
    iput-wide v1, v0, Landroidx/renderscript/Long3;->y:J

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI64()J

    .line 21
    move-result-wide v1

    .line 22
    .line 23
    iput-wide v1, v0, Landroidx/renderscript/Long3;->x:J

    .line 24
    return-object v0
.end method

.method public subLong4()Landroidx/renderscript/Long4;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroidx/renderscript/Long4;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/renderscript/Long4;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI64()J

    .line 9
    move-result-wide v1

    .line 10
    .line 11
    iput-wide v1, v0, Landroidx/renderscript/Long4;->w:J

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI64()J

    .line 15
    move-result-wide v1

    .line 16
    .line 17
    iput-wide v1, v0, Landroidx/renderscript/Long4;->z:J

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI64()J

    .line 21
    move-result-wide v1

    .line 22
    .line 23
    iput-wide v1, v0, Landroidx/renderscript/Long4;->y:J

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI64()J

    .line 27
    move-result-wide v1

    .line 28
    .line 29
    iput-wide v1, v0, Landroidx/renderscript/Long4;->x:J

    .line 30
    return-object v0
.end method

.method public subMatrix2f()Landroidx/renderscript/Matrix2f;
    .locals 4

    .line 1
    .line 2
    new-instance v0, Landroidx/renderscript/Matrix2f;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/renderscript/Matrix2f;-><init>()V

    .line 6
    .line 7
    iget-object v1, v0, Landroidx/renderscript/Matrix2f;->mMat:[F

    .line 8
    array-length v1, v1

    .line 9
    .line 10
    add-int/lit8 v1, v1, -0x1

    .line 11
    .line 12
    :goto_0
    if-ltz v1, :cond_0

    .line 13
    .line 14
    iget-object v2, v0, Landroidx/renderscript/Matrix2f;->mMat:[F

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subF32()F

    .line 18
    move-result v3

    .line 19
    .line 20
    aput v3, v2, v1

    .line 21
    .line 22
    add-int/lit8 v1, v1, -0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-object v0
.end method

.method public subMatrix3f()Landroidx/renderscript/Matrix3f;
    .locals 4

    .line 1
    .line 2
    new-instance v0, Landroidx/renderscript/Matrix3f;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/renderscript/Matrix3f;-><init>()V

    .line 6
    .line 7
    iget-object v1, v0, Landroidx/renderscript/Matrix3f;->mMat:[F

    .line 8
    array-length v1, v1

    .line 9
    .line 10
    add-int/lit8 v1, v1, -0x1

    .line 11
    .line 12
    :goto_0
    if-ltz v1, :cond_0

    .line 13
    .line 14
    iget-object v2, v0, Landroidx/renderscript/Matrix3f;->mMat:[F

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subF32()F

    .line 18
    move-result v3

    .line 19
    .line 20
    aput v3, v2, v1

    .line 21
    .line 22
    add-int/lit8 v1, v1, -0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-object v0
.end method

.method public subMatrix4f()Landroidx/renderscript/Matrix4f;
    .locals 4

    .line 1
    .line 2
    new-instance v0, Landroidx/renderscript/Matrix4f;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/renderscript/Matrix4f;-><init>()V

    .line 6
    .line 7
    iget-object v1, v0, Landroidx/renderscript/Matrix4f;->mMat:[F

    .line 8
    array-length v1, v1

    .line 9
    .line 10
    add-int/lit8 v1, v1, -0x1

    .line 11
    .line 12
    :goto_0
    if-ltz v1, :cond_0

    .line 13
    .line 14
    iget-object v2, v0, Landroidx/renderscript/Matrix4f;->mMat:[F

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subF32()F

    .line 18
    move-result v3

    .line 19
    .line 20
    aput v3, v2, v1

    .line 21
    .line 22
    add-int/lit8 v1, v1, -0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-object v0
.end method

.method public subShort2()Landroidx/renderscript/Short2;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/renderscript/Short2;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/renderscript/Short2;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI16()S

    .line 9
    move-result v1

    .line 10
    .line 11
    iput-short v1, v0, Landroidx/renderscript/Short2;->y:S

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI16()S

    .line 15
    move-result v1

    .line 16
    .line 17
    iput-short v1, v0, Landroidx/renderscript/Short2;->x:S

    .line 18
    return-object v0
.end method

.method public subShort3()Landroidx/renderscript/Short3;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/renderscript/Short3;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/renderscript/Short3;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI16()S

    .line 9
    move-result v1

    .line 10
    .line 11
    iput-short v1, v0, Landroidx/renderscript/Short3;->z:S

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI16()S

    .line 15
    move-result v1

    .line 16
    .line 17
    iput-short v1, v0, Landroidx/renderscript/Short3;->y:S

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI16()S

    .line 21
    move-result v1

    .line 22
    .line 23
    iput-short v1, v0, Landroidx/renderscript/Short3;->x:S

    .line 24
    return-object v0
.end method

.method public subShort4()Landroidx/renderscript/Short4;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/renderscript/Short4;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/renderscript/Short4;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI16()S

    .line 9
    move-result v1

    .line 10
    .line 11
    iput-short v1, v0, Landroidx/renderscript/Short4;->w:S

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI16()S

    .line 15
    move-result v1

    .line 16
    .line 17
    iput-short v1, v0, Landroidx/renderscript/Short4;->z:S

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI16()S

    .line 21
    move-result v1

    .line 22
    .line 23
    iput-short v1, v0, Landroidx/renderscript/Short4;->y:S

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/renderscript/FieldPacker;->subI16()S

    .line 27
    move-result v1

    .line 28
    .line 29
    iput-short v1, v0, Landroidx/renderscript/Short4;->x:S

    .line 30
    return-object v0
.end method

.method public subalign(I)V
    .locals 3

    .line 1
    .line 2
    add-int/lit8 v0, p1, -0x1

    .line 3
    .line 4
    and-int v1, p1, v0

    .line 5
    .line 6
    if-nez v1, :cond_2

    .line 7
    .line 8
    :goto_0
    iget p1, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    .line 9
    .line 10
    and-int v1, p1, v0

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    add-int/lit8 p1, p1, -0x1

    .line 15
    .line 16
    iput p1, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    if-lez p1, :cond_1

    .line 20
    .line 21
    :goto_1
    iget-object p1, p0, Landroidx/renderscript/FieldPacker;->mAlignment:Ljava/util/BitSet;

    .line 22
    .line 23
    iget v0, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    .line 24
    const/4 v1, 0x1

    .line 25
    sub-int/2addr v0, v1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->get(I)Z

    .line 29
    move-result p1

    .line 30
    .line 31
    if-ne p1, v1, :cond_1

    .line 32
    .line 33
    iget p1, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    .line 34
    sub-int/2addr p1, v1

    .line 35
    .line 36
    iput p1, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    .line 37
    .line 38
    iget-object v0, p0, Landroidx/renderscript/FieldPacker;->mAlignment:Ljava/util/BitSet;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1}, Ljava/util/BitSet;->flip(I)V

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    return-void

    .line 44
    .line 45
    :cond_2
    new-instance v0, Landroidx/renderscript/RSIllegalArgumentException;

    .line 46
    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    const-string v2, "argument must be a non-negative non-zero power of 2: "

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object p1

    .line 63
    .line 64
    .line 65
    invoke-direct {v0, p1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 66
    throw v0
.end method
