.class public final Landroidx/compose/material/SurfaceKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSurface.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Surface.kt\nandroidx/compose/material/SurfaceKt\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 4 Dp.kt\nandroidx/compose/ui/unit/Dp\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 6 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,644:1\n155#2:645\n155#2:648\n155#2:658\n155#2:668\n155#2:678\n76#3:646\n76#3:656\n76#3:666\n76#3:676\n76#3:686\n76#3:687\n52#4:647\n52#4:657\n52#4:667\n52#4:677\n52#4:688\n25#5:649\n25#5:659\n25#5:669\n25#5:679\n1057#6,6:650\n1057#6,6:660\n1057#6,6:670\n1057#6,6:680\n*S KotlinDebug\n*F\n+ 1 Surface.kt\nandroidx/compose/material/SurfaceKt\n*L\n110#1:645\n217#1:648\n333#1:658\n450#1:668\n579#1:678\n113#1:646\n221#1:656\n337#1:666\n454#1:676\n581#1:686\n587#1:687\n113#1:647\n221#1:657\n337#1:667\n454#1:677\n587#1:688\n218#1:649\n334#1:659\n451#1:669\n580#1:679\n218#1:650,6\n334#1:660,6\n451#1:670,6\n580#1:680,6\n*E\n"
.end annotation


# direct methods
.method public static final a(Le8/a;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Le8/p;Landroidx/compose/runtime/Composer;III)V
    .locals 37
    .param p0    # Le8/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/graphics/Shape;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Landroidx/compose/foundation/BorderStroke;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Landroidx/compose/foundation/Indication;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Landroidx/compose/ui/semantics/Role;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p14    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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
            "Le8/a<",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/graphics/Shape;",
            "JJ",
            "Landroidx/compose/foundation/BorderStroke;",
            "F",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/foundation/Indication;",
            "Z",
            "Ljava/lang/String;",
            "Landroidx/compose/ui/semantics/Role;",
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

    move-object/from16 v15, p0

    move-object/from16 v14, p14

    move/from16 v13, p16

    move/from16 v12, p17

    move/from16 v11, p18

    const-string v0, "onClick"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x5e874d70

    move-object/from16 v1, p15

    .line 1
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    move-result-object v10

    and-int/lit8 v0, v11, 0x1

    if-eqz v0, :cond_0

    or-int/lit8 v0, v13, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v0, v13, 0xe

    if-nez v0, :cond_2

    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v13

    goto :goto_1

    :cond_2
    move v0, v13

    :goto_1
    and-int/lit8 v3, v11, 0x2

    if-eqz v3, :cond_4

    or-int/lit8 v0, v0, 0x30

    :cond_3
    move-object/from16 v6, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v6, v13, 0x70

    if-nez v6, :cond_3

    move-object/from16 v6, p1

    invoke-interface {v10, v6}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/16 v7, 0x20

    goto :goto_2

    :cond_5
    const/16 v7, 0x10

    :goto_2
    or-int/2addr v0, v7

    :goto_3
    and-int/lit8 v7, v11, 0x4

    if-eqz v7, :cond_7

    or-int/lit16 v0, v0, 0x180

    :cond_6
    move-object/from16 v1, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v1, v13, 0x380

    if-nez v1, :cond_6

    move-object/from16 v1, p2

    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    const/16 v16, 0x100

    goto :goto_4

    :cond_8
    const/16 v16, 0x80

    :goto_4
    or-int v0, v0, v16

    :goto_5
    and-int/lit16 v4, v13, 0x1c00

    if-nez v4, :cond_a

    and-int/lit8 v4, v11, 0x8

    move-wide/from16 v5, p3

    if-nez v4, :cond_9

    invoke-interface {v10, v5, v6}, Landroidx/compose/runtime/Composer;->q(J)Z

    move-result v17

    if-eqz v17, :cond_9

    const/16 v17, 0x800

    goto :goto_6

    :cond_9
    const/16 v17, 0x400

    :goto_6
    or-int v0, v0, v17

    goto :goto_7

    :cond_a
    move-wide/from16 v5, p3

    :goto_7
    const v17, 0xe000

    and-int v17, v13, v17

    if-nez v17, :cond_c

    and-int/lit8 v17, v11, 0x10

    move-wide/from16 v4, p5

    if-nez v17, :cond_b

    invoke-interface {v10, v4, v5}, Landroidx/compose/runtime/Composer;->q(J)Z

    move-result v6

    if-eqz v6, :cond_b

    const/16 v6, 0x4000

    goto :goto_8

    :cond_b
    const/16 v6, 0x2000

    :goto_8
    or-int/2addr v0, v6

    goto :goto_9

    :cond_c
    move-wide/from16 v4, p5

    :goto_9
    and-int/lit8 v6, v11, 0x20

    if-eqz v6, :cond_d

    const/high16 v18, 0x30000

    or-int v0, v0, v18

    move-object/from16 v8, p7

    goto :goto_b

    :cond_d
    const/high16 v18, 0x70000

    and-int v18, v13, v18

    move-object/from16 v8, p7

    if-nez v18, :cond_f

    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e

    const/high16 v19, 0x20000

    goto :goto_a

    :cond_e
    const/high16 v19, 0x10000

    :goto_a
    or-int v0, v0, v19

    :cond_f
    :goto_b
    and-int/lit8 v19, v11, 0x40

    if-eqz v19, :cond_10

    const/high16 v20, 0x180000

    or-int v0, v0, v20

    move/from16 v9, p8

    goto :goto_d

    :cond_10
    const/high16 v20, 0x380000

    and-int v20, v13, v20

    move/from16 v9, p8

    if-nez v20, :cond_12

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->n(F)Z

    move-result v21

    if-eqz v21, :cond_11

    const/high16 v21, 0x100000

    goto :goto_c

    :cond_11
    const/high16 v21, 0x80000

    :goto_c
    or-int v0, v0, v21

    :cond_12
    :goto_d
    and-int/lit16 v2, v11, 0x80

    if-eqz v2, :cond_13

    const/high16 v22, 0xc00000

    or-int v0, v0, v22

    move-object/from16 v1, p9

    goto :goto_f

    :cond_13
    const/high16 v22, 0x1c00000

    and-int v22, v13, v22

    move-object/from16 v1, p9

    if-nez v22, :cond_15

    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_14

    const/high16 v22, 0x800000

    goto :goto_e

    :cond_14
    const/high16 v22, 0x400000

    :goto_e
    or-int v0, v0, v22

    :cond_15
    :goto_f
    const/high16 v22, 0xe000000

    and-int v22, v13, v22

    if-nez v22, :cond_18

    and-int/lit16 v1, v11, 0x100

    if-nez v1, :cond_16

    move-object/from16 v1, p10

    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_17

    const/high16 v22, 0x4000000

    goto :goto_10

    :cond_16
    move-object/from16 v1, p10

    :cond_17
    const/high16 v22, 0x2000000

    :goto_10
    or-int v0, v0, v22

    goto :goto_11

    :cond_18
    move-object/from16 v1, p10

    :goto_11
    and-int/lit16 v1, v11, 0x200

    if-eqz v1, :cond_19

    const/high16 v22, 0x30000000

    or-int v0, v0, v22

    move/from16 v4, p11

    goto :goto_13

    :cond_19
    const/high16 v22, 0x70000000

    and-int v22, v13, v22

    move/from16 v4, p11

    if-nez v22, :cond_1b

    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->m(Z)Z

    move-result v5

    if-eqz v5, :cond_1a

    const/high16 v5, 0x20000000

    goto :goto_12

    :cond_1a
    const/high16 v5, 0x10000000

    :goto_12
    or-int/2addr v0, v5

    :cond_1b
    :goto_13
    and-int/lit16 v5, v11, 0x400

    if-eqz v5, :cond_1c

    or-int/lit8 v22, v12, 0x6

    move-object/from16 v4, p12

    goto :goto_15

    :cond_1c
    and-int/lit8 v22, v12, 0xe

    move-object/from16 v4, p12

    if-nez v22, :cond_1e

    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1d

    const/16 v22, 0x4

    goto :goto_14

    :cond_1d
    const/16 v22, 0x2

    :goto_14
    or-int v22, v12, v22

    goto :goto_15

    :cond_1e
    move/from16 v22, v12

    :goto_15
    and-int/lit16 v4, v11, 0x800

    if-eqz v4, :cond_20

    or-int/lit8 v22, v22, 0x30

    :cond_1f
    :goto_16
    move/from16 v8, v22

    goto :goto_18

    :cond_20
    and-int/lit8 v23, v12, 0x70

    move-object/from16 v8, p13

    if-nez v23, :cond_1f

    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_21

    const/16 v16, 0x20

    goto :goto_17

    :cond_21
    const/16 v16, 0x10

    :goto_17
    or-int v22, v22, v16

    goto :goto_16

    :goto_18
    and-int/lit16 v9, v11, 0x1000

    if-eqz v9, :cond_23

    or-int/lit16 v8, v8, 0x180

    :cond_22
    :goto_19
    move v9, v8

    goto :goto_1b

    :cond_23
    and-int/lit16 v9, v12, 0x380

    if-nez v9, :cond_22

    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_24

    const/16 v18, 0x100

    goto :goto_1a

    :cond_24
    const/16 v18, 0x80

    :goto_1a
    or-int v8, v8, v18

    goto :goto_19

    :goto_1b
    const v8, 0x5b6db6db

    and-int/2addr v8, v0

    const v12, 0x12492492

    if-ne v8, v12, :cond_26

    and-int/lit16 v8, v9, 0x2db

    const/16 v12, 0x92

    if-ne v8, v12, :cond_26

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->b()Z

    move-result v8

    if-nez v8, :cond_25

    goto :goto_1c

    .line 2
    :cond_25
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->g()V

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object v1, v10

    move-object/from16 v10, p9

    goto/16 :goto_2a

    .line 3
    :cond_26
    :goto_1c
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->J()V

    and-int/lit8 v8, v13, 0x1

    const v16, -0xe000001

    const v17, -0xe001

    if-eqz v8, :cond_2b

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->h()Z

    move-result v8

    if-eqz v8, :cond_27

    goto :goto_1d

    .line 4
    :cond_27
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->g()V

    and-int/lit8 v1, v11, 0x8

    if-eqz v1, :cond_28

    and-int/lit16 v0, v0, -0x1c01

    :cond_28
    and-int/lit8 v1, v11, 0x10

    if-eqz v1, :cond_29

    and-int v0, v0, v17

    :cond_29
    and-int/lit16 v1, v11, 0x100

    if-eqz v1, :cond_2a

    and-int v0, v0, v16

    :cond_2a
    move-object/from16 v17, p1

    move-object/from16 v19, p2

    move-wide/from16 v22, p3

    move-wide/from16 v24, p5

    move-object/from16 v20, p7

    move/from16 v26, p8

    move-object/from16 v27, p9

    move-object/from16 v28, p10

    move/from16 v29, p11

    move-object/from16 v30, p12

    move-object/from16 v31, p13

    move v6, v0

    goto/16 :goto_29

    :cond_2b
    :goto_1d
    if-eqz v3, :cond_2c

    .line 5
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_1e

    :cond_2c
    move-object/from16 v3, p1

    :goto_1e
    if-eqz v7, :cond_2d

    .line 6
    invoke-static {}, Landroidx/compose/ui/graphics/RectangleShapeKt;->a()Landroidx/compose/ui/graphics/Shape;

    move-result-object v7

    goto :goto_1f

    :cond_2d
    move-object/from16 v7, p2

    :goto_1f
    and-int/lit8 v8, v11, 0x8

    if-eqz v8, :cond_2e

    .line 7
    sget-object v8, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    const/4 v12, 0x6

    invoke-virtual {v8, v10, v12}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/material/Colors;->n()J

    move-result-wide v22

    and-int/lit16 v0, v0, -0x1c01

    move-object/from16 p1, v7

    move-wide/from16 v7, v22

    goto :goto_20

    :cond_2e
    move-object/from16 p1, v7

    move-wide/from16 v7, p3

    :goto_20
    and-int/lit8 v12, v11, 0x10

    if-eqz v12, :cond_2f

    shr-int/lit8 v12, v0, 0x9

    and-int/lit8 v12, v12, 0xe

    .line 8
    invoke-static {v7, v8, v10, v12}, Landroidx/compose/material/ColorsKt;->b(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v22

    and-int v0, v0, v17

    goto :goto_21

    :cond_2f
    move-wide/from16 v22, p5

    :goto_21
    if-eqz v6, :cond_30

    const/4 v6, 0x0

    goto :goto_22

    :cond_30
    move-object/from16 v6, p7

    :goto_22
    move-object/from16 v17, v3

    if-eqz v19, :cond_31

    const/4 v12, 0x0

    int-to-float v3, v12

    .line 9
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->f(F)F

    move-result v3

    goto :goto_23

    :cond_31
    move/from16 v3, p8

    :goto_23
    if-eqz v2, :cond_33

    const v2, -0x1d58f75c

    .line 10
    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 11
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    move-result-object v2

    .line 12
    sget-object v12, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v12}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    move-result-object v12

    if-ne v2, v12, :cond_32

    .line 13
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->a()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v2

    .line 14
    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 15
    :cond_32
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->Q()V

    check-cast v2, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    goto :goto_24

    :cond_33
    move-object/from16 v2, p9

    :goto_24
    and-int/lit16 v12, v11, 0x100

    if-eqz v12, :cond_34

    .line 16
    invoke-static {}, Landroidx/compose/foundation/IndicationKt;->a()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v12

    .line 17
    invoke-interface {v10, v12}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/foundation/Indication;

    and-int v0, v0, v16

    goto :goto_25

    :cond_34
    move-object/from16 v12, p10

    :goto_25
    if-eqz v1, :cond_35

    const/4 v1, 0x1

    goto :goto_26

    :cond_35
    move/from16 v1, p11

    :goto_26
    if-eqz v5, :cond_36

    const/4 v5, 0x0

    goto :goto_27

    :cond_36
    move-object/from16 v5, p12

    :goto_27
    move-object/from16 v19, p1

    if-eqz v4, :cond_37

    move/from16 v29, v1

    move-object/from16 v27, v2

    move/from16 v26, v3

    move-object/from16 v30, v5

    move-object/from16 v20, v6

    move-object/from16 v28, v12

    move-wide/from16 v24, v22

    const/16 v31, 0x0

    :goto_28
    move v6, v0

    move-wide/from16 v22, v7

    goto :goto_29

    :cond_37
    move-object/from16 v31, p13

    move/from16 v29, v1

    move-object/from16 v27, v2

    move/from16 v26, v3

    move-object/from16 v30, v5

    move-object/from16 v20, v6

    move-object/from16 v28, v12

    move-wide/from16 v24, v22

    goto :goto_28

    .line 18
    :goto_29
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->A()V

    .line 19
    invoke-static {}, Landroidx/compose/material/ElevationOverlayKt;->c()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    .line 20
    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/unit/Dp;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/Dp;->l()F

    move-result v0

    add-float v0, v0, v26

    .line 21
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    move-result v0

    move v5, v0

    const/4 v1, 0x2

    new-array v12, v1, [Landroidx/compose/runtime/ProvidedValue;

    .line 22
    invoke-static {}, Landroidx/compose/material/ContentColorKt;->a()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v1

    invoke-static/range {v24 .. v25}, Landroidx/compose/ui/graphics/Color;->h(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v12, v2

    .line 23
    invoke-static {}, Landroidx/compose/material/ElevationOverlayKt;->c()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v1

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->c(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v0

    const/16 v16, 0x1

    aput-object v0, v12, v16

    .line 24
    new-instance v8, Landroidx/compose/material/SurfaceKt$Surface$13;

    move-object v0, v8

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    move-wide/from16 v3, v22

    move-object/from16 v7, v20

    move-object/from16 v32, v8

    move/from16 v8, v26

    move/from16 v18, v9

    move-object/from16 v9, v27

    move-object/from16 v33, v10

    move-object/from16 v10, v28

    move/from16 v11, v29

    move-object/from16 v34, v12

    move-object/from16 v12, v30

    move-object/from16 v13, v31

    move-object/from16 v14, p0

    move-object/from16 v15, p14

    move/from16 v16, v18

    invoke-direct/range {v0 .. v16}, Landroidx/compose/material/SurfaceKt$Surface$13;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JFILandroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Le8/a;Le8/p;I)V

    const v0, 0x8eaa230

    move-object/from16 v3, v32

    move-object/from16 v1, v33

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    const/16 v2, 0x38

    move-object/from16 v3, v34

    .line 25
    invoke-static {v3, v0, v1, v2}, Landroidx/compose/runtime/CompositionLocalKt;->b([Landroidx/compose/runtime/ProvidedValue;Le8/p;Landroidx/compose/runtime/Composer;I)V

    move-object/from16 v2, v17

    move-object/from16 v3, v19

    move-object/from16 v8, v20

    move-wide/from16 v4, v22

    move-wide/from16 v6, v24

    move/from16 v9, v26

    move-object/from16 v10, v27

    move-object/from16 v11, v28

    move/from16 v12, v29

    move-object/from16 v13, v30

    move-object/from16 v14, v31

    .line 26
    :goto_2a
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-nez v15, :cond_38

    goto :goto_2b

    :cond_38
    new-instance v1, Landroidx/compose/material/SurfaceKt$Surface$14;

    move-object v0, v1

    move-object/from16 v35, v1

    move-object/from16 v1, p0

    move-object/from16 v36, v15

    move-object/from16 v15, p14

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    invoke-direct/range {v0 .. v18}, Landroidx/compose/material/SurfaceKt$Surface$14;-><init>(Le8/a;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Le8/p;III)V

    move-object/from16 v1, v35

    move-object/from16 v0, v36

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    :goto_2b
    return-void
.end method

.method public static final b(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLe8/p;Landroidx/compose/runtime/Composer;II)V
    .locals 22
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/graphics/Shape;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Landroidx/compose/foundation/BorderStroke;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Le8/p;
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
            "Landroidx/compose/ui/graphics/Shape;",
            "JJ",
            "Landroidx/compose/foundation/BorderStroke;",
            "F",
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
    move-object/from16 v10, p8

    .line 3
    .line 4
    move/from16 v11, p10

    .line 5
    .line 6
    const-string v0, "content"

    .line 7
    .line 8
    .line 9
    invoke-static {v10, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const v0, 0x542c837a

    .line 13
    .line 14
    move-object/from16 v1, p9

    .line 15
    .line 16
    .line 17
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 18
    move-result-object v12

    .line 19
    .line 20
    and-int/lit8 v0, p11, 0x1

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    or-int/lit8 v2, v11, 0x6

    .line 25
    move v3, v2

    .line 26
    .line 27
    move-object/from16 v2, p0

    .line 28
    goto :goto_1

    .line 29
    .line 30
    :cond_0
    and-int/lit8 v2, v11, 0xe

    .line 31
    .line 32
    if-nez v2, :cond_2

    .line 33
    .line 34
    move-object/from16 v2, p0

    .line 35
    .line 36
    .line 37
    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 38
    move-result v3

    .line 39
    .line 40
    if-eqz v3, :cond_1

    .line 41
    const/4 v3, 0x4

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 v3, 0x2

    .line 44
    :goto_0
    or-int/2addr v3, v11

    .line 45
    goto :goto_1

    .line 46
    .line 47
    :cond_2
    move-object/from16 v2, p0

    .line 48
    move v3, v11

    .line 49
    .line 50
    :goto_1
    and-int/lit8 v4, p11, 0x2

    .line 51
    .line 52
    if-eqz v4, :cond_4

    .line 53
    .line 54
    or-int/lit8 v3, v3, 0x30

    .line 55
    .line 56
    :cond_3
    move-object/from16 v5, p1

    .line 57
    goto :goto_3

    .line 58
    .line 59
    :cond_4
    and-int/lit8 v5, v11, 0x70

    .line 60
    .line 61
    if-nez v5, :cond_3

    .line 62
    .line 63
    move-object/from16 v5, p1

    .line 64
    .line 65
    .line 66
    invoke-interface {v12, v5}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 67
    move-result v6

    .line 68
    .line 69
    if-eqz v6, :cond_5

    .line 70
    .line 71
    const/16 v6, 0x20

    .line 72
    goto :goto_2

    .line 73
    .line 74
    :cond_5
    const/16 v6, 0x10

    .line 75
    :goto_2
    or-int/2addr v3, v6

    .line 76
    .line 77
    :goto_3
    and-int/lit16 v6, v11, 0x380

    .line 78
    .line 79
    if-nez v6, :cond_8

    .line 80
    .line 81
    and-int/lit8 v6, p11, 0x4

    .line 82
    .line 83
    if-nez v6, :cond_6

    .line 84
    .line 85
    move-wide/from16 v6, p2

    .line 86
    .line 87
    .line 88
    invoke-interface {v12, v6, v7}, Landroidx/compose/runtime/Composer;->q(J)Z

    .line 89
    move-result v8

    .line 90
    .line 91
    if-eqz v8, :cond_7

    .line 92
    .line 93
    const/16 v8, 0x100

    .line 94
    goto :goto_4

    .line 95
    .line 96
    :cond_6
    move-wide/from16 v6, p2

    .line 97
    .line 98
    :cond_7
    const/16 v8, 0x80

    .line 99
    :goto_4
    or-int/2addr v3, v8

    .line 100
    goto :goto_5

    .line 101
    .line 102
    :cond_8
    move-wide/from16 v6, p2

    .line 103
    .line 104
    :goto_5
    and-int/lit16 v8, v11, 0x1c00

    .line 105
    .line 106
    if-nez v8, :cond_b

    .line 107
    .line 108
    and-int/lit8 v8, p11, 0x8

    .line 109
    .line 110
    if-nez v8, :cond_9

    .line 111
    .line 112
    move-wide/from16 v8, p4

    .line 113
    .line 114
    .line 115
    invoke-interface {v12, v8, v9}, Landroidx/compose/runtime/Composer;->q(J)Z

    .line 116
    move-result v13

    .line 117
    .line 118
    if-eqz v13, :cond_a

    .line 119
    .line 120
    const/16 v13, 0x800

    .line 121
    goto :goto_6

    .line 122
    .line 123
    :cond_9
    move-wide/from16 v8, p4

    .line 124
    .line 125
    :cond_a
    const/16 v13, 0x400

    .line 126
    :goto_6
    or-int/2addr v3, v13

    .line 127
    goto :goto_7

    .line 128
    .line 129
    :cond_b
    move-wide/from16 v8, p4

    .line 130
    .line 131
    :goto_7
    and-int/lit8 v13, p11, 0x10

    .line 132
    .line 133
    if-eqz v13, :cond_d

    .line 134
    .line 135
    or-int/lit16 v3, v3, 0x6000

    .line 136
    .line 137
    :cond_c
    move-object/from16 v14, p6

    .line 138
    goto :goto_9

    .line 139
    .line 140
    .line 141
    :cond_d
    const v14, 0xe000

    .line 142
    and-int/2addr v14, v11

    .line 143
    .line 144
    if-nez v14, :cond_c

    .line 145
    .line 146
    move-object/from16 v14, p6

    .line 147
    .line 148
    .line 149
    invoke-interface {v12, v14}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 150
    move-result v15

    .line 151
    .line 152
    if-eqz v15, :cond_e

    .line 153
    .line 154
    const/16 v15, 0x4000

    .line 155
    goto :goto_8

    .line 156
    .line 157
    :cond_e
    const/16 v15, 0x2000

    .line 158
    :goto_8
    or-int/2addr v3, v15

    .line 159
    .line 160
    :goto_9
    and-int/lit8 v15, p11, 0x20

    .line 161
    .line 162
    if-eqz v15, :cond_f

    .line 163
    .line 164
    const/high16 v16, 0x30000

    .line 165
    .line 166
    or-int v3, v3, v16

    .line 167
    .line 168
    move/from16 v1, p7

    .line 169
    goto :goto_b

    .line 170
    .line 171
    :cond_f
    const/high16 v16, 0x70000

    .line 172
    .line 173
    and-int v16, v11, v16

    .line 174
    .line 175
    move/from16 v1, p7

    .line 176
    .line 177
    if-nez v16, :cond_11

    .line 178
    .line 179
    .line 180
    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->n(F)Z

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
    or-int v3, v3, v16

    .line 191
    .line 192
    :cond_11
    :goto_b
    and-int/lit8 v16, p11, 0x40

    .line 193
    .line 194
    if-eqz v16, :cond_12

    .line 195
    .line 196
    const/high16 v16, 0x180000

    .line 197
    .line 198
    :goto_c
    or-int v3, v3, v16

    .line 199
    goto :goto_d

    .line 200
    .line 201
    :cond_12
    const/high16 v16, 0x380000

    .line 202
    .line 203
    and-int v16, v11, v16

    .line 204
    .line 205
    if-nez v16, :cond_14

    .line 206
    .line 207
    .line 208
    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

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
    and-int v1, v3, v16

    .line 223
    .line 224
    .line 225
    const v2, 0x92492

    .line 226
    .line 227
    if-ne v1, v2, :cond_16

    .line 228
    .line 229
    .line 230
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->b()Z

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
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->g()V

    .line 238
    .line 239
    move-object/from16 v1, p0

    .line 240
    move-object v2, v5

    .line 241
    move-wide v3, v6

    .line 242
    move-wide v5, v8

    .line 243
    move-object v7, v14

    .line 244
    .line 245
    move/from16 v8, p7

    .line 246
    .line 247
    goto/16 :goto_14

    .line 248
    .line 249
    .line 250
    :cond_16
    :goto_e
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->J()V

    .line 251
    .line 252
    and-int/lit8 v1, v11, 0x1

    .line 253
    const/4 v2, 0x0

    .line 254
    .line 255
    if-eqz v1, :cond_1a

    .line 256
    .line 257
    .line 258
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->h()Z

    .line 259
    move-result v1

    .line 260
    .line 261
    if-eqz v1, :cond_17

    .line 262
    goto :goto_11

    .line 263
    .line 264
    .line 265
    :cond_17
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->g()V

    .line 266
    .line 267
    and-int/lit8 v0, p11, 0x4

    .line 268
    .line 269
    if-eqz v0, :cond_18

    .line 270
    .line 271
    and-int/lit16 v3, v3, -0x381

    .line 272
    .line 273
    :cond_18
    and-int/lit8 v0, p11, 0x8

    .line 274
    .line 275
    if-eqz v0, :cond_19

    .line 276
    .line 277
    and-int/lit16 v0, v3, -0x1c01

    .line 278
    .line 279
    move-object/from16 v13, p0

    .line 280
    .line 281
    move/from16 v20, p7

    .line 282
    move-wide v15, v6

    .line 283
    .line 284
    move-wide/from16 v17, v8

    .line 285
    .line 286
    move-object/from16 v19, v14

    .line 287
    move v6, v0

    .line 288
    :goto_f
    move-object v14, v5

    .line 289
    goto :goto_13

    .line 290
    .line 291
    :cond_19
    move-object/from16 v13, p0

    .line 292
    .line 293
    move/from16 v20, p7

    .line 294
    :goto_10
    move-wide v15, v6

    .line 295
    .line 296
    move-wide/from16 v17, v8

    .line 297
    .line 298
    move-object/from16 v19, v14

    .line 299
    move v6, v3

    .line 300
    goto :goto_f

    .line 301
    .line 302
    :cond_1a
    :goto_11
    if-eqz v0, :cond_1b

    .line 303
    .line 304
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 305
    goto :goto_12

    .line 306
    .line 307
    :cond_1b
    move-object/from16 v0, p0

    .line 308
    .line 309
    :goto_12
    if-eqz v4, :cond_1c

    .line 310
    .line 311
    .line 312
    invoke-static {}, Landroidx/compose/ui/graphics/RectangleShapeKt;->a()Landroidx/compose/ui/graphics/Shape;

    .line 313
    move-result-object v1

    .line 314
    move-object v5, v1

    .line 315
    .line 316
    :cond_1c
    and-int/lit8 v1, p11, 0x4

    .line 317
    .line 318
    if-eqz v1, :cond_1d

    .line 319
    .line 320
    sget-object v1, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 321
    const/4 v4, 0x6

    .line 322
    .line 323
    .line 324
    invoke-virtual {v1, v12, v4}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 325
    move-result-object v1

    .line 326
    .line 327
    .line 328
    invoke-virtual {v1}, Landroidx/compose/material/Colors;->n()J

    .line 329
    move-result-wide v6

    .line 330
    .line 331
    and-int/lit16 v3, v3, -0x381

    .line 332
    .line 333
    :cond_1d
    and-int/lit8 v1, p11, 0x8

    .line 334
    .line 335
    if-eqz v1, :cond_1e

    .line 336
    .line 337
    shr-int/lit8 v1, v3, 0x6

    .line 338
    .line 339
    and-int/lit8 v1, v1, 0xe

    .line 340
    .line 341
    .line 342
    invoke-static {v6, v7, v12, v1}, Landroidx/compose/material/ColorsKt;->b(JLandroidx/compose/runtime/Composer;I)J

    .line 343
    move-result-wide v8

    .line 344
    .line 345
    and-int/lit16 v3, v3, -0x1c01

    .line 346
    .line 347
    :cond_1e
    if-eqz v13, :cond_1f

    .line 348
    const/4 v1, 0x0

    .line 349
    move-object v14, v1

    .line 350
    .line 351
    :cond_1f
    if-eqz v15, :cond_20

    .line 352
    int-to-float v1, v2

    .line 353
    .line 354
    .line 355
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 356
    move-result v1

    .line 357
    move-object v13, v0

    .line 358
    .line 359
    move/from16 v20, v1

    .line 360
    goto :goto_10

    .line 361
    .line 362
    :cond_20
    move/from16 v20, p7

    .line 363
    move-object v13, v0

    .line 364
    goto :goto_10

    .line 365
    .line 366
    .line 367
    :goto_13
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->A()V

    .line 368
    .line 369
    .line 370
    invoke-static {}, Landroidx/compose/material/ElevationOverlayKt;->c()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 371
    move-result-object v0

    .line 372
    .line 373
    .line 374
    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 375
    move-result-object v0

    .line 376
    .line 377
    check-cast v0, Landroidx/compose/ui/unit/Dp;

    .line 378
    .line 379
    .line 380
    invoke-virtual {v0}, Landroidx/compose/ui/unit/Dp;->l()F

    .line 381
    move-result v0

    .line 382
    .line 383
    add-float v0, v0, v20

    .line 384
    .line 385
    .line 386
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 387
    move-result v5

    .line 388
    const/4 v0, 0x2

    .line 389
    .line 390
    new-array v9, v0, [Landroidx/compose/runtime/ProvidedValue;

    .line 391
    .line 392
    .line 393
    invoke-static {}, Landroidx/compose/material/ContentColorKt;->a()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 394
    move-result-object v0

    .line 395
    .line 396
    .line 397
    invoke-static/range {v17 .. v18}, Landroidx/compose/ui/graphics/Color;->h(J)Landroidx/compose/ui/graphics/Color;

    .line 398
    move-result-object v1

    .line 399
    .line 400
    .line 401
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 402
    move-result-object v0

    .line 403
    .line 404
    aput-object v0, v9, v2

    .line 405
    .line 406
    .line 407
    invoke-static {}, Landroidx/compose/material/ElevationOverlayKt;->c()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 408
    move-result-object v0

    .line 409
    .line 410
    .line 411
    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->c(F)Landroidx/compose/ui/unit/Dp;

    .line 412
    move-result-object v1

    .line 413
    .line 414
    .line 415
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 416
    move-result-object v0

    .line 417
    const/4 v8, 0x1

    .line 418
    .line 419
    aput-object v0, v9, v8

    .line 420
    .line 421
    new-instance v7, Landroidx/compose/material/SurfaceKt$Surface$1;

    .line 422
    move-object v0, v7

    .line 423
    move-object v1, v13

    .line 424
    move-object v2, v14

    .line 425
    move-wide v3, v15

    .line 426
    move-object v10, v7

    .line 427
    .line 428
    move-object/from16 v7, v19

    .line 429
    move v11, v8

    .line 430
    .line 431
    move/from16 v8, v20

    .line 432
    .line 433
    move-object/from16 v21, v9

    .line 434
    .line 435
    move-object/from16 v9, p8

    .line 436
    .line 437
    .line 438
    invoke-direct/range {v0 .. v9}, Landroidx/compose/material/SurfaceKt$Surface$1;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JFILandroidx/compose/foundation/BorderStroke;FLe8/p;)V

    .line 439
    .line 440
    .line 441
    const v0, -0x6c9bf7c6

    .line 442
    .line 443
    .line 444
    invoke-static {v12, v0, v11, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 445
    move-result-object v0

    .line 446
    .line 447
    const/16 v1, 0x38

    .line 448
    .line 449
    move-object/from16 v2, v21

    .line 450
    .line 451
    .line 452
    invoke-static {v2, v0, v12, v1}, Landroidx/compose/runtime/CompositionLocalKt;->b([Landroidx/compose/runtime/ProvidedValue;Le8/p;Landroidx/compose/runtime/Composer;I)V

    .line 453
    move-object v1, v13

    .line 454
    move-object v2, v14

    .line 455
    .line 456
    move-wide/from16 v5, v17

    .line 457
    .line 458
    .line 459
    :goto_14
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 460
    move-result-object v12

    .line 461
    .line 462
    if-nez v12, :cond_21

    .line 463
    goto :goto_15

    .line 464
    .line 465
    :cond_21
    new-instance v13, Landroidx/compose/material/SurfaceKt$Surface$2;

    .line 466
    move-object v0, v13

    .line 467
    .line 468
    move-object/from16 v9, p8

    .line 469
    .line 470
    move/from16 v10, p10

    .line 471
    .line 472
    move/from16 v11, p11

    .line 473
    .line 474
    .line 475
    invoke-direct/range {v0 .. v11}, Landroidx/compose/material/SurfaceKt$Surface$2;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLe8/p;II)V

    .line 476
    .line 477
    .line 478
    invoke-interface {v12, v13}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 479
    :goto_15
    return-void
.end method

.method public static final c(Le8/a;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Le8/p;Landroidx/compose/runtime/Composer;II)V
    .locals 29
    .param p0    # Le8/a;
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
    .param p8    # Landroidx/compose/foundation/BorderStroke;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p12    # Landroidx/compose/runtime/Composer;
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
            "Le8/a<",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Landroidx/compose/ui/graphics/Shape;",
            "JJ",
            "Landroidx/compose/foundation/BorderStroke;",
            "F",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
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
    move-object/from16 v13, p0

    .line 3
    .line 4
    move-object/from16 v14, p11

    .line 5
    .line 6
    move/from16 v15, p13

    .line 7
    .line 8
    move/from16 v12, p14

    .line 9
    .line 10
    const-string v0, "onClick"

    .line 11
    .line 12
    .line 13
    invoke-static {v13, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    const-string v0, "content"

    .line 16
    .line 17
    .line 18
    invoke-static {v14, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const v0, 0x5d0914cd

    .line 22
    .line 23
    move-object/from16 v1, p12

    .line 24
    .line 25
    .line 26
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 27
    move-result-object v11

    .line 28
    .line 29
    and-int/lit8 v0, v12, 0x1

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    or-int/lit8 v0, v15, 0x6

    .line 34
    goto :goto_1

    .line 35
    .line 36
    :cond_0
    and-int/lit8 v0, v15, 0xe

    .line 37
    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    .line 41
    invoke-interface {v11, v13}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 42
    move-result v0

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    const/4 v0, 0x4

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/4 v0, 0x2

    .line 48
    :goto_0
    or-int/2addr v0, v15

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    move v0, v15

    .line 51
    .line 52
    :goto_1
    and-int/lit8 v2, v12, 0x2

    .line 53
    .line 54
    if-eqz v2, :cond_4

    .line 55
    .line 56
    or-int/lit8 v0, v0, 0x30

    .line 57
    .line 58
    :cond_3
    move-object/from16 v3, p1

    .line 59
    goto :goto_3

    .line 60
    .line 61
    :cond_4
    and-int/lit8 v3, v15, 0x70

    .line 62
    .line 63
    if-nez v3, :cond_3

    .line 64
    .line 65
    move-object/from16 v3, p1

    .line 66
    .line 67
    .line 68
    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 69
    move-result v4

    .line 70
    .line 71
    if-eqz v4, :cond_5

    .line 72
    .line 73
    const/16 v4, 0x20

    .line 74
    goto :goto_2

    .line 75
    .line 76
    :cond_5
    const/16 v4, 0x10

    .line 77
    :goto_2
    or-int/2addr v0, v4

    .line 78
    .line 79
    :goto_3
    and-int/lit8 v4, v12, 0x4

    .line 80
    .line 81
    if-eqz v4, :cond_7

    .line 82
    .line 83
    or-int/lit16 v0, v0, 0x180

    .line 84
    .line 85
    :cond_6
    move/from16 v5, p2

    .line 86
    goto :goto_5

    .line 87
    .line 88
    :cond_7
    and-int/lit16 v5, v15, 0x380

    .line 89
    .line 90
    if-nez v5, :cond_6

    .line 91
    .line 92
    move/from16 v5, p2

    .line 93
    .line 94
    .line 95
    invoke-interface {v11, v5}, Landroidx/compose/runtime/Composer;->m(Z)Z

    .line 96
    move-result v6

    .line 97
    .line 98
    if-eqz v6, :cond_8

    .line 99
    .line 100
    const/16 v6, 0x100

    .line 101
    goto :goto_4

    .line 102
    .line 103
    :cond_8
    const/16 v6, 0x80

    .line 104
    :goto_4
    or-int/2addr v0, v6

    .line 105
    .line 106
    :goto_5
    and-int/lit8 v6, v12, 0x8

    .line 107
    .line 108
    if-eqz v6, :cond_a

    .line 109
    .line 110
    or-int/lit16 v0, v0, 0xc00

    .line 111
    .line 112
    :cond_9
    move-object/from16 v7, p3

    .line 113
    goto :goto_7

    .line 114
    .line 115
    :cond_a
    and-int/lit16 v7, v15, 0x1c00

    .line 116
    .line 117
    if-nez v7, :cond_9

    .line 118
    .line 119
    move-object/from16 v7, p3

    .line 120
    .line 121
    .line 122
    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 123
    move-result v8

    .line 124
    .line 125
    if-eqz v8, :cond_b

    .line 126
    .line 127
    const/16 v8, 0x800

    .line 128
    goto :goto_6

    .line 129
    .line 130
    :cond_b
    const/16 v8, 0x400

    .line 131
    :goto_6
    or-int/2addr v0, v8

    .line 132
    .line 133
    .line 134
    :goto_7
    const v8, 0xe000

    .line 135
    and-int/2addr v8, v15

    .line 136
    .line 137
    if-nez v8, :cond_e

    .line 138
    .line 139
    and-int/lit8 v8, v12, 0x10

    .line 140
    .line 141
    if-nez v8, :cond_c

    .line 142
    .line 143
    move-wide/from16 v8, p4

    .line 144
    .line 145
    .line 146
    invoke-interface {v11, v8, v9}, Landroidx/compose/runtime/Composer;->q(J)Z

    .line 147
    move-result v10

    .line 148
    .line 149
    if-eqz v10, :cond_d

    .line 150
    .line 151
    const/16 v10, 0x4000

    .line 152
    goto :goto_8

    .line 153
    .line 154
    :cond_c
    move-wide/from16 v8, p4

    .line 155
    .line 156
    :cond_d
    const/16 v10, 0x2000

    .line 157
    :goto_8
    or-int/2addr v0, v10

    .line 158
    goto :goto_9

    .line 159
    .line 160
    :cond_e
    move-wide/from16 v8, p4

    .line 161
    .line 162
    :goto_9
    const/high16 v10, 0x70000

    .line 163
    and-int/2addr v10, v15

    .line 164
    .line 165
    if-nez v10, :cond_11

    .line 166
    .line 167
    and-int/lit8 v10, v12, 0x20

    .line 168
    .line 169
    if-nez v10, :cond_f

    .line 170
    move v10, v2

    .line 171
    .line 172
    move-wide/from16 v1, p6

    .line 173
    .line 174
    .line 175
    invoke-interface {v11, v1, v2}, Landroidx/compose/runtime/Composer;->q(J)Z

    .line 176
    move-result v16

    .line 177
    .line 178
    if-eqz v16, :cond_10

    .line 179
    .line 180
    const/high16 v16, 0x20000

    .line 181
    goto :goto_a

    .line 182
    :cond_f
    move v10, v2

    .line 183
    .line 184
    move-wide/from16 v1, p6

    .line 185
    .line 186
    :cond_10
    const/high16 v16, 0x10000

    .line 187
    .line 188
    :goto_a
    or-int v0, v0, v16

    .line 189
    goto :goto_b

    .line 190
    :cond_11
    move v10, v2

    .line 191
    .line 192
    move-wide/from16 v1, p6

    .line 193
    .line 194
    :goto_b
    and-int/lit8 v16, v12, 0x40

    .line 195
    .line 196
    if-eqz v16, :cond_12

    .line 197
    .line 198
    const/high16 v17, 0x180000

    .line 199
    .line 200
    or-int v0, v0, v17

    .line 201
    .line 202
    move-object/from16 v1, p8

    .line 203
    goto :goto_d

    .line 204
    .line 205
    :cond_12
    const/high16 v17, 0x380000

    .line 206
    .line 207
    and-int v17, v15, v17

    .line 208
    .line 209
    move-object/from16 v1, p8

    .line 210
    .line 211
    if-nez v17, :cond_14

    .line 212
    .line 213
    .line 214
    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 215
    move-result v2

    .line 216
    .line 217
    if-eqz v2, :cond_13

    .line 218
    .line 219
    const/high16 v2, 0x100000

    .line 220
    goto :goto_c

    .line 221
    .line 222
    :cond_13
    const/high16 v2, 0x80000

    .line 223
    :goto_c
    or-int/2addr v0, v2

    .line 224
    .line 225
    :cond_14
    :goto_d
    and-int/lit16 v2, v12, 0x80

    .line 226
    .line 227
    if-eqz v2, :cond_15

    .line 228
    .line 229
    const/high16 v17, 0xc00000

    .line 230
    .line 231
    or-int v0, v0, v17

    .line 232
    .line 233
    move/from16 v1, p9

    .line 234
    goto :goto_f

    .line 235
    .line 236
    :cond_15
    const/high16 v17, 0x1c00000

    .line 237
    .line 238
    and-int v17, v15, v17

    .line 239
    .line 240
    move/from16 v1, p9

    .line 241
    .line 242
    if-nez v17, :cond_17

    .line 243
    .line 244
    .line 245
    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->n(F)Z

    .line 246
    move-result v17

    .line 247
    .line 248
    if-eqz v17, :cond_16

    .line 249
    .line 250
    const/high16 v17, 0x800000

    .line 251
    goto :goto_e

    .line 252
    .line 253
    :cond_16
    const/high16 v17, 0x400000

    .line 254
    .line 255
    :goto_e
    or-int v0, v0, v17

    .line 256
    .line 257
    :cond_17
    :goto_f
    and-int/lit16 v1, v12, 0x100

    .line 258
    .line 259
    if-eqz v1, :cond_18

    .line 260
    .line 261
    const/high16 v17, 0x6000000

    .line 262
    .line 263
    or-int v0, v0, v17

    .line 264
    .line 265
    move-object/from16 v3, p10

    .line 266
    goto :goto_11

    .line 267
    .line 268
    :cond_18
    const/high16 v17, 0xe000000

    .line 269
    .line 270
    and-int v17, v15, v17

    .line 271
    .line 272
    move-object/from16 v3, p10

    .line 273
    .line 274
    if-nez v17, :cond_1a

    .line 275
    .line 276
    .line 277
    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 278
    move-result v17

    .line 279
    .line 280
    if-eqz v17, :cond_19

    .line 281
    .line 282
    const/high16 v17, 0x4000000

    .line 283
    goto :goto_10

    .line 284
    .line 285
    :cond_19
    const/high16 v17, 0x2000000

    .line 286
    .line 287
    :goto_10
    or-int v0, v0, v17

    .line 288
    .line 289
    :cond_1a
    :goto_11
    and-int/lit16 v3, v12, 0x200

    .line 290
    .line 291
    if-eqz v3, :cond_1b

    .line 292
    .line 293
    const/high16 v3, 0x30000000

    .line 294
    :goto_12
    or-int/2addr v0, v3

    .line 295
    goto :goto_13

    .line 296
    .line 297
    :cond_1b
    const/high16 v3, 0x70000000

    .line 298
    and-int/2addr v3, v15

    .line 299
    .line 300
    if-nez v3, :cond_1d

    .line 301
    .line 302
    .line 303
    invoke-interface {v11, v14}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 304
    move-result v3

    .line 305
    .line 306
    if-eqz v3, :cond_1c

    .line 307
    .line 308
    const/high16 v3, 0x20000000

    .line 309
    goto :goto_12

    .line 310
    .line 311
    :cond_1c
    const/high16 v3, 0x10000000

    .line 312
    goto :goto_12

    .line 313
    .line 314
    .line 315
    :cond_1d
    :goto_13
    const v3, 0x5b6db6db

    .line 316
    and-int/2addr v3, v0

    .line 317
    .line 318
    .line 319
    const v5, 0x12492492

    .line 320
    .line 321
    if-ne v3, v5, :cond_1f

    .line 322
    .line 323
    .line 324
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->b()Z

    .line 325
    move-result v3

    .line 326
    .line 327
    if-nez v3, :cond_1e

    .line 328
    goto :goto_14

    .line 329
    .line 330
    .line 331
    :cond_1e
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->g()V

    .line 332
    .line 333
    move-object/from16 v2, p1

    .line 334
    .line 335
    move/from16 v3, p2

    .line 336
    .line 337
    move/from16 v10, p9

    .line 338
    move-object v4, v7

    .line 339
    move-wide v5, v8

    .line 340
    move-object v15, v11

    .line 341
    .line 342
    move-wide/from16 v7, p6

    .line 343
    .line 344
    move-object/from16 v9, p8

    .line 345
    .line 346
    move-object/from16 v11, p10

    .line 347
    .line 348
    goto/16 :goto_1f

    .line 349
    .line 350
    .line 351
    :cond_1f
    :goto_14
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->J()V

    .line 352
    .line 353
    and-int/lit8 v3, v15, 0x1

    .line 354
    .line 355
    .line 356
    const v17, -0x70001

    .line 357
    .line 358
    .line 359
    const v18, -0xe001

    .line 360
    .line 361
    if-eqz v3, :cond_23

    .line 362
    .line 363
    .line 364
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->h()Z

    .line 365
    move-result v3

    .line 366
    .line 367
    if-eqz v3, :cond_20

    .line 368
    goto :goto_15

    .line 369
    .line 370
    .line 371
    :cond_20
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->g()V

    .line 372
    .line 373
    and-int/lit8 v1, v12, 0x10

    .line 374
    .line 375
    if-eqz v1, :cond_21

    .line 376
    .line 377
    and-int v0, v0, v18

    .line 378
    .line 379
    :cond_21
    and-int/lit8 v1, v12, 0x20

    .line 380
    .line 381
    if-eqz v1, :cond_22

    .line 382
    .line 383
    and-int v0, v0, v17

    .line 384
    .line 385
    :cond_22
    move-object/from16 v16, p1

    .line 386
    .line 387
    move/from16 v18, p2

    .line 388
    .line 389
    move-wide/from16 v22, p6

    .line 390
    .line 391
    move-object/from16 v24, p8

    .line 392
    .line 393
    move/from16 v25, p9

    .line 394
    .line 395
    move-object/from16 v26, p10

    .line 396
    move v6, v0

    .line 397
    .line 398
    move-object/from16 v19, v7

    .line 399
    .line 400
    move-wide/from16 v20, v8

    .line 401
    .line 402
    goto/16 :goto_1e

    .line 403
    .line 404
    :cond_23
    :goto_15
    if-eqz v10, :cond_24

    .line 405
    .line 406
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 407
    goto :goto_16

    .line 408
    .line 409
    :cond_24
    move-object/from16 v3, p1

    .line 410
    .line 411
    :goto_16
    if-eqz v4, :cond_25

    .line 412
    const/4 v4, 0x1

    .line 413
    goto :goto_17

    .line 414
    .line 415
    :cond_25
    move/from16 v4, p2

    .line 416
    .line 417
    :goto_17
    if-eqz v6, :cond_26

    .line 418
    .line 419
    .line 420
    invoke-static {}, Landroidx/compose/ui/graphics/RectangleShapeKt;->a()Landroidx/compose/ui/graphics/Shape;

    .line 421
    move-result-object v6

    .line 422
    goto :goto_18

    .line 423
    :cond_26
    move-object v6, v7

    .line 424
    .line 425
    :goto_18
    and-int/lit8 v7, v12, 0x10

    .line 426
    .line 427
    if-eqz v7, :cond_27

    .line 428
    .line 429
    sget-object v7, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 430
    const/4 v8, 0x6

    .line 431
    .line 432
    .line 433
    invoke-virtual {v7, v11, v8}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 434
    move-result-object v7

    .line 435
    .line 436
    .line 437
    invoke-virtual {v7}, Landroidx/compose/material/Colors;->n()J

    .line 438
    move-result-wide v7

    .line 439
    .line 440
    and-int v0, v0, v18

    .line 441
    goto :goto_19

    .line 442
    :cond_27
    move-wide v7, v8

    .line 443
    .line 444
    :goto_19
    and-int/lit8 v9, v12, 0x20

    .line 445
    .line 446
    if-eqz v9, :cond_28

    .line 447
    .line 448
    shr-int/lit8 v9, v0, 0xc

    .line 449
    .line 450
    and-int/lit8 v9, v9, 0xe

    .line 451
    .line 452
    .line 453
    invoke-static {v7, v8, v11, v9}, Landroidx/compose/material/ColorsKt;->b(JLandroidx/compose/runtime/Composer;I)J

    .line 454
    move-result-wide v9

    .line 455
    .line 456
    and-int v0, v0, v17

    .line 457
    goto :goto_1a

    .line 458
    .line 459
    :cond_28
    move-wide/from16 v9, p6

    .line 460
    .line 461
    :goto_1a
    if-eqz v16, :cond_29

    .line 462
    .line 463
    const/16 v16, 0x0

    .line 464
    goto :goto_1b

    .line 465
    .line 466
    :cond_29
    move-object/from16 v16, p8

    .line 467
    .line 468
    :goto_1b
    if-eqz v2, :cond_2a

    .line 469
    const/4 v2, 0x0

    .line 470
    int-to-float v5, v2

    .line 471
    .line 472
    .line 473
    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 474
    move-result v2

    .line 475
    goto :goto_1c

    .line 476
    .line 477
    :cond_2a
    move/from16 v2, p9

    .line 478
    .line 479
    :goto_1c
    if-eqz v1, :cond_2c

    .line 480
    .line 481
    .line 482
    const v1, -0x1d58f75c

    .line 483
    .line 484
    .line 485
    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 486
    .line 487
    .line 488
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 489
    move-result-object v1

    .line 490
    .line 491
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 492
    .line 493
    .line 494
    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 495
    move-result-object v5

    .line 496
    .line 497
    if-ne v1, v5, :cond_2b

    .line 498
    .line 499
    .line 500
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->a()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 501
    move-result-object v1

    .line 502
    .line 503
    .line 504
    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 505
    .line 506
    .line 507
    :cond_2b
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->Q()V

    .line 508
    .line 509
    check-cast v1, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 510
    .line 511
    move-object/from16 v26, v1

    .line 512
    .line 513
    :goto_1d
    move/from16 v25, v2

    .line 514
    .line 515
    move/from16 v18, v4

    .line 516
    .line 517
    move-object/from16 v19, v6

    .line 518
    .line 519
    move-wide/from16 v20, v7

    .line 520
    .line 521
    move-wide/from16 v22, v9

    .line 522
    .line 523
    move-object/from16 v24, v16

    .line 524
    move v6, v0

    .line 525
    .line 526
    move-object/from16 v16, v3

    .line 527
    goto :goto_1e

    .line 528
    .line 529
    :cond_2c
    move-object/from16 v26, p10

    .line 530
    goto :goto_1d

    .line 531
    .line 532
    .line 533
    :goto_1e
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->A()V

    .line 534
    .line 535
    .line 536
    invoke-static {}, Landroidx/compose/material/ElevationOverlayKt;->c()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 537
    move-result-object v0

    .line 538
    .line 539
    .line 540
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 541
    move-result-object v0

    .line 542
    .line 543
    check-cast v0, Landroidx/compose/ui/unit/Dp;

    .line 544
    .line 545
    .line 546
    invoke-virtual {v0}, Landroidx/compose/ui/unit/Dp;->l()F

    .line 547
    move-result v0

    .line 548
    .line 549
    add-float v0, v0, v25

    .line 550
    .line 551
    .line 552
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 553
    move-result v5

    .line 554
    const/4 v0, 0x2

    .line 555
    .line 556
    new-array v10, v0, [Landroidx/compose/runtime/ProvidedValue;

    .line 557
    .line 558
    .line 559
    invoke-static {}, Landroidx/compose/material/ContentColorKt;->a()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 560
    move-result-object v0

    .line 561
    .line 562
    .line 563
    invoke-static/range {v22 .. v23}, Landroidx/compose/ui/graphics/Color;->h(J)Landroidx/compose/ui/graphics/Color;

    .line 564
    move-result-object v1

    .line 565
    .line 566
    .line 567
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 568
    move-result-object v0

    .line 569
    const/4 v1, 0x0

    .line 570
    .line 571
    aput-object v0, v10, v1

    .line 572
    .line 573
    .line 574
    invoke-static {}, Landroidx/compose/material/ElevationOverlayKt;->c()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 575
    move-result-object v0

    .line 576
    .line 577
    .line 578
    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->c(F)Landroidx/compose/ui/unit/Dp;

    .line 579
    move-result-object v1

    .line 580
    .line 581
    .line 582
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 583
    move-result-object v0

    .line 584
    const/4 v7, 0x1

    .line 585
    .line 586
    aput-object v0, v10, v7

    .line 587
    .line 588
    new-instance v9, Landroidx/compose/material/SurfaceKt$Surface$4;

    .line 589
    move-object v0, v9

    .line 590
    .line 591
    move-object/from16 v1, v16

    .line 592
    .line 593
    move-object/from16 v2, v19

    .line 594
    .line 595
    move-wide/from16 v3, v20

    .line 596
    move v8, v7

    .line 597
    .line 598
    move-object/from16 v7, v24

    .line 599
    move v13, v8

    .line 600
    .line 601
    move/from16 v8, v25

    .line 602
    move-object v14, v9

    .line 603
    .line 604
    move-object/from16 v9, v26

    .line 605
    .line 606
    move-object/from16 v27, v10

    .line 607
    .line 608
    move/from16 v10, v18

    .line 609
    move-object v15, v11

    .line 610
    .line 611
    move-object/from16 v11, p0

    .line 612
    .line 613
    move-object/from16 v12, p11

    .line 614
    .line 615
    .line 616
    invoke-direct/range {v0 .. v12}, Landroidx/compose/material/SurfaceKt$Surface$4;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JFILandroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/interaction/MutableInteractionSource;ZLe8/a;Le8/p;)V

    .line 617
    .line 618
    .line 619
    const v0, 0x7916180d

    .line 620
    .line 621
    .line 622
    invoke-static {v15, v0, v13, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 623
    move-result-object v0

    .line 624
    .line 625
    const/16 v1, 0x38

    .line 626
    .line 627
    move-object/from16 v2, v27

    .line 628
    .line 629
    .line 630
    invoke-static {v2, v0, v15, v1}, Landroidx/compose/runtime/CompositionLocalKt;->b([Landroidx/compose/runtime/ProvidedValue;Le8/p;Landroidx/compose/runtime/Composer;I)V

    .line 631
    .line 632
    move-object/from16 v2, v16

    .line 633
    .line 634
    move/from16 v3, v18

    .line 635
    .line 636
    move-object/from16 v4, v19

    .line 637
    .line 638
    move-wide/from16 v5, v20

    .line 639
    .line 640
    move-wide/from16 v7, v22

    .line 641
    .line 642
    move-object/from16 v9, v24

    .line 643
    .line 644
    move/from16 v10, v25

    .line 645
    .line 646
    move-object/from16 v11, v26

    .line 647
    .line 648
    .line 649
    :goto_1f
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 650
    move-result-object v15

    .line 651
    .line 652
    if-nez v15, :cond_2d

    .line 653
    goto :goto_20

    .line 654
    .line 655
    :cond_2d
    new-instance v14, Landroidx/compose/material/SurfaceKt$Surface$5;

    .line 656
    move-object v0, v14

    .line 657
    .line 658
    move-object/from16 v1, p0

    .line 659
    .line 660
    move-object/from16 v12, p11

    .line 661
    .line 662
    move/from16 v13, p13

    .line 663
    .line 664
    move-object/from16 v28, v14

    .line 665
    .line 666
    move/from16 v14, p14

    .line 667
    .line 668
    .line 669
    invoke-direct/range {v0 .. v14}, Landroidx/compose/material/SurfaceKt$Surface$5;-><init>(Le8/a;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Le8/p;II)V

    .line 670
    .line 671
    move-object/from16 v0, v28

    .line 672
    .line 673
    .line 674
    invoke-interface {v15, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 675
    :goto_20
    return-void
.end method

.method public static final d(ZLe8/a;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Le8/p;Landroidx/compose/runtime/Composer;III)V
    .locals 33
    .param p1    # Le8/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/graphics/Shape;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Landroidx/compose/foundation/BorderStroke;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p13    # Landroidx/compose/runtime/Composer;
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
            "(Z",
            "Le8/a<",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Landroidx/compose/ui/graphics/Shape;",
            "JJ",
            "Landroidx/compose/foundation/BorderStroke;",
            "F",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
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

    move-object/from16 v14, p12

    move/from16 v13, p14

    move/from16 v12, p16

    const-string v0, "onClick"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0xf9e37f1

    move-object/from16 v1, p13

    .line 1
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    move-result-object v11

    and-int/lit8 v0, v12, 0x1

    if-eqz v0, :cond_0

    or-int/lit8 v0, v13, 0x6

    move/from16 v10, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v0, v13, 0xe

    move/from16 v10, p0

    if-nez v0, :cond_2

    invoke-interface {v11, v10}, Landroidx/compose/runtime/Composer;->m(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v13

    goto :goto_1

    :cond_2
    move v0, v13

    :goto_1
    and-int/lit8 v3, v12, 0x2

    if-eqz v3, :cond_3

    or-int/lit8 v0, v0, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v3, v13, 0x70

    if-nez v3, :cond_5

    invoke-interface {v11, v15}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

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
    and-int/lit8 v3, v12, 0x4

    if-eqz v3, :cond_7

    or-int/lit16 v0, v0, 0x180

    :cond_6
    move-object/from16 v4, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v4, v13, 0x380

    if-nez v4, :cond_6

    move-object/from16 v4, p2

    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/16 v5, 0x100

    goto :goto_4

    :cond_8
    const/16 v5, 0x80

    :goto_4
    or-int/2addr v0, v5

    :goto_5
    and-int/lit8 v5, v12, 0x8

    if-eqz v5, :cond_a

    or-int/lit16 v0, v0, 0xc00

    :cond_9
    move/from16 v6, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v6, v13, 0x1c00

    if-nez v6, :cond_9

    move/from16 v6, p3

    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->m(Z)Z

    move-result v7

    if-eqz v7, :cond_b

    const/16 v7, 0x800

    goto :goto_6

    :cond_b
    const/16 v7, 0x400

    :goto_6
    or-int/2addr v0, v7

    :goto_7
    and-int/lit8 v7, v12, 0x10

    if-eqz v7, :cond_d

    or-int/lit16 v0, v0, 0x6000

    :cond_c
    move-object/from16 v8, p4

    goto :goto_9

    :cond_d
    const v8, 0xe000

    and-int/2addr v8, v13

    if-nez v8, :cond_c

    move-object/from16 v8, p4

    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    const/16 v9, 0x4000

    goto :goto_8

    :cond_e
    const/16 v9, 0x2000

    :goto_8
    or-int/2addr v0, v9

    :goto_9
    const/high16 v9, 0x70000

    and-int/2addr v9, v13

    if-nez v9, :cond_10

    and-int/lit8 v9, v12, 0x20

    move-wide/from16 v1, p5

    if-nez v9, :cond_f

    invoke-interface {v11, v1, v2}, Landroidx/compose/runtime/Composer;->q(J)Z

    move-result v16

    if-eqz v16, :cond_f

    const/high16 v16, 0x20000

    goto :goto_a

    :cond_f
    const/high16 v16, 0x10000

    :goto_a
    or-int v0, v0, v16

    goto :goto_b

    :cond_10
    move-wide/from16 v1, p5

    :goto_b
    const/high16 v16, 0x380000

    and-int v16, v13, v16

    if-nez v16, :cond_12

    and-int/lit8 v16, v12, 0x40

    move-wide/from16 v9, p7

    if-nez v16, :cond_11

    invoke-interface {v11, v9, v10}, Landroidx/compose/runtime/Composer;->q(J)Z

    move-result v17

    if-eqz v17, :cond_11

    const/high16 v17, 0x100000

    goto :goto_c

    :cond_11
    const/high16 v17, 0x80000

    :goto_c
    or-int v0, v0, v17

    goto :goto_d

    :cond_12
    move-wide/from16 v9, p7

    :goto_d
    and-int/lit16 v1, v12, 0x80

    if-eqz v1, :cond_14

    const/high16 v2, 0xc00000

    or-int/2addr v0, v2

    :cond_13
    move-object/from16 v2, p9

    goto :goto_f

    :cond_14
    const/high16 v2, 0x1c00000

    and-int/2addr v2, v13

    if-nez v2, :cond_13

    move-object/from16 v2, p9

    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_15

    const/high16 v17, 0x800000

    goto :goto_e

    :cond_15
    const/high16 v17, 0x400000

    :goto_e
    or-int v0, v0, v17

    :goto_f
    and-int/lit16 v2, v12, 0x100

    if-eqz v2, :cond_16

    const/high16 v17, 0x6000000

    or-int v0, v0, v17

    move/from16 v4, p10

    goto :goto_11

    :cond_16
    const/high16 v17, 0xe000000

    and-int v17, v13, v17

    move/from16 v4, p10

    if-nez v17, :cond_18

    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->n(F)Z

    move-result v17

    if-eqz v17, :cond_17

    const/high16 v17, 0x4000000

    goto :goto_10

    :cond_17
    const/high16 v17, 0x2000000

    :goto_10
    or-int v0, v0, v17

    :cond_18
    :goto_11
    and-int/lit16 v4, v12, 0x200

    if-eqz v4, :cond_19

    const/high16 v17, 0x30000000

    or-int v0, v0, v17

    move-object/from16 v6, p11

    goto :goto_13

    :cond_19
    const/high16 v17, 0x70000000

    and-int v17, v13, v17

    move-object/from16 v6, p11

    if-nez v17, :cond_1b

    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1a

    const/high16 v17, 0x20000000

    goto :goto_12

    :cond_1a
    const/high16 v17, 0x10000000

    :goto_12
    or-int v0, v0, v17

    :cond_1b
    :goto_13
    and-int/lit16 v6, v12, 0x400

    if-eqz v6, :cond_1c

    or-int/lit8 v6, p15, 0x6

    :goto_14
    move/from16 v17, v6

    goto :goto_16

    :cond_1c
    and-int/lit8 v6, p15, 0xe

    if-nez v6, :cond_1e

    invoke-interface {v11, v14}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    const/4 v6, 0x4

    goto :goto_15

    :cond_1d
    const/4 v6, 0x2

    :goto_15
    or-int v6, p15, v6

    goto :goto_14

    :cond_1e
    move/from16 v17, p15

    :goto_16
    const v6, 0x5b6db6db

    and-int/2addr v6, v0

    const v8, 0x12492492

    if-ne v6, v8, :cond_20

    and-int/lit8 v6, v17, 0xb

    const/4 v8, 0x2

    if-ne v6, v8, :cond_20

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->b()Z

    move-result v8

    if-nez v8, :cond_1f

    goto :goto_17

    .line 2
    :cond_1f
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->g()V

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v12, p11

    move-wide v8, v9

    move-object v1, v11

    move-object/from16 v10, p9

    move/from16 v11, p10

    goto/16 :goto_22

    .line 3
    :cond_20
    :goto_17
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->J()V

    and-int/lit8 v8, v13, 0x1

    const v18, -0x380001

    const v19, -0x70001

    if-eqz v8, :cond_24

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->h()Z

    move-result v8

    if-eqz v8, :cond_21

    goto :goto_18

    .line 4
    :cond_21
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->g()V

    and-int/lit8 v1, v12, 0x20

    if-eqz v1, :cond_22

    and-int v0, v0, v19

    :cond_22
    and-int/lit8 v1, v12, 0x40

    if-eqz v1, :cond_23

    and-int v0, v0, v18

    :cond_23
    move-object/from16 v18, p2

    move/from16 v19, p3

    move-object/from16 v20, p4

    move-wide/from16 v21, p5

    move-object/from16 v25, p9

    move/from16 v26, p10

    move-object/from16 v27, p11

    move v6, v0

    move-wide/from16 v23, v9

    goto/16 :goto_21

    :cond_24
    :goto_18
    if-eqz v3, :cond_25

    .line 5
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_19

    :cond_25
    move-object/from16 v3, p2

    :goto_19
    if-eqz v5, :cond_26

    const/4 v5, 0x1

    goto :goto_1a

    :cond_26
    move/from16 v5, p3

    :goto_1a
    if-eqz v7, :cond_27

    .line 6
    invoke-static {}, Landroidx/compose/ui/graphics/RectangleShapeKt;->a()Landroidx/compose/ui/graphics/Shape;

    move-result-object v7

    goto :goto_1b

    :cond_27
    move-object/from16 v7, p4

    :goto_1b
    and-int/lit8 v8, v12, 0x20

    if-eqz v8, :cond_28

    .line 7
    sget-object v8, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    const/4 v6, 0x6

    invoke-virtual {v8, v11, v6}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/material/Colors;->n()J

    move-result-wide v20

    and-int v0, v0, v19

    move/from16 p2, v5

    move-wide/from16 v5, v20

    goto :goto_1c

    :cond_28
    move/from16 p2, v5

    move-wide/from16 v5, p5

    :goto_1c
    and-int/lit8 v8, v12, 0x40

    if-eqz v8, :cond_29

    shr-int/lit8 v8, v0, 0xf

    and-int/lit8 v8, v8, 0xe

    .line 8
    invoke-static {v5, v6, v11, v8}, Landroidx/compose/material/ColorsKt;->b(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v8

    and-int v0, v0, v18

    goto :goto_1d

    :cond_29
    move-wide v8, v9

    :goto_1d
    if-eqz v1, :cond_2a

    const/4 v1, 0x0

    goto :goto_1e

    :cond_2a
    move-object/from16 v1, p9

    :goto_1e
    if-eqz v2, :cond_2b

    const/4 v2, 0x0

    int-to-float v10, v2

    .line 9
    invoke-static {v10}, Landroidx/compose/ui/unit/Dp;->f(F)F

    move-result v2

    goto :goto_1f

    :cond_2b
    move/from16 v2, p10

    :goto_1f
    if-eqz v4, :cond_2d

    const v4, -0x1d58f75c

    .line 10
    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 11
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    move-result-object v4

    .line 12
    sget-object v10, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v10}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    move-result-object v10

    if-ne v4, v10, :cond_2c

    .line 13
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->a()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v4

    .line 14
    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 15
    :cond_2c
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->Q()V

    check-cast v4, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move/from16 v19, p2

    move-object/from16 v25, v1

    move/from16 v26, v2

    move-object/from16 v18, v3

    move-object/from16 v27, v4

    :goto_20
    move-wide/from16 v21, v5

    move-object/from16 v20, v7

    move-wide/from16 v23, v8

    move v6, v0

    goto :goto_21

    :cond_2d
    move/from16 v19, p2

    move-object/from16 v27, p11

    move-object/from16 v25, v1

    move/from16 v26, v2

    move-object/from16 v18, v3

    goto :goto_20

    :goto_21
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->A()V

    .line 16
    invoke-static {}, Landroidx/compose/material/ElevationOverlayKt;->c()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    .line 17
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/unit/Dp;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/Dp;->l()F

    move-result v0

    add-float v0, v0, v26

    .line 18
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    move-result v5

    const/4 v0, 0x2

    new-array v10, v0, [Landroidx/compose/runtime/ProvidedValue;

    .line 19
    invoke-static {}, Landroidx/compose/material/ContentColorKt;->a()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    invoke-static/range {v23 .. v24}, Landroidx/compose/ui/graphics/Color;->h(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v10, v1

    .line 20
    invoke-static {}, Landroidx/compose/material/ElevationOverlayKt;->c()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->c(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v0

    const/4 v7, 0x1

    aput-object v0, v10, v7

    .line 21
    new-instance v9, Landroidx/compose/material/SurfaceKt$Surface$7;

    move-object v0, v9

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move-wide/from16 v3, v21

    move v8, v7

    move-object/from16 v7, v25

    move v15, v8

    move/from16 v8, v26

    move-object/from16 v28, v9

    move/from16 v9, p0

    move-object/from16 v29, v10

    move-object/from16 v10, v27

    move-object/from16 v30, v11

    move/from16 v11, v19

    move-object/from16 v12, p1

    move-object/from16 v13, p12

    move/from16 v14, v17

    invoke-direct/range {v0 .. v14}, Landroidx/compose/material/SurfaceKt$Surface$7;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JFILandroidx/compose/foundation/BorderStroke;FZLandroidx/compose/foundation/interaction/MutableInteractionSource;ZLe8/a;Le8/p;I)V

    const v0, -0x52ec04cf

    move-object/from16 v2, v28

    move-object/from16 v1, v30

    invoke-static {v1, v0, v15, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    const/16 v2, 0x38

    move-object/from16 v3, v29

    .line 22
    invoke-static {v3, v0, v1, v2}, Landroidx/compose/runtime/CompositionLocalKt;->b([Landroidx/compose/runtime/ProvidedValue;Le8/p;Landroidx/compose/runtime/Composer;I)V

    move-object/from16 v3, v18

    move/from16 v4, v19

    move-object/from16 v5, v20

    move-wide/from16 v6, v21

    move-wide/from16 v8, v23

    move-object/from16 v10, v25

    move/from16 v11, v26

    move-object/from16 v12, v27

    .line 23
    :goto_22
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-nez v15, :cond_2e

    goto :goto_23

    :cond_2e
    new-instance v14, Landroidx/compose/material/SurfaceKt$Surface$8;

    move-object v0, v14

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v13, p12

    move-object/from16 v31, v14

    move/from16 v14, p14

    move-object/from16 v32, v15

    move/from16 v15, p15

    move/from16 v16, p16

    invoke-direct/range {v0 .. v16}, Landroidx/compose/material/SurfaceKt$Surface$8;-><init>(ZLe8/a;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Le8/p;III)V

    move-object/from16 v1, v31

    move-object/from16 v0, v32

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    :goto_23
    return-void
.end method

.method public static final e(ZLe8/l;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Le8/p;Landroidx/compose/runtime/Composer;III)V
    .locals 33
    .param p1    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/graphics/Shape;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Landroidx/compose/foundation/BorderStroke;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p13    # Landroidx/compose/runtime/Composer;
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
            "(Z",
            "Le8/l<",
            "-",
            "Ljava/lang/Boolean;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Landroidx/compose/ui/graphics/Shape;",
            "JJ",
            "Landroidx/compose/foundation/BorderStroke;",
            "F",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
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

    move-object/from16 v14, p12

    move/from16 v13, p14

    move/from16 v12, p16

    const-string v0, "onCheckedChange"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x4ff6b910

    move-object/from16 v1, p13

    .line 1
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    move-result-object v11

    and-int/lit8 v0, v12, 0x1

    if-eqz v0, :cond_0

    or-int/lit8 v0, v13, 0x6

    move/from16 v10, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v0, v13, 0xe

    move/from16 v10, p0

    if-nez v0, :cond_2

    invoke-interface {v11, v10}, Landroidx/compose/runtime/Composer;->m(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v13

    goto :goto_1

    :cond_2
    move v0, v13

    :goto_1
    and-int/lit8 v3, v12, 0x2

    if-eqz v3, :cond_3

    or-int/lit8 v0, v0, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v3, v13, 0x70

    if-nez v3, :cond_5

    invoke-interface {v11, v15}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

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
    and-int/lit8 v3, v12, 0x4

    if-eqz v3, :cond_7

    or-int/lit16 v0, v0, 0x180

    :cond_6
    move-object/from16 v4, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v4, v13, 0x380

    if-nez v4, :cond_6

    move-object/from16 v4, p2

    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/16 v5, 0x100

    goto :goto_4

    :cond_8
    const/16 v5, 0x80

    :goto_4
    or-int/2addr v0, v5

    :goto_5
    and-int/lit8 v5, v12, 0x8

    if-eqz v5, :cond_a

    or-int/lit16 v0, v0, 0xc00

    :cond_9
    move/from16 v6, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v6, v13, 0x1c00

    if-nez v6, :cond_9

    move/from16 v6, p3

    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->m(Z)Z

    move-result v7

    if-eqz v7, :cond_b

    const/16 v7, 0x800

    goto :goto_6

    :cond_b
    const/16 v7, 0x400

    :goto_6
    or-int/2addr v0, v7

    :goto_7
    and-int/lit8 v7, v12, 0x10

    if-eqz v7, :cond_d

    or-int/lit16 v0, v0, 0x6000

    :cond_c
    move-object/from16 v8, p4

    goto :goto_9

    :cond_d
    const v8, 0xe000

    and-int/2addr v8, v13

    if-nez v8, :cond_c

    move-object/from16 v8, p4

    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    const/16 v9, 0x4000

    goto :goto_8

    :cond_e
    const/16 v9, 0x2000

    :goto_8
    or-int/2addr v0, v9

    :goto_9
    const/high16 v9, 0x70000

    and-int/2addr v9, v13

    if-nez v9, :cond_10

    and-int/lit8 v9, v12, 0x20

    move-wide/from16 v1, p5

    if-nez v9, :cond_f

    invoke-interface {v11, v1, v2}, Landroidx/compose/runtime/Composer;->q(J)Z

    move-result v16

    if-eqz v16, :cond_f

    const/high16 v16, 0x20000

    goto :goto_a

    :cond_f
    const/high16 v16, 0x10000

    :goto_a
    or-int v0, v0, v16

    goto :goto_b

    :cond_10
    move-wide/from16 v1, p5

    :goto_b
    const/high16 v16, 0x380000

    and-int v16, v13, v16

    if-nez v16, :cond_12

    and-int/lit8 v16, v12, 0x40

    move-wide/from16 v9, p7

    if-nez v16, :cond_11

    invoke-interface {v11, v9, v10}, Landroidx/compose/runtime/Composer;->q(J)Z

    move-result v17

    if-eqz v17, :cond_11

    const/high16 v17, 0x100000

    goto :goto_c

    :cond_11
    const/high16 v17, 0x80000

    :goto_c
    or-int v0, v0, v17

    goto :goto_d

    :cond_12
    move-wide/from16 v9, p7

    :goto_d
    and-int/lit16 v1, v12, 0x80

    if-eqz v1, :cond_14

    const/high16 v2, 0xc00000

    or-int/2addr v0, v2

    :cond_13
    move-object/from16 v2, p9

    goto :goto_f

    :cond_14
    const/high16 v2, 0x1c00000

    and-int/2addr v2, v13

    if-nez v2, :cond_13

    move-object/from16 v2, p9

    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_15

    const/high16 v17, 0x800000

    goto :goto_e

    :cond_15
    const/high16 v17, 0x400000

    :goto_e
    or-int v0, v0, v17

    :goto_f
    and-int/lit16 v2, v12, 0x100

    if-eqz v2, :cond_16

    const/high16 v17, 0x6000000

    or-int v0, v0, v17

    move/from16 v4, p10

    goto :goto_11

    :cond_16
    const/high16 v17, 0xe000000

    and-int v17, v13, v17

    move/from16 v4, p10

    if-nez v17, :cond_18

    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->n(F)Z

    move-result v17

    if-eqz v17, :cond_17

    const/high16 v17, 0x4000000

    goto :goto_10

    :cond_17
    const/high16 v17, 0x2000000

    :goto_10
    or-int v0, v0, v17

    :cond_18
    :goto_11
    and-int/lit16 v4, v12, 0x200

    if-eqz v4, :cond_19

    const/high16 v17, 0x30000000

    or-int v0, v0, v17

    move-object/from16 v6, p11

    goto :goto_13

    :cond_19
    const/high16 v17, 0x70000000

    and-int v17, v13, v17

    move-object/from16 v6, p11

    if-nez v17, :cond_1b

    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1a

    const/high16 v17, 0x20000000

    goto :goto_12

    :cond_1a
    const/high16 v17, 0x10000000

    :goto_12
    or-int v0, v0, v17

    :cond_1b
    :goto_13
    and-int/lit16 v6, v12, 0x400

    if-eqz v6, :cond_1c

    or-int/lit8 v6, p15, 0x6

    :goto_14
    move/from16 v17, v6

    goto :goto_16

    :cond_1c
    and-int/lit8 v6, p15, 0xe

    if-nez v6, :cond_1e

    invoke-interface {v11, v14}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    const/4 v6, 0x4

    goto :goto_15

    :cond_1d
    const/4 v6, 0x2

    :goto_15
    or-int v6, p15, v6

    goto :goto_14

    :cond_1e
    move/from16 v17, p15

    :goto_16
    const v6, 0x5b6db6db

    and-int/2addr v6, v0

    const v8, 0x12492492

    if-ne v6, v8, :cond_20

    and-int/lit8 v6, v17, 0xb

    const/4 v8, 0x2

    if-ne v6, v8, :cond_20

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->b()Z

    move-result v8

    if-nez v8, :cond_1f

    goto :goto_17

    .line 2
    :cond_1f
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->g()V

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v12, p11

    move-wide v8, v9

    move-object v1, v11

    move-object/from16 v10, p9

    move/from16 v11, p10

    goto/16 :goto_22

    .line 3
    :cond_20
    :goto_17
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->J()V

    and-int/lit8 v8, v13, 0x1

    const v18, -0x380001

    const v19, -0x70001

    if-eqz v8, :cond_24

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->h()Z

    move-result v8

    if-eqz v8, :cond_21

    goto :goto_18

    .line 4
    :cond_21
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->g()V

    and-int/lit8 v1, v12, 0x20

    if-eqz v1, :cond_22

    and-int v0, v0, v19

    :cond_22
    and-int/lit8 v1, v12, 0x40

    if-eqz v1, :cond_23

    and-int v0, v0, v18

    :cond_23
    move-object/from16 v18, p2

    move/from16 v19, p3

    move-object/from16 v20, p4

    move-wide/from16 v21, p5

    move-object/from16 v25, p9

    move/from16 v26, p10

    move-object/from16 v27, p11

    move v6, v0

    move-wide/from16 v23, v9

    goto/16 :goto_21

    :cond_24
    :goto_18
    if-eqz v3, :cond_25

    .line 5
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_19

    :cond_25
    move-object/from16 v3, p2

    :goto_19
    if-eqz v5, :cond_26

    const/4 v5, 0x1

    goto :goto_1a

    :cond_26
    move/from16 v5, p3

    :goto_1a
    if-eqz v7, :cond_27

    .line 6
    invoke-static {}, Landroidx/compose/ui/graphics/RectangleShapeKt;->a()Landroidx/compose/ui/graphics/Shape;

    move-result-object v7

    goto :goto_1b

    :cond_27
    move-object/from16 v7, p4

    :goto_1b
    and-int/lit8 v8, v12, 0x20

    if-eqz v8, :cond_28

    .line 7
    sget-object v8, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    const/4 v6, 0x6

    invoke-virtual {v8, v11, v6}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/material/Colors;->n()J

    move-result-wide v20

    and-int v0, v0, v19

    move/from16 p2, v5

    move-wide/from16 v5, v20

    goto :goto_1c

    :cond_28
    move/from16 p2, v5

    move-wide/from16 v5, p5

    :goto_1c
    and-int/lit8 v8, v12, 0x40

    if-eqz v8, :cond_29

    shr-int/lit8 v8, v0, 0xf

    and-int/lit8 v8, v8, 0xe

    .line 8
    invoke-static {v5, v6, v11, v8}, Landroidx/compose/material/ColorsKt;->b(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v8

    and-int v0, v0, v18

    goto :goto_1d

    :cond_29
    move-wide v8, v9

    :goto_1d
    if-eqz v1, :cond_2a

    const/4 v1, 0x0

    goto :goto_1e

    :cond_2a
    move-object/from16 v1, p9

    :goto_1e
    if-eqz v2, :cond_2b

    const/4 v2, 0x0

    int-to-float v10, v2

    .line 9
    invoke-static {v10}, Landroidx/compose/ui/unit/Dp;->f(F)F

    move-result v2

    goto :goto_1f

    :cond_2b
    move/from16 v2, p10

    :goto_1f
    if-eqz v4, :cond_2d

    const v4, -0x1d58f75c

    .line 10
    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 11
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    move-result-object v4

    .line 12
    sget-object v10, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v10}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    move-result-object v10

    if-ne v4, v10, :cond_2c

    .line 13
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->a()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v4

    .line 14
    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 15
    :cond_2c
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->Q()V

    check-cast v4, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move/from16 v19, p2

    move-object/from16 v25, v1

    move/from16 v26, v2

    move-object/from16 v18, v3

    move-object/from16 v27, v4

    :goto_20
    move-wide/from16 v21, v5

    move-object/from16 v20, v7

    move-wide/from16 v23, v8

    move v6, v0

    goto :goto_21

    :cond_2d
    move/from16 v19, p2

    move-object/from16 v27, p11

    move-object/from16 v25, v1

    move/from16 v26, v2

    move-object/from16 v18, v3

    goto :goto_20

    :goto_21
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->A()V

    .line 16
    invoke-static {}, Landroidx/compose/material/ElevationOverlayKt;->c()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    .line 17
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/unit/Dp;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/Dp;->l()F

    move-result v0

    add-float v0, v0, v26

    .line 18
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    move-result v5

    const/4 v0, 0x2

    new-array v10, v0, [Landroidx/compose/runtime/ProvidedValue;

    .line 19
    invoke-static {}, Landroidx/compose/material/ContentColorKt;->a()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    invoke-static/range {v23 .. v24}, Landroidx/compose/ui/graphics/Color;->h(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v10, v1

    .line 20
    invoke-static {}, Landroidx/compose/material/ElevationOverlayKt;->c()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->c(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v0

    const/4 v7, 0x1

    aput-object v0, v10, v7

    .line 21
    new-instance v9, Landroidx/compose/material/SurfaceKt$Surface$10;

    move-object v0, v9

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move-wide/from16 v3, v21

    move v8, v7

    move-object/from16 v7, v25

    move v15, v8

    move/from16 v8, v26

    move-object/from16 v28, v9

    move/from16 v9, p0

    move-object/from16 v29, v10

    move-object/from16 v10, v27

    move-object/from16 v30, v11

    move/from16 v11, v19

    move-object/from16 v12, p1

    move-object/from16 v13, p12

    move/from16 v14, v17

    invoke-direct/range {v0 .. v14}, Landroidx/compose/material/SurfaceKt$Surface$10;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JFILandroidx/compose/foundation/BorderStroke;FZLandroidx/compose/foundation/interaction/MutableInteractionSource;ZLe8/l;Le8/p;I)V

    const v0, -0x129383b0

    move-object/from16 v2, v28

    move-object/from16 v1, v30

    invoke-static {v1, v0, v15, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    const/16 v2, 0x38

    move-object/from16 v3, v29

    .line 22
    invoke-static {v3, v0, v1, v2}, Landroidx/compose/runtime/CompositionLocalKt;->b([Landroidx/compose/runtime/ProvidedValue;Le8/p;Landroidx/compose/runtime/Composer;I)V

    move-object/from16 v3, v18

    move/from16 v4, v19

    move-object/from16 v5, v20

    move-wide/from16 v6, v21

    move-wide/from16 v8, v23

    move-object/from16 v10, v25

    move/from16 v11, v26

    move-object/from16 v12, v27

    .line 23
    :goto_22
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-nez v15, :cond_2e

    goto :goto_23

    :cond_2e
    new-instance v14, Landroidx/compose/material/SurfaceKt$Surface$11;

    move-object v0, v14

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v13, p12

    move-object/from16 v31, v14

    move/from16 v14, p14

    move-object/from16 v32, v15

    move/from16 v15, p15

    move/from16 v16, p16

    invoke-direct/range {v0 .. v16}, Landroidx/compose/material/SurfaceKt$Surface$11;-><init>(ZLe8/l;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Le8/p;III)V

    move-object/from16 v1, v31

    move-object/from16 v0, v32

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    :goto_23
    return-void
.end method

.method public static final synthetic f(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JLandroidx/compose/foundation/BorderStroke;F)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static/range {p0 .. p5}, Landroidx/compose/material/SurfaceKt;->h(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JLandroidx/compose/foundation/BorderStroke;F)Landroidx/compose/ui/Modifier;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic g(JLandroidx/compose/material/ElevationOverlay;FLandroidx/compose/runtime/Composer;I)J
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static/range {p0 .. p5}, Landroidx/compose/material/SurfaceKt;->i(JLandroidx/compose/material/ElevationOverlay;FLandroidx/compose/runtime/Composer;I)J

    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method private static final h(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JLandroidx/compose/foundation/BorderStroke;F)Landroidx/compose/ui/Modifier;
    .locals 10

    .line 1
    const/4 v3, 0x0

    .line 2
    .line 3
    const-wide/16 v4, 0x0

    .line 4
    .line 5
    const-wide/16 v6, 0x0

    .line 6
    .line 7
    const/16 v8, 0x18

    .line 8
    const/4 v9, 0x0

    .line 9
    move-object v0, p0

    .line 10
    move v1, p5

    .line 11
    move-object v2, p1

    .line 12
    .line 13
    .line 14
    invoke-static/range {v0 .. v9}, Landroidx/compose/ui/draw/ShadowKt;->b(Landroidx/compose/ui/Modifier;FLandroidx/compose/ui/graphics/Shape;ZJJILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 15
    move-result-object p0

    .line 16
    .line 17
    if-eqz p4, :cond_0

    .line 18
    .line 19
    sget-object p5, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 20
    .line 21
    .line 22
    invoke-static {p5, p4, p1}, Landroidx/compose/foundation/BorderKt;->f(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 23
    move-result-object p4

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_0
    sget-object p4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-interface {p0, p4}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 30
    move-result-object p0

    .line 31
    .line 32
    .line 33
    invoke-static {p0, p2, p3, p1}, Landroidx/compose/foundation/BackgroundKt;->a(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 34
    move-result-object p0

    .line 35
    .line 36
    .line 37
    invoke-static {p0, p1}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method

.method private static final i(JLandroidx/compose/material/ElevationOverlay;FLandroidx/compose/runtime/Composer;I)J
    .locals 7
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
    .end annotation

    .line 1
    .line 2
    .line 3
    const v0, 0x5d144bf8

    .line 4
    .line 5
    .line 6
    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 7
    .line 8
    sget-object v0, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 9
    const/4 v1, 0x6

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p4, v1}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/compose/material/Colors;->n()J

    .line 17
    move-result-wide v0

    .line 18
    .line 19
    .line 20
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/graphics/Color;->n(JJ)Z

    .line 21
    move-result v0

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    if-eqz p2, :cond_0

    .line 26
    .line 27
    and-int/lit8 v0, p5, 0xe

    .line 28
    .line 29
    shr-int/lit8 v1, p5, 0x3

    .line 30
    .line 31
    and-int/lit8 v1, v1, 0x70

    .line 32
    or-int/2addr v0, v1

    .line 33
    .line 34
    shl-int/lit8 p5, p5, 0x3

    .line 35
    .line 36
    and-int/lit16 p5, p5, 0x380

    .line 37
    .line 38
    or-int v6, v0, p5

    .line 39
    move-object v1, p2

    .line 40
    move-wide v2, p0

    .line 41
    move v4, p3

    .line 42
    move-object v5, p4

    .line 43
    .line 44
    .line 45
    invoke-interface/range {v1 .. v6}, Landroidx/compose/material/ElevationOverlay;->a(JFLandroidx/compose/runtime/Composer;I)J

    .line 46
    move-result-wide p0

    .line 47
    .line 48
    .line 49
    :cond_0
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 50
    return-wide p0
.end method
