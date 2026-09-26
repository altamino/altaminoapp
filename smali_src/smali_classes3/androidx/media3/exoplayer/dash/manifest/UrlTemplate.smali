.class public final Landroidx/media3/exoplayer/dash/manifest/UrlTemplate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# static fields
.field private static final BANDWIDTH:Ljava/lang/String; = "Bandwidth"

.field private static final BANDWIDTH_ID:I = 0x3

.field private static final DEFAULT_FORMAT_TAG:Ljava/lang/String; = "%01d"

.field private static final ESCAPED_DOLLAR:Ljava/lang/String; = "$$"

.field private static final NUMBER:Ljava/lang/String; = "Number"

.field private static final NUMBER_ID:I = 0x2

.field private static final REPRESENTATION:Ljava/lang/String; = "RepresentationID"

.field private static final REPRESENTATION_ID:I = 0x1

.field private static final TIME:Ljava/lang/String; = "Time"

.field private static final TIME_ID:I = 0x4


# instance fields
.field private final identifierCount:I

.field private final identifierFormatTags:[Ljava/lang/String;

.field private final identifiers:[I

.field private final urlPieces:[Ljava/lang/String;


# direct methods
.method private constructor <init>([Ljava/lang/String;[I[Ljava/lang/String;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/media3/exoplayer/dash/manifest/UrlTemplate;->urlPieces:[Ljava/lang/String;

    .line 6
    .line 7
    iput-object p2, p0, Landroidx/media3/exoplayer/dash/manifest/UrlTemplate;->identifiers:[I

    .line 8
    .line 9
    iput-object p3, p0, Landroidx/media3/exoplayer/dash/manifest/UrlTemplate;->identifierFormatTags:[Ljava/lang/String;

    .line 10
    .line 11
    iput p4, p0, Landroidx/media3/exoplayer/dash/manifest/UrlTemplate;->identifierCount:I

    .line 12
    return-void
.end method

.method public static b(Ljava/lang/String;)Landroidx/media3/exoplayer/dash/manifest/UrlTemplate;
    .locals 4

    .line 1
    const/4 v0, 0x5

    .line 2
    .line 3
    new-array v0, v0, [Ljava/lang/String;

    .line 4
    const/4 v1, 0x4

    .line 5
    .line 6
    new-array v2, v1, [I

    .line 7
    .line 8
    new-array v1, v1, [Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v0, v2, v1}, Landroidx/media3/exoplayer/dash/manifest/UrlTemplate;->c(Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;)I

    .line 12
    move-result p0

    .line 13
    .line 14
    new-instance v3, Landroidx/media3/exoplayer/dash/manifest/UrlTemplate;

    .line 15
    .line 16
    .line 17
    invoke-direct {v3, v0, v2, v1, p0}, Landroidx/media3/exoplayer/dash/manifest/UrlTemplate;-><init>([Ljava/lang/String;[I[Ljava/lang/String;I)V

    .line 18
    return-object v3
.end method

.method private static c(Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;)I
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    aput-object v1, p1, v0

    .line 6
    move v2, v0

    .line 7
    move v3, v2

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 11
    move-result v4

    .line 12
    .line 13
    if-ge v2, v4, :cond_9

    .line 14
    .line 15
    const-string v4, "$"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 19
    move-result v5

    .line 20
    const/4 v6, -0x1

    .line 21
    .line 22
    if-ne v5, v6, :cond_0

    .line 23
    .line 24
    new-instance v4, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    aget-object v5, p1, v3

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v2

    .line 44
    .line 45
    aput-object v2, p1, v3

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 49
    move-result v2

    .line 50
    goto :goto_0

    .line 51
    .line 52
    :cond_0
    if-eq v5, v2, :cond_1

    .line 53
    .line 54
    new-instance v4, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    aget-object v6, p1, v3

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 66
    move-result-object v2

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object v2

    .line 74
    .line 75
    aput-object v2, p1, v3

    .line 76
    move v2, v5

    .line 77
    goto :goto_0

    .line 78
    .line 79
    :cond_1
    const-string v5, "$$"

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 83
    move-result v5

    .line 84
    .line 85
    if-eqz v5, :cond_2

    .line 86
    .line 87
    new-instance v5, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    aget-object v6, p1, v3

    .line 93
    .line 94
    .line 95
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    move-result-object v4

    .line 103
    .line 104
    aput-object v4, p1, v3

    .line 105
    .line 106
    add-int/lit8 v2, v2, 0x2

    .line 107
    goto :goto_0

    .line 108
    .line 109
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 113
    move-result v4

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 117
    move-result-object v2

    .line 118
    .line 119
    const-string v5, "RepresentationID"

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    move-result v5

    .line 124
    const/4 v7, 0x1

    .line 125
    .line 126
    if-eqz v5, :cond_3

    .line 127
    .line 128
    aput v7, p2, v3

    .line 129
    .line 130
    goto/16 :goto_4

    .line 131
    .line 132
    :cond_3
    const-string v5, "%0"

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 136
    move-result v5

    .line 137
    .line 138
    if-eq v5, v6, :cond_5

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 142
    move-result-object v8

    .line 143
    .line 144
    const-string v9, "d"

    .line 145
    .line 146
    .line 147
    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 148
    move-result v10

    .line 149
    .line 150
    if-nez v10, :cond_4

    .line 151
    .line 152
    const-string v10, "x"

    .line 153
    .line 154
    .line 155
    invoke-virtual {v8, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 156
    move-result v10

    .line 157
    .line 158
    if-nez v10, :cond_4

    .line 159
    .line 160
    const-string v10, "X"

    .line 161
    .line 162
    .line 163
    invoke-virtual {v8, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 164
    move-result v10

    .line 165
    .line 166
    if-nez v10, :cond_4

    .line 167
    .line 168
    new-instance v10, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    move-result-object v8

    .line 182
    .line 183
    .line 184
    :cond_4
    invoke-virtual {v2, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 185
    move-result-object v2

    .line 186
    goto :goto_1

    .line 187
    .line 188
    :cond_5
    const-string v8, "%01d"

    .line 189
    .line 190
    .line 191
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 192
    .line 193
    .line 194
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 195
    move-result v5

    .line 196
    const/4 v9, 0x2

    .line 197
    .line 198
    .line 199
    sparse-switch v5, :sswitch_data_0

    .line 200
    goto :goto_2

    .line 201
    .line 202
    :sswitch_0
    const-string v5, "Bandwidth"

    .line 203
    .line 204
    .line 205
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 206
    move-result v2

    .line 207
    .line 208
    if-nez v2, :cond_6

    .line 209
    goto :goto_2

    .line 210
    :cond_6
    move v6, v9

    .line 211
    goto :goto_2

    .line 212
    .line 213
    :sswitch_1
    const-string v5, "Time"

    .line 214
    .line 215
    .line 216
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 217
    move-result v2

    .line 218
    .line 219
    if-nez v2, :cond_7

    .line 220
    goto :goto_2

    .line 221
    :cond_7
    move v6, v7

    .line 222
    goto :goto_2

    .line 223
    .line 224
    :sswitch_2
    const-string v5, "Number"

    .line 225
    .line 226
    .line 227
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 228
    move-result v2

    .line 229
    .line 230
    if-nez v2, :cond_8

    .line 231
    goto :goto_2

    .line 232
    :cond_8
    move v6, v0

    .line 233
    .line 234
    .line 235
    :goto_2
    packed-switch v6, :pswitch_data_0

    .line 236
    .line 237
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 238
    .line 239
    new-instance p2, Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    .line 244
    const-string p3, "Invalid template: "

    .line 245
    .line 246
    .line 247
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    move-result-object p0

    .line 255
    .line 256
    .line 257
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 258
    throw p1

    .line 259
    :pswitch_0
    const/4 v2, 0x3

    .line 260
    .line 261
    aput v2, p2, v3

    .line 262
    goto :goto_3

    .line 263
    :pswitch_1
    const/4 v2, 0x4

    .line 264
    .line 265
    aput v2, p2, v3

    .line 266
    goto :goto_3

    .line 267
    .line 268
    :pswitch_2
    aput v9, p2, v3

    .line 269
    .line 270
    :goto_3
    aput-object v8, p3, v3

    .line 271
    .line 272
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 273
    .line 274
    aput-object v1, p1, v3

    .line 275
    .line 276
    add-int/lit8 v4, v4, 0x1

    .line 277
    move v2, v4

    .line 278
    .line 279
    goto/16 :goto_0

    .line 280
    :cond_9
    return v3

    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    :sswitch_data_0
    .sparse-switch
        -0x74423897 -> :sswitch_2
        0x27c6ed -> :sswitch_1
        0x246e091 -> :sswitch_0
    .end sparse-switch

    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(Ljava/lang/String;JIJ)Ljava/lang/String;
    .locals 7

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    .line 9
    :goto_0
    iget v3, p0, Landroidx/media3/exoplayer/dash/manifest/UrlTemplate;->identifierCount:I

    .line 10
    .line 11
    if-ge v2, v3, :cond_4

    .line 12
    .line 13
    iget-object v3, p0, Landroidx/media3/exoplayer/dash/manifest/UrlTemplate;->urlPieces:[Ljava/lang/String;

    .line 14
    .line 15
    aget-object v3, v3, v2

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    iget-object v3, p0, Landroidx/media3/exoplayer/dash/manifest/UrlTemplate;->identifiers:[I

    .line 21
    .line 22
    aget v3, v3, v2

    .line 23
    const/4 v4, 0x1

    .line 24
    .line 25
    if-ne v3, v4, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    const/4 v5, 0x2

    .line 31
    .line 32
    if-ne v3, v5, :cond_1

    .line 33
    .line 34
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 35
    .line 36
    iget-object v5, p0, Landroidx/media3/exoplayer/dash/manifest/UrlTemplate;->identifierFormatTags:[Ljava/lang/String;

    .line 37
    .line 38
    aget-object v5, v5, v2

    .line 39
    .line 40
    new-array v4, v4, [Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 44
    move-result-object v6

    .line 45
    .line 46
    aput-object v6, v4, v1

    .line 47
    .line 48
    .line 49
    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    move-result-object v3

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    const/4 v5, 0x3

    .line 56
    .line 57
    if-ne v3, v5, :cond_2

    .line 58
    .line 59
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 60
    .line 61
    iget-object v5, p0, Landroidx/media3/exoplayer/dash/manifest/UrlTemplate;->identifierFormatTags:[Ljava/lang/String;

    .line 62
    .line 63
    aget-object v5, v5, v2

    .line 64
    .line 65
    new-array v4, v4, [Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    move-result-object v6

    .line 70
    .line 71
    aput-object v6, v4, v1

    .line 72
    .line 73
    .line 74
    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    move-result-object v3

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    goto :goto_1

    .line 80
    :cond_2
    const/4 v5, 0x4

    .line 81
    .line 82
    if-ne v3, v5, :cond_3

    .line 83
    .line 84
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 85
    .line 86
    iget-object v5, p0, Landroidx/media3/exoplayer/dash/manifest/UrlTemplate;->identifierFormatTags:[Ljava/lang/String;

    .line 87
    .line 88
    aget-object v5, v5, v2

    .line 89
    .line 90
    new-array v4, v4, [Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 94
    move-result-object v6

    .line 95
    .line 96
    aput-object v6, v4, v1

    .line 97
    .line 98
    .line 99
    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 100
    move-result-object v3

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 106
    goto :goto_0

    .line 107
    .line 108
    :cond_4
    iget-object p1, p0, Landroidx/media3/exoplayer/dash/manifest/UrlTemplate;->urlPieces:[Ljava/lang/String;

    .line 109
    .line 110
    aget-object p1, p1, v3

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object p1

    .line 118
    return-object p1
.end method
