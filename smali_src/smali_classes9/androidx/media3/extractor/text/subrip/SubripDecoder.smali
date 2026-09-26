.class public final Landroidx/media3/extractor/text/subrip/SubripDecoder;
.super Landroidx/media3/extractor/text/SimpleSubtitleDecoder;
.source "SourceFile"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


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
    sput-object v0, Landroidx/media3/extractor/text/subrip/SubripDecoder;->SUBRIP_TIMING_LINE:Ljava/util/regex/Pattern;

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
    sput-object v0, Landroidx/media3/extractor/text/subrip/SubripDecoder;->SUBRIP_TAG_PATTERN:Ljava/util/regex/Pattern;

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
    invoke-direct {p0, v0}, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    iput-object v0, p0, Landroidx/media3/extractor/text/subrip/SubripDecoder;->textBuilder:Ljava/lang/StringBuilder;

    .line 13
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    iput-object v0, p0, Landroidx/media3/extractor/text/subrip/SubripDecoder;->tags:Ljava/util/ArrayList;

    .line 20
    return-void
.end method

.method private static A(Ljava/util/regex/Matcher;I)J
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
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

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

.method private B(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
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
    sget-object v1, Landroidx/media3/extractor/text/subrip/SubripDecoder;->SUBRIP_TAG_PATTERN:Ljava/util/regex/Pattern;

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

.method private x(Landroid/text/Spanned;Ljava/lang/String;)Landroidx/media3/common/text/Cue;
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
    new-instance v1, Landroidx/media3/common/text/Cue$Builder;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Landroidx/media3/common/text/Cue$Builder;-><init>()V

    .line 8
    .line 9
    move-object/from16 v2, p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2}, Landroidx/media3/common/text/Cue$Builder;->o(Ljava/lang/CharSequence;)Landroidx/media3/common/text/Cue$Builder;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Landroidx/media3/common/text/Cue$Builder;->a()Landroidx/media3/common/text/Cue;

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
    .line 27
    const-string/jumbo v3, "{\\an1}"

    .line 28
    .line 29
    .line 30
    const-string/jumbo v5, "{\\an2}"

    .line 31
    .line 32
    .line 33
    const-string/jumbo v6, "{\\an3}"

    .line 34
    .line 35
    .line 36
    const-string/jumbo v7, "{\\an4}"

    .line 37
    .line 38
    .line 39
    const-string/jumbo v9, "{\\an5}"

    .line 40
    .line 41
    .line 42
    const-string/jumbo v10, "{\\an6}"

    .line 43
    .line 44
    .line 45
    const-string/jumbo v11, "{\\an7}"

    .line 46
    .line 47
    .line 48
    const-string/jumbo v13, "{\\an8}"

    .line 49
    .line 50
    .line 51
    const-string/jumbo v14, "{\\an9}"

    .line 52
    const/4 v4, 0x3

    .line 53
    const/4 v8, 0x4

    .line 54
    const/4 v15, 0x1

    .line 55
    const/4 v12, 0x2

    .line 56
    .line 57
    .line 58
    sparse-switch v2, :sswitch_data_0

    .line 59
    goto :goto_0

    .line 60
    .line 61
    .line 62
    :sswitch_0
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    move-result v2

    .line 64
    .line 65
    if-eqz v2, :cond_1

    .line 66
    const/4 v2, 0x5

    .line 67
    goto :goto_1

    .line 68
    .line 69
    .line 70
    :sswitch_1
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    move-result v2

    .line 72
    .line 73
    if-eqz v2, :cond_1

    .line 74
    .line 75
    const/16 v2, 0x8

    .line 76
    goto :goto_1

    .line 77
    .line 78
    .line 79
    :sswitch_2
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    move-result v2

    .line 81
    .line 82
    if-eqz v2, :cond_1

    .line 83
    move v2, v12

    .line 84
    goto :goto_1

    .line 85
    .line 86
    .line 87
    :sswitch_3
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    move-result v2

    .line 89
    .line 90
    if-eqz v2, :cond_1

    .line 91
    move v2, v8

    .line 92
    goto :goto_1

    .line 93
    .line 94
    .line 95
    :sswitch_4
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    move-result v2

    .line 97
    .line 98
    if-eqz v2, :cond_1

    .line 99
    const/4 v2, 0x7

    .line 100
    goto :goto_1

    .line 101
    .line 102
    .line 103
    :sswitch_5
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    move-result v2

    .line 105
    .line 106
    if-eqz v2, :cond_1

    .line 107
    move v2, v15

    .line 108
    goto :goto_1

    .line 109
    .line 110
    .line 111
    :sswitch_6
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    move-result v2

    .line 113
    .line 114
    if-eqz v2, :cond_1

    .line 115
    move v2, v4

    .line 116
    goto :goto_1

    .line 117
    .line 118
    .line 119
    :sswitch_7
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    move-result v2

    .line 121
    .line 122
    if-eqz v2, :cond_1

    .line 123
    const/4 v2, 0x6

    .line 124
    goto :goto_1

    .line 125
    .line 126
    .line 127
    :sswitch_8
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    move-result v2

    .line 129
    .line 130
    if-eqz v2, :cond_1

    .line 131
    const/4 v2, 0x0

    .line 132
    goto :goto_1

    .line 133
    :cond_1
    :goto_0
    const/4 v2, -0x1

    .line 134
    .line 135
    :goto_1
    if-eqz v2, :cond_3

    .line 136
    .line 137
    if-eq v2, v15, :cond_3

    .line 138
    .line 139
    if-eq v2, v12, :cond_3

    .line 140
    .line 141
    if-eq v2, v4, :cond_2

    .line 142
    .line 143
    if-eq v2, v8, :cond_2

    .line 144
    const/4 v8, 0x5

    .line 145
    .line 146
    if-eq v2, v8, :cond_2

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1, v15}, Landroidx/media3/common/text/Cue$Builder;->l(I)Landroidx/media3/common/text/Cue$Builder;

    .line 150
    goto :goto_2

    .line 151
    .line 152
    .line 153
    :cond_2
    invoke-virtual {v1, v12}, Landroidx/media3/common/text/Cue$Builder;->l(I)Landroidx/media3/common/text/Cue$Builder;

    .line 154
    goto :goto_2

    .line 155
    :cond_3
    const/4 v2, 0x0

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, v2}, Landroidx/media3/common/text/Cue$Builder;->l(I)Landroidx/media3/common/text/Cue$Builder;

    .line 159
    .line 160
    .line 161
    :goto_2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    .line 162
    move-result v2

    .line 163
    .line 164
    .line 165
    sparse-switch v2, :sswitch_data_1

    .line 166
    goto :goto_3

    .line 167
    .line 168
    .line 169
    :sswitch_9
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 170
    move-result v0

    .line 171
    .line 172
    if-eqz v0, :cond_4

    .line 173
    const/4 v0, 0x5

    .line 174
    goto :goto_4

    .line 175
    .line 176
    .line 177
    :sswitch_a
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 178
    move-result v0

    .line 179
    .line 180
    if-eqz v0, :cond_4

    .line 181
    const/4 v0, 0x4

    .line 182
    goto :goto_4

    .line 183
    .line 184
    .line 185
    :sswitch_b
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 186
    move-result v0

    .line 187
    .line 188
    if-eqz v0, :cond_4

    .line 189
    move v0, v4

    .line 190
    goto :goto_4

    .line 191
    .line 192
    .line 193
    :sswitch_c
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    move-result v0

    .line 195
    .line 196
    if-eqz v0, :cond_4

    .line 197
    .line 198
    const/16 v0, 0x8

    .line 199
    goto :goto_4

    .line 200
    .line 201
    .line 202
    :sswitch_d
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 203
    move-result v0

    .line 204
    .line 205
    if-eqz v0, :cond_4

    .line 206
    const/4 v0, 0x7

    .line 207
    goto :goto_4

    .line 208
    .line 209
    .line 210
    :sswitch_e
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 211
    move-result v0

    .line 212
    .line 213
    if-eqz v0, :cond_4

    .line 214
    const/4 v0, 0x6

    .line 215
    goto :goto_4

    .line 216
    .line 217
    .line 218
    :sswitch_f
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 219
    move-result v0

    .line 220
    .line 221
    if-eqz v0, :cond_4

    .line 222
    move v0, v12

    .line 223
    goto :goto_4

    .line 224
    .line 225
    .line 226
    :sswitch_10
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 227
    move-result v0

    .line 228
    .line 229
    if-eqz v0, :cond_4

    .line 230
    move v0, v15

    .line 231
    goto :goto_4

    .line 232
    .line 233
    .line 234
    :sswitch_11
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 235
    move-result v0

    .line 236
    .line 237
    if-eqz v0, :cond_4

    .line 238
    const/4 v0, 0x0

    .line 239
    goto :goto_4

    .line 240
    :cond_4
    :goto_3
    const/4 v0, -0x1

    .line 241
    .line 242
    :goto_4
    if-eqz v0, :cond_6

    .line 243
    .line 244
    if-eq v0, v15, :cond_6

    .line 245
    .line 246
    if-eq v0, v12, :cond_6

    .line 247
    .line 248
    if-eq v0, v4, :cond_5

    .line 249
    const/4 v2, 0x4

    .line 250
    .line 251
    if-eq v0, v2, :cond_5

    .line 252
    const/4 v2, 0x5

    .line 253
    .line 254
    if-eq v0, v2, :cond_5

    .line 255
    .line 256
    .line 257
    invoke-virtual {v1, v15}, Landroidx/media3/common/text/Cue$Builder;->i(I)Landroidx/media3/common/text/Cue$Builder;

    .line 258
    goto :goto_5

    .line 259
    :cond_5
    const/4 v0, 0x0

    .line 260
    .line 261
    .line 262
    invoke-virtual {v1, v0}, Landroidx/media3/common/text/Cue$Builder;->i(I)Landroidx/media3/common/text/Cue$Builder;

    .line 263
    goto :goto_5

    .line 264
    .line 265
    .line 266
    :cond_6
    invoke-virtual {v1, v12}, Landroidx/media3/common/text/Cue$Builder;->i(I)Landroidx/media3/common/text/Cue$Builder;

    .line 267
    .line 268
    .line 269
    :goto_5
    invoke-virtual {v1}, Landroidx/media3/common/text/Cue$Builder;->d()I

    .line 270
    move-result v0

    .line 271
    .line 272
    .line 273
    invoke-static {v0}, Landroidx/media3/extractor/text/subrip/SubripDecoder;->z(I)F

    .line 274
    move-result v0

    .line 275
    .line 276
    .line 277
    invoke-virtual {v1, v0}, Landroidx/media3/common/text/Cue$Builder;->k(F)Landroidx/media3/common/text/Cue$Builder;

    .line 278
    move-result-object v0

    .line 279
    .line 280
    .line 281
    invoke-virtual {v1}, Landroidx/media3/common/text/Cue$Builder;->c()I

    .line 282
    move-result v1

    .line 283
    .line 284
    .line 285
    invoke-static {v1}, Landroidx/media3/extractor/text/subrip/SubripDecoder;->z(I)F

    .line 286
    move-result v1

    .line 287
    const/4 v2, 0x0

    .line 288
    .line 289
    .line 290
    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/text/Cue$Builder;->h(FI)Landroidx/media3/common/text/Cue$Builder;

    .line 291
    move-result-object v0

    .line 292
    .line 293
    .line 294
    invoke-virtual {v0}, Landroidx/media3/common/text/Cue$Builder;->a()Landroidx/media3/common/text/Cue;

    .line 295
    move-result-object v0

    .line 296
    return-object v0

    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
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

    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
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

.method private y(Landroidx/media3/common/util/ParsableByteArray;)Ljava/nio/charset/Charset;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->P()Ljava/nio/charset/Charset;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    goto :goto_0

    .line 8
    .line 9
    :cond_0
    sget-object p1, Lcom/google/common/base/e;->UTF_8:Ljava/nio/charset/Charset;

    .line 10
    :goto_0
    return-object p1
.end method

.method static z(I)F
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


# virtual methods
.method protected v([BIZ)Landroidx/media3/extractor/text/Subtitle;
    .locals 7

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
    new-instance v1, Landroidx/media3/common/util/LongArray;

    .line 10
    .line 11
    .line 12
    invoke-direct {v1}, Landroidx/media3/common/util/LongArray;-><init>()V

    .line 13
    .line 14
    new-instance v2, Landroidx/media3/common/util/ParsableByteArray;

    .line 15
    .line 16
    .line 17
    invoke-direct {v2, p1, p2}, Landroidx/media3/common/util/ParsableByteArray;-><init>([BI)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, v2}, Landroidx/media3/extractor/text/subrip/SubripDecoder;->y(Landroidx/media3/common/util/ParsableByteArray;)Ljava/nio/charset/Charset;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-virtual {v2, p1}, Landroidx/media3/common/util/ParsableByteArray;->t(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 25
    move-result-object p2

    .line 26
    const/4 v3, 0x0

    .line 27
    .line 28
    if-eqz p2, :cond_7

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 32
    move-result v4

    .line 33
    .line 34
    if-nez v4, :cond_0

    .line 35
    goto :goto_0

    .line 36
    .line 37
    .line 38
    :cond_0
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, p1}, Landroidx/media3/common/util/ParsableByteArray;->t(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 42
    move-result-object p2

    .line 43
    .line 44
    if-nez p2, :cond_1

    .line 45
    .line 46
    const-string p1, "Unexpected end"

    .line 47
    .line 48
    .line 49
    invoke-static {p3, p1}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    goto/16 :goto_4

    .line 52
    .line 53
    :cond_1
    sget-object v4, Landroidx/media3/extractor/text/subrip/SubripDecoder;->SUBRIP_TIMING_LINE:Ljava/util/regex/Pattern;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 57
    move-result-object v4

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    .line 61
    move-result v5

    .line 62
    .line 63
    if-eqz v5, :cond_6

    .line 64
    const/4 p2, 0x1

    .line 65
    .line 66
    .line 67
    invoke-static {v4, p2}, Landroidx/media3/extractor/text/subrip/SubripDecoder;->A(Ljava/util/regex/Matcher;I)J

    .line 68
    move-result-wide v5

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v5, v6}, Landroidx/media3/common/util/LongArray;->a(J)V

    .line 72
    const/4 p2, 0x6

    .line 73
    .line 74
    .line 75
    invoke-static {v4, p2}, Landroidx/media3/extractor/text/subrip/SubripDecoder;->A(Ljava/util/regex/Matcher;I)J

    .line 76
    move-result-wide v4

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v4, v5}, Landroidx/media3/common/util/LongArray;->a(J)V

    .line 80
    .line 81
    iget-object p2, p0, Landroidx/media3/extractor/text/subrip/SubripDecoder;->textBuilder:Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 85
    .line 86
    iget-object p2, p0, Landroidx/media3/extractor/text/subrip/SubripDecoder;->tags:Ljava/util/ArrayList;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, p1}, Landroidx/media3/common/util/ParsableByteArray;->t(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 93
    move-result-object p2

    .line 94
    .line 95
    .line 96
    :goto_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 97
    move-result v4

    .line 98
    .line 99
    if-nez v4, :cond_3

    .line 100
    .line 101
    iget-object v4, p0, Landroidx/media3/extractor/text/subrip/SubripDecoder;->textBuilder:Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    .line 105
    move-result v4

    .line 106
    .line 107
    if-lez v4, :cond_2

    .line 108
    .line 109
    iget-object v4, p0, Landroidx/media3/extractor/text/subrip/SubripDecoder;->textBuilder:Ljava/lang/StringBuilder;

    .line 110
    .line 111
    const-string v5, "<br>"

    .line 112
    .line 113
    .line 114
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    :cond_2
    iget-object v4, p0, Landroidx/media3/extractor/text/subrip/SubripDecoder;->textBuilder:Ljava/lang/StringBuilder;

    .line 117
    .line 118
    iget-object v5, p0, Landroidx/media3/extractor/text/subrip/SubripDecoder;->tags:Ljava/util/ArrayList;

    .line 119
    .line 120
    .line 121
    invoke-direct {p0, p2, v5}, Landroidx/media3/extractor/text/subrip/SubripDecoder;->B(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    .line 122
    move-result-object p2

    .line 123
    .line 124
    .line 125
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2, p1}, Landroidx/media3/common/util/ParsableByteArray;->t(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 129
    move-result-object p2

    .line 130
    goto :goto_1

    .line 131
    .line 132
    :cond_3
    iget-object p2, p0, Landroidx/media3/extractor/text/subrip/SubripDecoder;->textBuilder:Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    move-result-object p2

    .line 137
    .line 138
    .line 139
    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 140
    move-result-object p2

    .line 141
    .line 142
    :goto_2
    iget-object v4, p0, Landroidx/media3/extractor/text/subrip/SubripDecoder;->tags:Ljava/util/ArrayList;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 146
    move-result v4

    .line 147
    .line 148
    if-ge v3, v4, :cond_5

    .line 149
    .line 150
    iget-object v4, p0, Landroidx/media3/extractor/text/subrip/SubripDecoder;->tags:Ljava/util/ArrayList;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 154
    move-result-object v4

    .line 155
    .line 156
    check-cast v4, Ljava/lang/String;

    .line 157
    .line 158
    const-string v5, "\\{\\\\an[1-9]\\}"

    .line 159
    .line 160
    .line 161
    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 162
    move-result v5

    .line 163
    .line 164
    if-eqz v5, :cond_4

    .line 165
    goto :goto_3

    .line 166
    .line 167
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 168
    goto :goto_2

    .line 169
    :cond_5
    const/4 v4, 0x0

    .line 170
    .line 171
    .line 172
    :goto_3
    invoke-direct {p0, p2, v4}, Landroidx/media3/extractor/text/subrip/SubripDecoder;->x(Landroid/text/Spanned;Ljava/lang/String;)Landroidx/media3/common/text/Cue;

    .line 173
    move-result-object p2

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    .line 178
    sget-object p2, Landroidx/media3/common/text/Cue;->EMPTY:Landroidx/media3/common/text/Cue;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    .line 183
    goto/16 :goto_0

    .line 184
    .line 185
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .line 190
    const-string v4, "Skipping invalid timing: "

    .line 191
    .line 192
    .line 193
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    move-result-object p2

    .line 201
    .line 202
    .line 203
    invoke-static {p3, p2}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .line 205
    goto/16 :goto_0

    .line 206
    .line 207
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    .line 212
    const-string v4, "Skipping invalid index: "

    .line 213
    .line 214
    .line 215
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    move-result-object p2

    .line 223
    .line 224
    .line 225
    invoke-static {p3, p2}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .line 227
    goto/16 :goto_0

    .line 228
    .line 229
    :cond_7
    :goto_4
    new-array p1, v3, [Landroidx/media3/common/text/Cue;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 233
    move-result-object p1

    .line 234
    .line 235
    check-cast p1, [Landroidx/media3/common/text/Cue;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v1}, Landroidx/media3/common/util/LongArray;->d()[J

    .line 239
    move-result-object p2

    .line 240
    .line 241
    new-instance p3, Landroidx/media3/extractor/text/subrip/SubripSubtitle;

    .line 242
    .line 243
    .line 244
    invoke-direct {p3, p1, p2}, Landroidx/media3/extractor/text/subrip/SubripSubtitle;-><init>([Landroidx/media3/common/text/Cue;[J)V

    .line 245
    return-object p3
.end method
