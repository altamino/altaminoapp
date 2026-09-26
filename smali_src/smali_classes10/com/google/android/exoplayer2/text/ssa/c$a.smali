.class final Lcom/google/android/exoplayer2/text/ssa/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/ssa/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field public final alignmentIndex:I

.field public final boldIndex:I

.field public final borderStyleIndex:I

.field public final fontSizeIndex:I

.field public final italicIndex:I

.field public final length:I

.field public final nameIndex:I

.field public final outlineColorIndex:I

.field public final primaryColorIndex:I

.field public final strikeoutIndex:I

.field public final underlineIndex:I


# direct methods
.method private constructor <init>(IIIIIIIIIII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Lcom/google/android/exoplayer2/text/ssa/c$a;->nameIndex:I

    .line 6
    .line 7
    iput p2, p0, Lcom/google/android/exoplayer2/text/ssa/c$a;->alignmentIndex:I

    .line 8
    .line 9
    iput p3, p0, Lcom/google/android/exoplayer2/text/ssa/c$a;->primaryColorIndex:I

    .line 10
    .line 11
    iput p4, p0, Lcom/google/android/exoplayer2/text/ssa/c$a;->outlineColorIndex:I

    .line 12
    .line 13
    iput p5, p0, Lcom/google/android/exoplayer2/text/ssa/c$a;->fontSizeIndex:I

    .line 14
    .line 15
    iput p6, p0, Lcom/google/android/exoplayer2/text/ssa/c$a;->boldIndex:I

    .line 16
    .line 17
    iput p7, p0, Lcom/google/android/exoplayer2/text/ssa/c$a;->italicIndex:I

    .line 18
    .line 19
    iput p8, p0, Lcom/google/android/exoplayer2/text/ssa/c$a;->underlineIndex:I

    .line 20
    .line 21
    iput p9, p0, Lcom/google/android/exoplayer2/text/ssa/c$a;->strikeoutIndex:I

    .line 22
    .line 23
    iput p10, p0, Lcom/google/android/exoplayer2/text/ssa/c$a;->borderStyleIndex:I

    .line 24
    .line 25
    iput p11, p0, Lcom/google/android/exoplayer2/text/ssa/c$a;->length:I

    .line 26
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/google/android/exoplayer2/text/ssa/c$a;
    .locals 17
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x7

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 7
    move-result-object v1

    .line 8
    .line 9
    const-string v2, ","

    .line 10
    .line 11
    .line 12
    invoke-static {v1, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    const/4 v2, -0x1

    .line 15
    const/4 v3, 0x0

    .line 16
    move v6, v2

    .line 17
    move v7, v6

    .line 18
    move v8, v7

    .line 19
    move v9, v8

    .line 20
    move v10, v9

    .line 21
    move v11, v10

    .line 22
    move v12, v11

    .line 23
    move v13, v12

    .line 24
    move v14, v13

    .line 25
    move v15, v14

    .line 26
    move v4, v3

    .line 27
    :goto_0
    array-length v5, v1

    .line 28
    .line 29
    if-ge v4, v5, :cond_a

    .line 30
    .line 31
    aget-object v5, v1, v4

    .line 32
    .line 33
    .line 34
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 35
    move-result-object v5

    .line 36
    .line 37
    .line 38
    invoke-static {v5}, Lcom/google/common/base/c;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    move-result-object v5

    .line 40
    .line 41
    .line 42
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 43
    .line 44
    .line 45
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 46
    move-result v16

    .line 47
    .line 48
    .line 49
    sparse-switch v16, :sswitch_data_0

    .line 50
    :goto_1
    move v0, v2

    .line 51
    .line 52
    goto/16 :goto_2

    .line 53
    .line 54
    :sswitch_0
    const-string v0, "outlinecolour"

    .line 55
    .line 56
    .line 57
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    move-result v0

    .line 59
    .line 60
    if-nez v0, :cond_0

    .line 61
    goto :goto_1

    .line 62
    .line 63
    :cond_0
    const/16 v0, 0x9

    .line 64
    .line 65
    goto/16 :goto_2

    .line 66
    .line 67
    :sswitch_1
    const-string v0, "alignment"

    .line 68
    .line 69
    .line 70
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    move-result v0

    .line 72
    .line 73
    if-nez v0, :cond_1

    .line 74
    goto :goto_1

    .line 75
    .line 76
    :cond_1
    const/16 v0, 0x8

    .line 77
    .line 78
    goto/16 :goto_2

    .line 79
    .line 80
    :sswitch_2
    const-string v0, "borderstyle"

    .line 81
    .line 82
    .line 83
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    move-result v0

    .line 85
    .line 86
    if-nez v0, :cond_2

    .line 87
    goto :goto_1

    .line 88
    :cond_2
    const/4 v0, 0x7

    .line 89
    goto :goto_2

    .line 90
    .line 91
    :sswitch_3
    const-string v0, "fontsize"

    .line 92
    .line 93
    .line 94
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    move-result v0

    .line 96
    .line 97
    if-nez v0, :cond_3

    .line 98
    goto :goto_1

    .line 99
    :cond_3
    const/4 v0, 0x6

    .line 100
    goto :goto_2

    .line 101
    .line 102
    :sswitch_4
    const-string v0, "name"

    .line 103
    .line 104
    .line 105
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    move-result v0

    .line 107
    .line 108
    if-nez v0, :cond_4

    .line 109
    goto :goto_1

    .line 110
    :cond_4
    const/4 v0, 0x5

    .line 111
    goto :goto_2

    .line 112
    .line 113
    :sswitch_5
    const-string v0, "bold"

    .line 114
    .line 115
    .line 116
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    move-result v0

    .line 118
    .line 119
    if-nez v0, :cond_5

    .line 120
    goto :goto_1

    .line 121
    :cond_5
    const/4 v0, 0x4

    .line 122
    goto :goto_2

    .line 123
    .line 124
    :sswitch_6
    const-string v0, "primarycolour"

    .line 125
    .line 126
    .line 127
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    move-result v0

    .line 129
    .line 130
    if-nez v0, :cond_6

    .line 131
    goto :goto_1

    .line 132
    :cond_6
    const/4 v0, 0x3

    .line 133
    goto :goto_2

    .line 134
    .line 135
    :sswitch_7
    const-string v0, "strikeout"

    .line 136
    .line 137
    .line 138
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    move-result v0

    .line 140
    .line 141
    if-nez v0, :cond_7

    .line 142
    goto :goto_1

    .line 143
    :cond_7
    const/4 v0, 0x2

    .line 144
    goto :goto_2

    .line 145
    .line 146
    :sswitch_8
    const-string v0, "underline"

    .line 147
    .line 148
    .line 149
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    move-result v0

    .line 151
    .line 152
    if-nez v0, :cond_8

    .line 153
    goto :goto_1

    .line 154
    :cond_8
    const/4 v0, 0x1

    .line 155
    goto :goto_2

    .line 156
    .line 157
    :sswitch_9
    const-string v0, "italic"

    .line 158
    .line 159
    .line 160
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    move-result v0

    .line 162
    .line 163
    if-nez v0, :cond_9

    .line 164
    goto :goto_1

    .line 165
    :cond_9
    move v0, v3

    .line 166
    .line 167
    .line 168
    :goto_2
    packed-switch v0, :pswitch_data_0

    .line 169
    goto :goto_3

    .line 170
    :pswitch_0
    move v9, v4

    .line 171
    goto :goto_3

    .line 172
    :pswitch_1
    move v7, v4

    .line 173
    goto :goto_3

    .line 174
    :pswitch_2
    move v15, v4

    .line 175
    goto :goto_3

    .line 176
    :pswitch_3
    move v10, v4

    .line 177
    goto :goto_3

    .line 178
    :pswitch_4
    move v6, v4

    .line 179
    goto :goto_3

    .line 180
    :pswitch_5
    move v11, v4

    .line 181
    goto :goto_3

    .line 182
    :pswitch_6
    move v8, v4

    .line 183
    goto :goto_3

    .line 184
    :pswitch_7
    move v14, v4

    .line 185
    goto :goto_3

    .line 186
    :pswitch_8
    move v13, v4

    .line 187
    goto :goto_3

    .line 188
    :pswitch_9
    move v12, v4

    .line 189
    .line 190
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 191
    const/4 v0, 0x7

    .line 192
    .line 193
    goto/16 :goto_0

    .line 194
    .line 195
    :cond_a
    if-eq v6, v2, :cond_b

    .line 196
    .line 197
    new-instance v0, Lcom/google/android/exoplayer2/text/ssa/c$a;

    .line 198
    array-length v1, v1

    .line 199
    move-object v5, v0

    .line 200
    .line 201
    move/from16 v16, v1

    .line 202
    .line 203
    .line 204
    invoke-direct/range {v5 .. v16}, Lcom/google/android/exoplayer2/text/ssa/c$a;-><init>(IIIIIIIIIII)V

    .line 205
    goto :goto_4

    .line 206
    :cond_b
    const/4 v0, 0x0

    .line 207
    :goto_4
    return-object v0

    .line 208
    nop

    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    :sswitch_data_0
    .sparse-switch
        -0x4642c5d0 -> :sswitch_9
        -0x3d363934 -> :sswitch_8
        -0xb7325a4 -> :sswitch_7
        -0x43a3db2 -> :sswitch_6
        0x2e3a85 -> :sswitch_5
        0x337a8b -> :sswitch_4
        0x15d92cd0 -> :sswitch_3
        0x2dbc6505 -> :sswitch_2
        0x695fa1e3 -> :sswitch_1
        0x76840c8e -> :sswitch_0
    .end sparse-switch

    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
