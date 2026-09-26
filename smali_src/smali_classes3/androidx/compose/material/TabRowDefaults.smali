.class public final Landroidx/compose/material/TabRowDefaults;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTabRow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TabRow.kt\nandroidx/compose/material/TabRowDefaults\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 InspectableValue.kt\nandroidx/compose/ui/platform/InspectableValueKt\n+ 4 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,517:1\n76#2:518\n76#2:519\n135#3:520\n155#4:521\n155#4:522\n155#4:523\n*S KotlinDebug\n*F\n+ 1 TabRow.kt\nandroidx/compose/material/TabRowDefaults\n*L\n367#1:518\n384#1:519\n404#1:520\n431#1:521\n436#1:522\n441#1:523\n*E\n"
.end annotation


# static fields
.field public static final $stable:I = 0x0

.field public static final DividerOpacity:F = 0.12f

.field private static final DividerThickness:F

.field public static final INSTANCE:Landroidx/compose/material/TabRowDefaults;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final IndicatorHeight:F

.field private static final ScrollableTabRowPadding:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/material/TabRowDefaults;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/compose/material/TabRowDefaults;-><init>()V

    .line 6
    .line 7
    sput-object v0, Landroidx/compose/material/TabRowDefaults;->INSTANCE:Landroidx/compose/material/TabRowDefaults;

    .line 8
    const/4 v0, 0x1

    .line 9
    int-to-float v0, v0

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 13
    move-result v0

    .line 14
    .line 15
    sput v0, Landroidx/compose/material/TabRowDefaults;->DividerThickness:F

    .line 16
    const/4 v0, 0x2

    .line 17
    int-to-float v0, v0

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 21
    move-result v0

    .line 22
    .line 23
    sput v0, Landroidx/compose/material/TabRowDefaults;->IndicatorHeight:F

    .line 24
    .line 25
    const/16 v0, 0x34

    .line 26
    int-to-float v0, v0

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 30
    move-result v0

    .line 31
    .line 32
    sput v0, Landroidx/compose/material/TabRowDefaults;->ScrollableTabRowPadding:F

    .line 33
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
.method public final a(Landroidx/compose/ui/Modifier;FJLandroidx/compose/runtime/Composer;II)V
    .locals 16
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
    .end annotation

    .line 1
    .line 2
    move/from16 v6, p6

    .line 3
    .line 4
    .line 5
    const v0, 0x364bc30f

    .line 6
    .line 7
    move-object/from16 v1, p5

    .line 8
    .line 9
    .line 10
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    and-int/lit8 v1, p7, 0x1

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    or-int/lit8 v2, v6, 0x6

    .line 18
    move v3, v2

    .line 19
    .line 20
    move-object/from16 v2, p1

    .line 21
    goto :goto_1

    .line 22
    .line 23
    :cond_0
    and-int/lit8 v2, v6, 0xe

    .line 24
    .line 25
    if-nez v2, :cond_2

    .line 26
    .line 27
    move-object/from16 v2, p1

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 31
    move-result v3

    .line 32
    .line 33
    if-eqz v3, :cond_1

    .line 34
    const/4 v3, 0x4

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v3, 0x2

    .line 37
    :goto_0
    or-int/2addr v3, v6

    .line 38
    goto :goto_1

    .line 39
    .line 40
    :cond_2
    move-object/from16 v2, p1

    .line 41
    move v3, v6

    .line 42
    .line 43
    :goto_1
    and-int/lit8 v4, v6, 0x70

    .line 44
    .line 45
    if-nez v4, :cond_5

    .line 46
    .line 47
    and-int/lit8 v4, p7, 0x2

    .line 48
    .line 49
    if-nez v4, :cond_3

    .line 50
    .line 51
    move/from16 v4, p2

    .line 52
    .line 53
    .line 54
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->n(F)Z

    .line 55
    move-result v5

    .line 56
    .line 57
    if-eqz v5, :cond_4

    .line 58
    .line 59
    const/16 v5, 0x20

    .line 60
    goto :goto_2

    .line 61
    .line 62
    :cond_3
    move/from16 v4, p2

    .line 63
    .line 64
    :cond_4
    const/16 v5, 0x10

    .line 65
    :goto_2
    or-int/2addr v3, v5

    .line 66
    goto :goto_3

    .line 67
    .line 68
    :cond_5
    move/from16 v4, p2

    .line 69
    .line 70
    :goto_3
    and-int/lit16 v5, v6, 0x380

    .line 71
    .line 72
    if-nez v5, :cond_7

    .line 73
    .line 74
    and-int/lit8 v5, p7, 0x4

    .line 75
    .line 76
    move-wide/from16 v7, p3

    .line 77
    .line 78
    if-nez v5, :cond_6

    .line 79
    .line 80
    .line 81
    invoke-interface {v0, v7, v8}, Landroidx/compose/runtime/Composer;->q(J)Z

    .line 82
    move-result v5

    .line 83
    .line 84
    if-eqz v5, :cond_6

    .line 85
    .line 86
    const/16 v5, 0x100

    .line 87
    goto :goto_4

    .line 88
    .line 89
    :cond_6
    const/16 v5, 0x80

    .line 90
    :goto_4
    or-int/2addr v3, v5

    .line 91
    goto :goto_5

    .line 92
    .line 93
    :cond_7
    move-wide/from16 v7, p3

    .line 94
    .line 95
    :goto_5
    and-int/lit8 v5, p7, 0x8

    .line 96
    .line 97
    if-eqz v5, :cond_8

    .line 98
    .line 99
    or-int/lit16 v3, v3, 0xc00

    .line 100
    .line 101
    move-object/from16 v15, p0

    .line 102
    goto :goto_7

    .line 103
    .line 104
    :cond_8
    and-int/lit16 v5, v6, 0x1c00

    .line 105
    .line 106
    move-object/from16 v15, p0

    .line 107
    .line 108
    if-nez v5, :cond_a

    .line 109
    .line 110
    .line 111
    invoke-interface {v0, v15}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 112
    move-result v5

    .line 113
    .line 114
    if-eqz v5, :cond_9

    .line 115
    .line 116
    const/16 v5, 0x800

    .line 117
    goto :goto_6

    .line 118
    .line 119
    :cond_9
    const/16 v5, 0x400

    .line 120
    :goto_6
    or-int/2addr v3, v5

    .line 121
    .line 122
    :cond_a
    :goto_7
    and-int/lit16 v5, v3, 0x16db

    .line 123
    .line 124
    const/16 v9, 0x492

    .line 125
    .line 126
    if-ne v5, v9, :cond_c

    .line 127
    .line 128
    .line 129
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->b()Z

    .line 130
    move-result v5

    .line 131
    .line 132
    if-nez v5, :cond_b

    .line 133
    goto :goto_8

    .line 134
    .line 135
    .line 136
    :cond_b
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->g()V

    .line 137
    move v3, v4

    .line 138
    move-wide v4, v7

    .line 139
    .line 140
    goto/16 :goto_d

    .line 141
    .line 142
    .line 143
    :cond_c
    :goto_8
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->J()V

    .line 144
    .line 145
    and-int/lit8 v5, v6, 0x1

    .line 146
    .line 147
    if-eqz v5, :cond_11

    .line 148
    .line 149
    .line 150
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->h()Z

    .line 151
    move-result v5

    .line 152
    .line 153
    if-eqz v5, :cond_d

    .line 154
    goto :goto_9

    .line 155
    .line 156
    .line 157
    :cond_d
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->g()V

    .line 158
    .line 159
    and-int/lit8 v1, p7, 0x2

    .line 160
    .line 161
    if-eqz v1, :cond_e

    .line 162
    .line 163
    and-int/lit8 v3, v3, -0x71

    .line 164
    .line 165
    :cond_e
    and-int/lit8 v1, p7, 0x4

    .line 166
    .line 167
    if-eqz v1, :cond_f

    .line 168
    .line 169
    and-int/lit16 v3, v3, -0x381

    .line 170
    :cond_f
    move-object v1, v2

    .line 171
    move v2, v4

    .line 172
    :cond_10
    move-wide v4, v7

    .line 173
    goto :goto_c

    .line 174
    .line 175
    :cond_11
    :goto_9
    if-eqz v1, :cond_12

    .line 176
    .line 177
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 178
    goto :goto_a

    .line 179
    :cond_12
    move-object v1, v2

    .line 180
    .line 181
    :goto_a
    and-int/lit8 v2, p7, 0x2

    .line 182
    .line 183
    if-eqz v2, :cond_13

    .line 184
    .line 185
    sget v2, Landroidx/compose/material/TabRowDefaults;->DividerThickness:F

    .line 186
    .line 187
    and-int/lit8 v3, v3, -0x71

    .line 188
    goto :goto_b

    .line 189
    :cond_13
    move v2, v4

    .line 190
    .line 191
    :goto_b
    and-int/lit8 v4, p7, 0x4

    .line 192
    .line 193
    if-eqz v4, :cond_10

    .line 194
    .line 195
    .line 196
    invoke-static {}, Landroidx/compose/material/ContentColorKt;->a()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 197
    move-result-object v4

    .line 198
    .line 199
    .line 200
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 201
    move-result-object v4

    .line 202
    .line 203
    check-cast v4, Landroidx/compose/ui/graphics/Color;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/Color;->v()J

    .line 207
    move-result-wide v7

    .line 208
    .line 209
    .line 210
    const v9, 0x3df5c28f    # 0.12f

    .line 211
    const/4 v10, 0x0

    .line 212
    const/4 v11, 0x0

    .line 213
    const/4 v12, 0x0

    .line 214
    .line 215
    const/16 v13, 0xe

    .line 216
    const/4 v14, 0x0

    .line 217
    .line 218
    .line 219
    invoke-static/range {v7 .. v14}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    .line 220
    move-result-wide v4

    .line 221
    .line 222
    and-int/lit16 v3, v3, -0x381

    .line 223
    .line 224
    .line 225
    :goto_c
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->A()V

    .line 226
    const/4 v11, 0x0

    .line 227
    .line 228
    and-int/lit8 v7, v3, 0xe

    .line 229
    .line 230
    shr-int/lit8 v8, v3, 0x3

    .line 231
    .line 232
    and-int/lit8 v8, v8, 0x70

    .line 233
    or-int/2addr v7, v8

    .line 234
    .line 235
    shl-int/lit8 v3, v3, 0x3

    .line 236
    .line 237
    and-int/lit16 v3, v3, 0x380

    .line 238
    .line 239
    or-int v13, v7, v3

    .line 240
    .line 241
    const/16 v14, 0x8

    .line 242
    move-object v7, v1

    .line 243
    move-wide v8, v4

    .line 244
    move v10, v2

    .line 245
    move-object v12, v0

    .line 246
    .line 247
    .line 248
    invoke-static/range {v7 .. v14}, Landroidx/compose/material/DividerKt;->a(Landroidx/compose/ui/Modifier;JFFLandroidx/compose/runtime/Composer;II)V

    .line 249
    move v3, v2

    .line 250
    move-object v2, v1

    .line 251
    .line 252
    .line 253
    :goto_d
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 254
    move-result-object v8

    .line 255
    .line 256
    if-nez v8, :cond_14

    .line 257
    goto :goto_e

    .line 258
    .line 259
    :cond_14
    new-instance v9, Landroidx/compose/material/TabRowDefaults$Divider$1;

    .line 260
    move-object v0, v9

    .line 261
    .line 262
    move-object/from16 v1, p0

    .line 263
    .line 264
    move/from16 v6, p6

    .line 265
    .line 266
    move/from16 v7, p7

    .line 267
    .line 268
    .line 269
    invoke-direct/range {v0 .. v7}, Landroidx/compose/material/TabRowDefaults$Divider$1;-><init>(Landroidx/compose/material/TabRowDefaults;Landroidx/compose/ui/Modifier;FJII)V

    .line 270
    .line 271
    .line 272
    invoke-interface {v8, v9}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 273
    :goto_e
    return-void
.end method

.method public final b(Landroidx/compose/ui/Modifier;FJLandroidx/compose/runtime/Composer;II)V
    .locals 16
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
    .end annotation

    .line 1
    .line 2
    move/from16 v6, p6

    .line 3
    .line 4
    .line 5
    const v0, 0x5958f559

    .line 6
    .line 7
    move-object/from16 v1, p5

    .line 8
    .line 9
    .line 10
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    and-int/lit8 v1, p7, 0x1

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    or-int/lit8 v2, v6, 0x6

    .line 18
    move v3, v2

    .line 19
    .line 20
    move-object/from16 v2, p1

    .line 21
    goto :goto_1

    .line 22
    .line 23
    :cond_0
    and-int/lit8 v2, v6, 0xe

    .line 24
    .line 25
    if-nez v2, :cond_2

    .line 26
    .line 27
    move-object/from16 v2, p1

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 31
    move-result v3

    .line 32
    .line 33
    if-eqz v3, :cond_1

    .line 34
    const/4 v3, 0x4

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v3, 0x2

    .line 37
    :goto_0
    or-int/2addr v3, v6

    .line 38
    goto :goto_1

    .line 39
    .line 40
    :cond_2
    move-object/from16 v2, p1

    .line 41
    move v3, v6

    .line 42
    .line 43
    :goto_1
    and-int/lit8 v4, v6, 0x70

    .line 44
    .line 45
    if-nez v4, :cond_5

    .line 46
    .line 47
    and-int/lit8 v4, p7, 0x2

    .line 48
    .line 49
    if-nez v4, :cond_3

    .line 50
    .line 51
    move/from16 v4, p2

    .line 52
    .line 53
    .line 54
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->n(F)Z

    .line 55
    move-result v5

    .line 56
    .line 57
    if-eqz v5, :cond_4

    .line 58
    .line 59
    const/16 v5, 0x20

    .line 60
    goto :goto_2

    .line 61
    .line 62
    :cond_3
    move/from16 v4, p2

    .line 63
    .line 64
    :cond_4
    const/16 v5, 0x10

    .line 65
    :goto_2
    or-int/2addr v3, v5

    .line 66
    goto :goto_3

    .line 67
    .line 68
    :cond_5
    move/from16 v4, p2

    .line 69
    .line 70
    :goto_3
    and-int/lit16 v5, v6, 0x380

    .line 71
    .line 72
    if-nez v5, :cond_7

    .line 73
    .line 74
    and-int/lit8 v5, p7, 0x4

    .line 75
    .line 76
    move-wide/from16 v7, p3

    .line 77
    .line 78
    if-nez v5, :cond_6

    .line 79
    .line 80
    .line 81
    invoke-interface {v0, v7, v8}, Landroidx/compose/runtime/Composer;->q(J)Z

    .line 82
    move-result v5

    .line 83
    .line 84
    if-eqz v5, :cond_6

    .line 85
    .line 86
    const/16 v5, 0x100

    .line 87
    goto :goto_4

    .line 88
    .line 89
    :cond_6
    const/16 v5, 0x80

    .line 90
    :goto_4
    or-int/2addr v3, v5

    .line 91
    goto :goto_5

    .line 92
    .line 93
    :cond_7
    move-wide/from16 v7, p3

    .line 94
    .line 95
    :goto_5
    and-int/lit8 v5, p7, 0x8

    .line 96
    .line 97
    if-eqz v5, :cond_8

    .line 98
    .line 99
    or-int/lit16 v3, v3, 0xc00

    .line 100
    .line 101
    move-object/from16 v9, p0

    .line 102
    goto :goto_7

    .line 103
    .line 104
    :cond_8
    and-int/lit16 v5, v6, 0x1c00

    .line 105
    .line 106
    move-object/from16 v9, p0

    .line 107
    .line 108
    if-nez v5, :cond_a

    .line 109
    .line 110
    .line 111
    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 112
    move-result v5

    .line 113
    .line 114
    if-eqz v5, :cond_9

    .line 115
    .line 116
    const/16 v5, 0x800

    .line 117
    goto :goto_6

    .line 118
    .line 119
    :cond_9
    const/16 v5, 0x400

    .line 120
    :goto_6
    or-int/2addr v3, v5

    .line 121
    .line 122
    :cond_a
    :goto_7
    and-int/lit16 v3, v3, 0x16db

    .line 123
    .line 124
    const/16 v5, 0x492

    .line 125
    .line 126
    if-ne v3, v5, :cond_c

    .line 127
    .line 128
    .line 129
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->b()Z

    .line 130
    move-result v3

    .line 131
    .line 132
    if-nez v3, :cond_b

    .line 133
    goto :goto_8

    .line 134
    .line 135
    .line 136
    :cond_b
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->g()V

    .line 137
    move v3, v4

    .line 138
    move-wide v4, v7

    .line 139
    goto :goto_d

    .line 140
    .line 141
    .line 142
    :cond_c
    :goto_8
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->J()V

    .line 143
    .line 144
    and-int/lit8 v3, v6, 0x1

    .line 145
    .line 146
    if-eqz v3, :cond_e

    .line 147
    .line 148
    .line 149
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->h()Z

    .line 150
    move-result v3

    .line 151
    .line 152
    if-eqz v3, :cond_d

    .line 153
    goto :goto_9

    .line 154
    .line 155
    .line 156
    :cond_d
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->g()V

    .line 157
    move-object v1, v2

    .line 158
    move v2, v4

    .line 159
    goto :goto_c

    .line 160
    .line 161
    :cond_e
    :goto_9
    if-eqz v1, :cond_f

    .line 162
    .line 163
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 164
    goto :goto_a

    .line 165
    :cond_f
    move-object v1, v2

    .line 166
    .line 167
    :goto_a
    and-int/lit8 v2, p7, 0x2

    .line 168
    .line 169
    if-eqz v2, :cond_10

    .line 170
    .line 171
    sget v2, Landroidx/compose/material/TabRowDefaults;->IndicatorHeight:F

    .line 172
    goto :goto_b

    .line 173
    :cond_10
    move v2, v4

    .line 174
    .line 175
    :goto_b
    and-int/lit8 v3, p7, 0x4

    .line 176
    .line 177
    if-eqz v3, :cond_11

    .line 178
    .line 179
    .line 180
    invoke-static {}, Landroidx/compose/material/ContentColorKt;->a()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 181
    move-result-object v3

    .line 182
    .line 183
    .line 184
    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 185
    move-result-object v3

    .line 186
    .line 187
    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/Color;->v()J

    .line 191
    move-result-wide v3

    .line 192
    move-wide v7, v3

    .line 193
    .line 194
    .line 195
    :cond_11
    :goto_c
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->A()V

    .line 196
    const/4 v3, 0x0

    .line 197
    const/4 v4, 0x0

    .line 198
    const/4 v5, 0x1

    .line 199
    .line 200
    .line 201
    invoke-static {v1, v3, v5, v4}, Landroidx/compose/foundation/layout/SizeKt;->n(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 202
    move-result-object v3

    .line 203
    .line 204
    .line 205
    invoke-static {v3, v2}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 206
    move-result-object v10

    .line 207
    const/4 v13, 0x0

    .line 208
    const/4 v14, 0x2

    .line 209
    const/4 v15, 0x0

    .line 210
    move-wide v11, v7

    .line 211
    .line 212
    .line 213
    invoke-static/range {v10 .. v15}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 214
    move-result-object v3

    .line 215
    const/4 v4, 0x0

    .line 216
    .line 217
    .line 218
    invoke-static {v3, v0, v4}, Landroidx/compose/foundation/layout/BoxKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 219
    move v3, v2

    .line 220
    move-wide v4, v7

    .line 221
    move-object v2, v1

    .line 222
    .line 223
    .line 224
    :goto_d
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 225
    move-result-object v8

    .line 226
    .line 227
    if-nez v8, :cond_12

    .line 228
    goto :goto_e

    .line 229
    .line 230
    :cond_12
    new-instance v10, Landroidx/compose/material/TabRowDefaults$Indicator$1;

    .line 231
    move-object v0, v10

    .line 232
    .line 233
    move-object/from16 v1, p0

    .line 234
    .line 235
    move/from16 v6, p6

    .line 236
    .line 237
    move/from16 v7, p7

    .line 238
    .line 239
    .line 240
    invoke-direct/range {v0 .. v7}, Landroidx/compose/material/TabRowDefaults$Indicator$1;-><init>(Landroidx/compose/material/TabRowDefaults;Landroidx/compose/ui/Modifier;FJII)V

    .line 241
    .line 242
    .line 243
    invoke-interface {v8, v10}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 244
    :goto_e
    return-void
.end method

.method public final c()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/TabRowDefaults;->IndicatorHeight:F

    return v0
.end method

.method public final d()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/TabRowDefaults;->ScrollableTabRowPadding:F

    return v0
.end method

.method public final e(Landroidx/compose/ui/Modifier;Landroidx/compose/material/TabPosition;)Landroidx/compose/ui/Modifier;
    .locals 2
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/material/TabPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "currentTabPosition"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->c()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    new-instance v0, Landroidx/compose/material/TabRowDefaults$tabIndicatorOffset$$inlined$debugInspectorInfo$1;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, p2}, Landroidx/compose/material/TabRowDefaults$tabIndicatorOffset$$inlined$debugInspectorInfo$1;-><init>(Landroidx/compose/material/TabPosition;)V

    .line 22
    goto :goto_0

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->a()Le8/l;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    :goto_0
    new-instance v1, Landroidx/compose/material/TabRowDefaults$tabIndicatorOffset$2;

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, p2}, Landroidx/compose/material/TabRowDefaults$tabIndicatorOffset$2;-><init>(Landroidx/compose/material/TabPosition;)V

    .line 32
    .line 33
    .line 34
    invoke-static {p1, v0, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/ui/Modifier;Le8/l;Le8/q;)Landroidx/compose/ui/Modifier;

    .line 35
    move-result-object p1

    .line 36
    return-object p1
.end method
