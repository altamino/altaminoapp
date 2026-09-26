.class public final Landroidx/compose/material/SnackbarKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSnackbar.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Snackbar.kt\nandroidx/compose/material/SnackbarKt\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 4 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 6 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 7 Column.kt\nandroidx/compose/foundation/layout/ColumnKt\n*L\n1#1,364:1\n155#2:365\n155#2:366\n155#2:367\n155#2:659\n155#2:660\n155#2:661\n155#2:662\n155#2:663\n155#2:664\n155#2:665\n155#2:666\n155#2:667\n72#3,4:368\n76#3,11:373\n75#3:403\n76#3,11:405\n89#3:433\n89#3:438\n75#3:445\n76#3,11:447\n75#3:478\n76#3,11:480\n89#3:508\n75#3:516\n76#3,11:518\n89#3:546\n89#3:551\n75#3:553\n76#3,11:555\n75#3:585\n76#3,11:587\n89#3:615\n75#3:623\n76#3,11:625\n89#3:653\n89#3:658\n76#4:372\n76#4:404\n76#4:446\n76#4:479\n76#4:517\n76#4:554\n76#4:586\n76#4:624\n460#5,13:384\n460#5,13:416\n473#5,3:430\n473#5,3:435\n460#5,13:458\n460#5,13:491\n473#5,3:505\n460#5,13:529\n473#5,3:543\n473#5,3:548\n460#5,13:566\n460#5,13:598\n473#5,3:612\n460#5,13:636\n473#5,3:650\n473#5,3:655\n67#6,6:397\n73#6:429\n77#6:434\n67#6,6:472\n73#6:504\n77#6:509\n67#6,6:510\n73#6:542\n77#6:547\n67#6,6:579\n73#6:611\n77#6:616\n67#6,6:617\n73#6:649\n77#6:654\n74#7,6:439\n80#7:471\n84#7:552\n*S KotlinDebug\n*F\n+ 1 Snackbar.kt\nandroidx/compose/material/SnackbarKt\n*L\n88#1:365\n160#1:366\n175#1:367\n355#1:659\n356#1:660\n357#1:661\n358#1:662\n359#1:663\n360#1:664\n361#1:665\n362#1:666\n363#1:667\n237#1:368,4\n237#1:373,11\n238#1:403\n238#1:405,11\n238#1:433\n237#1:438\n275#1:445\n275#1:447,11\n283#1:478\n283#1:480,11\n283#1:508\n287#1:516\n287#1:518,11\n287#1:546\n275#1:551\n298#1:553\n298#1:555,11\n300#1:585\n300#1:587,11\n300#1:615\n301#1:623\n301#1:625,11\n301#1:653\n298#1:658\n237#1:372\n238#1:404\n275#1:446\n283#1:479\n287#1:517\n298#1:554\n300#1:586\n301#1:624\n237#1:384,13\n238#1:416,13\n238#1:430,3\n237#1:435,3\n275#1:458,13\n283#1:491,13\n283#1:505,3\n287#1:529,13\n287#1:543,3\n275#1:548,3\n298#1:566,13\n300#1:598,13\n300#1:612,3\n301#1:636,13\n301#1:650,3\n298#1:655,3\n238#1:397,6\n238#1:429\n238#1:434\n283#1:472,6\n283#1:504\n283#1:509\n287#1:510,6\n287#1:542\n287#1:547\n300#1:579,6\n300#1:611\n300#1:616\n301#1:617,6\n301#1:649\n301#1:654\n275#1:439,6\n275#1:471\n275#1:552\n*E\n"
.end annotation


# static fields
.field private static final HeightToFirstLine:F

.field private static final HorizontalSpacing:F

.field private static final HorizontalSpacingButtonSide:F

.field private static final LongButtonVerticalOffset:F

.field private static final SeparateButtonExtraY:F

.field private static final SnackbarMinHeightOneLine:F

.field private static final SnackbarMinHeightTwoLines:F

.field private static final SnackbarVerticalPadding:F

.field private static final TextEndExtraSpacing:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    const/16 v0, 0x1e

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
    sput v0, Landroidx/compose/material/SnackbarKt;->HeightToFirstLine:F

    .line 10
    .line 11
    const/16 v0, 0x10

    .line 12
    int-to-float v0, v0

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 16
    move-result v0

    .line 17
    .line 18
    sput v0, Landroidx/compose/material/SnackbarKt;->HorizontalSpacing:F

    .line 19
    .line 20
    const/16 v0, 0x8

    .line 21
    int-to-float v0, v0

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 25
    move-result v1

    .line 26
    .line 27
    sput v1, Landroidx/compose/material/SnackbarKt;->HorizontalSpacingButtonSide:F

    .line 28
    const/4 v1, 0x2

    .line 29
    int-to-float v1, v1

    .line 30
    .line 31
    .line 32
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 33
    move-result v1

    .line 34
    .line 35
    sput v1, Landroidx/compose/material/SnackbarKt;->SeparateButtonExtraY:F

    .line 36
    const/4 v1, 0x6

    .line 37
    int-to-float v1, v1

    .line 38
    .line 39
    .line 40
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 41
    move-result v1

    .line 42
    .line 43
    sput v1, Landroidx/compose/material/SnackbarKt;->SnackbarVerticalPadding:F

    .line 44
    .line 45
    .line 46
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 47
    move-result v0

    .line 48
    .line 49
    sput v0, Landroidx/compose/material/SnackbarKt;->TextEndExtraSpacing:F

    .line 50
    .line 51
    const/16 v0, 0xc

    .line 52
    int-to-float v0, v0

    .line 53
    .line 54
    .line 55
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 56
    move-result v0

    .line 57
    .line 58
    sput v0, Landroidx/compose/material/SnackbarKt;->LongButtonVerticalOffset:F

    .line 59
    .line 60
    const/16 v0, 0x30

    .line 61
    int-to-float v0, v0

    .line 62
    .line 63
    .line 64
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 65
    move-result v0

    .line 66
    .line 67
    sput v0, Landroidx/compose/material/SnackbarKt;->SnackbarMinHeightOneLine:F

    .line 68
    .line 69
    const/16 v0, 0x44

    .line 70
    int-to-float v0, v0

    .line 71
    .line 72
    .line 73
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 74
    move-result v0

    .line 75
    .line 76
    sput v0, Landroidx/compose/material/SnackbarKt;->SnackbarMinHeightTwoLines:F

    .line 77
    return-void
.end method

.method private static final a(Le8/p;Le8/p;Landroidx/compose/runtime/Composer;I)V
    .locals 20
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
            "Le8/p<",
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
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    move/from16 v2, p3

    .line 7
    .line 8
    .line 9
    const v3, -0x494235bc

    .line 10
    .line 11
    move-object/from16 v4, p2

    .line 12
    .line 13
    .line 14
    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 15
    move-result-object v3

    .line 16
    .line 17
    and-int/lit8 v4, v2, 0xe

    .line 18
    .line 19
    if-nez v4, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 23
    move-result v4

    .line 24
    .line 25
    if-eqz v4, :cond_0

    .line 26
    const/4 v4, 0x4

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v4, 0x2

    .line 29
    :goto_0
    or-int/2addr v4, v2

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move v4, v2

    .line 32
    .line 33
    :goto_1
    and-int/lit8 v5, v2, 0x70

    .line 34
    .line 35
    if-nez v5, :cond_3

    .line 36
    .line 37
    .line 38
    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 39
    move-result v5

    .line 40
    .line 41
    if-eqz v5, :cond_2

    .line 42
    .line 43
    const/16 v5, 0x20

    .line 44
    goto :goto_2

    .line 45
    .line 46
    :cond_2
    const/16 v5, 0x10

    .line 47
    :goto_2
    or-int/2addr v4, v5

    .line 48
    .line 49
    :cond_3
    and-int/lit8 v5, v4, 0x5b

    .line 50
    .line 51
    const/16 v6, 0x12

    .line 52
    .line 53
    if-ne v5, v6, :cond_5

    .line 54
    .line 55
    .line 56
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->b()Z

    .line 57
    move-result v5

    .line 58
    .line 59
    if-nez v5, :cond_4

    .line 60
    goto :goto_3

    .line 61
    .line 62
    .line 63
    :cond_4
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->g()V

    .line 64
    .line 65
    goto/16 :goto_7

    .line 66
    .line 67
    :cond_5
    :goto_3
    sget-object v5, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 68
    const/4 v6, 0x1

    .line 69
    const/4 v7, 0x0

    .line 70
    const/4 v8, 0x0

    .line 71
    .line 72
    .line 73
    invoke-static {v5, v8, v6, v7}, Landroidx/compose/foundation/layout/SizeKt;->n(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 74
    move-result-object v9

    .line 75
    .line 76
    sget v10, Landroidx/compose/material/SnackbarKt;->HorizontalSpacing:F

    .line 77
    const/4 v11, 0x0

    .line 78
    .line 79
    sget v6, Landroidx/compose/material/SnackbarKt;->HorizontalSpacingButtonSide:F

    .line 80
    .line 81
    sget v13, Landroidx/compose/material/SnackbarKt;->SeparateButtonExtraY:F

    .line 82
    const/4 v14, 0x2

    .line 83
    const/4 v15, 0x0

    .line 84
    move v12, v6

    .line 85
    .line 86
    .line 87
    invoke-static/range {v9 .. v15}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 88
    move-result-object v7

    .line 89
    .line 90
    .line 91
    const v8, -0x1cd0f17e

    .line 92
    .line 93
    .line 94
    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 95
    .line 96
    sget-object v8, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v8}, Landroidx/compose/foundation/layout/Arrangement;->f()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 100
    move-result-object v8

    .line 101
    .line 102
    sget-object v9, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v9}, Landroidx/compose/ui/Alignment$Companion;->k()Landroidx/compose/ui/Alignment$Horizontal;

    .line 106
    move-result-object v10

    .line 107
    const/4 v11, 0x0

    .line 108
    .line 109
    .line 110
    invoke-static {v8, v10, v3, v11}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 111
    move-result-object v8

    .line 112
    .line 113
    .line 114
    const v10, -0x4ee9b9da

    .line 115
    .line 116
    .line 117
    invoke-interface {v3, v10}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 118
    .line 119
    .line 120
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 121
    move-result-object v12

    .line 122
    .line 123
    .line 124
    invoke-interface {v3, v12}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 125
    move-result-object v12

    .line 126
    .line 127
    check-cast v12, Landroidx/compose/ui/unit/Density;

    .line 128
    .line 129
    .line 130
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 131
    move-result-object v13

    .line 132
    .line 133
    .line 134
    invoke-interface {v3, v13}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 135
    move-result-object v13

    .line 136
    .line 137
    check-cast v13, Landroidx/compose/ui/unit/LayoutDirection;

    .line 138
    .line 139
    .line 140
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 141
    move-result-object v14

    .line 142
    .line 143
    .line 144
    invoke-interface {v3, v14}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 145
    move-result-object v14

    .line 146
    .line 147
    check-cast v14, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 148
    .line 149
    sget-object v19, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 150
    .line 151
    .line 152
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 153
    move-result-object v15

    .line 154
    .line 155
    .line 156
    invoke-static {v7}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 157
    move-result-object v7

    .line 158
    .line 159
    .line 160
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 161
    move-result-object v10

    .line 162
    .line 163
    instance-of v10, v10, Landroidx/compose/runtime/Applier;

    .line 164
    .line 165
    if-nez v10, :cond_6

    .line 166
    .line 167
    .line 168
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 169
    .line 170
    .line 171
    :cond_6
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->e()V

    .line 172
    .line 173
    .line 174
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->r()Z

    .line 175
    move-result v10

    .line 176
    .line 177
    if-eqz v10, :cond_7

    .line 178
    .line 179
    .line 180
    invoke-interface {v3, v15}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 181
    goto :goto_4

    .line 182
    .line 183
    .line 184
    :cond_7
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->c()V

    .line 185
    .line 186
    .line 187
    :goto_4
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->L()V

    .line 188
    .line 189
    .line 190
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 191
    move-result-object v10

    .line 192
    .line 193
    .line 194
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 195
    move-result-object v15

    .line 196
    .line 197
    .line 198
    invoke-static {v10, v8, v15}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 202
    move-result-object v8

    .line 203
    .line 204
    .line 205
    invoke-static {v10, v12, v8}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 209
    move-result-object v8

    .line 210
    .line 211
    .line 212
    invoke-static {v10, v13, v8}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 216
    move-result-object v8

    .line 217
    .line 218
    .line 219
    invoke-static {v10, v14, v8}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 220
    .line 221
    .line 222
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->o()V

    .line 223
    .line 224
    .line 225
    invoke-static {v3}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 226
    move-result-object v8

    .line 227
    .line 228
    .line 229
    invoke-static {v8}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 230
    move-result-object v8

    .line 231
    .line 232
    .line 233
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 234
    move-result-object v10

    .line 235
    .line 236
    .line 237
    invoke-interface {v7, v8, v3, v10}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    const v7, 0x7ab4aae9

    .line 241
    .line 242
    .line 243
    invoke-interface {v3, v7}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 244
    .line 245
    .line 246
    const v8, -0x455f09d5

    .line 247
    .line 248
    .line 249
    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 250
    .line 251
    sget-object v8, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    .line 252
    .line 253
    .line 254
    const v10, -0x48628246

    .line 255
    .line 256
    .line 257
    invoke-interface {v3, v10}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 258
    .line 259
    sget v10, Landroidx/compose/material/SnackbarKt;->HeightToFirstLine:F

    .line 260
    .line 261
    sget v12, Landroidx/compose/material/SnackbarKt;->LongButtonVerticalOffset:F

    .line 262
    .line 263
    .line 264
    invoke-static {v5, v10, v12}, Landroidx/compose/foundation/layout/AlignmentLineKt;->g(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 265
    move-result-object v12

    .line 266
    const/4 v13, 0x0

    .line 267
    const/4 v14, 0x0

    .line 268
    .line 269
    const/16 v16, 0x0

    .line 270
    .line 271
    const/16 v17, 0xb

    .line 272
    .line 273
    const/16 v18, 0x0

    .line 274
    move v15, v6

    .line 275
    .line 276
    .line 277
    invoke-static/range {v12 .. v18}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 278
    move-result-object v6

    .line 279
    .line 280
    .line 281
    const v10, 0x2bb5b5d7

    .line 282
    .line 283
    .line 284
    invoke-interface {v3, v10}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v9}, Landroidx/compose/ui/Alignment$Companion;->o()Landroidx/compose/ui/Alignment;

    .line 288
    move-result-object v12

    .line 289
    .line 290
    .line 291
    invoke-static {v12, v11, v3, v11}, Landroidx/compose/foundation/layout/BoxKt;->h(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 292
    move-result-object v12

    .line 293
    .line 294
    .line 295
    const v13, -0x4ee9b9da

    .line 296
    .line 297
    .line 298
    invoke-interface {v3, v13}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 299
    .line 300
    .line 301
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 302
    move-result-object v13

    .line 303
    .line 304
    .line 305
    invoke-interface {v3, v13}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 306
    move-result-object v13

    .line 307
    .line 308
    check-cast v13, Landroidx/compose/ui/unit/Density;

    .line 309
    .line 310
    .line 311
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 312
    move-result-object v14

    .line 313
    .line 314
    .line 315
    invoke-interface {v3, v14}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 316
    move-result-object v14

    .line 317
    .line 318
    check-cast v14, Landroidx/compose/ui/unit/LayoutDirection;

    .line 319
    .line 320
    .line 321
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 322
    move-result-object v15

    .line 323
    .line 324
    .line 325
    invoke-interface {v3, v15}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 326
    move-result-object v15

    .line 327
    .line 328
    check-cast v15, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 329
    .line 330
    .line 331
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 332
    move-result-object v10

    .line 333
    .line 334
    .line 335
    invoke-static {v6}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 336
    move-result-object v6

    .line 337
    .line 338
    .line 339
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 340
    move-result-object v7

    .line 341
    .line 342
    instance-of v7, v7, Landroidx/compose/runtime/Applier;

    .line 343
    .line 344
    if-nez v7, :cond_8

    .line 345
    .line 346
    .line 347
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 348
    .line 349
    .line 350
    :cond_8
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->e()V

    .line 351
    .line 352
    .line 353
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->r()Z

    .line 354
    move-result v7

    .line 355
    .line 356
    if-eqz v7, :cond_9

    .line 357
    .line 358
    .line 359
    invoke-interface {v3, v10}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 360
    goto :goto_5

    .line 361
    .line 362
    .line 363
    :cond_9
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->c()V

    .line 364
    .line 365
    .line 366
    :goto_5
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->L()V

    .line 367
    .line 368
    .line 369
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 370
    move-result-object v7

    .line 371
    .line 372
    .line 373
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 374
    move-result-object v10

    .line 375
    .line 376
    .line 377
    invoke-static {v7, v12, v10}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 378
    .line 379
    .line 380
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 381
    move-result-object v10

    .line 382
    .line 383
    .line 384
    invoke-static {v7, v13, v10}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 385
    .line 386
    .line 387
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 388
    move-result-object v10

    .line 389
    .line 390
    .line 391
    invoke-static {v7, v14, v10}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 392
    .line 393
    .line 394
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 395
    move-result-object v10

    .line 396
    .line 397
    .line 398
    invoke-static {v7, v15, v10}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 399
    .line 400
    .line 401
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->o()V

    .line 402
    .line 403
    .line 404
    invoke-static {v3}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 405
    move-result-object v7

    .line 406
    .line 407
    .line 408
    invoke-static {v7}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 409
    move-result-object v7

    .line 410
    .line 411
    .line 412
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 413
    move-result-object v10

    .line 414
    .line 415
    .line 416
    invoke-interface {v6, v7, v3, v10}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    .line 418
    .line 419
    const v6, 0x7ab4aae9

    .line 420
    .line 421
    .line 422
    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 423
    .line 424
    .line 425
    const v6, -0x7f65a980

    .line 426
    .line 427
    .line 428
    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 429
    .line 430
    sget-object v7, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 431
    .line 432
    .line 433
    const v7, 0x471c3dc0    # 39997.75f

    .line 434
    .line 435
    .line 436
    invoke-interface {v3, v7}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 437
    .line 438
    and-int/lit8 v7, v4, 0xe

    .line 439
    .line 440
    .line 441
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 442
    move-result-object v7

    .line 443
    .line 444
    .line 445
    invoke-interface {v0, v3, v7}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    .line 447
    .line 448
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 449
    .line 450
    .line 451
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 452
    .line 453
    .line 454
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 455
    .line 456
    .line 457
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->d()V

    .line 458
    .line 459
    .line 460
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 461
    .line 462
    .line 463
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v9}, Landroidx/compose/ui/Alignment$Companion;->j()Landroidx/compose/ui/Alignment$Horizontal;

    .line 467
    move-result-object v7

    .line 468
    .line 469
    .line 470
    invoke-interface {v8, v5, v7}, Landroidx/compose/foundation/layout/ColumnScope;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Horizontal;)Landroidx/compose/ui/Modifier;

    .line 471
    move-result-object v5

    .line 472
    .line 473
    .line 474
    const v7, 0x2bb5b5d7

    .line 475
    .line 476
    .line 477
    invoke-interface {v3, v7}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 478
    .line 479
    .line 480
    invoke-virtual {v9}, Landroidx/compose/ui/Alignment$Companion;->o()Landroidx/compose/ui/Alignment;

    .line 481
    move-result-object v7

    .line 482
    .line 483
    .line 484
    invoke-static {v7, v11, v3, v11}, Landroidx/compose/foundation/layout/BoxKt;->h(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 485
    move-result-object v7

    .line 486
    .line 487
    .line 488
    const v8, -0x4ee9b9da

    .line 489
    .line 490
    .line 491
    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 492
    .line 493
    .line 494
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 495
    move-result-object v8

    .line 496
    .line 497
    .line 498
    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 499
    move-result-object v8

    .line 500
    .line 501
    check-cast v8, Landroidx/compose/ui/unit/Density;

    .line 502
    .line 503
    .line 504
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 505
    move-result-object v9

    .line 506
    .line 507
    .line 508
    invoke-interface {v3, v9}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 509
    move-result-object v9

    .line 510
    .line 511
    check-cast v9, Landroidx/compose/ui/unit/LayoutDirection;

    .line 512
    .line 513
    .line 514
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 515
    move-result-object v10

    .line 516
    .line 517
    .line 518
    invoke-interface {v3, v10}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 519
    move-result-object v10

    .line 520
    .line 521
    check-cast v10, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 522
    .line 523
    .line 524
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 525
    move-result-object v12

    .line 526
    .line 527
    .line 528
    invoke-static {v5}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 529
    move-result-object v5

    .line 530
    .line 531
    .line 532
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 533
    move-result-object v13

    .line 534
    .line 535
    instance-of v13, v13, Landroidx/compose/runtime/Applier;

    .line 536
    .line 537
    if-nez v13, :cond_a

    .line 538
    .line 539
    .line 540
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 541
    .line 542
    .line 543
    :cond_a
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->e()V

    .line 544
    .line 545
    .line 546
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->r()Z

    .line 547
    move-result v13

    .line 548
    .line 549
    if-eqz v13, :cond_b

    .line 550
    .line 551
    .line 552
    invoke-interface {v3, v12}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 553
    goto :goto_6

    .line 554
    .line 555
    .line 556
    :cond_b
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->c()V

    .line 557
    .line 558
    .line 559
    :goto_6
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->L()V

    .line 560
    .line 561
    .line 562
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 563
    move-result-object v12

    .line 564
    .line 565
    .line 566
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 567
    move-result-object v13

    .line 568
    .line 569
    .line 570
    invoke-static {v12, v7, v13}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 571
    .line 572
    .line 573
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 574
    move-result-object v7

    .line 575
    .line 576
    .line 577
    invoke-static {v12, v8, v7}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 578
    .line 579
    .line 580
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 581
    move-result-object v7

    .line 582
    .line 583
    .line 584
    invoke-static {v12, v9, v7}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 585
    .line 586
    .line 587
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 588
    move-result-object v7

    .line 589
    .line 590
    .line 591
    invoke-static {v12, v10, v7}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 592
    .line 593
    .line 594
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->o()V

    .line 595
    .line 596
    .line 597
    invoke-static {v3}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 598
    move-result-object v7

    .line 599
    .line 600
    .line 601
    invoke-static {v7}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 602
    move-result-object v7

    .line 603
    .line 604
    .line 605
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 606
    move-result-object v8

    .line 607
    .line 608
    .line 609
    invoke-interface {v5, v7, v3, v8}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    .line 611
    .line 612
    const v5, 0x7ab4aae9

    .line 613
    .line 614
    .line 615
    invoke-interface {v3, v5}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 616
    .line 617
    .line 618
    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 619
    .line 620
    .line 621
    const v5, -0x7d315f89

    .line 622
    .line 623
    .line 624
    invoke-interface {v3, v5}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 625
    .line 626
    shr-int/lit8 v4, v4, 0x3

    .line 627
    .line 628
    and-int/lit8 v4, v4, 0xe

    .line 629
    .line 630
    .line 631
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 632
    move-result-object v4

    .line 633
    .line 634
    .line 635
    invoke-interface {v1, v3, v4}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    .line 637
    .line 638
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 639
    .line 640
    .line 641
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 642
    .line 643
    .line 644
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 645
    .line 646
    .line 647
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->d()V

    .line 648
    .line 649
    .line 650
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 651
    .line 652
    .line 653
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 654
    .line 655
    .line 656
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 657
    .line 658
    .line 659
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 660
    .line 661
    .line 662
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 663
    .line 664
    .line 665
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->d()V

    .line 666
    .line 667
    .line 668
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 669
    .line 670
    .line 671
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 672
    .line 673
    .line 674
    :goto_7
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 675
    move-result-object v3

    .line 676
    .line 677
    if-nez v3, :cond_c

    .line 678
    goto :goto_8

    .line 679
    .line 680
    :cond_c
    new-instance v4, Landroidx/compose/material/SnackbarKt$NewLineButtonSnackbar$2;

    .line 681
    .line 682
    .line 683
    invoke-direct {v4, v0, v1, v2}, Landroidx/compose/material/SnackbarKt$NewLineButtonSnackbar$2;-><init>(Le8/p;Le8/p;I)V

    .line 684
    .line 685
    .line 686
    invoke-interface {v3, v4}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 687
    :goto_8
    return-void
.end method

.method private static final b(Le8/p;Le8/p;Landroidx/compose/runtime/Composer;I)V
    .locals 16
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
            "Le8/p<",
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
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    move/from16 v2, p3

    .line 7
    .line 8
    .line 9
    const v3, -0x1fe09a12

    .line 10
    .line 11
    move-object/from16 v4, p2

    .line 12
    .line 13
    .line 14
    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 15
    move-result-object v3

    .line 16
    .line 17
    and-int/lit8 v4, v2, 0xe

    .line 18
    .line 19
    if-nez v4, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 23
    move-result v4

    .line 24
    .line 25
    if-eqz v4, :cond_0

    .line 26
    const/4 v4, 0x4

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v4, 0x2

    .line 29
    :goto_0
    or-int/2addr v4, v2

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move v4, v2

    .line 32
    .line 33
    :goto_1
    and-int/lit8 v5, v2, 0x70

    .line 34
    .line 35
    if-nez v5, :cond_3

    .line 36
    .line 37
    .line 38
    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 39
    move-result v5

    .line 40
    .line 41
    if-eqz v5, :cond_2

    .line 42
    .line 43
    const/16 v5, 0x20

    .line 44
    goto :goto_2

    .line 45
    .line 46
    :cond_2
    const/16 v5, 0x10

    .line 47
    :goto_2
    or-int/2addr v4, v5

    .line 48
    .line 49
    :cond_3
    and-int/lit8 v5, v4, 0x5b

    .line 50
    .line 51
    const/16 v6, 0x12

    .line 52
    .line 53
    if-ne v5, v6, :cond_5

    .line 54
    .line 55
    .line 56
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->b()Z

    .line 57
    move-result v5

    .line 58
    .line 59
    if-nez v5, :cond_4

    .line 60
    goto :goto_3

    .line 61
    .line 62
    .line 63
    :cond_4
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->g()V

    .line 64
    .line 65
    goto/16 :goto_7

    .line 66
    .line 67
    :cond_5
    :goto_3
    sget-object v5, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 68
    .line 69
    sget v7, Landroidx/compose/material/SnackbarKt;->HorizontalSpacing:F

    .line 70
    const/4 v8, 0x0

    .line 71
    .line 72
    sget v9, Landroidx/compose/material/SnackbarKt;->HorizontalSpacingButtonSide:F

    .line 73
    const/4 v10, 0x0

    .line 74
    .line 75
    const/16 v11, 0xa

    .line 76
    const/4 v12, 0x0

    .line 77
    move-object v6, v5

    .line 78
    .line 79
    .line 80
    invoke-static/range {v6 .. v12}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 81
    move-result-object v6

    .line 82
    .line 83
    new-instance v7, Landroidx/compose/material/SnackbarKt$OneRowSnackbar$2;

    .line 84
    .line 85
    const-string v8, "action"

    .line 86
    .line 87
    const-string/jumbo v9, "text"

    .line 88
    .line 89
    .line 90
    invoke-direct {v7, v8, v9}, Landroidx/compose/material/SnackbarKt$OneRowSnackbar$2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    const v10, -0x4ee9b9da

    .line 94
    .line 95
    .line 96
    invoke-interface {v3, v10}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 97
    .line 98
    .line 99
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 100
    move-result-object v11

    .line 101
    .line 102
    .line 103
    invoke-interface {v3, v11}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 104
    move-result-object v11

    .line 105
    .line 106
    check-cast v11, Landroidx/compose/ui/unit/Density;

    .line 107
    .line 108
    .line 109
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 110
    move-result-object v12

    .line 111
    .line 112
    .line 113
    invoke-interface {v3, v12}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 114
    move-result-object v12

    .line 115
    .line 116
    check-cast v12, Landroidx/compose/ui/unit/LayoutDirection;

    .line 117
    .line 118
    .line 119
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 120
    move-result-object v13

    .line 121
    .line 122
    .line 123
    invoke-interface {v3, v13}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 124
    move-result-object v13

    .line 125
    .line 126
    check-cast v13, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 127
    .line 128
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 132
    move-result-object v15

    .line 133
    .line 134
    .line 135
    invoke-static {v6}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 136
    move-result-object v6

    .line 137
    .line 138
    .line 139
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 140
    move-result-object v10

    .line 141
    .line 142
    instance-of v10, v10, Landroidx/compose/runtime/Applier;

    .line 143
    .line 144
    if-nez v10, :cond_6

    .line 145
    .line 146
    .line 147
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 148
    .line 149
    .line 150
    :cond_6
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->e()V

    .line 151
    .line 152
    .line 153
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->r()Z

    .line 154
    move-result v10

    .line 155
    .line 156
    if-eqz v10, :cond_7

    .line 157
    .line 158
    .line 159
    invoke-interface {v3, v15}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 160
    goto :goto_4

    .line 161
    .line 162
    .line 163
    :cond_7
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->c()V

    .line 164
    .line 165
    .line 166
    :goto_4
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->L()V

    .line 167
    .line 168
    .line 169
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 170
    move-result-object v10

    .line 171
    .line 172
    .line 173
    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 174
    move-result-object v15

    .line 175
    .line 176
    .line 177
    invoke-static {v10, v7, v15}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 181
    move-result-object v7

    .line 182
    .line 183
    .line 184
    invoke-static {v10, v11, v7}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 188
    move-result-object v7

    .line 189
    .line 190
    .line 191
    invoke-static {v10, v12, v7}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 195
    move-result-object v7

    .line 196
    .line 197
    .line 198
    invoke-static {v10, v13, v7}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 199
    .line 200
    .line 201
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->o()V

    .line 202
    .line 203
    .line 204
    invoke-static {v3}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 205
    move-result-object v7

    .line 206
    .line 207
    .line 208
    invoke-static {v7}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 209
    move-result-object v7

    .line 210
    const/4 v10, 0x0

    .line 211
    .line 212
    .line 213
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 214
    move-result-object v11

    .line 215
    .line 216
    .line 217
    invoke-interface {v6, v7, v3, v11}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    const v6, 0x7ab4aae9

    .line 221
    .line 222
    .line 223
    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 224
    .line 225
    .line 226
    const v7, -0x2653ea29

    .line 227
    .line 228
    .line 229
    invoke-interface {v3, v7}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 230
    .line 231
    .line 232
    invoke-static {v5, v9}, Landroidx/compose/ui/layout/LayoutIdKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 233
    move-result-object v7

    .line 234
    .line 235
    sget v9, Landroidx/compose/material/SnackbarKt;->SnackbarVerticalPadding:F

    .line 236
    const/4 v11, 0x1

    .line 237
    const/4 v12, 0x0

    .line 238
    const/4 v13, 0x0

    .line 239
    .line 240
    .line 241
    invoke-static {v7, v13, v9, v11, v12}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 242
    move-result-object v7

    .line 243
    .line 244
    .line 245
    const v9, 0x2bb5b5d7

    .line 246
    .line 247
    .line 248
    invoke-interface {v3, v9}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 249
    .line 250
    sget-object v11, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v11}, Landroidx/compose/ui/Alignment$Companion;->o()Landroidx/compose/ui/Alignment;

    .line 254
    move-result-object v12

    .line 255
    .line 256
    .line 257
    invoke-static {v12, v10, v3, v10}, Landroidx/compose/foundation/layout/BoxKt;->h(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 258
    move-result-object v12

    .line 259
    .line 260
    .line 261
    const v13, -0x4ee9b9da

    .line 262
    .line 263
    .line 264
    invoke-interface {v3, v13}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 265
    .line 266
    .line 267
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 268
    move-result-object v13

    .line 269
    .line 270
    .line 271
    invoke-interface {v3, v13}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 272
    move-result-object v13

    .line 273
    .line 274
    check-cast v13, Landroidx/compose/ui/unit/Density;

    .line 275
    .line 276
    .line 277
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 278
    move-result-object v15

    .line 279
    .line 280
    .line 281
    invoke-interface {v3, v15}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 282
    move-result-object v15

    .line 283
    .line 284
    check-cast v15, Landroidx/compose/ui/unit/LayoutDirection;

    .line 285
    .line 286
    .line 287
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 288
    move-result-object v9

    .line 289
    .line 290
    .line 291
    invoke-interface {v3, v9}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 292
    move-result-object v9

    .line 293
    .line 294
    check-cast v9, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 298
    move-result-object v6

    .line 299
    .line 300
    .line 301
    invoke-static {v7}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 302
    move-result-object v7

    .line 303
    .line 304
    .line 305
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 306
    move-result-object v10

    .line 307
    .line 308
    instance-of v10, v10, Landroidx/compose/runtime/Applier;

    .line 309
    .line 310
    if-nez v10, :cond_8

    .line 311
    .line 312
    .line 313
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 314
    .line 315
    .line 316
    :cond_8
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->e()V

    .line 317
    .line 318
    .line 319
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->r()Z

    .line 320
    move-result v10

    .line 321
    .line 322
    if-eqz v10, :cond_9

    .line 323
    .line 324
    .line 325
    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 326
    goto :goto_5

    .line 327
    .line 328
    .line 329
    :cond_9
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->c()V

    .line 330
    .line 331
    .line 332
    :goto_5
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->L()V

    .line 333
    .line 334
    .line 335
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 336
    move-result-object v6

    .line 337
    .line 338
    .line 339
    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 340
    move-result-object v10

    .line 341
    .line 342
    .line 343
    invoke-static {v6, v12, v10}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 347
    move-result-object v10

    .line 348
    .line 349
    .line 350
    invoke-static {v6, v13, v10}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 354
    move-result-object v10

    .line 355
    .line 356
    .line 357
    invoke-static {v6, v15, v10}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 361
    move-result-object v10

    .line 362
    .line 363
    .line 364
    invoke-static {v6, v9, v10}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 365
    .line 366
    .line 367
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->o()V

    .line 368
    .line 369
    .line 370
    invoke-static {v3}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 371
    move-result-object v6

    .line 372
    .line 373
    .line 374
    invoke-static {v6}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 375
    move-result-object v6

    .line 376
    const/4 v9, 0x0

    .line 377
    .line 378
    .line 379
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 380
    move-result-object v10

    .line 381
    .line 382
    .line 383
    invoke-interface {v7, v6, v3, v10}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    const v6, 0x7ab4aae9

    .line 387
    .line 388
    .line 389
    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 390
    .line 391
    .line 392
    const v6, -0x7f65a980

    .line 393
    .line 394
    .line 395
    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 396
    .line 397
    sget-object v7, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 398
    .line 399
    .line 400
    const v7, 0x605d7791

    .line 401
    .line 402
    .line 403
    invoke-interface {v3, v7}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 404
    .line 405
    and-int/lit8 v7, v4, 0xe

    .line 406
    .line 407
    .line 408
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 409
    move-result-object v7

    .line 410
    .line 411
    .line 412
    invoke-interface {v0, v3, v7}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    .line 414
    .line 415
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 416
    .line 417
    .line 418
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 419
    .line 420
    .line 421
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 422
    .line 423
    .line 424
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->d()V

    .line 425
    .line 426
    .line 427
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 428
    .line 429
    .line 430
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 431
    .line 432
    .line 433
    invoke-static {v5, v8}, Landroidx/compose/ui/layout/LayoutIdKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 434
    move-result-object v5

    .line 435
    .line 436
    .line 437
    const v7, 0x2bb5b5d7

    .line 438
    .line 439
    .line 440
    invoke-interface {v3, v7}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 441
    .line 442
    .line 443
    invoke-virtual {v11}, Landroidx/compose/ui/Alignment$Companion;->o()Landroidx/compose/ui/Alignment;

    .line 444
    move-result-object v7

    .line 445
    const/4 v8, 0x0

    .line 446
    .line 447
    .line 448
    invoke-static {v7, v8, v3, v8}, Landroidx/compose/foundation/layout/BoxKt;->h(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 449
    move-result-object v7

    .line 450
    .line 451
    .line 452
    const v8, -0x4ee9b9da

    .line 453
    .line 454
    .line 455
    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 456
    .line 457
    .line 458
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 459
    move-result-object v8

    .line 460
    .line 461
    .line 462
    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 463
    move-result-object v8

    .line 464
    .line 465
    check-cast v8, Landroidx/compose/ui/unit/Density;

    .line 466
    .line 467
    .line 468
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 469
    move-result-object v9

    .line 470
    .line 471
    .line 472
    invoke-interface {v3, v9}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 473
    move-result-object v9

    .line 474
    .line 475
    check-cast v9, Landroidx/compose/ui/unit/LayoutDirection;

    .line 476
    .line 477
    .line 478
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 479
    move-result-object v10

    .line 480
    .line 481
    .line 482
    invoke-interface {v3, v10}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 483
    move-result-object v10

    .line 484
    .line 485
    check-cast v10, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 486
    .line 487
    .line 488
    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 489
    move-result-object v11

    .line 490
    .line 491
    .line 492
    invoke-static {v5}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 493
    move-result-object v5

    .line 494
    .line 495
    .line 496
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 497
    move-result-object v12

    .line 498
    .line 499
    instance-of v12, v12, Landroidx/compose/runtime/Applier;

    .line 500
    .line 501
    if-nez v12, :cond_a

    .line 502
    .line 503
    .line 504
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 505
    .line 506
    .line 507
    :cond_a
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->e()V

    .line 508
    .line 509
    .line 510
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->r()Z

    .line 511
    move-result v12

    .line 512
    .line 513
    if-eqz v12, :cond_b

    .line 514
    .line 515
    .line 516
    invoke-interface {v3, v11}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 517
    goto :goto_6

    .line 518
    .line 519
    .line 520
    :cond_b
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->c()V

    .line 521
    .line 522
    .line 523
    :goto_6
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->L()V

    .line 524
    .line 525
    .line 526
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 527
    move-result-object v11

    .line 528
    .line 529
    .line 530
    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 531
    move-result-object v12

    .line 532
    .line 533
    .line 534
    invoke-static {v11, v7, v12}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 535
    .line 536
    .line 537
    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 538
    move-result-object v7

    .line 539
    .line 540
    .line 541
    invoke-static {v11, v8, v7}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 542
    .line 543
    .line 544
    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 545
    move-result-object v7

    .line 546
    .line 547
    .line 548
    invoke-static {v11, v9, v7}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 549
    .line 550
    .line 551
    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 552
    move-result-object v7

    .line 553
    .line 554
    .line 555
    invoke-static {v11, v10, v7}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 556
    .line 557
    .line 558
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->o()V

    .line 559
    .line 560
    .line 561
    invoke-static {v3}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 562
    move-result-object v7

    .line 563
    .line 564
    .line 565
    invoke-static {v7}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 566
    move-result-object v7

    .line 567
    const/4 v8, 0x0

    .line 568
    .line 569
    .line 570
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 571
    move-result-object v8

    .line 572
    .line 573
    .line 574
    invoke-interface {v5, v7, v3, v8}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    .line 576
    .line 577
    const v5, 0x7ab4aae9

    .line 578
    .line 579
    .line 580
    invoke-interface {v3, v5}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 581
    .line 582
    .line 583
    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 584
    .line 585
    .line 586
    const v5, -0x64bda5c6

    .line 587
    .line 588
    .line 589
    invoke-interface {v3, v5}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 590
    .line 591
    shr-int/lit8 v4, v4, 0x3

    .line 592
    .line 593
    and-int/lit8 v4, v4, 0xe

    .line 594
    .line 595
    .line 596
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 597
    move-result-object v4

    .line 598
    .line 599
    .line 600
    invoke-interface {v1, v3, v4}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    .line 602
    .line 603
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 604
    .line 605
    .line 606
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 607
    .line 608
    .line 609
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 610
    .line 611
    .line 612
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->d()V

    .line 613
    .line 614
    .line 615
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 616
    .line 617
    .line 618
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 619
    .line 620
    .line 621
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 622
    .line 623
    .line 624
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 625
    .line 626
    .line 627
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->d()V

    .line 628
    .line 629
    .line 630
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 631
    .line 632
    .line 633
    :goto_7
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 634
    move-result-object v3

    .line 635
    .line 636
    if-nez v3, :cond_c

    .line 637
    goto :goto_8

    .line 638
    .line 639
    :cond_c
    new-instance v4, Landroidx/compose/material/SnackbarKt$OneRowSnackbar$3;

    .line 640
    .line 641
    .line 642
    invoke-direct {v4, v0, v1, v2}, Landroidx/compose/material/SnackbarKt$OneRowSnackbar$3;-><init>(Le8/p;Le8/p;I)V

    .line 643
    .line 644
    .line 645
    invoke-interface {v3, v4}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 646
    :goto_8
    return-void
.end method

.method public static final c(Landroidx/compose/ui/Modifier;Le8/p;ZLandroidx/compose/ui/graphics/Shape;JJFLe8/p;Landroidx/compose/runtime/Composer;II)V
    .locals 29
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/graphics/Shape;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Landroidx/compose/runtime/Composer;
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
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;Z",
            "Landroidx/compose/ui/graphics/Shape;",
            "JJF",
            "Le8/p<",
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
    move-object/from16 v10, p9

    .line 3
    .line 4
    move/from16 v11, p11

    .line 5
    .line 6
    move/from16 v12, p12

    .line 7
    .line 8
    const-string v0, "content"

    .line 9
    .line 10
    .line 11
    invoke-static {v10, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const v0, -0x21465a48

    .line 15
    .line 16
    move-object/from16 v1, p10

    .line 17
    .line 18
    .line 19
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    and-int/lit8 v1, v12, 0x1

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    or-int/lit8 v2, v11, 0x6

    .line 27
    move v3, v2

    .line 28
    .line 29
    move-object/from16 v2, p0

    .line 30
    goto :goto_1

    .line 31
    .line 32
    :cond_0
    and-int/lit8 v2, v11, 0xe

    .line 33
    .line 34
    if-nez v2, :cond_2

    .line 35
    .line 36
    move-object/from16 v2, p0

    .line 37
    .line 38
    .line 39
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 40
    move-result v3

    .line 41
    .line 42
    if-eqz v3, :cond_1

    .line 43
    const/4 v3, 0x4

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v3, 0x2

    .line 46
    :goto_0
    or-int/2addr v3, v11

    .line 47
    goto :goto_1

    .line 48
    .line 49
    :cond_2
    move-object/from16 v2, p0

    .line 50
    move v3, v11

    .line 51
    .line 52
    :goto_1
    and-int/lit8 v4, v12, 0x2

    .line 53
    .line 54
    if-eqz v4, :cond_4

    .line 55
    .line 56
    or-int/lit8 v3, v3, 0x30

    .line 57
    .line 58
    :cond_3
    move-object/from16 v5, p1

    .line 59
    goto :goto_3

    .line 60
    .line 61
    :cond_4
    and-int/lit8 v5, v11, 0x70

    .line 62
    .line 63
    if-nez v5, :cond_3

    .line 64
    .line 65
    move-object/from16 v5, p1

    .line 66
    .line 67
    .line 68
    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 69
    move-result v6

    .line 70
    .line 71
    if-eqz v6, :cond_5

    .line 72
    .line 73
    const/16 v6, 0x20

    .line 74
    goto :goto_2

    .line 75
    .line 76
    :cond_5
    const/16 v6, 0x10

    .line 77
    :goto_2
    or-int/2addr v3, v6

    .line 78
    .line 79
    :goto_3
    and-int/lit8 v6, v12, 0x4

    .line 80
    .line 81
    if-eqz v6, :cond_7

    .line 82
    .line 83
    or-int/lit16 v3, v3, 0x180

    .line 84
    .line 85
    :cond_6
    move/from16 v7, p2

    .line 86
    goto :goto_5

    .line 87
    .line 88
    :cond_7
    and-int/lit16 v7, v11, 0x380

    .line 89
    .line 90
    if-nez v7, :cond_6

    .line 91
    .line 92
    move/from16 v7, p2

    .line 93
    .line 94
    .line 95
    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->m(Z)Z

    .line 96
    move-result v8

    .line 97
    .line 98
    if-eqz v8, :cond_8

    .line 99
    .line 100
    const/16 v8, 0x100

    .line 101
    goto :goto_4

    .line 102
    .line 103
    :cond_8
    const/16 v8, 0x80

    .line 104
    :goto_4
    or-int/2addr v3, v8

    .line 105
    .line 106
    :goto_5
    and-int/lit16 v8, v11, 0x1c00

    .line 107
    .line 108
    if-nez v8, :cond_b

    .line 109
    .line 110
    and-int/lit8 v8, v12, 0x8

    .line 111
    .line 112
    if-nez v8, :cond_9

    .line 113
    .line 114
    move-object/from16 v8, p3

    .line 115
    .line 116
    .line 117
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 118
    move-result v9

    .line 119
    .line 120
    if-eqz v9, :cond_a

    .line 121
    .line 122
    const/16 v9, 0x800

    .line 123
    goto :goto_6

    .line 124
    .line 125
    :cond_9
    move-object/from16 v8, p3

    .line 126
    .line 127
    :cond_a
    const/16 v9, 0x400

    .line 128
    :goto_6
    or-int/2addr v3, v9

    .line 129
    goto :goto_7

    .line 130
    .line 131
    :cond_b
    move-object/from16 v8, p3

    .line 132
    .line 133
    .line 134
    :goto_7
    const v9, 0xe000

    .line 135
    and-int/2addr v9, v11

    .line 136
    .line 137
    if-nez v9, :cond_d

    .line 138
    .line 139
    and-int/lit8 v9, v12, 0x10

    .line 140
    .line 141
    move-wide/from16 v13, p4

    .line 142
    .line 143
    if-nez v9, :cond_c

    .line 144
    .line 145
    .line 146
    invoke-interface {v0, v13, v14}, Landroidx/compose/runtime/Composer;->q(J)Z

    .line 147
    move-result v9

    .line 148
    .line 149
    if-eqz v9, :cond_c

    .line 150
    .line 151
    const/16 v9, 0x4000

    .line 152
    goto :goto_8

    .line 153
    .line 154
    :cond_c
    const/16 v9, 0x2000

    .line 155
    :goto_8
    or-int/2addr v3, v9

    .line 156
    goto :goto_9

    .line 157
    .line 158
    :cond_d
    move-wide/from16 v13, p4

    .line 159
    .line 160
    :goto_9
    const/high16 v9, 0x70000

    .line 161
    .line 162
    and-int v15, v11, v9

    .line 163
    .line 164
    if-nez v15, :cond_f

    .line 165
    .line 166
    and-int/lit8 v15, v12, 0x20

    .line 167
    .line 168
    move-wide/from16 v9, p6

    .line 169
    .line 170
    if-nez v15, :cond_e

    .line 171
    .line 172
    .line 173
    invoke-interface {v0, v9, v10}, Landroidx/compose/runtime/Composer;->q(J)Z

    .line 174
    move-result v15

    .line 175
    .line 176
    if-eqz v15, :cond_e

    .line 177
    .line 178
    const/high16 v15, 0x20000

    .line 179
    goto :goto_a

    .line 180
    .line 181
    :cond_e
    const/high16 v15, 0x10000

    .line 182
    :goto_a
    or-int/2addr v3, v15

    .line 183
    goto :goto_b

    .line 184
    .line 185
    :cond_f
    move-wide/from16 v9, p6

    .line 186
    .line 187
    :goto_b
    and-int/lit8 v15, v12, 0x40

    .line 188
    .line 189
    const/high16 v16, 0x180000

    .line 190
    .line 191
    if-eqz v15, :cond_10

    .line 192
    .line 193
    or-int v3, v3, v16

    .line 194
    .line 195
    move/from16 v2, p8

    .line 196
    goto :goto_d

    .line 197
    .line 198
    :cond_10
    const/high16 v17, 0x380000

    .line 199
    .line 200
    and-int v17, v11, v17

    .line 201
    .line 202
    move/from16 v2, p8

    .line 203
    .line 204
    if-nez v17, :cond_12

    .line 205
    .line 206
    .line 207
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->n(F)Z

    .line 208
    move-result v17

    .line 209
    .line 210
    if-eqz v17, :cond_11

    .line 211
    .line 212
    const/high16 v17, 0x100000

    .line 213
    goto :goto_c

    .line 214
    .line 215
    :cond_11
    const/high16 v17, 0x80000

    .line 216
    .line 217
    :goto_c
    or-int v3, v3, v17

    .line 218
    .line 219
    :cond_12
    :goto_d
    and-int/lit16 v2, v12, 0x80

    .line 220
    .line 221
    if-eqz v2, :cond_13

    .line 222
    .line 223
    const/high16 v2, 0xc00000

    .line 224
    or-int/2addr v3, v2

    .line 225
    .line 226
    move-object/from16 v10, p9

    .line 227
    goto :goto_f

    .line 228
    .line 229
    :cond_13
    const/high16 v2, 0x1c00000

    .line 230
    and-int/2addr v2, v11

    .line 231
    .line 232
    move-object/from16 v10, p9

    .line 233
    .line 234
    if-nez v2, :cond_15

    .line 235
    .line 236
    .line 237
    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 238
    move-result v2

    .line 239
    .line 240
    if-eqz v2, :cond_14

    .line 241
    .line 242
    const/high16 v2, 0x800000

    .line 243
    goto :goto_e

    .line 244
    .line 245
    :cond_14
    const/high16 v2, 0x400000

    .line 246
    :goto_e
    or-int/2addr v3, v2

    .line 247
    .line 248
    .line 249
    :cond_15
    :goto_f
    const v2, 0x16db6db

    .line 250
    and-int/2addr v2, v3

    .line 251
    .line 252
    .line 253
    const v9, 0x492492

    .line 254
    .line 255
    if-ne v2, v9, :cond_17

    .line 256
    .line 257
    .line 258
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->b()Z

    .line 259
    move-result v2

    .line 260
    .line 261
    if-nez v2, :cond_16

    .line 262
    goto :goto_10

    .line 263
    .line 264
    .line 265
    :cond_16
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->g()V

    .line 266
    .line 267
    move-object/from16 v1, p0

    .line 268
    .line 269
    move/from16 v9, p8

    .line 270
    move-object v2, v5

    .line 271
    move v3, v7

    .line 272
    move-object v4, v8

    .line 273
    move-wide v5, v13

    .line 274
    .line 275
    move-wide/from16 v7, p6

    .line 276
    .line 277
    goto/16 :goto_16

    .line 278
    .line 279
    .line 280
    :cond_17
    :goto_10
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->J()V

    .line 281
    .line 282
    and-int/lit8 v2, v11, 0x1

    .line 283
    .line 284
    .line 285
    const v9, -0x70001

    .line 286
    .line 287
    .line 288
    const v17, -0xe001

    .line 289
    .line 290
    if-eqz v2, :cond_1c

    .line 291
    .line 292
    .line 293
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->h()Z

    .line 294
    move-result v2

    .line 295
    .line 296
    if-eqz v2, :cond_18

    .line 297
    goto :goto_11

    .line 298
    .line 299
    .line 300
    :cond_18
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->g()V

    .line 301
    .line 302
    and-int/lit8 v1, v12, 0x8

    .line 303
    .line 304
    if-eqz v1, :cond_19

    .line 305
    .line 306
    and-int/lit16 v3, v3, -0x1c01

    .line 307
    .line 308
    :cond_19
    and-int/lit8 v1, v12, 0x10

    .line 309
    .line 310
    if-eqz v1, :cond_1a

    .line 311
    .line 312
    and-int v3, v3, v17

    .line 313
    .line 314
    :cond_1a
    and-int/lit8 v1, v12, 0x20

    .line 315
    .line 316
    if-eqz v1, :cond_1b

    .line 317
    and-int/2addr v3, v9

    .line 318
    .line 319
    :cond_1b
    move-object/from16 v1, p0

    .line 320
    .line 321
    move-wide/from16 v25, p6

    .line 322
    .line 323
    move/from16 v4, p8

    .line 324
    move v6, v3

    .line 325
    move-wide v2, v13

    .line 326
    goto :goto_15

    .line 327
    .line 328
    :cond_1c
    :goto_11
    if-eqz v1, :cond_1d

    .line 329
    .line 330
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 331
    goto :goto_12

    .line 332
    .line 333
    :cond_1d
    move-object/from16 v1, p0

    .line 334
    .line 335
    :goto_12
    if-eqz v4, :cond_1e

    .line 336
    const/4 v2, 0x0

    .line 337
    move-object v5, v2

    .line 338
    .line 339
    :cond_1e
    if-eqz v6, :cond_1f

    .line 340
    const/4 v2, 0x0

    .line 341
    move v7, v2

    .line 342
    .line 343
    :cond_1f
    and-int/lit8 v2, v12, 0x8

    .line 344
    const/4 v4, 0x6

    .line 345
    .line 346
    if-eqz v2, :cond_20

    .line 347
    .line 348
    sget-object v2, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 349
    .line 350
    .line 351
    invoke-virtual {v2, v0, v4}, Landroidx/compose/material/MaterialTheme;->b(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Shapes;

    .line 352
    move-result-object v2

    .line 353
    .line 354
    .line 355
    invoke-virtual {v2}, Landroidx/compose/material/Shapes;->c()Landroidx/compose/foundation/shape/CornerBasedShape;

    .line 356
    move-result-object v2

    .line 357
    .line 358
    and-int/lit16 v3, v3, -0x1c01

    .line 359
    move-object v8, v2

    .line 360
    .line 361
    :cond_20
    and-int/lit8 v2, v12, 0x10

    .line 362
    .line 363
    if-eqz v2, :cond_21

    .line 364
    .line 365
    sget-object v2, Landroidx/compose/material/SnackbarDefaults;->INSTANCE:Landroidx/compose/material/SnackbarDefaults;

    .line 366
    .line 367
    .line 368
    invoke-virtual {v2, v0, v4}, Landroidx/compose/material/SnackbarDefaults;->a(Landroidx/compose/runtime/Composer;I)J

    .line 369
    move-result-wide v13

    .line 370
    .line 371
    and-int v3, v3, v17

    .line 372
    .line 373
    :cond_21
    and-int/lit8 v2, v12, 0x20

    .line 374
    .line 375
    if-eqz v2, :cond_22

    .line 376
    .line 377
    sget-object v2, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 378
    .line 379
    .line 380
    invoke-virtual {v2, v0, v4}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 381
    move-result-object v2

    .line 382
    .line 383
    .line 384
    invoke-virtual {v2}, Landroidx/compose/material/Colors;->n()J

    .line 385
    move-result-wide v17

    .line 386
    .line 387
    and-int v2, v3, v9

    .line 388
    move v3, v2

    .line 389
    goto :goto_13

    .line 390
    .line 391
    :cond_22
    move-wide/from16 v17, p6

    .line 392
    .line 393
    :goto_13
    if-eqz v15, :cond_23

    .line 394
    int-to-float v2, v4

    .line 395
    .line 396
    .line 397
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 398
    move-result v2

    .line 399
    move v4, v2

    .line 400
    :goto_14
    move v6, v3

    .line 401
    move-wide v2, v13

    .line 402
    .line 403
    move-wide/from16 v25, v17

    .line 404
    goto :goto_15

    .line 405
    .line 406
    :cond_23
    move/from16 v4, p8

    .line 407
    goto :goto_14

    .line 408
    .line 409
    .line 410
    :goto_15
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->A()V

    .line 411
    .line 412
    const/16 v19, 0x0

    .line 413
    .line 414
    new-instance v9, Landroidx/compose/material/SnackbarKt$Snackbar$1;

    .line 415
    .line 416
    .line 417
    invoke-direct {v9, v5, v10, v6, v7}, Landroidx/compose/material/SnackbarKt$Snackbar$1;-><init>(Le8/p;Le8/p;IZ)V

    .line 418
    .line 419
    .line 420
    const v13, -0x7c3ab304

    .line 421
    const/4 v14, 0x1

    .line 422
    .line 423
    .line 424
    invoke-static {v0, v13, v14, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 425
    move-result-object v21

    .line 426
    .line 427
    and-int/lit8 v9, v6, 0xe

    .line 428
    .line 429
    or-int v9, v9, v16

    .line 430
    .line 431
    shr-int/lit8 v13, v6, 0x6

    .line 432
    .line 433
    and-int/lit8 v14, v13, 0x70

    .line 434
    or-int/2addr v9, v14

    .line 435
    .line 436
    and-int/lit16 v14, v13, 0x380

    .line 437
    or-int/2addr v9, v14

    .line 438
    .line 439
    and-int/lit16 v13, v13, 0x1c00

    .line 440
    or-int/2addr v9, v13

    .line 441
    .line 442
    shr-int/lit8 v6, v6, 0x3

    .line 443
    .line 444
    const/high16 v13, 0x70000

    .line 445
    and-int/2addr v6, v13

    .line 446
    .line 447
    or-int v23, v9, v6

    .line 448
    .line 449
    const/16 v24, 0x10

    .line 450
    move-object v13, v1

    .line 451
    move-object v14, v8

    .line 452
    move-wide v15, v2

    .line 453
    .line 454
    move-wide/from16 v17, v25

    .line 455
    .line 456
    move/from16 v20, v4

    .line 457
    .line 458
    move-object/from16 v22, v0

    .line 459
    .line 460
    .line 461
    invoke-static/range {v13 .. v24}, Landroidx/compose/material/SurfaceKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLe8/p;Landroidx/compose/runtime/Composer;II)V

    .line 462
    move v9, v4

    .line 463
    move-object v4, v8

    .line 464
    .line 465
    move-wide/from16 v27, v2

    .line 466
    move-object v2, v5

    .line 467
    .line 468
    move-wide/from16 v5, v27

    .line 469
    move v3, v7

    .line 470
    .line 471
    move-wide/from16 v7, v25

    .line 472
    .line 473
    .line 474
    :goto_16
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 475
    move-result-object v13

    .line 476
    .line 477
    if-nez v13, :cond_24

    .line 478
    goto :goto_17

    .line 479
    .line 480
    :cond_24
    new-instance v14, Landroidx/compose/material/SnackbarKt$Snackbar$2;

    .line 481
    move-object v0, v14

    .line 482
    .line 483
    move-object/from16 v10, p9

    .line 484
    .line 485
    move/from16 v11, p11

    .line 486
    .line 487
    move/from16 v12, p12

    .line 488
    .line 489
    .line 490
    invoke-direct/range {v0 .. v12}, Landroidx/compose/material/SnackbarKt$Snackbar$2;-><init>(Landroidx/compose/ui/Modifier;Le8/p;ZLandroidx/compose/ui/graphics/Shape;JJFLe8/p;II)V

    .line 491
    .line 492
    .line 493
    invoke-interface {v13, v14}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 494
    :goto_17
    return-void
.end method

.method public static final d(Landroidx/compose/material/SnackbarData;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJJFLandroidx/compose/runtime/Composer;II)V
    .locals 29
    .param p0    # Landroidx/compose/material/SnackbarData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/graphics/Shape;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v1, p0

    .line 3
    .line 4
    move/from16 v12, p12

    .line 5
    .line 6
    move/from16 v13, p13

    .line 7
    .line 8
    const-string/jumbo v0, "snackbarData"

    .line 9
    .line 10
    .line 11
    invoke-static {v1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const v0, 0xf6ad9ce

    .line 15
    .line 16
    move-object/from16 v2, p11

    .line 17
    .line 18
    .line 19
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    and-int/lit8 v2, v13, 0x1

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    or-int/lit8 v2, v12, 0x6

    .line 27
    goto :goto_1

    .line 28
    .line 29
    :cond_0
    and-int/lit8 v2, v12, 0xe

    .line 30
    .line 31
    if-nez v2, :cond_2

    .line 32
    .line 33
    .line 34
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 35
    move-result v2

    .line 36
    .line 37
    if-eqz v2, :cond_1

    .line 38
    const/4 v2, 0x4

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v2, 0x2

    .line 41
    :goto_0
    or-int/2addr v2, v12

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    move v2, v12

    .line 44
    .line 45
    :goto_1
    and-int/lit8 v3, v13, 0x2

    .line 46
    .line 47
    if-eqz v3, :cond_4

    .line 48
    .line 49
    or-int/lit8 v2, v2, 0x30

    .line 50
    .line 51
    :cond_3
    move-object/from16 v4, p1

    .line 52
    goto :goto_3

    .line 53
    .line 54
    :cond_4
    and-int/lit8 v4, v12, 0x70

    .line 55
    .line 56
    if-nez v4, :cond_3

    .line 57
    .line 58
    move-object/from16 v4, p1

    .line 59
    .line 60
    .line 61
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 62
    move-result v5

    .line 63
    .line 64
    if-eqz v5, :cond_5

    .line 65
    .line 66
    const/16 v5, 0x20

    .line 67
    goto :goto_2

    .line 68
    .line 69
    :cond_5
    const/16 v5, 0x10

    .line 70
    :goto_2
    or-int/2addr v2, v5

    .line 71
    .line 72
    :goto_3
    and-int/lit8 v5, v13, 0x4

    .line 73
    .line 74
    if-eqz v5, :cond_7

    .line 75
    .line 76
    or-int/lit16 v2, v2, 0x180

    .line 77
    .line 78
    :cond_6
    move/from16 v6, p2

    .line 79
    goto :goto_5

    .line 80
    .line 81
    :cond_7
    and-int/lit16 v6, v12, 0x380

    .line 82
    .line 83
    if-nez v6, :cond_6

    .line 84
    .line 85
    move/from16 v6, p2

    .line 86
    .line 87
    .line 88
    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->m(Z)Z

    .line 89
    move-result v7

    .line 90
    .line 91
    if-eqz v7, :cond_8

    .line 92
    .line 93
    const/16 v7, 0x100

    .line 94
    goto :goto_4

    .line 95
    .line 96
    :cond_8
    const/16 v7, 0x80

    .line 97
    :goto_4
    or-int/2addr v2, v7

    .line 98
    .line 99
    :goto_5
    and-int/lit16 v7, v12, 0x1c00

    .line 100
    .line 101
    if-nez v7, :cond_b

    .line 102
    .line 103
    and-int/lit8 v7, v13, 0x8

    .line 104
    .line 105
    if-nez v7, :cond_9

    .line 106
    .line 107
    move-object/from16 v7, p3

    .line 108
    .line 109
    .line 110
    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 111
    move-result v8

    .line 112
    .line 113
    if-eqz v8, :cond_a

    .line 114
    .line 115
    const/16 v8, 0x800

    .line 116
    goto :goto_6

    .line 117
    .line 118
    :cond_9
    move-object/from16 v7, p3

    .line 119
    .line 120
    :cond_a
    const/16 v8, 0x400

    .line 121
    :goto_6
    or-int/2addr v2, v8

    .line 122
    goto :goto_7

    .line 123
    .line 124
    :cond_b
    move-object/from16 v7, p3

    .line 125
    .line 126
    .line 127
    :goto_7
    const v8, 0xe000

    .line 128
    .line 129
    and-int v9, v12, v8

    .line 130
    .line 131
    if-nez v9, :cond_e

    .line 132
    .line 133
    and-int/lit8 v9, v13, 0x10

    .line 134
    .line 135
    if-nez v9, :cond_c

    .line 136
    .line 137
    move-wide/from16 v9, p4

    .line 138
    .line 139
    .line 140
    invoke-interface {v0, v9, v10}, Landroidx/compose/runtime/Composer;->q(J)Z

    .line 141
    move-result v11

    .line 142
    .line 143
    if-eqz v11, :cond_d

    .line 144
    .line 145
    const/16 v11, 0x4000

    .line 146
    goto :goto_8

    .line 147
    .line 148
    :cond_c
    move-wide/from16 v9, p4

    .line 149
    .line 150
    :cond_d
    const/16 v11, 0x2000

    .line 151
    :goto_8
    or-int/2addr v2, v11

    .line 152
    goto :goto_9

    .line 153
    .line 154
    :cond_e
    move-wide/from16 v9, p4

    .line 155
    .line 156
    :goto_9
    const/high16 v11, 0x70000

    .line 157
    .line 158
    and-int v14, v12, v11

    .line 159
    .line 160
    if-nez v14, :cond_11

    .line 161
    .line 162
    and-int/lit8 v14, v13, 0x20

    .line 163
    .line 164
    if-nez v14, :cond_f

    .line 165
    .line 166
    move-wide/from16 v14, p6

    .line 167
    .line 168
    .line 169
    invoke-interface {v0, v14, v15}, Landroidx/compose/runtime/Composer;->q(J)Z

    .line 170
    move-result v16

    .line 171
    .line 172
    if-eqz v16, :cond_10

    .line 173
    .line 174
    const/high16 v16, 0x20000

    .line 175
    goto :goto_a

    .line 176
    .line 177
    :cond_f
    move-wide/from16 v14, p6

    .line 178
    .line 179
    :cond_10
    const/high16 v16, 0x10000

    .line 180
    .line 181
    :goto_a
    or-int v2, v2, v16

    .line 182
    goto :goto_b

    .line 183
    .line 184
    :cond_11
    move-wide/from16 v14, p6

    .line 185
    .line 186
    :goto_b
    const/high16 v16, 0x380000

    .line 187
    .line 188
    and-int v17, v12, v16

    .line 189
    .line 190
    if-nez v17, :cond_13

    .line 191
    .line 192
    and-int/lit8 v17, v13, 0x40

    .line 193
    .line 194
    move-wide/from16 v8, p8

    .line 195
    .line 196
    if-nez v17, :cond_12

    .line 197
    .line 198
    .line 199
    invoke-interface {v0, v8, v9}, Landroidx/compose/runtime/Composer;->q(J)Z

    .line 200
    move-result v10

    .line 201
    .line 202
    if-eqz v10, :cond_12

    .line 203
    .line 204
    const/high16 v10, 0x100000

    .line 205
    goto :goto_c

    .line 206
    .line 207
    :cond_12
    const/high16 v10, 0x80000

    .line 208
    :goto_c
    or-int/2addr v2, v10

    .line 209
    goto :goto_d

    .line 210
    .line 211
    :cond_13
    move-wide/from16 v8, p8

    .line 212
    .line 213
    :goto_d
    and-int/lit16 v10, v13, 0x80

    .line 214
    .line 215
    const/high16 v17, 0xc00000

    .line 216
    .line 217
    if-eqz v10, :cond_14

    .line 218
    .line 219
    or-int v2, v2, v17

    .line 220
    .line 221
    move/from16 v11, p10

    .line 222
    goto :goto_f

    .line 223
    .line 224
    :cond_14
    const/high16 v18, 0x1c00000

    .line 225
    .line 226
    and-int v18, v12, v18

    .line 227
    .line 228
    move/from16 v11, p10

    .line 229
    .line 230
    if-nez v18, :cond_16

    .line 231
    .line 232
    .line 233
    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->n(F)Z

    .line 234
    move-result v19

    .line 235
    .line 236
    if-eqz v19, :cond_15

    .line 237
    .line 238
    const/high16 v19, 0x800000

    .line 239
    goto :goto_e

    .line 240
    .line 241
    :cond_15
    const/high16 v19, 0x400000

    .line 242
    .line 243
    :goto_e
    or-int v2, v2, v19

    .line 244
    .line 245
    .line 246
    :cond_16
    :goto_f
    const v19, 0x16db6db

    .line 247
    .line 248
    and-int v4, v2, v19

    .line 249
    .line 250
    .line 251
    const v6, 0x492492

    .line 252
    .line 253
    if-ne v4, v6, :cond_18

    .line 254
    .line 255
    .line 256
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->b()Z

    .line 257
    move-result v4

    .line 258
    .line 259
    if-nez v4, :cond_17

    .line 260
    goto :goto_10

    .line 261
    .line 262
    .line 263
    :cond_17
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->g()V

    .line 264
    .line 265
    move-object/from16 v2, p1

    .line 266
    .line 267
    move/from16 v3, p2

    .line 268
    .line 269
    move-wide/from16 v5, p4

    .line 270
    move-object v4, v7

    .line 271
    move-wide v9, v8

    .line 272
    move-wide v7, v14

    .line 273
    .line 274
    goto/16 :goto_1b

    .line 275
    .line 276
    .line 277
    :cond_18
    :goto_10
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->J()V

    .line 278
    .line 279
    and-int/lit8 v4, v12, 0x1

    .line 280
    .line 281
    .line 282
    const v6, -0x380001

    .line 283
    .line 284
    .line 285
    const v19, -0x70001

    .line 286
    .line 287
    .line 288
    const v20, -0xe001

    .line 289
    .line 290
    if-eqz v4, :cond_1e

    .line 291
    .line 292
    .line 293
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->h()Z

    .line 294
    move-result v4

    .line 295
    .line 296
    if-eqz v4, :cond_19

    .line 297
    goto :goto_11

    .line 298
    .line 299
    .line 300
    :cond_19
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->g()V

    .line 301
    .line 302
    and-int/lit8 v3, v13, 0x8

    .line 303
    .line 304
    if-eqz v3, :cond_1a

    .line 305
    .line 306
    and-int/lit16 v2, v2, -0x1c01

    .line 307
    .line 308
    :cond_1a
    and-int/lit8 v3, v13, 0x10

    .line 309
    .line 310
    if-eqz v3, :cond_1b

    .line 311
    .line 312
    and-int v2, v2, v20

    .line 313
    .line 314
    :cond_1b
    and-int/lit8 v3, v13, 0x20

    .line 315
    .line 316
    if-eqz v3, :cond_1c

    .line 317
    .line 318
    and-int v2, v2, v19

    .line 319
    .line 320
    :cond_1c
    and-int/lit8 v3, v13, 0x40

    .line 321
    .line 322
    if-eqz v3, :cond_1d

    .line 323
    and-int/2addr v2, v6

    .line 324
    .line 325
    :cond_1d
    move-object/from16 v3, p1

    .line 326
    .line 327
    move/from16 v4, p2

    .line 328
    move-object v5, v7

    .line 329
    .line 330
    move-wide/from16 v6, p4

    .line 331
    .line 332
    move-wide/from16 v27, v14

    .line 333
    move v14, v2

    .line 334
    move v2, v11

    .line 335
    move-wide v10, v8

    .line 336
    .line 337
    move-wide/from16 v8, v27

    .line 338
    .line 339
    goto/16 :goto_18

    .line 340
    .line 341
    :cond_1e
    :goto_11
    if-eqz v3, :cond_1f

    .line 342
    .line 343
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 344
    goto :goto_12

    .line 345
    .line 346
    :cond_1f
    move-object/from16 v3, p1

    .line 347
    .line 348
    :goto_12
    if-eqz v5, :cond_20

    .line 349
    const/4 v4, 0x0

    .line 350
    goto :goto_13

    .line 351
    .line 352
    :cond_20
    move/from16 v4, p2

    .line 353
    .line 354
    :goto_13
    and-int/lit8 v5, v13, 0x8

    .line 355
    const/4 v6, 0x6

    .line 356
    .line 357
    if-eqz v5, :cond_21

    .line 358
    .line 359
    sget-object v5, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v5, v0, v6}, Landroidx/compose/material/MaterialTheme;->b(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Shapes;

    .line 363
    move-result-object v5

    .line 364
    .line 365
    .line 366
    invoke-virtual {v5}, Landroidx/compose/material/Shapes;->c()Landroidx/compose/foundation/shape/CornerBasedShape;

    .line 367
    move-result-object v5

    .line 368
    .line 369
    and-int/lit16 v2, v2, -0x1c01

    .line 370
    goto :goto_14

    .line 371
    :cond_21
    move-object v5, v7

    .line 372
    .line 373
    :goto_14
    and-int/lit8 v7, v13, 0x10

    .line 374
    .line 375
    if-eqz v7, :cond_22

    .line 376
    .line 377
    sget-object v7, Landroidx/compose/material/SnackbarDefaults;->INSTANCE:Landroidx/compose/material/SnackbarDefaults;

    .line 378
    .line 379
    .line 380
    invoke-virtual {v7, v0, v6}, Landroidx/compose/material/SnackbarDefaults;->a(Landroidx/compose/runtime/Composer;I)J

    .line 381
    move-result-wide v22

    .line 382
    .line 383
    and-int v2, v2, v20

    .line 384
    goto :goto_15

    .line 385
    .line 386
    :cond_22
    move-wide/from16 v22, p4

    .line 387
    .line 388
    :goto_15
    and-int/lit8 v7, v13, 0x20

    .line 389
    .line 390
    if-eqz v7, :cond_23

    .line 391
    .line 392
    sget-object v7, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 393
    .line 394
    .line 395
    invoke-virtual {v7, v0, v6}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 396
    move-result-object v7

    .line 397
    .line 398
    .line 399
    invoke-virtual {v7}, Landroidx/compose/material/Colors;->n()J

    .line 400
    move-result-wide v14

    .line 401
    .line 402
    and-int v2, v2, v19

    .line 403
    .line 404
    :cond_23
    and-int/lit8 v7, v13, 0x40

    .line 405
    .line 406
    if-eqz v7, :cond_24

    .line 407
    .line 408
    sget-object v7, Landroidx/compose/material/SnackbarDefaults;->INSTANCE:Landroidx/compose/material/SnackbarDefaults;

    .line 409
    .line 410
    .line 411
    invoke-virtual {v7, v0, v6}, Landroidx/compose/material/SnackbarDefaults;->b(Landroidx/compose/runtime/Composer;I)J

    .line 412
    move-result-wide v7

    .line 413
    .line 414
    .line 415
    const v9, -0x380001

    .line 416
    and-int/2addr v2, v9

    .line 417
    goto :goto_16

    .line 418
    :cond_24
    move-wide v7, v8

    .line 419
    .line 420
    :goto_16
    if-eqz v10, :cond_25

    .line 421
    int-to-float v6, v6

    .line 422
    .line 423
    .line 424
    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 425
    move-result v6

    .line 426
    move-wide v10, v7

    .line 427
    move-wide v8, v14

    .line 428
    move v14, v2

    .line 429
    move v2, v6

    .line 430
    .line 431
    :goto_17
    move-wide/from16 v6, v22

    .line 432
    goto :goto_18

    .line 433
    .line 434
    :cond_25
    move-wide/from16 v27, v14

    .line 435
    move v14, v2

    .line 436
    move v2, v11

    .line 437
    move-wide v10, v7

    .line 438
    .line 439
    move-wide/from16 v8, v27

    .line 440
    goto :goto_17

    .line 441
    .line 442
    .line 443
    :goto_18
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->A()V

    .line 444
    .line 445
    .line 446
    invoke-interface/range {p0 .. p0}, Landroidx/compose/material/SnackbarData;->b()Ljava/lang/String;

    .line 447
    move-result-object v15

    .line 448
    .line 449
    if-eqz v15, :cond_26

    .line 450
    .line 451
    new-instance v12, Landroidx/compose/material/SnackbarKt$Snackbar$actionComposable$1;

    .line 452
    .line 453
    move-object/from16 p1, v12

    .line 454
    .line 455
    move-wide/from16 p2, v10

    .line 456
    .line 457
    move/from16 p4, v14

    .line 458
    .line 459
    move-object/from16 p5, p0

    .line 460
    .line 461
    move-object/from16 p6, v15

    .line 462
    .line 463
    .line 464
    invoke-direct/range {p1 .. p6}, Landroidx/compose/material/SnackbarKt$Snackbar$actionComposable$1;-><init>(JILandroidx/compose/material/SnackbarData;Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    const v15, 0x6de142b0

    .line 468
    .line 469
    move-wide/from16 p1, v10

    .line 470
    const/4 v10, 0x1

    .line 471
    .line 472
    .line 473
    invoke-static {v0, v15, v10, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 474
    move-result-object v11

    .line 475
    :goto_19
    move-object v15, v11

    .line 476
    goto :goto_1a

    .line 477
    .line 478
    :cond_26
    move-wide/from16 p1, v10

    .line 479
    const/4 v10, 0x1

    .line 480
    const/4 v11, 0x0

    .line 481
    goto :goto_19

    .line 482
    .line 483
    :goto_1a
    const/16 v11, 0xc

    .line 484
    int-to-float v11, v11

    .line 485
    .line 486
    .line 487
    invoke-static {v11}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 488
    move-result v11

    .line 489
    .line 490
    .line 491
    invoke-static {v3, v11}, Landroidx/compose/foundation/layout/PaddingKt;->i(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 492
    move-result-object v11

    .line 493
    .line 494
    new-instance v12, Landroidx/compose/material/SnackbarKt$Snackbar$3;

    .line 495
    .line 496
    .line 497
    invoke-direct {v12, v1}, Landroidx/compose/material/SnackbarKt$Snackbar$3;-><init>(Landroidx/compose/material/SnackbarData;)V

    .line 498
    .line 499
    .line 500
    const v1, -0xf9b7319

    .line 501
    .line 502
    .line 503
    invoke-static {v0, v1, v10, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 504
    move-result-object v23

    .line 505
    .line 506
    and-int/lit16 v1, v14, 0x380

    .line 507
    .line 508
    or-int v1, v1, v17

    .line 509
    .line 510
    and-int/lit16 v10, v14, 0x1c00

    .line 511
    or-int/2addr v1, v10

    .line 512
    .line 513
    .line 514
    const v10, 0xe000

    .line 515
    and-int/2addr v10, v14

    .line 516
    or-int/2addr v1, v10

    .line 517
    .line 518
    const/high16 v10, 0x70000

    .line 519
    and-int/2addr v10, v14

    .line 520
    or-int/2addr v1, v10

    .line 521
    .line 522
    shr-int/lit8 v10, v14, 0x3

    .line 523
    .line 524
    and-int v10, v10, v16

    .line 525
    .line 526
    or-int v25, v1, v10

    .line 527
    .line 528
    const/16 v26, 0x0

    .line 529
    move-object v14, v11

    .line 530
    .line 531
    move/from16 v16, v4

    .line 532
    .line 533
    move-object/from16 v17, v5

    .line 534
    .line 535
    move-wide/from16 v18, v6

    .line 536
    .line 537
    move-wide/from16 v20, v8

    .line 538
    .line 539
    move/from16 v22, v2

    .line 540
    .line 541
    move-object/from16 v24, v0

    .line 542
    .line 543
    .line 544
    invoke-static/range {v14 .. v26}, Landroidx/compose/material/SnackbarKt;->c(Landroidx/compose/ui/Modifier;Le8/p;ZLandroidx/compose/ui/graphics/Shape;JJFLe8/p;Landroidx/compose/runtime/Composer;II)V

    .line 545
    move v11, v2

    .line 546
    move-object v2, v3

    .line 547
    move v3, v4

    .line 548
    move-object v4, v5

    .line 549
    move-wide v5, v6

    .line 550
    move-wide v7, v8

    .line 551
    .line 552
    move-wide/from16 v9, p1

    .line 553
    .line 554
    .line 555
    :goto_1b
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 556
    move-result-object v14

    .line 557
    .line 558
    if-nez v14, :cond_27

    .line 559
    goto :goto_1c

    .line 560
    .line 561
    :cond_27
    new-instance v15, Landroidx/compose/material/SnackbarKt$Snackbar$4;

    .line 562
    move-object v0, v15

    .line 563
    .line 564
    move-object/from16 v1, p0

    .line 565
    .line 566
    move/from16 v12, p12

    .line 567
    .line 568
    move/from16 v13, p13

    .line 569
    .line 570
    .line 571
    invoke-direct/range {v0 .. v13}, Landroidx/compose/material/SnackbarKt$Snackbar$4;-><init>(Landroidx/compose/material/SnackbarData;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJJFII)V

    .line 572
    .line 573
    .line 574
    invoke-interface {v14, v15}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 575
    :goto_1c
    return-void
.end method

.method private static final e(Le8/p;Landroidx/compose/runtime/Composer;I)V
    .locals 11
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
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    const v0, 0x36ae61c7

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    and-int/lit8 v0, p2, 0xe

    .line 10
    const/4 v1, 0x2

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    const/4 v0, 0x4

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v0, v1

    .line 22
    :goto_0
    or-int/2addr v0, p2

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move v0, p2

    .line 25
    .line 26
    :goto_1
    and-int/lit8 v2, v0, 0xb

    .line 27
    .line 28
    if-ne v2, v1, :cond_3

    .line 29
    .line 30
    .line 31
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->b()Z

    .line 32
    move-result v1

    .line 33
    .line 34
    if-nez v1, :cond_2

    .line 35
    goto :goto_2

    .line 36
    .line 37
    .line 38
    :cond_2
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->g()V

    .line 39
    .line 40
    goto/16 :goto_5

    .line 41
    .line 42
    :cond_3
    :goto_2
    sget-object v1, Landroidx/compose/material/SnackbarKt$TextOnlySnackbar$2;->INSTANCE:Landroidx/compose/material/SnackbarKt$TextOnlySnackbar$2;

    .line 43
    .line 44
    .line 45
    const v2, -0x4ee9b9da

    .line 46
    .line 47
    .line 48
    invoke-interface {p1, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 49
    .line 50
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 51
    .line 52
    .line 53
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 54
    move-result-object v4

    .line 55
    .line 56
    .line 57
    invoke-interface {p1, v4}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 58
    move-result-object v4

    .line 59
    .line 60
    check-cast v4, Landroidx/compose/ui/unit/Density;

    .line 61
    .line 62
    .line 63
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 64
    move-result-object v5

    .line 65
    .line 66
    .line 67
    invoke-interface {p1, v5}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 68
    move-result-object v5

    .line 69
    .line 70
    check-cast v5, Landroidx/compose/ui/unit/LayoutDirection;

    .line 71
    .line 72
    .line 73
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 74
    move-result-object v6

    .line 75
    .line 76
    .line 77
    invoke-interface {p1, v6}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 78
    move-result-object v6

    .line 79
    .line 80
    check-cast v6, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 81
    .line 82
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 86
    move-result-object v8

    .line 87
    .line 88
    .line 89
    invoke-static {v3}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 90
    move-result-object v9

    .line 91
    .line 92
    .line 93
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 94
    move-result-object v10

    .line 95
    .line 96
    instance-of v10, v10, Landroidx/compose/runtime/Applier;

    .line 97
    .line 98
    if-nez v10, :cond_4

    .line 99
    .line 100
    .line 101
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 102
    .line 103
    .line 104
    :cond_4
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->e()V

    .line 105
    .line 106
    .line 107
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->r()Z

    .line 108
    move-result v10

    .line 109
    .line 110
    if-eqz v10, :cond_5

    .line 111
    .line 112
    .line 113
    invoke-interface {p1, v8}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 114
    goto :goto_3

    .line 115
    .line 116
    .line 117
    :cond_5
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->c()V

    .line 118
    .line 119
    .line 120
    :goto_3
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->L()V

    .line 121
    .line 122
    .line 123
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 124
    move-result-object v8

    .line 125
    .line 126
    .line 127
    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 128
    move-result-object v10

    .line 129
    .line 130
    .line 131
    invoke-static {v8, v1, v10}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 135
    move-result-object v1

    .line 136
    .line 137
    .line 138
    invoke-static {v8, v4, v1}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 142
    move-result-object v1

    .line 143
    .line 144
    .line 145
    invoke-static {v8, v5, v1}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 149
    move-result-object v1

    .line 150
    .line 151
    .line 152
    invoke-static {v8, v6, v1}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 153
    .line 154
    .line 155
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->o()V

    .line 156
    .line 157
    .line 158
    invoke-static {p1}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 159
    move-result-object v1

    .line 160
    .line 161
    .line 162
    invoke-static {v1}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 163
    move-result-object v1

    .line 164
    const/4 v4, 0x0

    .line 165
    .line 166
    .line 167
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 168
    move-result-object v5

    .line 169
    .line 170
    .line 171
    invoke-interface {v9, v1, p1, v5}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    const v1, 0x7ab4aae9

    .line 175
    .line 176
    .line 177
    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 178
    .line 179
    .line 180
    const v5, -0xfe5f550

    .line 181
    .line 182
    .line 183
    invoke-interface {p1, v5}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 184
    .line 185
    sget v5, Landroidx/compose/material/SnackbarKt;->HorizontalSpacing:F

    .line 186
    .line 187
    sget v6, Landroidx/compose/material/SnackbarKt;->SnackbarVerticalPadding:F

    .line 188
    .line 189
    .line 190
    invoke-static {v3, v5, v6}, Landroidx/compose/foundation/layout/PaddingKt;->j(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 191
    move-result-object v3

    .line 192
    .line 193
    .line 194
    const v5, 0x2bb5b5d7

    .line 195
    .line 196
    .line 197
    invoke-interface {p1, v5}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 198
    .line 199
    sget-object v5, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v5}, Landroidx/compose/ui/Alignment$Companion;->o()Landroidx/compose/ui/Alignment;

    .line 203
    move-result-object v5

    .line 204
    .line 205
    .line 206
    invoke-static {v5, v4, p1, v4}, Landroidx/compose/foundation/layout/BoxKt;->h(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 207
    move-result-object v5

    .line 208
    .line 209
    .line 210
    invoke-interface {p1, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 211
    .line 212
    .line 213
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 214
    move-result-object v2

    .line 215
    .line 216
    .line 217
    invoke-interface {p1, v2}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 218
    move-result-object v2

    .line 219
    .line 220
    check-cast v2, Landroidx/compose/ui/unit/Density;

    .line 221
    .line 222
    .line 223
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 224
    move-result-object v6

    .line 225
    .line 226
    .line 227
    invoke-interface {p1, v6}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 228
    move-result-object v6

    .line 229
    .line 230
    check-cast v6, Landroidx/compose/ui/unit/LayoutDirection;

    .line 231
    .line 232
    .line 233
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 234
    move-result-object v8

    .line 235
    .line 236
    .line 237
    invoke-interface {p1, v8}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 238
    move-result-object v8

    .line 239
    .line 240
    check-cast v8, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 244
    move-result-object v9

    .line 245
    .line 246
    .line 247
    invoke-static {v3}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 248
    move-result-object v3

    .line 249
    .line 250
    .line 251
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 252
    move-result-object v10

    .line 253
    .line 254
    instance-of v10, v10, Landroidx/compose/runtime/Applier;

    .line 255
    .line 256
    if-nez v10, :cond_6

    .line 257
    .line 258
    .line 259
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 260
    .line 261
    .line 262
    :cond_6
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->e()V

    .line 263
    .line 264
    .line 265
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->r()Z

    .line 266
    move-result v10

    .line 267
    .line 268
    if-eqz v10, :cond_7

    .line 269
    .line 270
    .line 271
    invoke-interface {p1, v9}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 272
    goto :goto_4

    .line 273
    .line 274
    .line 275
    :cond_7
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->c()V

    .line 276
    .line 277
    .line 278
    :goto_4
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->L()V

    .line 279
    .line 280
    .line 281
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 282
    move-result-object v9

    .line 283
    .line 284
    .line 285
    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 286
    move-result-object v10

    .line 287
    .line 288
    .line 289
    invoke-static {v9, v5, v10}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 293
    move-result-object v5

    .line 294
    .line 295
    .line 296
    invoke-static {v9, v2, v5}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 300
    move-result-object v2

    .line 301
    .line 302
    .line 303
    invoke-static {v9, v6, v2}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 307
    move-result-object v2

    .line 308
    .line 309
    .line 310
    invoke-static {v9, v8, v2}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 311
    .line 312
    .line 313
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->o()V

    .line 314
    .line 315
    .line 316
    invoke-static {p1}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 317
    move-result-object v2

    .line 318
    .line 319
    .line 320
    invoke-static {v2}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 321
    move-result-object v2

    .line 322
    .line 323
    .line 324
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 325
    move-result-object v4

    .line 326
    .line 327
    .line 328
    invoke-interface {v3, v2, p1, v4}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 332
    .line 333
    .line 334
    const v1, -0x7f65a980

    .line 335
    .line 336
    .line 337
    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 338
    .line 339
    sget-object v1, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 340
    .line 341
    .line 342
    const v1, 0x52fdc66a

    .line 343
    .line 344
    .line 345
    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 346
    .line 347
    and-int/lit8 v0, v0, 0xe

    .line 348
    .line 349
    .line 350
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 351
    move-result-object v0

    .line 352
    .line 353
    .line 354
    invoke-interface {p0, p1, v0}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 358
    .line 359
    .line 360
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 361
    .line 362
    .line 363
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 364
    .line 365
    .line 366
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->d()V

    .line 367
    .line 368
    .line 369
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 370
    .line 371
    .line 372
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 373
    .line 374
    .line 375
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 376
    .line 377
    .line 378
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 379
    .line 380
    .line 381
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->d()V

    .line 382
    .line 383
    .line 384
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 385
    .line 386
    .line 387
    :goto_5
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 388
    move-result-object p1

    .line 389
    .line 390
    if-nez p1, :cond_8

    .line 391
    goto :goto_6

    .line 392
    .line 393
    :cond_8
    new-instance v0, Landroidx/compose/material/SnackbarKt$TextOnlySnackbar$3;

    .line 394
    .line 395
    .line 396
    invoke-direct {v0, p0, p2}, Landroidx/compose/material/SnackbarKt$TextOnlySnackbar$3;-><init>(Le8/p;I)V

    .line 397
    .line 398
    .line 399
    invoke-interface {p1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 400
    :goto_6
    return-void
.end method

.method public static final synthetic f(Le8/p;Le8/p;Landroidx/compose/runtime/Composer;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/material/SnackbarKt;->a(Le8/p;Le8/p;Landroidx/compose/runtime/Composer;I)V

    .line 4
    return-void
.end method

.method public static final synthetic g(Le8/p;Le8/p;Landroidx/compose/runtime/Composer;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/material/SnackbarKt;->b(Le8/p;Le8/p;Landroidx/compose/runtime/Composer;I)V

    .line 4
    return-void
.end method

.method public static final synthetic h(Le8/p;Landroidx/compose/runtime/Composer;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Landroidx/compose/material/SnackbarKt;->e(Le8/p;Landroidx/compose/runtime/Composer;I)V

    .line 4
    return-void
.end method

.method public static final synthetic i()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/SnackbarKt;->HeightToFirstLine:F

    return v0
.end method

.method public static final synthetic j()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/SnackbarKt;->SnackbarMinHeightOneLine:F

    return v0
.end method

.method public static final synthetic k()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/SnackbarKt;->SnackbarMinHeightTwoLines:F

    return v0
.end method

.method public static final synthetic l()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/SnackbarKt;->TextEndExtraSpacing:F

    return v0
.end method
