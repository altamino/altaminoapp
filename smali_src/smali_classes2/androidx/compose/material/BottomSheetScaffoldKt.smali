.class public final Landroidx/compose/material/BottomSheetScaffoldKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBottomSheetScaffold.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BottomSheetScaffold.kt\nandroidx/compose/material/BottomSheetScaffoldKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 Effects.kt\nandroidx/compose/runtime/EffectsKt\n+ 5 Effects.kt\nandroidx/compose/runtime/EffectsKt$rememberCoroutineScope$1\n+ 6 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 7 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 8 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 9 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,487:1\n25#2:488\n67#2,3:495\n66#2:498\n25#2:509\n25#2:522\n83#2,3:529\n1057#3,6:489\n1057#3,6:499\n1057#3,3:510\n1060#3,3:516\n1057#3,6:523\n1057#3,6:532\n473#4,4:505\n477#4,2:513\n481#4:519\n473#5:515\n76#6:520\n1#7:521\n76#8:538\n102#8,2:539\n155#9:541\n*S KotlinDebug\n*F\n+ 1 BottomSheetScaffold.kt\nandroidx/compose/material/BottomSheetScaffoldKt\n*L\n206#1:488\n208#1:495,3\n208#1:498\n292#1:509\n294#1:522\n430#1:529,3\n206#1:489,6\n208#1:499,6\n292#1:510,3\n292#1:516,3\n294#1:523,6\n430#1:532,6\n292#1:505,4\n292#1:513,2\n292#1:519\n292#1:515\n293#1:520\n294#1:538\n294#1:539,2\n487#1:541\n*E\n"
.end annotation


# static fields
.field private static final FabSpacing:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0x10

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
    sput v0, Landroidx/compose/material/BottomSheetScaffoldKt;->FabSpacing:F

    .line 10
    return-void
.end method

.method public static final a(Le8/q;Landroidx/compose/ui/Modifier;Landroidx/compose/material/BottomSheetScaffoldState;Le8/p;Le8/q;Le8/p;IZLandroidx/compose/ui/graphics/Shape;FJJFLe8/q;ZLandroidx/compose/ui/graphics/Shape;FJJJJJLe8/q;Landroidx/compose/runtime/Composer;IIII)V
    .locals 44
    .param p0    # Le8/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/material/BottomSheetScaffoldState;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Le8/q;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Landroidx/compose/ui/graphics/Shape;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p15    # Le8/q;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p17    # Landroidx/compose/ui/graphics/Shape;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p29    # Le8/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p30    # Landroidx/compose/runtime/Composer;
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
            "Le8/q<",
            "-",
            "Landroidx/compose/foundation/layout/ColumnScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/material/BottomSheetScaffoldState;",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Le8/q<",
            "-",
            "Landroidx/compose/material/SnackbarHostState;",
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
            ">;IZ",
            "Landroidx/compose/ui/graphics/Shape;",
            "FJJF",
            "Le8/q<",
            "-",
            "Landroidx/compose/foundation/layout/ColumnScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;Z",
            "Landroidx/compose/ui/graphics/Shape;",
            "FJJJJJ",
            "Le8/q<",
            "-",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "IIII)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v15, p29

    move/from16 v13, p31

    move/from16 v14, p32

    move/from16 v11, p33

    move/from16 v12, p34

    const-string v0, "sheetContent"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x2c45ae3

    move-object/from16 v2, p30

    .line 1
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    move-result-object v0

    and-int/lit8 v2, v12, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v2, v13, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v13, 0xe

    if-nez v2, :cond_2

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v2, v13

    goto :goto_1

    :cond_2
    move v2, v13

    :goto_1
    and-int/lit8 v4, v12, 0x2

    if-eqz v4, :cond_4

    or-int/lit8 v2, v2, 0x30

    :cond_3
    move-object/from16 v7, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v7, v13, 0x70

    if-nez v7, :cond_3

    move-object/from16 v7, p1

    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const/16 v9, 0x20

    goto :goto_2

    :cond_5
    const/16 v9, 0x10

    :goto_2
    or-int/2addr v2, v9

    :goto_3
    and-int/lit16 v9, v13, 0x380

    const/16 v16, 0x100

    if-nez v9, :cond_8

    and-int/lit8 v9, v12, 0x4

    if-nez v9, :cond_6

    move-object/from16 v9, p2

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    move/from16 v17, v16

    goto :goto_4

    :cond_6
    move-object/from16 v9, p2

    :cond_7
    const/16 v17, 0x80

    :goto_4
    or-int v2, v2, v17

    goto :goto_5

    :cond_8
    move-object/from16 v9, p2

    :goto_5
    and-int/lit8 v17, v12, 0x8

    const/16 v18, 0x400

    const/16 v19, 0x800

    if-eqz v17, :cond_a

    or-int/lit16 v2, v2, 0xc00

    :cond_9
    move-object/from16 v3, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v3, v13, 0x1c00

    if-nez v3, :cond_9

    move-object/from16 v3, p3

    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_b

    move/from16 v20, v19

    goto :goto_6

    :cond_b
    move/from16 v20, v18

    :goto_6
    or-int v2, v2, v20

    :goto_7
    and-int/lit8 v20, v12, 0x10

    const/16 v21, 0x4000

    if-eqz v20, :cond_c

    or-int/lit16 v2, v2, 0x6000

    move-object/from16 v10, p4

    goto :goto_9

    :cond_c
    const v22, 0xe000

    and-int v22, v13, v22

    move-object/from16 v10, p4

    if-nez v22, :cond_e

    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_d

    move/from16 v23, v21

    goto :goto_8

    :cond_d
    const/16 v23, 0x2000

    :goto_8
    or-int v2, v2, v23

    :cond_e
    :goto_9
    and-int/lit8 v23, v12, 0x20

    const/high16 v24, 0x20000

    if-eqz v23, :cond_f

    const/high16 v25, 0x30000

    or-int v2, v2, v25

    move-object/from16 v8, p5

    goto :goto_b

    :cond_f
    const/high16 v25, 0x70000

    and-int v25, v13, v25

    move-object/from16 v8, p5

    if-nez v25, :cond_11

    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_10

    move/from16 v26, v24

    goto :goto_a

    :cond_10
    const/high16 v26, 0x10000

    :goto_a
    or-int v2, v2, v26

    :cond_11
    :goto_b
    and-int/lit8 v26, v12, 0x40

    const/high16 v27, 0x80000

    const/high16 v28, 0x100000

    if-eqz v26, :cond_12

    const/high16 v29, 0x180000

    or-int v2, v2, v29

    move/from16 v7, p6

    goto :goto_d

    :cond_12
    const/high16 v29, 0x380000

    and-int v29, v13, v29

    move/from16 v7, p6

    if-nez v29, :cond_14

    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->p(I)Z

    move-result v29

    if-eqz v29, :cond_13

    move/from16 v29, v28

    goto :goto_c

    :cond_13
    move/from16 v29, v27

    :goto_c
    or-int v2, v2, v29

    :cond_14
    :goto_d
    and-int/lit16 v7, v12, 0x80

    if-eqz v7, :cond_16

    const/high16 v29, 0xc00000

    or-int v2, v2, v29

    :cond_15
    move/from16 v29, v7

    move/from16 v7, p7

    goto :goto_f

    :cond_16
    const/high16 v29, 0x1c00000

    and-int v29, v13, v29

    if-nez v29, :cond_15

    move/from16 v29, v7

    move/from16 v7, p7

    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->m(Z)Z

    move-result v30

    if-eqz v30, :cond_17

    const/high16 v30, 0x800000

    goto :goto_e

    :cond_17
    const/high16 v30, 0x400000

    :goto_e
    or-int v2, v2, v30

    :goto_f
    const/high16 v30, 0xe000000

    and-int v30, v13, v30

    if-nez v30, :cond_1a

    and-int/lit16 v5, v12, 0x100

    if-nez v5, :cond_18

    move-object/from16 v5, p8

    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_19

    const/high16 v31, 0x4000000

    goto :goto_10

    :cond_18
    move-object/from16 v5, p8

    :cond_19
    const/high16 v31, 0x2000000

    :goto_10
    or-int v2, v2, v31

    goto :goto_11

    :cond_1a
    move-object/from16 v5, p8

    :goto_11
    and-int/lit16 v7, v12, 0x200

    if-eqz v7, :cond_1c

    const/high16 v31, 0x30000000

    or-int v2, v2, v31

    :cond_1b
    move/from16 v31, v7

    move/from16 v7, p9

    goto :goto_13

    :cond_1c
    const/high16 v31, 0x70000000

    and-int v31, v13, v31

    if-nez v31, :cond_1b

    move/from16 v31, v7

    move/from16 v7, p9

    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->n(F)Z

    move-result v32

    if-eqz v32, :cond_1d

    const/high16 v32, 0x20000000

    goto :goto_12

    :cond_1d
    const/high16 v32, 0x10000000

    :goto_12
    or-int v2, v2, v32

    :goto_13
    and-int/lit8 v32, v14, 0xe

    if-nez v32, :cond_1f

    and-int/lit16 v6, v12, 0x400

    move-wide/from16 v7, p10

    if-nez v6, :cond_1e

    invoke-interface {v0, v7, v8}, Landroidx/compose/runtime/Composer;->q(J)Z

    move-result v6

    if-eqz v6, :cond_1e

    const/4 v6, 0x4

    goto :goto_14

    :cond_1e
    const/4 v6, 0x2

    :goto_14
    or-int/2addr v6, v14

    goto :goto_15

    :cond_1f
    move-wide/from16 v7, p10

    move v6, v14

    :goto_15
    and-int/lit8 v33, v14, 0x70

    if-nez v33, :cond_21

    and-int/lit16 v1, v12, 0x800

    move-wide/from16 v7, p12

    if-nez v1, :cond_20

    invoke-interface {v0, v7, v8}, Landroidx/compose/runtime/Composer;->q(J)Z

    move-result v1

    if-eqz v1, :cond_20

    const/16 v1, 0x20

    goto :goto_16

    :cond_20
    const/16 v1, 0x10

    :goto_16
    or-int/2addr v6, v1

    goto :goto_17

    :cond_21
    move-wide/from16 v7, p12

    :goto_17
    and-int/lit16 v1, v12, 0x1000

    if-eqz v1, :cond_23

    or-int/lit16 v6, v6, 0x180

    :cond_22
    move/from16 v3, p14

    goto :goto_19

    :cond_23
    and-int/lit16 v3, v14, 0x380

    if-nez v3, :cond_22

    move/from16 v3, p14

    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->n(F)Z

    move-result v33

    if-eqz v33, :cond_24

    move/from16 v33, v16

    goto :goto_18

    :cond_24
    const/16 v33, 0x80

    :goto_18
    or-int v6, v6, v33

    :goto_19
    and-int/lit16 v7, v12, 0x2000

    if-eqz v7, :cond_26

    or-int/lit16 v6, v6, 0xc00

    :cond_25
    move-object/from16 v8, p15

    goto :goto_1a

    :cond_26
    and-int/lit16 v8, v14, 0x1c00

    if-nez v8, :cond_25

    move-object/from16 v8, p15

    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_27

    move/from16 v18, v19

    :cond_27
    or-int v6, v6, v18

    :goto_1a
    move/from16 v18, v7

    and-int/lit16 v7, v12, 0x4000

    if-eqz v7, :cond_29

    or-int/lit16 v6, v6, 0x6000

    :cond_28
    move/from16 v19, v7

    move/from16 v7, p16

    goto :goto_1c

    :cond_29
    const v19, 0xe000

    and-int v19, v14, v19

    if-nez v19, :cond_28

    move/from16 v19, v7

    move/from16 v7, p16

    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->m(Z)Z

    move-result v33

    if-eqz v33, :cond_2a

    goto :goto_1b

    :cond_2a
    const/16 v21, 0x2000

    :goto_1b
    or-int v6, v6, v21

    :goto_1c
    const/high16 v21, 0x70000

    and-int v21, v14, v21

    if-nez v21, :cond_2c

    const v21, 0x8000

    and-int v21, v12, v21

    move-object/from16 v7, p17

    if-nez v21, :cond_2b

    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2b

    move/from16 v21, v24

    goto :goto_1d

    :cond_2b
    const/high16 v21, 0x10000

    :goto_1d
    or-int v6, v6, v21

    goto :goto_1e

    :cond_2c
    move-object/from16 v7, p17

    :goto_1e
    const/high16 v21, 0x10000

    and-int v21, v12, v21

    if-eqz v21, :cond_2d

    const/high16 v33, 0x180000

    or-int v6, v6, v33

    move/from16 v7, p18

    goto :goto_20

    :cond_2d
    const/high16 v33, 0x380000

    and-int v33, v14, v33

    move/from16 v7, p18

    if-nez v33, :cond_2f

    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->n(F)Z

    move-result v33

    if-eqz v33, :cond_2e

    move/from16 v33, v28

    goto :goto_1f

    :cond_2e
    move/from16 v33, v27

    :goto_1f
    or-int v6, v6, v33

    :cond_2f
    :goto_20
    const/high16 v33, 0x1c00000

    and-int v33, v14, v33

    if-nez v33, :cond_31

    and-int v33, v12, v24

    move-wide/from16 v7, p19

    if-nez v33, :cond_30

    invoke-interface {v0, v7, v8}, Landroidx/compose/runtime/Composer;->q(J)Z

    move-result v33

    if-eqz v33, :cond_30

    const/high16 v33, 0x800000

    goto :goto_21

    :cond_30
    const/high16 v33, 0x400000

    :goto_21
    or-int v6, v6, v33

    goto :goto_22

    :cond_31
    move-wide/from16 v7, p19

    :goto_22
    const/high16 v33, 0xe000000

    and-int v33, v14, v33

    if-nez v33, :cond_33

    const/high16 v33, 0x40000

    and-int v33, v12, v33

    move-wide/from16 v7, p21

    if-nez v33, :cond_32

    invoke-interface {v0, v7, v8}, Landroidx/compose/runtime/Composer;->q(J)Z

    move-result v33

    if-eqz v33, :cond_32

    const/high16 v33, 0x4000000

    goto :goto_23

    :cond_32
    const/high16 v33, 0x2000000

    :goto_23
    or-int v6, v6, v33

    goto :goto_24

    :cond_33
    move-wide/from16 v7, p21

    :goto_24
    const/high16 v33, 0x70000000

    and-int v33, v14, v33

    if-nez v33, :cond_35

    and-int v33, v12, v27

    move-wide/from16 v7, p23

    if-nez v33, :cond_34

    invoke-interface {v0, v7, v8}, Landroidx/compose/runtime/Composer;->q(J)Z

    move-result v33

    if-eqz v33, :cond_34

    const/high16 v33, 0x20000000

    goto :goto_25

    :cond_34
    const/high16 v33, 0x10000000

    :goto_25
    or-int v6, v6, v33

    :goto_26
    move/from16 v33, v6

    goto :goto_27

    :cond_35
    move-wide/from16 v7, p23

    goto :goto_26

    :goto_27
    and-int/lit8 v6, v11, 0xe

    if-nez v6, :cond_37

    and-int v6, v12, v28

    move-wide/from16 v7, p25

    if-nez v6, :cond_36

    invoke-interface {v0, v7, v8}, Landroidx/compose/runtime/Composer;->q(J)Z

    move-result v6

    if-eqz v6, :cond_36

    const/4 v6, 0x4

    goto :goto_28

    :cond_36
    const/4 v6, 0x2

    :goto_28
    or-int/2addr v6, v11

    goto :goto_29

    :cond_37
    move-wide/from16 v7, p25

    move v6, v11

    :goto_29
    and-int/lit8 v34, v11, 0x70

    if-nez v34, :cond_39

    const/high16 v34, 0x200000

    and-int v34, v12, v34

    move-wide/from16 v7, p27

    if-nez v34, :cond_38

    invoke-interface {v0, v7, v8}, Landroidx/compose/runtime/Composer;->q(J)Z

    move-result v34

    if-eqz v34, :cond_38

    const/16 v30, 0x20

    goto :goto_2a

    :cond_38
    const/16 v30, 0x10

    :goto_2a
    or-int v6, v6, v30

    goto :goto_2b

    :cond_39
    move-wide/from16 v7, p27

    :goto_2b
    const/high16 v30, 0x400000

    and-int v30, v12, v30

    if-eqz v30, :cond_3a

    or-int/lit16 v6, v6, 0x180

    goto :goto_2d

    :cond_3a
    and-int/lit16 v3, v11, 0x380

    if-nez v3, :cond_3c

    invoke-interface {v0, v15}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    goto :goto_2c

    :cond_3b
    const/16 v16, 0x80

    :goto_2c
    or-int v6, v6, v16

    :cond_3c
    :goto_2d
    const v3, 0x5b6db6db

    and-int/2addr v3, v2

    const v5, 0x12492492

    if-ne v3, v5, :cond_3e

    const v3, 0x5b6db6db

    and-int v3, v33, v3

    const v5, 0x12492492

    if-ne v3, v5, :cond_3e

    and-int/lit16 v3, v6, 0x2db

    const/16 v5, 0x92

    if-ne v3, v5, :cond_3e

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->b()Z

    move-result v3

    if-nez v3, :cond_3d

    goto :goto_2e

    .line 2
    :cond_3d
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->g()V

    move-object/from16 v13, p1

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-wide/from16 v11, p10

    move-wide/from16 v31, p12

    move/from16 v15, p14

    move-object/from16 v16, p15

    move/from16 v17, p16

    move-object/from16 v18, p17

    move/from16 v19, p18

    move-wide/from16 v20, p19

    move-wide/from16 v22, p21

    move-wide/from16 v24, p23

    move-wide/from16 v26, p25

    move-object v2, v0

    move-wide/from16 v28, v7

    move-object v3, v9

    move-object v5, v10

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    goto/16 :goto_47

    .line 3
    :cond_3e
    :goto_2e
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->J()V

    and-int/lit8 v3, v13, 0x1

    const v16, -0xe000001

    const/4 v5, 0x0

    const/4 v7, 0x6

    if-eqz v3, :cond_4a

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->h()Z

    move-result v3

    if-eqz v3, :cond_3f

    goto/16 :goto_2f

    .line 4
    :cond_3f
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->g()V

    and-int/lit8 v1, v12, 0x4

    if-eqz v1, :cond_40

    and-int/lit16 v2, v2, -0x381

    :cond_40
    and-int/lit16 v1, v12, 0x100

    if-eqz v1, :cond_41

    and-int v2, v2, v16

    :cond_41
    and-int/lit16 v1, v12, 0x400

    if-eqz v1, :cond_42

    and-int/lit8 v33, v33, -0xf

    :cond_42
    and-int/lit16 v1, v12, 0x800

    if-eqz v1, :cond_43

    and-int/lit8 v33, v33, -0x71

    :cond_43
    const v1, 0x8000

    and-int/2addr v1, v12

    if-eqz v1, :cond_44

    const v1, -0x70001

    and-int v33, v33, v1

    :cond_44
    and-int v1, v12, v24

    if-eqz v1, :cond_45

    const v1, -0x1c00001

    and-int v33, v33, v1

    :cond_45
    const/high16 v1, 0x40000

    and-int/2addr v1, v12

    if-eqz v1, :cond_46

    and-int v33, v33, v16

    :cond_46
    and-int v1, v12, v27

    if-eqz v1, :cond_47

    const v1, -0x70000001

    and-int v33, v33, v1

    :cond_47
    and-int v1, v12, v28

    if-eqz v1, :cond_48

    and-int/lit8 v6, v6, -0xf

    :cond_48
    const/high16 v1, 0x200000

    and-int/2addr v1, v12

    if-eqz v1, :cond_49

    and-int/lit8 v6, v6, -0x71

    :cond_49
    move-object/from16 v1, p1

    move-object/from16 v4, p3

    move/from16 v7, p6

    move-object/from16 v3, p8

    move/from16 v18, p9

    move-wide/from16 v29, p10

    move-wide/from16 v31, p12

    move/from16 v8, p14

    move-object/from16 v16, p15

    move/from16 v20, p16

    move-object/from16 v21, p17

    move/from16 v22, p18

    move-wide/from16 v26, p19

    move-wide/from16 v23, p21

    move-wide/from16 v34, p23

    move-wide/from16 v36, p25

    move-wide/from16 v38, p27

    move/from16 v28, v6

    move-object v5, v10

    move-object/from16 v6, p5

    move/from16 v10, p7

    goto/16 :goto_44

    :cond_4a
    :goto_2f
    if-eqz v4, :cond_4b

    .line 5
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 v22, v3

    goto :goto_30

    :cond_4b
    move-object/from16 v22, p1

    :goto_30
    and-int/lit8 v3, v12, 0x4

    if-eqz v3, :cond_4c

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/16 v30, 0x0

    const/16 v32, 0x7

    move v8, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v9

    move-object v9, v5

    move-object v5, v0

    move/from16 v34, v6

    move/from16 v6, v30

    move v9, v7

    move/from16 v30, v19

    move/from16 v19, v31

    move/from16 v43, v29

    move/from16 v29, v18

    move/from16 v18, v43

    move/from16 v7, v32

    .line 6
    invoke-static/range {v2 .. v7}, Landroidx/compose/material/BottomSheetScaffoldKt;->i(Landroidx/compose/material/DrawerState;Landroidx/compose/material/BottomSheetState;Landroidx/compose/material/SnackbarHostState;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/BottomSheetScaffoldState;

    move-result-object v2

    and-int/lit16 v3, v8, -0x381

    move v8, v3

    move-object v3, v2

    const/4 v2, 0x0

    goto :goto_31

    :cond_4c
    move v8, v2

    move-object v2, v5

    move/from16 v34, v6

    move v9, v7

    move/from16 v30, v19

    move/from16 v19, v31

    move/from16 v43, v29

    move/from16 v29, v18

    move/from16 v18, v43

    move-object/from16 v3, p2

    :goto_31
    if-eqz v17, :cond_4d

    move-object v4, v2

    goto :goto_32

    :cond_4d
    move-object/from16 v4, p3

    :goto_32
    if-eqz v20, :cond_4e

    .line 7
    sget-object v5, Landroidx/compose/material/ComposableSingletons$BottomSheetScaffoldKt;->INSTANCE:Landroidx/compose/material/ComposableSingletons$BottomSheetScaffoldKt;

    invoke-virtual {v5}, Landroidx/compose/material/ComposableSingletons$BottomSheetScaffoldKt;->a()Le8/q;

    move-result-object v5

    goto :goto_33

    :cond_4e
    move-object v5, v10

    :goto_33
    if-eqz v23, :cond_4f

    move-object v6, v2

    goto :goto_34

    :cond_4f
    move-object/from16 v6, p5

    :goto_34
    if-eqz v26, :cond_50

    .line 8
    sget-object v7, Landroidx/compose/material/FabPosition;->Companion:Landroidx/compose/material/FabPosition$Companion;

    invoke-virtual {v7}, Landroidx/compose/material/FabPosition$Companion;->b()I

    move-result v7

    goto :goto_35

    :cond_50
    move/from16 v7, p6

    :goto_35
    if-eqz v18, :cond_51

    const/4 v10, 0x1

    goto :goto_36

    :cond_51
    move/from16 v10, p7

    :goto_36
    and-int/lit16 v2, v12, 0x100

    if-eqz v2, :cond_52

    .line 9
    sget-object v2, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v2, v0, v9}, Landroidx/compose/material/MaterialTheme;->b(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Shapes;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/material/Shapes;->a()Landroidx/compose/foundation/shape/CornerBasedShape;

    move-result-object v2

    and-int v8, v8, v16

    goto :goto_37

    :cond_52
    move-object/from16 v2, p8

    :goto_37
    if-eqz v19, :cond_53

    .line 10
    sget-object v18, Landroidx/compose/material/BottomSheetScaffoldDefaults;->INSTANCE:Landroidx/compose/material/BottomSheetScaffoldDefaults;

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/material/BottomSheetScaffoldDefaults;->a()F

    move-result v18

    goto :goto_38

    :cond_53
    move/from16 v18, p9

    :goto_38
    and-int/lit16 v9, v12, 0x400

    if-eqz v9, :cond_54

    .line 11
    sget-object v9, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    move-object/from16 p1, v2

    const/4 v2, 0x6

    invoke-virtual {v9, v0, v2}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/compose/material/Colors;->n()J

    move-result-wide v31

    and-int/lit8 v33, v33, -0xf

    move-object/from16 p2, v3

    move-wide/from16 v2, v31

    goto :goto_39

    :cond_54
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-wide/from16 v2, p10

    :goto_39
    and-int/lit16 v9, v12, 0x800

    if-eqz v9, :cond_55

    and-int/lit8 v9, v33, 0xe

    .line 12
    invoke-static {v2, v3, v0, v9}, Landroidx/compose/material/ColorsKt;->b(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v31

    and-int/lit8 v33, v33, -0x71

    goto :goto_3a

    :cond_55
    move-wide/from16 v31, p12

    :goto_3a
    if-eqz v1, :cond_56

    .line 13
    sget-object v1, Landroidx/compose/material/BottomSheetScaffoldDefaults;->INSTANCE:Landroidx/compose/material/BottomSheetScaffoldDefaults;

    invoke-virtual {v1}, Landroidx/compose/material/BottomSheetScaffoldDefaults;->b()F

    move-result v1

    goto :goto_3b

    :cond_56
    move/from16 v1, p14

    :goto_3b
    if-eqz v29, :cond_57

    const/4 v9, 0x0

    goto :goto_3c

    :cond_57
    move-object/from16 v9, p15

    :goto_3c
    if-eqz v30, :cond_58

    const/16 v20, 0x1

    goto :goto_3d

    :cond_58
    move/from16 v20, p16

    :goto_3d
    const v23, 0x8000

    and-int v23, v12, v23

    move/from16 p3, v1

    if-eqz v23, :cond_59

    .line 14
    sget-object v1, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    move-wide/from16 v29, v2

    const/4 v2, 0x6

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material/MaterialTheme;->b(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Shapes;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/material/Shapes;->a()Landroidx/compose/foundation/shape/CornerBasedShape;

    move-result-object v1

    const v2, -0x70001

    and-int v33, v33, v2

    goto :goto_3e

    :cond_59
    move-wide/from16 v29, v2

    move-object/from16 v1, p17

    :goto_3e
    if-eqz v21, :cond_5a

    .line 15
    sget-object v2, Landroidx/compose/material/DrawerDefaults;->INSTANCE:Landroidx/compose/material/DrawerDefaults;

    invoke-virtual {v2}, Landroidx/compose/material/DrawerDefaults;->a()F

    move-result v2

    goto :goto_3f

    :cond_5a
    move/from16 v2, p18

    :goto_3f
    and-int v3, v12, v24

    if-eqz v3, :cond_5b

    .line 16
    sget-object v3, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    move-object/from16 p4, v1

    const/4 v1, 0x6

    invoke-virtual {v3, v0, v1}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/material/Colors;->n()J

    move-result-wide v23

    const v1, -0x1c00001

    and-int v33, v33, v1

    move/from16 p5, v2

    move-wide/from16 v1, v23

    goto :goto_40

    :cond_5b
    move-object/from16 p4, v1

    move/from16 p5, v2

    move-wide/from16 v1, p19

    :goto_40
    const/high16 v3, 0x40000

    and-int/2addr v3, v12

    if-eqz v3, :cond_5c

    shr-int/lit8 v3, v33, 0x15

    and-int/lit8 v3, v3, 0xe

    .line 17
    invoke-static {v1, v2, v0, v3}, Landroidx/compose/material/ColorsKt;->b(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v23

    and-int v33, v33, v16

    goto :goto_41

    :cond_5c
    move-wide/from16 v23, p21

    :goto_41
    and-int v3, v12, v27

    if-eqz v3, :cond_5d

    .line 18
    sget-object v3, Landroidx/compose/material/DrawerDefaults;->INSTANCE:Landroidx/compose/material/DrawerDefaults;

    move-wide/from16 v26, v1

    const/4 v1, 0x6

    invoke-virtual {v3, v0, v1}, Landroidx/compose/material/DrawerDefaults;->b(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v2

    const v16, -0x70000001

    and-int v16, v33, v16

    move/from16 v33, v16

    goto :goto_42

    :cond_5d
    move-wide/from16 v26, v1

    const/4 v1, 0x6

    move-wide/from16 v2, p23

    :goto_42
    and-int v16, v12, v28

    move-wide/from16 p6, v2

    if-eqz v16, :cond_5e

    .line 19
    sget-object v2, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v2, v0, v1}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/material/Colors;->c()J

    move-result-wide v1

    and-int/lit8 v3, v34, -0xf

    move/from16 v34, v3

    goto :goto_43

    :cond_5e
    move-wide/from16 v1, p25

    :goto_43
    const/high16 v3, 0x200000

    and-int/2addr v3, v12

    if-eqz v3, :cond_5f

    and-int/lit8 v3, v34, 0xe

    .line 20
    invoke-static {v1, v2, v0, v3}, Landroidx/compose/material/ColorsKt;->b(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v35

    and-int/lit8 v3, v34, -0x71

    move-object/from16 v21, p4

    move/from16 v28, v3

    move-object/from16 v16, v9

    move-wide/from16 v38, v35

    move-object/from16 v3, p1

    move-object/from16 v9, p2

    move-wide/from16 v34, p6

    move-wide/from16 v36, v1

    move v2, v8

    move-object/from16 v1, v22

    move/from16 v8, p3

    move/from16 v22, p5

    goto :goto_44

    :cond_5f
    move-object/from16 v3, p1

    move-object/from16 v21, p4

    move-wide/from16 v38, p27

    move-wide/from16 v36, v1

    move v2, v8

    move-object/from16 v16, v9

    move-object/from16 v1, v22

    move/from16 v28, v34

    move-object/from16 v9, p2

    move/from16 v8, p3

    move/from16 v22, p5

    move-wide/from16 v34, p6

    :goto_44
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->A()V

    const v11, 0x2e20b340

    .line 21
    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->G(I)V

    const v11, -0x1d58f75c

    .line 22
    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 23
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    move-result-object v11

    .line 24
    sget-object v40, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v40 .. v40}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    move-result-object v12

    if-ne v11, v12, :cond_60

    .line 25
    sget-object v11, Lkotlin/coroutines/h;->INSTANCE:Lkotlin/coroutines/h;

    invoke-static {v11, v0}, Landroidx/compose/runtime/EffectsKt;->j(Lkotlin/coroutines/g;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/o0;

    move-result-object v11

    .line 26
    new-instance v12, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    invoke-direct {v12, v11}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;-><init>(Lkotlinx/coroutines/o0;)V

    .line 27
    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    move-object v11, v12

    .line 28
    :cond_60
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 29
    check-cast v11, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    .line 30
    invoke-virtual {v11}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->a()Lkotlinx/coroutines/o0;

    move-result-object v11

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 31
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v12

    .line 32
    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v12

    .line 33
    check-cast v12, Landroidx/compose/ui/unit/Density;

    invoke-interface {v12, v8}, Landroidx/compose/ui/unit/Density;->H0(F)F

    move-result v12

    const v13, -0x1d58f75c

    .line 34
    invoke-interface {v0, v13}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 35
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    move-result-object v13

    .line 36
    invoke-virtual/range {v40 .. v40}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    move-result-object v14

    if-ne v13, v14, :cond_61

    const/4 v13, 0x0

    const/4 v14, 0x2

    .line 37
    invoke-static {v13, v13, v14, v13}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v14

    .line 38
    invoke-interface {v0, v14}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    move-object v13, v14

    goto :goto_45

    :cond_61
    move-object/from16 p1, v13

    .line 39
    :goto_45
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 40
    check-cast v13, Landroidx/compose/runtime/MutableState;

    .line 41
    invoke-static {v13}, Landroidx/compose/material/BottomSheetScaffoldKt;->c(Landroidx/compose/runtime/MutableState;)Ljava/lang/Float;

    move-result-object v14

    invoke-static {v12, v14}, Lkotlin/jvm/internal/t;->a(FLjava/lang/Float;)Z

    move-result v14

    if-nez v14, :cond_62

    .line 42
    sget-object v14, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    new-instance v15, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$semantics$1;

    invoke-direct {v15, v9, v11}, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$semantics$1;-><init>(Landroidx/compose/material/BottomSheetScaffoldState;Lkotlinx/coroutines/o0;)V

    const/4 v11, 0x0

    move-object/from16 v40, v0

    move-object/from16 v25, v1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v14, v11, v15, v0, v1}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->c(Landroidx/compose/ui/Modifier;ZLe8/l;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    move-object v0, v11

    goto :goto_46

    :cond_62
    move-object/from16 v40, v0

    move-object/from16 v25, v1

    .line 43
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 44
    :goto_46
    new-instance v1, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;

    move-object/from16 p1, v1

    move-object/from16 p2, v9

    move-object/from16 p3, v4

    move-object/from16 p4, p29

    move-object/from16 p5, v6

    move/from16 p6, v8

    move/from16 p7, v7

    move/from16 p8, v2

    move/from16 p9, v28

    move/from16 p10, v33

    move/from16 p11, v12

    move/from16 p12, v10

    move-object/from16 p13, v0

    move-object/from16 p14, v13

    move-object/from16 p15, v3

    move-wide/from16 p16, v29

    move-wide/from16 p18, v31

    move/from16 p20, v18

    move-object/from16 p21, p0

    move-object/from16 p22, v5

    invoke-direct/range {p1 .. p22}, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;-><init>(Landroidx/compose/material/BottomSheetScaffoldState;Le8/p;Le8/q;Le8/p;FIIIIFZLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/graphics/Shape;JJFLe8/q;Le8/q;)V

    const v0, 0x353ba407

    move-object/from16 v2, v40

    const/4 v11, 0x1

    invoke-static {v2, v0, v11, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    const/4 v1, 0x0

    move-object/from16 v13, v25

    const/4 v12, 0x0

    .line 45
    invoke-static {v13, v1, v11, v12}, Landroidx/compose/foundation/layout/SizeKt;->l(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 46
    new-instance v15, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$1;

    move-object/from16 p1, v15

    move-object/from16 p2, v16

    move-object/from16 p3, v0

    move-object/from16 p4, v9

    move/from16 p5, v20

    move-object/from16 p6, v21

    move/from16 p7, v22

    move-wide/from16 p8, v26

    move-wide/from16 p10, v23

    move-wide/from16 p12, v34

    move/from16 p14, v33

    invoke-direct/range {p1 .. p14}, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$1;-><init>(Le8/q;Le8/p;Landroidx/compose/material/BottomSheetScaffoldState;ZLandroidx/compose/ui/graphics/Shape;FJJJI)V

    const v0, 0x4bece61f    # 3.1050814E7f

    const/4 v14, 0x1

    invoke-static {v2, v0, v14, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    const/4 v14, 0x6

    shl-int/lit8 v14, v28, 0x6

    and-int/lit16 v15, v14, 0x380

    const/high16 v17, 0x180000

    or-int v15, v15, v17

    and-int/lit16 v14, v14, 0x1c00

    or-int/2addr v14, v15

    const/16 v15, 0x32

    move-object/from16 p1, v1

    move-object/from16 p2, v11

    move-wide/from16 p3, v36

    move-wide/from16 p5, v38

    move-object/from16 p7, v12

    const/4 v1, 0x0

    move/from16 p8, v1

    move-object/from16 p9, v0

    move-object/from16 p10, v2

    move/from16 p11, v14

    move/from16 p12, v15

    .line 47
    invoke-static/range {p1 .. p12}, Landroidx/compose/material/SurfaceKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLe8/p;Landroidx/compose/runtime/Composer;II)V

    move v15, v8

    move v8, v10

    move/from16 v10, v18

    move/from16 v17, v20

    move-object/from16 v18, v21

    move/from16 v19, v22

    move-wide/from16 v22, v23

    move-wide/from16 v20, v26

    move-wide/from16 v11, v29

    move-wide/from16 v24, v34

    move-wide/from16 v26, v36

    move-wide/from16 v28, v38

    move-object/from16 v43, v9

    move-object v9, v3

    move-object/from16 v3, v43

    .line 48
    :goto_47
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v14

    if-nez v14, :cond_63

    goto :goto_48

    :cond_63
    new-instance v2, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$2;

    move-object v0, v2

    move-object/from16 v1, p0

    move-object/from16 v41, v2

    move-object v2, v13

    move-object/from16 v42, v14

    move-wide/from16 v13, v31

    move-object/from16 v30, p29

    move/from16 v31, p31

    move/from16 v32, p32

    move/from16 v33, p33

    move/from16 v34, p34

    invoke-direct/range {v0 .. v34}, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$2;-><init>(Le8/q;Landroidx/compose/ui/Modifier;Landroidx/compose/material/BottomSheetScaffoldState;Le8/p;Le8/q;Le8/p;IZLandroidx/compose/ui/graphics/Shape;FJJFLe8/q;ZLandroidx/compose/ui/graphics/Shape;FJJJJJLe8/q;IIII)V

    move-object/from16 v1, v41

    move-object/from16 v0, v42

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    :goto_48
    return-void
.end method

.method private static final b(Le8/p;Le8/q;Le8/q;Le8/p;Le8/p;FILandroidx/compose/runtime/State;Landroidx/compose/material/BottomSheetState;Landroidx/compose/runtime/Composer;I)V
    .locals 18
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
            "Le8/q<",
            "-",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Le8/q<",
            "-",
            "Ljava/lang/Integer;",
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
            ">;FI",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/material/BottomSheetState;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v11, p0

    .line 3
    .line 4
    move-object/from16 v12, p1

    .line 5
    .line 6
    move-object/from16 v13, p2

    .line 7
    .line 8
    move-object/from16 v14, p3

    .line 9
    .line 10
    move-object/from16 v15, p4

    .line 11
    .line 12
    move-object/from16 v10, p7

    .line 13
    .line 14
    move-object/from16 v9, p8

    .line 15
    .line 16
    move/from16 v8, p10

    .line 17
    .line 18
    .line 19
    const v0, 0x1dc93504

    .line 20
    .line 21
    move-object/from16 v1, p9

    .line 22
    .line 23
    .line 24
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 25
    move-result-object v7

    .line 26
    .line 27
    and-int/lit8 v0, v8, 0xe

    .line 28
    const/4 v1, 0x2

    .line 29
    const/4 v2, 0x4

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    .line 34
    invoke-interface {v7, v11}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 35
    move-result v0

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    move v0, v2

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move v0, v1

    .line 41
    :goto_0
    or-int/2addr v0, v8

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    move v0, v8

    .line 44
    .line 45
    :goto_1
    and-int/lit8 v3, v8, 0x70

    .line 46
    .line 47
    if-nez v3, :cond_3

    .line 48
    .line 49
    .line 50
    invoke-interface {v7, v12}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 51
    move-result v3

    .line 52
    .line 53
    if-eqz v3, :cond_2

    .line 54
    .line 55
    const/16 v3, 0x20

    .line 56
    goto :goto_2

    .line 57
    .line 58
    :cond_2
    const/16 v3, 0x10

    .line 59
    :goto_2
    or-int/2addr v0, v3

    .line 60
    .line 61
    :cond_3
    and-int/lit16 v3, v8, 0x380

    .line 62
    .line 63
    if-nez v3, :cond_5

    .line 64
    .line 65
    .line 66
    invoke-interface {v7, v13}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 67
    move-result v3

    .line 68
    .line 69
    if-eqz v3, :cond_4

    .line 70
    .line 71
    const/16 v3, 0x100

    .line 72
    goto :goto_3

    .line 73
    .line 74
    :cond_4
    const/16 v3, 0x80

    .line 75
    :goto_3
    or-int/2addr v0, v3

    .line 76
    .line 77
    :cond_5
    and-int/lit16 v3, v8, 0x1c00

    .line 78
    .line 79
    if-nez v3, :cond_7

    .line 80
    .line 81
    .line 82
    invoke-interface {v7, v14}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 83
    move-result v3

    .line 84
    .line 85
    if-eqz v3, :cond_6

    .line 86
    .line 87
    const/16 v3, 0x800

    .line 88
    goto :goto_4

    .line 89
    .line 90
    :cond_6
    const/16 v3, 0x400

    .line 91
    :goto_4
    or-int/2addr v0, v3

    .line 92
    .line 93
    .line 94
    :cond_7
    const v3, 0xe000

    .line 95
    and-int/2addr v3, v8

    .line 96
    .line 97
    if-nez v3, :cond_9

    .line 98
    .line 99
    .line 100
    invoke-interface {v7, v15}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 101
    move-result v3

    .line 102
    .line 103
    if-eqz v3, :cond_8

    .line 104
    .line 105
    const/16 v3, 0x4000

    .line 106
    goto :goto_5

    .line 107
    .line 108
    :cond_8
    const/16 v3, 0x2000

    .line 109
    :goto_5
    or-int/2addr v0, v3

    .line 110
    .line 111
    :cond_9
    const/high16 v3, 0x70000

    .line 112
    and-int/2addr v3, v8

    .line 113
    .line 114
    move/from16 v6, p5

    .line 115
    .line 116
    if-nez v3, :cond_b

    .line 117
    .line 118
    .line 119
    invoke-interface {v7, v6}, Landroidx/compose/runtime/Composer;->n(F)Z

    .line 120
    move-result v3

    .line 121
    .line 122
    if-eqz v3, :cond_a

    .line 123
    .line 124
    const/high16 v3, 0x20000

    .line 125
    goto :goto_6

    .line 126
    .line 127
    :cond_a
    const/high16 v3, 0x10000

    .line 128
    :goto_6
    or-int/2addr v0, v3

    .line 129
    .line 130
    :cond_b
    const/high16 v3, 0x380000

    .line 131
    and-int/2addr v3, v8

    .line 132
    .line 133
    move/from16 v5, p6

    .line 134
    .line 135
    if-nez v3, :cond_d

    .line 136
    .line 137
    .line 138
    invoke-interface {v7, v5}, Landroidx/compose/runtime/Composer;->p(I)Z

    .line 139
    move-result v3

    .line 140
    .line 141
    if-eqz v3, :cond_c

    .line 142
    .line 143
    const/high16 v3, 0x100000

    .line 144
    goto :goto_7

    .line 145
    .line 146
    :cond_c
    const/high16 v3, 0x80000

    .line 147
    :goto_7
    or-int/2addr v0, v3

    .line 148
    .line 149
    :cond_d
    const/high16 v3, 0x1c00000

    .line 150
    and-int/2addr v3, v8

    .line 151
    .line 152
    if-nez v3, :cond_f

    .line 153
    .line 154
    .line 155
    invoke-interface {v7, v10}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 156
    move-result v3

    .line 157
    .line 158
    if-eqz v3, :cond_e

    .line 159
    .line 160
    const/high16 v3, 0x800000

    .line 161
    goto :goto_8

    .line 162
    .line 163
    :cond_e
    const/high16 v3, 0x400000

    .line 164
    :goto_8
    or-int/2addr v0, v3

    .line 165
    .line 166
    :cond_f
    const/high16 v3, 0xe000000

    .line 167
    and-int/2addr v3, v8

    .line 168
    .line 169
    if-nez v3, :cond_11

    .line 170
    .line 171
    .line 172
    invoke-interface {v7, v9}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 173
    move-result v3

    .line 174
    .line 175
    if-eqz v3, :cond_10

    .line 176
    .line 177
    const/high16 v3, 0x4000000

    .line 178
    goto :goto_9

    .line 179
    .line 180
    :cond_10
    const/high16 v3, 0x2000000

    .line 181
    :goto_9
    or-int/2addr v0, v3

    .line 182
    .line 183
    :cond_11
    move/from16 v16, v0

    .line 184
    .line 185
    .line 186
    const v0, 0xb6db6db

    .line 187
    .line 188
    and-int v0, v16, v0

    .line 189
    .line 190
    .line 191
    const v3, 0x2492492

    .line 192
    .line 193
    if-ne v0, v3, :cond_13

    .line 194
    .line 195
    .line 196
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->b()Z

    .line 197
    move-result v0

    .line 198
    .line 199
    if-nez v0, :cond_12

    .line 200
    goto :goto_a

    .line 201
    .line 202
    .line 203
    :cond_12
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->g()V

    .line 204
    move-object v12, v7

    .line 205
    .line 206
    goto/16 :goto_e

    .line 207
    .line 208
    :cond_13
    :goto_a
    const/16 v0, 0x9

    .line 209
    .line 210
    new-array v3, v0, [Ljava/lang/Object;

    .line 211
    const/4 v4, 0x0

    .line 212
    .line 213
    aput-object v13, v3, v4

    .line 214
    const/4 v0, 0x1

    .line 215
    .line 216
    aput-object v10, v3, v0

    .line 217
    .line 218
    aput-object v11, v3, v1

    .line 219
    const/4 v1, 0x3

    .line 220
    .line 221
    aput-object v12, v3, v1

    .line 222
    .line 223
    .line 224
    invoke-static/range {p5 .. p5}, Landroidx/compose/ui/unit/Dp;->c(F)Landroidx/compose/ui/unit/Dp;

    .line 225
    move-result-object v1

    .line 226
    .line 227
    aput-object v1, v3, v2

    .line 228
    const/4 v1, 0x5

    .line 229
    .line 230
    aput-object v14, v3, v1

    .line 231
    const/4 v1, 0x6

    .line 232
    .line 233
    .line 234
    invoke-static/range {p6 .. p6}, Landroidx/compose/material/FabPosition;->c(I)Landroidx/compose/material/FabPosition;

    .line 235
    move-result-object v2

    .line 236
    .line 237
    aput-object v2, v3, v1

    .line 238
    const/4 v1, 0x7

    .line 239
    .line 240
    aput-object v15, v3, v1

    .line 241
    .line 242
    const/16 v1, 0x8

    .line 243
    .line 244
    aput-object v9, v3, v1

    .line 245
    .line 246
    .line 247
    const v1, -0x21de6e89

    .line 248
    .line 249
    .line 250
    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 251
    move v2, v4

    .line 252
    .line 253
    move/from16 v17, v2

    .line 254
    .line 255
    const/16 v1, 0x9

    .line 256
    .line 257
    :goto_b
    if-ge v2, v1, :cond_14

    .line 258
    .line 259
    aget-object v0, v3, v2

    .line 260
    .line 261
    .line 262
    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 263
    move-result v0

    .line 264
    .line 265
    or-int v17, v17, v0

    .line 266
    .line 267
    add-int/lit8 v2, v2, 0x1

    .line 268
    const/4 v0, 0x1

    .line 269
    goto :goto_b

    .line 270
    .line 271
    .line 272
    :cond_14
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 273
    move-result-object v0

    .line 274
    .line 275
    if-nez v17, :cond_16

    .line 276
    .line 277
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 281
    move-result-object v1

    .line 282
    .line 283
    if-ne v0, v1, :cond_15

    .line 284
    goto :goto_c

    .line 285
    :cond_15
    move-object v12, v7

    .line 286
    goto :goto_d

    .line 287
    .line 288
    :cond_16
    :goto_c
    new-instance v3, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1;

    .line 289
    const/4 v2, 0x1

    .line 290
    move-object v0, v3

    .line 291
    .line 292
    move-object/from16 v1, p7

    .line 293
    move v11, v2

    .line 294
    .line 295
    move-object/from16 v2, p0

    .line 296
    move-object v11, v3

    .line 297
    .line 298
    move-object/from16 v3, p3

    .line 299
    move v12, v4

    .line 300
    .line 301
    move/from16 v4, p6

    .line 302
    .line 303
    move/from16 v5, p5

    .line 304
    .line 305
    move-object/from16 v6, p4

    .line 306
    move-object v12, v7

    .line 307
    .line 308
    move-object/from16 v7, p8

    .line 309
    .line 310
    move-object/from16 v8, p2

    .line 311
    .line 312
    move/from16 v9, v16

    .line 313
    .line 314
    move-object/from16 v10, p1

    .line 315
    .line 316
    .line 317
    invoke-direct/range {v0 .. v10}, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1;-><init>(Landroidx/compose/runtime/State;Le8/p;Le8/p;IFLe8/p;Landroidx/compose/material/BottomSheetState;Le8/q;ILe8/q;)V

    .line 318
    .line 319
    .line 320
    invoke-interface {v12, v11}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 321
    move-object v0, v11

    .line 322
    .line 323
    .line 324
    :goto_d
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->Q()V

    .line 325
    .line 326
    check-cast v0, Le8/p;

    .line 327
    const/4 v1, 0x0

    .line 328
    const/4 v2, 0x0

    .line 329
    const/4 v3, 0x1

    .line 330
    .line 331
    .line 332
    invoke-static {v1, v0, v12, v2, v3}, Landroidx/compose/ui/layout/SubcomposeLayoutKt;->a(Landroidx/compose/ui/Modifier;Le8/p;Landroidx/compose/runtime/Composer;II)V

    .line 333
    .line 334
    .line 335
    :goto_e
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 336
    move-result-object v11

    .line 337
    .line 338
    if-nez v11, :cond_17

    .line 339
    goto :goto_f

    .line 340
    .line 341
    :cond_17
    new-instance v12, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$2;

    .line 342
    move-object v0, v12

    .line 343
    .line 344
    move-object/from16 v1, p0

    .line 345
    .line 346
    move-object/from16 v2, p1

    .line 347
    .line 348
    move-object/from16 v3, p2

    .line 349
    .line 350
    move-object/from16 v4, p3

    .line 351
    .line 352
    move-object/from16 v5, p4

    .line 353
    .line 354
    move/from16 v6, p5

    .line 355
    .line 356
    move/from16 v7, p6

    .line 357
    .line 358
    move-object/from16 v8, p7

    .line 359
    .line 360
    move-object/from16 v9, p8

    .line 361
    .line 362
    move/from16 v10, p10

    .line 363
    .line 364
    .line 365
    invoke-direct/range {v0 .. v10}, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$2;-><init>(Le8/p;Le8/q;Le8/q;Le8/p;Le8/p;FILandroidx/compose/runtime/State;Landroidx/compose/material/BottomSheetState;I)V

    .line 366
    .line 367
    .line 368
    invoke-interface {v11, v12}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 369
    :goto_f
    return-void
.end method

.method private static final c(Landroidx/compose/runtime/MutableState;)Ljava/lang/Float;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Float;",
            ">;)",
            "Ljava/lang/Float;"
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
    check-cast p0, Ljava/lang/Float;

    .line 7
    return-object p0
.end method

.method private static final d(Landroidx/compose/runtime/MutableState;Ljava/lang/Float;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/lang/Float;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 4
    return-void
.end method

.method public static final synthetic e(Le8/p;Le8/q;Le8/q;Le8/p;Le8/p;FILandroidx/compose/runtime/State;Landroidx/compose/material/BottomSheetState;Landroidx/compose/runtime/Composer;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static/range {p0 .. p10}, Landroidx/compose/material/BottomSheetScaffoldKt;->b(Le8/p;Le8/q;Le8/q;Le8/p;Le8/p;FILandroidx/compose/runtime/State;Landroidx/compose/material/BottomSheetState;Landroidx/compose/runtime/Composer;I)V

    .line 4
    return-void
.end method

.method public static final synthetic f(Landroidx/compose/runtime/MutableState;)Ljava/lang/Float;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/material/BottomSheetScaffoldKt;->c(Landroidx/compose/runtime/MutableState;)Ljava/lang/Float;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic g(Landroidx/compose/runtime/MutableState;Ljava/lang/Float;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/material/BottomSheetScaffoldKt;->d(Landroidx/compose/runtime/MutableState;Ljava/lang/Float;)V

    .line 4
    return-void
.end method

.method public static final synthetic h()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/BottomSheetScaffoldKt;->FabSpacing:F

    return v0
.end method

.method public static final i(Landroidx/compose/material/DrawerState;Landroidx/compose/material/BottomSheetState;Landroidx/compose/material/SnackbarHostState;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/BottomSheetScaffoldState;
    .locals 6
    .param p0    # Landroidx/compose/material/DrawerState;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/material/BottomSheetState;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/material/SnackbarHostState;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/material/ExperimentalMaterialApi;
    .end annotation

    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    const p4, -0x50a54a50

    .line 4
    .line 5
    .line 6
    invoke-interface {p3, p4}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 7
    .line 8
    and-int/lit8 p4, p5, 0x1

    .line 9
    .line 10
    if-eqz p4, :cond_0

    .line 11
    .line 12
    sget-object p0, Landroidx/compose/material/DrawerValue;->Closed:Landroidx/compose/material/DrawerValue;

    .line 13
    const/4 p4, 0x0

    .line 14
    const/4 v0, 0x6

    .line 15
    const/4 v1, 0x2

    .line 16
    .line 17
    .line 18
    invoke-static {p0, p4, p3, v0, v1}, Landroidx/compose/material/DrawerKt;->o(Landroidx/compose/material/DrawerValue;Le8/l;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/DrawerState;

    .line 19
    move-result-object p0

    .line 20
    .line 21
    :cond_0
    and-int/lit8 p4, p5, 0x2

    .line 22
    .line 23
    if-eqz p4, :cond_1

    .line 24
    .line 25
    sget-object v0, Landroidx/compose/material/BottomSheetValue;->Collapsed:Landroidx/compose/material/BottomSheetValue;

    .line 26
    const/4 v1, 0x0

    .line 27
    const/4 v2, 0x0

    .line 28
    const/4 v4, 0x6

    .line 29
    const/4 v5, 0x6

    .line 30
    move-object v3, p3

    .line 31
    .line 32
    .line 33
    invoke-static/range {v0 .. v5}, Landroidx/compose/material/BottomSheetScaffoldKt;->j(Landroidx/compose/material/BottomSheetValue;Landroidx/compose/animation/core/AnimationSpec;Le8/l;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/BottomSheetState;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    :cond_1
    and-int/lit8 p4, p5, 0x4

    .line 37
    .line 38
    if-eqz p4, :cond_3

    .line 39
    .line 40
    .line 41
    const p2, -0x1d58f75c

    .line 42
    .line 43
    .line 44
    invoke-interface {p3, p2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 45
    .line 46
    .line 47
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 48
    move-result-object p2

    .line 49
    .line 50
    sget-object p4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p4}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 54
    move-result-object p4

    .line 55
    .line 56
    if-ne p2, p4, :cond_2

    .line 57
    .line 58
    new-instance p2, Landroidx/compose/material/SnackbarHostState;

    .line 59
    .line 60
    .line 61
    invoke-direct {p2}, Landroidx/compose/material/SnackbarHostState;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-interface {p3, p2}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    :cond_2
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 68
    .line 69
    check-cast p2, Landroidx/compose/material/SnackbarHostState;

    .line 70
    .line 71
    .line 72
    :cond_3
    const p4, 0x607fb4c4

    .line 73
    .line 74
    .line 75
    invoke-interface {p3, p4}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 76
    .line 77
    .line 78
    invoke-interface {p3, p0}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 79
    move-result p4

    .line 80
    .line 81
    .line 82
    invoke-interface {p3, p1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 83
    move-result p5

    .line 84
    or-int/2addr p4, p5

    .line 85
    .line 86
    .line 87
    invoke-interface {p3, p2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 88
    move-result p5

    .line 89
    or-int/2addr p4, p5

    .line 90
    .line 91
    .line 92
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 93
    move-result-object p5

    .line 94
    .line 95
    if-nez p4, :cond_4

    .line 96
    .line 97
    sget-object p4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p4}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 101
    move-result-object p4

    .line 102
    .line 103
    if-ne p5, p4, :cond_5

    .line 104
    .line 105
    :cond_4
    new-instance p5, Landroidx/compose/material/BottomSheetScaffoldState;

    .line 106
    .line 107
    .line 108
    invoke-direct {p5, p0, p1, p2}, Landroidx/compose/material/BottomSheetScaffoldState;-><init>(Landroidx/compose/material/DrawerState;Landroidx/compose/material/BottomSheetState;Landroidx/compose/material/SnackbarHostState;)V

    .line 109
    .line 110
    .line 111
    invoke-interface {p3, p5}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    :cond_5
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 115
    .line 116
    check-cast p5, Landroidx/compose/material/BottomSheetScaffoldState;

    .line 117
    .line 118
    .line 119
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 120
    return-object p5
.end method

.method public static final j(Landroidx/compose/material/BottomSheetValue;Landroidx/compose/animation/core/AnimationSpec;Le8/l;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/BottomSheetState;
    .locals 7
    .param p0    # Landroidx/compose/material/BottomSheetValue;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/animation/core/AnimationSpec;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/material/ExperimentalMaterialApi;
    .end annotation

    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/BottomSheetValue;",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Le8/l<",
            "-",
            "Landroidx/compose/material/BottomSheetValue;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/material/BottomSheetState;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string p4, "initialValue"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p4}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const p4, 0x6bc63b00

    .line 9
    .line 10
    .line 11
    invoke-interface {p3, p4}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 12
    .line 13
    and-int/lit8 p4, p5, 0x2

    .line 14
    .line 15
    if-eqz p4, :cond_0

    .line 16
    .line 17
    sget-object p1, Landroidx/compose/material/SwipeableDefaults;->INSTANCE:Landroidx/compose/material/SwipeableDefaults;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroidx/compose/material/SwipeableDefaults;->a()Landroidx/compose/animation/core/SpringSpec;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    :cond_0
    and-int/lit8 p4, p5, 0x4

    .line 24
    .line 25
    if-eqz p4, :cond_1

    .line 26
    .line 27
    sget-object p2, Landroidx/compose/material/BottomSheetScaffoldKt$rememberBottomSheetState$1;->INSTANCE:Landroidx/compose/material/BottomSheetScaffoldKt$rememberBottomSheetState$1;

    .line 28
    :cond_1
    const/4 p4, 0x1

    .line 29
    .line 30
    new-array v0, p4, [Ljava/lang/Object;

    .line 31
    const/4 p4, 0x0

    .line 32
    .line 33
    aput-object p1, v0, p4

    .line 34
    .line 35
    sget-object p4, Landroidx/compose/material/BottomSheetState;->Companion:Landroidx/compose/material/BottomSheetState$Companion;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p4, p1, p2}, Landroidx/compose/material/BottomSheetState$Companion;->a(Landroidx/compose/animation/core/AnimationSpec;Le8/l;)Landroidx/compose/runtime/saveable/Saver;

    .line 39
    move-result-object v1

    .line 40
    const/4 v2, 0x0

    .line 41
    .line 42
    new-instance v3, Landroidx/compose/material/BottomSheetScaffoldKt$rememberBottomSheetState$2;

    .line 43
    .line 44
    .line 45
    invoke-direct {v3, p0, p1, p2}, Landroidx/compose/material/BottomSheetScaffoldKt$rememberBottomSheetState$2;-><init>(Landroidx/compose/material/BottomSheetValue;Landroidx/compose/animation/core/AnimationSpec;Le8/l;)V

    .line 46
    .line 47
    const/16 v5, 0x48

    .line 48
    const/4 v6, 0x4

    .line 49
    move-object v4, p3

    .line 50
    .line 51
    .line 52
    invoke-static/range {v0 .. v6}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->b([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Ljava/lang/String;Le8/a;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    .line 53
    move-result-object p0

    .line 54
    .line 55
    check-cast p0, Landroidx/compose/material/BottomSheetState;

    .line 56
    .line 57
    .line 58
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 59
    return-object p0
.end method
