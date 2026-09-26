.class public final Landroidx/compose/material/TextFieldDefaults;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/Immutable;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextFieldDefaults.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextFieldDefaults.kt\nandroidx/compose/material/TextFieldDefaults\n+ 2 InspectableValue.kt\nandroidx/compose/ui/platform/InspectableValueKt\n+ 3 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 4 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,854:1\n135#2:855\n76#3:856\n76#3:857\n155#4:858\n155#4:859\n155#4:860\n155#4:861\n*S KotlinDebug\n*F\n+ 1 TextFieldDefaults.kt\nandroidx/compose/material/TextFieldDefaults\n*L\n272#1:855\n377#1:856\n435#1:857\n195#1:858\n201#1:859\n230#1:860\n236#1:861\n*E\n"
.end annotation


# static fields
.field public static final BackgroundOpacity:F = 0.12f

.field private static final FocusedBorderThickness:F

.field public static final INSTANCE:Landroidx/compose/material/TextFieldDefaults;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final IconOpacity:F = 0.54f

.field private static final MinHeight:F

.field private static final MinWidth:F

.field private static final UnfocusedBorderThickness:F

.field public static final UnfocusedIndicatorLineOpacity:F = 0.42f


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/material/TextFieldDefaults;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/compose/material/TextFieldDefaults;-><init>()V

    .line 6
    .line 7
    sput-object v0, Landroidx/compose/material/TextFieldDefaults;->INSTANCE:Landroidx/compose/material/TextFieldDefaults;

    .line 8
    .line 9
    const/16 v0, 0x38

    .line 10
    int-to-float v0, v0

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 14
    move-result v0

    .line 15
    .line 16
    sput v0, Landroidx/compose/material/TextFieldDefaults;->MinHeight:F

    .line 17
    .line 18
    const/16 v0, 0x118

    .line 19
    int-to-float v0, v0

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 23
    move-result v0

    .line 24
    .line 25
    sput v0, Landroidx/compose/material/TextFieldDefaults;->MinWidth:F

    .line 26
    const/4 v0, 0x1

    .line 27
    int-to-float v0, v0

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 31
    move-result v0

    .line 32
    .line 33
    sput v0, Landroidx/compose/material/TextFieldDefaults;->UnfocusedBorderThickness:F

    .line 34
    const/4 v0, 0x2

    .line 35
    int-to-float v0, v0

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 39
    move-result v0

    .line 40
    .line 41
    sput v0, Landroidx/compose/material/TextFieldDefaults;->FocusedBorderThickness:F

    .line 42
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

.method public static synthetic i(Landroidx/compose/material/TextFieldDefaults;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/material/TextFieldColors;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 9

    .line 1
    .line 2
    and-int/lit8 v0, p8, 0x10

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    sget v0, Landroidx/compose/material/TextFieldDefaults;->FocusedBorderThickness:F

    .line 7
    move v7, v0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v7, p6

    .line 10
    .line 11
    :goto_0
    and-int/lit8 v0, p8, 0x20

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    sget v0, Landroidx/compose/material/TextFieldDefaults;->UnfocusedBorderThickness:F

    .line 16
    move v8, v0

    .line 17
    goto :goto_1

    .line 18
    .line 19
    :cond_1
    move/from16 v8, p7

    .line 20
    :goto_1
    move-object v1, p0

    .line 21
    move-object v2, p1

    .line 22
    move v3, p2

    .line 23
    move v4, p3

    .line 24
    move-object v5, p4

    .line 25
    move-object v6, p5

    .line 26
    .line 27
    .line 28
    invoke-virtual/range {v1 .. v8}, Landroidx/compose/material/TextFieldDefaults;->h(Landroidx/compose/ui/Modifier;ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/material/TextFieldColors;FF)Landroidx/compose/ui/Modifier;

    .line 29
    move-result-object v0

    .line 30
    return-object v0
.end method

.method public static synthetic l(Landroidx/compose/material/TextFieldDefaults;FFFFILjava/lang/Object;)Landroidx/compose/foundation/layout/PaddingValues;
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p6, p5, 0x1

    .line 3
    .line 4
    if-eqz p6, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroidx/compose/material/TextFieldImplKt;->f()F

    .line 8
    move-result p1

    .line 9
    .line 10
    :cond_0
    and-int/lit8 p6, p5, 0x2

    .line 11
    .line 12
    if-eqz p6, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-static {}, Landroidx/compose/material/TextFieldImplKt;->f()F

    .line 16
    move-result p2

    .line 17
    .line 18
    :cond_1
    and-int/lit8 p6, p5, 0x4

    .line 19
    .line 20
    if-eqz p6, :cond_2

    .line 21
    .line 22
    .line 23
    invoke-static {}, Landroidx/compose/material/TextFieldImplKt;->f()F

    .line 24
    move-result p3

    .line 25
    .line 26
    :cond_2
    and-int/lit8 p5, p5, 0x8

    .line 27
    .line 28
    if-eqz p5, :cond_3

    .line 29
    .line 30
    .line 31
    invoke-static {}, Landroidx/compose/material/TextFieldImplKt;->f()F

    .line 32
    move-result p4

    .line 33
    .line 34
    .line 35
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/material/TextFieldDefaults;->k(FFFF)Landroidx/compose/foundation/layout/PaddingValues;

    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method

.method public static synthetic o(Landroidx/compose/material/TextFieldDefaults;FFFFILjava/lang/Object;)Landroidx/compose/foundation/layout/PaddingValues;
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p6, p5, 0x1

    .line 3
    .line 4
    if-eqz p6, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroidx/compose/material/TextFieldImplKt;->f()F

    .line 8
    move-result p1

    .line 9
    .line 10
    :cond_0
    and-int/lit8 p6, p5, 0x2

    .line 11
    .line 12
    if-eqz p6, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-static {}, Landroidx/compose/material/TextFieldImplKt;->f()F

    .line 16
    move-result p2

    .line 17
    .line 18
    :cond_1
    and-int/lit8 p6, p5, 0x4

    .line 19
    .line 20
    if-eqz p6, :cond_2

    .line 21
    .line 22
    .line 23
    invoke-static {}, Landroidx/compose/material/TextFieldKt;->k()F

    .line 24
    move-result p3

    .line 25
    .line 26
    :cond_2
    and-int/lit8 p5, p5, 0x8

    .line 27
    .line 28
    if-eqz p5, :cond_3

    .line 29
    .line 30
    .line 31
    invoke-static {}, Landroidx/compose/material/TextFieldKt;->l()F

    .line 32
    move-result p4

    .line 33
    .line 34
    .line 35
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/material/TextFieldDefaults;->n(FFFF)Landroidx/compose/foundation/layout/PaddingValues;

    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method

.method public static synthetic q(Landroidx/compose/material/TextFieldDefaults;FFFFILjava/lang/Object;)Landroidx/compose/foundation/layout/PaddingValues;
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p6, p5, 0x1

    .line 3
    .line 4
    if-eqz p6, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroidx/compose/material/TextFieldImplKt;->f()F

    .line 8
    move-result p1

    .line 9
    .line 10
    :cond_0
    and-int/lit8 p6, p5, 0x2

    .line 11
    .line 12
    if-eqz p6, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-static {}, Landroidx/compose/material/TextFieldImplKt;->f()F

    .line 16
    move-result p2

    .line 17
    .line 18
    :cond_1
    and-int/lit8 p6, p5, 0x4

    .line 19
    .line 20
    if-eqz p6, :cond_2

    .line 21
    .line 22
    .line 23
    invoke-static {}, Landroidx/compose/material/TextFieldImplKt;->f()F

    .line 24
    move-result p3

    .line 25
    .line 26
    :cond_2
    and-int/lit8 p5, p5, 0x8

    .line 27
    .line 28
    if-eqz p5, :cond_3

    .line 29
    .line 30
    .line 31
    invoke-static {}, Landroidx/compose/material/TextFieldImplKt;->f()F

    .line 32
    move-result p4

    .line 33
    .line 34
    .line 35
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/material/TextFieldDefaults;->p(FFFF)Landroidx/compose/foundation/layout/PaddingValues;

    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method


# virtual methods
.method public final a(ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/material/TextFieldColors;Landroidx/compose/ui/graphics/Shape;FFLandroidx/compose/runtime/Composer;II)V
    .locals 19
    .param p3    # Landroidx/compose/foundation/interaction/InteractionSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/material/TextFieldColors;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/ui/graphics/Shape;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/material/ExperimentalMaterialApi;
    .end annotation

    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v11, p0

    .line 3
    .line 4
    move-object/from16 v8, p3

    .line 5
    .line 6
    move-object/from16 v9, p4

    .line 7
    .line 8
    move/from16 v10, p9

    .line 9
    .line 10
    move/from16 v12, p10

    .line 11
    .line 12
    const-string v0, "interactionSource"

    .line 13
    .line 14
    .line 15
    invoke-static {v8, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    const-string v0, "colors"

    .line 18
    .line 19
    .line 20
    invoke-static {v9, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const v0, 0x38408b26

    .line 24
    .line 25
    move-object/from16 v1, p8

    .line 26
    .line 27
    .line 28
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 29
    move-result-object v13

    .line 30
    .line 31
    and-int/lit8 v0, v12, 0x1

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    or-int/lit8 v0, v10, 0x6

    .line 36
    .line 37
    move/from16 v14, p1

    .line 38
    goto :goto_1

    .line 39
    .line 40
    :cond_0
    and-int/lit8 v0, v10, 0xe

    .line 41
    .line 42
    move/from16 v14, p1

    .line 43
    .line 44
    if-nez v0, :cond_2

    .line 45
    .line 46
    .line 47
    invoke-interface {v13, v14}, Landroidx/compose/runtime/Composer;->m(Z)Z

    .line 48
    move-result v0

    .line 49
    .line 50
    if-eqz v0, :cond_1

    .line 51
    const/4 v0, 0x4

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const/4 v0, 0x2

    .line 54
    :goto_0
    or-int/2addr v0, v10

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    move v0, v10

    .line 57
    .line 58
    :goto_1
    and-int/lit8 v1, v12, 0x2

    .line 59
    .line 60
    if-eqz v1, :cond_3

    .line 61
    .line 62
    or-int/lit8 v0, v0, 0x30

    .line 63
    .line 64
    move/from16 v15, p2

    .line 65
    goto :goto_3

    .line 66
    .line 67
    :cond_3
    and-int/lit8 v1, v10, 0x70

    .line 68
    .line 69
    move/from16 v15, p2

    .line 70
    .line 71
    if-nez v1, :cond_5

    .line 72
    .line 73
    .line 74
    invoke-interface {v13, v15}, Landroidx/compose/runtime/Composer;->m(Z)Z

    .line 75
    move-result v1

    .line 76
    .line 77
    if-eqz v1, :cond_4

    .line 78
    .line 79
    const/16 v1, 0x20

    .line 80
    goto :goto_2

    .line 81
    .line 82
    :cond_4
    const/16 v1, 0x10

    .line 83
    :goto_2
    or-int/2addr v0, v1

    .line 84
    .line 85
    :cond_5
    :goto_3
    and-int/lit8 v1, v12, 0x4

    .line 86
    .line 87
    if-eqz v1, :cond_6

    .line 88
    .line 89
    or-int/lit16 v0, v0, 0x180

    .line 90
    goto :goto_5

    .line 91
    .line 92
    :cond_6
    and-int/lit16 v1, v10, 0x380

    .line 93
    .line 94
    if-nez v1, :cond_8

    .line 95
    .line 96
    .line 97
    invoke-interface {v13, v8}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 98
    move-result v1

    .line 99
    .line 100
    if-eqz v1, :cond_7

    .line 101
    .line 102
    const/16 v1, 0x100

    .line 103
    goto :goto_4

    .line 104
    .line 105
    :cond_7
    const/16 v1, 0x80

    .line 106
    :goto_4
    or-int/2addr v0, v1

    .line 107
    .line 108
    :cond_8
    :goto_5
    and-int/lit8 v1, v12, 0x8

    .line 109
    .line 110
    if-eqz v1, :cond_9

    .line 111
    .line 112
    or-int/lit16 v0, v0, 0xc00

    .line 113
    goto :goto_7

    .line 114
    .line 115
    :cond_9
    and-int/lit16 v1, v10, 0x1c00

    .line 116
    .line 117
    if-nez v1, :cond_b

    .line 118
    .line 119
    .line 120
    invoke-interface {v13, v9}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 121
    move-result v1

    .line 122
    .line 123
    if-eqz v1, :cond_a

    .line 124
    .line 125
    const/16 v1, 0x800

    .line 126
    goto :goto_6

    .line 127
    .line 128
    :cond_a
    const/16 v1, 0x400

    .line 129
    :goto_6
    or-int/2addr v0, v1

    .line 130
    .line 131
    .line 132
    :cond_b
    :goto_7
    const v1, 0xe000

    .line 133
    .line 134
    and-int v2, v10, v1

    .line 135
    .line 136
    if-nez v2, :cond_e

    .line 137
    .line 138
    and-int/lit8 v2, v12, 0x10

    .line 139
    .line 140
    if-nez v2, :cond_c

    .line 141
    .line 142
    move-object/from16 v2, p5

    .line 143
    .line 144
    .line 145
    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 146
    move-result v3

    .line 147
    .line 148
    if-eqz v3, :cond_d

    .line 149
    .line 150
    const/16 v3, 0x4000

    .line 151
    goto :goto_8

    .line 152
    .line 153
    :cond_c
    move-object/from16 v2, p5

    .line 154
    .line 155
    :cond_d
    const/16 v3, 0x2000

    .line 156
    :goto_8
    or-int/2addr v0, v3

    .line 157
    goto :goto_9

    .line 158
    .line 159
    :cond_e
    move-object/from16 v2, p5

    .line 160
    .line 161
    :goto_9
    const/high16 v3, 0x70000

    .line 162
    .line 163
    and-int v4, v10, v3

    .line 164
    .line 165
    if-nez v4, :cond_11

    .line 166
    .line 167
    and-int/lit8 v4, v12, 0x20

    .line 168
    .line 169
    if-nez v4, :cond_f

    .line 170
    .line 171
    move/from16 v4, p6

    .line 172
    .line 173
    .line 174
    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->n(F)Z

    .line 175
    move-result v5

    .line 176
    .line 177
    if-eqz v5, :cond_10

    .line 178
    .line 179
    const/high16 v5, 0x20000

    .line 180
    goto :goto_a

    .line 181
    .line 182
    :cond_f
    move/from16 v4, p6

    .line 183
    .line 184
    :cond_10
    const/high16 v5, 0x10000

    .line 185
    :goto_a
    or-int/2addr v0, v5

    .line 186
    goto :goto_b

    .line 187
    .line 188
    :cond_11
    move/from16 v4, p6

    .line 189
    .line 190
    :goto_b
    const/high16 v5, 0x380000

    .line 191
    and-int/2addr v5, v10

    .line 192
    .line 193
    if-nez v5, :cond_14

    .line 194
    .line 195
    and-int/lit8 v5, v12, 0x40

    .line 196
    .line 197
    if-nez v5, :cond_12

    .line 198
    .line 199
    move/from16 v5, p7

    .line 200
    .line 201
    .line 202
    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->n(F)Z

    .line 203
    move-result v6

    .line 204
    .line 205
    if-eqz v6, :cond_13

    .line 206
    .line 207
    const/high16 v6, 0x100000

    .line 208
    goto :goto_c

    .line 209
    .line 210
    :cond_12
    move/from16 v5, p7

    .line 211
    .line 212
    :cond_13
    const/high16 v6, 0x80000

    .line 213
    :goto_c
    or-int/2addr v0, v6

    .line 214
    goto :goto_d

    .line 215
    .line 216
    :cond_14
    move/from16 v5, p7

    .line 217
    .line 218
    :goto_d
    and-int/lit16 v6, v12, 0x80

    .line 219
    .line 220
    if-eqz v6, :cond_15

    .line 221
    .line 222
    const/high16 v6, 0xc00000

    .line 223
    :goto_e
    or-int/2addr v0, v6

    .line 224
    goto :goto_f

    .line 225
    .line 226
    :cond_15
    const/high16 v6, 0x1c00000

    .line 227
    and-int/2addr v6, v10

    .line 228
    .line 229
    if-nez v6, :cond_17

    .line 230
    .line 231
    .line 232
    invoke-interface {v13, v11}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 233
    move-result v6

    .line 234
    .line 235
    if-eqz v6, :cond_16

    .line 236
    .line 237
    const/high16 v6, 0x800000

    .line 238
    goto :goto_e

    .line 239
    .line 240
    :cond_16
    const/high16 v6, 0x400000

    .line 241
    goto :goto_e

    .line 242
    .line 243
    .line 244
    :cond_17
    :goto_f
    const v6, 0x16db6db

    .line 245
    and-int/2addr v6, v0

    .line 246
    .line 247
    .line 248
    const v7, 0x492492

    .line 249
    .line 250
    if-ne v6, v7, :cond_19

    .line 251
    .line 252
    .line 253
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->b()Z

    .line 254
    move-result v6

    .line 255
    .line 256
    if-nez v6, :cond_18

    .line 257
    goto :goto_10

    .line 258
    .line 259
    .line 260
    :cond_18
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->g()V

    .line 261
    move-object v6, v2

    .line 262
    move v7, v4

    .line 263
    move v8, v5

    .line 264
    .line 265
    goto/16 :goto_14

    .line 266
    .line 267
    .line 268
    :cond_19
    :goto_10
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->J()V

    .line 269
    .line 270
    and-int/lit8 v6, v10, 0x1

    .line 271
    .line 272
    .line 273
    const v7, -0x380001

    .line 274
    .line 275
    .line 276
    const v16, -0x70001

    .line 277
    .line 278
    .line 279
    const v17, -0xe001

    .line 280
    .line 281
    if-eqz v6, :cond_1e

    .line 282
    .line 283
    .line 284
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->h()Z

    .line 285
    move-result v6

    .line 286
    .line 287
    if-eqz v6, :cond_1a

    .line 288
    goto :goto_12

    .line 289
    .line 290
    .line 291
    :cond_1a
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->g()V

    .line 292
    .line 293
    and-int/lit8 v6, v12, 0x10

    .line 294
    .line 295
    if-eqz v6, :cond_1b

    .line 296
    .line 297
    and-int v0, v0, v17

    .line 298
    .line 299
    :cond_1b
    and-int/lit8 v6, v12, 0x20

    .line 300
    .line 301
    if-eqz v6, :cond_1c

    .line 302
    .line 303
    and-int v0, v0, v16

    .line 304
    .line 305
    :cond_1c
    and-int/lit8 v6, v12, 0x40

    .line 306
    .line 307
    if-eqz v6, :cond_1d

    .line 308
    :goto_11
    and-int/2addr v0, v7

    .line 309
    :cond_1d
    move-object v7, v2

    .line 310
    .line 311
    move/from16 v16, v4

    .line 312
    .line 313
    move/from16 v17, v5

    .line 314
    goto :goto_13

    .line 315
    .line 316
    :cond_1e
    :goto_12
    and-int/lit8 v6, v12, 0x10

    .line 317
    .line 318
    if-eqz v6, :cond_1f

    .line 319
    .line 320
    shr-int/lit8 v2, v0, 0x15

    .line 321
    .line 322
    and-int/lit8 v2, v2, 0xe

    .line 323
    .line 324
    .line 325
    invoke-virtual {v11, v13, v2}, Landroidx/compose/material/TextFieldDefaults;->f(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    .line 326
    move-result-object v2

    .line 327
    .line 328
    and-int v0, v0, v17

    .line 329
    .line 330
    :cond_1f
    and-int/lit8 v6, v12, 0x20

    .line 331
    .line 332
    if-eqz v6, :cond_20

    .line 333
    .line 334
    sget v4, Landroidx/compose/material/TextFieldDefaults;->FocusedBorderThickness:F

    .line 335
    .line 336
    and-int v0, v0, v16

    .line 337
    .line 338
    :cond_20
    and-int/lit8 v6, v12, 0x40

    .line 339
    .line 340
    if-eqz v6, :cond_1d

    .line 341
    .line 342
    sget v5, Landroidx/compose/material/TextFieldDefaults;->UnfocusedBorderThickness:F

    .line 343
    goto :goto_11

    .line 344
    .line 345
    .line 346
    :goto_13
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->A()V

    .line 347
    .line 348
    and-int/lit8 v2, v0, 0xe

    .line 349
    .line 350
    and-int/lit8 v4, v0, 0x70

    .line 351
    or-int/2addr v2, v4

    .line 352
    .line 353
    and-int/lit16 v4, v0, 0x380

    .line 354
    or-int/2addr v2, v4

    .line 355
    .line 356
    and-int/lit16 v4, v0, 0x1c00

    .line 357
    or-int/2addr v2, v4

    .line 358
    .line 359
    shr-int/lit8 v0, v0, 0x3

    .line 360
    and-int/2addr v1, v0

    .line 361
    or-int/2addr v1, v2

    .line 362
    and-int/2addr v0, v3

    .line 363
    .line 364
    or-int v18, v1, v0

    .line 365
    .line 366
    move/from16 v0, p1

    .line 367
    .line 368
    move/from16 v1, p2

    .line 369
    .line 370
    move-object/from16 v2, p3

    .line 371
    .line 372
    move-object/from16 v3, p4

    .line 373
    .line 374
    move/from16 v4, v16

    .line 375
    .line 376
    move/from16 v5, v17

    .line 377
    move-object v6, v13

    .line 378
    move-object v8, v7

    .line 379
    .line 380
    move/from16 v7, v18

    .line 381
    .line 382
    .line 383
    invoke-static/range {v0 .. v7}, Landroidx/compose/material/TextFieldDefaultsKt;->a(ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/material/TextFieldColors;FFLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 384
    move-result-object v0

    .line 385
    .line 386
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 387
    .line 388
    .line 389
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 390
    move-result-object v0

    .line 391
    .line 392
    check-cast v0, Landroidx/compose/foundation/BorderStroke;

    .line 393
    .line 394
    .line 395
    invoke-static {v1, v0, v8}, Landroidx/compose/foundation/BorderKt;->f(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 396
    move-result-object v0

    .line 397
    const/4 v1, 0x0

    .line 398
    .line 399
    .line 400
    invoke-static {v0, v13, v1}, Landroidx/compose/foundation/layout/BoxKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 401
    move-object v6, v8

    .line 402
    .line 403
    move/from16 v7, v16

    .line 404
    .line 405
    move/from16 v8, v17

    .line 406
    .line 407
    .line 408
    :goto_14
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 409
    move-result-object v13

    .line 410
    .line 411
    if-nez v13, :cond_21

    .line 412
    goto :goto_15

    .line 413
    .line 414
    :cond_21
    new-instance v5, Landroidx/compose/material/TextFieldDefaults$BorderBox$1;

    .line 415
    move-object v0, v5

    .line 416
    .line 417
    move-object/from16 v1, p0

    .line 418
    .line 419
    move/from16 v2, p1

    .line 420
    .line 421
    move/from16 v3, p2

    .line 422
    .line 423
    move-object/from16 v4, p3

    .line 424
    move-object v14, v5

    .line 425
    .line 426
    move-object/from16 v5, p4

    .line 427
    .line 428
    move/from16 v9, p9

    .line 429
    .line 430
    move/from16 v10, p10

    .line 431
    .line 432
    .line 433
    invoke-direct/range {v0 .. v10}, Landroidx/compose/material/TextFieldDefaults$BorderBox$1;-><init>(Landroidx/compose/material/TextFieldDefaults;ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/material/TextFieldColors;Landroidx/compose/ui/graphics/Shape;FFII)V

    .line 434
    .line 435
    .line 436
    invoke-interface {v13, v14}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 437
    :goto_15
    return-void
.end method

.method public final b(Ljava/lang/String;Le8/p;ZZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/InteractionSource;ZLe8/p;Le8/p;Le8/p;Le8/p;Landroidx/compose/material/TextFieldColors;Landroidx/compose/foundation/layout/PaddingValues;Le8/p;Landroidx/compose/runtime/Composer;III)V
    .locals 68
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/ui/text/input/VisualTransformation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Landroidx/compose/foundation/interaction/InteractionSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Landroidx/compose/material/TextFieldColors;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Landroidx/compose/foundation/layout/PaddingValues;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p14    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p15    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/material/ExperimentalMaterialApi;
    .end annotation

    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;ZZ",
            "Landroidx/compose/ui/text/input/VisualTransformation;",
            "Landroidx/compose/foundation/interaction/InteractionSource;",
            "Z",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/material/TextFieldColors;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    move-object/from16 v15, p1

    move-object/from16 v14, p2

    move-object/from16 v13, p5

    move-object/from16 v12, p6

    move/from16 v11, p16

    move/from16 v10, p17

    move/from16 v9, p18

    const-string v0, "value"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "innerTextField"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visualTransformation"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interactionSource"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x4c56424d

    move-object/from16 v1, p15

    .line 1
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    move-result-object v8

    and-int/lit8 v0, v9, 0x1

    if-eqz v0, :cond_0

    or-int/lit8 v0, v11, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v0, v11, 0xe

    if-nez v0, :cond_2

    invoke-interface {v8, v15}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v11

    goto :goto_1

    :cond_2
    move v0, v11

    :goto_1
    and-int/lit8 v3, v9, 0x2

    if-eqz v3, :cond_3

    or-int/lit8 v0, v0, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v3, v11, 0x70

    if-nez v3, :cond_5

    invoke-interface {v8, v14}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x20

    goto :goto_2

    :cond_4
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v0, v3

    :cond_5
    :goto_3
    and-int/lit8 v3, v9, 0x4

    if-eqz v3, :cond_7

    or-int/lit16 v0, v0, 0x180

    :cond_6
    move/from16 v3, p3

    goto :goto_5

    :cond_7
    and-int/lit16 v3, v11, 0x380

    if-nez v3, :cond_6

    move/from16 v3, p3

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->m(Z)Z

    move-result v16

    if-eqz v16, :cond_8

    const/16 v16, 0x100

    goto :goto_4

    :cond_8
    const/16 v16, 0x80

    :goto_4
    or-int v0, v0, v16

    :goto_5
    and-int/lit8 v16, v9, 0x8

    const/16 v17, 0x400

    const/16 v18, 0x800

    if-eqz v16, :cond_a

    or-int/lit16 v0, v0, 0xc00

    :cond_9
    move/from16 v1, p4

    goto :goto_7

    :cond_a
    and-int/lit16 v1, v11, 0x1c00

    if-nez v1, :cond_9

    move/from16 v1, p4

    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->m(Z)Z

    move-result v16

    if-eqz v16, :cond_b

    move/from16 v16, v18

    goto :goto_6

    :cond_b
    move/from16 v16, v17

    :goto_6
    or-int v0, v0, v16

    :goto_7
    and-int/lit8 v16, v9, 0x10

    const/16 v19, 0x2000

    const/16 v20, 0x4000

    const v64, 0xe000

    if-eqz v16, :cond_c

    or-int/lit16 v0, v0, 0x6000

    goto :goto_9

    :cond_c
    and-int v16, v11, v64

    if-nez v16, :cond_e

    invoke-interface {v8, v13}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_d

    move/from16 v16, v20

    goto :goto_8

    :cond_d
    move/from16 v16, v19

    :goto_8
    or-int v0, v0, v16

    :cond_e
    :goto_9
    and-int/lit8 v16, v9, 0x20

    if-eqz v16, :cond_f

    const/high16 v16, 0x30000

    :goto_a
    or-int v0, v0, v16

    goto :goto_b

    :cond_f
    const/high16 v16, 0x70000

    and-int v16, v11, v16

    if-nez v16, :cond_11

    invoke-interface {v8, v12}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_10

    const/high16 v16, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v16, 0x10000

    goto :goto_a

    :cond_11
    :goto_b
    and-int/lit8 v16, v9, 0x40

    if-eqz v16, :cond_12

    const/high16 v21, 0x180000

    or-int v0, v0, v21

    move/from16 v2, p7

    goto :goto_d

    :cond_12
    const/high16 v21, 0x380000

    and-int v21, v11, v21

    move/from16 v2, p7

    if-nez v21, :cond_14

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->m(Z)Z

    move-result v22

    if-eqz v22, :cond_13

    const/high16 v22, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v22, 0x80000

    :goto_c
    or-int v0, v0, v22

    :cond_14
    :goto_d
    and-int/lit16 v4, v9, 0x80

    if-eqz v4, :cond_15

    const/high16 v23, 0xc00000

    or-int v0, v0, v23

    move-object/from16 v5, p8

    goto :goto_f

    :cond_15
    const/high16 v23, 0x1c00000

    and-int v23, v11, v23

    move-object/from16 v5, p8

    if-nez v23, :cond_17

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_16

    const/high16 v24, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v24, 0x400000

    :goto_e
    or-int v0, v0, v24

    :cond_17
    :goto_f
    and-int/lit16 v6, v9, 0x100

    if-eqz v6, :cond_18

    const/high16 v25, 0x6000000

    or-int v0, v0, v25

    move-object/from16 v7, p9

    goto :goto_11

    :cond_18
    const/high16 v25, 0xe000000

    and-int v25, v11, v25

    move-object/from16 v7, p9

    if-nez v25, :cond_1a

    invoke-interface {v8, v7}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_19

    const/high16 v26, 0x4000000

    goto :goto_10

    :cond_19
    const/high16 v26, 0x2000000

    :goto_10
    or-int v0, v0, v26

    :cond_1a
    :goto_11
    and-int/lit16 v1, v9, 0x200

    if-eqz v1, :cond_1c

    const/high16 v26, 0x30000000

    or-int v0, v0, v26

    move-object/from16 v2, p10

    :cond_1b
    :goto_12
    move/from16 v65, v0

    goto :goto_14

    :cond_1c
    const/high16 v26, 0x70000000

    and-int v26, v11, v26

    move-object/from16 v2, p10

    if-nez v26, :cond_1b

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1d

    const/high16 v26, 0x20000000

    goto :goto_13

    :cond_1d
    const/high16 v26, 0x10000000

    :goto_13
    or-int v0, v0, v26

    goto :goto_12

    :goto_14
    and-int/lit16 v0, v9, 0x400

    if-eqz v0, :cond_1e

    or-int/lit8 v21, v10, 0x6

    move-object/from16 v2, p11

    goto :goto_16

    :cond_1e
    and-int/lit8 v26, v10, 0xe

    move-object/from16 v2, p11

    if-nez v26, :cond_20

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1f

    const/16 v21, 0x4

    goto :goto_15

    :cond_1f
    const/16 v21, 0x2

    :goto_15
    or-int v21, v10, v21

    goto :goto_16

    :cond_20
    move/from16 v21, v10

    :goto_16
    and-int/lit8 v26, v10, 0x70

    if-nez v26, :cond_23

    and-int/lit16 v2, v9, 0x800

    if-nez v2, :cond_21

    move-object/from16 v2, p12

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_22

    const/16 v22, 0x20

    goto :goto_17

    :cond_21
    move-object/from16 v2, p12

    :cond_22
    const/16 v22, 0x10

    :goto_17
    or-int v21, v21, v22

    goto :goto_18

    :cond_23
    move-object/from16 v2, p12

    :goto_18
    and-int/lit16 v2, v10, 0x380

    if-nez v2, :cond_26

    and-int/lit16 v2, v9, 0x1000

    if-nez v2, :cond_24

    move-object/from16 v2, p13

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_25

    const/16 v24, 0x100

    goto :goto_19

    :cond_24
    move-object/from16 v2, p13

    :cond_25
    const/16 v24, 0x80

    :goto_19
    or-int v21, v21, v24

    :goto_1a
    move/from16 v2, v21

    goto :goto_1b

    :cond_26
    move-object/from16 v2, p13

    goto :goto_1a

    :goto_1b
    and-int/lit16 v3, v9, 0x2000

    if-eqz v3, :cond_28

    or-int/lit16 v2, v2, 0xc00

    :cond_27
    move-object/from16 v5, p14

    goto :goto_1c

    :cond_28
    and-int/lit16 v5, v10, 0x1c00

    if-nez v5, :cond_27

    move-object/from16 v5, p14

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_29

    move/from16 v17, v18

    :cond_29
    or-int v2, v2, v17

    :goto_1c
    and-int/lit16 v5, v9, 0x4000

    if-eqz v5, :cond_2b

    or-int/lit16 v2, v2, 0x6000

    :cond_2a
    move-object/from16 v5, p0

    goto :goto_1d

    :cond_2b
    and-int v5, v10, v64

    if-nez v5, :cond_2a

    move-object/from16 v5, p0

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2c

    move/from16 v19, v20

    :cond_2c
    or-int v2, v2, v19

    :goto_1d
    const v17, 0x5b6db6db

    and-int v5, v65, v17

    const v7, 0x12492492

    if-ne v5, v7, :cond_2e

    const v5, 0xb6db

    and-int/2addr v5, v2

    const/16 v7, 0x2492

    if-ne v5, v7, :cond_2e

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->b()Z

    move-result v5

    if-nez v5, :cond_2d

    goto :goto_1e

    .line 2
    :cond_2d
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->g()V

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v27, v8

    move/from16 v8, p7

    goto/16 :goto_29

    .line 3
    :cond_2e
    :goto_1e
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->J()V

    and-int/lit8 v5, v11, 0x1

    if-eqz v5, :cond_32

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->h()Z

    move-result v5

    if-eqz v5, :cond_2f

    goto :goto_1f

    .line 4
    :cond_2f
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->g()V

    and-int/lit16 v0, v9, 0x800

    if-eqz v0, :cond_30

    and-int/lit8 v2, v2, -0x71

    :cond_30
    and-int/lit16 v0, v9, 0x1000

    if-eqz v0, :cond_31

    and-int/lit16 v2, v2, -0x381

    :cond_31
    move/from16 v19, p7

    move-object/from16 v20, p8

    move-object/from16 v21, p9

    move-object/from16 v22, p10

    move-object/from16 v23, p11

    move-object/from16 v24, p12

    move-object/from16 v25, p13

    move-object/from16 v26, p14

    goto/16 :goto_28

    :cond_32
    :goto_1f
    if-eqz v16, :cond_33

    const/4 v5, 0x0

    goto :goto_20

    :cond_33
    move/from16 v5, p7

    :goto_20
    const/4 v7, 0x0

    if-eqz v4, :cond_34

    move-object v4, v7

    goto :goto_21

    :cond_34
    move-object/from16 v4, p8

    :goto_21
    if-eqz v6, :cond_35

    move-object v6, v7

    goto :goto_22

    :cond_35
    move-object/from16 v6, p9

    :goto_22
    if-eqz v1, :cond_36

    move-object v1, v7

    goto :goto_23

    :cond_36
    move-object/from16 v1, p10

    :goto_23
    if-eqz v0, :cond_37

    goto :goto_24

    :cond_37
    move-object/from16 v7, p11

    :goto_24
    and-int/lit16 v0, v9, 0x800

    if-eqz v0, :cond_38

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    const-wide/16 v31, 0x0

    const-wide/16 v33, 0x0

    const-wide/16 v35, 0x0

    const-wide/16 v37, 0x0

    const-wide/16 v39, 0x0

    const-wide/16 v41, 0x0

    const-wide/16 v43, 0x0

    const-wide/16 v45, 0x0

    const-wide/16 v47, 0x0

    const-wide/16 v49, 0x0

    const-wide/16 v51, 0x0

    const-wide/16 v53, 0x0

    const-wide/16 v55, 0x0

    const-wide/16 v57, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    shr-int/lit8 v0, v2, 0x9

    and-int/lit8 v62, v0, 0x70

    const v63, 0x1fffff

    move-object/from16 v16, p0

    move-object/from16 v59, v8

    .line 5
    invoke-virtual/range {v16 .. v63}, Landroidx/compose/material/TextFieldDefaults;->j(JJJJJJJJJJJJJJJJJJJJJLandroidx/compose/runtime/Composer;IIII)Landroidx/compose/material/TextFieldColors;

    move-result-object v0

    and-int/lit8 v2, v2, -0x71

    goto :goto_25

    :cond_38
    move-object/from16 v0, p12

    :goto_25
    move-object/from16 p15, v1

    and-int/lit16 v1, v9, 0x1000

    if-eqz v1, :cond_39

    const/4 v1, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0xf

    const/16 v20, 0x0

    move-object/from16 p7, p0

    move/from16 p8, v1

    move/from16 p9, v16

    move/from16 p10, v17

    move/from16 p11, v18

    move/from16 p12, v19

    move-object/from16 p13, v20

    .line 6
    invoke-static/range {p7 .. p13}, Landroidx/compose/material/TextFieldDefaults;->l(Landroidx/compose/material/TextFieldDefaults;FFFFILjava/lang/Object;)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v1

    and-int/lit16 v2, v2, -0x381

    goto :goto_26

    :cond_39
    move-object/from16 v1, p13

    :goto_26
    if-eqz v3, :cond_3a

    .line 7
    new-instance v3, Landroidx/compose/material/TextFieldDefaults$OutlinedTextFieldDecorationBox$1;

    move-object/from16 p7, v3

    move/from16 p8, p3

    move/from16 p9, v5

    move-object/from16 p10, p6

    move-object/from16 p11, v0

    move/from16 p12, v65

    move/from16 p13, v2

    invoke-direct/range {p7 .. p13}, Landroidx/compose/material/TextFieldDefaults$OutlinedTextFieldDecorationBox$1;-><init>(ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/material/TextFieldColors;II)V

    move-object/from16 p7, v0

    const v0, 0x4b37506d    # 1.2013677E7f

    move-object/from16 p8, v1

    const/4 v1, 0x1

    invoke-static {v8, v0, v1, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object/from16 v24, p7

    move-object/from16 v25, p8

    move-object/from16 v22, p15

    move-object/from16 v26, v0

    :goto_27
    move-object/from16 v20, v4

    move/from16 v19, v5

    move-object/from16 v21, v6

    move-object/from16 v23, v7

    goto :goto_28

    :cond_3a
    move-object/from16 p7, v0

    move-object/from16 p8, v1

    move-object/from16 v24, p7

    move-object/from16 v25, p8

    move-object/from16 v26, p14

    move-object/from16 v22, p15

    goto :goto_27

    :goto_28
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->A()V

    .line 8
    sget-object v0, Landroidx/compose/material/TextFieldType;->Outlined:Landroidx/compose/material/TextFieldType;

    shl-int/lit8 v1, v65, 0x3

    and-int/lit8 v3, v1, 0x70

    or-int/lit8 v3, v3, 0x6

    and-int/lit16 v1, v1, 0x380

    or-int/2addr v1, v3

    shr-int/lit8 v3, v65, 0x3

    and-int/lit16 v3, v3, 0x1c00

    or-int/2addr v1, v3

    shr-int/lit8 v3, v65, 0x9

    and-int v4, v3, v64

    or-int/2addr v1, v4

    const/high16 v4, 0x70000

    and-int/2addr v4, v3

    or-int/2addr v1, v4

    const/high16 v4, 0x380000

    and-int/2addr v3, v4

    or-int/2addr v1, v3

    shl-int/lit8 v3, v2, 0x15

    const/high16 v4, 0x1c00000

    and-int/2addr v3, v4

    or-int/2addr v1, v3

    shl-int/lit8 v3, v65, 0xf

    const/high16 v4, 0xe000000

    and-int/2addr v3, v4

    or-int/2addr v1, v3

    shl-int/lit8 v3, v65, 0x15

    const/high16 v4, 0x70000000

    and-int/2addr v3, v4

    or-int v16, v1, v3

    shr-int/lit8 v1, v65, 0x12

    and-int/lit8 v1, v1, 0xe

    shr-int/lit8 v3, v65, 0xc

    and-int/lit8 v3, v3, 0x70

    or-int/2addr v1, v3

    and-int/lit16 v3, v2, 0x380

    or-int/2addr v1, v3

    shl-int/lit8 v3, v2, 0x6

    and-int/lit16 v3, v3, 0x1c00

    or-int/2addr v1, v3

    shl-int/lit8 v2, v2, 0x3

    and-int v2, v2, v64

    or-int v17, v1, v2

    const/16 v18, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, v20

    move-object/from16 v5, v21

    move-object/from16 v6, v22

    move-object/from16 v7, v23

    move-object/from16 v27, v8

    move/from16 v8, p4

    move/from16 v9, p3

    move/from16 v10, v19

    move-object/from16 v11, p6

    move-object/from16 v12, v25

    move-object/from16 v13, v24

    move-object/from16 v14, v26

    move-object/from16 v15, v27

    .line 9
    invoke-static/range {v0 .. v18}, Landroidx/compose/material/TextFieldImplKt;->a(Landroidx/compose/material/TextFieldType;Ljava/lang/String;Le8/p;Landroidx/compose/ui/text/input/VisualTransformation;Le8/p;Le8/p;Le8/p;Le8/p;ZZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/material/TextFieldColors;Le8/p;Landroidx/compose/runtime/Composer;III)V

    move/from16 v8, v19

    move-object/from16 v9, v20

    move-object/from16 v10, v21

    move-object/from16 v11, v22

    move-object/from16 v12, v23

    move-object/from16 v14, v25

    move-object/from16 v15, v26

    .line 10
    :goto_29
    invoke-interface/range {v27 .. v27}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v7

    if-nez v7, :cond_3b

    goto :goto_2a

    :cond_3b
    new-instance v6, Landroidx/compose/material/TextFieldDefaults$OutlinedTextFieldDecorationBox$2;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v66, v6

    move-object/from16 v6, p5

    move-object/from16 v67, v7

    move-object/from16 v7, p6

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    invoke-direct/range {v0 .. v18}, Landroidx/compose/material/TextFieldDefaults$OutlinedTextFieldDecorationBox$2;-><init>(Landroidx/compose/material/TextFieldDefaults;Ljava/lang/String;Le8/p;ZZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/InteractionSource;ZLe8/p;Le8/p;Le8/p;Le8/p;Landroidx/compose/material/TextFieldColors;Landroidx/compose/foundation/layout/PaddingValues;Le8/p;III)V

    move-object/from16 v1, v66

    move-object/from16 v0, v67

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    :goto_2a
    return-void
.end method

.method public final c(Ljava/lang/String;Le8/p;ZZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/InteractionSource;ZLe8/p;Le8/p;Le8/p;Le8/p;Landroidx/compose/material/TextFieldColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;III)V
    .locals 71
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/ui/text/input/VisualTransformation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Landroidx/compose/foundation/interaction/InteractionSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Landroidx/compose/material/TextFieldColors;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Landroidx/compose/foundation/layout/PaddingValues;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p14    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/material/ExperimentalMaterialApi;
    .end annotation

    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;ZZ",
            "Landroidx/compose/ui/text/input/VisualTransformation;",
            "Landroidx/compose/foundation/interaction/InteractionSource;",
            "Z",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/material/TextFieldColors;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    move-object/from16 v15, p1

    move-object/from16 v13, p2

    move-object/from16 v12, p5

    move-object/from16 v11, p6

    move/from16 v10, p15

    move/from16 v9, p16

    move/from16 v8, p17

    const-string v0, "value"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "innerTextField"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visualTransformation"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interactionSource"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x45cca741

    move-object/from16 v1, p14

    .line 1
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    move-result-object v7

    and-int/lit8 v0, v8, 0x1

    if-eqz v0, :cond_0

    or-int/lit8 v0, v10, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v0, v10, 0xe

    if-nez v0, :cond_2

    invoke-interface {v7, v15}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v10

    goto :goto_1

    :cond_2
    move v0, v10

    :goto_1
    and-int/lit8 v3, v8, 0x2

    if-eqz v3, :cond_3

    or-int/lit8 v0, v0, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v3, v10, 0x70

    if-nez v3, :cond_5

    invoke-interface {v7, v13}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x20

    goto :goto_2

    :cond_4
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v0, v3

    :cond_5
    :goto_3
    and-int/lit8 v3, v8, 0x4

    if-eqz v3, :cond_7

    or-int/lit16 v0, v0, 0x180

    :cond_6
    move/from16 v3, p3

    goto :goto_5

    :cond_7
    and-int/lit16 v3, v10, 0x380

    if-nez v3, :cond_6

    move/from16 v3, p3

    invoke-interface {v7, v3}, Landroidx/compose/runtime/Composer;->m(Z)Z

    move-result v16

    if-eqz v16, :cond_8

    const/16 v16, 0x100

    goto :goto_4

    :cond_8
    const/16 v16, 0x80

    :goto_4
    or-int v0, v0, v16

    :goto_5
    and-int/lit8 v16, v8, 0x8

    const/16 v17, 0x400

    const/16 v18, 0x800

    if-eqz v16, :cond_a

    or-int/lit16 v0, v0, 0xc00

    :cond_9
    move/from16 v1, p4

    goto :goto_7

    :cond_a
    and-int/lit16 v1, v10, 0x1c00

    if-nez v1, :cond_9

    move/from16 v1, p4

    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->m(Z)Z

    move-result v16

    if-eqz v16, :cond_b

    move/from16 v16, v18

    goto :goto_6

    :cond_b
    move/from16 v16, v17

    :goto_6
    or-int v0, v0, v16

    :goto_7
    and-int/lit8 v16, v8, 0x10

    const v64, 0xe000

    if-eqz v16, :cond_c

    or-int/lit16 v0, v0, 0x6000

    goto :goto_9

    :cond_c
    and-int v16, v10, v64

    if-nez v16, :cond_e

    invoke-interface {v7, v12}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_d

    const/16 v16, 0x4000

    goto :goto_8

    :cond_d
    const/16 v16, 0x2000

    :goto_8
    or-int v0, v0, v16

    :cond_e
    :goto_9
    and-int/lit8 v16, v8, 0x20

    const/high16 v65, 0x70000

    if-eqz v16, :cond_f

    const/high16 v16, 0x30000

    :goto_a
    or-int v0, v0, v16

    goto :goto_b

    :cond_f
    and-int v16, v10, v65

    if-nez v16, :cond_11

    invoke-interface {v7, v11}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_10

    const/high16 v16, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v16, 0x10000

    goto :goto_a

    :cond_11
    :goto_b
    and-int/lit8 v16, v8, 0x40

    const/high16 v66, 0x380000

    if-eqz v16, :cond_12

    const/high16 v19, 0x180000

    or-int v0, v0, v19

    move/from16 v2, p7

    goto :goto_d

    :cond_12
    and-int v19, v10, v66

    move/from16 v2, p7

    if-nez v19, :cond_14

    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->m(Z)Z

    move-result v20

    if-eqz v20, :cond_13

    const/high16 v20, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v20, 0x80000

    :goto_c
    or-int v0, v0, v20

    :cond_14
    :goto_d
    and-int/lit16 v4, v8, 0x80

    const/high16 v67, 0x1c00000

    if-eqz v4, :cond_15

    const/high16 v21, 0xc00000

    or-int v0, v0, v21

    move-object/from16 v5, p8

    goto :goto_f

    :cond_15
    and-int v21, v10, v67

    move-object/from16 v5, p8

    if-nez v21, :cond_17

    invoke-interface {v7, v5}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_16

    const/high16 v22, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v22, 0x400000

    :goto_e
    or-int v0, v0, v22

    :cond_17
    :goto_f
    and-int/lit16 v6, v8, 0x100

    if-eqz v6, :cond_18

    const/high16 v23, 0x6000000

    or-int v0, v0, v23

    move-object/from16 v14, p9

    goto :goto_11

    :cond_18
    const/high16 v23, 0xe000000

    and-int v23, v10, v23

    move-object/from16 v14, p9

    if-nez v23, :cond_1a

    invoke-interface {v7, v14}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_19

    const/high16 v24, 0x4000000

    goto :goto_10

    :cond_19
    const/high16 v24, 0x2000000

    :goto_10
    or-int v0, v0, v24

    :cond_1a
    :goto_11
    and-int/lit16 v1, v8, 0x200

    if-eqz v1, :cond_1c

    const/high16 v24, 0x30000000

    or-int v0, v0, v24

    move-object/from16 v2, p10

    :cond_1b
    :goto_12
    move/from16 v68, v0

    goto :goto_14

    :cond_1c
    const/high16 v24, 0x70000000

    and-int v24, v10, v24

    move-object/from16 v2, p10

    if-nez v24, :cond_1b

    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1d

    const/high16 v24, 0x20000000

    goto :goto_13

    :cond_1d
    const/high16 v24, 0x10000000

    :goto_13
    or-int v0, v0, v24

    goto :goto_12

    :goto_14
    and-int/lit16 v0, v8, 0x400

    if-eqz v0, :cond_1e

    or-int/lit8 v19, v9, 0x6

    move-object/from16 v2, p11

    goto :goto_16

    :cond_1e
    and-int/lit8 v24, v9, 0xe

    move-object/from16 v2, p11

    if-nez v24, :cond_20

    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1f

    const/16 v19, 0x4

    goto :goto_15

    :cond_1f
    const/16 v19, 0x2

    :goto_15
    or-int v19, v9, v19

    goto :goto_16

    :cond_20
    move/from16 v19, v9

    :goto_16
    and-int/lit8 v24, v9, 0x70

    if-nez v24, :cond_23

    and-int/lit16 v2, v8, 0x800

    if-nez v2, :cond_21

    move-object/from16 v2, p12

    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_22

    const/16 v20, 0x20

    goto :goto_17

    :cond_21
    move-object/from16 v2, p12

    :cond_22
    const/16 v20, 0x10

    :goto_17
    or-int v19, v19, v20

    goto :goto_18

    :cond_23
    move-object/from16 v2, p12

    :goto_18
    and-int/lit16 v2, v9, 0x380

    if-nez v2, :cond_26

    and-int/lit16 v2, v8, 0x1000

    if-nez v2, :cond_24

    move-object/from16 v2, p13

    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_25

    const/16 v22, 0x100

    goto :goto_19

    :cond_24
    move-object/from16 v2, p13

    :cond_25
    const/16 v22, 0x80

    :goto_19
    or-int v19, v19, v22

    :goto_1a
    move/from16 v2, v19

    goto :goto_1b

    :cond_26
    move-object/from16 v2, p13

    goto :goto_1a

    :goto_1b
    and-int/lit16 v3, v8, 0x2000

    if-eqz v3, :cond_28

    or-int/lit16 v2, v2, 0xc00

    :cond_27
    move-object/from16 v3, p0

    goto :goto_1c

    :cond_28
    and-int/lit16 v3, v9, 0x1c00

    if-nez v3, :cond_27

    move-object/from16 v3, p0

    invoke-interface {v7, v3}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_29

    move/from16 v17, v18

    :cond_29
    or-int v2, v2, v17

    :goto_1c
    const v17, 0x5b6db6db

    and-int v3, v68, v17

    const v5, 0x12492492

    if-ne v3, v5, :cond_2b

    and-int/lit16 v3, v2, 0x16db

    const/16 v5, 0x492

    if-ne v3, v5, :cond_2b

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->b()Z

    move-result v3

    if-nez v3, :cond_2a

    goto :goto_1d

    .line 2
    :cond_2a
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->g()V

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v26, v7

    move-object v10, v14

    move-object/from16 v14, p13

    goto/16 :goto_27

    .line 3
    :cond_2b
    :goto_1d
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->J()V

    and-int/lit8 v3, v10, 0x1

    if-eqz v3, :cond_2f

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->h()Z

    move-result v3

    if-eqz v3, :cond_2c

    goto :goto_1f

    .line 4
    :cond_2c
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->g()V

    and-int/lit16 v0, v8, 0x800

    if-eqz v0, :cond_2d

    and-int/lit8 v2, v2, -0x71

    :cond_2d
    and-int/lit16 v0, v8, 0x1000

    if-eqz v0, :cond_2e

    and-int/lit16 v2, v2, -0x381

    :cond_2e
    move/from16 v19, p7

    move-object/from16 v20, p8

    move-object/from16 v22, p10

    move-object/from16 v23, p11

    move-object/from16 v24, p12

    move-object/from16 v25, p13

    :goto_1e
    move-object/from16 v21, v14

    goto/16 :goto_26

    :cond_2f
    :goto_1f
    if-eqz v16, :cond_30

    const/4 v3, 0x0

    goto :goto_20

    :cond_30
    move/from16 v3, p7

    :goto_20
    const/4 v5, 0x0

    if-eqz v4, :cond_31

    move-object v4, v5

    goto :goto_21

    :cond_31
    move-object/from16 v4, p8

    :goto_21
    if-eqz v6, :cond_32

    move-object v14, v5

    :cond_32
    if-eqz v1, :cond_33

    move-object v1, v5

    goto :goto_22

    :cond_33
    move-object/from16 v1, p10

    :goto_22
    if-eqz v0, :cond_34

    goto :goto_23

    :cond_34
    move-object/from16 v5, p11

    :goto_23
    and-int/lit16 v0, v8, 0x800

    if-eqz v0, :cond_35

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    const-wide/16 v31, 0x0

    const-wide/16 v33, 0x0

    const-wide/16 v35, 0x0

    const-wide/16 v37, 0x0

    const-wide/16 v39, 0x0

    const-wide/16 v41, 0x0

    const-wide/16 v43, 0x0

    const-wide/16 v45, 0x0

    const-wide/16 v47, 0x0

    const-wide/16 v49, 0x0

    const-wide/16 v51, 0x0

    const-wide/16 v53, 0x0

    const-wide/16 v55, 0x0

    const-wide/16 v57, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    shr-int/lit8 v0, v2, 0x6

    and-int/lit8 v62, v0, 0x70

    const v63, 0x1fffff

    move-object/from16 v16, p0

    move-object/from16 v59, v7

    .line 5
    invoke-virtual/range {v16 .. v63}, Landroidx/compose/material/TextFieldDefaults;->m(JJJJJJJJJJJJJJJJJJJJJLandroidx/compose/runtime/Composer;IIII)Landroidx/compose/material/TextFieldColors;

    move-result-object v0

    and-int/lit8 v2, v2, -0x71

    goto :goto_24

    :cond_35
    move-object/from16 v0, p12

    :goto_24
    and-int/lit16 v6, v8, 0x1000

    if-eqz v6, :cond_37

    if-nez v4, :cond_36

    const/4 v6, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0xf

    const/16 v20, 0x0

    move-object/from16 p7, p0

    move/from16 p8, v6

    move/from16 p9, v16

    move/from16 p10, v17

    move/from16 p11, v18

    move/from16 p12, v19

    move-object/from16 p13, v20

    .line 6
    invoke-static/range {p7 .. p13}, Landroidx/compose/material/TextFieldDefaults;->q(Landroidx/compose/material/TextFieldDefaults;FFFFILjava/lang/Object;)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v6

    goto :goto_25

    :cond_36
    const/4 v6, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0xf

    const/16 v20, 0x0

    move-object/from16 p7, p0

    move/from16 p8, v6

    move/from16 p9, v16

    move/from16 p10, v17

    move/from16 p11, v18

    move/from16 p12, v19

    move-object/from16 p13, v20

    .line 7
    invoke-static/range {p7 .. p13}, Landroidx/compose/material/TextFieldDefaults;->o(Landroidx/compose/material/TextFieldDefaults;FFFFILjava/lang/Object;)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v6

    :goto_25
    and-int/lit16 v2, v2, -0x381

    move-object/from16 v24, v0

    move-object/from16 v22, v1

    move/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v23, v5

    move-object/from16 v25, v6

    goto/16 :goto_1e

    :cond_37
    move-object/from16 v25, p13

    move-object/from16 v24, v0

    move-object/from16 v22, v1

    move/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v23, v5

    goto/16 :goto_1e

    :goto_26
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->A()V

    .line 8
    sget-object v0, Landroidx/compose/material/TextFieldType;->Filled:Landroidx/compose/material/TextFieldType;

    const/4 v14, 0x0

    shl-int/lit8 v1, v68, 0x3

    and-int/lit8 v3, v1, 0x70

    or-int/lit8 v3, v3, 0x6

    and-int/lit16 v1, v1, 0x380

    or-int/2addr v1, v3

    shr-int/lit8 v3, v68, 0x3

    and-int/lit16 v3, v3, 0x1c00

    or-int/2addr v1, v3

    shr-int/lit8 v3, v68, 0x9

    and-int v4, v3, v64

    or-int/2addr v1, v4

    and-int v4, v3, v65

    or-int/2addr v1, v4

    and-int v3, v3, v66

    or-int/2addr v1, v3

    shl-int/lit8 v3, v2, 0x15

    and-int v3, v3, v67

    or-int/2addr v1, v3

    shl-int/lit8 v3, v68, 0xf

    const/high16 v4, 0xe000000

    and-int/2addr v3, v4

    or-int/2addr v1, v3

    shl-int/lit8 v3, v68, 0x15

    const/high16 v4, 0x70000000

    and-int/2addr v3, v4

    or-int v16, v1, v3

    shr-int/lit8 v1, v68, 0x12

    and-int/lit8 v1, v1, 0xe

    shr-int/lit8 v3, v68, 0xc

    and-int/lit8 v3, v3, 0x70

    or-int/2addr v1, v3

    and-int/lit16 v3, v2, 0x380

    or-int/2addr v1, v3

    shl-int/lit8 v2, v2, 0x6

    and-int/lit16 v2, v2, 0x1c00

    or-int v17, v1, v2

    const/16 v18, 0x4000

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, v20

    move-object/from16 v5, v21

    move-object/from16 v6, v22

    move-object/from16 v26, v7

    move-object/from16 v7, v23

    move/from16 v8, p4

    move/from16 v9, p3

    move/from16 v10, v19

    move-object/from16 v11, p6

    move-object/from16 v12, v25

    move-object/from16 v13, v24

    move-object/from16 v15, v26

    .line 9
    invoke-static/range {v0 .. v18}, Landroidx/compose/material/TextFieldImplKt;->a(Landroidx/compose/material/TextFieldType;Ljava/lang/String;Le8/p;Landroidx/compose/ui/text/input/VisualTransformation;Le8/p;Le8/p;Le8/p;Le8/p;ZZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/material/TextFieldColors;Le8/p;Landroidx/compose/runtime/Composer;III)V

    move/from16 v8, v19

    move-object/from16 v9, v20

    move-object/from16 v10, v21

    move-object/from16 v11, v22

    move-object/from16 v12, v23

    move-object/from16 v14, v25

    .line 10
    :goto_27
    invoke-interface/range {v26 .. v26}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-nez v15, :cond_38

    goto :goto_28

    :cond_38
    new-instance v7, Landroidx/compose/material/TextFieldDefaults$TextFieldDecorationBox$1;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v69, v7

    move-object/from16 v7, p6

    move-object/from16 v70, v15

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    invoke-direct/range {v0 .. v17}, Landroidx/compose/material/TextFieldDefaults$TextFieldDecorationBox$1;-><init>(Landroidx/compose/material/TextFieldDefaults;Ljava/lang/String;Le8/p;ZZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/InteractionSource;ZLe8/p;Le8/p;Le8/p;Le8/p;Landroidx/compose/material/TextFieldColors;Landroidx/compose/foundation/layout/PaddingValues;III)V

    move-object/from16 v1, v69

    move-object/from16 v0, v70

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    :goto_28
    return-void
.end method

.method public final d()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/TextFieldDefaults;->MinHeight:F

    return v0
.end method

.method public final e()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/TextFieldDefaults;->MinWidth:F

    return v0
.end method

.method public final f(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;
    .locals 1
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ReadOnlyComposable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    sget-object p2, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 3
    const/4 v0, 0x6

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2, p1, v0}, Landroidx/compose/material/MaterialTheme;->b(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Shapes;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/compose/material/Shapes;->c()Landroidx/compose/foundation/shape/CornerBasedShape;

    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final g(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;
    .locals 7
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ReadOnlyComposable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    sget-object p2, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 3
    const/4 v0, 0x6

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2, p1, v0}, Landroidx/compose/material/MaterialTheme;->b(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Shapes;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/compose/material/Shapes;->c()Landroidx/compose/foundation/shape/CornerBasedShape;

    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    .line 15
    .line 16
    invoke-static {}, Landroidx/compose/foundation/shape/CornerSizeKt;->c()Landroidx/compose/foundation/shape/CornerSize;

    .line 17
    move-result-object v3

    .line 18
    .line 19
    .line 20
    invoke-static {}, Landroidx/compose/foundation/shape/CornerSizeKt;->c()Landroidx/compose/foundation/shape/CornerSize;

    .line 21
    move-result-object v4

    .line 22
    const/4 v5, 0x3

    .line 23
    const/4 v6, 0x0

    .line 24
    .line 25
    .line 26
    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/shape/CornerBasedShape;->d(Landroidx/compose/foundation/shape/CornerBasedShape;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;ILjava/lang/Object;)Landroidx/compose/foundation/shape/CornerBasedShape;

    .line 27
    move-result-object p1

    .line 28
    return-object p1
.end method

.method public final h(Landroidx/compose/ui/Modifier;ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/material/TextFieldColors;FF)Landroidx/compose/ui/Modifier;
    .locals 12
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/foundation/interaction/InteractionSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/material/TextFieldColors;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/material/ExperimentalMaterialApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object v0, p1

    .line 2
    .line 3
    const-string v1, "$this$indicatorLine"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    const-string v1, "interactionSource"

    .line 9
    .line 10
    move-object/from16 v9, p4

    .line 11
    .line 12
    .line 13
    invoke-static {v9, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    const-string v1, "colors"

    .line 16
    .line 17
    move-object/from16 v10, p5

    .line 18
    .line 19
    .line 20
    invoke-static {v10, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->c()Z

    .line 24
    move-result v1

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    new-instance v1, Landroidx/compose/material/TextFieldDefaults$indicatorLine-gv0btCI$$inlined$debugInspectorInfo$1;

    .line 29
    move-object v2, v1

    .line 30
    move v3, p2

    .line 31
    move v4, p3

    .line 32
    .line 33
    move-object/from16 v5, p4

    .line 34
    .line 35
    move-object/from16 v6, p5

    .line 36
    .line 37
    move/from16 v7, p6

    .line 38
    .line 39
    move/from16 v8, p7

    .line 40
    .line 41
    .line 42
    invoke-direct/range {v2 .. v8}, Landroidx/compose/material/TextFieldDefaults$indicatorLine-gv0btCI$$inlined$debugInspectorInfo$1;-><init>(ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/material/TextFieldColors;FF)V

    .line 43
    goto :goto_0

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->a()Le8/l;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    :goto_0
    new-instance v11, Landroidx/compose/material/TextFieldDefaults$indicatorLine$2;

    .line 50
    move-object v2, v11

    .line 51
    move v3, p2

    .line 52
    move v4, p3

    .line 53
    .line 54
    move-object/from16 v5, p4

    .line 55
    .line 56
    move-object/from16 v6, p5

    .line 57
    .line 58
    move/from16 v7, p6

    .line 59
    .line 60
    move/from16 v8, p7

    .line 61
    .line 62
    .line 63
    invoke-direct/range {v2 .. v8}, Landroidx/compose/material/TextFieldDefaults$indicatorLine$2;-><init>(ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/material/TextFieldColors;FF)V

    .line 64
    .line 65
    .line 66
    invoke-static {p1, v1, v11}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/ui/Modifier;Le8/l;Le8/q;)Landroidx/compose/ui/Modifier;

    .line 67
    move-result-object v0

    .line 68
    return-object v0
.end method

.method public final j(JJJJJJJJJJJJJJJJJJJJJLandroidx/compose/runtime/Composer;IIII)Landroidx/compose/material/TextFieldColors;
    .locals 50
    .param p43    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p43

    move/from16 v1, p47

    const v2, 0x69102b35

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    .line 1
    invoke-static {}, Landroidx/compose/material/ContentColorKt;->a()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v2

    .line 2
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color;->v()J

    move-result-wide v3

    .line 3
    invoke-static {}, Landroidx/compose/material/ContentAlphaKt;->a()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v2

    .line 4
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xe

    const/4 v10, 0x0

    .line 5
    invoke-static/range {v3 .. v10}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    move-result-wide v2

    goto :goto_0

    :cond_0
    move-wide/from16 v2, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    const/4 v12, 0x6

    if-eqz v4, :cond_1

    .line 6
    sget-object v4, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    invoke-virtual {v4, v0, v12}, Landroidx/compose/material/ContentAlpha;->b(Landroidx/compose/runtime/Composer;I)F

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xe

    const/4 v11, 0x0

    move-wide v4, v2

    invoke-static/range {v4 .. v11}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    move-result-wide v4

    move-wide v7, v4

    goto :goto_1

    :cond_1
    move-wide/from16 v7, p3

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    .line 7
    sget-object v4, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/Color$Companion;->e()J

    move-result-wide v4

    move-wide/from16 v33, v4

    goto :goto_2

    :cond_2
    move-wide/from16 v33, p5

    :goto_2
    and-int/lit8 v4, v1, 0x8

    if-eqz v4, :cond_3

    .line 8
    sget-object v4, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v4, v0, v12}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material/Colors;->j()J

    move-result-wide v4

    move-wide v9, v4

    goto :goto_3

    :cond_3
    move-wide/from16 v9, p7

    :goto_3
    and-int/lit8 v4, v1, 0x10

    if-eqz v4, :cond_4

    .line 9
    sget-object v4, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v4, v0, v12}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material/Colors;->d()J

    move-result-wide v4

    move-wide v13, v4

    goto :goto_4

    :cond_4
    move-wide/from16 v13, p9

    :goto_4
    and-int/lit8 v4, v1, 0x20

    if-eqz v4, :cond_5

    .line 10
    sget-object v4, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v4, v0, v12}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material/Colors;->j()J

    move-result-wide v4

    sget-object v6, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    invoke-virtual {v6, v0, v12}, Landroidx/compose/material/ContentAlpha;->c(Landroidx/compose/runtime/Composer;I)F

    move-result v6

    const/4 v11, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xe

    const/16 v18, 0x0

    move-wide/from16 p1, v4

    move/from16 p3, v6

    move/from16 p4, v11

    move/from16 p5, v15

    move/from16 p6, v16

    move/from16 p7, v17

    move-object/from16 p8, v18

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    move-result-wide v4

    move-wide v15, v4

    goto :goto_5

    :cond_5
    move-wide/from16 v15, p11

    :goto_5
    and-int/lit8 v4, v1, 0x40

    if-eqz v4, :cond_6

    .line 11
    sget-object v4, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v4, v0, v12}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material/Colors;->i()J

    move-result-wide v4

    sget-object v6, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    invoke-virtual {v6, v0, v12}, Landroidx/compose/material/ContentAlpha;->b(Landroidx/compose/runtime/Composer;I)F

    move-result v6

    const/4 v11, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0xe

    const/16 v20, 0x0

    move-wide/from16 p1, v4

    move/from16 p3, v6

    move/from16 p4, v11

    move/from16 p5, v17

    move/from16 p6, v18

    move/from16 p7, v19

    move-object/from16 p8, v20

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    move-result-wide v4

    move-wide/from16 v17, v4

    goto :goto_6

    :cond_6
    move-wide/from16 v17, p13

    :goto_6
    and-int/lit16 v4, v1, 0x80

    if-eqz v4, :cond_7

    .line 12
    sget-object v4, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    invoke-virtual {v4, v0, v12}, Landroidx/compose/material/ContentAlpha;->b(Landroidx/compose/runtime/Composer;I)F

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/16 v19, 0xe

    const/16 v20, 0x0

    move-wide/from16 p1, v17

    move/from16 p3, v4

    move/from16 p4, v5

    move/from16 p5, v6

    move/from16 p6, v11

    move/from16 p7, v19

    move-object/from16 p8, v20

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    move-result-wide v4

    move-wide/from16 v19, v4

    goto :goto_7

    :cond_7
    move-wide/from16 v19, p15

    :goto_7
    and-int/lit16 v4, v1, 0x100

    if-eqz v4, :cond_8

    .line 13
    sget-object v4, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v4, v0, v12}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material/Colors;->d()J

    move-result-wide v4

    move-wide/from16 v21, v4

    goto :goto_8

    :cond_8
    move-wide/from16 v21, p17

    :goto_8
    and-int/lit16 v4, v1, 0x200

    if-eqz v4, :cond_9

    .line 14
    sget-object v4, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v4, v0, v12}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material/Colors;->i()J

    move-result-wide v4

    const v6, 0x3f0a3d71    # 0.54f

    const/4 v11, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0xe

    const/16 v26, 0x0

    move-wide/from16 p1, v4

    move/from16 p3, v6

    move/from16 p4, v11

    move/from16 p5, v23

    move/from16 p6, v24

    move/from16 p7, v25

    move-object/from16 p8, v26

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    move-result-wide v4

    move-wide/from16 v23, v4

    goto :goto_9

    :cond_9
    move-wide/from16 v23, p19

    :goto_9
    and-int/lit16 v4, v1, 0x400

    if-eqz v4, :cond_a

    .line 15
    sget-object v4, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    invoke-virtual {v4, v0, v12}, Landroidx/compose/material/ContentAlpha;->b(Landroidx/compose/runtime/Composer;I)F

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/16 v25, 0xe

    const/16 v26, 0x0

    move-wide/from16 p1, v23

    move/from16 p3, v4

    move/from16 p4, v5

    move/from16 p5, v6

    move/from16 p6, v11

    move/from16 p7, v25

    move-object/from16 p8, v26

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    move-result-wide v4

    move-wide/from16 v25, v4

    goto :goto_a

    :cond_a
    move-wide/from16 v25, p21

    :goto_a
    and-int/lit16 v4, v1, 0x800

    if-eqz v4, :cond_b

    move-wide/from16 v27, v23

    goto :goto_b

    :cond_b
    move-wide/from16 v27, p23

    :goto_b
    and-int/lit16 v4, v1, 0x1000

    if-eqz v4, :cond_c

    .line 16
    sget-object v4, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v4, v0, v12}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material/Colors;->i()J

    move-result-wide v4

    const v6, 0x3f0a3d71    # 0.54f

    const/4 v11, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0xe

    const/16 v32, 0x0

    move-wide/from16 p1, v4

    move/from16 p3, v6

    move/from16 p4, v11

    move/from16 p5, v29

    move/from16 p6, v30

    move/from16 p7, v31

    move-object/from16 p8, v32

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    move-result-wide v4

    move-wide/from16 v29, v4

    goto :goto_c

    :cond_c
    move-wide/from16 v29, p25

    :goto_c
    and-int/lit16 v4, v1, 0x2000

    if-eqz v4, :cond_d

    .line 17
    sget-object v4, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    invoke-virtual {v4, v0, v12}, Landroidx/compose/material/ContentAlpha;->b(Landroidx/compose/runtime/Composer;I)F

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/16 v31, 0xe

    const/16 v32, 0x0

    move-wide/from16 p1, v29

    move/from16 p3, v4

    move/from16 p4, v5

    move/from16 p5, v6

    move/from16 p6, v11

    move/from16 p7, v31

    move-object/from16 p8, v32

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    move-result-wide v4

    move-wide/from16 v31, v4

    goto :goto_d

    :cond_d
    move-wide/from16 v31, p27

    :goto_d
    and-int/lit16 v4, v1, 0x4000

    if-eqz v4, :cond_e

    .line 18
    sget-object v4, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v4, v0, v12}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material/Colors;->d()J

    move-result-wide v4

    move-wide/from16 v35, v4

    goto :goto_e

    :cond_e
    move-wide/from16 v35, p29

    :goto_e
    const v4, 0x8000

    and-int/2addr v4, v1

    if-eqz v4, :cond_f

    .line 19
    sget-object v4, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v4, v0, v12}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material/Colors;->j()J

    move-result-wide v4

    sget-object v6, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    invoke-virtual {v6, v0, v12}, Landroidx/compose/material/ContentAlpha;->c(Landroidx/compose/runtime/Composer;I)F

    move-result v6

    const/4 v11, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0xe

    const/16 v40, 0x0

    move-wide/from16 p1, v4

    move/from16 p3, v6

    move/from16 p4, v11

    move/from16 p5, v37

    move/from16 p6, v38

    move/from16 p7, v39

    move-object/from16 p8, v40

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    move-result-wide v4

    move-wide/from16 v37, v4

    goto :goto_f

    :cond_f
    move-wide/from16 v37, p31

    :goto_f
    const/high16 v4, 0x10000

    and-int/2addr v4, v1

    if-eqz v4, :cond_10

    .line 20
    sget-object v4, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v4, v0, v12}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material/Colors;->i()J

    move-result-wide v4

    sget-object v6, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    invoke-virtual {v6, v0, v12}, Landroidx/compose/material/ContentAlpha;->d(Landroidx/compose/runtime/Composer;I)F

    move-result v6

    const/4 v11, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0xe

    const/16 v42, 0x0

    move-wide/from16 p1, v4

    move/from16 p3, v6

    move/from16 p4, v11

    move/from16 p5, v39

    move/from16 p6, v40

    move/from16 p7, v41

    move-object/from16 p8, v42

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    move-result-wide v4

    move-wide/from16 v39, v4

    goto :goto_10

    :cond_10
    move-wide/from16 v39, p33

    :goto_10
    const/high16 v4, 0x20000

    and-int/2addr v4, v1

    if-eqz v4, :cond_11

    .line 21
    sget-object v4, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    invoke-virtual {v4, v0, v12}, Landroidx/compose/material/ContentAlpha;->b(Landroidx/compose/runtime/Composer;I)F

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/16 v41, 0xe

    const/16 v42, 0x0

    move-wide/from16 p1, v39

    move/from16 p3, v4

    move/from16 p4, v5

    move/from16 p5, v6

    move/from16 p6, v11

    move/from16 p7, v41

    move-object/from16 p8, v42

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    move-result-wide v4

    move-wide/from16 v41, v4

    goto :goto_11

    :cond_11
    move-wide/from16 v41, p35

    :goto_11
    const/high16 v4, 0x40000

    and-int/2addr v4, v1

    if-eqz v4, :cond_12

    .line 22
    sget-object v4, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v4, v0, v12}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material/Colors;->d()J

    move-result-wide v4

    move-wide/from16 v43, v4

    goto :goto_12

    :cond_12
    move-wide/from16 v43, p37

    :goto_12
    const/high16 v4, 0x80000

    and-int/2addr v4, v1

    if-eqz v4, :cond_13

    .line 23
    sget-object v4, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v4, v0, v12}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material/Colors;->i()J

    move-result-wide v4

    sget-object v6, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    invoke-virtual {v6, v0, v12}, Landroidx/compose/material/ContentAlpha;->d(Landroidx/compose/runtime/Composer;I)F

    move-result v6

    const/4 v11, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0xe

    const/16 v48, 0x0

    move-wide/from16 p1, v4

    move/from16 p3, v6

    move/from16 p4, v11

    move/from16 p5, v45

    move/from16 p6, v46

    move/from16 p7, v47

    move-object/from16 p8, v48

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    move-result-wide v4

    move-wide/from16 v45, v4

    goto :goto_13

    :cond_13
    move-wide/from16 v45, p39

    :goto_13
    const/high16 v4, 0x100000

    and-int/2addr v1, v4

    if-eqz v1, :cond_14

    .line 24
    sget-object v1, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    invoke-virtual {v1, v0, v12}, Landroidx/compose/material/ContentAlpha;->b(Landroidx/compose/runtime/Composer;I)F

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v11, 0xe

    const/4 v12, 0x0

    move-wide/from16 p1, v45

    move/from16 p3, v1

    move/from16 p4, v4

    move/from16 p5, v5

    move/from16 p6, v6

    move/from16 p7, v11

    move-object/from16 p8, v12

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    move-result-wide v4

    move-wide/from16 v48, v4

    goto :goto_14

    :cond_14
    move-wide/from16 v48, p41

    .line 25
    :goto_14
    new-instance v1, Landroidx/compose/material/DefaultTextFieldColors;

    move-object v4, v1

    const/16 v47, 0x0

    move-wide v5, v2

    move-wide v11, v13

    move-wide v13, v15

    move-wide/from16 v15, v17

    move-wide/from16 v17, v21

    move-wide/from16 v21, v23

    move-wide/from16 v23, v25

    move-wide/from16 v25, v27

    move-wide/from16 v27, v29

    move-wide/from16 v29, v31

    move-wide/from16 v31, v35

    move-wide/from16 v35, v37

    move-wide/from16 v37, v39

    move-wide/from16 v39, v41

    move-wide/from16 v41, v43

    move-wide/from16 v43, v45

    move-wide/from16 v45, v48

    invoke-direct/range {v4 .. v47}, Landroidx/compose/material/DefaultTextFieldColors;-><init>(JJJJJJJJJJJJJJJJJJJJJLkotlin/jvm/internal/k;)V

    invoke-interface/range {p43 .. p43}, Landroidx/compose/runtime/Composer;->Q()V

    return-object v1
.end method

.method public final k(FFFF)Landroidx/compose/foundation/layout/PaddingValues;
    .locals 0
    .annotation runtime Landroidx/compose/material/ExperimentalMaterialApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2, p3, p4}, Landroidx/compose/foundation/layout/PaddingKt;->d(FFFF)Landroidx/compose/foundation/layout/PaddingValues;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final m(JJJJJJJJJJJJJJJJJJJJJLandroidx/compose/runtime/Composer;IIII)Landroidx/compose/material/TextFieldColors;
    .locals 50
    .param p43    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p43

    move/from16 v1, p47

    const v2, 0xdd26677

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    .line 1
    invoke-static {}, Landroidx/compose/material/ContentColorKt;->a()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v2

    .line 2
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color;->v()J

    move-result-wide v3

    .line 3
    invoke-static {}, Landroidx/compose/material/ContentAlphaKt;->a()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v2

    .line 4
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xe

    const/4 v10, 0x0

    .line 5
    invoke-static/range {v3 .. v10}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    move-result-wide v2

    goto :goto_0

    :cond_0
    move-wide/from16 v2, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    const/4 v12, 0x6

    if-eqz v4, :cond_1

    .line 6
    sget-object v4, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    invoke-virtual {v4, v0, v12}, Landroidx/compose/material/ContentAlpha;->b(Landroidx/compose/runtime/Composer;I)F

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xe

    const/4 v11, 0x0

    move-wide v4, v2

    invoke-static/range {v4 .. v11}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    move-result-wide v4

    move-wide v7, v4

    goto :goto_1

    :cond_1
    move-wide/from16 v7, p3

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    .line 7
    sget-object v4, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v4, v0, v12}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material/Colors;->i()J

    move-result-wide v13

    const v15, 0x3df5c28f    # 0.12f

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0xe

    const/16 v20, 0x0

    invoke-static/range {v13 .. v20}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    move-result-wide v4

    move-wide/from16 v33, v4

    goto :goto_2

    :cond_2
    move-wide/from16 v33, p5

    :goto_2
    and-int/lit8 v4, v1, 0x8

    if-eqz v4, :cond_3

    .line 8
    sget-object v4, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v4, v0, v12}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material/Colors;->j()J

    move-result-wide v4

    move-wide v9, v4

    goto :goto_3

    :cond_3
    move-wide/from16 v9, p7

    :goto_3
    and-int/lit8 v4, v1, 0x10

    if-eqz v4, :cond_4

    .line 9
    sget-object v4, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v4, v0, v12}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material/Colors;->d()J

    move-result-wide v4

    move-wide v13, v4

    goto :goto_4

    :cond_4
    move-wide/from16 v13, p9

    :goto_4
    and-int/lit8 v4, v1, 0x20

    if-eqz v4, :cond_5

    .line 10
    sget-object v4, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v4, v0, v12}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material/Colors;->j()J

    move-result-wide v4

    sget-object v6, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    invoke-virtual {v6, v0, v12}, Landroidx/compose/material/ContentAlpha;->c(Landroidx/compose/runtime/Composer;I)F

    move-result v6

    const/4 v11, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xe

    const/16 v18, 0x0

    move-wide/from16 p1, v4

    move/from16 p3, v6

    move/from16 p4, v11

    move/from16 p5, v15

    move/from16 p6, v16

    move/from16 p7, v17

    move-object/from16 p8, v18

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    move-result-wide v4

    move-wide v15, v4

    goto :goto_5

    :cond_5
    move-wide/from16 v15, p11

    :goto_5
    and-int/lit8 v4, v1, 0x40

    if-eqz v4, :cond_6

    .line 11
    sget-object v4, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v4, v0, v12}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material/Colors;->i()J

    move-result-wide v4

    const v6, 0x3ed70a3d    # 0.42f

    const/4 v11, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0xe

    const/16 v20, 0x0

    move-wide/from16 p1, v4

    move/from16 p3, v6

    move/from16 p4, v11

    move/from16 p5, v17

    move/from16 p6, v18

    move/from16 p7, v19

    move-object/from16 p8, v20

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    move-result-wide v4

    move-wide/from16 v17, v4

    goto :goto_6

    :cond_6
    move-wide/from16 v17, p13

    :goto_6
    and-int/lit16 v4, v1, 0x80

    if-eqz v4, :cond_7

    .line 12
    sget-object v4, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    invoke-virtual {v4, v0, v12}, Landroidx/compose/material/ContentAlpha;->b(Landroidx/compose/runtime/Composer;I)F

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/16 v19, 0xe

    const/16 v20, 0x0

    move-wide/from16 p1, v17

    move/from16 p3, v4

    move/from16 p4, v5

    move/from16 p5, v6

    move/from16 p6, v11

    move/from16 p7, v19

    move-object/from16 p8, v20

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    move-result-wide v4

    move-wide/from16 v19, v4

    goto :goto_7

    :cond_7
    move-wide/from16 v19, p15

    :goto_7
    and-int/lit16 v4, v1, 0x100

    if-eqz v4, :cond_8

    .line 13
    sget-object v4, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v4, v0, v12}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material/Colors;->d()J

    move-result-wide v4

    move-wide/from16 v21, v4

    goto :goto_8

    :cond_8
    move-wide/from16 v21, p17

    :goto_8
    and-int/lit16 v4, v1, 0x200

    if-eqz v4, :cond_9

    .line 14
    sget-object v4, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v4, v0, v12}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material/Colors;->i()J

    move-result-wide v4

    const v6, 0x3f0a3d71    # 0.54f

    const/4 v11, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0xe

    const/16 v26, 0x0

    move-wide/from16 p1, v4

    move/from16 p3, v6

    move/from16 p4, v11

    move/from16 p5, v23

    move/from16 p6, v24

    move/from16 p7, v25

    move-object/from16 p8, v26

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    move-result-wide v4

    move-wide/from16 v23, v4

    goto :goto_9

    :cond_9
    move-wide/from16 v23, p19

    :goto_9
    and-int/lit16 v4, v1, 0x400

    if-eqz v4, :cond_a

    .line 15
    sget-object v4, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    invoke-virtual {v4, v0, v12}, Landroidx/compose/material/ContentAlpha;->b(Landroidx/compose/runtime/Composer;I)F

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/16 v25, 0xe

    const/16 v26, 0x0

    move-wide/from16 p1, v23

    move/from16 p3, v4

    move/from16 p4, v5

    move/from16 p5, v6

    move/from16 p6, v11

    move/from16 p7, v25

    move-object/from16 p8, v26

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    move-result-wide v4

    move-wide/from16 v25, v4

    goto :goto_a

    :cond_a
    move-wide/from16 v25, p21

    :goto_a
    and-int/lit16 v4, v1, 0x800

    if-eqz v4, :cond_b

    move-wide/from16 v27, v23

    goto :goto_b

    :cond_b
    move-wide/from16 v27, p23

    :goto_b
    and-int/lit16 v4, v1, 0x1000

    if-eqz v4, :cond_c

    .line 16
    sget-object v4, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v4, v0, v12}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material/Colors;->i()J

    move-result-wide v4

    const v6, 0x3f0a3d71    # 0.54f

    const/4 v11, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0xe

    const/16 v32, 0x0

    move-wide/from16 p1, v4

    move/from16 p3, v6

    move/from16 p4, v11

    move/from16 p5, v29

    move/from16 p6, v30

    move/from16 p7, v31

    move-object/from16 p8, v32

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    move-result-wide v4

    move-wide/from16 v29, v4

    goto :goto_c

    :cond_c
    move-wide/from16 v29, p25

    :goto_c
    and-int/lit16 v4, v1, 0x2000

    if-eqz v4, :cond_d

    .line 17
    sget-object v4, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    invoke-virtual {v4, v0, v12}, Landroidx/compose/material/ContentAlpha;->b(Landroidx/compose/runtime/Composer;I)F

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/16 v31, 0xe

    const/16 v32, 0x0

    move-wide/from16 p1, v29

    move/from16 p3, v4

    move/from16 p4, v5

    move/from16 p5, v6

    move/from16 p6, v11

    move/from16 p7, v31

    move-object/from16 p8, v32

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    move-result-wide v4

    move-wide/from16 v31, v4

    goto :goto_d

    :cond_d
    move-wide/from16 v31, p27

    :goto_d
    and-int/lit16 v4, v1, 0x4000

    if-eqz v4, :cond_e

    .line 18
    sget-object v4, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v4, v0, v12}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material/Colors;->d()J

    move-result-wide v4

    move-wide/from16 v35, v4

    goto :goto_e

    :cond_e
    move-wide/from16 v35, p29

    :goto_e
    const v4, 0x8000

    and-int/2addr v4, v1

    if-eqz v4, :cond_f

    .line 19
    sget-object v4, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v4, v0, v12}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material/Colors;->j()J

    move-result-wide v4

    sget-object v6, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    invoke-virtual {v6, v0, v12}, Landroidx/compose/material/ContentAlpha;->c(Landroidx/compose/runtime/Composer;I)F

    move-result v6

    const/4 v11, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0xe

    const/16 v40, 0x0

    move-wide/from16 p1, v4

    move/from16 p3, v6

    move/from16 p4, v11

    move/from16 p5, v37

    move/from16 p6, v38

    move/from16 p7, v39

    move-object/from16 p8, v40

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    move-result-wide v4

    move-wide/from16 v37, v4

    goto :goto_f

    :cond_f
    move-wide/from16 v37, p31

    :goto_f
    const/high16 v4, 0x10000

    and-int/2addr v4, v1

    if-eqz v4, :cond_10

    .line 20
    sget-object v4, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v4, v0, v12}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material/Colors;->i()J

    move-result-wide v4

    sget-object v6, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    invoke-virtual {v6, v0, v12}, Landroidx/compose/material/ContentAlpha;->d(Landroidx/compose/runtime/Composer;I)F

    move-result v6

    const/4 v11, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0xe

    const/16 v42, 0x0

    move-wide/from16 p1, v4

    move/from16 p3, v6

    move/from16 p4, v11

    move/from16 p5, v39

    move/from16 p6, v40

    move/from16 p7, v41

    move-object/from16 p8, v42

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    move-result-wide v4

    move-wide/from16 v39, v4

    goto :goto_10

    :cond_10
    move-wide/from16 v39, p33

    :goto_10
    const/high16 v4, 0x20000

    and-int/2addr v4, v1

    if-eqz v4, :cond_11

    .line 21
    sget-object v4, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    invoke-virtual {v4, v0, v12}, Landroidx/compose/material/ContentAlpha;->b(Landroidx/compose/runtime/Composer;I)F

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/16 v41, 0xe

    const/16 v42, 0x0

    move-wide/from16 p1, v39

    move/from16 p3, v4

    move/from16 p4, v5

    move/from16 p5, v6

    move/from16 p6, v11

    move/from16 p7, v41

    move-object/from16 p8, v42

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    move-result-wide v4

    move-wide/from16 v41, v4

    goto :goto_11

    :cond_11
    move-wide/from16 v41, p35

    :goto_11
    const/high16 v4, 0x40000

    and-int/2addr v4, v1

    if-eqz v4, :cond_12

    .line 22
    sget-object v4, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v4, v0, v12}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material/Colors;->d()J

    move-result-wide v4

    move-wide/from16 v43, v4

    goto :goto_12

    :cond_12
    move-wide/from16 v43, p37

    :goto_12
    const/high16 v4, 0x80000

    and-int/2addr v4, v1

    if-eqz v4, :cond_13

    .line 23
    sget-object v4, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v4, v0, v12}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material/Colors;->i()J

    move-result-wide v4

    sget-object v6, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    invoke-virtual {v6, v0, v12}, Landroidx/compose/material/ContentAlpha;->d(Landroidx/compose/runtime/Composer;I)F

    move-result v6

    const/4 v11, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0xe

    const/16 v48, 0x0

    move-wide/from16 p1, v4

    move/from16 p3, v6

    move/from16 p4, v11

    move/from16 p5, v45

    move/from16 p6, v46

    move/from16 p7, v47

    move-object/from16 p8, v48

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    move-result-wide v4

    move-wide/from16 v45, v4

    goto :goto_13

    :cond_13
    move-wide/from16 v45, p39

    :goto_13
    const/high16 v4, 0x100000

    and-int/2addr v1, v4

    if-eqz v1, :cond_14

    .line 24
    sget-object v1, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    invoke-virtual {v1, v0, v12}, Landroidx/compose/material/ContentAlpha;->b(Landroidx/compose/runtime/Composer;I)F

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v11, 0xe

    const/4 v12, 0x0

    move-wide/from16 p1, v45

    move/from16 p3, v1

    move/from16 p4, v4

    move/from16 p5, v5

    move/from16 p6, v6

    move/from16 p7, v11

    move-object/from16 p8, v12

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    move-result-wide v4

    move-wide/from16 v48, v4

    goto :goto_14

    :cond_14
    move-wide/from16 v48, p41

    .line 25
    :goto_14
    new-instance v1, Landroidx/compose/material/DefaultTextFieldColors;

    move-object v4, v1

    const/16 v47, 0x0

    move-wide v5, v2

    move-wide v11, v13

    move-wide v13, v15

    move-wide/from16 v15, v17

    move-wide/from16 v17, v21

    move-wide/from16 v21, v23

    move-wide/from16 v23, v25

    move-wide/from16 v25, v27

    move-wide/from16 v27, v29

    move-wide/from16 v29, v31

    move-wide/from16 v31, v35

    move-wide/from16 v35, v37

    move-wide/from16 v37, v39

    move-wide/from16 v39, v41

    move-wide/from16 v41, v43

    move-wide/from16 v43, v45

    move-wide/from16 v45, v48

    invoke-direct/range {v4 .. v47}, Landroidx/compose/material/DefaultTextFieldColors;-><init>(JJJJJJJJJJJJJJJJJJJJJLkotlin/jvm/internal/k;)V

    invoke-interface/range {p43 .. p43}, Landroidx/compose/runtime/Composer;->Q()V

    return-object v1
.end method

.method public final n(FFFF)Landroidx/compose/foundation/layout/PaddingValues;
    .locals 0
    .annotation runtime Landroidx/compose/material/ExperimentalMaterialApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p3, p2, p4}, Landroidx/compose/foundation/layout/PaddingKt;->d(FFFF)Landroidx/compose/foundation/layout/PaddingValues;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final p(FFFF)Landroidx/compose/foundation/layout/PaddingValues;
    .locals 0
    .annotation runtime Landroidx/compose/material/ExperimentalMaterialApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2, p3, p4}, Landroidx/compose/foundation/layout/PaddingKt;->d(FFFF)Landroidx/compose/foundation/layout/PaddingValues;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
