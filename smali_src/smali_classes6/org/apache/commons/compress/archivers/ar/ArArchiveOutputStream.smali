.class public Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;
.super Lorg/apache/commons/compress/archivers/ArchiveOutputStream;
.source "SourceFile"


# static fields
.field public static final LONGFILE_BSD:I = 0x1

.field public static final LONGFILE_ERROR:I


# instance fields
.field private entryOffset:J

.field private finished:Z

.field private haveUnclosedEntry:Z

.field private longFileMode:I

.field private final out:Ljava/io/OutputStream;

.field private prevEntry:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;-><init>()V

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->entryOffset:J

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->haveUnclosedEntry:Z

    .line 11
    .line 12
    iput v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->longFileMode:I

    .line 13
    .line 14
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->finished:Z

    .line 15
    .line 16
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->out:Ljava/io/OutputStream;

    .line 17
    return-void
.end method

.method private fill(JJC)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    sub-long p1, p3, p1

    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    cmp-long v0, p1, v0

    .line 7
    .line 8
    if-lez v0, :cond_0

    .line 9
    const/4 v0, 0x0

    .line 10
    :goto_0
    int-to-long v1, v0

    .line 11
    .line 12
    cmp-long v1, v1, p1

    .line 13
    .line 14
    if-gez v1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p5}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->write(I)V

    .line 18
    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-wide p3
.end method

.method private write(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "ascii"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 3
    array-length p1, p1

    int-to-long v0, p1

    return-wide v0
.end method

.method private writeArchiveHeader()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "!<arch>\n"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lorg/apache/commons/compress/utils/ArchiveUtils;->toAsciiBytes(Ljava/lang/String;)[B

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->out:Ljava/io/OutputStream;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 12
    array-length v0, v0

    .line 13
    int-to-long v0, v0

    .line 14
    return-wide v0
.end method

.method private writeEntryHeader(Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;)J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->getName()Ljava/lang/String;

    .line 4
    move-result-object v6

    .line 5
    .line 6
    iget v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->longFileMode:I

    .line 7
    .line 8
    const/16 v1, 0x10

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 14
    move-result v0

    .line 15
    .line 16
    if-gt v0, v1, :cond_0

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 20
    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    const-string v2, "filename too long, > 16 chars: "

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 40
    throw v0

    .line 41
    .line 42
    :cond_1
    :goto_0
    iget v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->longFileMode:I

    .line 43
    const/4 v2, 0x1

    .line 44
    const/4 v7, 0x0

    .line 45
    .line 46
    if-ne v2, v0, :cond_3

    .line 47
    .line 48
    .line 49
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 50
    move-result v0

    .line 51
    .line 52
    if-gt v0, v1, :cond_2

    .line 53
    .line 54
    const-string v0, " "

    .line 55
    .line 56
    .line 57
    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 58
    move-result v0

    .line 59
    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    const-string v1, "#1/"

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 74
    move-result v1

    .line 75
    .line 76
    .line 77
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 78
    move-result-object v1

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object v0

    .line 86
    .line 87
    .line 88
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->write(Ljava/lang/String;)J

    .line 89
    move-result-wide v0

    .line 90
    move v8, v2

    .line 91
    move-wide v1, v0

    .line 92
    goto :goto_1

    .line 93
    .line 94
    .line 95
    :cond_3
    invoke-direct {p0, v6}, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->write(Ljava/lang/String;)J

    .line 96
    move-result-wide v0

    .line 97
    move-wide v1, v0

    .line 98
    move v8, v7

    .line 99
    .line 100
    :goto_1
    const-wide/16 v3, 0x10

    .line 101
    .line 102
    const/16 v5, 0x20

    .line 103
    move-object v0, p0

    .line 104
    .line 105
    .line 106
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->fill(JJC)J

    .line 107
    move-result-wide v0

    .line 108
    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    const-string v9, ""

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->getLastModified()J

    .line 121
    move-result-wide v3

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    move-result-object v2

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 132
    move-result v3

    .line 133
    .line 134
    const/16 v4, 0xc

    .line 135
    .line 136
    if-gt v3, v4, :cond_a

    .line 137
    .line 138
    .line 139
    invoke-direct {p0, v2}, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->write(Ljava/lang/String;)J

    .line 140
    move-result-wide v2

    .line 141
    .line 142
    add-long v1, v0, v2

    .line 143
    .line 144
    const-wide/16 v3, 0x1c

    .line 145
    .line 146
    const/16 v5, 0x20

    .line 147
    move-object v0, p0

    .line 148
    .line 149
    .line 150
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->fill(JJC)J

    .line 151
    move-result-wide v0

    .line 152
    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->getUserId()I

    .line 163
    move-result v3

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    move-result-object v2

    .line 171
    .line 172
    .line 173
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 174
    move-result v3

    .line 175
    const/4 v10, 0x6

    .line 176
    .line 177
    if-gt v3, v10, :cond_9

    .line 178
    .line 179
    .line 180
    invoke-direct {p0, v2}, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->write(Ljava/lang/String;)J

    .line 181
    move-result-wide v2

    .line 182
    .line 183
    add-long v1, v0, v2

    .line 184
    .line 185
    const-wide/16 v3, 0x22

    .line 186
    .line 187
    const/16 v5, 0x20

    .line 188
    move-object v0, p0

    .line 189
    .line 190
    .line 191
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->fill(JJC)J

    .line 192
    move-result-wide v0

    .line 193
    .line 194
    new-instance v2, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->getGroupId()I

    .line 204
    move-result v3

    .line 205
    .line 206
    .line 207
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    move-result-object v2

    .line 212
    .line 213
    .line 214
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 215
    move-result v3

    .line 216
    .line 217
    if-gt v3, v10, :cond_8

    .line 218
    .line 219
    .line 220
    invoke-direct {p0, v2}, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->write(Ljava/lang/String;)J

    .line 221
    move-result-wide v2

    .line 222
    .line 223
    add-long v1, v0, v2

    .line 224
    .line 225
    const-wide/16 v3, 0x28

    .line 226
    .line 227
    const/16 v5, 0x20

    .line 228
    move-object v0, p0

    .line 229
    .line 230
    .line 231
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->fill(JJC)J

    .line 232
    move-result-wide v0

    .line 233
    .line 234
    new-instance v2, Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->getMode()I

    .line 244
    move-result v3

    .line 245
    .line 246
    const/16 v4, 0x8

    .line 247
    .line 248
    .line 249
    invoke-static {v3, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 250
    move-result-object v3

    .line 251
    .line 252
    .line 253
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    move-result-object v2

    .line 258
    .line 259
    .line 260
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 261
    move-result v3

    .line 262
    .line 263
    if-gt v3, v4, :cond_7

    .line 264
    .line 265
    .line 266
    invoke-direct {p0, v2}, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->write(Ljava/lang/String;)J

    .line 267
    move-result-wide v2

    .line 268
    .line 269
    add-long v1, v0, v2

    .line 270
    .line 271
    const-wide/16 v3, 0x30

    .line 272
    .line 273
    const/16 v5, 0x20

    .line 274
    move-object v0, p0

    .line 275
    .line 276
    .line 277
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->fill(JJC)J

    .line 278
    move-result-wide v0

    .line 279
    .line 280
    .line 281
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->getLength()J

    .line 282
    move-result-wide v2

    .line 283
    .line 284
    if-eqz v8, :cond_4

    .line 285
    .line 286
    .line 287
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 288
    move-result v7

    .line 289
    :cond_4
    int-to-long v4, v7

    .line 290
    add-long/2addr v2, v4

    .line 291
    .line 292
    .line 293
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 294
    move-result-object v2

    .line 295
    .line 296
    .line 297
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 298
    move-result v3

    .line 299
    .line 300
    const/16 v4, 0xa

    .line 301
    .line 302
    if-gt v3, v4, :cond_6

    .line 303
    .line 304
    .line 305
    invoke-direct {p0, v2}, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->write(Ljava/lang/String;)J

    .line 306
    move-result-wide v2

    .line 307
    .line 308
    add-long v1, v0, v2

    .line 309
    .line 310
    const-wide/16 v3, 0x3a

    .line 311
    .line 312
    const/16 v5, 0x20

    .line 313
    move-object v0, p0

    .line 314
    .line 315
    .line 316
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->fill(JJC)J

    .line 317
    move-result-wide v0

    .line 318
    .line 319
    const-string v2, "`\n"

    .line 320
    .line 321
    .line 322
    invoke-direct {p0, v2}, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->write(Ljava/lang/String;)J

    .line 323
    move-result-wide v2

    .line 324
    add-long/2addr v0, v2

    .line 325
    .line 326
    if-eqz v8, :cond_5

    .line 327
    .line 328
    .line 329
    invoke-direct {p0, v6}, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->write(Ljava/lang/String;)J

    .line 330
    move-result-wide v2

    .line 331
    add-long/2addr v0, v2

    .line 332
    :cond_5
    return-wide v0

    .line 333
    .line 334
    :cond_6
    new-instance v0, Ljava/io/IOException;

    .line 335
    .line 336
    const-string v1, "size too long"

    .line 337
    .line 338
    .line 339
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 340
    throw v0

    .line 341
    .line 342
    :cond_7
    new-instance v0, Ljava/io/IOException;

    .line 343
    .line 344
    const-string v1, "filemode too long"

    .line 345
    .line 346
    .line 347
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 348
    throw v0

    .line 349
    .line 350
    :cond_8
    new-instance v0, Ljava/io/IOException;

    .line 351
    .line 352
    const-string v1, "groupid too long"

    .line 353
    .line 354
    .line 355
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 356
    throw v0

    .line 357
    .line 358
    :cond_9
    new-instance v0, Ljava/io/IOException;

    .line 359
    .line 360
    const-string v1, "userid too long"

    .line 361
    .line 362
    .line 363
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 364
    throw v0

    .line 365
    .line 366
    :cond_a
    new-instance v0, Ljava/io/IOException;

    .line 367
    .line 368
    const-string v1, "modified too long"

    .line 369
    .line 370
    .line 371
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 372
    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->finished:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->finish()V

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->out:Ljava/io/OutputStream;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 13
    const/4 v0, 0x0

    .line 14
    .line 15
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->prevEntry:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    .line 16
    return-void
.end method

.method public closeArchiveEntry()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->finished:Z

    .line 3
    .line 4
    if-nez v0, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->prevEntry:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->haveUnclosedEntry:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->entryOffset:J

    .line 15
    .line 16
    const-wide/16 v2, 0x2

    .line 17
    rem-long/2addr v0, v2

    .line 18
    .line 19
    const-wide/16 v2, 0x0

    .line 20
    .line 21
    cmp-long v0, v0, v2

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->out:Ljava/io/OutputStream;

    .line 26
    .line 27
    const/16 v1, 0xa

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    .line 33
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->haveUnclosedEntry:Z

    .line 34
    return-void

    .line 35
    .line 36
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 37
    .line 38
    const-string v1, "No current entry to close"

    .line 39
    .line 40
    .line 41
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 42
    throw v0

    .line 43
    .line 44
    :cond_2
    new-instance v0, Ljava/io/IOException;

    .line 45
    .line 46
    const-string v1, "Stream has already been finished"

    .line 47
    .line 48
    .line 49
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 50
    throw v0
.end method

.method public createArchiveEntry(Ljava/io/File;Ljava/lang/String;)Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->finished:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p1, p2}, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 10
    return-object v0

    .line 11
    .line 12
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 13
    .line 14
    const-string p2, "Stream has already been finished"

    .line 15
    .line 16
    .line 17
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 18
    throw p1
.end method

.method public finish()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->haveUnclosedEntry:Z

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->finished:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    const/4 v0, 0x1

    .line 10
    .line 11
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->finished:Z

    .line 12
    return-void

    .line 13
    .line 14
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 15
    .line 16
    const-string v1, "This archive has already been finished"

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 20
    throw v0

    .line 21
    .line 22
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 23
    .line 24
    const-string v1, "This archive contains unclosed entries."

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 28
    throw v0
.end method

.method public putArchiveEntry(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->finished:Z

    .line 3
    .line 4
    if-nez v0, :cond_3

    .line 5
    .line 6
    check-cast p1, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    .line 7
    .line 8
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->prevEntry:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->writeArchiveHeader()J

    .line 14
    goto :goto_0

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->getLength()J

    .line 18
    move-result-wide v0

    .line 19
    .line 20
    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->entryOffset:J

    .line 21
    .line 22
    cmp-long v0, v0, v2

    .line 23
    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->haveUnclosedEntry:Z

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->closeArchiveEntry()V

    .line 32
    .line 33
    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->prevEntry:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->writeEntryHeader(Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;)J

    .line 37
    .line 38
    const-wide/16 v0, 0x0

    .line 39
    .line 40
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->entryOffset:J

    .line 41
    const/4 p1, 0x1

    .line 42
    .line 43
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->haveUnclosedEntry:Z

    .line 44
    return-void

    .line 45
    .line 46
    :cond_2
    new-instance p1, Ljava/io/IOException;

    .line 47
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    const-string v1, "length does not match entry ("

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->prevEntry:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->getLength()J

    .line 62
    move-result-wide v1

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v1, " != "

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->entryOffset:J

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object v0

    .line 80
    .line 81
    .line 82
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 83
    throw p1

    .line 84
    .line 85
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 86
    .line 87
    const-string v0, "Stream has already been finished"

    .line 88
    .line 89
    .line 90
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 91
    throw p1
.end method

.method public setLongFileMode(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->longFileMode:I

    return-void
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->out:Ljava/io/OutputStream;

    .line 4
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 5
    invoke-virtual {p0, p3}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->count(I)V

    iget-wide p1, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->entryOffset:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;->entryOffset:J

    return-void
.end method
