.class final Lorg/threeten/bp/format/c$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/threeten/bp/format/c$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/format/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "i"
.end annotation


# static fields
.field private static final SECONDS_0000_TO_1970:J = 0xe79747c00L

.field private static final SECONDS_PER_10000_YEARS:J = 0x497968bd80L


# instance fields
.field private final fractionalDigits:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Lorg/threeten/bp/format/c$i;->fractionalDigits:I

    .line 6
    return-void
.end method


# virtual methods
.method public a(Lorg/threeten/bp/format/d;Ljava/lang/StringBuilder;)Z
    .locals 17

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p2

    .line 5
    .line 6
    sget-object v2, Lorg/threeten/bp/temporal/a;->INSTANT_SECONDS:Lorg/threeten/bp/temporal/a;

    .line 7
    .line 8
    move-object/from16 v3, p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v3, v2}, Lorg/threeten/bp/format/d;->f(Lorg/threeten/bp/temporal/h;)Ljava/lang/Long;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    const-wide/16 v4, 0x0

    .line 15
    .line 16
    .line 17
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 18
    move-result-object v6

    .line 19
    .line 20
    .line 21
    invoke-virtual/range {p1 .. p1}, Lorg/threeten/bp/format/d;->e()Lorg/threeten/bp/temporal/e;

    .line 22
    move-result-object v7

    .line 23
    .line 24
    sget-object v8, Lorg/threeten/bp/temporal/a;->NANO_OF_SECOND:Lorg/threeten/bp/temporal/a;

    .line 25
    .line 26
    .line 27
    invoke-interface {v7, v8}, Lorg/threeten/bp/temporal/e;->i(Lorg/threeten/bp/temporal/h;)Z

    .line 28
    move-result v7

    .line 29
    .line 30
    if-eqz v7, :cond_0

    .line 31
    .line 32
    .line 33
    invoke-virtual/range {p1 .. p1}, Lorg/threeten/bp/format/d;->e()Lorg/threeten/bp/temporal/e;

    .line 34
    move-result-object v3

    .line 35
    .line 36
    .line 37
    invoke-interface {v3, v8}, Lorg/threeten/bp/temporal/e;->k(Lorg/threeten/bp/temporal/h;)J

    .line 38
    move-result-wide v6

    .line 39
    .line 40
    .line 41
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 42
    move-result-object v6

    .line 43
    :cond_0
    const/4 v3, 0x0

    .line 44
    .line 45
    if-nez v2, :cond_1

    .line 46
    return v3

    .line 47
    .line 48
    .line 49
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 50
    move-result-wide v9

    .line 51
    .line 52
    .line 53
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 54
    move-result-wide v6

    .line 55
    .line 56
    .line 57
    invoke-virtual {v8, v6, v7}, Lorg/threeten/bp/temporal/a;->i(J)I

    .line 58
    move-result v2

    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    const-wide v6, -0xe79747c00L

    .line 64
    .line 65
    cmp-long v6, v9, v6

    .line 66
    .line 67
    const-string v7, ":00"

    .line 68
    .line 69
    const-wide/16 v11, 0x1

    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    const-wide v13, 0xe79747c00L

    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    const-wide v4, 0x497968bd80L

    .line 80
    const/4 v8, 0x1

    .line 81
    .line 82
    if-ltz v6, :cond_3

    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    const-wide v15, 0x3afff44180L

    .line 88
    sub-long/2addr v9, v15

    .line 89
    .line 90
    .line 91
    invoke-static {v9, v10, v4, v5}, Lra/d;->e(JJ)J

    .line 92
    move-result-wide v15

    .line 93
    add-long/2addr v11, v15

    .line 94
    .line 95
    .line 96
    invoke-static {v9, v10, v4, v5}, Lra/d;->h(JJ)J

    .line 97
    move-result-wide v4

    .line 98
    sub-long/2addr v4, v13

    .line 99
    .line 100
    sget-object v6, Lorg/threeten/bp/s;->UTC:Lorg/threeten/bp/s;

    .line 101
    .line 102
    .line 103
    invoke-static {v4, v5, v3, v6}, Lorg/threeten/bp/h;->J(JILorg/threeten/bp/s;)Lorg/threeten/bp/h;

    .line 104
    move-result-object v4

    .line 105
    .line 106
    const-wide/16 v5, 0x0

    .line 107
    .line 108
    cmp-long v5, v11, v5

    .line 109
    .line 110
    if-lez v5, :cond_2

    .line 111
    .line 112
    const/16 v5, 0x2b

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    :cond_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v4}, Lorg/threeten/bp/h;->F()I

    .line 125
    move-result v4

    .line 126
    .line 127
    if-nez v4, :cond_7

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    goto :goto_0

    .line 132
    :cond_3
    add-long/2addr v9, v13

    .line 133
    .line 134
    div-long v11, v9, v4

    .line 135
    rem-long/2addr v9, v4

    .line 136
    .line 137
    sub-long v4, v9, v13

    .line 138
    .line 139
    sget-object v6, Lorg/threeten/bp/s;->UTC:Lorg/threeten/bp/s;

    .line 140
    .line 141
    .line 142
    invoke-static {v4, v5, v3, v6}, Lorg/threeten/bp/h;->J(JILorg/threeten/bp/s;)Lorg/threeten/bp/h;

    .line 143
    move-result-object v4

    .line 144
    .line 145
    .line 146
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->length()I

    .line 147
    move-result v5

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v4}, Lorg/threeten/bp/h;->F()I

    .line 154
    move-result v6

    .line 155
    .line 156
    if-nez v6, :cond_4

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    :cond_4
    const-wide/16 v6, 0x0

    .line 162
    .line 163
    cmp-long v13, v11, v6

    .line 164
    .line 165
    if-gez v13, :cond_7

    .line 166
    .line 167
    .line 168
    invoke-virtual {v4}, Lorg/threeten/bp/h;->G()I

    .line 169
    move-result v4

    .line 170
    .line 171
    const/16 v13, -0x2710

    .line 172
    .line 173
    if-ne v4, v13, :cond_5

    .line 174
    .line 175
    add-int/lit8 v4, v5, 0x2

    .line 176
    .line 177
    const-wide/16 v6, 0x1

    .line 178
    sub-long/2addr v11, v6

    .line 179
    .line 180
    .line 181
    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 182
    move-result-object v6

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1, v5, v4, v6}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    goto :goto_0

    .line 187
    .line 188
    :cond_5
    cmp-long v4, v9, v6

    .line 189
    .line 190
    if-nez v4, :cond_6

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1, v5, v11, v12}, Ljava/lang/StringBuilder;->insert(IJ)Ljava/lang/StringBuilder;

    .line 194
    goto :goto_0

    .line 195
    :cond_6
    add-int/2addr v5, v8

    .line 196
    .line 197
    .line 198
    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    .line 199
    move-result-wide v6

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1, v5, v6, v7}, Ljava/lang/StringBuilder;->insert(IJ)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    :cond_7
    :goto_0
    iget v4, v0, Lorg/threeten/bp/format/c$i;->fractionalDigits:I

    .line 205
    const/4 v5, -0x2

    .line 206
    .line 207
    const/16 v6, 0x2e

    .line 208
    .line 209
    if-ne v4, v5, :cond_a

    .line 210
    .line 211
    if-eqz v2, :cond_e

    .line 212
    .line 213
    .line 214
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    const v3, 0xf4240

    .line 218
    .line 219
    rem-int v4, v2, v3

    .line 220
    .line 221
    if-nez v4, :cond_8

    .line 222
    div-int/2addr v2, v3

    .line 223
    .line 224
    add-int/lit16 v2, v2, 0x3e8

    .line 225
    .line 226
    .line 227
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 228
    move-result-object v2

    .line 229
    .line 230
    .line 231
    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 232
    move-result-object v2

    .line 233
    .line 234
    .line 235
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    goto :goto_2

    .line 237
    .line 238
    :cond_8
    rem-int/lit16 v4, v2, 0x3e8

    .line 239
    .line 240
    if-nez v4, :cond_9

    .line 241
    .line 242
    div-int/lit16 v2, v2, 0x3e8

    .line 243
    add-int/2addr v2, v3

    .line 244
    .line 245
    .line 246
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 247
    move-result-object v2

    .line 248
    .line 249
    .line 250
    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 251
    move-result-object v2

    .line 252
    .line 253
    .line 254
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    goto :goto_2

    .line 256
    .line 257
    .line 258
    :cond_9
    const v3, 0x3b9aca00

    .line 259
    add-int/2addr v2, v3

    .line 260
    .line 261
    .line 262
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 263
    move-result-object v2

    .line 264
    .line 265
    .line 266
    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 267
    move-result-object v2

    .line 268
    .line 269
    .line 270
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    goto :goto_2

    .line 272
    :cond_a
    const/4 v5, -0x1

    .line 273
    .line 274
    if-gtz v4, :cond_b

    .line 275
    .line 276
    if-ne v4, v5, :cond_e

    .line 277
    .line 278
    if-lez v2, :cond_e

    .line 279
    .line 280
    .line 281
    :cond_b
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    const v4, 0x5f5e100

    .line 285
    .line 286
    :goto_1
    iget v6, v0, Lorg/threeten/bp/format/c$i;->fractionalDigits:I

    .line 287
    .line 288
    if-ne v6, v5, :cond_c

    .line 289
    .line 290
    if-gtz v2, :cond_d

    .line 291
    .line 292
    :cond_c
    if-ge v3, v6, :cond_e

    .line 293
    .line 294
    :cond_d
    div-int v6, v2, v4

    .line 295
    .line 296
    add-int/lit8 v7, v6, 0x30

    .line 297
    int-to-char v7, v7

    .line 298
    .line 299
    .line 300
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 301
    mul-int/2addr v6, v4

    .line 302
    sub-int/2addr v2, v6

    .line 303
    .line 304
    div-int/lit8 v4, v4, 0xa

    .line 305
    .line 306
    add-int/lit8 v3, v3, 0x1

    .line 307
    goto :goto_1

    .line 308
    .line 309
    :cond_e
    :goto_2
    const/16 v2, 0x5a

    .line 310
    .line 311
    .line 312
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 313
    return v8
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Instant()"

    return-object v0
.end method
