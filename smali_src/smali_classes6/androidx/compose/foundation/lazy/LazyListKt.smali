.class public final Landroidx/compose/foundation/lazy/LazyListKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyList.kt\nandroidx/compose/foundation/lazy/LazyListKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 Effects.kt\nandroidx/compose/runtime/EffectsKt\n+ 5 Effects.kt\nandroidx/compose/runtime/EffectsKt$rememberCoroutineScope$1\n+ 6 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n*L\n1#1,348:1\n25#2:349\n25#2:360\n50#2:371\n49#2:372\n83#2,3:380\n1057#3,6:350\n1057#3,3:361\n1060#3,3:367\n1057#3,6:373\n1057#3,6:383\n473#4,4:356\n477#4,2:364\n481#4:370\n473#5:366\n76#6:379\n*S KotlinDebug\n*F\n+ 1 LazyList.kt\nandroidx/compose/foundation/lazy/LazyListKt\n*L\n79#1:349\n80#1:360\n81#1:371\n81#1:372\n184#1:380,3\n79#1:350,6\n80#1:361,3\n80#1:367,3\n81#1:373,6\n184#1:383,6\n80#1:356,4\n80#1:364,2\n80#1:370\n80#1:366\n127#1:379\n*E\n"
.end annotation


# direct methods
.method public static final a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Le8/l;Landroidx/compose/runtime/Composer;III)V
    .locals 35
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/foundation/lazy/LazyListState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/foundation/layout/PaddingValues;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/foundation/gestures/FlingBehavior;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Landroidx/compose/ui/Alignment$Horizontal;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Landroidx/compose/foundation/layout/Arrangement$Vertical;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Landroidx/compose/ui/Alignment$Vertical;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Landroidx/compose/foundation/layout/Arrangement$Horizontal;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p12    # Landroidx/compose/runtime/Composer;
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
            "Landroidx/compose/foundation/lazy/LazyListState;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "ZZ",
            "Landroidx/compose/foundation/gestures/FlingBehavior;",
            "Z",
            "Landroidx/compose/ui/Alignment$Horizontal;",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/ui/Alignment$Vertical;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Le8/l<",
            "-",
            "Landroidx/compose/foundation/lazy/LazyListScope;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v15, p2

    move/from16 v14, p3

    move/from16 v13, p4

    move-object/from16 v12, p5

    move-object/from16 v11, p11

    move/from16 v10, p13

    move/from16 v9, p15

    const-string v2, "modifier"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "state"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "contentPadding"

    invoke-static {v15, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "flingBehavior"

    invoke-static {v12, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "content"

    invoke-static {v11, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x38f0b7d6

    move-object/from16 v3, p12

    .line 1
    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    move-result-object v8

    and-int/lit8 v2, v9, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v2, v10, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v10, 0xe

    if-nez v2, :cond_2

    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v2, v10

    goto :goto_1

    :cond_2
    move v2, v10

    :goto_1
    and-int/lit8 v5, v9, 0x2

    if-eqz v5, :cond_3

    or-int/lit8 v2, v2, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v5, v10, 0x70

    if-nez v5, :cond_5

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x20

    goto :goto_2

    :cond_4
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v2, v5

    :cond_5
    :goto_3
    and-int/lit8 v5, v9, 0x4

    if-eqz v5, :cond_6

    or-int/lit16 v2, v2, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v5, v10, 0x380

    if-nez v5, :cond_8

    invoke-interface {v8, v15}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v5, 0x100

    goto :goto_4

    :cond_7
    const/16 v5, 0x80

    :goto_4
    or-int/2addr v2, v5

    :cond_8
    :goto_5
    and-int/lit8 v5, v9, 0x8

    if-eqz v5, :cond_9

    or-int/lit16 v2, v2, 0xc00

    goto :goto_7

    :cond_9
    and-int/lit16 v5, v10, 0x1c00

    if-nez v5, :cond_b

    invoke-interface {v8, v14}, Landroidx/compose/runtime/Composer;->m(Z)Z

    move-result v5

    if-eqz v5, :cond_a

    const/16 v5, 0x800

    goto :goto_6

    :cond_a
    const/16 v5, 0x400

    :goto_6
    or-int/2addr v2, v5

    :cond_b
    :goto_7
    and-int/lit8 v5, v9, 0x10

    const v18, 0xe000

    if-eqz v5, :cond_c

    or-int/lit16 v2, v2, 0x6000

    goto :goto_9

    :cond_c
    and-int v5, v10, v18

    if-nez v5, :cond_e

    invoke-interface {v8, v13}, Landroidx/compose/runtime/Composer;->m(Z)Z

    move-result v5

    if-eqz v5, :cond_d

    const/16 v5, 0x4000

    goto :goto_8

    :cond_d
    const/16 v5, 0x2000

    :goto_8
    or-int/2addr v2, v5

    :cond_e
    :goto_9
    and-int/lit8 v5, v9, 0x20

    const/high16 v16, 0x70000

    if-eqz v5, :cond_f

    const/high16 v5, 0x30000

    :goto_a
    or-int/2addr v2, v5

    goto :goto_b

    :cond_f
    and-int v5, v10, v16

    if-nez v5, :cond_11

    invoke-interface {v8, v12}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    const/high16 v5, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v5, 0x10000

    goto :goto_a

    :cond_11
    :goto_b
    and-int/lit8 v5, v9, 0x40

    const/high16 v19, 0x380000

    if-eqz v5, :cond_13

    const/high16 v5, 0x180000

    or-int/2addr v2, v5

    :cond_12
    move/from16 v5, p6

    goto :goto_d

    :cond_13
    and-int v5, v10, v19

    if-nez v5, :cond_12

    move/from16 v5, p6

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->m(Z)Z

    move-result v17

    if-eqz v17, :cond_14

    const/high16 v17, 0x100000

    goto :goto_c

    :cond_14
    const/high16 v17, 0x80000

    :goto_c
    or-int v2, v2, v17

    :goto_d
    and-int/lit16 v3, v9, 0x80

    const/high16 v17, 0x1c00000

    if-eqz v3, :cond_15

    const/high16 v20, 0xc00000

    or-int v2, v2, v20

    move-object/from16 v4, p7

    goto :goto_f

    :cond_15
    and-int v20, v10, v17

    move-object/from16 v4, p7

    if-nez v20, :cond_17

    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_16

    const/high16 v21, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v21, 0x400000

    :goto_e
    or-int v2, v2, v21

    :cond_17
    :goto_f
    and-int/lit16 v6, v9, 0x100

    const/high16 v22, 0xe000000

    if-eqz v6, :cond_18

    const/high16 v23, 0x6000000

    or-int v2, v2, v23

    move-object/from16 v7, p8

    goto :goto_11

    :cond_18
    and-int v23, v10, v22

    move-object/from16 v7, p8

    if-nez v23, :cond_1a

    invoke-interface {v8, v7}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_19

    const/high16 v24, 0x4000000

    goto :goto_10

    :cond_19
    const/high16 v24, 0x2000000

    :goto_10
    or-int v2, v2, v24

    :cond_1a
    :goto_11
    and-int/lit16 v4, v9, 0x200

    if-eqz v4, :cond_1b

    const/high16 v24, 0x30000000

    or-int v2, v2, v24

    move-object/from16 v5, p9

    goto :goto_13

    :cond_1b
    const/high16 v24, 0x70000000

    and-int v24, v10, v24

    move-object/from16 v5, p9

    if-nez v24, :cond_1d

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1c

    const/high16 v24, 0x20000000

    goto :goto_12

    :cond_1c
    const/high16 v24, 0x10000000

    :goto_12
    or-int v2, v2, v24

    :cond_1d
    :goto_13
    and-int/lit16 v5, v9, 0x400

    if-eqz v5, :cond_1e

    or-int/lit8 v20, p14, 0x6

    move-object/from16 v7, p10

    goto :goto_15

    :cond_1e
    and-int/lit8 v24, p14, 0xe

    move-object/from16 v7, p10

    if-nez v24, :cond_20

    invoke-interface {v8, v7}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1f

    const/16 v20, 0x4

    goto :goto_14

    :cond_1f
    const/16 v20, 0x2

    :goto_14
    or-int v20, p14, v20

    goto :goto_15

    :cond_20
    move/from16 v20, p14

    :goto_15
    and-int/lit16 v7, v9, 0x800

    if-eqz v7, :cond_21

    or-int/lit8 v20, v20, 0x30

    goto :goto_17

    :cond_21
    and-int/lit8 v7, p14, 0x70

    if-nez v7, :cond_23

    invoke-interface {v8, v11}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_22

    const/16 v21, 0x20

    goto :goto_16

    :cond_22
    const/16 v21, 0x10

    :goto_16
    or-int v20, v20, v21

    :cond_23
    :goto_17
    const v7, 0x5b6db6db

    and-int/2addr v7, v2

    const v9, 0x12492492

    if-ne v7, v9, :cond_25

    and-int/lit8 v7, v20, 0x5b

    const/16 v9, 0x12

    if-ne v7, v9, :cond_25

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->b()Z

    move-result v7

    if-nez v7, :cond_24

    goto :goto_18

    .line 2
    :cond_24
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->g()V

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object v12, v8

    move-object/from16 v8, p7

    goto/16 :goto_20

    :cond_25
    :goto_18
    const/4 v7, 0x0

    if-eqz v3, :cond_26

    move-object/from16 v21, v7

    goto :goto_19

    :cond_26
    move-object/from16 v21, p7

    :goto_19
    if-eqz v6, :cond_27

    move-object/from16 v23, v7

    goto :goto_1a

    :cond_27
    move-object/from16 v23, p8

    :goto_1a
    if-eqz v4, :cond_28

    move-object/from16 v24, v7

    goto :goto_1b

    :cond_28
    move-object/from16 v24, p9

    :goto_1b
    if-eqz v5, :cond_29

    move-object/from16 v25, v7

    goto :goto_1c

    :cond_29
    move-object/from16 v25, p10

    .line 3
    :goto_1c
    sget-object v3, Landroidx/compose/foundation/gestures/ScrollableDefaults;->INSTANCE:Landroidx/compose/foundation/gestures/ScrollableDefaults;

    const/4 v9, 0x6

    invoke-virtual {v3, v8, v9}, Landroidx/compose/foundation/gestures/ScrollableDefaults;->b(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/OverscrollEffect;

    move-result-object v7

    shr-int/lit8 v3, v2, 0x3

    and-int/lit8 v4, v3, 0xe

    and-int/lit8 v5, v20, 0x70

    or-int/2addr v4, v5

    .line 4
    invoke-static {v0, v11, v8, v4}, Landroidx/compose/foundation/lazy/LazyListItemProviderImplKt;->d(Landroidx/compose/foundation/lazy/LazyListState;Le8/l;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/lazy/LazyListItemProvider;

    move-result-object v6

    const v4, -0x1d58f75c

    .line 5
    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 6
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    move-result-object v4

    .line 7
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    move-result-object v9

    if-ne v4, v9, :cond_2a

    .line 8
    new-instance v4, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;

    invoke-direct {v4}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;-><init>()V

    .line 9
    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 10
    :cond_2a
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->Q()V

    .line 11
    move-object v9, v4

    check-cast v9, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;

    const v4, 0x2e20b340

    .line 12
    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->G(I)V

    const v4, -0x1d58f75c

    .line 13
    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 14
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    move-result-object v4

    .line 15
    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    move-result-object v10

    if-ne v4, v10, :cond_2b

    .line 16
    sget-object v4, Lkotlin/coroutines/h;->INSTANCE:Lkotlin/coroutines/h;

    invoke-static {v4, v8}, Landroidx/compose/runtime/EffectsKt;->j(Lkotlin/coroutines/g;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/o0;

    move-result-object v4

    .line 17
    new-instance v10, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    invoke-direct {v10, v4}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;-><init>(Lkotlinx/coroutines/o0;)V

    .line 18
    invoke-interface {v8, v10}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    move-object v4, v10

    .line 19
    :cond_2b
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->Q()V

    .line 20
    check-cast v4, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    .line 21
    invoke-virtual {v4}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->a()Lkotlinx/coroutines/o0;

    move-result-object v10

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->Q()V

    .line 22
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const v11, 0x1e7b2b64

    .line 23
    invoke-interface {v8, v11}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 24
    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v11

    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v4, v11

    .line 25
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    move-result-object v11

    if-nez v4, :cond_2c

    .line 26
    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    move-result-object v4

    if-ne v11, v4, :cond_2d

    .line 27
    :cond_2c
    new-instance v11, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;

    invoke-direct {v11, v10, v13}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;-><init>(Lkotlinx/coroutines/o0;Z)V

    .line 28
    invoke-interface {v8, v11}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 29
    :cond_2d
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->Q()V

    .line 30
    check-cast v11, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;

    .line 31
    invoke-virtual {v0, v11}, Landroidx/compose/foundation/lazy/LazyListState;->y(Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;)V

    and-int/lit8 v5, v2, 0x70

    .line 32
    sget v26, Landroidx/compose/runtime/collection/MutableVector;->$stable:I

    shl-int/lit8 v4, v26, 0x6

    or-int/2addr v4, v5

    shl-int/lit8 v27, v2, 0x6

    and-int v28, v27, v18

    or-int v4, v4, v28

    and-int v28, v27, v16

    or-int v4, v4, v28

    and-int v16, v27, v19

    or-int v4, v4, v16

    and-int v16, v2, v17

    or-int v4, v4, v16

    and-int v3, v3, v22

    or-int/2addr v3, v4

    shl-int/lit8 v4, v20, 0x1b

    const/high16 v16, 0x70000000

    and-int v4, v4, v16

    or-int v16, v3, v4

    shr-int/lit8 v3, v2, 0x18

    and-int/lit8 v3, v3, 0xe

    or-int/lit8 v17, v3, 0x40

    const/16 v20, 0x0

    move v4, v2

    move-object v2, v6

    move-object/from16 v3, p1

    move/from16 v29, v4

    move-object v4, v9

    move v1, v5

    move-object v5, v7

    move-object/from16 v30, v6

    move-object/from16 v6, p2

    move-object/from16 v31, v7

    move/from16 v7, p3

    move-object/from16 p8, v8

    move/from16 v8, p4

    move-object/from16 p7, v9

    const/16 v22, 0x6

    move-object/from16 v9, v21

    move-object/from16 v27, v10

    move-object/from16 v10, v24

    move-object/from16 v32, v11

    move-object/from16 v11, v25

    move-object/from16 v12, v23

    move-object/from16 v13, v32

    move-object/from16 v14, p8

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v20

    .line 33
    invoke-static/range {v2 .. v17}, Landroidx/compose/foundation/lazy/LazyListKt;->f(Landroidx/compose/foundation/lazy/LazyListItemProvider;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;Landroidx/compose/foundation/OverscrollEffect;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;Landroidx/compose/runtime/Composer;III)Le8/p;

    move-result-object v11

    move-object/from16 v12, p8

    move-object/from16 v13, v30

    .line 34
    invoke-static {v13, v0, v12, v1}, Landroidx/compose/foundation/lazy/LazyListKt;->b(Landroidx/compose/foundation/lazy/LazyListItemProvider;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/runtime/Composer;I)V

    if-eqz p4, :cond_2e

    .line 35
    sget-object v2, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    :goto_1d
    move-object v14, v2

    goto :goto_1e

    :cond_2e
    sget-object v2, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_1d

    .line 36
    :goto_1e
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/LazyListState;->r()Landroidx/compose/ui/layout/RemeasurementModifier;

    move-result-object v2

    move v15, v1

    move-object/from16 v1, p0

    invoke-interface {v1, v2}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 37
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/LazyListState;->g()Landroidx/compose/foundation/lazy/AwaitFirstLayoutModifier;

    move-result-object v3

    invoke-interface {v2, v3}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    move/from16 v10, v29

    shl-int/lit8 v3, v10, 0x3

    and-int/lit16 v3, v3, 0x380

    or-int/lit16 v3, v3, 0x1000

    and-int v4, v10, v18

    or-int/2addr v3, v4

    or-int v3, v3, v28

    and-int v4, v10, v19

    or-int v16, v3, v4

    move-object v3, v13

    move-object/from16 v4, p1

    move-object/from16 v5, v27

    move/from16 v6, p4

    move/from16 v7, p3

    move/from16 v8, p6

    move-object v9, v12

    move v1, v10

    move/from16 v10, v16

    .line 38
    invoke-static/range {v2 .. v10}, Landroidx/compose/foundation/lazy/LazySemanticsKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListItemProvider;Landroidx/compose/foundation/lazy/LazyListState;Lkotlinx/coroutines/o0;ZZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 39
    invoke-static {v2, v14}, Landroidx/compose/foundation/ClipScrollableContainerKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/Orientation;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    shl-int/lit8 v3, v26, 0x6

    or-int/2addr v3, v15

    and-int/lit16 v1, v1, 0x1c00

    or-int v7, v3, v1

    move-object/from16 v3, p1

    move-object/from16 v4, p7

    move/from16 v5, p3

    move-object v6, v12

    .line 40
    invoke-static/range {v2 .. v7}, Landroidx/compose/foundation/lazy/LazyBeyondBoundsModifierKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v1

    shl-int/lit8 v2, v26, 0x6

    or-int/2addr v2, v15

    .line 41
    invoke-static {v1, v0, v4, v12, v2}, Landroidx/compose/foundation/lazy/LazyListPinningModifierKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v1

    move-object/from16 v5, v31

    .line 42
    invoke-static {v1, v5}, Landroidx/compose/foundation/OverscrollKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/OverscrollEffect;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const v1, -0x362bbd4f

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    xor-int/lit8 v1, p3, 0x1

    .line 43
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v3

    .line 44
    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    .line 45
    sget-object v4, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v3, v4, :cond_2f

    if-nez p4, :cond_2f

    move/from16 v7, p3

    goto :goto_1f

    :cond_2f
    move v7, v1

    .line 46
    :goto_1f
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->Q()V

    .line 47
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/LazyListState;->l()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v9

    move-object/from16 v3, p1

    move-object v4, v14

    move/from16 v6, p6

    move-object/from16 v8, p5

    .line 48
    invoke-static/range {v2 .. v9}, Landroidx/compose/foundation/gestures/ScrollableKt;->h(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/OverscrollEffect;ZZLandroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/interaction/MutableInteractionSource;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 49
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/LazyListState;->o()Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v13

    move-object v6, v11

    move-object v7, v12

    .line 50
    invoke-static/range {v3 .. v9}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->a(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;Le8/p;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v8, v21

    move-object/from16 v9, v23

    move-object/from16 v10, v24

    move-object/from16 v11, v25

    .line 51
    :goto_20
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-nez v15, :cond_30

    goto :goto_21

    :cond_30
    new-instance v14, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$2;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v12, p11

    move/from16 v13, p13

    move-object/from16 v33, v14

    move/from16 v14, p14

    move-object/from16 v34, v15

    move/from16 v15, p15

    invoke-direct/range {v0 .. v15}, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$2;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Le8/l;III)V

    move-object/from16 v1, v33

    move-object/from16 v0, v34

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    :goto_21
    return-void
.end method

.method private static final b(Landroidx/compose/foundation/lazy/LazyListItemProvider;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/runtime/Composer;I)V
    .locals 2
    .annotation runtime Landroidx/compose/foundation/ExperimentalFoundationApi;
    .end annotation

    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .line 1
    .line 2
    .line 3
    const v0, 0x306dc6

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
    invoke-virtual {p1, p0}, Landroidx/compose/foundation/lazy/LazyListState;->C(Landroidx/compose/foundation/lazy/LazyListItemProvider;)V

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
    new-instance v0, Landroidx/compose/foundation/lazy/LazyListKt$ScrollPositionUpdater$1;

    .line 75
    .line 76
    .line 77
    invoke-direct {v0, p0, p1, p3}, Landroidx/compose/foundation/lazy/LazyListKt$ScrollPositionUpdater$1;-><init>(Landroidx/compose/foundation/lazy/LazyListItemProvider;Landroidx/compose/foundation/lazy/LazyListState;I)V

    .line 78
    .line 79
    .line 80
    invoke-interface {p2, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 81
    :goto_5
    return-void
.end method

.method public static final synthetic c(Landroidx/compose/foundation/lazy/LazyListItemProvider;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/runtime/Composer;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/lazy/LazyListKt;->b(Landroidx/compose/foundation/lazy/LazyListItemProvider;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/runtime/Composer;I)V

    .line 4
    return-void
.end method

.method public static final synthetic d(Landroidx/compose/foundation/OverscrollEffect;Landroidx/compose/foundation/lazy/LazyListMeasureResult;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/foundation/lazy/LazyListKt;->e(Landroidx/compose/foundation/OverscrollEffect;Landroidx/compose/foundation/lazy/LazyListMeasureResult;)V

    .line 4
    return-void
.end method

.method private static final e(Landroidx/compose/foundation/OverscrollEffect;Landroidx/compose/foundation/lazy/LazyListMeasureResult;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->e()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->g()Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->b()I

    .line 16
    move-result v1

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->h()I

    .line 22
    move-result p1

    .line 23
    .line 24
    if-eqz p1, :cond_2

    .line 25
    :cond_1
    move p1, v2

    .line 26
    goto :goto_0

    .line 27
    :cond_2
    move p1, v3

    .line 28
    .line 29
    :goto_0
    if-nez v0, :cond_4

    .line 30
    .line 31
    if-eqz p1, :cond_3

    .line 32
    goto :goto_1

    .line 33
    :cond_3
    move v2, v3

    .line 34
    .line 35
    .line 36
    :cond_4
    :goto_1
    invoke-interface {p0, v2}, Landroidx/compose/foundation/OverscrollEffect;->setEnabled(Z)V

    .line 37
    return-void
.end method

.method private static final f(Landroidx/compose/foundation/lazy/LazyListItemProvider;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;Landroidx/compose/foundation/OverscrollEffect;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;Landroidx/compose/runtime/Composer;III)Le8/p;
    .locals 17
    .annotation runtime Landroidx/compose/foundation/ExperimentalFoundationApi;
    .end annotation

    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/LazyListItemProvider;",
            "Landroidx/compose/foundation/lazy/LazyListState;",
            "Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;",
            "Landroidx/compose/foundation/OverscrollEffect;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "ZZ",
            "Landroidx/compose/ui/Alignment$Horizontal;",
            "Landroidx/compose/ui/Alignment$Vertical;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;",
            "Landroidx/compose/runtime/Composer;",
            "III)",
            "Le8/p<",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;",
            "Landroidx/compose/ui/unit/Constraints;",
            "Landroidx/compose/ui/layout/MeasureResult;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p12

    .line 3
    .line 4
    move/from16 v1, p15

    .line 5
    .line 6
    .line 7
    const v2, -0x53be6930

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
    move-object v14, v3

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    move-object/from16 v14, p7

    .line 20
    .line 21
    :goto_0
    and-int/lit16 v2, v1, 0x100

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    move-object v15, v3

    .line 25
    goto :goto_1

    .line 26
    .line 27
    :cond_1
    move-object/from16 v15, p8

    .line 28
    .line 29
    :goto_1
    and-int/lit16 v2, v1, 0x200

    .line 30
    .line 31
    if-eqz v2, :cond_2

    .line 32
    move-object v11, v3

    .line 33
    goto :goto_2

    .line 34
    .line 35
    :cond_2
    move-object/from16 v11, p9

    .line 36
    .line 37
    :goto_2
    and-int/lit16 v1, v1, 0x400

    .line 38
    .line 39
    if-eqz v1, :cond_3

    .line 40
    move-object v10, v3

    .line 41
    goto :goto_3

    .line 42
    .line 43
    :cond_3
    move-object/from16 v10, p10

    .line 44
    .line 45
    :goto_3
    const/16 v1, 0xb

    .line 46
    .line 47
    new-array v2, v1, [Ljava/lang/Object;

    .line 48
    const/4 v3, 0x0

    .line 49
    .line 50
    aput-object p1, v2, v3

    .line 51
    const/4 v4, 0x1

    .line 52
    .line 53
    aput-object p2, v2, v4

    .line 54
    const/4 v4, 0x2

    .line 55
    .line 56
    aput-object p3, v2, v4

    .line 57
    const/4 v4, 0x3

    .line 58
    .line 59
    aput-object p4, v2, v4

    .line 60
    const/4 v4, 0x4

    .line 61
    .line 62
    .line 63
    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 64
    move-result-object v5

    .line 65
    .line 66
    aput-object v5, v2, v4

    .line 67
    const/4 v4, 0x5

    .line 68
    .line 69
    .line 70
    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 71
    move-result-object v5

    .line 72
    .line 73
    aput-object v5, v2, v4

    .line 74
    const/4 v4, 0x6

    .line 75
    .line 76
    aput-object v14, v2, v4

    .line 77
    const/4 v4, 0x7

    .line 78
    .line 79
    aput-object v15, v2, v4

    .line 80
    .line 81
    const/16 v4, 0x8

    .line 82
    .line 83
    aput-object v11, v2, v4

    .line 84
    .line 85
    const/16 v4, 0x9

    .line 86
    .line 87
    aput-object v10, v2, v4

    .line 88
    .line 89
    const/16 v4, 0xa

    .line 90
    .line 91
    aput-object p11, v2, v4

    .line 92
    .line 93
    .line 94
    const v4, -0x21de6e89

    .line 95
    .line 96
    .line 97
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 98
    move v4, v3

    .line 99
    .line 100
    :goto_4
    if-ge v3, v1, :cond_4

    .line 101
    .line 102
    aget-object v5, v2, v3

    .line 103
    .line 104
    .line 105
    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 106
    move-result v5

    .line 107
    or-int/2addr v4, v5

    .line 108
    .line 109
    add-int/lit8 v3, v3, 0x1

    .line 110
    goto :goto_4

    .line 111
    .line 112
    .line 113
    :cond_4
    invoke-interface/range {p12 .. p12}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 114
    move-result-object v1

    .line 115
    .line 116
    if-nez v4, :cond_5

    .line 117
    .line 118
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 122
    move-result-object v2

    .line 123
    .line 124
    if-ne v1, v2, :cond_6

    .line 125
    .line 126
    :cond_5
    new-instance v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;

    .line 127
    move-object v4, v1

    .line 128
    .line 129
    move/from16 v5, p6

    .line 130
    .line 131
    move-object/from16 v6, p4

    .line 132
    .line 133
    move/from16 v7, p5

    .line 134
    .line 135
    move-object/from16 v8, p1

    .line 136
    .line 137
    move-object/from16 v9, p0

    .line 138
    .line 139
    move-object/from16 v12, p11

    .line 140
    .line 141
    move-object/from16 v13, p2

    .line 142
    .line 143
    move-object/from16 v16, p3

    .line 144
    .line 145
    .line 146
    invoke-direct/range {v4 .. v16}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;-><init>(ZLandroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/lazy/LazyListItemProvider;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/OverscrollEffect;)V

    .line 147
    .line 148
    .line 149
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    :cond_6
    invoke-interface/range {p12 .. p12}, Landroidx/compose/runtime/Composer;->Q()V

    .line 153
    .line 154
    check-cast v1, Le8/p;

    .line 155
    .line 156
    .line 157
    invoke-interface/range {p12 .. p12}, Landroidx/compose/runtime/Composer;->Q()V

    .line 158
    return-object v1
.end method
