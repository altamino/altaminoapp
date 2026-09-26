.class public final Landroidx/compose/material/AppBarKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppBar.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppBar.kt\nandroidx/compose/material/AppBarKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 Dp.kt\nandroidx/compose/ui/unit/Dp\n*L\n1#1,547:1\n400#1:549\n400#1:550\n400#1:551\n400#1:552\n400#1:553\n400#1:554\n76#2:548\n155#3:555\n155#3:556\n155#3:557\n155#3:559\n155#3:561\n155#3:562\n59#4:558\n59#4:560\n*S KotlinDebug\n*F\n+ 1 AppBar.kt\nandroidx/compose/material/AppBarKt\n*L\n426#1:549\n458#1:550\n459#1:551\n461#1:552\n468#1:553\n469#1:554\n224#1:548\n534#1:555\n536#1:556\n538#1:557\n541#1:559\n544#1:561\n546#1:562\n538#1:558\n541#1:560\n*E\n"
.end annotation


# static fields
.field private static final AppBarHeight:F

.field private static final AppBarHorizontalPadding:F

.field private static final BottomAppBarCutoutOffset:F

.field private static final BottomAppBarRoundedEdgeRadius:F

.field private static final TitleIconModifier:Landroidx/compose/ui/Modifier;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TitleInsetWithoutIcon:Landroidx/compose/ui/Modifier;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    .line 2
    const/16 v0, 0x38

    .line 3
    int-to-float v0, v0

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 7
    move-result v0

    .line 8
    .line 9
    sput v0, Landroidx/compose/material/AppBarKt;->AppBarHeight:F

    .line 10
    const/4 v0, 0x4

    .line 11
    int-to-float v0, v0

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 15
    move-result v1

    .line 16
    .line 17
    sput v1, Landroidx/compose/material/AppBarKt;->AppBarHorizontalPadding:F

    .line 18
    .line 19
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 20
    .line 21
    const/16 v3, 0x10

    .line 22
    int-to-float v3, v3

    .line 23
    .line 24
    .line 25
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 26
    move-result v3

    .line 27
    sub-float/2addr v3, v1

    .line 28
    .line 29
    .line 30
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 31
    move-result v3

    .line 32
    .line 33
    .line 34
    invoke-static {v2, v3}, Landroidx/compose/foundation/layout/SizeKt;->D(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 35
    move-result-object v3

    .line 36
    .line 37
    sput-object v3, Landroidx/compose/material/AppBarKt;->TitleInsetWithoutIcon:Landroidx/compose/ui/Modifier;

    .line 38
    const/4 v3, 0x1

    .line 39
    const/4 v4, 0x0

    .line 40
    const/4 v5, 0x0

    .line 41
    .line 42
    .line 43
    invoke-static {v2, v5, v3, v4}, Landroidx/compose/foundation/layout/SizeKt;->j(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 44
    move-result-object v2

    .line 45
    .line 46
    const/16 v3, 0x48

    .line 47
    int-to-float v3, v3

    .line 48
    .line 49
    .line 50
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 51
    move-result v3

    .line 52
    sub-float/2addr v3, v1

    .line 53
    .line 54
    .line 55
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 56
    move-result v1

    .line 57
    .line 58
    .line 59
    invoke-static {v2, v1}, Landroidx/compose/foundation/layout/SizeKt;->D(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 60
    move-result-object v1

    .line 61
    .line 62
    sput-object v1, Landroidx/compose/material/AppBarKt;->TitleIconModifier:Landroidx/compose/ui/Modifier;

    .line 63
    .line 64
    const/16 v1, 0x8

    .line 65
    int-to-float v1, v1

    .line 66
    .line 67
    .line 68
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 69
    move-result v1

    .line 70
    .line 71
    sput v1, Landroidx/compose/material/AppBarKt;->BottomAppBarCutoutOffset:F

    .line 72
    .line 73
    .line 74
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 75
    move-result v0

    .line 76
    .line 77
    sput v0, Landroidx/compose/material/AppBarKt;->BottomAppBarRoundedEdgeRadius:F

    .line 78
    return-void
.end method

.method private static final a(JJFLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/Modifier;Le8/q;Landroidx/compose/runtime/Composer;II)V
    .locals 24
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJF",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Landroidx/compose/ui/graphics/Shape;",
            "Landroidx/compose/ui/Modifier;",
            "Le8/q<",
            "-",
            "Landroidx/compose/foundation/layout/RowScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v6, p5

    .line 3
    .line 4
    move-object/from16 v9, p8

    .line 5
    .line 6
    move/from16 v10, p10

    .line 7
    .line 8
    .line 9
    const v0, -0x4a7c9d94

    .line 10
    .line 11
    move-object/from16 v1, p9

    .line 12
    .line 13
    .line 14
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    and-int/lit8 v1, p11, 0x1

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    or-int/lit8 v1, v10, 0x6

    .line 22
    move v3, v1

    .line 23
    .line 24
    move-wide/from16 v1, p0

    .line 25
    goto :goto_1

    .line 26
    .line 27
    :cond_0
    and-int/lit8 v1, v10, 0xe

    .line 28
    .line 29
    if-nez v1, :cond_2

    .line 30
    .line 31
    move-wide/from16 v1, p0

    .line 32
    .line 33
    .line 34
    invoke-interface {v0, v1, v2}, Landroidx/compose/runtime/Composer;->q(J)Z

    .line 35
    move-result v3

    .line 36
    .line 37
    if-eqz v3, :cond_1

    .line 38
    const/4 v3, 0x4

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v3, 0x2

    .line 41
    :goto_0
    or-int/2addr v3, v10

    .line 42
    goto :goto_1

    .line 43
    .line 44
    :cond_2
    move-wide/from16 v1, p0

    .line 45
    move v3, v10

    .line 46
    .line 47
    :goto_1
    and-int/lit8 v4, p11, 0x2

    .line 48
    .line 49
    if-eqz v4, :cond_4

    .line 50
    .line 51
    or-int/lit8 v3, v3, 0x30

    .line 52
    .line 53
    :cond_3
    move-wide/from16 v4, p2

    .line 54
    goto :goto_3

    .line 55
    .line 56
    :cond_4
    and-int/lit8 v4, v10, 0x70

    .line 57
    .line 58
    if-nez v4, :cond_3

    .line 59
    .line 60
    move-wide/from16 v4, p2

    .line 61
    .line 62
    .line 63
    invoke-interface {v0, v4, v5}, Landroidx/compose/runtime/Composer;->q(J)Z

    .line 64
    move-result v7

    .line 65
    .line 66
    if-eqz v7, :cond_5

    .line 67
    .line 68
    const/16 v7, 0x20

    .line 69
    goto :goto_2

    .line 70
    .line 71
    :cond_5
    const/16 v7, 0x10

    .line 72
    :goto_2
    or-int/2addr v3, v7

    .line 73
    .line 74
    :goto_3
    and-int/lit8 v7, p11, 0x4

    .line 75
    .line 76
    if-eqz v7, :cond_7

    .line 77
    .line 78
    or-int/lit16 v3, v3, 0x180

    .line 79
    .line 80
    :cond_6
    move/from16 v7, p4

    .line 81
    goto :goto_5

    .line 82
    .line 83
    :cond_7
    and-int/lit16 v7, v10, 0x380

    .line 84
    .line 85
    if-nez v7, :cond_6

    .line 86
    .line 87
    move/from16 v7, p4

    .line 88
    .line 89
    .line 90
    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->n(F)Z

    .line 91
    move-result v8

    .line 92
    .line 93
    if-eqz v8, :cond_8

    .line 94
    .line 95
    const/16 v8, 0x100

    .line 96
    goto :goto_4

    .line 97
    .line 98
    :cond_8
    const/16 v8, 0x80

    .line 99
    :goto_4
    or-int/2addr v3, v8

    .line 100
    .line 101
    :goto_5
    and-int/lit8 v8, p11, 0x8

    .line 102
    .line 103
    if-eqz v8, :cond_9

    .line 104
    .line 105
    or-int/lit16 v3, v3, 0xc00

    .line 106
    goto :goto_7

    .line 107
    .line 108
    :cond_9
    and-int/lit16 v8, v10, 0x1c00

    .line 109
    .line 110
    if-nez v8, :cond_b

    .line 111
    .line 112
    .line 113
    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 114
    move-result v8

    .line 115
    .line 116
    if-eqz v8, :cond_a

    .line 117
    .line 118
    const/16 v8, 0x800

    .line 119
    goto :goto_6

    .line 120
    .line 121
    :cond_a
    const/16 v8, 0x400

    .line 122
    :goto_6
    or-int/2addr v3, v8

    .line 123
    .line 124
    :cond_b
    :goto_7
    and-int/lit8 v8, p11, 0x10

    .line 125
    .line 126
    if-eqz v8, :cond_d

    .line 127
    .line 128
    or-int/lit16 v3, v3, 0x6000

    .line 129
    .line 130
    :cond_c
    move-object/from16 v8, p6

    .line 131
    goto :goto_9

    .line 132
    .line 133
    .line 134
    :cond_d
    const v8, 0xe000

    .line 135
    and-int/2addr v8, v10

    .line 136
    .line 137
    if-nez v8, :cond_c

    .line 138
    .line 139
    move-object/from16 v8, p6

    .line 140
    .line 141
    .line 142
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 143
    move-result v11

    .line 144
    .line 145
    if-eqz v11, :cond_e

    .line 146
    .line 147
    const/16 v11, 0x4000

    .line 148
    goto :goto_8

    .line 149
    .line 150
    :cond_e
    const/16 v11, 0x2000

    .line 151
    :goto_8
    or-int/2addr v3, v11

    .line 152
    .line 153
    :goto_9
    and-int/lit8 v11, p11, 0x20

    .line 154
    .line 155
    const/high16 v12, 0x70000

    .line 156
    .line 157
    if-eqz v11, :cond_10

    .line 158
    .line 159
    const/high16 v13, 0x30000

    .line 160
    or-int/2addr v3, v13

    .line 161
    .line 162
    :cond_f
    move-object/from16 v13, p7

    .line 163
    goto :goto_b

    .line 164
    .line 165
    :cond_10
    and-int v13, v10, v12

    .line 166
    .line 167
    if-nez v13, :cond_f

    .line 168
    .line 169
    move-object/from16 v13, p7

    .line 170
    .line 171
    .line 172
    invoke-interface {v0, v13}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 173
    move-result v14

    .line 174
    .line 175
    if-eqz v14, :cond_11

    .line 176
    .line 177
    const/high16 v14, 0x20000

    .line 178
    goto :goto_a

    .line 179
    .line 180
    :cond_11
    const/high16 v14, 0x10000

    .line 181
    :goto_a
    or-int/2addr v3, v14

    .line 182
    .line 183
    :goto_b
    and-int/lit8 v14, p11, 0x40

    .line 184
    .line 185
    const/high16 v15, 0x180000

    .line 186
    .line 187
    if-eqz v14, :cond_12

    .line 188
    or-int/2addr v3, v15

    .line 189
    goto :goto_d

    .line 190
    .line 191
    :cond_12
    const/high16 v14, 0x380000

    .line 192
    and-int/2addr v14, v10

    .line 193
    .line 194
    if-nez v14, :cond_14

    .line 195
    .line 196
    .line 197
    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 198
    move-result v14

    .line 199
    .line 200
    if-eqz v14, :cond_13

    .line 201
    .line 202
    const/high16 v14, 0x100000

    .line 203
    goto :goto_c

    .line 204
    .line 205
    :cond_13
    const/high16 v14, 0x80000

    .line 206
    :goto_c
    or-int/2addr v3, v14

    .line 207
    .line 208
    .line 209
    :cond_14
    :goto_d
    const v14, 0x2db6db

    .line 210
    and-int/2addr v14, v3

    .line 211
    .line 212
    .line 213
    const v12, 0x92492

    .line 214
    .line 215
    if-ne v14, v12, :cond_16

    .line 216
    .line 217
    .line 218
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->b()Z

    .line 219
    move-result v12

    .line 220
    .line 221
    if-nez v12, :cond_15

    .line 222
    goto :goto_e

    .line 223
    .line 224
    .line 225
    :cond_15
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->g()V

    .line 226
    .line 227
    move-object/from16 v23, v13

    .line 228
    goto :goto_10

    .line 229
    .line 230
    :cond_16
    :goto_e
    if-eqz v11, :cond_17

    .line 231
    .line 232
    sget-object v11, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 233
    .line 234
    move-object/from16 v23, v11

    .line 235
    goto :goto_f

    .line 236
    .line 237
    :cond_17
    move-object/from16 v23, v13

    .line 238
    .line 239
    :goto_f
    const/16 v17, 0x0

    .line 240
    .line 241
    new-instance v11, Landroidx/compose/material/AppBarKt$AppBar$1;

    .line 242
    .line 243
    .line 244
    invoke-direct {v11, v6, v9, v3}, Landroidx/compose/material/AppBarKt$AppBar$1;-><init>(Landroidx/compose/foundation/layout/PaddingValues;Le8/q;I)V

    .line 245
    .line 246
    .line 247
    const v12, -0x3d437250

    .line 248
    const/4 v13, 0x1

    .line 249
    .line 250
    .line 251
    invoke-static {v0, v12, v13, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 252
    move-result-object v19

    .line 253
    .line 254
    shr-int/lit8 v11, v3, 0xf

    .line 255
    .line 256
    and-int/lit8 v11, v11, 0xe

    .line 257
    or-int/2addr v11, v15

    .line 258
    .line 259
    shr-int/lit8 v12, v3, 0x9

    .line 260
    .line 261
    and-int/lit8 v12, v12, 0x70

    .line 262
    or-int/2addr v11, v12

    .line 263
    .line 264
    shl-int/lit8 v12, v3, 0x6

    .line 265
    .line 266
    and-int/lit16 v13, v12, 0x380

    .line 267
    or-int/2addr v11, v13

    .line 268
    .line 269
    and-int/lit16 v12, v12, 0x1c00

    .line 270
    or-int/2addr v11, v12

    .line 271
    .line 272
    shl-int/lit8 v3, v3, 0x9

    .line 273
    .line 274
    const/high16 v12, 0x70000

    .line 275
    and-int/2addr v3, v12

    .line 276
    .line 277
    or-int v21, v11, v3

    .line 278
    .line 279
    const/16 v22, 0x10

    .line 280
    .line 281
    move-object/from16 v11, v23

    .line 282
    .line 283
    move-object/from16 v12, p6

    .line 284
    .line 285
    move-wide/from16 v13, p0

    .line 286
    .line 287
    move-wide/from16 v15, p2

    .line 288
    .line 289
    move/from16 v18, p4

    .line 290
    .line 291
    move-object/from16 v20, v0

    .line 292
    .line 293
    .line 294
    invoke-static/range {v11 .. v22}, Landroidx/compose/material/SurfaceKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLe8/p;Landroidx/compose/runtime/Composer;II)V

    .line 295
    .line 296
    .line 297
    :goto_10
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 298
    move-result-object v12

    .line 299
    .line 300
    if-nez v12, :cond_18

    .line 301
    goto :goto_11

    .line 302
    .line 303
    :cond_18
    new-instance v13, Landroidx/compose/material/AppBarKt$AppBar$2;

    .line 304
    move-object v0, v13

    .line 305
    .line 306
    move-wide/from16 v1, p0

    .line 307
    .line 308
    move-wide/from16 v3, p2

    .line 309
    .line 310
    move/from16 v5, p4

    .line 311
    .line 312
    move-object/from16 v6, p5

    .line 313
    .line 314
    move-object/from16 v7, p6

    .line 315
    .line 316
    move-object/from16 v8, v23

    .line 317
    .line 318
    move-object/from16 v9, p8

    .line 319
    .line 320
    move/from16 v10, p10

    .line 321
    .line 322
    move/from16 v11, p11

    .line 323
    .line 324
    .line 325
    invoke-direct/range {v0 .. v11}, Landroidx/compose/material/AppBarKt$AppBar$2;-><init>(JJFLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/Modifier;Le8/q;II)V

    .line 326
    .line 327
    .line 328
    invoke-interface {v12, v13}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 329
    :goto_11
    return-void
.end method

.method public static final b(Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/graphics/Shape;FLandroidx/compose/foundation/layout/PaddingValues;Le8/q;Landroidx/compose/runtime/Composer;II)V
    .locals 24
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/ui/graphics/Shape;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Landroidx/compose/foundation/layout/PaddingValues;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Le8/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "JJ",
            "Landroidx/compose/ui/graphics/Shape;",
            "F",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Le8/q<",
            "-",
            "Landroidx/compose/foundation/layout/RowScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v12, p8

    .line 3
    .line 4
    move/from16 v13, p10

    .line 5
    .line 6
    const-string v0, "content"

    .line 7
    .line 8
    .line 9
    invoke-static {v12, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const v0, -0x6276bdad

    .line 13
    .line 14
    move-object/from16 v1, p9

    .line 15
    .line 16
    .line 17
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 18
    move-result-object v14

    .line 19
    .line 20
    and-int/lit8 v0, p11, 0x1

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    or-int/lit8 v1, v13, 0x6

    .line 25
    move v2, v1

    .line 26
    .line 27
    move-object/from16 v1, p0

    .line 28
    goto :goto_1

    .line 29
    .line 30
    :cond_0
    and-int/lit8 v1, v13, 0xe

    .line 31
    .line 32
    if-nez v1, :cond_2

    .line 33
    .line 34
    move-object/from16 v1, p0

    .line 35
    .line 36
    .line 37
    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 38
    move-result v2

    .line 39
    .line 40
    if-eqz v2, :cond_1

    .line 41
    const/4 v2, 0x4

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 v2, 0x2

    .line 44
    :goto_0
    or-int/2addr v2, v13

    .line 45
    goto :goto_1

    .line 46
    .line 47
    :cond_2
    move-object/from16 v1, p0

    .line 48
    move v2, v13

    .line 49
    .line 50
    :goto_1
    and-int/lit8 v3, v13, 0x70

    .line 51
    .line 52
    if-nez v3, :cond_5

    .line 53
    .line 54
    and-int/lit8 v3, p11, 0x2

    .line 55
    .line 56
    if-nez v3, :cond_3

    .line 57
    .line 58
    move-wide/from16 v3, p1

    .line 59
    .line 60
    .line 61
    invoke-interface {v14, v3, v4}, Landroidx/compose/runtime/Composer;->q(J)Z

    .line 62
    move-result v5

    .line 63
    .line 64
    if-eqz v5, :cond_4

    .line 65
    .line 66
    const/16 v5, 0x20

    .line 67
    goto :goto_2

    .line 68
    .line 69
    :cond_3
    move-wide/from16 v3, p1

    .line 70
    .line 71
    :cond_4
    const/16 v5, 0x10

    .line 72
    :goto_2
    or-int/2addr v2, v5

    .line 73
    goto :goto_3

    .line 74
    .line 75
    :cond_5
    move-wide/from16 v3, p1

    .line 76
    .line 77
    :goto_3
    and-int/lit16 v5, v13, 0x380

    .line 78
    .line 79
    if-nez v5, :cond_8

    .line 80
    .line 81
    and-int/lit8 v5, p11, 0x4

    .line 82
    .line 83
    if-nez v5, :cond_6

    .line 84
    .line 85
    move-wide/from16 v5, p3

    .line 86
    .line 87
    .line 88
    invoke-interface {v14, v5, v6}, Landroidx/compose/runtime/Composer;->q(J)Z

    .line 89
    move-result v7

    .line 90
    .line 91
    if-eqz v7, :cond_7

    .line 92
    .line 93
    const/16 v7, 0x100

    .line 94
    goto :goto_4

    .line 95
    .line 96
    :cond_6
    move-wide/from16 v5, p3

    .line 97
    .line 98
    :cond_7
    const/16 v7, 0x80

    .line 99
    :goto_4
    or-int/2addr v2, v7

    .line 100
    goto :goto_5

    .line 101
    .line 102
    :cond_8
    move-wide/from16 v5, p3

    .line 103
    .line 104
    :goto_5
    and-int/lit8 v7, p11, 0x8

    .line 105
    .line 106
    if-eqz v7, :cond_a

    .line 107
    .line 108
    or-int/lit16 v2, v2, 0xc00

    .line 109
    .line 110
    :cond_9
    move-object/from16 v8, p5

    .line 111
    goto :goto_7

    .line 112
    .line 113
    :cond_a
    and-int/lit16 v8, v13, 0x1c00

    .line 114
    .line 115
    if-nez v8, :cond_9

    .line 116
    .line 117
    move-object/from16 v8, p5

    .line 118
    .line 119
    .line 120
    invoke-interface {v14, v8}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 121
    move-result v9

    .line 122
    .line 123
    if-eqz v9, :cond_b

    .line 124
    .line 125
    const/16 v9, 0x800

    .line 126
    goto :goto_6

    .line 127
    .line 128
    :cond_b
    const/16 v9, 0x400

    .line 129
    :goto_6
    or-int/2addr v2, v9

    .line 130
    .line 131
    :goto_7
    and-int/lit8 v9, p11, 0x10

    .line 132
    .line 133
    if-eqz v9, :cond_d

    .line 134
    .line 135
    or-int/lit16 v2, v2, 0x6000

    .line 136
    .line 137
    :cond_c
    move/from16 v10, p6

    .line 138
    goto :goto_9

    .line 139
    .line 140
    .line 141
    :cond_d
    const v10, 0xe000

    .line 142
    and-int/2addr v10, v13

    .line 143
    .line 144
    if-nez v10, :cond_c

    .line 145
    .line 146
    move/from16 v10, p6

    .line 147
    .line 148
    .line 149
    invoke-interface {v14, v10}, Landroidx/compose/runtime/Composer;->n(F)Z

    .line 150
    move-result v11

    .line 151
    .line 152
    if-eqz v11, :cond_e

    .line 153
    .line 154
    const/16 v11, 0x4000

    .line 155
    goto :goto_8

    .line 156
    .line 157
    :cond_e
    const/16 v11, 0x2000

    .line 158
    :goto_8
    or-int/2addr v2, v11

    .line 159
    .line 160
    :goto_9
    and-int/lit8 v11, p11, 0x20

    .line 161
    .line 162
    const/high16 v15, 0x70000

    .line 163
    .line 164
    if-eqz v11, :cond_f

    .line 165
    .line 166
    const/high16 v16, 0x30000

    .line 167
    .line 168
    or-int v2, v2, v16

    .line 169
    .line 170
    move-object/from16 v15, p7

    .line 171
    goto :goto_b

    .line 172
    .line 173
    :cond_f
    and-int v16, v13, v15

    .line 174
    .line 175
    move-object/from16 v15, p7

    .line 176
    .line 177
    if-nez v16, :cond_11

    .line 178
    .line 179
    .line 180
    invoke-interface {v14, v15}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 181
    move-result v16

    .line 182
    .line 183
    if-eqz v16, :cond_10

    .line 184
    .line 185
    const/high16 v16, 0x20000

    .line 186
    goto :goto_a

    .line 187
    .line 188
    :cond_10
    const/high16 v16, 0x10000

    .line 189
    .line 190
    :goto_a
    or-int v2, v2, v16

    .line 191
    .line 192
    :cond_11
    :goto_b
    and-int/lit8 v16, p11, 0x40

    .line 193
    .line 194
    const/high16 v17, 0x380000

    .line 195
    .line 196
    if-eqz v16, :cond_12

    .line 197
    .line 198
    const/high16 v16, 0x180000

    .line 199
    .line 200
    :goto_c
    or-int v2, v2, v16

    .line 201
    goto :goto_d

    .line 202
    .line 203
    :cond_12
    and-int v16, v13, v17

    .line 204
    .line 205
    if-nez v16, :cond_14

    .line 206
    .line 207
    .line 208
    invoke-interface {v14, v12}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 209
    move-result v16

    .line 210
    .line 211
    if-eqz v16, :cond_13

    .line 212
    .line 213
    const/high16 v16, 0x100000

    .line 214
    goto :goto_c

    .line 215
    .line 216
    :cond_13
    const/high16 v16, 0x80000

    .line 217
    goto :goto_c

    .line 218
    .line 219
    .line 220
    :cond_14
    :goto_d
    const v16, 0x2db6db

    .line 221
    .line 222
    and-int v1, v2, v16

    .line 223
    .line 224
    .line 225
    const v3, 0x92492

    .line 226
    .line 227
    if-ne v1, v3, :cond_16

    .line 228
    .line 229
    .line 230
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->b()Z

    .line 231
    move-result v1

    .line 232
    .line 233
    if-nez v1, :cond_15

    .line 234
    goto :goto_e

    .line 235
    .line 236
    .line 237
    :cond_15
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->g()V

    .line 238
    .line 239
    move-object/from16 v1, p0

    .line 240
    .line 241
    move-wide/from16 v2, p1

    .line 242
    move-wide v4, v5

    .line 243
    move-object v6, v8

    .line 244
    move v7, v10

    .line 245
    move-object v8, v15

    .line 246
    .line 247
    goto/16 :goto_14

    .line 248
    .line 249
    .line 250
    :cond_16
    :goto_e
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->J()V

    .line 251
    .line 252
    and-int/lit8 v1, v13, 0x1

    .line 253
    .line 254
    if-eqz v1, :cond_1a

    .line 255
    .line 256
    .line 257
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->h()Z

    .line 258
    move-result v1

    .line 259
    .line 260
    if-eqz v1, :cond_17

    .line 261
    goto :goto_f

    .line 262
    .line 263
    .line 264
    :cond_17
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->g()V

    .line 265
    .line 266
    and-int/lit8 v0, p11, 0x2

    .line 267
    .line 268
    if-eqz v0, :cond_18

    .line 269
    .line 270
    and-int/lit8 v2, v2, -0x71

    .line 271
    .line 272
    :cond_18
    and-int/lit8 v0, p11, 0x4

    .line 273
    .line 274
    if-eqz v0, :cond_19

    .line 275
    .line 276
    and-int/lit16 v2, v2, -0x381

    .line 277
    .line 278
    :cond_19
    move-wide/from16 v18, p1

    .line 279
    .line 280
    move-wide/from16 v20, v5

    .line 281
    move-object v11, v8

    .line 282
    .line 283
    move/from16 v16, v10

    .line 284
    .line 285
    move-object/from16 v22, v15

    .line 286
    .line 287
    move-object/from16 v15, p0

    .line 288
    goto :goto_12

    .line 289
    .line 290
    :cond_1a
    :goto_f
    if-eqz v0, :cond_1b

    .line 291
    .line 292
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 293
    goto :goto_10

    .line 294
    .line 295
    :cond_1b
    move-object/from16 v0, p0

    .line 296
    .line 297
    :goto_10
    and-int/lit8 v1, p11, 0x2

    .line 298
    .line 299
    if-eqz v1, :cond_1c

    .line 300
    .line 301
    sget-object v1, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 302
    const/4 v3, 0x6

    .line 303
    .line 304
    .line 305
    invoke-virtual {v1, v14, v3}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 306
    move-result-object v1

    .line 307
    .line 308
    .line 309
    invoke-static {v1}, Landroidx/compose/material/ColorsKt;->f(Landroidx/compose/material/Colors;)J

    .line 310
    move-result-wide v3

    .line 311
    .line 312
    and-int/lit8 v2, v2, -0x71

    .line 313
    goto :goto_11

    .line 314
    .line 315
    :cond_1c
    move-wide/from16 v3, p1

    .line 316
    .line 317
    :goto_11
    and-int/lit8 v1, p11, 0x4

    .line 318
    .line 319
    if-eqz v1, :cond_1d

    .line 320
    .line 321
    shr-int/lit8 v1, v2, 0x3

    .line 322
    .line 323
    and-int/lit8 v1, v1, 0xe

    .line 324
    .line 325
    .line 326
    invoke-static {v3, v4, v14, v1}, Landroidx/compose/material/ColorsKt;->b(JLandroidx/compose/runtime/Composer;I)J

    .line 327
    move-result-wide v5

    .line 328
    .line 329
    and-int/lit16 v1, v2, -0x381

    .line 330
    move v2, v1

    .line 331
    .line 332
    :cond_1d
    if-eqz v7, :cond_1e

    .line 333
    const/4 v1, 0x0

    .line 334
    move-object v8, v1

    .line 335
    .line 336
    :cond_1e
    if-eqz v9, :cond_1f

    .line 337
    .line 338
    sget-object v1, Landroidx/compose/material/AppBarDefaults;->INSTANCE:Landroidx/compose/material/AppBarDefaults;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v1}, Landroidx/compose/material/AppBarDefaults;->a()F

    .line 342
    move-result v1

    .line 343
    move v10, v1

    .line 344
    .line 345
    :cond_1f
    if-eqz v11, :cond_20

    .line 346
    .line 347
    sget-object v1, Landroidx/compose/material/AppBarDefaults;->INSTANCE:Landroidx/compose/material/AppBarDefaults;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v1}, Landroidx/compose/material/AppBarDefaults;->b()Landroidx/compose/foundation/layout/PaddingValues;

    .line 351
    move-result-object v1

    .line 352
    move-object v15, v0

    .line 353
    .line 354
    move-object/from16 v22, v1

    .line 355
    .line 356
    move-wide/from16 v18, v3

    .line 357
    .line 358
    move-wide/from16 v20, v5

    .line 359
    move-object v11, v8

    .line 360
    .line 361
    move/from16 v16, v10

    .line 362
    goto :goto_12

    .line 363
    .line 364
    :cond_20
    move-wide/from16 v18, v3

    .line 365
    .line 366
    move-wide/from16 v20, v5

    .line 367
    move-object v11, v8

    .line 368
    .line 369
    move/from16 v16, v10

    .line 370
    .line 371
    move-object/from16 v22, v15

    .line 372
    move-object v15, v0

    .line 373
    .line 374
    .line 375
    :goto_12
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->A()V

    .line 376
    .line 377
    .line 378
    invoke-static {}, Landroidx/compose/material/ScaffoldKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 379
    move-result-object v0

    .line 380
    .line 381
    .line 382
    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 383
    move-result-object v0

    .line 384
    .line 385
    check-cast v0, Landroidx/compose/material/FabPlacement;

    .line 386
    .line 387
    if-eqz v11, :cond_21

    .line 388
    .line 389
    if-eqz v0, :cond_21

    .line 390
    .line 391
    .line 392
    invoke-virtual {v0}, Landroidx/compose/material/FabPlacement;->d()Z

    .line 393
    move-result v1

    .line 394
    const/4 v3, 0x1

    .line 395
    .line 396
    if-ne v1, v3, :cond_21

    .line 397
    .line 398
    new-instance v1, Landroidx/compose/material/BottomAppBarCutoutShape;

    .line 399
    .line 400
    .line 401
    invoke-direct {v1, v11, v0}, Landroidx/compose/material/BottomAppBarCutoutShape;-><init>(Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material/FabPlacement;)V

    .line 402
    move-object v6, v1

    .line 403
    goto :goto_13

    .line 404
    .line 405
    .line 406
    :cond_21
    invoke-static {}, Landroidx/compose/ui/graphics/RectangleShapeKt;->a()Landroidx/compose/ui/graphics/Shape;

    .line 407
    move-result-object v0

    .line 408
    move-object v6, v0

    .line 409
    .line 410
    :goto_13
    shr-int/lit8 v0, v2, 0x3

    .line 411
    .line 412
    and-int/lit8 v1, v0, 0xe

    .line 413
    .line 414
    and-int/lit8 v0, v0, 0x70

    .line 415
    or-int/2addr v0, v1

    .line 416
    .line 417
    shr-int/lit8 v1, v2, 0x6

    .line 418
    .line 419
    and-int/lit16 v3, v1, 0x380

    .line 420
    or-int/2addr v0, v3

    .line 421
    .line 422
    and-int/lit16 v1, v1, 0x1c00

    .line 423
    or-int/2addr v0, v1

    .line 424
    .line 425
    shl-int/lit8 v1, v2, 0xf

    .line 426
    .line 427
    const/high16 v3, 0x70000

    .line 428
    and-int/2addr v1, v3

    .line 429
    or-int/2addr v0, v1

    .line 430
    .line 431
    and-int v1, v2, v17

    .line 432
    .line 433
    or-int v10, v0, v1

    .line 434
    .line 435
    const/16 v17, 0x0

    .line 436
    .line 437
    move-wide/from16 v0, v18

    .line 438
    .line 439
    move-wide/from16 v2, v20

    .line 440
    .line 441
    move/from16 v4, v16

    .line 442
    .line 443
    move-object/from16 v5, v22

    .line 444
    move-object v7, v15

    .line 445
    .line 446
    move-object/from16 v8, p8

    .line 447
    move-object v9, v14

    .line 448
    .line 449
    move-object/from16 v23, v11

    .line 450
    .line 451
    move/from16 v11, v17

    .line 452
    .line 453
    .line 454
    invoke-static/range {v0 .. v11}, Landroidx/compose/material/AppBarKt;->a(JJFLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/Modifier;Le8/q;Landroidx/compose/runtime/Composer;II)V

    .line 455
    move-object v1, v15

    .line 456
    .line 457
    move/from16 v7, v16

    .line 458
    .line 459
    move-wide/from16 v2, v18

    .line 460
    .line 461
    move-wide/from16 v4, v20

    .line 462
    .line 463
    move-object/from16 v8, v22

    .line 464
    .line 465
    move-object/from16 v6, v23

    .line 466
    .line 467
    .line 468
    :goto_14
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 469
    move-result-object v14

    .line 470
    .line 471
    if-nez v14, :cond_22

    .line 472
    goto :goto_15

    .line 473
    .line 474
    :cond_22
    new-instance v15, Landroidx/compose/material/AppBarKt$BottomAppBar$1;

    .line 475
    move-object v0, v15

    .line 476
    .line 477
    move-object/from16 v9, p8

    .line 478
    .line 479
    move/from16 v10, p10

    .line 480
    .line 481
    move/from16 v11, p11

    .line 482
    .line 483
    .line 484
    invoke-direct/range {v0 .. v11}, Landroidx/compose/material/AppBarKt$BottomAppBar$1;-><init>(Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/graphics/Shape;FLandroidx/compose/foundation/layout/PaddingValues;Le8/q;II)V

    .line 485
    .line 486
    .line 487
    invoke-interface {v14, v15}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 488
    :goto_15
    return-void
.end method

.method public static final c(Landroidx/compose/ui/Modifier;JJFLandroidx/compose/foundation/layout/PaddingValues;Le8/q;Landroidx/compose/runtime/Composer;II)V
    .locals 22
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Landroidx/compose/foundation/layout/PaddingValues;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Le8/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "JJF",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Le8/q<",
            "-",
            "Landroidx/compose/foundation/layout/RowScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v12, p7

    .line 3
    .line 4
    move/from16 v13, p9

    .line 5
    .line 6
    const-string v0, "content"

    .line 7
    .line 8
    .line 9
    invoke-static {v12, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const v0, 0x7112d116

    .line 13
    .line 14
    move-object/from16 v1, p8

    .line 15
    .line 16
    .line 17
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 18
    move-result-object v14

    .line 19
    .line 20
    and-int/lit8 v0, p10, 0x1

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    or-int/lit8 v1, v13, 0x6

    .line 25
    move v2, v1

    .line 26
    .line 27
    move-object/from16 v1, p0

    .line 28
    goto :goto_1

    .line 29
    .line 30
    :cond_0
    and-int/lit8 v1, v13, 0xe

    .line 31
    .line 32
    if-nez v1, :cond_2

    .line 33
    .line 34
    move-object/from16 v1, p0

    .line 35
    .line 36
    .line 37
    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 38
    move-result v2

    .line 39
    .line 40
    if-eqz v2, :cond_1

    .line 41
    const/4 v2, 0x4

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 v2, 0x2

    .line 44
    :goto_0
    or-int/2addr v2, v13

    .line 45
    goto :goto_1

    .line 46
    .line 47
    :cond_2
    move-object/from16 v1, p0

    .line 48
    move v2, v13

    .line 49
    .line 50
    :goto_1
    and-int/lit8 v3, v13, 0x70

    .line 51
    .line 52
    if-nez v3, :cond_5

    .line 53
    .line 54
    and-int/lit8 v3, p10, 0x2

    .line 55
    .line 56
    if-nez v3, :cond_3

    .line 57
    .line 58
    move-wide/from16 v3, p1

    .line 59
    .line 60
    .line 61
    invoke-interface {v14, v3, v4}, Landroidx/compose/runtime/Composer;->q(J)Z

    .line 62
    move-result v5

    .line 63
    .line 64
    if-eqz v5, :cond_4

    .line 65
    .line 66
    const/16 v5, 0x20

    .line 67
    goto :goto_2

    .line 68
    .line 69
    :cond_3
    move-wide/from16 v3, p1

    .line 70
    .line 71
    :cond_4
    const/16 v5, 0x10

    .line 72
    :goto_2
    or-int/2addr v2, v5

    .line 73
    goto :goto_3

    .line 74
    .line 75
    :cond_5
    move-wide/from16 v3, p1

    .line 76
    .line 77
    :goto_3
    and-int/lit16 v5, v13, 0x380

    .line 78
    .line 79
    if-nez v5, :cond_8

    .line 80
    .line 81
    and-int/lit8 v5, p10, 0x4

    .line 82
    .line 83
    if-nez v5, :cond_6

    .line 84
    .line 85
    move-wide/from16 v5, p3

    .line 86
    .line 87
    .line 88
    invoke-interface {v14, v5, v6}, Landroidx/compose/runtime/Composer;->q(J)Z

    .line 89
    move-result v7

    .line 90
    .line 91
    if-eqz v7, :cond_7

    .line 92
    .line 93
    const/16 v7, 0x100

    .line 94
    goto :goto_4

    .line 95
    .line 96
    :cond_6
    move-wide/from16 v5, p3

    .line 97
    .line 98
    :cond_7
    const/16 v7, 0x80

    .line 99
    :goto_4
    or-int/2addr v2, v7

    .line 100
    goto :goto_5

    .line 101
    .line 102
    :cond_8
    move-wide/from16 v5, p3

    .line 103
    .line 104
    :goto_5
    and-int/lit8 v7, p10, 0x8

    .line 105
    .line 106
    if-eqz v7, :cond_a

    .line 107
    .line 108
    or-int/lit16 v2, v2, 0xc00

    .line 109
    .line 110
    :cond_9
    move/from16 v8, p5

    .line 111
    goto :goto_7

    .line 112
    .line 113
    :cond_a
    and-int/lit16 v8, v13, 0x1c00

    .line 114
    .line 115
    if-nez v8, :cond_9

    .line 116
    .line 117
    move/from16 v8, p5

    .line 118
    .line 119
    .line 120
    invoke-interface {v14, v8}, Landroidx/compose/runtime/Composer;->n(F)Z

    .line 121
    move-result v9

    .line 122
    .line 123
    if-eqz v9, :cond_b

    .line 124
    .line 125
    const/16 v9, 0x800

    .line 126
    goto :goto_6

    .line 127
    .line 128
    :cond_b
    const/16 v9, 0x400

    .line 129
    :goto_6
    or-int/2addr v2, v9

    .line 130
    .line 131
    :goto_7
    and-int/lit8 v9, p10, 0x10

    .line 132
    .line 133
    if-eqz v9, :cond_d

    .line 134
    .line 135
    or-int/lit16 v2, v2, 0x6000

    .line 136
    .line 137
    :cond_c
    move-object/from16 v10, p6

    .line 138
    goto :goto_9

    .line 139
    .line 140
    .line 141
    :cond_d
    const v10, 0xe000

    .line 142
    and-int/2addr v10, v13

    .line 143
    .line 144
    if-nez v10, :cond_c

    .line 145
    .line 146
    move-object/from16 v10, p6

    .line 147
    .line 148
    .line 149
    invoke-interface {v14, v10}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 150
    move-result v11

    .line 151
    .line 152
    if-eqz v11, :cond_e

    .line 153
    .line 154
    const/16 v11, 0x4000

    .line 155
    goto :goto_8

    .line 156
    .line 157
    :cond_e
    const/16 v11, 0x2000

    .line 158
    :goto_8
    or-int/2addr v2, v11

    .line 159
    .line 160
    :goto_9
    and-int/lit8 v11, p10, 0x20

    .line 161
    .line 162
    const/high16 v15, 0x70000

    .line 163
    .line 164
    if-eqz v11, :cond_f

    .line 165
    .line 166
    const/high16 v11, 0x30000

    .line 167
    :goto_a
    or-int/2addr v2, v11

    .line 168
    goto :goto_b

    .line 169
    .line 170
    :cond_f
    and-int v11, v13, v15

    .line 171
    .line 172
    if-nez v11, :cond_11

    .line 173
    .line 174
    .line 175
    invoke-interface {v14, v12}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 176
    move-result v11

    .line 177
    .line 178
    if-eqz v11, :cond_10

    .line 179
    .line 180
    const/high16 v11, 0x20000

    .line 181
    goto :goto_a

    .line 182
    .line 183
    :cond_10
    const/high16 v11, 0x10000

    .line 184
    goto :goto_a

    .line 185
    .line 186
    .line 187
    :cond_11
    :goto_b
    const v11, 0x5b6db

    .line 188
    and-int/2addr v11, v2

    .line 189
    .line 190
    .line 191
    const v15, 0x12492

    .line 192
    .line 193
    if-ne v11, v15, :cond_13

    .line 194
    .line 195
    .line 196
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->b()Z

    .line 197
    move-result v11

    .line 198
    .line 199
    if-nez v11, :cond_12

    .line 200
    goto :goto_c

    .line 201
    .line 202
    .line 203
    :cond_12
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->g()V

    .line 204
    move-wide v2, v3

    .line 205
    move-wide v4, v5

    .line 206
    move v6, v8

    .line 207
    move-object v7, v10

    .line 208
    .line 209
    goto/16 :goto_11

    .line 210
    .line 211
    .line 212
    :cond_13
    :goto_c
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->J()V

    .line 213
    .line 214
    and-int/lit8 v11, v13, 0x1

    .line 215
    .line 216
    if-eqz v11, :cond_17

    .line 217
    .line 218
    .line 219
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->h()Z

    .line 220
    move-result v11

    .line 221
    .line 222
    if-eqz v11, :cond_14

    .line 223
    goto :goto_e

    .line 224
    .line 225
    .line 226
    :cond_14
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->g()V

    .line 227
    .line 228
    and-int/lit8 v0, p10, 0x2

    .line 229
    .line 230
    if-eqz v0, :cond_15

    .line 231
    .line 232
    and-int/lit8 v2, v2, -0x71

    .line 233
    .line 234
    :cond_15
    and-int/lit8 v0, p10, 0x4

    .line 235
    .line 236
    if-eqz v0, :cond_16

    .line 237
    .line 238
    and-int/lit16 v2, v2, -0x381

    .line 239
    :cond_16
    move-object v15, v1

    .line 240
    .line 241
    :goto_d
    move-wide/from16 v16, v3

    .line 242
    .line 243
    move-wide/from16 v18, v5

    .line 244
    .line 245
    move/from16 v20, v8

    .line 246
    .line 247
    move-object/from16 v21, v10

    .line 248
    goto :goto_10

    .line 249
    .line 250
    :cond_17
    :goto_e
    if-eqz v0, :cond_18

    .line 251
    .line 252
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 253
    goto :goto_f

    .line 254
    :cond_18
    move-object v0, v1

    .line 255
    .line 256
    :goto_f
    and-int/lit8 v1, p10, 0x2

    .line 257
    .line 258
    if-eqz v1, :cond_19

    .line 259
    .line 260
    sget-object v1, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 261
    const/4 v3, 0x6

    .line 262
    .line 263
    .line 264
    invoke-virtual {v1, v14, v3}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 265
    move-result-object v1

    .line 266
    .line 267
    .line 268
    invoke-static {v1}, Landroidx/compose/material/ColorsKt;->f(Landroidx/compose/material/Colors;)J

    .line 269
    move-result-wide v3

    .line 270
    .line 271
    and-int/lit8 v2, v2, -0x71

    .line 272
    .line 273
    :cond_19
    and-int/lit8 v1, p10, 0x4

    .line 274
    .line 275
    if-eqz v1, :cond_1a

    .line 276
    .line 277
    shr-int/lit8 v1, v2, 0x3

    .line 278
    .line 279
    and-int/lit8 v1, v1, 0xe

    .line 280
    .line 281
    .line 282
    invoke-static {v3, v4, v14, v1}, Landroidx/compose/material/ColorsKt;->b(JLandroidx/compose/runtime/Composer;I)J

    .line 283
    move-result-wide v5

    .line 284
    .line 285
    and-int/lit16 v1, v2, -0x381

    .line 286
    move v2, v1

    .line 287
    .line 288
    :cond_1a
    if-eqz v7, :cond_1b

    .line 289
    .line 290
    sget-object v1, Landroidx/compose/material/AppBarDefaults;->INSTANCE:Landroidx/compose/material/AppBarDefaults;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v1}, Landroidx/compose/material/AppBarDefaults;->c()F

    .line 294
    move-result v1

    .line 295
    move v8, v1

    .line 296
    .line 297
    :cond_1b
    if-eqz v9, :cond_1c

    .line 298
    .line 299
    sget-object v1, Landroidx/compose/material/AppBarDefaults;->INSTANCE:Landroidx/compose/material/AppBarDefaults;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v1}, Landroidx/compose/material/AppBarDefaults;->b()Landroidx/compose/foundation/layout/PaddingValues;

    .line 303
    move-result-object v1

    .line 304
    move-object v15, v0

    .line 305
    .line 306
    move-object/from16 v21, v1

    .line 307
    .line 308
    move-wide/from16 v16, v3

    .line 309
    .line 310
    move-wide/from16 v18, v5

    .line 311
    .line 312
    move/from16 v20, v8

    .line 313
    goto :goto_10

    .line 314
    :cond_1c
    move-object v15, v0

    .line 315
    goto :goto_d

    .line 316
    .line 317
    .line 318
    :goto_10
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->A()V

    .line 319
    .line 320
    .line 321
    invoke-static {}, Landroidx/compose/ui/graphics/RectangleShapeKt;->a()Landroidx/compose/ui/graphics/Shape;

    .line 322
    move-result-object v6

    .line 323
    .line 324
    shr-int/lit8 v0, v2, 0x3

    .line 325
    .line 326
    and-int/lit8 v1, v0, 0xe

    .line 327
    .line 328
    or-int/lit16 v1, v1, 0x6000

    .line 329
    .line 330
    and-int/lit8 v3, v0, 0x70

    .line 331
    or-int/2addr v1, v3

    .line 332
    .line 333
    and-int/lit16 v3, v0, 0x380

    .line 334
    or-int/2addr v1, v3

    .line 335
    .line 336
    and-int/lit16 v0, v0, 0x1c00

    .line 337
    or-int/2addr v0, v1

    .line 338
    .line 339
    shl-int/lit8 v1, v2, 0xf

    .line 340
    .line 341
    const/high16 v3, 0x70000

    .line 342
    and-int/2addr v1, v3

    .line 343
    or-int/2addr v0, v1

    .line 344
    .line 345
    const/high16 v1, 0x380000

    .line 346
    .line 347
    shl-int/lit8 v2, v2, 0x3

    .line 348
    and-int/2addr v1, v2

    .line 349
    .line 350
    or-int v10, v0, v1

    .line 351
    const/4 v11, 0x0

    .line 352
    .line 353
    move-wide/from16 v0, v16

    .line 354
    .line 355
    move-wide/from16 v2, v18

    .line 356
    .line 357
    move/from16 v4, v20

    .line 358
    .line 359
    move-object/from16 v5, v21

    .line 360
    move-object v7, v15

    .line 361
    .line 362
    move-object/from16 v8, p7

    .line 363
    move-object v9, v14

    .line 364
    .line 365
    .line 366
    invoke-static/range {v0 .. v11}, Landroidx/compose/material/AppBarKt;->a(JJFLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/Modifier;Le8/q;Landroidx/compose/runtime/Composer;II)V

    .line 367
    move-object v1, v15

    .line 368
    .line 369
    move-wide/from16 v2, v16

    .line 370
    .line 371
    move-wide/from16 v4, v18

    .line 372
    .line 373
    move/from16 v6, v20

    .line 374
    .line 375
    move-object/from16 v7, v21

    .line 376
    .line 377
    .line 378
    :goto_11
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 379
    move-result-object v11

    .line 380
    .line 381
    if-nez v11, :cond_1d

    .line 382
    goto :goto_12

    .line 383
    .line 384
    :cond_1d
    new-instance v14, Landroidx/compose/material/AppBarKt$TopAppBar$3;

    .line 385
    move-object v0, v14

    .line 386
    .line 387
    move-object/from16 v8, p7

    .line 388
    .line 389
    move/from16 v9, p9

    .line 390
    .line 391
    move/from16 v10, p10

    .line 392
    .line 393
    .line 394
    invoke-direct/range {v0 .. v10}, Landroidx/compose/material/AppBarKt$TopAppBar$3;-><init>(Landroidx/compose/ui/Modifier;JJFLandroidx/compose/foundation/layout/PaddingValues;Le8/q;II)V

    .line 395
    .line 396
    .line 397
    invoke-interface {v11, v14}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 398
    :goto_12
    return-void
.end method

.method public static final d(Le8/p;Landroidx/compose/ui/Modifier;Le8/p;Le8/q;JJFLandroidx/compose/runtime/Composer;II)V
    .locals 25
    .param p0    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Le8/q;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Le8/q<",
            "-",
            "Landroidx/compose/foundation/layout/RowScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;JJF",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v1, p0

    .line 3
    .line 4
    move/from16 v10, p10

    .line 5
    .line 6
    const-string v0, "title"

    .line 7
    .line 8
    .line 9
    invoke-static {v1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const v0, -0x7c70822b

    .line 13
    .line 14
    move-object/from16 v2, p9

    .line 15
    .line 16
    .line 17
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    and-int/lit8 v2, p11, 0x1

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    or-int/lit8 v2, v10, 0x6

    .line 25
    goto :goto_1

    .line 26
    .line 27
    :cond_0
    and-int/lit8 v2, v10, 0xe

    .line 28
    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 33
    move-result v2

    .line 34
    .line 35
    if-eqz v2, :cond_1

    .line 36
    const/4 v2, 0x4

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 v2, 0x2

    .line 39
    :goto_0
    or-int/2addr v2, v10

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    move v2, v10

    .line 42
    .line 43
    :goto_1
    and-int/lit8 v3, p11, 0x2

    .line 44
    .line 45
    if-eqz v3, :cond_4

    .line 46
    .line 47
    or-int/lit8 v2, v2, 0x30

    .line 48
    .line 49
    :cond_3
    move-object/from16 v4, p1

    .line 50
    goto :goto_3

    .line 51
    .line 52
    :cond_4
    and-int/lit8 v4, v10, 0x70

    .line 53
    .line 54
    if-nez v4, :cond_3

    .line 55
    .line 56
    move-object/from16 v4, p1

    .line 57
    .line 58
    .line 59
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 60
    move-result v5

    .line 61
    .line 62
    if-eqz v5, :cond_5

    .line 63
    .line 64
    const/16 v5, 0x20

    .line 65
    goto :goto_2

    .line 66
    .line 67
    :cond_5
    const/16 v5, 0x10

    .line 68
    :goto_2
    or-int/2addr v2, v5

    .line 69
    .line 70
    :goto_3
    and-int/lit8 v5, p11, 0x4

    .line 71
    .line 72
    if-eqz v5, :cond_7

    .line 73
    .line 74
    or-int/lit16 v2, v2, 0x180

    .line 75
    .line 76
    :cond_6
    move-object/from16 v6, p2

    .line 77
    goto :goto_5

    .line 78
    .line 79
    :cond_7
    and-int/lit16 v6, v10, 0x380

    .line 80
    .line 81
    if-nez v6, :cond_6

    .line 82
    .line 83
    move-object/from16 v6, p2

    .line 84
    .line 85
    .line 86
    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 87
    move-result v7

    .line 88
    .line 89
    if-eqz v7, :cond_8

    .line 90
    .line 91
    const/16 v7, 0x100

    .line 92
    goto :goto_4

    .line 93
    .line 94
    :cond_8
    const/16 v7, 0x80

    .line 95
    :goto_4
    or-int/2addr v2, v7

    .line 96
    .line 97
    :goto_5
    and-int/lit8 v7, p11, 0x8

    .line 98
    .line 99
    if-eqz v7, :cond_a

    .line 100
    .line 101
    or-int/lit16 v2, v2, 0xc00

    .line 102
    .line 103
    :cond_9
    move-object/from16 v8, p3

    .line 104
    goto :goto_7

    .line 105
    .line 106
    :cond_a
    and-int/lit16 v8, v10, 0x1c00

    .line 107
    .line 108
    if-nez v8, :cond_9

    .line 109
    .line 110
    move-object/from16 v8, p3

    .line 111
    .line 112
    .line 113
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 114
    move-result v9

    .line 115
    .line 116
    if-eqz v9, :cond_b

    .line 117
    .line 118
    const/16 v9, 0x800

    .line 119
    goto :goto_6

    .line 120
    .line 121
    :cond_b
    const/16 v9, 0x400

    .line 122
    :goto_6
    or-int/2addr v2, v9

    .line 123
    .line 124
    .line 125
    :goto_7
    const v9, 0xe000

    .line 126
    and-int/2addr v9, v10

    .line 127
    .line 128
    if-nez v9, :cond_d

    .line 129
    .line 130
    and-int/lit8 v9, p11, 0x10

    .line 131
    .line 132
    move-wide/from16 v11, p4

    .line 133
    .line 134
    if-nez v9, :cond_c

    .line 135
    .line 136
    .line 137
    invoke-interface {v0, v11, v12}, Landroidx/compose/runtime/Composer;->q(J)Z

    .line 138
    move-result v9

    .line 139
    .line 140
    if-eqz v9, :cond_c

    .line 141
    .line 142
    const/16 v9, 0x4000

    .line 143
    goto :goto_8

    .line 144
    .line 145
    :cond_c
    const/16 v9, 0x2000

    .line 146
    :goto_8
    or-int/2addr v2, v9

    .line 147
    goto :goto_9

    .line 148
    .line 149
    :cond_d
    move-wide/from16 v11, p4

    .line 150
    .line 151
    :goto_9
    const/high16 v9, 0x70000

    .line 152
    .line 153
    and-int v13, v10, v9

    .line 154
    .line 155
    if-nez v13, :cond_10

    .line 156
    .line 157
    and-int/lit8 v13, p11, 0x20

    .line 158
    .line 159
    if-nez v13, :cond_e

    .line 160
    .line 161
    move-wide/from16 v13, p6

    .line 162
    .line 163
    .line 164
    invoke-interface {v0, v13, v14}, Landroidx/compose/runtime/Composer;->q(J)Z

    .line 165
    move-result v15

    .line 166
    .line 167
    if-eqz v15, :cond_f

    .line 168
    .line 169
    const/high16 v15, 0x20000

    .line 170
    goto :goto_a

    .line 171
    .line 172
    :cond_e
    move-wide/from16 v13, p6

    .line 173
    .line 174
    :cond_f
    const/high16 v15, 0x10000

    .line 175
    :goto_a
    or-int/2addr v2, v15

    .line 176
    goto :goto_b

    .line 177
    .line 178
    :cond_10
    move-wide/from16 v13, p6

    .line 179
    .line 180
    :goto_b
    and-int/lit8 v15, p11, 0x40

    .line 181
    .line 182
    if-eqz v15, :cond_11

    .line 183
    .line 184
    const/high16 v16, 0x180000

    .line 185
    .line 186
    or-int v2, v2, v16

    .line 187
    .line 188
    move/from16 v9, p8

    .line 189
    goto :goto_d

    .line 190
    .line 191
    :cond_11
    const/high16 v16, 0x380000

    .line 192
    .line 193
    and-int v16, v10, v16

    .line 194
    .line 195
    move/from16 v9, p8

    .line 196
    .line 197
    if-nez v16, :cond_13

    .line 198
    .line 199
    .line 200
    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->n(F)Z

    .line 201
    move-result v16

    .line 202
    .line 203
    if-eqz v16, :cond_12

    .line 204
    .line 205
    const/high16 v16, 0x100000

    .line 206
    goto :goto_c

    .line 207
    .line 208
    :cond_12
    const/high16 v16, 0x80000

    .line 209
    .line 210
    :goto_c
    or-int v2, v2, v16

    .line 211
    .line 212
    .line 213
    :cond_13
    :goto_d
    const v16, 0x2db6db

    .line 214
    .line 215
    and-int v4, v2, v16

    .line 216
    .line 217
    .line 218
    const v6, 0x92492

    .line 219
    .line 220
    if-ne v4, v6, :cond_15

    .line 221
    .line 222
    .line 223
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->b()Z

    .line 224
    move-result v4

    .line 225
    .line 226
    if-nez v4, :cond_14

    .line 227
    goto :goto_e

    .line 228
    .line 229
    .line 230
    :cond_14
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->g()V

    .line 231
    .line 232
    move-object/from16 v2, p1

    .line 233
    .line 234
    move-object/from16 v3, p2

    .line 235
    move-object v4, v8

    .line 236
    move-wide v5, v11

    .line 237
    move-wide v7, v13

    .line 238
    .line 239
    goto/16 :goto_16

    .line 240
    .line 241
    .line 242
    :cond_15
    :goto_e
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->J()V

    .line 243
    .line 244
    and-int/lit8 v4, v10, 0x1

    .line 245
    .line 246
    .line 247
    const v6, -0x70001

    .line 248
    .line 249
    .line 250
    const v16, -0xe001

    .line 251
    .line 252
    if-eqz v4, :cond_19

    .line 253
    .line 254
    .line 255
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->h()Z

    .line 256
    move-result v4

    .line 257
    .line 258
    if-eqz v4, :cond_16

    .line 259
    goto :goto_f

    .line 260
    .line 261
    .line 262
    :cond_16
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->g()V

    .line 263
    .line 264
    and-int/lit8 v3, p11, 0x10

    .line 265
    .line 266
    if-eqz v3, :cond_17

    .line 267
    .line 268
    and-int v2, v2, v16

    .line 269
    .line 270
    :cond_17
    and-int/lit8 v3, p11, 0x20

    .line 271
    .line 272
    if-eqz v3, :cond_18

    .line 273
    and-int/2addr v2, v6

    .line 274
    .line 275
    :cond_18
    move-object/from16 v3, p1

    .line 276
    .line 277
    move-object/from16 v4, p2

    .line 278
    move-object v5, v8

    .line 279
    move-wide v7, v11

    .line 280
    .line 281
    move-wide/from16 v23, v13

    .line 282
    goto :goto_15

    .line 283
    .line 284
    :cond_19
    :goto_f
    if-eqz v3, :cond_1a

    .line 285
    .line 286
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 287
    goto :goto_10

    .line 288
    .line 289
    :cond_1a
    move-object/from16 v3, p1

    .line 290
    .line 291
    :goto_10
    if-eqz v5, :cond_1b

    .line 292
    const/4 v4, 0x0

    .line 293
    goto :goto_11

    .line 294
    .line 295
    :cond_1b
    move-object/from16 v4, p2

    .line 296
    .line 297
    :goto_11
    if-eqz v7, :cond_1c

    .line 298
    .line 299
    sget-object v5, Landroidx/compose/material/ComposableSingletons$AppBarKt;->INSTANCE:Landroidx/compose/material/ComposableSingletons$AppBarKt;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v5}, Landroidx/compose/material/ComposableSingletons$AppBarKt;->a()Le8/q;

    .line 303
    move-result-object v5

    .line 304
    goto :goto_12

    .line 305
    :cond_1c
    move-object v5, v8

    .line 306
    .line 307
    :goto_12
    and-int/lit8 v7, p11, 0x10

    .line 308
    .line 309
    if-eqz v7, :cond_1d

    .line 310
    .line 311
    sget-object v7, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 312
    const/4 v8, 0x6

    .line 313
    .line 314
    .line 315
    invoke-virtual {v7, v0, v8}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 316
    move-result-object v7

    .line 317
    .line 318
    .line 319
    invoke-static {v7}, Landroidx/compose/material/ColorsKt;->f(Landroidx/compose/material/Colors;)J

    .line 320
    move-result-wide v7

    .line 321
    .line 322
    and-int v2, v2, v16

    .line 323
    goto :goto_13

    .line 324
    :cond_1d
    move-wide v7, v11

    .line 325
    .line 326
    :goto_13
    and-int/lit8 v11, p11, 0x20

    .line 327
    .line 328
    if-eqz v11, :cond_1e

    .line 329
    .line 330
    shr-int/lit8 v11, v2, 0xc

    .line 331
    .line 332
    and-int/lit8 v11, v11, 0xe

    .line 333
    .line 334
    .line 335
    invoke-static {v7, v8, v0, v11}, Landroidx/compose/material/ColorsKt;->b(JLandroidx/compose/runtime/Composer;I)J

    .line 336
    move-result-wide v11

    .line 337
    and-int/2addr v2, v6

    .line 338
    goto :goto_14

    .line 339
    :cond_1e
    move-wide v11, v13

    .line 340
    .line 341
    :goto_14
    if-eqz v15, :cond_1f

    .line 342
    .line 343
    sget-object v6, Landroidx/compose/material/AppBarDefaults;->INSTANCE:Landroidx/compose/material/AppBarDefaults;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v6}, Landroidx/compose/material/AppBarDefaults;->c()F

    .line 347
    move-result v6

    .line 348
    move v9, v6

    .line 349
    .line 350
    :cond_1f
    move-wide/from16 v23, v11

    .line 351
    .line 352
    .line 353
    :goto_15
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->A()V

    .line 354
    .line 355
    sget-object v6, Landroidx/compose/material/AppBarDefaults;->INSTANCE:Landroidx/compose/material/AppBarDefaults;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v6}, Landroidx/compose/material/AppBarDefaults;->b()Landroidx/compose/foundation/layout/PaddingValues;

    .line 359
    move-result-object v16

    .line 360
    .line 361
    .line 362
    invoke-static {}, Landroidx/compose/ui/graphics/RectangleShapeKt;->a()Landroidx/compose/ui/graphics/Shape;

    .line 363
    move-result-object v17

    .line 364
    .line 365
    new-instance v6, Landroidx/compose/material/AppBarKt$TopAppBar$1;

    .line 366
    .line 367
    .line 368
    invoke-direct {v6, v4, v2, v1, v5}, Landroidx/compose/material/AppBarKt$TopAppBar$1;-><init>(Le8/p;ILe8/p;Le8/q;)V

    .line 369
    .line 370
    .line 371
    const v11, -0x58753a7e

    .line 372
    const/4 v12, 0x1

    .line 373
    .line 374
    .line 375
    invoke-static {v0, v11, v12, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 376
    move-result-object v19

    .line 377
    .line 378
    shr-int/lit8 v6, v2, 0xc

    .line 379
    .line 380
    and-int/lit8 v11, v6, 0xe

    .line 381
    .line 382
    .line 383
    const v12, 0x186c00

    .line 384
    or-int/2addr v11, v12

    .line 385
    .line 386
    and-int/lit8 v12, v6, 0x70

    .line 387
    or-int/2addr v11, v12

    .line 388
    .line 389
    and-int/lit16 v6, v6, 0x380

    .line 390
    or-int/2addr v6, v11

    .line 391
    .line 392
    shl-int/lit8 v2, v2, 0xc

    .line 393
    .line 394
    const/high16 v11, 0x70000

    .line 395
    and-int/2addr v2, v11

    .line 396
    .line 397
    or-int v21, v6, v2

    .line 398
    .line 399
    const/16 v22, 0x0

    .line 400
    move-wide v11, v7

    .line 401
    .line 402
    move-wide/from16 v13, v23

    .line 403
    move v15, v9

    .line 404
    .line 405
    move-object/from16 v18, v3

    .line 406
    .line 407
    move-object/from16 v20, v0

    .line 408
    .line 409
    .line 410
    invoke-static/range {v11 .. v22}, Landroidx/compose/material/AppBarKt;->a(JJFLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/Modifier;Le8/q;Landroidx/compose/runtime/Composer;II)V

    .line 411
    move-object v2, v3

    .line 412
    move-object v3, v4

    .line 413
    move-object v4, v5

    .line 414
    move-wide v5, v7

    .line 415
    .line 416
    move-wide/from16 v7, v23

    .line 417
    .line 418
    .line 419
    :goto_16
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 420
    move-result-object v12

    .line 421
    .line 422
    if-nez v12, :cond_20

    .line 423
    goto :goto_17

    .line 424
    .line 425
    :cond_20
    new-instance v13, Landroidx/compose/material/AppBarKt$TopAppBar$2;

    .line 426
    move-object v0, v13

    .line 427
    .line 428
    move-object/from16 v1, p0

    .line 429
    .line 430
    move/from16 v10, p10

    .line 431
    .line 432
    move/from16 v11, p11

    .line 433
    .line 434
    .line 435
    invoke-direct/range {v0 .. v11}, Landroidx/compose/material/AppBarKt$TopAppBar$2;-><init>(Le8/p;Landroidx/compose/ui/Modifier;Le8/p;Le8/q;JJFII)V

    .line 436
    .line 437
    .line 438
    invoke-interface {v12, v13}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 439
    :goto_17
    return-void
.end method

.method public static final synthetic e(JJFLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/Modifier;Le8/q;Landroidx/compose/runtime/Composer;II)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static/range {p0 .. p11}, Landroidx/compose/material/AppBarKt;->a(JJFLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/Modifier;Le8/q;Landroidx/compose/runtime/Composer;II)V

    .line 4
    return-void
.end method

.method public static final synthetic f()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/AppBarKt;->AppBarHeight:F

    return v0
.end method

.method public static final synthetic g()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/AppBarKt;->AppBarHorizontalPadding:F

    return v0
.end method

.method public static final synthetic h()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/AppBarKt;->BottomAppBarCutoutOffset:F

    return v0
.end method

.method public static final synthetic i()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/AppBarKt;->BottomAppBarRoundedEdgeRadius:F

    return v0
.end method

.method public static final synthetic j()Landroidx/compose/ui/Modifier;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/material/AppBarKt;->TitleIconModifier:Landroidx/compose/ui/Modifier;

    return-object v0
.end method

.method public static final synthetic k()Landroidx/compose/ui/Modifier;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/material/AppBarKt;->TitleInsetWithoutIcon:Landroidx/compose/ui/Modifier;

    return-object v0
.end method

.method public static final l(FFF)Lw7/u;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFF)",
            "Lw7/u<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    mul-float v0, p1, p1

    .line 3
    mul-float/2addr p2, p2

    .line 4
    .line 5
    mul-float v1, v0, p2

    .line 6
    .line 7
    mul-float v2, p0, p0

    .line 8
    add-float/2addr v2, v0

    .line 9
    .line 10
    sub-float v0, v2, p2

    .line 11
    mul-float/2addr v1, v0

    .line 12
    .line 13
    mul-float v0, p0, p2

    .line 14
    float-to-double v3, v1

    .line 15
    .line 16
    .line 17
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    .line 18
    move-result-wide v5

    .line 19
    double-to-float v1, v5

    .line 20
    .line 21
    sub-float v1, v0, v1

    .line 22
    div-float/2addr v1, v2

    .line 23
    .line 24
    .line 25
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    .line 26
    move-result-wide v3

    .line 27
    double-to-float v3, v3

    .line 28
    add-float/2addr v0, v3

    .line 29
    div-float/2addr v0, v2

    .line 30
    .line 31
    mul-float v2, v1, v1

    .line 32
    .line 33
    sub-float v2, p2, v2

    .line 34
    float-to-double v2, v2

    .line 35
    .line 36
    .line 37
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 38
    move-result-wide v2

    .line 39
    double-to-float v2, v2

    .line 40
    .line 41
    mul-float v3, v0, v0

    .line 42
    sub-float/2addr p2, v3

    .line 43
    float-to-double v3, p2

    .line 44
    .line 45
    .line 46
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    .line 47
    move-result-wide v3

    .line 48
    double-to-float p2, v3

    .line 49
    const/4 v3, 0x0

    .line 50
    .line 51
    cmpl-float p1, p1, v3

    .line 52
    .line 53
    if-lez p1, :cond_1

    .line 54
    .line 55
    cmpl-float p1, v2, p2

    .line 56
    .line 57
    if-lez p1, :cond_0

    .line 58
    .line 59
    .line 60
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    .line 64
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 65
    move-result-object p2

    .line 66
    .line 67
    .line 68
    :goto_0
    invoke-static {p1, p2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 69
    move-result-object p1

    .line 70
    goto :goto_2

    .line 71
    .line 72
    .line 73
    :cond_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 74
    move-result-object p1

    .line 75
    .line 76
    .line 77
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 78
    move-result-object p2

    .line 79
    goto :goto_0

    .line 80
    .line 81
    :cond_1
    cmpg-float p1, v2, p2

    .line 82
    .line 83
    if-gez p1, :cond_2

    .line 84
    .line 85
    .line 86
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 87
    move-result-object p1

    .line 88
    .line 89
    .line 90
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 91
    move-result-object p2

    .line 92
    .line 93
    .line 94
    :goto_1
    invoke-static {p1, p2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 95
    move-result-object p1

    .line 96
    goto :goto_2

    .line 97
    .line 98
    .line 99
    :cond_2
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 100
    move-result-object p1

    .line 101
    .line 102
    .line 103
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 104
    move-result-object p2

    .line 105
    goto :goto_1

    .line 106
    .line 107
    .line 108
    :goto_2
    invoke-virtual {p1}, Lw7/u;->a()Ljava/lang/Object;

    .line 109
    move-result-object p2

    .line 110
    .line 111
    check-cast p2, Ljava/lang/Number;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    .line 115
    move-result p2

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1}, Lw7/u;->b()Ljava/lang/Object;

    .line 119
    move-result-object p1

    .line 120
    .line 121
    check-cast p1, Ljava/lang/Number;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 125
    move-result p1

    .line 126
    .line 127
    cmpg-float p0, p2, p0

    .line 128
    .line 129
    if-gez p0, :cond_3

    .line 130
    neg-float p1, p1

    .line 131
    .line 132
    .line 133
    :cond_3
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 134
    move-result-object p0

    .line 135
    .line 136
    .line 137
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 138
    move-result-object p1

    .line 139
    .line 140
    .line 141
    invoke-static {p0, p1}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 142
    move-result-object p0

    .line 143
    return-object p0
.end method
