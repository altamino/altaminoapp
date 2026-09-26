.class final Landroidx/compose/material/TextFieldTransitionScope;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material/TextFieldTransitionScope$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextFieldImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextFieldImpl.kt\nandroidx/compose/material/TextFieldTransitionScope\n+ 2 Transition.kt\nandroidx/compose/animation/core/TransitionKt\n+ 3 Transition.kt\nandroidx/compose/animation/TransitionKt\n+ 4 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 5 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 6 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,374:1\n926#2:375\n844#2,5:376\n926#2:381\n844#2,5:382\n844#2,5:398\n844#2,5:414\n69#3,2:387\n71#3:393\n74#3:397\n69#3,2:403\n71#3:409\n74#3:413\n36#4:389\n36#4:405\n957#5,3:390\n960#5,3:394\n957#5,3:406\n960#5,3:410\n76#6:419\n76#6:420\n76#6:421\n76#6:422\n*S KotlinDebug\n*F\n+ 1 TextFieldImpl.kt\nandroidx/compose/material/TextFieldTransitionScope\n*L\n279#1:375\n279#1:376,5\n290#1:381\n290#1:382,5\n318#1:398,5\n328#1:414,5\n318#1:387,2\n318#1:393\n318#1:397\n328#1:403,2\n328#1:409\n328#1:413\n318#1:389\n328#1:405\n318#1:390,3\n318#1:394,3\n328#1:406,3\n328#1:410,3\n279#1:419\n290#1:420\n318#1:421\n328#1:422\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/material/TextFieldTransitionScope;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material/TextFieldTransitionScope;

    invoke-direct {v0}, Landroidx/compose/material/TextFieldTransitionScope;-><init>()V

    sput-object v0, Landroidx/compose/material/TextFieldTransitionScope;->INSTANCE:Landroidx/compose/material/TextFieldTransitionScope;

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

.method private static final b(Landroidx/compose/runtime/State;)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    check-cast p0, Ljava/lang/Number;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private static final c(Landroidx/compose/runtime/State;)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    check-cast p0, Ljava/lang/Number;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private static final d(Landroidx/compose/runtime/State;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;)J"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    check-cast p0, Landroidx/compose/ui/graphics/Color;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/Color;->v()J

    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method private static final e(Landroidx/compose/runtime/State;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;)J"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    check-cast p0, Landroidx/compose/ui/graphics/Color;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/Color;->v()J

    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method


# virtual methods
.method public final a(Landroidx/compose/material/InputPhase;JJLe8/q;ZLe8/t;Landroidx/compose/runtime/Composer;I)V
    .locals 27
    .param p1    # Landroidx/compose/material/InputPhase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Le8/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Le8/t;
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
            "Landroidx/compose/material/InputPhase;",
            "JJ",
            "Le8/q<",
            "-",
            "Landroidx/compose/material/InputPhase;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Landroidx/compose/ui/graphics/Color;",
            ">;Z",
            "Le8/t<",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Landroidx/compose/ui/graphics/Color;",
            "-",
            "Landroidx/compose/ui/graphics/Color;",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v2, p1

    .line 3
    .line 4
    move-object/from16 v7, p6

    .line 5
    .line 6
    move/from16 v8, p7

    .line 7
    .line 8
    move-object/from16 v5, p8

    .line 9
    .line 10
    move/from16 v6, p10

    .line 11
    .line 12
    const-string v0, "inputState"

    .line 13
    .line 14
    .line 15
    invoke-static {v2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    const-string v0, "contentColor"

    .line 18
    .line 19
    .line 20
    invoke-static {v7, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    const-string v0, "content"

    .line 23
    .line 24
    .line 25
    invoke-static {v5, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const v0, 0x76899c6a

    .line 29
    .line 30
    move-object/from16 v1, p9

    .line 31
    .line 32
    .line 33
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    and-int/lit8 v1, v6, 0xe

    .line 37
    const/4 v3, 0x2

    .line 38
    .line 39
    if-nez v1, :cond_1

    .line 40
    .line 41
    .line 42
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 43
    move-result v1

    .line 44
    .line 45
    if-eqz v1, :cond_0

    .line 46
    const/4 v1, 0x4

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    move v1, v3

    .line 49
    :goto_0
    or-int/2addr v1, v6

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    move v1, v6

    .line 52
    .line 53
    :goto_1
    and-int/lit8 v4, v6, 0x70

    .line 54
    .line 55
    move-wide/from16 v14, p2

    .line 56
    .line 57
    if-nez v4, :cond_3

    .line 58
    .line 59
    .line 60
    invoke-interface {v0, v14, v15}, Landroidx/compose/runtime/Composer;->q(J)Z

    .line 61
    move-result v4

    .line 62
    .line 63
    if-eqz v4, :cond_2

    .line 64
    .line 65
    const/16 v4, 0x20

    .line 66
    goto :goto_2

    .line 67
    .line 68
    :cond_2
    const/16 v4, 0x10

    .line 69
    :goto_2
    or-int/2addr v1, v4

    .line 70
    .line 71
    :cond_3
    and-int/lit16 v4, v6, 0x380

    .line 72
    .line 73
    move-wide/from16 v12, p4

    .line 74
    .line 75
    if-nez v4, :cond_5

    .line 76
    .line 77
    .line 78
    invoke-interface {v0, v12, v13}, Landroidx/compose/runtime/Composer;->q(J)Z

    .line 79
    move-result v4

    .line 80
    .line 81
    if-eqz v4, :cond_4

    .line 82
    .line 83
    const/16 v4, 0x100

    .line 84
    goto :goto_3

    .line 85
    .line 86
    :cond_4
    const/16 v4, 0x80

    .line 87
    :goto_3
    or-int/2addr v1, v4

    .line 88
    .line 89
    :cond_5
    and-int/lit16 v4, v6, 0x1c00

    .line 90
    .line 91
    if-nez v4, :cond_7

    .line 92
    .line 93
    .line 94
    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 95
    move-result v4

    .line 96
    .line 97
    if-eqz v4, :cond_6

    .line 98
    .line 99
    const/16 v4, 0x800

    .line 100
    goto :goto_4

    .line 101
    .line 102
    :cond_6
    const/16 v4, 0x400

    .line 103
    :goto_4
    or-int/2addr v1, v4

    .line 104
    .line 105
    .line 106
    :cond_7
    const v4, 0xe000

    .line 107
    .line 108
    and-int v9, v6, v4

    .line 109
    .line 110
    if-nez v9, :cond_9

    .line 111
    .line 112
    .line 113
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->m(Z)Z

    .line 114
    move-result v9

    .line 115
    .line 116
    if-eqz v9, :cond_8

    .line 117
    .line 118
    const/16 v9, 0x4000

    .line 119
    goto :goto_5

    .line 120
    .line 121
    :cond_8
    const/16 v9, 0x2000

    .line 122
    :goto_5
    or-int/2addr v1, v9

    .line 123
    .line 124
    :cond_9
    const/high16 v17, 0x70000

    .line 125
    .line 126
    and-int v9, v6, v17

    .line 127
    .line 128
    if-nez v9, :cond_b

    .line 129
    .line 130
    .line 131
    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 132
    move-result v9

    .line 133
    .line 134
    if-eqz v9, :cond_a

    .line 135
    .line 136
    const/high16 v9, 0x20000

    .line 137
    goto :goto_6

    .line 138
    .line 139
    :cond_a
    const/high16 v9, 0x10000

    .line 140
    :goto_6
    or-int/2addr v1, v9

    .line 141
    .line 142
    .line 143
    :cond_b
    const v9, 0x5b6db

    .line 144
    and-int/2addr v9, v1

    .line 145
    .line 146
    .line 147
    const v10, 0x12492

    .line 148
    .line 149
    if-ne v9, v10, :cond_d

    .line 150
    .line 151
    .line 152
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->b()Z

    .line 153
    move-result v9

    .line 154
    .line 155
    if-nez v9, :cond_c

    .line 156
    goto :goto_7

    .line 157
    .line 158
    .line 159
    :cond_c
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->g()V

    .line 160
    .line 161
    goto/16 :goto_11

    .line 162
    .line 163
    :cond_d
    :goto_7
    and-int/lit8 v9, v1, 0xe

    .line 164
    .line 165
    or-int/lit8 v9, v9, 0x30

    .line 166
    .line 167
    const-string v10, "TextFieldInputState"

    .line 168
    const/4 v11, 0x0

    .line 169
    .line 170
    .line 171
    invoke-static {v2, v10, v0, v9, v11}, Landroidx/compose/animation/core/TransitionKt;->e(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition;

    .line 172
    move-result-object v18

    .line 173
    .line 174
    sget-object v9, Landroidx/compose/material/TextFieldTransitionScope$Transition$labelProgress$2;->INSTANCE:Landroidx/compose/material/TextFieldTransitionScope$Transition$labelProgress$2;

    .line 175
    .line 176
    const-string v16, "LabelProgress"

    .line 177
    .line 178
    .line 179
    const v10, 0x5370a61d

    .line 180
    .line 181
    .line 182
    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 183
    .line 184
    sget-object v19, Lkotlin/jvm/internal/m;->INSTANCE:Lkotlin/jvm/internal/m;

    .line 185
    .line 186
    .line 187
    invoke-static/range {v19 .. v19}, Landroidx/compose/animation/core/VectorConvertersKt;->i(Lkotlin/jvm/internal/m;)Landroidx/compose/animation/core/TwoWayConverter;

    .line 188
    move-result-object v20

    .line 189
    .line 190
    .line 191
    const v4, 0x6e220c08

    .line 192
    .line 193
    .line 194
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 195
    .line 196
    .line 197
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/animation/core/Transition;->g()Ljava/lang/Object;

    .line 198
    move-result-object v21

    .line 199
    .line 200
    check-cast v21, Landroidx/compose/material/InputPhase;

    .line 201
    .line 202
    .line 203
    const v10, -0x4505bda8

    .line 204
    .line 205
    .line 206
    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 207
    .line 208
    sget-object v22, Landroidx/compose/material/TextFieldTransitionScope$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 209
    .line 210
    .line 211
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Enum;->ordinal()I

    .line 212
    move-result v21

    .line 213
    .line 214
    aget v4, v22, v21

    .line 215
    .line 216
    const/16 v21, 0x0

    .line 217
    const/4 v11, 0x3

    .line 218
    const/4 v10, 0x1

    .line 219
    .line 220
    const/high16 v24, 0x3f800000    # 1.0f

    .line 221
    .line 222
    if-eq v4, v10, :cond_e

    .line 223
    .line 224
    if-eq v4, v3, :cond_10

    .line 225
    .line 226
    if-ne v4, v11, :cond_f

    .line 227
    .line 228
    :cond_e
    move/from16 v4, v24

    .line 229
    goto :goto_8

    .line 230
    .line 231
    :cond_f
    new-instance v0, Lw7/s;

    .line 232
    .line 233
    .line 234
    invoke-direct {v0}, Lw7/s;-><init>()V

    .line 235
    throw v0

    .line 236
    .line 237
    :cond_10
    move/from16 v4, v21

    .line 238
    .line 239
    .line 240
    :goto_8
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 241
    .line 242
    .line 243
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 244
    move-result-object v4

    .line 245
    .line 246
    .line 247
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/animation/core/Transition;->m()Ljava/lang/Object;

    .line 248
    move-result-object v25

    .line 249
    .line 250
    check-cast v25, Landroidx/compose/material/InputPhase;

    .line 251
    .line 252
    .line 253
    const v11, -0x4505bda8

    .line 254
    .line 255
    .line 256
    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 257
    .line 258
    .line 259
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Enum;->ordinal()I

    .line 260
    move-result v11

    .line 261
    .line 262
    aget v11, v22, v11

    .line 263
    .line 264
    if-eq v11, v10, :cond_13

    .line 265
    .line 266
    if-eq v11, v3, :cond_12

    .line 267
    const/4 v3, 0x3

    .line 268
    .line 269
    if-ne v11, v3, :cond_11

    .line 270
    .line 271
    :goto_9
    move/from16 v11, v24

    .line 272
    goto :goto_a

    .line 273
    .line 274
    :cond_11
    new-instance v0, Lw7/s;

    .line 275
    .line 276
    .line 277
    invoke-direct {v0}, Lw7/s;-><init>()V

    .line 278
    throw v0

    .line 279
    :cond_12
    const/4 v3, 0x3

    .line 280
    .line 281
    move/from16 v11, v21

    .line 282
    goto :goto_a

    .line 283
    :cond_13
    const/4 v3, 0x3

    .line 284
    goto :goto_9

    .line 285
    .line 286
    .line 287
    :goto_a
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 288
    .line 289
    .line 290
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 291
    move-result-object v11

    .line 292
    .line 293
    .line 294
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/animation/core/Transition;->k()Landroidx/compose/animation/core/Transition$Segment;

    .line 295
    move-result-object v3

    .line 296
    .line 297
    const/16 v23, 0x0

    .line 298
    .line 299
    .line 300
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 301
    move-result-object v10

    .line 302
    .line 303
    .line 304
    invoke-interface {v9, v3, v0, v10}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    move-result-object v3

    .line 306
    .line 307
    check-cast v3, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 308
    .line 309
    const/high16 v26, 0x30000

    .line 310
    .line 311
    move-object/from16 v9, v18

    .line 312
    .line 313
    .line 314
    const v2, 0x5370a61d

    .line 315
    move-object v10, v4

    .line 316
    const/4 v4, 0x3

    .line 317
    move-object v12, v3

    .line 318
    .line 319
    move-object/from16 v13, v20

    .line 320
    .line 321
    move-object/from16 v14, v16

    .line 322
    move-object v15, v0

    .line 323
    .line 324
    move/from16 v16, v26

    .line 325
    .line 326
    .line 327
    invoke-static/range {v9 .. v16}, Landroidx/compose/animation/core/TransitionKt;->c(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 328
    move-result-object v3

    .line 329
    .line 330
    .line 331
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 332
    .line 333
    .line 334
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 335
    .line 336
    sget-object v9, Landroidx/compose/material/TextFieldTransitionScope$Transition$placeholderOpacity$2;->INSTANCE:Landroidx/compose/material/TextFieldTransitionScope$Transition$placeholderOpacity$2;

    .line 337
    .line 338
    const-string v14, "PlaceholderOpacity"

    .line 339
    .line 340
    .line 341
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 342
    .line 343
    .line 344
    invoke-static/range {v19 .. v19}, Landroidx/compose/animation/core/VectorConvertersKt;->i(Lkotlin/jvm/internal/m;)Landroidx/compose/animation/core/TwoWayConverter;

    .line 345
    move-result-object v13

    .line 346
    .line 347
    .line 348
    const v2, 0x6e220c08

    .line 349
    .line 350
    .line 351
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 352
    .line 353
    .line 354
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/animation/core/Transition;->g()Ljava/lang/Object;

    .line 355
    move-result-object v2

    .line 356
    .line 357
    check-cast v2, Landroidx/compose/material/InputPhase;

    .line 358
    .line 359
    .line 360
    const v10, -0x52068529

    .line 361
    .line 362
    .line 363
    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 367
    move-result v2

    .line 368
    .line 369
    aget v2, v22, v2

    .line 370
    const/4 v15, 0x1

    .line 371
    .line 372
    if-eq v2, v15, :cond_16

    .line 373
    const/4 v11, 0x2

    .line 374
    .line 375
    if-eq v2, v11, :cond_15

    .line 376
    .line 377
    if-ne v2, v4, :cond_14

    .line 378
    .line 379
    :goto_b
    move/from16 v2, v21

    .line 380
    goto :goto_c

    .line 381
    .line 382
    :cond_14
    new-instance v0, Lw7/s;

    .line 383
    .line 384
    .line 385
    invoke-direct {v0}, Lw7/s;-><init>()V

    .line 386
    throw v0

    .line 387
    .line 388
    :cond_15
    if-eqz v8, :cond_16

    .line 389
    goto :goto_b

    .line 390
    .line 391
    :cond_16
    move/from16 v2, v24

    .line 392
    .line 393
    .line 394
    :goto_c
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 395
    .line 396
    .line 397
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 398
    move-result-object v2

    .line 399
    .line 400
    .line 401
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/animation/core/Transition;->m()Ljava/lang/Object;

    .line 402
    move-result-object v11

    .line 403
    .line 404
    check-cast v11, Landroidx/compose/material/InputPhase;

    .line 405
    .line 406
    .line 407
    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    .line 411
    move-result v10

    .line 412
    .line 413
    aget v10, v22, v10

    .line 414
    .line 415
    if-eq v10, v15, :cond_19

    .line 416
    const/4 v11, 0x2

    .line 417
    .line 418
    if-eq v10, v11, :cond_18

    .line 419
    .line 420
    if-ne v10, v4, :cond_17

    .line 421
    goto :goto_d

    .line 422
    .line 423
    :cond_17
    new-instance v0, Lw7/s;

    .line 424
    .line 425
    .line 426
    invoke-direct {v0}, Lw7/s;-><init>()V

    .line 427
    throw v0

    .line 428
    .line 429
    :cond_18
    if-eqz v8, :cond_19

    .line 430
    goto :goto_d

    .line 431
    .line 432
    :cond_19
    move/from16 v21, v24

    .line 433
    .line 434
    .line 435
    :goto_d
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 436
    .line 437
    .line 438
    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 439
    move-result-object v11

    .line 440
    .line 441
    .line 442
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/animation/core/Transition;->k()Landroidx/compose/animation/core/Transition$Segment;

    .line 443
    move-result-object v10

    .line 444
    const/4 v12, 0x0

    .line 445
    .line 446
    .line 447
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 448
    move-result-object v15

    .line 449
    .line 450
    .line 451
    invoke-interface {v9, v10, v0, v15}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    move-result-object v9

    .line 453
    move-object v12, v9

    .line 454
    .line 455
    check-cast v12, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 456
    .line 457
    move-object/from16 v9, v18

    .line 458
    move-object v10, v2

    .line 459
    const/4 v2, 0x1

    .line 460
    move-object v15, v0

    .line 461
    .line 462
    move/from16 v16, v26

    .line 463
    .line 464
    .line 465
    invoke-static/range {v9 .. v16}, Landroidx/compose/animation/core/TransitionKt;->c(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 466
    move-result-object v19

    .line 467
    .line 468
    .line 469
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 470
    .line 471
    .line 472
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 473
    .line 474
    sget-object v9, Landroidx/compose/material/TextFieldTransitionScope$Transition$labelTextStyleColor$2;->INSTANCE:Landroidx/compose/material/TextFieldTransitionScope$Transition$labelTextStyleColor$2;

    .line 475
    .line 476
    const-string v14, "LabelTextStyleColor"

    .line 477
    .line 478
    .line 479
    const v15, -0x57267098

    .line 480
    .line 481
    .line 482
    invoke-interface {v0, v15}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 483
    .line 484
    .line 485
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/animation/core/Transition;->m()Ljava/lang/Object;

    .line 486
    move-result-object v10

    .line 487
    .line 488
    check-cast v10, Landroidx/compose/material/InputPhase;

    .line 489
    .line 490
    .line 491
    const v11, -0x58d2cc88

    .line 492
    .line 493
    .line 494
    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 495
    .line 496
    .line 497
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    .line 498
    move-result v10

    .line 499
    .line 500
    aget v10, v22, v10

    .line 501
    .line 502
    if-ne v10, v2, :cond_1a

    .line 503
    .line 504
    move-wide/from16 v12, p2

    .line 505
    goto :goto_e

    .line 506
    .line 507
    :cond_1a
    move-wide/from16 v12, p4

    .line 508
    .line 509
    .line 510
    :goto_e
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 511
    .line 512
    .line 513
    invoke-static {v12, v13}, Landroidx/compose/ui/graphics/Color;->q(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    .line 514
    move-result-object v10

    .line 515
    .line 516
    .line 517
    const v13, -0x384212

    .line 518
    .line 519
    .line 520
    invoke-interface {v0, v13}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 521
    .line 522
    .line 523
    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 524
    move-result v12

    .line 525
    .line 526
    .line 527
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 528
    move-result-object v13

    .line 529
    .line 530
    if-nez v12, :cond_1b

    .line 531
    .line 532
    sget-object v12, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 533
    .line 534
    .line 535
    invoke-virtual {v12}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 536
    move-result-object v12

    .line 537
    .line 538
    if-ne v13, v12, :cond_1c

    .line 539
    .line 540
    :cond_1b
    sget-object v12, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 541
    .line 542
    .line 543
    invoke-static {v12}, Landroidx/compose/animation/ColorVectorConverterKt;->d(Landroidx/compose/ui/graphics/Color$Companion;)Le8/l;

    .line 544
    move-result-object v12

    .line 545
    .line 546
    .line 547
    invoke-interface {v12, v10}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    move-result-object v10

    .line 549
    move-object v13, v10

    .line 550
    .line 551
    check-cast v13, Landroidx/compose/animation/core/TwoWayConverter;

    .line 552
    .line 553
    .line 554
    invoke-interface {v0, v13}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 555
    .line 556
    .line 557
    :cond_1c
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 558
    .line 559
    check-cast v13, Landroidx/compose/animation/core/TwoWayConverter;

    .line 560
    .line 561
    .line 562
    const v10, 0x6e220c08

    .line 563
    .line 564
    .line 565
    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 566
    .line 567
    .line 568
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/animation/core/Transition;->g()Ljava/lang/Object;

    .line 569
    move-result-object v10

    .line 570
    .line 571
    check-cast v10, Landroidx/compose/material/InputPhase;

    .line 572
    .line 573
    .line 574
    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 575
    .line 576
    .line 577
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    .line 578
    move-result v10

    .line 579
    .line 580
    aget v10, v22, v10

    .line 581
    .line 582
    if-ne v10, v2, :cond_1d

    .line 583
    .line 584
    move-wide/from16 v20, p2

    .line 585
    goto :goto_f

    .line 586
    .line 587
    :cond_1d
    move-wide/from16 v20, p4

    .line 588
    .line 589
    .line 590
    :goto_f
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 591
    .line 592
    .line 593
    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/graphics/Color;->h(J)Landroidx/compose/ui/graphics/Color;

    .line 594
    move-result-object v10

    .line 595
    .line 596
    .line 597
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/animation/core/Transition;->m()Ljava/lang/Object;

    .line 598
    move-result-object v12

    .line 599
    .line 600
    check-cast v12, Landroidx/compose/material/InputPhase;

    .line 601
    .line 602
    .line 603
    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 604
    .line 605
    .line 606
    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    .line 607
    move-result v11

    .line 608
    .line 609
    aget v11, v22, v11

    .line 610
    .line 611
    if-ne v11, v2, :cond_1e

    .line 612
    .line 613
    move-wide/from16 v11, p2

    .line 614
    goto :goto_10

    .line 615
    .line 616
    :cond_1e
    move-wide/from16 v11, p4

    .line 617
    .line 618
    .line 619
    :goto_10
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 620
    .line 621
    .line 622
    invoke-static {v11, v12}, Landroidx/compose/ui/graphics/Color;->h(J)Landroidx/compose/ui/graphics/Color;

    .line 623
    move-result-object v11

    .line 624
    .line 625
    .line 626
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/animation/core/Transition;->k()Landroidx/compose/animation/core/Transition$Segment;

    .line 627
    move-result-object v2

    .line 628
    const/4 v12, 0x0

    .line 629
    .line 630
    .line 631
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 632
    move-result-object v12

    .line 633
    .line 634
    .line 635
    invoke-interface {v9, v2, v0, v12}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    move-result-object v2

    .line 637
    move-object v12, v2

    .line 638
    .line 639
    check-cast v12, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 640
    .line 641
    .line 642
    const v2, 0x38000

    .line 643
    .line 644
    move-object/from16 v9, v18

    .line 645
    .line 646
    .line 647
    const v4, -0x384212

    .line 648
    move v4, v15

    .line 649
    move-object v15, v0

    .line 650
    .line 651
    move/from16 v16, v2

    .line 652
    .line 653
    .line 654
    invoke-static/range {v9 .. v16}, Landroidx/compose/animation/core/TransitionKt;->c(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 655
    move-result-object v2

    .line 656
    .line 657
    .line 658
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 659
    .line 660
    .line 661
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 662
    .line 663
    sget-object v9, Landroidx/compose/material/TextFieldTransitionScope$Transition$labelContentColor$2;->INSTANCE:Landroidx/compose/material/TextFieldTransitionScope$Transition$labelContentColor$2;

    .line 664
    .line 665
    const-string v14, "LabelContentColor"

    .line 666
    .line 667
    and-int/lit16 v10, v1, 0x1c00

    .line 668
    .line 669
    or-int/lit16 v10, v10, 0x180

    .line 670
    .line 671
    .line 672
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 673
    .line 674
    .line 675
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/animation/core/Transition;->m()Ljava/lang/Object;

    .line 676
    move-result-object v4

    .line 677
    .line 678
    shr-int/lit8 v11, v10, 0x6

    .line 679
    .line 680
    and-int/lit8 v11, v11, 0x70

    .line 681
    .line 682
    .line 683
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 684
    move-result-object v11

    .line 685
    .line 686
    .line 687
    invoke-interface {v7, v4, v0, v11}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    move-result-object v4

    .line 689
    .line 690
    check-cast v4, Landroidx/compose/ui/graphics/Color;

    .line 691
    .line 692
    .line 693
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/Color;->v()J

    .line 694
    move-result-wide v11

    .line 695
    .line 696
    .line 697
    invoke-static {v11, v12}, Landroidx/compose/ui/graphics/Color;->q(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    .line 698
    move-result-object v4

    .line 699
    .line 700
    .line 701
    const v11, -0x384212

    .line 702
    .line 703
    .line 704
    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 705
    .line 706
    .line 707
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 708
    move-result v11

    .line 709
    .line 710
    .line 711
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 712
    move-result-object v12

    .line 713
    .line 714
    if-nez v11, :cond_1f

    .line 715
    .line 716
    sget-object v11, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 717
    .line 718
    .line 719
    invoke-virtual {v11}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 720
    move-result-object v11

    .line 721
    .line 722
    if-ne v12, v11, :cond_20

    .line 723
    .line 724
    :cond_1f
    sget-object v11, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 725
    .line 726
    .line 727
    invoke-static {v11}, Landroidx/compose/animation/ColorVectorConverterKt;->d(Landroidx/compose/ui/graphics/Color$Companion;)Le8/l;

    .line 728
    move-result-object v11

    .line 729
    .line 730
    .line 731
    invoke-interface {v11, v4}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    move-result-object v4

    .line 733
    move-object v12, v4

    .line 734
    .line 735
    check-cast v12, Landroidx/compose/animation/core/TwoWayConverter;

    .line 736
    .line 737
    .line 738
    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 739
    .line 740
    .line 741
    :cond_20
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 742
    move-object v13, v12

    .line 743
    .line 744
    check-cast v13, Landroidx/compose/animation/core/TwoWayConverter;

    .line 745
    .line 746
    and-int/lit8 v4, v10, 0xe

    .line 747
    .line 748
    or-int/lit8 v4, v4, 0x40

    .line 749
    const/4 v11, 0x3

    .line 750
    shl-int/2addr v10, v11

    .line 751
    .line 752
    and-int/lit16 v11, v10, 0x380

    .line 753
    or-int/2addr v4, v11

    .line 754
    .line 755
    and-int/lit16 v11, v10, 0x1c00

    .line 756
    or-int/2addr v4, v11

    .line 757
    .line 758
    .line 759
    const v11, 0xe000

    .line 760
    and-int/2addr v10, v11

    .line 761
    or-int/2addr v4, v10

    .line 762
    .line 763
    .line 764
    const v10, 0x6e220c08

    .line 765
    .line 766
    .line 767
    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 768
    .line 769
    .line 770
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/animation/core/Transition;->g()Ljava/lang/Object;

    .line 771
    move-result-object v10

    .line 772
    .line 773
    shr-int/lit8 v11, v4, 0x9

    .line 774
    .line 775
    and-int/lit8 v11, v11, 0x70

    .line 776
    .line 777
    .line 778
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 779
    move-result-object v12

    .line 780
    .line 781
    .line 782
    invoke-interface {v7, v10, v0, v12}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    move-result-object v10

    .line 784
    .line 785
    .line 786
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/animation/core/Transition;->m()Ljava/lang/Object;

    .line 787
    move-result-object v12

    .line 788
    .line 789
    .line 790
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 791
    move-result-object v11

    .line 792
    .line 793
    .line 794
    invoke-interface {v7, v12, v0, v11}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    move-result-object v11

    .line 796
    .line 797
    .line 798
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/animation/core/Transition;->k()Landroidx/compose/animation/core/Transition$Segment;

    .line 799
    move-result-object v12

    .line 800
    .line 801
    shr-int/lit8 v15, v4, 0x3

    .line 802
    .line 803
    and-int/lit8 v15, v15, 0x70

    .line 804
    .line 805
    .line 806
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 807
    move-result-object v15

    .line 808
    .line 809
    .line 810
    invoke-interface {v9, v12, v0, v15}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    move-result-object v9

    .line 812
    move-object v12, v9

    .line 813
    .line 814
    check-cast v12, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 815
    .line 816
    and-int/lit8 v9, v4, 0xe

    .line 817
    .line 818
    shl-int/lit8 v15, v4, 0x9

    .line 819
    .line 820
    .line 821
    const v16, 0xe000

    .line 822
    .line 823
    and-int v15, v15, v16

    .line 824
    or-int/2addr v9, v15

    .line 825
    .line 826
    shl-int/lit8 v4, v4, 0x6

    .line 827
    .line 828
    and-int v4, v4, v17

    .line 829
    .line 830
    or-int v16, v9, v4

    .line 831
    .line 832
    move-object/from16 v9, v18

    .line 833
    move-object v15, v0

    .line 834
    .line 835
    .line 836
    invoke-static/range {v9 .. v16}, Landroidx/compose/animation/core/TransitionKt;->c(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 837
    move-result-object v4

    .line 838
    .line 839
    .line 840
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 841
    .line 842
    .line 843
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 844
    .line 845
    .line 846
    invoke-static {v3}, Landroidx/compose/material/TextFieldTransitionScope;->b(Landroidx/compose/runtime/State;)F

    .line 847
    move-result v3

    .line 848
    .line 849
    .line 850
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 851
    move-result-object v10

    .line 852
    .line 853
    .line 854
    invoke-static {v2}, Landroidx/compose/material/TextFieldTransitionScope;->d(Landroidx/compose/runtime/State;)J

    .line 855
    move-result-wide v2

    .line 856
    .line 857
    .line 858
    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/Color;->h(J)Landroidx/compose/ui/graphics/Color;

    .line 859
    move-result-object v11

    .line 860
    .line 861
    .line 862
    invoke-static {v4}, Landroidx/compose/material/TextFieldTransitionScope;->e(Landroidx/compose/runtime/State;)J

    .line 863
    move-result-wide v2

    .line 864
    .line 865
    .line 866
    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/Color;->h(J)Landroidx/compose/ui/graphics/Color;

    .line 867
    move-result-object v12

    .line 868
    .line 869
    .line 870
    invoke-static/range {v19 .. v19}, Landroidx/compose/material/TextFieldTransitionScope;->c(Landroidx/compose/runtime/State;)F

    .line 871
    move-result v2

    .line 872
    .line 873
    .line 874
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 875
    move-result-object v13

    .line 876
    const/4 v2, 0x3

    .line 877
    shr-int/2addr v1, v2

    .line 878
    .line 879
    .line 880
    const v2, 0xe000

    .line 881
    and-int/2addr v1, v2

    .line 882
    .line 883
    .line 884
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 885
    move-result-object v15

    .line 886
    .line 887
    move-object/from16 v9, p8

    .line 888
    move-object v14, v0

    .line 889
    .line 890
    .line 891
    invoke-interface/range {v9 .. v15}, Le8/t;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 892
    .line 893
    .line 894
    :goto_11
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 895
    move-result-object v11

    .line 896
    .line 897
    if-nez v11, :cond_21

    .line 898
    goto :goto_12

    .line 899
    .line 900
    :cond_21
    new-instance v12, Landroidx/compose/material/TextFieldTransitionScope$Transition$1;

    .line 901
    move-object v0, v12

    .line 902
    .line 903
    move-object/from16 v1, p0

    .line 904
    .line 905
    move-object/from16 v2, p1

    .line 906
    .line 907
    move-wide/from16 v3, p2

    .line 908
    .line 909
    move-wide/from16 v5, p4

    .line 910
    .line 911
    move-object/from16 v7, p6

    .line 912
    .line 913
    move/from16 v8, p7

    .line 914
    .line 915
    move-object/from16 v9, p8

    .line 916
    .line 917
    move/from16 v10, p10

    .line 918
    .line 919
    .line 920
    invoke-direct/range {v0 .. v10}, Landroidx/compose/material/TextFieldTransitionScope$Transition$1;-><init>(Landroidx/compose/material/TextFieldTransitionScope;Landroidx/compose/material/InputPhase;JJLe8/q;ZLe8/t;I)V

    .line 921
    .line 922
    .line 923
    invoke-interface {v11, v12}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 924
    :goto_12
    return-void
.end method
