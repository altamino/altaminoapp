.class public final Landroidx/compose/foundation/lazy/grid/LazyGridKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyGrid.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyGrid.kt\nandroidx/compose/foundation/lazy/grid/LazyGridKt\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 Effects.kt\nandroidx/compose/runtime/EffectsKt\n+ 4 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 5 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 6 Effects.kt\nandroidx/compose/runtime/EffectsKt$rememberCoroutineScope$1\n+ 7 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n*L\n1#1,384:1\n155#2:385\n473#3,4:386\n477#3,2:394\n481#3:400\n25#4:390\n50#4:401\n49#4:402\n83#4,3:410\n1057#5,3:391\n1060#5,3:397\n1057#5,6:403\n1057#5,6:413\n473#6:396\n76#7:409\n*S KotlinDebug\n*F\n+ 1 LazyGrid.kt\nandroidx/compose/foundation/lazy/grid/LazyGridKt\n*L\n61#1:385\n81#1:386,4\n81#1:394,2\n81#1:400\n81#1:390\n82#1:401\n82#1:402\n179#1:410,3\n81#1:391,3\n81#1:397,3\n82#1:403,6\n179#1:413,6\n81#1:396\n126#1:409\n*E\n"
.end annotation


# direct methods
.method public static final a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Le8/p;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Le8/l;Landroidx/compose/runtime/Composer;III)V
    .locals 32
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/foundation/lazy/grid/LazyGridState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/foundation/layout/PaddingValues;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Landroidx/compose/foundation/gestures/FlingBehavior;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Landroidx/compose/foundation/layout/Arrangement$Vertical;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Landroidx/compose/foundation/layout/Arrangement$Horizontal;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/lazy/grid/LazyGridState;",
            "Le8/p<",
            "-",
            "Landroidx/compose/ui/unit/Density;",
            "-",
            "Landroidx/compose/ui/unit/Constraints;",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "ZZ",
            "Landroidx/compose/foundation/gestures/FlingBehavior;",
            "Z",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Le8/l<",
            "-",
            "Landroidx/compose/foundation/lazy/grid/LazyGridScope;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move/from16 v15, p5

    move-object/from16 v12, p8

    move-object/from16 v11, p9

    move-object/from16 v10, p10

    move/from16 v9, p12

    move/from16 v8, p14

    const-string/jumbo v0, "state"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "slotSizesSums"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "verticalArrangement"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "horizontalArrangement"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x9193020

    move-object/from16 v1, p11

    .line 1
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    move-result-object v7

    and-int/lit8 v0, v8, 0x1

    if-eqz v0, :cond_0

    or-int/lit8 v3, v9, 0x6

    move v4, v3

    move-object/from16 v3, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v9, 0xe

    if-nez v3, :cond_2

    move-object/from16 v3, p0

    invoke-interface {v7, v3}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v9

    goto :goto_1

    :cond_2
    move-object/from16 v3, p0

    move v4, v9

    :goto_1
    and-int/lit8 v5, v8, 0x2

    if-eqz v5, :cond_3

    or-int/lit8 v4, v4, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v5, v9, 0x70

    if-nez v5, :cond_5

    invoke-interface {v7, v13}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x20

    goto :goto_2

    :cond_4
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v4, v5

    :cond_5
    :goto_3
    and-int/lit8 v5, v8, 0x4

    if-eqz v5, :cond_6

    or-int/lit16 v4, v4, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v5, v9, 0x380

    if-nez v5, :cond_8

    invoke-interface {v7, v14}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v5, 0x100

    goto :goto_4

    :cond_7
    const/16 v5, 0x80

    :goto_4
    or-int/2addr v4, v5

    :cond_8
    :goto_5
    and-int/lit8 v5, v8, 0x8

    if-eqz v5, :cond_a

    or-int/lit16 v4, v4, 0xc00

    :cond_9
    move-object/from16 v6, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v6, v9, 0x1c00

    if-nez v6, :cond_9

    move-object/from16 v6, p3

    invoke-interface {v7, v6}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_b

    const/16 v16, 0x800

    goto :goto_6

    :cond_b
    const/16 v16, 0x400

    :goto_6
    or-int v4, v4, v16

    :goto_7
    and-int/lit8 v16, v8, 0x10

    const v17, 0xe000

    if-eqz v16, :cond_c

    or-int/lit16 v4, v4, 0x6000

    move/from16 v1, p4

    goto :goto_9

    :cond_c
    and-int v18, v9, v17

    move/from16 v1, p4

    if-nez v18, :cond_e

    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->m(Z)Z

    move-result v18

    if-eqz v18, :cond_d

    const/16 v18, 0x4000

    goto :goto_8

    :cond_d
    const/16 v18, 0x2000

    :goto_8
    or-int v4, v4, v18

    :cond_e
    :goto_9
    and-int/lit8 v18, v8, 0x20

    const/high16 v19, 0x70000

    if-eqz v18, :cond_f

    const/high16 v18, 0x30000

    :goto_a
    or-int v4, v4, v18

    goto :goto_b

    :cond_f
    and-int v18, v9, v19

    if-nez v18, :cond_11

    invoke-interface {v7, v15}, Landroidx/compose/runtime/Composer;->m(Z)Z

    move-result v18

    if-eqz v18, :cond_10

    const/high16 v18, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v18, 0x10000

    goto :goto_a

    :cond_11
    :goto_b
    const/high16 v18, 0x380000

    and-int v20, v9, v18

    if-nez v20, :cond_13

    and-int/lit8 v20, v8, 0x40

    move-object/from16 v2, p6

    if-nez v20, :cond_12

    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_12

    const/high16 v21, 0x100000

    goto :goto_c

    :cond_12
    const/high16 v21, 0x80000

    :goto_c
    or-int v4, v4, v21

    goto :goto_d

    :cond_13
    move-object/from16 v2, p6

    :goto_d
    and-int/lit16 v1, v8, 0x80

    const/high16 v21, 0x1c00000

    if-eqz v1, :cond_15

    const/high16 v1, 0xc00000

    or-int/2addr v4, v1

    :cond_14
    move/from16 v1, p7

    goto :goto_f

    :cond_15
    and-int v1, v9, v21

    if-nez v1, :cond_14

    move/from16 v1, p7

    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->m(Z)Z

    move-result v22

    if-eqz v22, :cond_16

    const/high16 v22, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v22, 0x400000

    :goto_e
    or-int v4, v4, v22

    :goto_f
    and-int/lit16 v1, v8, 0x100

    const/high16 v22, 0xe000000

    if-eqz v1, :cond_17

    const/high16 v1, 0x6000000

    :goto_10
    or-int/2addr v4, v1

    goto :goto_11

    :cond_17
    and-int v1, v9, v22

    if-nez v1, :cond_19

    invoke-interface {v7, v12}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/high16 v1, 0x4000000

    goto :goto_10

    :cond_18
    const/high16 v1, 0x2000000

    goto :goto_10

    :cond_19
    :goto_11
    and-int/lit16 v1, v8, 0x200

    if-eqz v1, :cond_1a

    const/high16 v1, 0x30000000

    :goto_12
    or-int/2addr v4, v1

    goto :goto_13

    :cond_1a
    const/high16 v1, 0x70000000

    and-int/2addr v1, v9

    if-nez v1, :cond_1c

    invoke-interface {v7, v11}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const/high16 v1, 0x20000000

    goto :goto_12

    :cond_1b
    const/high16 v1, 0x10000000

    goto :goto_12

    :cond_1c
    :goto_13
    and-int/lit16 v1, v8, 0x400

    if-eqz v1, :cond_1d

    or-int/lit8 v1, p13, 0x6

    goto :goto_15

    :cond_1d
    and-int/lit8 v1, p13, 0xe

    if-nez v1, :cond_1f

    invoke-interface {v7, v10}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v1, 0x4

    goto :goto_14

    :cond_1e
    const/4 v1, 0x2

    :goto_14
    or-int v1, p13, v1

    goto :goto_15

    :cond_1f
    move/from16 v1, p13

    :goto_15
    const v23, 0x5b6db6db

    and-int v2, v4, v23

    const v3, 0x12492492

    if-ne v2, v3, :cond_21

    and-int/lit8 v2, v1, 0xb

    const/4 v3, 0x2

    if-ne v2, v3, :cond_21

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->b()Z

    move-result v2

    if-nez v2, :cond_20

    goto :goto_16

    .line 2
    :cond_20
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->g()V

    move-object/from16 v1, p0

    move/from16 v5, p4

    move-object v4, v6

    move-object v10, v7

    move-object/from16 v7, p6

    goto/16 :goto_1f

    .line 3
    :cond_21
    :goto_16
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->J()V

    and-int/lit8 v2, v9, 0x1

    const/4 v3, 0x6

    if-eqz v2, :cond_24

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->h()Z

    move-result v2

    if-eqz v2, :cond_22

    goto :goto_17

    .line 4
    :cond_22
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->g()V

    and-int/lit8 v0, v8, 0x40

    if-eqz v0, :cond_23

    const v0, -0x380001

    and-int/2addr v4, v0

    :cond_23
    move/from16 v20, p4

    move-object/from16 v23, p6

    move-object/from16 v16, v6

    move-object/from16 v6, p0

    goto :goto_1b

    :cond_24
    :goto_17
    if-eqz v0, :cond_25

    .line 5
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_18

    :cond_25
    move-object/from16 v0, p0

    :goto_18
    const/4 v2, 0x0

    if-eqz v5, :cond_26

    int-to-float v5, v2

    .line 6
    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->f(F)F

    move-result v5

    .line 7
    invoke-static {v5}, Landroidx/compose/foundation/layout/PaddingKt;->a(F)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v5

    goto :goto_19

    :cond_26
    move-object v5, v6

    :goto_19
    if-eqz v16, :cond_27

    goto :goto_1a

    :cond_27
    move/from16 v2, p4

    :goto_1a
    and-int/lit8 v6, v8, 0x40

    if-eqz v6, :cond_28

    .line 8
    sget-object v6, Landroidx/compose/foundation/gestures/ScrollableDefaults;->INSTANCE:Landroidx/compose/foundation/gestures/ScrollableDefaults;

    invoke-virtual {v6, v7, v3}, Landroidx/compose/foundation/gestures/ScrollableDefaults;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/gestures/FlingBehavior;

    move-result-object v6

    const v16, -0x380001

    and-int v4, v4, v16

    move/from16 v20, v2

    move-object/from16 v16, v5

    move-object/from16 v23, v6

    move-object v6, v0

    goto :goto_1b

    :cond_28
    move-object/from16 v23, p6

    move-object v6, v0

    move/from16 v20, v2

    move-object/from16 v16, v5

    :goto_1b
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->A()V

    .line 9
    sget-object v0, Landroidx/compose/foundation/gestures/ScrollableDefaults;->INSTANCE:Landroidx/compose/foundation/gestures/ScrollableDefaults;

    invoke-virtual {v0, v7, v3}, Landroidx/compose/foundation/gestures/ScrollableDefaults;->b(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/OverscrollEffect;

    move-result-object v5

    shr-int/lit8 v24, v4, 0x3

    and-int/lit8 v0, v24, 0xe

    shl-int/lit8 v1, v1, 0x3

    and-int/lit8 v1, v1, 0x70

    or-int/2addr v0, v1

    .line 10
    invoke-static {v13, v10, v7, v0}, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImplKt;->d(Landroidx/compose/foundation/lazy/grid/LazyGridState;Le8/l;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;

    move-result-object v3

    const v0, 0x2e20b340

    .line 11
    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    const v0, -0x1d58f75c

    .line 12
    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 13
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    move-result-object v0

    .line 14
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    move-result-object v2

    if-ne v0, v2, :cond_29

    .line 15
    sget-object v0, Lkotlin/coroutines/h;->INSTANCE:Lkotlin/coroutines/h;

    invoke-static {v0, v7}, Landroidx/compose/runtime/EffectsKt;->j(Lkotlin/coroutines/g;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/o0;

    move-result-object v0

    .line 16
    new-instance v2, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    invoke-direct {v2, v0}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;-><init>(Lkotlinx/coroutines/o0;)V

    .line 17
    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    move-object v0, v2

    .line 18
    :cond_29
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->Q()V

    .line 19
    check-cast v0, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    .line 20
    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->a()Lkotlinx/coroutines/o0;

    move-result-object v2

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->Q()V

    .line 21
    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move-object/from16 p0, v6

    const v6, 0x1e7b2b64

    .line 22
    invoke-interface {v7, v6}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 23
    invoke-interface {v7, v13}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr v0, v6

    .line 24
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    move-result-object v6

    if-nez v0, :cond_2a

    .line 25
    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    move-result-object v0

    if-ne v6, v0, :cond_2b

    .line 26
    :cond_2a
    new-instance v6, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;

    invoke-direct {v6, v2, v15}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;-><init>(Lkotlinx/coroutines/o0;Z)V

    .line 27
    invoke-interface {v7, v6}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 28
    :cond_2b
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->Q()V

    .line 29
    check-cast v6, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;

    .line 30
    invoke-virtual {v13, v6}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->z(Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;)V

    and-int/lit8 v1, v4, 0x70

    const/high16 v0, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    shl-int/lit8 v12, v4, 0x3

    move/from16 p3, v1

    and-int/lit16 v1, v12, 0x1c00

    or-int/2addr v0, v1

    and-int v1, v12, v17

    or-int/2addr v0, v1

    and-int v19, v12, v19

    or-int v0, v0, v19

    and-int v1, v12, v18

    or-int/2addr v0, v1

    shr-int/lit8 v1, v4, 0x6

    and-int v1, v1, v21

    or-int/2addr v0, v1

    and-int v1, v4, v22

    or-int v21, v0, v1

    const/16 v22, 0x0

    move-object v0, v3

    move/from16 v4, p3

    move-object/from16 v1, p1

    move-object/from16 v25, v2

    move-object v2, v5

    move-object/from16 v26, v3

    move-object/from16 v3, p2

    move/from16 v27, v4

    move-object/from16 v4, v16

    move-object/from16 v28, v5

    move/from16 v5, v20

    move-object/from16 v29, p0

    move-object/from16 v30, v6

    move/from16 v6, p5

    move-object/from16 p0, v7

    move-object/from16 v7, p9

    move-object/from16 v8, p8

    move-object/from16 v9, v30

    move-object/from16 v10, p0

    move/from16 v11, v21

    move v14, v12

    move/from16 v12, v22

    .line 31
    invoke-static/range {v0 .. v12}, Landroidx/compose/foundation/lazy/grid/LazyGridKt;->f(Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/OverscrollEffect;Le8/p;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;Landroidx/compose/runtime/Composer;II)Le8/p;

    move-result-object v9

    .line 32
    invoke-virtual {v13, v15}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->D(Z)V

    move-object/from16 v11, v26

    move/from16 v0, v27

    .line 33
    invoke-static {v11, v13, v10, v0}, Landroidx/compose/foundation/lazy/grid/LazyGridKt;->b(Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/runtime/Composer;I)V

    if-eqz v15, :cond_2c

    .line 34
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    :goto_1c
    move-object v12, v0

    goto :goto_1d

    :cond_2c
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_1c

    .line 35
    :goto_1d
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->r()Landroidx/compose/ui/layout/RemeasurementModifier;

    move-result-object v0

    move-object/from16 v8, v29

    invoke-interface {v8, v0}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 36
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->g()Landroidx/compose/foundation/lazy/AwaitFirstLayoutModifier;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    and-int/lit16 v1, v14, 0x380

    or-int/lit16 v1, v1, 0x1000

    and-int v2, v24, v17

    or-int/2addr v1, v2

    or-int v1, v1, v19

    and-int v2, v24, v18

    or-int v14, v1, v2

    move-object v1, v11

    move-object/from16 v2, p1

    move-object/from16 v3, v25

    move/from16 v4, p5

    move/from16 v5, v20

    move/from16 v6, p7

    move-object v7, v10

    move-object/from16 v17, v8

    move v8, v14

    .line 37
    invoke-static/range {v0 .. v8}, Landroidx/compose/foundation/lazy/grid/LazySemanticsKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;Landroidx/compose/foundation/lazy/grid/LazyGridState;Lkotlinx/coroutines/o0;ZZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 38
    invoke-static {v0, v12}, Landroidx/compose/foundation/ClipScrollableContainerKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/Orientation;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move-object/from16 v3, v28

    .line 39
    invoke-static {v0, v3}, Landroidx/compose/foundation/OverscrollKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/OverscrollEffect;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const v1, -0x455c81a7

    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    xor-int/lit8 v1, v20, 0x1

    .line 40
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v2

    .line 41
    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    .line 42
    sget-object v4, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v2, v4, :cond_2d

    if-nez v15, :cond_2d

    move/from16 v5, v20

    goto :goto_1e

    :cond_2d
    move v5, v1

    .line 43
    :goto_1e
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->Q()V

    .line 44
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->l()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v7

    move-object/from16 v1, p1

    move-object v2, v12

    move/from16 v4, p7

    move-object/from16 v6, v23

    .line 45
    invoke-static/range {v0 .. v7}, Landroidx/compose/foundation/gestures/ScrollableKt;->h(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/OverscrollEffect;ZZLandroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/interaction/MutableInteractionSource;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 46
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->p()Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v11

    move-object v4, v9

    move-object v5, v10

    .line 47
    invoke-static/range {v1 .. v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->a(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;Le8/p;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v4, v16

    move-object/from16 v1, v17

    move/from16 v5, v20

    move-object/from16 v7, v23

    .line 48
    :goto_1f
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v14

    if-nez v14, :cond_2e

    goto :goto_20

    :cond_2e
    new-instance v12, Landroidx/compose/foundation/lazy/grid/LazyGridKt$LazyGrid$2;

    move-object v0, v12

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v6, p5

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object v15, v12

    move/from16 v12, p12

    move/from16 v13, p13

    move-object/from16 v31, v14

    move/from16 v14, p14

    invoke-direct/range {v0 .. v14}, Landroidx/compose/foundation/lazy/grid/LazyGridKt$LazyGrid$2;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Le8/p;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Le8/l;III)V

    move-object/from16 v0, v31

    invoke-interface {v0, v15}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    :goto_20
    return-void
.end method

.method private static final b(Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/runtime/Composer;I)V
    .locals 2
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .line 1
    .line 2
    .line 3
    const v0, 0x38ae4144

    .line 4
    .line 5
    .line 6
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 7
    move-result-object p2

    .line 8
    .line 9
    and-int/lit8 v0, p3, 0xe

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    const/4 v0, 0x4

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x2

    .line 21
    :goto_0
    or-int/2addr v0, p3

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move v0, p3

    .line 24
    .line 25
    :goto_1
    and-int/lit8 v1, p3, 0x70

    .line 26
    .line 27
    if-nez v1, :cond_3

    .line 28
    .line 29
    .line 30
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 31
    move-result v1

    .line 32
    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    const/16 v1, 0x20

    .line 36
    goto :goto_2

    .line 37
    .line 38
    :cond_2
    const/16 v1, 0x10

    .line 39
    :goto_2
    or-int/2addr v0, v1

    .line 40
    .line 41
    :cond_3
    and-int/lit8 v0, v0, 0x5b

    .line 42
    .line 43
    const/16 v1, 0x12

    .line 44
    .line 45
    if-ne v0, v1, :cond_5

    .line 46
    .line 47
    .line 48
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->b()Z

    .line 49
    move-result v0

    .line 50
    .line 51
    if-nez v0, :cond_4

    .line 52
    goto :goto_3

    .line 53
    .line 54
    .line 55
    :cond_4
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->g()V

    .line 56
    goto :goto_4

    .line 57
    .line 58
    .line 59
    :cond_5
    :goto_3
    invoke-interface {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->f()I

    .line 60
    move-result v0

    .line 61
    .line 62
    if-lez v0, :cond_6

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, p0}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->F(Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;)V

    .line 66
    .line 67
    .line 68
    :cond_6
    :goto_4
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 69
    move-result-object p2

    .line 70
    .line 71
    if-nez p2, :cond_7

    .line 72
    goto :goto_5

    .line 73
    .line 74
    :cond_7
    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$ScrollPositionUpdater$1;

    .line 75
    .line 76
    .line 77
    invoke-direct {v0, p0, p1, p3}, Landroidx/compose/foundation/lazy/grid/LazyGridKt$ScrollPositionUpdater$1;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;Landroidx/compose/foundation/lazy/grid/LazyGridState;I)V

    .line 78
    .line 79
    .line 80
    invoke-interface {p2, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 81
    :goto_5
    return-void
.end method

.method public static final synthetic c(Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/runtime/Composer;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/lazy/grid/LazyGridKt;->b(Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/runtime/Composer;I)V

    .line 4
    return-void
.end method

.method public static final synthetic d(Landroidx/compose/foundation/OverscrollEffect;Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridKt;->e(Landroidx/compose/foundation/OverscrollEffect;Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;)V

    .line 4
    return-void
.end method

.method private static final e(Landroidx/compose/foundation/OverscrollEffect;Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->e()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->g()Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;

    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    .line 12
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    move-result-object v3

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->b()[Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-static {v1}, Lkotlin/collections/l;->N([Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    check-cast v1, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;

    .line 28
    .line 29
    if-nez v1, :cond_1

    .line 30
    :cond_0
    move-object v1, v3

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    move-result v1

    .line 35
    const/4 v3, 0x1

    .line 36
    .line 37
    if-eqz v1, :cond_3

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->h()I

    .line 41
    move-result p1

    .line 42
    .line 43
    if-eqz p1, :cond_2

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    move p1, v2

    .line 46
    goto :goto_1

    .line 47
    :cond_3
    :goto_0
    move p1, v3

    .line 48
    .line 49
    :goto_1
    if-nez v0, :cond_4

    .line 50
    .line 51
    if-eqz p1, :cond_5

    .line 52
    :cond_4
    move v2, v3

    .line 53
    .line 54
    .line 55
    :cond_5
    invoke-interface {p0, v2}, Landroidx/compose/foundation/OverscrollEffect;->setEnabled(Z)V

    .line 56
    return-void
.end method

.method private static final f(Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/OverscrollEffect;Le8/p;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;Landroidx/compose/runtime/Composer;II)Le8/p;
    .locals 15
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;",
            "Landroidx/compose/foundation/lazy/grid/LazyGridState;",
            "Landroidx/compose/foundation/OverscrollEffect;",
            "Le8/p<",
            "-",
            "Landroidx/compose/ui/unit/Density;",
            "-",
            "Landroidx/compose/ui/unit/Constraints;",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "ZZ",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Le8/p<",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;",
            "Landroidx/compose/ui/unit/Constraints;",
            "Landroidx/compose/ui/layout/MeasureResult;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p10

    .line 3
    .line 4
    move/from16 v1, p12

    .line 5
    .line 6
    .line 7
    const v2, 0x74c29fda

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 11
    .line 12
    and-int/lit16 v2, v1, 0x80

    .line 13
    const/4 v3, 0x0

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    move-object v12, v3

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    move-object/from16 v12, p7

    .line 20
    .line 21
    :goto_0
    and-int/lit16 v1, v1, 0x100

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    move-object v11, v3

    .line 25
    goto :goto_1

    .line 26
    .line 27
    :cond_1
    move-object/from16 v11, p8

    .line 28
    .line 29
    :goto_1
    const/16 v1, 0x9

    .line 30
    .line 31
    new-array v2, v1, [Ljava/lang/Object;

    .line 32
    const/4 v3, 0x0

    .line 33
    .line 34
    aput-object p1, v2, v3

    .line 35
    const/4 v4, 0x1

    .line 36
    .line 37
    aput-object p2, v2, v4

    .line 38
    const/4 v4, 0x2

    .line 39
    .line 40
    aput-object p3, v2, v4

    .line 41
    const/4 v4, 0x3

    .line 42
    .line 43
    aput-object p4, v2, v4

    .line 44
    const/4 v4, 0x4

    .line 45
    .line 46
    .line 47
    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 48
    move-result-object v5

    .line 49
    .line 50
    aput-object v5, v2, v4

    .line 51
    const/4 v4, 0x5

    .line 52
    .line 53
    .line 54
    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 55
    move-result-object v5

    .line 56
    .line 57
    aput-object v5, v2, v4

    .line 58
    const/4 v4, 0x6

    .line 59
    .line 60
    aput-object v12, v2, v4

    .line 61
    const/4 v4, 0x7

    .line 62
    .line 63
    aput-object v11, v2, v4

    .line 64
    .line 65
    const/16 v4, 0x8

    .line 66
    .line 67
    aput-object p9, v2, v4

    .line 68
    .line 69
    .line 70
    const v4, -0x21de6e89

    .line 71
    .line 72
    .line 73
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 74
    move v4, v3

    .line 75
    .line 76
    :goto_2
    if-ge v3, v1, :cond_2

    .line 77
    .line 78
    aget-object v5, v2, v3

    .line 79
    .line 80
    .line 81
    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 82
    move-result v5

    .line 83
    or-int/2addr v4, v5

    .line 84
    .line 85
    add-int/lit8 v3, v3, 0x1

    .line 86
    goto :goto_2

    .line 87
    .line 88
    .line 89
    :cond_2
    invoke-interface/range {p10 .. p10}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 90
    move-result-object v1

    .line 91
    .line 92
    if-nez v4, :cond_3

    .line 93
    .line 94
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 98
    move-result-object v2

    .line 99
    .line 100
    if-ne v1, v2, :cond_4

    .line 101
    .line 102
    :cond_3
    new-instance v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;

    .line 103
    move-object v4, v1

    .line 104
    .line 105
    move/from16 v5, p6

    .line 106
    .line 107
    move-object/from16 v6, p4

    .line 108
    .line 109
    move/from16 v7, p5

    .line 110
    .line 111
    move-object/from16 v8, p1

    .line 112
    move-object v9, p0

    .line 113
    .line 114
    move-object/from16 v10, p3

    .line 115
    .line 116
    move-object/from16 v13, p9

    .line 117
    .line 118
    move-object/from16 v14, p2

    .line 119
    .line 120
    .line 121
    invoke-direct/range {v4 .. v14}, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;-><init>(ZLandroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;Le8/p;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;Landroidx/compose/foundation/OverscrollEffect;)V

    .line 122
    .line 123
    .line 124
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    :cond_4
    invoke-interface/range {p10 .. p10}, Landroidx/compose/runtime/Composer;->Q()V

    .line 128
    .line 129
    check-cast v1, Le8/p;

    .line 130
    .line 131
    .line 132
    invoke-interface/range {p10 .. p10}, Landroidx/compose/runtime/Composer;->Q()V

    .line 133
    return-object v1
.end method
