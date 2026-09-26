.class public final Landroidx/compose/material/CheckboxDefaults;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCheckbox.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Checkbox.kt\nandroidx/compose/material/CheckboxDefaults\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,479:1\n83#2,3:480\n1057#3,6:483\n*S KotlinDebug\n*F\n+ 1 Checkbox.kt\nandroidx/compose/material/CheckboxDefaults\n*L\n228#1:480,3\n228#1:483,6\n*E\n"
.end annotation


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Landroidx/compose/material/CheckboxDefaults;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material/CheckboxDefaults;

    invoke-direct {v0}, Landroidx/compose/material/CheckboxDefaults;-><init>()V

    sput-object v0, Landroidx/compose/material/CheckboxDefaults;->INSTANCE:Landroidx/compose/material/CheckboxDefaults;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final a(JJJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material/CheckboxColors;
    .locals 29
    .param p11    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p11

    .line 3
    .line 4
    .line 5
    const v1, 0x1bfc5e88

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 9
    .line 10
    and-int/lit8 v1, p13, 0x1

    .line 11
    const/4 v2, 0x6

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    sget-object v1, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0, v2}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Landroidx/compose/material/Colors;->l()J

    .line 23
    move-result-wide v3

    .line 24
    .line 25
    move-wide/from16 v20, v3

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_0
    move-wide/from16 v20, p1

    .line 29
    .line 30
    :goto_0
    and-int/lit8 v1, p13, 0x2

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    sget-object v1, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v0, v2}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Landroidx/compose/material/Colors;->i()J

    .line 42
    move-result-wide v3

    .line 43
    .line 44
    .line 45
    const v5, 0x3f19999a    # 0.6f

    .line 46
    const/4 v6, 0x0

    .line 47
    const/4 v7, 0x0

    .line 48
    const/4 v8, 0x0

    .line 49
    .line 50
    const/16 v9, 0xe

    .line 51
    const/4 v10, 0x0

    .line 52
    .line 53
    .line 54
    invoke-static/range {v3 .. v10}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    .line 55
    move-result-wide v3

    .line 56
    .line 57
    move-wide/from16 v22, v3

    .line 58
    goto :goto_1

    .line 59
    .line 60
    :cond_1
    move-wide/from16 v22, p3

    .line 61
    .line 62
    :goto_1
    and-int/lit8 v1, p13, 0x4

    .line 63
    .line 64
    if-eqz v1, :cond_2

    .line 65
    .line 66
    sget-object v1, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v0, v2}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 70
    move-result-object v1

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Landroidx/compose/material/Colors;->n()J

    .line 74
    move-result-wide v3

    .line 75
    move-wide v6, v3

    .line 76
    goto :goto_2

    .line 77
    .line 78
    :cond_2
    move-wide/from16 v6, p5

    .line 79
    .line 80
    :goto_2
    and-int/lit8 v1, p13, 0x8

    .line 81
    .line 82
    if-eqz v1, :cond_3

    .line 83
    .line 84
    sget-object v1, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, v0, v2}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 88
    move-result-object v1

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1}, Landroidx/compose/material/Colors;->i()J

    .line 92
    move-result-wide v3

    .line 93
    .line 94
    sget-object v1, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v0, v2}, Landroidx/compose/material/ContentAlpha;->b(Landroidx/compose/runtime/Composer;I)F

    .line 98
    move-result v1

    .line 99
    const/4 v5, 0x0

    .line 100
    const/4 v8, 0x0

    .line 101
    const/4 v9, 0x0

    .line 102
    .line 103
    const/16 v10, 0xe

    .line 104
    const/4 v11, 0x0

    .line 105
    .line 106
    move-wide/from16 p1, v3

    .line 107
    .line 108
    move/from16 p3, v1

    .line 109
    .line 110
    move/from16 p4, v5

    .line 111
    .line 112
    move/from16 p5, v8

    .line 113
    .line 114
    move/from16 p6, v9

    .line 115
    .line 116
    move/from16 p7, v10

    .line 117
    .line 118
    move-object/from16 p8, v11

    .line 119
    .line 120
    .line 121
    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    .line 122
    move-result-wide v3

    .line 123
    .line 124
    move-wide/from16 v24, v3

    .line 125
    goto :goto_3

    .line 126
    .line 127
    :cond_3
    move-wide/from16 v24, p7

    .line 128
    .line 129
    :goto_3
    and-int/lit8 v1, p13, 0x10

    .line 130
    .line 131
    if-eqz v1, :cond_4

    .line 132
    .line 133
    sget-object v1, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1, v0, v2}, Landroidx/compose/material/ContentAlpha;->b(Landroidx/compose/runtime/Composer;I)F

    .line 137
    move-result v1

    .line 138
    const/4 v2, 0x0

    .line 139
    const/4 v3, 0x0

    .line 140
    const/4 v4, 0x0

    .line 141
    .line 142
    const/16 v5, 0xe

    .line 143
    const/4 v8, 0x0

    .line 144
    .line 145
    move-wide/from16 p1, v20

    .line 146
    .line 147
    move/from16 p3, v1

    .line 148
    .line 149
    move/from16 p4, v2

    .line 150
    .line 151
    move/from16 p5, v3

    .line 152
    .line 153
    move/from16 p6, v4

    .line 154
    .line 155
    move/from16 p7, v5

    .line 156
    .line 157
    move-object/from16 p8, v8

    .line 158
    .line 159
    .line 160
    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    .line 161
    move-result-wide v1

    .line 162
    .line 163
    move-wide/from16 v26, v1

    .line 164
    goto :goto_4

    .line 165
    .line 166
    :cond_4
    move-wide/from16 v26, p9

    .line 167
    :goto_4
    const/4 v1, 0x5

    .line 168
    .line 169
    new-array v2, v1, [Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/graphics/Color;->h(J)Landroidx/compose/ui/graphics/Color;

    .line 173
    move-result-object v3

    .line 174
    const/4 v4, 0x0

    .line 175
    .line 176
    aput-object v3, v2, v4

    .line 177
    .line 178
    .line 179
    invoke-static/range {v22 .. v23}, Landroidx/compose/ui/graphics/Color;->h(J)Landroidx/compose/ui/graphics/Color;

    .line 180
    move-result-object v3

    .line 181
    const/4 v5, 0x1

    .line 182
    .line 183
    aput-object v3, v2, v5

    .line 184
    .line 185
    .line 186
    invoke-static {v6, v7}, Landroidx/compose/ui/graphics/Color;->h(J)Landroidx/compose/ui/graphics/Color;

    .line 187
    move-result-object v3

    .line 188
    const/4 v5, 0x2

    .line 189
    .line 190
    aput-object v3, v2, v5

    .line 191
    const/4 v3, 0x3

    .line 192
    .line 193
    .line 194
    invoke-static/range {v24 .. v25}, Landroidx/compose/ui/graphics/Color;->h(J)Landroidx/compose/ui/graphics/Color;

    .line 195
    move-result-object v5

    .line 196
    .line 197
    aput-object v5, v2, v3

    .line 198
    .line 199
    .line 200
    invoke-static/range {v26 .. v27}, Landroidx/compose/ui/graphics/Color;->h(J)Landroidx/compose/ui/graphics/Color;

    .line 201
    move-result-object v3

    .line 202
    const/4 v5, 0x4

    .line 203
    .line 204
    aput-object v3, v2, v5

    .line 205
    .line 206
    .line 207
    const v3, -0x21de6e89

    .line 208
    .line 209
    .line 210
    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 211
    move v3, v4

    .line 212
    .line 213
    :goto_5
    if-ge v4, v1, :cond_5

    .line 214
    .line 215
    aget-object v5, v2, v4

    .line 216
    .line 217
    .line 218
    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 219
    move-result v5

    .line 220
    or-int/2addr v3, v5

    .line 221
    .line 222
    add-int/lit8 v4, v4, 0x1

    .line 223
    goto :goto_5

    .line 224
    .line 225
    .line 226
    :cond_5
    invoke-interface/range {p11 .. p11}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 227
    move-result-object v1

    .line 228
    .line 229
    if-nez v3, :cond_6

    .line 230
    .line 231
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 235
    move-result-object v2

    .line 236
    .line 237
    if-ne v1, v2, :cond_7

    .line 238
    :cond_6
    const/4 v1, 0x0

    .line 239
    const/4 v2, 0x0

    .line 240
    const/4 v3, 0x0

    .line 241
    const/4 v4, 0x0

    .line 242
    .line 243
    const/16 v5, 0xe

    .line 244
    const/4 v8, 0x0

    .line 245
    .line 246
    move-wide/from16 p1, v6

    .line 247
    .line 248
    move/from16 p3, v1

    .line 249
    .line 250
    move/from16 p4, v2

    .line 251
    .line 252
    move/from16 p5, v3

    .line 253
    .line 254
    move/from16 p6, v4

    .line 255
    .line 256
    move/from16 p7, v5

    .line 257
    .line 258
    move-object/from16 p8, v8

    .line 259
    .line 260
    .line 261
    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    .line 262
    move-result-wide v8

    .line 263
    const/4 v10, 0x0

    .line 264
    .line 265
    move-wide/from16 p1, v20

    .line 266
    .line 267
    move-object/from16 p8, v10

    .line 268
    .line 269
    .line 270
    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    .line 271
    move-result-wide v12

    .line 272
    .line 273
    move-wide/from16 p1, v24

    .line 274
    .line 275
    .line 276
    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    .line 277
    move-result-wide v16

    .line 278
    .line 279
    new-instance v1, Landroidx/compose/material/DefaultCheckboxColors;

    .line 280
    move-object v5, v1

    .line 281
    .line 282
    const/16 v28, 0x0

    .line 283
    .line 284
    move-wide/from16 v10, v20

    .line 285
    .line 286
    move-wide/from16 v14, v24

    .line 287
    .line 288
    move-wide/from16 v18, v26

    .line 289
    .line 290
    .line 291
    invoke-direct/range {v5 .. v28}, Landroidx/compose/material/DefaultCheckboxColors;-><init>(JJJJJJJJJJJLkotlin/jvm/internal/k;)V

    .line 292
    .line 293
    .line 294
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 295
    .line 296
    .line 297
    :cond_7
    invoke-interface/range {p11 .. p11}, Landroidx/compose/runtime/Composer;->Q()V

    .line 298
    .line 299
    check-cast v1, Landroidx/compose/material/DefaultCheckboxColors;

    .line 300
    .line 301
    .line 302
    invoke-interface/range {p11 .. p11}, Landroidx/compose/runtime/Composer;->Q()V

    .line 303
    return-object v1
.end method
