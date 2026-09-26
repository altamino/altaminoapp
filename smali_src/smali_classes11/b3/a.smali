.class public final Lb3/a;
.super Lcom/google/android/exoplayer2/text/h;
.source "SourceFile"


# static fields
.field private static final ALIGN_BOTTOM_LEFT:Ljava/lang/String; = "{\\an1}"

.field private static final ALIGN_BOTTOM_MID:Ljava/lang/String; = "{\\an2}"

.field private static final ALIGN_BOTTOM_RIGHT:Ljava/lang/String; = "{\\an3}"

.field private static final ALIGN_MID_LEFT:Ljava/lang/String; = "{\\an4}"

.field private static final ALIGN_MID_MID:Ljava/lang/String; = "{\\an5}"

.field private static final ALIGN_MID_RIGHT:Ljava/lang/String; = "{\\an6}"

.field private static final ALIGN_TOP_LEFT:Ljava/lang/String; = "{\\an7}"

.field private static final ALIGN_TOP_MID:Ljava/lang/String; = "{\\an8}"

.field private static final ALIGN_TOP_RIGHT:Ljava/lang/String; = "{\\an9}"

.field private static final END_FRACTION:F = 0.92f

.field private static final MID_FRACTION:F = 0.5f

.field private static final START_FRACTION:F = 0.08f

.field private static final SUBRIP_ALIGNMENT_TAG:Ljava/lang/String; = "\\{\\\\an[1-9]\\}"

.field private static final SUBRIP_TAG_PATTERN:Ljava/util/regex/Pattern;

.field private static final SUBRIP_TIMECODE:Ljava/lang/String; = "(?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d+))?"

.field private static final SUBRIP_TIMING_LINE:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "SubripDecoder"


# instance fields
.field private final tags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final textBuilder:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    const-string v0, "\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d+))?)\\s*-->\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d+))?)\\s*"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sput-object v0, Lb3/a;->SUBRIP_TIMING_LINE:Ljava/util/regex/Pattern;

    .line 9
    .line 10
    const-string v0, "\\{\\\\.*?\\}"

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    sput-object v0, Lb3/a;->SUBRIP_TAG_PATTERN:Ljava/util/regex/Pattern;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    const-string v0, "SubripDecoder"

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/h;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    iput-object v0, p0, Lb3/a;->textBuilder:Ljava/lang/StringBuilder;

    .line 13
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    iput-object v0, p0, Lb3/a;->tags:Ljava/util/ArrayList;

    .line 20
    return-void
.end method

.method private A(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    sget-object v1, Lb3/a;->SUBRIP_TAG_PATTERN:Ljava/util/regex/Pattern;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 15
    move-result-object p1

    .line 16
    const/4 v1, 0x0

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    .line 20
    move-result v2

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    .line 33
    move-result v3

    .line 34
    sub-int/2addr v3, v1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 38
    move-result v2

    .line 39
    .line 40
    add-int v4, v3, v2

    .line 41
    .line 42
    const-string v5, ""

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v3, v4, v5}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    add-int/2addr v1, v2

    .line 47
    goto :goto_0

    .line 48
    .line 49
    .line 50
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object p1

    .line 52
    return-object p1
.end method

.method private x(Landroid/text/Spanned;Ljava/lang/String;)Lcom/google/android/exoplayer2/text/b;
    .locals 16
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    move-object/from16 v0, p2

    .line 3
    .line 4
    new-instance v1, Lcom/google/android/exoplayer2/text/b$b;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Lcom/google/android/exoplayer2/text/b$b;-><init>()V

    .line 8
    .line 9
    move-object/from16 v2, p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/text/b$b;->o(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/text/b$b;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/text/b$b;->a()Lcom/google/android/exoplayer2/text/b;

    .line 19
    move-result-object v0

    .line 20
    return-object v0

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    .line 24
    move-result v2

    .line 25
    .line 26
    const-string v3, "{\\an1}"

    .line 27
    .line 28
    const-string v5, "{\\an2}"

    .line 29
    .line 30
    const-string v6, "{\\an3}"

    .line 31
    .line 32
    const-string v7, "{\\an4}"

    .line 33
    .line 34
    const-string v9, "{\\an5}"

    .line 35
    .line 36
    const-string v10, "{\\an6}"

    .line 37
    .line 38
    const-string v11, "{\\an7}"

    .line 39
    .line 40
    const-string v13, "{\\an8}"

    .line 41
    .line 42
    const-string v14, "{\\an9}"

    .line 43
    const/4 v4, 0x3

    .line 44
    const/4 v8, 0x4

    .line 45
    const/4 v15, 0x1

    .line 46
    const/4 v12, 0x2

    .line 47
    .line 48
    .line 49
    sparse-switch v2, :sswitch_data_0

    .line 50
    goto :goto_0

    .line 51
    .line 52
    .line 53
    :sswitch_0
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    move-result v2

    .line 55
    .line 56
    if-eqz v2, :cond_1

    .line 57
    const/4 v2, 0x5

    .line 58
    goto :goto_1

    .line 59
    .line 60
    .line 61
    :sswitch_1
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    move-result v2

    .line 63
    .line 64
    if-eqz v2, :cond_1

    .line 65
    .line 66
    const/16 v2, 0x8

    .line 67
    goto :goto_1

    .line 68
    .line 69
    .line 70
    :sswitch_2
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    move-result v2

    .line 72
    .line 73
    if-eqz v2, :cond_1

    .line 74
    move v2, v12

    .line 75
    goto :goto_1

    .line 76
    .line 77
    .line 78
    :sswitch_3
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    move-result v2

    .line 80
    .line 81
    if-eqz v2, :cond_1

    .line 82
    move v2, v8

    .line 83
    goto :goto_1

    .line 84
    .line 85
    .line 86
    :sswitch_4
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    move-result v2

    .line 88
    .line 89
    if-eqz v2, :cond_1

    .line 90
    const/4 v2, 0x7

    .line 91
    goto :goto_1

    .line 92
    .line 93
    .line 94
    :sswitch_5
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    move-result v2

    .line 96
    .line 97
    if-eqz v2, :cond_1

    .line 98
    move v2, v15

    .line 99
    goto :goto_1

    .line 100
    .line 101
    .line 102
    :sswitch_6
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    move-result v2

    .line 104
    .line 105
    if-eqz v2, :cond_1

    .line 106
    move v2, v4

    .line 107
    goto :goto_1

    .line 108
    .line 109
    .line 110
    :sswitch_7
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    move-result v2

    .line 112
    .line 113
    if-eqz v2, :cond_1

    .line 114
    const/4 v2, 0x6

    .line 115
    goto :goto_1

    .line 116
    .line 117
    .line 118
    :sswitch_8
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    move-result v2

    .line 120
    .line 121
    if-eqz v2, :cond_1

    .line 122
    const/4 v2, 0x0

    .line 123
    goto :goto_1

    .line 124
    :cond_1
    :goto_0
    const/4 v2, -0x1

    .line 125
    .line 126
    :goto_1
    if-eqz v2, :cond_3

    .line 127
    .line 128
    if-eq v2, v15, :cond_3

    .line 129
    .line 130
    if-eq v2, v12, :cond_3

    .line 131
    .line 132
    if-eq v2, v4, :cond_2

    .line 133
    .line 134
    if-eq v2, v8, :cond_2

    .line 135
    const/4 v8, 0x5

    .line 136
    .line 137
    if-eq v2, v8, :cond_2

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1, v15}, Lcom/google/android/exoplayer2/text/b$b;->l(I)Lcom/google/android/exoplayer2/text/b$b;

    .line 141
    goto :goto_2

    .line 142
    .line 143
    .line 144
    :cond_2
    invoke-virtual {v1, v12}, Lcom/google/android/exoplayer2/text/b$b;->l(I)Lcom/google/android/exoplayer2/text/b$b;

    .line 145
    goto :goto_2

    .line 146
    :cond_3
    const/4 v2, 0x0

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/text/b$b;->l(I)Lcom/google/android/exoplayer2/text/b$b;

    .line 150
    .line 151
    .line 152
    :goto_2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    .line 153
    move-result v2

    .line 154
    .line 155
    .line 156
    sparse-switch v2, :sswitch_data_1

    .line 157
    goto :goto_3

    .line 158
    .line 159
    .line 160
    :sswitch_9
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    move-result v0

    .line 162
    .line 163
    if-eqz v0, :cond_4

    .line 164
    const/4 v0, 0x5

    .line 165
    goto :goto_4

    .line 166
    .line 167
    .line 168
    :sswitch_a
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    move-result v0

    .line 170
    .line 171
    if-eqz v0, :cond_4

    .line 172
    const/4 v0, 0x4

    .line 173
    goto :goto_4

    .line 174
    .line 175
    .line 176
    :sswitch_b
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 177
    move-result v0

    .line 178
    .line 179
    if-eqz v0, :cond_4

    .line 180
    move v0, v4

    .line 181
    goto :goto_4

    .line 182
    .line 183
    .line 184
    :sswitch_c
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 185
    move-result v0

    .line 186
    .line 187
    if-eqz v0, :cond_4

    .line 188
    .line 189
    const/16 v0, 0x8

    .line 190
    goto :goto_4

    .line 191
    .line 192
    .line 193
    :sswitch_d
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    move-result v0

    .line 195
    .line 196
    if-eqz v0, :cond_4

    .line 197
    const/4 v0, 0x7

    .line 198
    goto :goto_4

    .line 199
    .line 200
    .line 201
    :sswitch_e
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 202
    move-result v0

    .line 203
    .line 204
    if-eqz v0, :cond_4

    .line 205
    const/4 v0, 0x6

    .line 206
    goto :goto_4

    .line 207
    .line 208
    .line 209
    :sswitch_f
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 210
    move-result v0

    .line 211
    .line 212
    if-eqz v0, :cond_4

    .line 213
    move v0, v12

    .line 214
    goto :goto_4

    .line 215
    .line 216
    .line 217
    :sswitch_10
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 218
    move-result v0

    .line 219
    .line 220
    if-eqz v0, :cond_4

    .line 221
    move v0, v15

    .line 222
    goto :goto_4

    .line 223
    .line 224
    .line 225
    :sswitch_11
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 226
    move-result v0

    .line 227
    .line 228
    if-eqz v0, :cond_4

    .line 229
    const/4 v0, 0x0

    .line 230
    goto :goto_4

    .line 231
    :cond_4
    :goto_3
    const/4 v0, -0x1

    .line 232
    .line 233
    :goto_4
    if-eqz v0, :cond_6

    .line 234
    .line 235
    if-eq v0, v15, :cond_6

    .line 236
    .line 237
    if-eq v0, v12, :cond_6

    .line 238
    .line 239
    if-eq v0, v4, :cond_5

    .line 240
    const/4 v2, 0x4

    .line 241
    .line 242
    if-eq v0, v2, :cond_5

    .line 243
    const/4 v2, 0x5

    .line 244
    .line 245
    if-eq v0, v2, :cond_5

    .line 246
    .line 247
    .line 248
    invoke-virtual {v1, v15}, Lcom/google/android/exoplayer2/text/b$b;->i(I)Lcom/google/android/exoplayer2/text/b$b;

    .line 249
    goto :goto_5

    .line 250
    :cond_5
    const/4 v0, 0x0

    .line 251
    .line 252
    .line 253
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/text/b$b;->i(I)Lcom/google/android/exoplayer2/text/b$b;

    .line 254
    goto :goto_5

    .line 255
    .line 256
    .line 257
    :cond_6
    invoke-virtual {v1, v12}, Lcom/google/android/exoplayer2/text/b$b;->i(I)Lcom/google/android/exoplayer2/text/b$b;

    .line 258
    .line 259
    .line 260
    :goto_5
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/text/b$b;->d()I

    .line 261
    move-result v0

    .line 262
    .line 263
    .line 264
    invoke-static {v0}, Lb3/a;->y(I)F

    .line 265
    move-result v0

    .line 266
    .line 267
    .line 268
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/text/b$b;->k(F)Lcom/google/android/exoplayer2/text/b$b;

    .line 269
    move-result-object v0

    .line 270
    .line 271
    .line 272
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/text/b$b;->c()I

    .line 273
    move-result v1

    .line 274
    .line 275
    .line 276
    invoke-static {v1}, Lb3/a;->y(I)F

    .line 277
    move-result v1

    .line 278
    const/4 v2, 0x0

    .line 279
    .line 280
    .line 281
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/text/b$b;->h(FI)Lcom/google/android/exoplayer2/text/b$b;

    .line 282
    move-result-object v0

    .line 283
    .line 284
    .line 285
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/b$b;->a()Lcom/google/android/exoplayer2/text/b;

    .line 286
    move-result-object v0

    .line 287
    return-object v0

    .line 288
    nop

    .line 289
    .line 290
    .line 291
    .line 292
    :sswitch_data_0
    .sparse-switch
        -0x28ddbde6 -> :sswitch_8
        -0x28ddbdc7 -> :sswitch_7
        -0x28ddbda8 -> :sswitch_6
        -0x28ddbd89 -> :sswitch_5
        -0x28ddbd6a -> :sswitch_4
        -0x28ddbd4b -> :sswitch_3
        -0x28ddbd2c -> :sswitch_2
        -0x28ddbd0d -> :sswitch_1
        -0x28ddbcee -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x28ddbde6 -> :sswitch_11
        -0x28ddbdc7 -> :sswitch_10
        -0x28ddbda8 -> :sswitch_f
        -0x28ddbd89 -> :sswitch_e
        -0x28ddbd6a -> :sswitch_d
        -0x28ddbd4b -> :sswitch_c
        -0x28ddbd2c -> :sswitch_b
        -0x28ddbd0d -> :sswitch_a
        -0x28ddbcee -> :sswitch_9
    .end sparse-switch
.end method

.method static y(I)F
    .locals 1

    .line 1
    .line 2
    if-eqz p0, :cond_2

    .line 3
    const/4 v0, 0x1

    .line 4
    .line 5
    if-eq p0, v0, :cond_1

    .line 6
    const/4 v0, 0x2

    .line 7
    .line 8
    if-ne p0, v0, :cond_0

    .line 9
    .line 10
    .line 11
    const p0, 0x3f6b851f    # 0.92f

    .line 12
    return p0

    .line 13
    .line 14
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 18
    throw p0

    .line 19
    .line 20
    :cond_1
    const/high16 p0, 0x3f000000    # 0.5f

    .line 21
    return p0

    .line 22
    .line 23
    .line 24
    :cond_2
    const p0, 0x3da3d70a    # 0.08f

    .line 25
    return p0
.end method

.method private static z(Ljava/util/regex/Matcher;I)J
    .locals 6

    .line 1
    .line 2
    add-int/lit8 v0, p1, 0x1

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 12
    move-result-wide v0

    .line 13
    .line 14
    .line 15
    const-wide/32 v2, 0x36ee80

    .line 16
    mul-long/2addr v0, v2

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    const-wide/16 v0, 0x0

    .line 20
    .line 21
    :goto_0
    add-int/lit8 v2, p1, 0x2

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    .line 28
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    check-cast v2, Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 35
    move-result-wide v2

    .line 36
    .line 37
    .line 38
    const-wide/32 v4, 0xea60

    .line 39
    mul-long/2addr v2, v4

    .line 40
    add-long/2addr v0, v2

    .line 41
    .line 42
    add-int/lit8 v2, p1, 0x3

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 46
    move-result-object v2

    .line 47
    .line 48
    .line 49
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    move-result-object v2

    .line 51
    .line 52
    check-cast v2, Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 56
    move-result-wide v2

    .line 57
    .line 58
    const-wide/16 v4, 0x3e8

    .line 59
    mul-long/2addr v2, v4

    .line 60
    add-long/2addr v0, v2

    .line 61
    .line 62
    add-int/lit8 p1, p1, 0x4

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 66
    move-result-object p0

    .line 67
    .line 68
    if-eqz p0, :cond_1

    .line 69
    .line 70
    .line 71
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 72
    move-result-wide p0

    .line 73
    add-long/2addr v0, p0

    .line 74
    :cond_1
    mul-long/2addr v0, v4

    .line 75
    return-wide v0
.end method


# virtual methods
.method protected v([BIZ)Lcom/google/android/exoplayer2/text/i;
    .locals 6

    .line 1
    .line 2
    const-string p3, "SubripDecoder"

    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    new-instance v1, Lcom/google/android/exoplayer2/util/u;

    .line 10
    .line 11
    .line 12
    invoke-direct {v1}, Lcom/google/android/exoplayer2/util/u;-><init>()V

    .line 13
    .line 14
    new-instance v2, Lcom/google/android/exoplayer2/util/c0;

    .line 15
    .line 16
    .line 17
    invoke-direct {v2, p1, p2}, Lcom/google/android/exoplayer2/util/c0;-><init>([BI)V

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/c0;->p()Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    const/4 p2, 0x0

    .line 23
    .line 24
    if-eqz p1, :cond_7

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 28
    move-result v3

    .line 29
    .line 30
    if-nez v3, :cond_0

    .line 31
    goto :goto_0

    .line 32
    .line 33
    .line 34
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/c0;->p()Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    if-nez p1, :cond_1

    .line 41
    .line 42
    const-string p1, "Unexpected end"

    .line 43
    .line 44
    .line 45
    invoke-static {p3, p1}, Lcom/google/android/exoplayer2/util/t;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    goto/16 :goto_4

    .line 48
    .line 49
    :cond_1
    sget-object v3, Lb3/a;->SUBRIP_TIMING_LINE:Ljava/util/regex/Pattern;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 53
    move-result-object v3

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    .line 57
    move-result v4

    .line 58
    .line 59
    if-eqz v4, :cond_6

    .line 60
    const/4 p1, 0x1

    .line 61
    .line 62
    .line 63
    invoke-static {v3, p1}, Lb3/a;->z(Ljava/util/regex/Matcher;I)J

    .line 64
    move-result-wide v4

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v4, v5}, Lcom/google/android/exoplayer2/util/u;->a(J)V

    .line 68
    const/4 p1, 0x6

    .line 69
    .line 70
    .line 71
    invoke-static {v3, p1}, Lb3/a;->z(Ljava/util/regex/Matcher;I)J

    .line 72
    move-result-wide v3

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v3, v4}, Lcom/google/android/exoplayer2/util/u;->a(J)V

    .line 76
    .line 77
    iget-object p1, p0, Lb3/a;->textBuilder:Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 81
    .line 82
    iget-object p1, p0, Lb3/a;->tags:Ljava/util/ArrayList;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/c0;->p()Ljava/lang/String;

    .line 89
    move-result-object p1

    .line 90
    .line 91
    .line 92
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 93
    move-result v3

    .line 94
    .line 95
    if-nez v3, :cond_3

    .line 96
    .line 97
    iget-object v3, p0, Lb3/a;->textBuilder:Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    .line 101
    move-result v3

    .line 102
    .line 103
    if-lez v3, :cond_2

    .line 104
    .line 105
    iget-object v3, p0, Lb3/a;->textBuilder:Ljava/lang/StringBuilder;

    .line 106
    .line 107
    const-string v4, "<br>"

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    :cond_2
    iget-object v3, p0, Lb3/a;->textBuilder:Ljava/lang/StringBuilder;

    .line 113
    .line 114
    iget-object v4, p0, Lb3/a;->tags:Ljava/util/ArrayList;

    .line 115
    .line 116
    .line 117
    invoke-direct {p0, p1, v4}, Lb3/a;->A(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    .line 118
    move-result-object p1

    .line 119
    .line 120
    .line 121
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/c0;->p()Ljava/lang/String;

    .line 125
    move-result-object p1

    .line 126
    goto :goto_1

    .line 127
    .line 128
    :cond_3
    iget-object p1, p0, Lb3/a;->textBuilder:Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    move-result-object p1

    .line 133
    .line 134
    .line 135
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 136
    move-result-object p1

    .line 137
    .line 138
    :goto_2
    iget-object v3, p0, Lb3/a;->tags:Ljava/util/ArrayList;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 142
    move-result v3

    .line 143
    .line 144
    if-ge p2, v3, :cond_5

    .line 145
    .line 146
    iget-object v3, p0, Lb3/a;->tags:Ljava/util/ArrayList;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 150
    move-result-object v3

    .line 151
    .line 152
    check-cast v3, Ljava/lang/String;

    .line 153
    .line 154
    const-string v4, "\\{\\\\an[1-9]\\}"

    .line 155
    .line 156
    .line 157
    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 158
    move-result v4

    .line 159
    .line 160
    if-eqz v4, :cond_4

    .line 161
    goto :goto_3

    .line 162
    .line 163
    :cond_4
    add-int/lit8 p2, p2, 0x1

    .line 164
    goto :goto_2

    .line 165
    :cond_5
    const/4 v3, 0x0

    .line 166
    .line 167
    .line 168
    :goto_3
    invoke-direct {p0, p1, v3}, Lb3/a;->x(Landroid/text/Spanned;Ljava/lang/String;)Lcom/google/android/exoplayer2/text/b;

    .line 169
    move-result-object p1

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    .line 174
    sget-object p1, Lcom/google/android/exoplayer2/text/b;->EMPTY:Lcom/google/android/exoplayer2/text/b;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    .line 179
    goto/16 :goto_0

    .line 180
    .line 181
    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .line 186
    const-string v3, "Skipping invalid timing: "

    .line 187
    .line 188
    .line 189
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    move-result-object p1

    .line 197
    .line 198
    .line 199
    invoke-static {p3, p1}, Lcom/google/android/exoplayer2/util/t;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .line 201
    goto/16 :goto_0

    .line 202
    .line 203
    :catch_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    .line 208
    const-string v3, "Skipping invalid index: "

    .line 209
    .line 210
    .line 211
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    move-result-object p1

    .line 219
    .line 220
    .line 221
    invoke-static {p3, p1}, Lcom/google/android/exoplayer2/util/t;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    .line 223
    goto/16 :goto_0

    .line 224
    .line 225
    :cond_7
    :goto_4
    new-array p1, p2, [Lcom/google/android/exoplayer2/text/b;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 229
    move-result-object p1

    .line 230
    .line 231
    check-cast p1, [Lcom/google/android/exoplayer2/text/b;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/u;->d()[J

    .line 235
    move-result-object p2

    .line 236
    .line 237
    new-instance p3, Lb3/b;

    .line 238
    .line 239
    .line 240
    invoke-direct {p3, p1, p2}, Lb3/b;-><init>([Lcom/google/android/exoplayer2/text/b;[J)V

    .line 241
    return-object p3
.end method
