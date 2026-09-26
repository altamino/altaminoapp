.class final Landroidx/compose/material/SnackbarHostKt$FadeInFadeOutWithScale$1$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/SnackbarHostKt;->a(Landroidx/compose/material/SnackbarData;Landroidx/compose/ui/Modifier;Le8/q;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/q<",
        "Le8/p<",
        "-",
        "Landroidx/compose/runtime/Composer;",
        "-",
        "Ljava/lang/Integer;",
        "+",
        "Lw7/l0;",
        ">;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lw7/l0;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSnackbarHost.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnackbarHost.kt\nandroidx/compose/material/SnackbarHostKt$FadeInFadeOutWithScale$1$1\n+ 2 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 3 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 4 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n*L\n1#1,373:1\n67#2,6:374\n73#2:406\n77#2:411\n75#3:380\n76#3,11:382\n89#3:410\n76#4:381\n460#5,13:393\n473#5,3:407\n*S KotlinDebug\n*F\n+ 1 SnackbarHost.kt\nandroidx/compose/material/SnackbarHostKt$FadeInFadeOutWithScale$1$1\n*L\n299#1:374,6\n299#1:406\n299#1:411\n299#1:380\n299#1:382,11\n299#1:410\n299#1:381\n299#1:393,13\n299#1:407,3\n*E\n"
.end annotation


# instance fields
.field final synthetic $current:Landroidx/compose/material/SnackbarData;

.field final synthetic $key:Landroidx/compose/material/SnackbarData;

.field final synthetic $keys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/material/SnackbarData;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $state:Landroidx/compose/material/FadeInFadeOutState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/material/FadeInFadeOutState<",
            "Landroidx/compose/material/SnackbarData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/material/SnackbarData;Landroidx/compose/material/SnackbarData;Ljava/util/List;Landroidx/compose/material/FadeInFadeOutState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/SnackbarData;",
            "Landroidx/compose/material/SnackbarData;",
            "Ljava/util/List<",
            "Landroidx/compose/material/SnackbarData;",
            ">;",
            "Landroidx/compose/material/FadeInFadeOutState<",
            "Landroidx/compose/material/SnackbarData;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material/SnackbarHostKt$FadeInFadeOutWithScale$1$1;->$key:Landroidx/compose/material/SnackbarData;

    iput-object p2, p0, Landroidx/compose/material/SnackbarHostKt$FadeInFadeOutWithScale$1$1;->$current:Landroidx/compose/material/SnackbarData;

    iput-object p3, p0, Landroidx/compose/material/SnackbarHostKt$FadeInFadeOutWithScale$1$1;->$keys:Ljava/util/List;

    iput-object p4, p0, Landroidx/compose/material/SnackbarHostKt$FadeInFadeOutWithScale$1$1;->$state:Landroidx/compose/material/FadeInFadeOutState;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Le8/p;Landroidx/compose/runtime/Composer;I)V
    .locals 36
    .param p1    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/Composer;
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
    move-object/from16 v8, p2

    .line 7
    .line 8
    const-string v2, "children"

    .line 9
    .line 10
    .line 11
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    and-int/lit8 v2, p3, 0xe

    .line 14
    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 19
    move-result v2

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    const/4 v2, 0x4

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v2, 0x2

    .line 25
    .line 26
    :goto_0
    or-int v2, p3, v2

    .line 27
    move v9, v2

    .line 28
    goto :goto_1

    .line 29
    .line 30
    :cond_1
    move/from16 v9, p3

    .line 31
    .line 32
    :goto_1
    and-int/lit8 v2, v9, 0x5b

    .line 33
    .line 34
    const/16 v3, 0x12

    .line 35
    .line 36
    if-ne v2, v3, :cond_3

    .line 37
    .line 38
    .line 39
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->b()Z

    .line 40
    move-result v2

    .line 41
    .line 42
    if-nez v2, :cond_2

    .line 43
    goto :goto_2

    .line 44
    .line 45
    .line 46
    :cond_2
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->g()V

    .line 47
    .line 48
    goto/16 :goto_6

    .line 49
    .line 50
    :cond_3
    :goto_2
    iget-object v2, v0, Landroidx/compose/material/SnackbarHostKt$FadeInFadeOutWithScale$1$1;->$key:Landroidx/compose/material/SnackbarData;

    .line 51
    .line 52
    iget-object v3, v0, Landroidx/compose/material/SnackbarHostKt$FadeInFadeOutWithScale$1$1;->$current:Landroidx/compose/material/SnackbarData;

    .line 53
    .line 54
    .line 55
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    move-result v10

    .line 57
    .line 58
    const/16 v2, 0x4b

    .line 59
    .line 60
    if-eqz v10, :cond_4

    .line 61
    .line 62
    const/16 v3, 0x96

    .line 63
    move v11, v3

    .line 64
    goto :goto_3

    .line 65
    :cond_4
    move v11, v2

    .line 66
    :goto_3
    const/4 v12, 0x1

    .line 67
    const/4 v13, 0x0

    .line 68
    .line 69
    if-eqz v10, :cond_5

    .line 70
    .line 71
    iget-object v3, v0, Landroidx/compose/material/SnackbarHostKt$FadeInFadeOutWithScale$1$1;->$keys:Ljava/util/List;

    .line 72
    .line 73
    check-cast v3, Ljava/lang/Iterable;

    .line 74
    .line 75
    .line 76
    invoke-static {v3}, Lkotlin/collections/t;->g0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 77
    move-result-object v3

    .line 78
    .line 79
    .line 80
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 81
    move-result v3

    .line 82
    .line 83
    if-eq v3, v12, :cond_5

    .line 84
    move v14, v2

    .line 85
    goto :goto_4

    .line 86
    :cond_5
    move v14, v13

    .line 87
    .line 88
    .line 89
    :goto_4
    invoke-static {}, Landroidx/compose/animation/core/EasingKt;->b()Landroidx/compose/animation/core/Easing;

    .line 90
    move-result-object v2

    .line 91
    .line 92
    .line 93
    invoke-static {v11, v14, v2}, Landroidx/compose/animation/core/AnimationSpecKt;->j(IILandroidx/compose/animation/core/Easing;)Landroidx/compose/animation/core/TweenSpec;

    .line 94
    move-result-object v2

    .line 95
    .line 96
    new-instance v4, Landroidx/compose/material/SnackbarHostKt$FadeInFadeOutWithScale$1$1$opacity$1;

    .line 97
    .line 98
    iget-object v3, v0, Landroidx/compose/material/SnackbarHostKt$FadeInFadeOutWithScale$1$1;->$key:Landroidx/compose/material/SnackbarData;

    .line 99
    .line 100
    iget-object v5, v0, Landroidx/compose/material/SnackbarHostKt$FadeInFadeOutWithScale$1$1;->$state:Landroidx/compose/material/FadeInFadeOutState;

    .line 101
    .line 102
    .line 103
    invoke-direct {v4, v3, v5}, Landroidx/compose/material/SnackbarHostKt$FadeInFadeOutWithScale$1$1$opacity$1;-><init>(Landroidx/compose/material/SnackbarData;Landroidx/compose/material/FadeInFadeOutState;)V

    .line 104
    const/4 v6, 0x0

    .line 105
    const/4 v7, 0x0

    .line 106
    move v3, v10

    .line 107
    .line 108
    move-object/from16 v5, p2

    .line 109
    .line 110
    .line 111
    invoke-static/range {v2 .. v7}, Landroidx/compose/material/SnackbarHostKt;->d(Landroidx/compose/animation/core/AnimationSpec;ZLe8/a;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    .line 112
    move-result-object v2

    .line 113
    .line 114
    .line 115
    invoke-static {}, Landroidx/compose/animation/core/EasingKt;->a()Landroidx/compose/animation/core/Easing;

    .line 116
    move-result-object v3

    .line 117
    .line 118
    .line 119
    invoke-static {v11, v14, v3}, Landroidx/compose/animation/core/AnimationSpecKt;->j(IILandroidx/compose/animation/core/Easing;)Landroidx/compose/animation/core/TweenSpec;

    .line 120
    move-result-object v3

    .line 121
    .line 122
    .line 123
    invoke-static {v3, v10, v8, v13}, Landroidx/compose/material/SnackbarHostKt;->e(Landroidx/compose/animation/core/AnimationSpec;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 124
    move-result-object v3

    .line 125
    .line 126
    sget-object v14, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 127
    .line 128
    .line 129
    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 130
    move-result-object v4

    .line 131
    .line 132
    check-cast v4, Ljava/lang/Number;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    .line 136
    move-result v15

    .line 137
    .line 138
    .line 139
    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 140
    move-result-object v3

    .line 141
    .line 142
    check-cast v3, Ljava/lang/Number;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 146
    move-result v16

    .line 147
    .line 148
    .line 149
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 150
    move-result-object v2

    .line 151
    .line 152
    check-cast v2, Ljava/lang/Number;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 156
    move-result v17

    .line 157
    .line 158
    const/16 v18, 0x0

    .line 159
    .line 160
    const/16 v19, 0x0

    .line 161
    .line 162
    const/16 v20, 0x0

    .line 163
    .line 164
    const/16 v21, 0x0

    .line 165
    .line 166
    const/16 v22, 0x0

    .line 167
    .line 168
    const/16 v23, 0x0

    .line 169
    .line 170
    const/16 v24, 0x0

    .line 171
    .line 172
    const-wide/16 v25, 0x0

    .line 173
    .line 174
    const/16 v27, 0x0

    .line 175
    .line 176
    const/16 v28, 0x0

    .line 177
    .line 178
    const/16 v29, 0x0

    .line 179
    .line 180
    const-wide/16 v30, 0x0

    .line 181
    .line 182
    const-wide/16 v32, 0x0

    .line 183
    .line 184
    .line 185
    const v34, 0xfff8

    .line 186
    .line 187
    const/16 v35, 0x0

    .line 188
    .line 189
    .line 190
    invoke-static/range {v14 .. v35}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->c(Landroidx/compose/ui/Modifier;FFFFFFFFFFJLandroidx/compose/ui/graphics/Shape;ZLandroidx/compose/ui/graphics/RenderEffect;JJILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 191
    move-result-object v2

    .line 192
    .line 193
    new-instance v3, Landroidx/compose/material/SnackbarHostKt$FadeInFadeOutWithScale$1$1$1;

    .line 194
    .line 195
    iget-object v4, v0, Landroidx/compose/material/SnackbarHostKt$FadeInFadeOutWithScale$1$1;->$key:Landroidx/compose/material/SnackbarData;

    .line 196
    .line 197
    .line 198
    invoke-direct {v3, v4}, Landroidx/compose/material/SnackbarHostKt$FadeInFadeOutWithScale$1$1$1;-><init>(Landroidx/compose/material/SnackbarData;)V

    .line 199
    const/4 v4, 0x0

    .line 200
    .line 201
    .line 202
    invoke-static {v2, v13, v3, v12, v4}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->c(Landroidx/compose/ui/Modifier;ZLe8/l;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 203
    move-result-object v2

    .line 204
    .line 205
    .line 206
    const v3, 0x2bb5b5d7

    .line 207
    .line 208
    .line 209
    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 210
    .line 211
    sget-object v3, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v3}, Landroidx/compose/ui/Alignment$Companion;->o()Landroidx/compose/ui/Alignment;

    .line 215
    move-result-object v3

    .line 216
    .line 217
    .line 218
    invoke-static {v3, v13, v8, v13}, Landroidx/compose/foundation/layout/BoxKt;->h(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 219
    move-result-object v3

    .line 220
    .line 221
    .line 222
    const v4, -0x4ee9b9da

    .line 223
    .line 224
    .line 225
    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 226
    .line 227
    .line 228
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 229
    move-result-object v4

    .line 230
    .line 231
    .line 232
    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 233
    move-result-object v4

    .line 234
    .line 235
    check-cast v4, Landroidx/compose/ui/unit/Density;

    .line 236
    .line 237
    .line 238
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 239
    move-result-object v5

    .line 240
    .line 241
    .line 242
    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 243
    move-result-object v5

    .line 244
    .line 245
    check-cast v5, Landroidx/compose/ui/unit/LayoutDirection;

    .line 246
    .line 247
    .line 248
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 249
    move-result-object v6

    .line 250
    .line 251
    .line 252
    invoke-interface {v8, v6}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 253
    move-result-object v6

    .line 254
    .line 255
    check-cast v6, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 256
    .line 257
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 261
    move-result-object v10

    .line 262
    .line 263
    .line 264
    invoke-static {v2}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 265
    move-result-object v2

    .line 266
    .line 267
    .line 268
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 269
    move-result-object v11

    .line 270
    .line 271
    instance-of v11, v11, Landroidx/compose/runtime/Applier;

    .line 272
    .line 273
    if-nez v11, :cond_6

    .line 274
    .line 275
    .line 276
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 277
    .line 278
    .line 279
    :cond_6
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->e()V

    .line 280
    .line 281
    .line 282
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->r()Z

    .line 283
    move-result v11

    .line 284
    .line 285
    if-eqz v11, :cond_7

    .line 286
    .line 287
    .line 288
    invoke-interface {v8, v10}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 289
    goto :goto_5

    .line 290
    .line 291
    .line 292
    :cond_7
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->c()V

    .line 293
    .line 294
    .line 295
    :goto_5
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->L()V

    .line 296
    .line 297
    .line 298
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 299
    move-result-object v10

    .line 300
    .line 301
    .line 302
    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 303
    move-result-object v11

    .line 304
    .line 305
    .line 306
    invoke-static {v10, v3, v11}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 310
    move-result-object v3

    .line 311
    .line 312
    .line 313
    invoke-static {v10, v4, v3}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 317
    move-result-object v3

    .line 318
    .line 319
    .line 320
    invoke-static {v10, v5, v3}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 324
    move-result-object v3

    .line 325
    .line 326
    .line 327
    invoke-static {v10, v6, v3}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 328
    .line 329
    .line 330
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->o()V

    .line 331
    .line 332
    .line 333
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 334
    move-result-object v3

    .line 335
    .line 336
    .line 337
    invoke-static {v3}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 338
    move-result-object v3

    .line 339
    .line 340
    .line 341
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 342
    move-result-object v4

    .line 343
    .line 344
    .line 345
    invoke-interface {v2, v3, v8, v4}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    const v2, 0x7ab4aae9

    .line 349
    .line 350
    .line 351
    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 352
    .line 353
    .line 354
    const v2, -0x7f65a980

    .line 355
    .line 356
    .line 357
    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 358
    .line 359
    sget-object v2, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 360
    .line 361
    .line 362
    const v2, -0x1926e240

    .line 363
    .line 364
    .line 365
    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 366
    .line 367
    and-int/lit8 v2, v9, 0xe

    .line 368
    .line 369
    .line 370
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 371
    move-result-object v2

    .line 372
    .line 373
    .line 374
    invoke-interface {v1, v8, v2}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 378
    .line 379
    .line 380
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 381
    .line 382
    .line 383
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 384
    .line 385
    .line 386
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->d()V

    .line 387
    .line 388
    .line 389
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 390
    .line 391
    .line 392
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 393
    :goto_6
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Le8/p;

    .line 3
    .line 4
    check-cast p2, Landroidx/compose/runtime/Composer;

    .line 5
    .line 6
    check-cast p3, Ljava/lang/Number;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    .line 10
    move-result p3

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/material/SnackbarHostKt$FadeInFadeOutWithScale$1$1;->a(Le8/p;Landroidx/compose/runtime/Composer;I)V

    .line 14
    .line 15
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 16
    return-object p1
.end method
