.class final Landroidx/media3/extractor/text/ssa/SsaStyle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/text/ssa/SsaStyle$Format;,
        Landroidx/media3/extractor/text/ssa/SsaStyle$Overrides;,
        Landroidx/media3/extractor/text/ssa/SsaStyle$SsaBorderStyle;,
        Landroidx/media3/extractor/text/ssa/SsaStyle$SsaAlignment;
    }
.end annotation


# static fields
.field public static final SSA_ALIGNMENT_BOTTOM_CENTER:I = 0x2

.field public static final SSA_ALIGNMENT_BOTTOM_LEFT:I = 0x1

.field public static final SSA_ALIGNMENT_BOTTOM_RIGHT:I = 0x3

.field public static final SSA_ALIGNMENT_MIDDLE_CENTER:I = 0x5

.field public static final SSA_ALIGNMENT_MIDDLE_LEFT:I = 0x4

.field public static final SSA_ALIGNMENT_MIDDLE_RIGHT:I = 0x6

.field public static final SSA_ALIGNMENT_TOP_CENTER:I = 0x8

.field public static final SSA_ALIGNMENT_TOP_LEFT:I = 0x7

.field public static final SSA_ALIGNMENT_TOP_RIGHT:I = 0x9

.field public static final SSA_ALIGNMENT_UNKNOWN:I = -0x1

.field public static final SSA_BORDER_STYLE_BOX:I = 0x3

.field public static final SSA_BORDER_STYLE_OUTLINE:I = 0x1

.field public static final SSA_BORDER_STYLE_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SsaStyle"


# instance fields
.field public final alignment:I

.field public final bold:Z

.field public final borderStyle:I

.field public final fontSize:F

.field public final italic:Z

.field public final name:Ljava/lang/String;

.field public final outlineColor:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final primaryColor:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final strikeout:Z

.field public final underline:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;FZZZZI)V
    .locals 0
    .param p3    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/media3/extractor/text/ssa/SsaStyle;->name:Ljava/lang/String;

    .line 6
    .line 7
    iput p2, p0, Landroidx/media3/extractor/text/ssa/SsaStyle;->alignment:I

    .line 8
    .line 9
    iput-object p3, p0, Landroidx/media3/extractor/text/ssa/SsaStyle;->primaryColor:Ljava/lang/Integer;

    .line 10
    .line 11
    iput-object p4, p0, Landroidx/media3/extractor/text/ssa/SsaStyle;->outlineColor:Ljava/lang/Integer;

    .line 12
    .line 13
    iput p5, p0, Landroidx/media3/extractor/text/ssa/SsaStyle;->fontSize:F

    .line 14
    .line 15
    iput-boolean p6, p0, Landroidx/media3/extractor/text/ssa/SsaStyle;->bold:Z

    .line 16
    .line 17
    iput-boolean p7, p0, Landroidx/media3/extractor/text/ssa/SsaStyle;->italic:Z

    .line 18
    .line 19
    iput-boolean p8, p0, Landroidx/media3/extractor/text/ssa/SsaStyle;->underline:Z

    .line 20
    .line 21
    iput-boolean p9, p0, Landroidx/media3/extractor/text/ssa/SsaStyle;->strikeout:Z

    .line 22
    .line 23
    iput p10, p0, Landroidx/media3/extractor/text/ssa/SsaStyle;->borderStyle:I

    .line 24
    return-void
.end method

.method static synthetic a(Ljava/lang/String;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/media3/extractor/text/ssa/SsaStyle;->e(Ljava/lang/String;)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static b(Ljava/lang/String;Landroidx/media3/extractor/text/ssa/SsaStyle$Format;)Landroidx/media3/extractor/text/ssa/SsaStyle;
    .locals 18
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v1, p0

    .line 3
    .line 4
    move-object/from16 v0, p1

    .line 5
    .line 6
    const-string v2, "Style:"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 10
    move-result v2

    .line 11
    .line 12
    .line 13
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->a(Z)V

    .line 14
    const/4 v2, 0x6

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    const-string v3, ","

    .line 21
    .line 22
    .line 23
    invoke-static {v2, v3}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 24
    move-result-object v2

    .line 25
    array-length v3, v2

    .line 26
    .line 27
    iget v4, v0, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->length:I

    .line 28
    .line 29
    const-string v5, "SsaStyle"

    .line 30
    const/4 v6, 0x0

    .line 31
    const/4 v7, 0x1

    .line 32
    const/4 v8, 0x0

    .line 33
    .line 34
    if-eq v3, v4, :cond_0

    .line 35
    const/4 v0, 0x3

    .line 36
    .line 37
    new-array v0, v0, [Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    move-result-object v3

    .line 42
    .line 43
    aput-object v3, v0, v8

    .line 44
    array-length v2, v2

    .line 45
    .line 46
    .line 47
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    move-result-object v2

    .line 49
    .line 50
    aput-object v2, v0, v7

    .line 51
    const/4 v2, 0x2

    .line 52
    .line 53
    aput-object v1, v0, v2

    .line 54
    .line 55
    const-string v1, "Skipping malformed \'Style:\' line (expected %s values, found %s): \'%s\'"

    .line 56
    .line 57
    .line 58
    invoke-static {v1, v0}, Landroidx/media3/common/util/Util;->D(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    .line 62
    invoke-static {v5, v0}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-object v6

    .line 64
    .line 65
    :cond_0
    :try_start_0
    new-instance v3, Landroidx/media3/extractor/text/ssa/SsaStyle;

    .line 66
    .line 67
    iget v4, v0, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->nameIndex:I

    .line 68
    .line 69
    aget-object v4, v2, v4

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 73
    move-result-object v4

    .line 74
    .line 75
    iget v9, v0, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->alignmentIndex:I

    .line 76
    const/4 v10, -0x1

    .line 77
    .line 78
    if-eq v9, v10, :cond_1

    .line 79
    .line 80
    aget-object v9, v2, v9

    .line 81
    .line 82
    .line 83
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 84
    move-result-object v9

    .line 85
    .line 86
    .line 87
    invoke-static {v9}, Landroidx/media3/extractor/text/ssa/SsaStyle;->e(Ljava/lang/String;)I

    .line 88
    move-result v9

    .line 89
    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .line 92
    goto/16 :goto_9

    .line 93
    :cond_1
    move v9, v10

    .line 94
    .line 95
    :goto_0
    iget v11, v0, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->primaryColorIndex:I

    .line 96
    .line 97
    if-eq v11, v10, :cond_2

    .line 98
    .line 99
    aget-object v11, v2, v11

    .line 100
    .line 101
    .line 102
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 103
    move-result-object v11

    .line 104
    .line 105
    .line 106
    invoke-static {v11}, Landroidx/media3/extractor/text/ssa/SsaStyle;->h(Ljava/lang/String;)Ljava/lang/Integer;

    .line 107
    move-result-object v11

    .line 108
    goto :goto_1

    .line 109
    :cond_2
    move-object v11, v6

    .line 110
    .line 111
    :goto_1
    iget v12, v0, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->outlineColorIndex:I

    .line 112
    .line 113
    if-eq v12, v10, :cond_3

    .line 114
    .line 115
    aget-object v12, v2, v12

    .line 116
    .line 117
    .line 118
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 119
    move-result-object v12

    .line 120
    .line 121
    .line 122
    invoke-static {v12}, Landroidx/media3/extractor/text/ssa/SsaStyle;->h(Ljava/lang/String;)Ljava/lang/Integer;

    .line 123
    move-result-object v12

    .line 124
    goto :goto_2

    .line 125
    :cond_3
    move-object v12, v6

    .line 126
    .line 127
    :goto_2
    iget v13, v0, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->fontSizeIndex:I

    .line 128
    .line 129
    if-eq v13, v10, :cond_4

    .line 130
    .line 131
    aget-object v13, v2, v13

    .line 132
    .line 133
    .line 134
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 135
    move-result-object v13

    .line 136
    .line 137
    .line 138
    invoke-static {v13}, Landroidx/media3/extractor/text/ssa/SsaStyle;->i(Ljava/lang/String;)F

    .line 139
    move-result v13

    .line 140
    goto :goto_3

    .line 141
    .line 142
    .line 143
    :cond_4
    const v13, -0x800001

    .line 144
    .line 145
    :goto_3
    iget v14, v0, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->boldIndex:I

    .line 146
    .line 147
    if-eq v14, v10, :cond_5

    .line 148
    .line 149
    aget-object v14, v2, v14

    .line 150
    .line 151
    .line 152
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 153
    move-result-object v14

    .line 154
    .line 155
    .line 156
    invoke-static {v14}, Landroidx/media3/extractor/text/ssa/SsaStyle;->f(Ljava/lang/String;)Z

    .line 157
    move-result v14

    .line 158
    .line 159
    if-eqz v14, :cond_5

    .line 160
    move v14, v7

    .line 161
    goto :goto_4

    .line 162
    :cond_5
    move v14, v8

    .line 163
    .line 164
    :goto_4
    iget v15, v0, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->italicIndex:I

    .line 165
    .line 166
    if-eq v15, v10, :cond_6

    .line 167
    .line 168
    aget-object v15, v2, v15

    .line 169
    .line 170
    .line 171
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 172
    move-result-object v15

    .line 173
    .line 174
    .line 175
    invoke-static {v15}, Landroidx/media3/extractor/text/ssa/SsaStyle;->f(Ljava/lang/String;)Z

    .line 176
    move-result v15

    .line 177
    .line 178
    if-eqz v15, :cond_6

    .line 179
    move v15, v7

    .line 180
    goto :goto_5

    .line 181
    :cond_6
    move v15, v8

    .line 182
    .line 183
    :goto_5
    iget v7, v0, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->underlineIndex:I

    .line 184
    .line 185
    if-eq v7, v10, :cond_7

    .line 186
    .line 187
    aget-object v7, v2, v7

    .line 188
    .line 189
    .line 190
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 191
    move-result-object v7

    .line 192
    .line 193
    .line 194
    invoke-static {v7}, Landroidx/media3/extractor/text/ssa/SsaStyle;->f(Ljava/lang/String;)Z

    .line 195
    move-result v7

    .line 196
    .line 197
    if-eqz v7, :cond_7

    .line 198
    .line 199
    const/16 v17, 0x1

    .line 200
    goto :goto_6

    .line 201
    .line 202
    :cond_7
    move/from16 v17, v8

    .line 203
    .line 204
    :goto_6
    iget v7, v0, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->strikeoutIndex:I

    .line 205
    .line 206
    if-eq v7, v10, :cond_8

    .line 207
    .line 208
    aget-object v7, v2, v7

    .line 209
    .line 210
    .line 211
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 212
    move-result-object v7

    .line 213
    .line 214
    .line 215
    invoke-static {v7}, Landroidx/media3/extractor/text/ssa/SsaStyle;->f(Ljava/lang/String;)Z

    .line 216
    move-result v7

    .line 217
    .line 218
    if-eqz v7, :cond_8

    .line 219
    .line 220
    const/16 v16, 0x1

    .line 221
    goto :goto_7

    .line 222
    .line 223
    :cond_8
    move/from16 v16, v8

    .line 224
    .line 225
    :goto_7
    iget v0, v0, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->borderStyleIndex:I

    .line 226
    .line 227
    if-eq v0, v10, :cond_9

    .line 228
    .line 229
    aget-object v0, v2, v0

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 233
    move-result-object v0

    .line 234
    .line 235
    .line 236
    invoke-static {v0}, Landroidx/media3/extractor/text/ssa/SsaStyle;->g(Ljava/lang/String;)I

    .line 237
    move-result v0

    .line 238
    goto :goto_8

    .line 239
    :cond_9
    move v0, v10

    .line 240
    :goto_8
    move-object v7, v3

    .line 241
    move-object v8, v4

    .line 242
    move-object v10, v11

    .line 243
    move-object v11, v12

    .line 244
    move v12, v13

    .line 245
    move v13, v14

    .line 246
    move v14, v15

    .line 247
    .line 248
    move/from16 v15, v17

    .line 249
    .line 250
    move/from16 v17, v0

    .line 251
    .line 252
    .line 253
    invoke-direct/range {v7 .. v17}, Landroidx/media3/extractor/text/ssa/SsaStyle;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;FZZZZI)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    return-object v3

    .line 255
    .line 256
    :goto_9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    .line 261
    const-string v3, "Skipping malformed \'Style:\' line: \'"

    .line 262
    .line 263
    .line 264
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    const-string v1, "\'"

    .line 270
    .line 271
    .line 272
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    move-result-object v1

    .line 277
    .line 278
    .line 279
    invoke-static {v5, v1, v0}, Landroidx/media3/common/util/Log;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 280
    return-object v6
.end method

.method private static c(I)Z
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static d(I)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method private static e(Ljava/lang/String;)I
    .locals 2

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 8
    move-result v0

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Landroidx/media3/extractor/text/ssa/SsaStyle;->c(I)Z

    .line 12
    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    return v0

    .line 16
    .line 17
    :catch_0
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    const-string v1, "Ignoring unknown alignment: "

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object p0

    .line 33
    .line 34
    const-string v0, "SsaStyle"

    .line 35
    .line 36
    .line 37
    invoke-static {v0, p0}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const/4 p0, -0x1

    .line 39
    return p0
.end method

.method private static f(Ljava/lang/String;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 5
    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    const/4 v1, 0x1

    .line 7
    .line 8
    if-eq p0, v1, :cond_0

    .line 9
    const/4 v2, -0x1

    .line 10
    .line 11
    if-ne p0, v2, :cond_1

    .line 12
    :cond_0
    move v0, v1

    .line 13
    :cond_1
    return v0

    .line 14
    :catch_0
    move-exception v1

    .line 15
    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    const-string v3, "Failed to parse boolean value: \'"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string p0, "\'"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 37
    .line 38
    const-string v2, "SsaStyle"

    .line 39
    .line 40
    .line 41
    invoke-static {v2, p0, v1}, Landroidx/media3/common/util/Log;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    return v0
.end method

.method private static g(Ljava/lang/String;)I
    .locals 2

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 8
    move-result v0

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Landroidx/media3/extractor/text/ssa/SsaStyle;->d(I)Z

    .line 12
    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    return v0

    .line 16
    .line 17
    :catch_0
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    const-string v1, "Ignoring unknown BorderStyle: "

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object p0

    .line 33
    .line 34
    const-string v0, "SsaStyle"

    .line 35
    .line 36
    .line 37
    invoke-static {v0, p0}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const/4 p0, -0x1

    .line 39
    return p0
.end method

.method public static h(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 8
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    :try_start_0
    const-string v0, "&H"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    const/16 v1, 0x10

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    const/4 v0, 0x2

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    .line 19
    move-result-wide v2

    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    goto :goto_2

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 26
    move-result-wide v2

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    :goto_0
    const-wide v4, 0xffffffffL

    .line 32
    .line 33
    cmp-long v0, v2, v4

    .line 34
    .line 35
    if-gtz v0, :cond_1

    .line 36
    const/4 v0, 0x1

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/4 v0, 0x0

    .line 39
    .line 40
    .line 41
    :goto_1
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->a(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    const/16 p0, 0x18

    .line 44
    .line 45
    shr-long v4, v2, p0

    .line 46
    .line 47
    const-wide/16 v6, 0xff

    .line 48
    and-long/2addr v4, v6

    .line 49
    xor-long/2addr v4, v6

    .line 50
    .line 51
    .line 52
    invoke-static {v4, v5}, Lcom/google/common/primitives/e;->d(J)I

    .line 53
    move-result p0

    .line 54
    .line 55
    shr-long v0, v2, v1

    .line 56
    and-long/2addr v0, v6

    .line 57
    .line 58
    .line 59
    invoke-static {v0, v1}, Lcom/google/common/primitives/e;->d(J)I

    .line 60
    move-result v0

    .line 61
    .line 62
    const/16 v1, 0x8

    .line 63
    .line 64
    shr-long v4, v2, v1

    .line 65
    and-long/2addr v4, v6

    .line 66
    .line 67
    .line 68
    invoke-static {v4, v5}, Lcom/google/common/primitives/e;->d(J)I

    .line 69
    move-result v1

    .line 70
    and-long/2addr v2, v6

    .line 71
    .line 72
    .line 73
    invoke-static {v2, v3}, Lcom/google/common/primitives/e;->d(J)I

    .line 74
    move-result v2

    .line 75
    .line 76
    .line 77
    invoke-static {p0, v2, v1, v0}, Landroid/graphics/Color;->argb(IIII)I

    .line 78
    move-result p0

    .line 79
    .line 80
    .line 81
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    move-result-object p0

    .line 83
    return-object p0

    .line 84
    .line 85
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    const-string v2, "Failed to parse color expression: \'"

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string p0, "\'"

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object p0

    .line 106
    .line 107
    const-string v1, "SsaStyle"

    .line 108
    .line 109
    .line 110
    invoke-static {v1, p0, v0}, Landroidx/media3/common/util/Log;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 111
    const/4 p0, 0x0

    .line 112
    return-object p0
.end method

.method private static i(Ljava/lang/String;)F
    .locals 3

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 4
    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return p0

    .line 6
    :catch_0
    move-exception v0

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    const-string v2, "Failed to parse font size: \'"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string p0, "\'"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object p0

    .line 29
    .line 30
    const-string v1, "SsaStyle"

    .line 31
    .line 32
    .line 33
    invoke-static {v1, p0, v0}, Landroidx/media3/common/util/Log;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    const p0, -0x800001

    .line 37
    return p0
.end method
