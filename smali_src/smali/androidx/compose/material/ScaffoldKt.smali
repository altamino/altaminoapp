.class public final Landroidx/compose/material/ScaffoldKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScaffold.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Scaffold.kt\nandroidx/compose/material/ScaffoldKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,373:1\n25#2:374\n25#2:381\n83#2,3:388\n1057#3,6:375\n1057#3,6:382\n1057#3,6:391\n155#4:397\n*S KotlinDebug\n*F\n+ 1 Scaffold.kt\nandroidx/compose/material/ScaffoldKt\n*L\n65#1:374\n66#1:381\n237#1:388,3\n65#1:375,6\n66#1:382,6\n237#1:391,6\n370#1:397\n*E\n"
.end annotation


# static fields
.field private static final FabSpacing:F

.field private static final LocalFabPlacement:Landroidx/compose/runtime/ProvidableCompositionLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Landroidx/compose/material/FabPlacement;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/material/ScaffoldKt$LocalFabPlacement$1;->INSTANCE:Landroidx/compose/material/ScaffoldKt$LocalFabPlacement$1;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->e(Le8/a;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sput-object v0, Landroidx/compose/material/ScaffoldKt;->LocalFabPlacement:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 9
    .line 10
    const/16 v0, 0x10

    .line 11
    int-to-float v0, v0

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 15
    move-result v0

    .line 16
    .line 17
    sput v0, Landroidx/compose/material/ScaffoldKt;->FabSpacing:F

    .line 18
    return-void
.end method

.method public static final a(Landroidx/compose/ui/Modifier;Landroidx/compose/material/ScaffoldState;Le8/p;Le8/p;Le8/q;Le8/p;IZLe8/q;ZLandroidx/compose/ui/graphics/Shape;FJJJJJLe8/q;Landroidx/compose/runtime/Composer;III)V
    .locals 40
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/material/ScaffoldState;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Le8/p;
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
    .param p8    # Le8/q;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Landroidx/compose/ui/graphics/Shape;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p22    # Le8/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p23    # Landroidx/compose/runtime/Composer;
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
            "Landroidx/compose/material/ScaffoldState;",
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
            "III)V"
        }
    .end annotation

    move-object/from16 v15, p22

    move/from16 v13, p24

    move/from16 v14, p25

    move/from16 v12, p26

    const-string v0, "content"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x3dd6e159

    move-object/from16 v1, p23

    .line 1
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    move-result-object v0

    and-int/lit8 v1, v12, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v4, v13, 0x6

    move v5, v4

    move-object/from16 v4, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v4, v13, 0xe

    if-nez v4, :cond_2

    move-object/from16 v4, p0

    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x4

    goto :goto_0

    :cond_1
    const/4 v5, 0x2

    :goto_0
    or-int/2addr v5, v13

    goto :goto_1

    :cond_2
    move-object/from16 v4, p0

    move v5, v13

    :goto_1
    and-int/lit8 v6, v13, 0x70

    if-nez v6, :cond_5

    and-int/lit8 v6, v12, 0x2

    if-nez v6, :cond_3

    move-object/from16 v6, p1

    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/16 v9, 0x20

    goto :goto_2

    :cond_3
    move-object/from16 v6, p1

    :cond_4
    const/16 v9, 0x10

    :goto_2
    or-int/2addr v5, v9

    goto :goto_3

    :cond_5
    move-object/from16 v6, p1

    :goto_3
    and-int/lit8 v9, v12, 0x4

    if-eqz v9, :cond_7

    or-int/lit16 v5, v5, 0x180

    :cond_6
    move-object/from16 v2, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v2, v13, 0x380

    if-nez v2, :cond_6

    move-object/from16 v2, p2

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    const/16 v16, 0x100

    goto :goto_4

    :cond_8
    const/16 v16, 0x80

    :goto_4
    or-int v5, v5, v16

    :goto_5
    and-int/lit8 v16, v12, 0x8

    const/16 v17, 0x800

    const/16 v18, 0x400

    if-eqz v16, :cond_a

    or-int/lit16 v5, v5, 0xc00

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

    move/from16 v20, v17

    goto :goto_6

    :cond_b
    move/from16 v20, v18

    :goto_6
    or-int v5, v5, v20

    :goto_7
    and-int/lit8 v20, v12, 0x10

    const v21, 0xe000

    const/16 v22, 0x2000

    const/16 v23, 0x4000

    if-eqz v20, :cond_c

    or-int/lit16 v5, v5, 0x6000

    move-object/from16 v7, p4

    goto :goto_9

    :cond_c
    and-int v24, v13, v21

    move-object/from16 v7, p4

    if-nez v24, :cond_e

    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_d

    move/from16 v25, v23

    goto :goto_8

    :cond_d
    move/from16 v25, v22

    :goto_8
    or-int v5, v5, v25

    :cond_e
    :goto_9
    and-int/lit8 v25, v12, 0x20

    const/high16 v26, 0x20000

    const/high16 v27, 0x70000

    const/high16 v28, 0x10000

    if-eqz v25, :cond_f

    const/high16 v29, 0x30000

    or-int v5, v5, v29

    move-object/from16 v8, p5

    goto :goto_b

    :cond_f
    and-int v29, v13, v27

    move-object/from16 v8, p5

    if-nez v29, :cond_11

    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_10

    move/from16 v30, v26

    goto :goto_a

    :cond_10
    move/from16 v30, v28

    :goto_a
    or-int v5, v5, v30

    :cond_11
    :goto_b
    and-int/lit8 v30, v12, 0x40

    const/high16 v31, 0x380000

    if-eqz v30, :cond_12

    const/high16 v32, 0x180000

    or-int v5, v5, v32

    move/from16 v10, p6

    goto :goto_d

    :cond_12
    and-int v32, v13, v31

    move/from16 v10, p6

    if-nez v32, :cond_14

    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->p(I)Z

    move-result v33

    if-eqz v33, :cond_13

    const/high16 v33, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v33, 0x80000

    :goto_c
    or-int v5, v5, v33

    :cond_14
    :goto_d
    and-int/lit16 v11, v12, 0x80

    const/high16 v34, 0x1c00000

    if-eqz v11, :cond_15

    const/high16 v35, 0xc00000

    or-int v5, v5, v35

    move/from16 v2, p7

    goto :goto_f

    :cond_15
    and-int v35, v13, v34

    move/from16 v2, p7

    if-nez v35, :cond_17

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->m(Z)Z

    move-result v35

    if-eqz v35, :cond_16

    const/high16 v35, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v35, 0x400000

    :goto_e
    or-int v5, v5, v35

    :cond_17
    :goto_f
    and-int/lit16 v2, v12, 0x100

    if-eqz v2, :cond_18

    const/high16 v35, 0x6000000

    or-int v5, v5, v35

    move-object/from16 v3, p8

    goto :goto_11

    :cond_18
    const/high16 v35, 0xe000000

    and-int v35, v13, v35

    move-object/from16 v3, p8

    if-nez v35, :cond_1a

    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_19

    const/high16 v35, 0x4000000

    goto :goto_10

    :cond_19
    const/high16 v35, 0x2000000

    :goto_10
    or-int v5, v5, v35

    :cond_1a
    :goto_11
    and-int/lit16 v3, v12, 0x200

    if-eqz v3, :cond_1b

    const/high16 v35, 0x30000000

    or-int v5, v5, v35

    move/from16 v4, p9

    goto :goto_13

    :cond_1b
    const/high16 v35, 0x70000000

    and-int v35, v13, v35

    move/from16 v4, p9

    if-nez v35, :cond_1d

    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->m(Z)Z

    move-result v35

    if-eqz v35, :cond_1c

    const/high16 v35, 0x20000000

    goto :goto_12

    :cond_1c
    const/high16 v35, 0x10000000

    :goto_12
    or-int v5, v5, v35

    :cond_1d
    :goto_13
    and-int/lit8 v35, v14, 0xe

    if-nez v35, :cond_20

    and-int/lit16 v4, v12, 0x400

    if-nez v4, :cond_1e

    move-object/from16 v4, p10

    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_1f

    const/16 v19, 0x4

    goto :goto_14

    :cond_1e
    move-object/from16 v4, p10

    :cond_1f
    const/16 v19, 0x2

    :goto_14
    or-int v19, v14, v19

    goto :goto_15

    :cond_20
    move-object/from16 v4, p10

    move/from16 v19, v14

    :goto_15
    and-int/lit16 v4, v12, 0x800

    if-eqz v4, :cond_21

    or-int/lit8 v19, v19, 0x30

    move/from16 v6, p11

    goto :goto_17

    :cond_21
    and-int/lit8 v35, v14, 0x70

    move/from16 v6, p11

    if-nez v35, :cond_23

    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->n(F)Z

    move-result v35

    if-eqz v35, :cond_22

    const/16 v24, 0x20

    goto :goto_16

    :cond_22
    const/16 v24, 0x10

    :goto_16
    or-int v19, v19, v24

    :cond_23
    :goto_17
    and-int/lit16 v6, v14, 0x380

    if-nez v6, :cond_26

    and-int/lit16 v6, v12, 0x1000

    if-nez v6, :cond_24

    move-wide/from16 v6, p12

    invoke-interface {v0, v6, v7}, Landroidx/compose/runtime/Composer;->q(J)Z

    move-result v24

    if-eqz v24, :cond_25

    const/16 v32, 0x100

    goto :goto_18

    :cond_24
    move-wide/from16 v6, p12

    :cond_25
    const/16 v32, 0x80

    :goto_18
    or-int v19, v19, v32

    goto :goto_19

    :cond_26
    move-wide/from16 v6, p12

    :goto_19
    and-int/lit16 v6, v14, 0x1c00

    if-nez v6, :cond_29

    and-int/lit16 v6, v12, 0x2000

    if-nez v6, :cond_27

    move-wide/from16 v6, p14

    invoke-interface {v0, v6, v7}, Landroidx/compose/runtime/Composer;->q(J)Z

    move-result v24

    if-eqz v24, :cond_28

    goto :goto_1a

    :cond_27
    move-wide/from16 v6, p14

    :cond_28
    move/from16 v17, v18

    :goto_1a
    or-int v19, v19, v17

    goto :goto_1b

    :cond_29
    move-wide/from16 v6, p14

    :goto_1b
    and-int v17, v14, v21

    if-nez v17, :cond_2c

    and-int/lit16 v6, v12, 0x4000

    if-nez v6, :cond_2a

    move-wide/from16 v6, p16

    invoke-interface {v0, v6, v7}, Landroidx/compose/runtime/Composer;->q(J)Z

    move-result v17

    if-eqz v17, :cond_2b

    move/from16 v22, v23

    goto :goto_1c

    :cond_2a
    move-wide/from16 v6, p16

    :cond_2b
    :goto_1c
    or-int v19, v19, v22

    goto :goto_1d

    :cond_2c
    move-wide/from16 v6, p16

    :goto_1d
    and-int v17, v14, v27

    if-nez v17, :cond_2e

    const v17, 0x8000

    and-int v17, v12, v17

    move-wide/from16 v6, p18

    if-nez v17, :cond_2d

    invoke-interface {v0, v6, v7}, Landroidx/compose/runtime/Composer;->q(J)Z

    move-result v17

    if-eqz v17, :cond_2d

    move/from16 v17, v26

    goto :goto_1e

    :cond_2d
    move/from16 v17, v28

    :goto_1e
    or-int v19, v19, v17

    goto :goto_1f

    :cond_2e
    move-wide/from16 v6, p18

    :goto_1f
    and-int v17, v14, v31

    if-nez v17, :cond_30

    and-int v17, v12, v28

    move-wide/from16 v6, p20

    if-nez v17, :cond_2f

    invoke-interface {v0, v6, v7}, Landroidx/compose/runtime/Composer;->q(J)Z

    move-result v17

    if-eqz v17, :cond_2f

    const/high16 v17, 0x100000

    goto :goto_20

    :cond_2f
    const/high16 v17, 0x80000

    :goto_20
    or-int v19, v19, v17

    goto :goto_21

    :cond_30
    move-wide/from16 v6, p20

    :goto_21
    and-int v17, v12, v26

    if-eqz v17, :cond_31

    const/high16 v17, 0xc00000

    :goto_22
    or-int v19, v19, v17

    goto :goto_23

    :cond_31
    and-int v17, v14, v34

    if-nez v17, :cond_33

    invoke-interface {v0, v15}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_32

    const/high16 v17, 0x800000

    goto :goto_22

    :cond_32
    const/high16 v17, 0x400000

    goto :goto_22

    :cond_33
    :goto_23
    const v17, 0x5b6db6db

    and-int v6, v5, v17

    const v7, 0x12492492

    if-ne v6, v7, :cond_35

    const v6, 0x16db6db

    and-int v6, v19, v6

    const v7, 0x492492

    if-ne v6, v7, :cond_35

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->b()Z

    move-result v6

    if-nez v6, :cond_34

    goto :goto_24

    .line 2
    :cond_34
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->g()V

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v9, p8

    move-object/from16 v11, p10

    move/from16 v12, p11

    move-wide/from16 v18, p12

    move-wide/from16 v22, p14

    move-wide/from16 v24, p16

    move-wide/from16 v28, p18

    move-wide/from16 v32, p20

    move-object v6, v8

    move v7, v10

    move/from16 v8, p7

    move/from16 v10, p9

    goto/16 :goto_39

    .line 3
    :cond_35
    :goto_24
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->J()V

    and-int/lit8 v6, v13, 0x1

    if-eqz v6, :cond_3e

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->h()Z

    move-result v6

    if-eqz v6, :cond_36

    goto :goto_25

    .line 4
    :cond_36
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->g()V

    and-int/lit8 v1, v12, 0x2

    if-eqz v1, :cond_37

    and-int/lit8 v5, v5, -0x71

    :cond_37
    and-int/lit16 v1, v12, 0x400

    if-eqz v1, :cond_38

    and-int/lit8 v19, v19, -0xf

    :cond_38
    move/from16 v1, v19

    and-int/lit16 v2, v12, 0x1000

    if-eqz v2, :cond_39

    and-int/lit16 v1, v1, -0x381

    :cond_39
    and-int/lit16 v2, v12, 0x2000

    if-eqz v2, :cond_3a

    and-int/lit16 v1, v1, -0x1c01

    :cond_3a
    and-int/lit16 v2, v12, 0x4000

    if-eqz v2, :cond_3b

    const v2, -0xe001

    and-int/2addr v1, v2

    :cond_3b
    const v2, 0x8000

    and-int/2addr v2, v12

    if-eqz v2, :cond_3c

    const v2, -0x70001

    and-int/2addr v1, v2

    :cond_3c
    and-int v2, v12, v28

    if-eqz v2, :cond_3d

    const v2, -0x380001

    and-int/2addr v1, v2

    :cond_3d
    move-object/from16 v2, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v11, p7

    move-object/from16 v3, p8

    move/from16 v4, p9

    move/from16 v16, p11

    move-wide/from16 v18, p12

    move-wide/from16 v22, p14

    move-wide/from16 v24, p16

    move-wide/from16 v28, p18

    move-wide/from16 v32, p20

    move/from16 v17, v1

    move/from16 v20, v5

    move-object v9, v8

    move-object/from16 v1, p0

    move-object/from16 v8, p4

    move-object/from16 v5, p10

    goto/16 :goto_37

    :cond_3e
    :goto_25
    if-eqz v1, :cond_3f

    .line 5
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_26

    :cond_3f
    move-object/from16 v1, p0

    :goto_26
    and-int/lit8 v6, v12, 0x2

    if-eqz v6, :cond_40

    const/4 v6, 0x0

    const/4 v7, 0x3

    move-object/from16 p0, v1

    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 6
    invoke-static {v1, v8, v0, v6, v7}, Landroidx/compose/material/ScaffoldKt;->f(Landroidx/compose/material/DrawerState;Landroidx/compose/material/SnackbarHostState;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/ScaffoldState;

    move-result-object v1

    and-int/lit8 v5, v5, -0x71

    goto :goto_27

    :cond_40
    move-object/from16 p0, v1

    move-object/from16 v1, p1

    :goto_27
    if-eqz v9, :cond_41

    sget-object v6, Landroidx/compose/material/ComposableSingletons$ScaffoldKt;->INSTANCE:Landroidx/compose/material/ComposableSingletons$ScaffoldKt;

    invoke-virtual {v6}, Landroidx/compose/material/ComposableSingletons$ScaffoldKt;->a()Le8/p;

    move-result-object v6

    goto :goto_28

    :cond_41
    move-object/from16 v6, p2

    :goto_28
    if-eqz v16, :cond_42

    sget-object v7, Landroidx/compose/material/ComposableSingletons$ScaffoldKt;->INSTANCE:Landroidx/compose/material/ComposableSingletons$ScaffoldKt;

    invoke-virtual {v7}, Landroidx/compose/material/ComposableSingletons$ScaffoldKt;->b()Le8/p;

    move-result-object v7

    goto :goto_29

    :cond_42
    move-object/from16 v7, p3

    :goto_29
    if-eqz v20, :cond_43

    sget-object v8, Landroidx/compose/material/ComposableSingletons$ScaffoldKt;->INSTANCE:Landroidx/compose/material/ComposableSingletons$ScaffoldKt;

    invoke-virtual {v8}, Landroidx/compose/material/ComposableSingletons$ScaffoldKt;->c()Le8/q;

    move-result-object v8

    goto :goto_2a

    :cond_43
    move-object/from16 v8, p4

    :goto_2a
    if-eqz v25, :cond_44

    sget-object v9, Landroidx/compose/material/ComposableSingletons$ScaffoldKt;->INSTANCE:Landroidx/compose/material/ComposableSingletons$ScaffoldKt;

    invoke-virtual {v9}, Landroidx/compose/material/ComposableSingletons$ScaffoldKt;->d()Le8/p;

    move-result-object v9

    goto :goto_2b

    :cond_44
    move-object/from16 v9, p5

    :goto_2b
    if-eqz v30, :cond_45

    .line 7
    sget-object v10, Landroidx/compose/material/FabPosition;->Companion:Landroidx/compose/material/FabPosition$Companion;

    invoke-virtual {v10}, Landroidx/compose/material/FabPosition$Companion;->b()I

    move-result v10

    :cond_45
    if-eqz v11, :cond_46

    const/4 v11, 0x0

    goto :goto_2c

    :cond_46
    move/from16 v11, p7

    :goto_2c
    if-eqz v2, :cond_47

    const/4 v2, 0x0

    goto :goto_2d

    :cond_47
    move-object/from16 v2, p8

    :goto_2d
    if-eqz v3, :cond_48

    const/4 v3, 0x1

    goto :goto_2e

    :cond_48
    move/from16 v3, p9

    :goto_2e
    move-object/from16 p1, v1

    and-int/lit16 v1, v12, 0x400

    move-object/from16 p2, v2

    const/4 v2, 0x6

    if-eqz v1, :cond_49

    .line 8
    sget-object v1, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v1, v0, v2}, Landroidx/compose/material/MaterialTheme;->b(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Shapes;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/material/Shapes;->a()Landroidx/compose/foundation/shape/CornerBasedShape;

    move-result-object v1

    and-int/lit8 v19, v19, -0xf

    :goto_2f
    move/from16 v36, v19

    goto :goto_30

    :cond_49
    move-object/from16 v1, p10

    goto :goto_2f

    :goto_30
    if-eqz v4, :cond_4a

    .line 9
    sget-object v4, Landroidx/compose/material/DrawerDefaults;->INSTANCE:Landroidx/compose/material/DrawerDefaults;

    invoke-virtual {v4}, Landroidx/compose/material/DrawerDefaults;->a()F

    move-result v4

    goto :goto_31

    :cond_4a
    move/from16 v4, p11

    :goto_31
    and-int/lit16 v2, v12, 0x1000

    if-eqz v2, :cond_4b

    .line 10
    sget-object v2, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    move-object/from16 p4, v1

    const/4 v1, 0x6

    invoke-virtual {v2, v0, v1}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/material/Colors;->n()J

    move-result-wide v1

    move-wide/from16 p5, v1

    move/from16 v1, v36

    and-int/lit16 v1, v1, -0x381

    move/from16 v39, v3

    move v3, v1

    move-wide/from16 v1, p5

    move/from16 p5, v39

    goto :goto_32

    :cond_4b
    move-object/from16 p4, v1

    move/from16 v1, v36

    move/from16 p5, v3

    move v3, v1

    move-wide/from16 v1, p12

    :goto_32
    move/from16 p6, v4

    and-int/lit16 v4, v12, 0x2000

    if-eqz v4, :cond_4c

    shr-int/lit8 v4, v3, 0x6

    and-int/lit8 v4, v4, 0xe

    .line 11
    invoke-static {v1, v2, v0, v4}, Landroidx/compose/material/ColorsKt;->b(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v16

    and-int/lit16 v3, v3, -0x1c01

    goto :goto_33

    :cond_4c
    move-wide/from16 v16, p14

    :goto_33
    and-int/lit16 v4, v12, 0x4000

    if-eqz v4, :cond_4d

    .line 12
    sget-object v4, Landroidx/compose/material/DrawerDefaults;->INSTANCE:Landroidx/compose/material/DrawerDefaults;

    move-wide/from16 v18, v1

    const/4 v1, 0x6

    invoke-virtual {v4, v0, v1}, Landroidx/compose/material/DrawerDefaults;->b(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v22

    const v2, -0xe001

    and-int/2addr v3, v2

    goto :goto_34

    :cond_4d
    move-wide/from16 v18, v1

    const/4 v1, 0x6

    move-wide/from16 v22, p16

    :goto_34
    const v2, 0x8000

    and-int/2addr v2, v12

    if-eqz v2, :cond_4e

    .line 13
    sget-object v2, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v2, v0, v1}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/material/Colors;->c()J

    move-result-wide v1

    const v4, -0x70001

    and-int/2addr v3, v4

    goto :goto_35

    :cond_4e
    move-wide/from16 v1, p18

    :goto_35
    and-int v4, v12, v28

    if-eqz v4, :cond_4f

    shr-int/lit8 v4, v3, 0xf

    and-int/lit8 v4, v4, 0xe

    .line 14
    invoke-static {v1, v2, v0, v4}, Landroidx/compose/material/ColorsKt;->b(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v24

    const v4, -0x380001

    and-int/2addr v3, v4

    move/from16 v4, p5

    move-wide/from16 v28, v1

    move/from16 v20, v5

    move-wide/from16 v32, v24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p4

    move-wide/from16 v24, v22

    :goto_36
    move-wide/from16 v22, v16

    move/from16 v16, p6

    move/from16 v17, v3

    move-object/from16 v3, p2

    goto :goto_37

    :cond_4f
    move/from16 v4, p5

    move-wide/from16 v32, p20

    move-wide/from16 v28, v1

    move/from16 v20, v5

    move-wide/from16 v24, v22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p4

    goto :goto_36

    :goto_37
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->A()V

    .line 15
    new-instance v12, Landroidx/compose/material/ScaffoldKt$Scaffold$child$1;

    move-object/from16 p0, v12

    move-wide/from16 p1, v28

    move-wide/from16 p3, v32

    move/from16 p5, v17

    move/from16 p6, v11

    move/from16 p7, v10

    move-object/from16 p8, v6

    move-object/from16 p9, p22

    move-object/from16 p10, v9

    move-object/from16 p11, v7

    move/from16 p12, v20

    move-object/from16 p13, v8

    move-object/from16 p14, v2

    invoke-direct/range {p0 .. p14}, Landroidx/compose/material/ScaffoldKt$Scaffold$child$1;-><init>(JJIZILe8/p;Le8/q;Le8/p;Le8/p;ILe8/q;Landroidx/compose/material/ScaffoldState;)V

    move-object/from16 p16, v6

    const v6, 0x6caeea6c

    move-object/from16 p17, v7

    const/4 v7, 0x1

    invoke-static {v0, v6, v7, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v6

    if-eqz v3, :cond_50

    const v12, -0x3c6e18aa

    .line 16
    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 17
    invoke-virtual {v2}, Landroidx/compose/material/ScaffoldState;->a()Landroidx/compose/material/DrawerState;

    move-result-object v12

    .line 18
    new-instance v7, Landroidx/compose/material/ScaffoldKt$Scaffold$1;

    invoke-direct {v7, v6}, Landroidx/compose/material/ScaffoldKt$Scaffold$1;-><init>(Le8/q;)V

    const v6, 0x602bdb4

    move-object/from16 p18, v2

    const/4 v2, 0x1

    invoke-static {v0, v6, v2, v7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    shr-int/lit8 v6, v20, 0x18

    and-int/lit8 v6, v6, 0xe

    const/high16 v7, 0x30000000

    or-int/2addr v6, v7

    shl-int/lit8 v7, v20, 0x3

    and-int/lit8 v7, v7, 0x70

    or-int/2addr v6, v7

    shr-int/lit8 v7, v20, 0x12

    and-int/lit16 v7, v7, 0x1c00

    or-int/2addr v6, v7

    shl-int/lit8 v7, v17, 0xc

    and-int v17, v7, v21

    or-int v6, v6, v17

    and-int v17, v7, v27

    or-int v6, v6, v17

    and-int v17, v7, v31

    or-int v6, v6, v17

    and-int v17, v7, v34

    or-int v6, v6, v17

    const/high16 v17, 0xe000000

    and-int v7, v7, v17

    or-int/2addr v6, v7

    const/4 v7, 0x0

    move-object/from16 p0, v3

    move-object/from16 p1, v1

    move-object/from16 p2, v12

    move/from16 p3, v4

    move-object/from16 p4, v5

    move/from16 p5, v16

    move-wide/from16 p6, v18

    move-wide/from16 p8, v22

    move-wide/from16 p10, v24

    move-object/from16 p12, v2

    move-object/from16 p13, v0

    move/from16 p14, v6

    move/from16 p15, v7

    .line 19
    invoke-static/range {p0 .. p15}, Landroidx/compose/material/DrawerKt;->d(Le8/q;Landroidx/compose/ui/Modifier;Landroidx/compose/material/DrawerState;ZLandroidx/compose/ui/graphics/Shape;FJJJLe8/p;Landroidx/compose/runtime/Composer;II)V

    .line 20
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    goto :goto_38

    :cond_50
    move-object/from16 p18, v2

    const v2, -0x3c6e16ad

    .line 21
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    and-int/lit8 v2, v20, 0xe

    or-int/lit8 v2, v2, 0x30

    .line 22
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v6, v1, v0, v2}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    :goto_38
    move-object/from16 v2, p18

    move-object v6, v9

    move v7, v10

    move/from16 v12, v16

    move-object v9, v3

    move v10, v4

    move-object/from16 v3, p16

    move-object/from16 v4, p17

    move/from16 v39, v11

    move-object v11, v5

    move-object v5, v8

    move/from16 v8, v39

    .line 24
    :goto_39
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-nez v0, :cond_51

    goto :goto_3a

    :cond_51
    new-instance v15, Landroidx/compose/material/ScaffoldKt$Scaffold$2;

    move-object/from16 v37, v0

    move-object v0, v15

    move-wide/from16 v13, v18

    move-object/from16 v38, v15

    move-wide/from16 v15, v22

    move-wide/from16 v17, v24

    move-wide/from16 v19, v28

    move-wide/from16 v21, v32

    move-object/from16 v23, p22

    move/from16 v24, p24

    move/from16 v25, p25

    move/from16 v26, p26

    invoke-direct/range {v0 .. v26}, Landroidx/compose/material/ScaffoldKt$Scaffold$2;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/material/ScaffoldState;Le8/p;Le8/p;Le8/q;Le8/p;IZLe8/q;ZLandroidx/compose/ui/graphics/Shape;FJJJJJLe8/q;III)V

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    :goto_3a
    return-void
.end method

.method private static final b(ZILe8/p;Le8/q;Le8/p;Le8/p;Le8/p;Landroidx/compose/runtime/Composer;I)V
    .locals 17
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/ui/UiComposable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
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
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v9, p2

    .line 3
    .line 4
    move-object/from16 v10, p3

    .line 5
    .line 6
    move-object/from16 v11, p4

    .line 7
    .line 8
    move-object/from16 v12, p5

    .line 9
    .line 10
    move-object/from16 v13, p6

    .line 11
    .line 12
    move/from16 v14, p8

    .line 13
    .line 14
    .line 15
    const v0, -0x538b35d7

    .line 16
    .line 17
    move-object/from16 v1, p7

    .line 18
    .line 19
    .line 20
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 21
    move-result-object v15

    .line 22
    .line 23
    and-int/lit8 v0, v14, 0xe

    .line 24
    const/4 v1, 0x2

    .line 25
    const/4 v2, 0x4

    .line 26
    .line 27
    move/from16 v8, p0

    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-interface {v15, v8}, Landroidx/compose/runtime/Composer;->m(Z)Z

    .line 33
    move-result v0

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    move v0, v2

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move v0, v1

    .line 39
    :goto_0
    or-int/2addr v0, v14

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move v0, v14

    .line 42
    .line 43
    :goto_1
    and-int/lit8 v3, v14, 0x70

    .line 44
    .line 45
    move/from16 v7, p1

    .line 46
    .line 47
    if-nez v3, :cond_3

    .line 48
    .line 49
    .line 50
    invoke-interface {v15, v7}, Landroidx/compose/runtime/Composer;->p(I)Z

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
    and-int/lit16 v3, v14, 0x380

    .line 62
    .line 63
    if-nez v3, :cond_5

    .line 64
    .line 65
    .line 66
    invoke-interface {v15, v9}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

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
    and-int/lit16 v3, v14, 0x1c00

    .line 78
    .line 79
    if-nez v3, :cond_7

    .line 80
    .line 81
    .line 82
    invoke-interface {v15, v10}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

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
    and-int/2addr v3, v14

    .line 96
    .line 97
    if-nez v3, :cond_9

    .line 98
    .line 99
    .line 100
    invoke-interface {v15, v11}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

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
    and-int/2addr v3, v14

    .line 113
    .line 114
    if-nez v3, :cond_b

    .line 115
    .line 116
    .line 117
    invoke-interface {v15, v12}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 118
    move-result v3

    .line 119
    .line 120
    if-eqz v3, :cond_a

    .line 121
    .line 122
    const/high16 v3, 0x20000

    .line 123
    goto :goto_6

    .line 124
    .line 125
    :cond_a
    const/high16 v3, 0x10000

    .line 126
    :goto_6
    or-int/2addr v0, v3

    .line 127
    .line 128
    :cond_b
    const/high16 v3, 0x380000

    .line 129
    and-int/2addr v3, v14

    .line 130
    .line 131
    if-nez v3, :cond_d

    .line 132
    .line 133
    .line 134
    invoke-interface {v15, v13}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 135
    move-result v3

    .line 136
    .line 137
    if-eqz v3, :cond_c

    .line 138
    .line 139
    const/high16 v3, 0x100000

    .line 140
    goto :goto_7

    .line 141
    .line 142
    :cond_c
    const/high16 v3, 0x80000

    .line 143
    :goto_7
    or-int/2addr v0, v3

    .line 144
    .line 145
    :cond_d
    move/from16 v16, v0

    .line 146
    .line 147
    .line 148
    const v0, 0x2db6db

    .line 149
    .line 150
    and-int v0, v16, v0

    .line 151
    .line 152
    .line 153
    const v3, 0x92492

    .line 154
    .line 155
    if-ne v0, v3, :cond_f

    .line 156
    .line 157
    .line 158
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->b()Z

    .line 159
    move-result v0

    .line 160
    .line 161
    if-nez v0, :cond_e

    .line 162
    goto :goto_8

    .line 163
    .line 164
    .line 165
    :cond_e
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->g()V

    .line 166
    .line 167
    goto/16 :goto_c

    .line 168
    :cond_f
    :goto_8
    const/4 v0, 0x7

    .line 169
    .line 170
    new-array v3, v0, [Ljava/lang/Object;

    .line 171
    const/4 v6, 0x0

    .line 172
    .line 173
    aput-object v9, v3, v6

    .line 174
    const/4 v5, 0x1

    .line 175
    .line 176
    aput-object v11, v3, v5

    .line 177
    .line 178
    aput-object v12, v3, v1

    .line 179
    const/4 v1, 0x3

    .line 180
    .line 181
    .line 182
    invoke-static/range {p1 .. p1}, Landroidx/compose/material/FabPosition;->c(I)Landroidx/compose/material/FabPosition;

    .line 183
    move-result-object v4

    .line 184
    .line 185
    aput-object v4, v3, v1

    .line 186
    .line 187
    .line 188
    invoke-static/range {p0 .. p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 189
    move-result-object v1

    .line 190
    .line 191
    aput-object v1, v3, v2

    .line 192
    const/4 v1, 0x5

    .line 193
    .line 194
    aput-object v13, v3, v1

    .line 195
    const/4 v1, 0x6

    .line 196
    .line 197
    aput-object v10, v3, v1

    .line 198
    .line 199
    .line 200
    const v1, -0x21de6e89

    .line 201
    .line 202
    .line 203
    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 204
    move v1, v6

    .line 205
    move v2, v1

    .line 206
    .line 207
    :goto_9
    if-ge v1, v0, :cond_10

    .line 208
    .line 209
    aget-object v4, v3, v1

    .line 210
    .line 211
    .line 212
    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 213
    move-result v4

    .line 214
    or-int/2addr v2, v4

    .line 215
    .line 216
    add-int/lit8 v1, v1, 0x1

    .line 217
    goto :goto_9

    .line 218
    .line 219
    .line 220
    :cond_10
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 221
    move-result-object v0

    .line 222
    .line 223
    if-nez v2, :cond_12

    .line 224
    .line 225
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 229
    move-result-object v1

    .line 230
    .line 231
    if-ne v0, v1, :cond_11

    .line 232
    goto :goto_a

    .line 233
    :cond_11
    move v10, v5

    .line 234
    move v11, v6

    .line 235
    goto :goto_b

    .line 236
    .line 237
    :cond_12
    :goto_a
    new-instance v4, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1;

    .line 238
    move-object v0, v4

    .line 239
    .line 240
    move-object/from16 v1, p2

    .line 241
    .line 242
    move-object/from16 v2, p4

    .line 243
    .line 244
    move-object/from16 v3, p5

    .line 245
    move-object v9, v4

    .line 246
    .line 247
    move/from16 v4, p1

    .line 248
    move v10, v5

    .line 249
    .line 250
    move/from16 v5, p0

    .line 251
    move v11, v6

    .line 252
    .line 253
    move-object/from16 v6, p6

    .line 254
    .line 255
    move/from16 v7, v16

    .line 256
    .line 257
    move-object/from16 v8, p3

    .line 258
    .line 259
    .line 260
    invoke-direct/range {v0 .. v8}, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1;-><init>(Le8/p;Le8/p;Le8/p;IZLe8/p;ILe8/q;)V

    .line 261
    .line 262
    .line 263
    invoke-interface {v15, v9}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 264
    move-object v0, v9

    .line 265
    .line 266
    .line 267
    :goto_b
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->Q()V

    .line 268
    .line 269
    check-cast v0, Le8/p;

    .line 270
    const/4 v1, 0x0

    .line 271
    .line 272
    .line 273
    invoke-static {v1, v0, v15, v11, v10}, Landroidx/compose/ui/layout/SubcomposeLayoutKt;->a(Landroidx/compose/ui/Modifier;Le8/p;Landroidx/compose/runtime/Composer;II)V

    .line 274
    .line 275
    .line 276
    :goto_c
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 277
    move-result-object v9

    .line 278
    .line 279
    if-nez v9, :cond_13

    .line 280
    goto :goto_d

    .line 281
    .line 282
    :cond_13
    new-instance v10, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$2;

    .line 283
    move-object v0, v10

    .line 284
    .line 285
    move/from16 v1, p0

    .line 286
    .line 287
    move/from16 v2, p1

    .line 288
    .line 289
    move-object/from16 v3, p2

    .line 290
    .line 291
    move-object/from16 v4, p3

    .line 292
    .line 293
    move-object/from16 v5, p4

    .line 294
    .line 295
    move-object/from16 v6, p5

    .line 296
    .line 297
    move-object/from16 v7, p6

    .line 298
    .line 299
    move/from16 v8, p8

    .line 300
    .line 301
    .line 302
    invoke-direct/range {v0 .. v8}, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$2;-><init>(ZILe8/p;Le8/q;Le8/p;Le8/p;Le8/p;I)V

    .line 303
    .line 304
    .line 305
    invoke-interface {v9, v10}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 306
    :goto_d
    return-void
.end method

.method public static final synthetic c(ZILe8/p;Le8/q;Le8/p;Le8/p;Le8/p;Landroidx/compose/runtime/Composer;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static/range {p0 .. p8}, Landroidx/compose/material/ScaffoldKt;->b(ZILe8/p;Le8/q;Le8/p;Le8/p;Le8/p;Landroidx/compose/runtime/Composer;I)V

    .line 4
    return-void
.end method

.method public static final synthetic d()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/ScaffoldKt;->FabSpacing:F

    return v0
.end method

.method public static final e()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Landroidx/compose/material/FabPlacement;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/material/ScaffoldKt;->LocalFabPlacement:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-object v0
.end method

.method public static final f(Landroidx/compose/material/DrawerState;Landroidx/compose/material/SnackbarHostState;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/ScaffoldState;
    .locals 2
    .param p0    # Landroidx/compose/material/DrawerState;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/material/SnackbarHostState;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    const p3, 0x5d8ed5c5

    .line 4
    .line 5
    .line 6
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 7
    .line 8
    and-int/lit8 p3, p4, 0x1

    .line 9
    const/4 v0, 0x2

    .line 10
    .line 11
    if-eqz p3, :cond_0

    .line 12
    .line 13
    sget-object p0, Landroidx/compose/material/DrawerValue;->Closed:Landroidx/compose/material/DrawerValue;

    .line 14
    const/4 p3, 0x0

    .line 15
    const/4 v1, 0x6

    .line 16
    .line 17
    .line 18
    invoke-static {p0, p3, p2, v1, v0}, Landroidx/compose/material/DrawerKt;->o(Landroidx/compose/material/DrawerValue;Le8/l;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/DrawerState;

    .line 19
    move-result-object p0

    .line 20
    .line 21
    :cond_0
    and-int/lit8 p3, p4, 0x2

    .line 22
    .line 23
    .line 24
    const p4, -0x1d58f75c

    .line 25
    .line 26
    if-eqz p3, :cond_2

    .line 27
    .line 28
    .line 29
    invoke-interface {p2, p4}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 30
    .line 31
    .line 32
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    sget-object p3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p3}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 39
    move-result-object p3

    .line 40
    .line 41
    if-ne p1, p3, :cond_1

    .line 42
    .line 43
    new-instance p1, Landroidx/compose/material/SnackbarHostState;

    .line 44
    .line 45
    .line 46
    invoke-direct {p1}, Landroidx/compose/material/SnackbarHostState;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 53
    .line 54
    check-cast p1, Landroidx/compose/material/SnackbarHostState;

    .line 55
    .line 56
    .line 57
    :cond_2
    invoke-interface {p2, p4}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 58
    .line 59
    .line 60
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 61
    move-result-object p3

    .line 62
    .line 63
    sget-object p4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p4}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 67
    move-result-object p4

    .line 68
    .line 69
    if-ne p3, p4, :cond_3

    .line 70
    .line 71
    new-instance p3, Landroidx/compose/material/ScaffoldState;

    .line 72
    .line 73
    .line 74
    invoke-direct {p3, p0, p1}, Landroidx/compose/material/ScaffoldState;-><init>(Landroidx/compose/material/DrawerState;Landroidx/compose/material/SnackbarHostState;)V

    .line 75
    .line 76
    .line 77
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    :cond_3
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 81
    .line 82
    check-cast p3, Landroidx/compose/material/ScaffoldState;

    .line 83
    .line 84
    .line 85
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 86
    return-object p3
.end method
