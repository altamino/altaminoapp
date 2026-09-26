.class public final Landroidx/compose/material/TextFieldImplKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextFieldImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextFieldImpl.kt\nandroidx/compose/material/TextFieldImplKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 Color.kt\nandroidx/compose/ui/graphics/ColorKt\n+ 5 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,374:1\n50#2:375\n49#2:376\n1057#3,6:377\n666#4:383\n654#4:384\n666#4:385\n654#4:386\n155#5:387\n155#5:388\n155#5:389\n*S KotlinDebug\n*F\n+ 1 TextFieldImpl.kt\nandroidx/compose/material/TextFieldImplKt\n*L\n81#1:375\n81#1:376\n81#1:377,6\n112#1:383\n112#1:384\n115#1:385\n115#1:386\n371#1:387\n372#1:388\n374#1:389\n*E\n"
.end annotation


# static fields
.field public static final AnimationDuration:I = 0x96

.field private static final HorizontalIconPadding:F

.field private static final IconDefaultSizeModifier:Landroidx/compose/ui/Modifier;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final LabelId:Ljava/lang/String; = "Label"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final LeadingId:Ljava/lang/String; = "Leading"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final PlaceholderAnimationDelayOrDuration:I = 0x43

.field private static final PlaceholderAnimationDuration:I = 0x53

.field public static final PlaceholderId:Ljava/lang/String; = "Hint"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TextFieldId:Ljava/lang/String; = "TextField"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TextFieldPadding:F

.field public static final TrailingId:Ljava/lang/String; = "Trailing"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final ZeroConstraints:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-static {v0, v0, v0, v0}, Landroidx/compose/ui/unit/ConstraintsKt;->a(IIII)J

    .line 5
    move-result-wide v0

    .line 6
    .line 7
    sput-wide v0, Landroidx/compose/material/TextFieldImplKt;->ZeroConstraints:J

    .line 8
    .line 9
    const/16 v0, 0x10

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
    sput v0, Landroidx/compose/material/TextFieldImplKt;->TextFieldPadding:F

    .line 17
    .line 18
    const/16 v0, 0xc

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
    sput v0, Landroidx/compose/material/TextFieldImplKt;->HorizontalIconPadding:F

    .line 26
    .line 27
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 28
    .line 29
    const/16 v1, 0x30

    .line 30
    int-to-float v1, v1

    .line 31
    .line 32
    .line 33
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 34
    move-result v2

    .line 35
    .line 36
    .line 37
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 38
    move-result v1

    .line 39
    .line 40
    .line 41
    invoke-static {v0, v2, v1}, Landroidx/compose/foundation/layout/SizeKt;->g(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    sput-object v0, Landroidx/compose/material/TextFieldImplKt;->IconDefaultSizeModifier:Landroidx/compose/ui/Modifier;

    .line 45
    return-void
.end method

.method public static final a(Landroidx/compose/material/TextFieldType;Ljava/lang/String;Le8/p;Landroidx/compose/ui/text/input/VisualTransformation;Le8/p;Le8/p;Le8/p;Le8/p;ZZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/material/TextFieldColors;Le8/p;Landroidx/compose/runtime/Composer;III)V
    .locals 37
    .param p0    # Landroidx/compose/material/TextFieldType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/text/input/VisualTransformation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Landroidx/compose/foundation/interaction/InteractionSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p12    # Landroidx/compose/foundation/layout/PaddingValues;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p13    # Landroidx/compose/material/TextFieldColors;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/TextFieldType;",
            "Ljava/lang/String;",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/ui/text/input/VisualTransformation;",
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
            ">;ZZZ",
            "Landroidx/compose/foundation/interaction/InteractionSource;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Landroidx/compose/material/TextFieldColors;",
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

    move-object/from16 v14, p1

    move-object/from16 v13, p2

    move-object/from16 v12, p3

    move-object/from16 v11, p4

    move-object/from16 v10, p11

    move-object/from16 v9, p12

    move-object/from16 v8, p13

    move/from16 v7, p16

    move/from16 v6, p17

    move/from16 v5, p18

    const-string v0, "type"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "innerTextField"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visualTransformation"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interactionSource"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentPadding"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "colors"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x2a78ed05

    move-object/from16 v1, p15

    .line 1
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    move-result-object v4

    and-int/lit8 v0, v5, 0x1

    if-eqz v0, :cond_0

    or-int/lit8 v0, v7, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v0, v7, 0xe

    if-nez v0, :cond_2

    invoke-interface {v4, v15}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v7

    goto :goto_1

    :cond_2
    move v0, v7

    :goto_1
    and-int/lit8 v3, v5, 0x2

    const/16 v16, 0x10

    const/16 v17, 0x20

    if-eqz v3, :cond_3

    or-int/lit8 v0, v0, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v3, v7, 0x70

    if-nez v3, :cond_5

    invoke-interface {v4, v14}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move/from16 v3, v17

    goto :goto_2

    :cond_4
    move/from16 v3, v16

    :goto_2
    or-int/2addr v0, v3

    :cond_5
    :goto_3
    and-int/lit8 v3, v5, 0x4

    const/16 v18, 0x80

    const/16 v19, 0x100

    if-eqz v3, :cond_6

    or-int/lit16 v0, v0, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v3, v7, 0x380

    if-nez v3, :cond_8

    invoke-interface {v4, v13}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move/from16 v3, v19

    goto :goto_4

    :cond_7
    move/from16 v3, v18

    :goto_4
    or-int/2addr v0, v3

    :cond_8
    :goto_5
    and-int/lit8 v3, v5, 0x8

    const/16 v20, 0x400

    const/16 v21, 0x800

    if-eqz v3, :cond_9

    or-int/lit16 v0, v0, 0xc00

    goto :goto_7

    :cond_9
    and-int/lit16 v3, v7, 0x1c00

    if-nez v3, :cond_b

    invoke-interface {v4, v12}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    move/from16 v3, v21

    goto :goto_6

    :cond_a
    move/from16 v3, v20

    :goto_6
    or-int/2addr v0, v3

    :cond_b
    :goto_7
    and-int/lit8 v3, v5, 0x10

    const/16 v22, 0x2000

    const/16 v23, 0x4000

    if-eqz v3, :cond_c

    or-int/lit16 v0, v0, 0x6000

    goto :goto_9

    :cond_c
    const v3, 0xe000

    and-int/2addr v3, v7

    if-nez v3, :cond_e

    invoke-interface {v4, v11}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    move/from16 v3, v23

    goto :goto_8

    :cond_d
    move/from16 v3, v22

    :goto_8
    or-int/2addr v0, v3

    :cond_e
    :goto_9
    and-int/lit8 v3, v5, 0x20

    if-eqz v3, :cond_f

    const/high16 v24, 0x30000

    or-int v0, v0, v24

    move-object/from16 v1, p5

    goto :goto_b

    :cond_f
    const/high16 v24, 0x70000

    and-int v24, v7, v24

    move-object/from16 v1, p5

    if-nez v24, :cond_11

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_10

    const/high16 v24, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v24, 0x10000

    :goto_a
    or-int v0, v0, v24

    :cond_11
    :goto_b
    and-int/lit8 v24, v5, 0x40

    if-eqz v24, :cond_12

    const/high16 v25, 0x180000

    or-int v0, v0, v25

    move-object/from16 v2, p6

    goto :goto_d

    :cond_12
    const/high16 v25, 0x380000

    and-int v25, v7, v25

    move-object/from16 v2, p6

    if-nez v25, :cond_14

    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_13

    const/high16 v26, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v26, 0x80000

    :goto_c
    or-int v0, v0, v26

    :cond_14
    :goto_d
    and-int/lit16 v1, v5, 0x80

    if-eqz v1, :cond_15

    const/high16 v26, 0xc00000

    or-int v0, v0, v26

    move-object/from16 v2, p7

    goto :goto_f

    :cond_15
    const/high16 v26, 0x1c00000

    and-int v26, v7, v26

    move-object/from16 v2, p7

    if-nez v26, :cond_17

    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_16

    const/high16 v26, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v26, 0x400000

    :goto_e
    or-int v0, v0, v26

    :cond_17
    :goto_f
    and-int/lit16 v2, v5, 0x100

    if-eqz v2, :cond_18

    const/high16 v26, 0x6000000

    or-int v0, v0, v26

    move/from16 v13, p8

    goto :goto_11

    :cond_18
    const/high16 v26, 0xe000000

    and-int v26, v7, v26

    move/from16 v13, p8

    if-nez v26, :cond_1a

    invoke-interface {v4, v13}, Landroidx/compose/runtime/Composer;->m(Z)Z

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
    and-int/lit16 v13, v5, 0x200

    if-eqz v13, :cond_1c

    const/high16 v26, 0x30000000

    or-int v0, v0, v26

    move/from16 v7, p9

    :cond_1b
    :goto_12
    move/from16 v26, v0

    goto :goto_14

    :cond_1c
    const/high16 v26, 0x70000000

    and-int v26, v7, v26

    move/from16 v7, p9

    if-nez v26, :cond_1b

    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->m(Z)Z

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
    and-int/lit16 v0, v5, 0x400

    if-eqz v0, :cond_1e

    or-int/lit8 v25, v6, 0x6

    move/from16 v7, p10

    goto :goto_16

    :cond_1e
    and-int/lit8 v27, v6, 0xe

    move/from16 v7, p10

    if-nez v27, :cond_20

    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->m(Z)Z

    move-result v27

    if-eqz v27, :cond_1f

    const/16 v25, 0x4

    goto :goto_15

    :cond_1f
    const/16 v25, 0x2

    :goto_15
    or-int v25, v6, v25

    goto :goto_16

    :cond_20
    move/from16 v25, v6

    :goto_16
    and-int/lit16 v7, v5, 0x800

    if-eqz v7, :cond_22

    or-int/lit8 v25, v25, 0x30

    :cond_21
    :goto_17
    move/from16 v7, v25

    goto :goto_18

    :cond_22
    and-int/lit8 v7, v6, 0x70

    if-nez v7, :cond_21

    invoke-interface {v4, v10}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_23

    move/from16 v16, v17

    :cond_23
    or-int v25, v25, v16

    goto :goto_17

    :goto_18
    and-int/lit16 v15, v5, 0x1000

    if-eqz v15, :cond_24

    or-int/lit16 v7, v7, 0x180

    goto :goto_19

    :cond_24
    and-int/lit16 v15, v6, 0x380

    if-nez v15, :cond_26

    invoke-interface {v4, v9}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_25

    move/from16 v18, v19

    :cond_25
    or-int v7, v7, v18

    :cond_26
    :goto_19
    and-int/lit16 v15, v5, 0x2000

    if-eqz v15, :cond_27

    or-int/lit16 v7, v7, 0xc00

    goto :goto_1a

    :cond_27
    and-int/lit16 v15, v6, 0x1c00

    if-nez v15, :cond_29

    invoke-interface {v4, v8}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_28

    move/from16 v20, v21

    :cond_28
    or-int v7, v7, v20

    :cond_29
    :goto_1a
    and-int/lit16 v15, v5, 0x4000

    if-eqz v15, :cond_2a

    or-int/lit16 v7, v7, 0x6000

    move-object/from16 v5, p14

    goto :goto_1b

    :cond_2a
    const v16, 0xe000

    and-int v16, v6, v16

    move-object/from16 v5, p14

    if-nez v16, :cond_2c

    invoke-interface {v4, v5}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2b

    move/from16 v22, v23

    :cond_2b
    or-int v7, v7, v22

    :cond_2c
    :goto_1b
    const v16, 0x5b6db6db

    and-int v5, v26, v16

    const v6, 0x12492492

    if-ne v5, v6, :cond_2e

    const v5, 0xb6db

    and-int/2addr v5, v7

    const/16 v6, 0x2492

    if-ne v5, v6, :cond_2e

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->b()Z

    move-result v5

    if-nez v5, :cond_2d

    goto :goto_1c

    .line 2
    :cond_2d
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->g()V

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v15, p14

    move-object v12, v4

    goto/16 :goto_2a

    :cond_2e
    :goto_1c
    const/4 v5, 0x0

    if-eqz v3, :cond_2f

    move-object/from16 v18, v5

    goto :goto_1d

    :cond_2f
    move-object/from16 v18, p5

    :goto_1d
    if-eqz v24, :cond_30

    move-object/from16 v19, v5

    goto :goto_1e

    :cond_30
    move-object/from16 v19, p6

    :goto_1e
    if-eqz v1, :cond_31

    move-object/from16 v20, v5

    goto :goto_1f

    :cond_31
    move-object/from16 v20, p7

    :goto_1f
    const/16 v16, 0x0

    if-eqz v2, :cond_32

    move/from16 v21, v16

    goto :goto_20

    :cond_32
    move/from16 v21, p8

    :goto_20
    const/4 v6, 0x1

    if-eqz v13, :cond_33

    move/from16 v22, v6

    goto :goto_21

    :cond_33
    move/from16 v22, p9

    :goto_21
    if-eqz v0, :cond_34

    move/from16 v23, v16

    goto :goto_22

    :cond_34
    move/from16 v23, p10

    :goto_22
    if-eqz v15, :cond_35

    move-object/from16 v24, v5

    goto :goto_23

    :cond_35
    move-object/from16 v24, p14

    :goto_23
    const v0, 0x1e7b2b64

    .line 3
    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 4
    invoke-interface {v4, v14}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v4, v12}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 5
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_36

    .line 6
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    move-result-object v0

    if-ne v1, v0, :cond_37

    .line 7
    :cond_36
    new-instance v0, Landroidx/compose/ui/text/AnnotatedString;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x6

    const/4 v5, 0x0

    move-object/from16 p5, v0

    move-object/from16 p6, p1

    move-object/from16 p7, v1

    move-object/from16 p8, v2

    move/from16 p9, v3

    move-object/from16 p10, v5

    invoke-direct/range {p5 .. p10}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/k;)V

    invoke-interface {v12, v0}, Landroidx/compose/ui/text/input/VisualTransformation;->a(Landroidx/compose/ui/text/AnnotatedString;)Landroidx/compose/ui/text/input/TransformedText;

    move-result-object v1

    .line 8
    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 9
    :cond_37
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->Q()V

    check-cast v1, Landroidx/compose/ui/text/input/TransformedText;

    .line 10
    invoke-virtual {v1}, Landroidx/compose/ui/text/input/TransformedText;->b()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/text/AnnotatedString;->g()Ljava/lang/String;

    move-result-object v13

    shr-int/lit8 v0, v7, 0x3

    and-int/lit8 v0, v0, 0xe

    .line 11
    invoke-static {v10, v4, v0}, Landroidx/compose/foundation/interaction/FocusInteractionKt;->a(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 12
    sget-object v0, Landroidx/compose/material/InputPhase;->Focused:Landroidx/compose/material/InputPhase;

    :goto_24
    move-object v15, v0

    goto :goto_25

    .line 13
    :cond_38
    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_39

    sget-object v0, Landroidx/compose/material/InputPhase;->UnfocusedEmpty:Landroidx/compose/material/InputPhase;

    goto :goto_24

    .line 14
    :cond_39
    sget-object v0, Landroidx/compose/material/InputPhase;->UnfocusedNotEmpty:Landroidx/compose/material/InputPhase;

    goto :goto_24

    .line 15
    :goto_25
    new-instance v5, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$labelColor$1;

    move-object v0, v5

    move-object/from16 v1, p13

    move/from16 v2, v22

    move/from16 v3, v23

    move-object v14, v4

    move-object/from16 v4, p11

    move-object v12, v5

    move/from16 v5, v26

    move v6, v7

    invoke-direct/range {v0 .. v6}, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$labelColor$1;-><init>(Landroidx/compose/material/TextFieldColors;ZZLandroidx/compose/foundation/interaction/InteractionSource;II)V

    .line 16
    sget-object v0, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    const/4 v1, 0x6

    invoke-virtual {v0, v14, v1}, Landroidx/compose/material/MaterialTheme;->c(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Typography;

    move-result-object v2

    .line 17
    invoke-virtual {v2}, Landroidx/compose/material/Typography;->g()Landroidx/compose/ui/text/TextStyle;

    move-result-object v3

    .line 18
    invoke-virtual {v2}, Landroidx/compose/material/Typography;->d()Landroidx/compose/ui/text/TextStyle;

    move-result-object v2

    .line 19
    invoke-virtual {v3}, Landroidx/compose/ui/text/TextStyle;->g()J

    move-result-wide v4

    sget-object v6, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    move-object/from16 p6, v2

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/Color$Companion;->f()J

    move-result-wide v1

    invoke-static {v4, v5, v1, v2}, Landroidx/compose/ui/graphics/Color;->n(JJ)Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-virtual/range {p6 .. p6}, Landroidx/compose/ui/text/TextStyle;->g()J

    move-result-wide v1

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/Color$Companion;->f()J

    move-result-wide v4

    invoke-static {v1, v2, v4, v5}, Landroidx/compose/ui/graphics/Color;->n(JJ)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 20
    :cond_3a
    invoke-virtual {v3}, Landroidx/compose/ui/text/TextStyle;->g()J

    move-result-wide v1

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/Color$Companion;->f()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/graphics/Color;->n(JJ)Z

    move-result v1

    if-nez v1, :cond_3c

    invoke-virtual/range {p6 .. p6}, Landroidx/compose/ui/text/TextStyle;->g()J

    move-result-wide v1

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/Color$Companion;->f()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/graphics/Color;->n(JJ)Z

    move-result v1

    if-eqz v1, :cond_3c

    :cond_3b
    const/16 v17, 0x1

    goto :goto_26

    :cond_3c
    move/from16 v17, v16

    .line 21
    :goto_26
    sget-object v25, Landroidx/compose/material/TextFieldTransitionScope;->INSTANCE:Landroidx/compose/material/TextFieldTransitionScope;

    const v1, 0x7ee81d0e

    .line 22
    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    const/4 v1, 0x6

    .line 23
    invoke-virtual {v0, v14, v1}, Landroidx/compose/material/MaterialTheme;->c(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Typography;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/material/Typography;->d()Landroidx/compose/ui/text/TextStyle;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/text/TextStyle;->g()J

    move-result-wide v1

    if-eqz v17, :cond_3e

    .line 24
    invoke-virtual {v6}, Landroidx/compose/ui/graphics/Color$Companion;->f()J

    move-result-wide v3

    cmp-long v3, v1, v3

    if-eqz v3, :cond_3d

    goto :goto_27

    .line 25
    :cond_3d
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v12, v15, v14, v1}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color;->v()J

    move-result-wide v1

    :cond_3e
    :goto_27
    move-wide/from16 v28, v1

    .line 26
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->Q()V

    const/4 v1, 0x6

    .line 27
    invoke-virtual {v0, v14, v1}, Landroidx/compose/material/MaterialTheme;->c(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Typography;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/material/Typography;->g()Landroidx/compose/ui/text/TextStyle;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/text/TextStyle;->g()J

    move-result-wide v0

    if-eqz v17, :cond_40

    .line 28
    invoke-virtual {v6}, Landroidx/compose/ui/graphics/Color$Companion;->f()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-eqz v2, :cond_3f

    goto :goto_28

    .line 29
    :cond_3f
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v12, v15, v14, v0}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color;->v()J

    move-result-wide v0

    :cond_40
    :goto_28
    move-wide/from16 v30, v0

    if-eqz v11, :cond_41

    const/16 v27, 0x1

    goto :goto_29

    :cond_41
    move/from16 v27, v16

    .line 30
    :goto_29
    new-instance v6, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;

    move-object v0, v6

    move-object/from16 v1, p4

    move-object/from16 v2, v18

    move-object v3, v13

    move/from16 v4, v23

    move v5, v7

    move-object v13, v6

    move-object/from16 v6, p13

    move/from16 v7, v22

    move-object/from16 v8, p11

    move/from16 v9, v26

    move-object/from16 v10, v19

    move-object/from16 v11, v20

    move-object/from16 v26, v12

    move-object/from16 v12, p0

    move-object/from16 v32, v13

    move-object/from16 v13, p2

    move-object/from16 v33, v14

    move/from16 v14, v21

    move-object/from16 v34, v15

    move-object/from16 v15, p12

    move/from16 v16, v17

    move-object/from16 v17, v24

    invoke-direct/range {v0 .. v17}, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;-><init>(Le8/p;Le8/p;Ljava/lang/String;ZILandroidx/compose/material/TextFieldColors;ZLandroidx/compose/foundation/interaction/InteractionSource;ILe8/p;Le8/p;Landroidx/compose/material/TextFieldType;Le8/p;ZLandroidx/compose/foundation/layout/PaddingValues;ZLe8/p;)V

    const v0, 0x146073d8

    move-object/from16 v2, v32

    move-object/from16 v12, v33

    const/4 v1, 0x1

    invoke-static {v12, v0, v1, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v9

    const/high16 v11, 0x1b0000

    move-object/from16 v1, v25

    move-object/from16 v2, v34

    move-wide/from16 v3, v28

    move-wide/from16 v5, v30

    move-object/from16 v7, v26

    move/from16 v8, v27

    move-object v10, v12

    .line 31
    invoke-virtual/range {v1 .. v11}, Landroidx/compose/material/TextFieldTransitionScope;->a(Landroidx/compose/material/InputPhase;JJLe8/q;ZLe8/t;Landroidx/compose/runtime/Composer;I)V

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    move-object/from16 v8, v20

    move/from16 v9, v21

    move/from16 v10, v22

    move/from16 v11, v23

    move-object/from16 v15, v24

    .line 32
    :goto_2a
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v14

    if-nez v14, :cond_42

    goto :goto_2b

    :cond_42
    new-instance v13, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$4;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v12, p11

    move-object/from16 v35, v13

    move-object/from16 v13, p12

    move-object/from16 v36, v14

    move-object/from16 v14, p13

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    invoke-direct/range {v0 .. v18}, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$4;-><init>(Landroidx/compose/material/TextFieldType;Ljava/lang/String;Le8/p;Landroidx/compose/ui/text/input/VisualTransformation;Le8/p;Le8/p;Le8/p;Le8/p;ZZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/material/TextFieldColors;Le8/p;III)V

    move-object/from16 v1, v35

    move-object/from16 v0, v36

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    :goto_2b
    return-void
.end method

.method public static final b(JLandroidx/compose/ui/text/TextStyle;Ljava/lang/Float;Le8/p;Landroidx/compose/runtime/Composer;II)V
    .locals 15
    .param p2    # Landroidx/compose/ui/text/TextStyle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Float;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableOpenTarget;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroidx/compose/ui/text/TextStyle;",
            "Ljava/lang/Float;",
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
    move-object/from16 v6, p4

    .line 3
    .line 4
    move/from16 v7, p6

    .line 5
    .line 6
    const-string v0, "content"

    .line 7
    .line 8
    .line 9
    invoke-static {v6, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const v0, -0x17cfc8dc

    .line 13
    .line 14
    move-object/from16 v1, p5

    .line 15
    .line 16
    .line 17
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 18
    move-result-object v8

    .line 19
    .line 20
    and-int/lit8 v0, p7, 0x1

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    or-int/lit8 v0, v7, 0x6

    .line 25
    move-wide v9, p0

    .line 26
    goto :goto_1

    .line 27
    .line 28
    :cond_0
    and-int/lit8 v0, v7, 0xe

    .line 29
    move-wide v9, p0

    .line 30
    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    .line 34
    invoke-interface {v8, v9, v10}, Landroidx/compose/runtime/Composer;->q(J)Z

    .line 35
    move-result v0

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    const/4 v0, 0x4

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v0, 0x2

    .line 41
    :goto_0
    or-int/2addr v0, v7

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    move v0, v7

    .line 44
    .line 45
    :goto_1
    and-int/lit8 v1, p7, 0x2

    .line 46
    .line 47
    if-eqz v1, :cond_4

    .line 48
    .line 49
    or-int/lit8 v0, v0, 0x30

    .line 50
    .line 51
    :cond_3
    move-object/from16 v2, p2

    .line 52
    goto :goto_3

    .line 53
    .line 54
    :cond_4
    and-int/lit8 v2, v7, 0x70

    .line 55
    .line 56
    if-nez v2, :cond_3

    .line 57
    .line 58
    move-object/from16 v2, p2

    .line 59
    .line 60
    .line 61
    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 62
    move-result v3

    .line 63
    .line 64
    if-eqz v3, :cond_5

    .line 65
    .line 66
    const/16 v3, 0x20

    .line 67
    goto :goto_2

    .line 68
    .line 69
    :cond_5
    const/16 v3, 0x10

    .line 70
    :goto_2
    or-int/2addr v0, v3

    .line 71
    .line 72
    :goto_3
    and-int/lit8 v3, p7, 0x4

    .line 73
    .line 74
    if-eqz v3, :cond_7

    .line 75
    .line 76
    or-int/lit16 v0, v0, 0x180

    .line 77
    .line 78
    :cond_6
    move-object/from16 v4, p3

    .line 79
    goto :goto_5

    .line 80
    .line 81
    :cond_7
    and-int/lit16 v4, v7, 0x380

    .line 82
    .line 83
    if-nez v4, :cond_6

    .line 84
    .line 85
    move-object/from16 v4, p3

    .line 86
    .line 87
    .line 88
    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 89
    move-result v5

    .line 90
    .line 91
    if-eqz v5, :cond_8

    .line 92
    .line 93
    const/16 v5, 0x100

    .line 94
    goto :goto_4

    .line 95
    .line 96
    :cond_8
    const/16 v5, 0x80

    .line 97
    :goto_4
    or-int/2addr v0, v5

    .line 98
    .line 99
    :goto_5
    and-int/lit8 v5, p7, 0x8

    .line 100
    .line 101
    if-eqz v5, :cond_a

    .line 102
    .line 103
    or-int/lit16 v0, v0, 0xc00

    .line 104
    :cond_9
    :goto_6
    move v11, v0

    .line 105
    goto :goto_8

    .line 106
    .line 107
    :cond_a
    and-int/lit16 v5, v7, 0x1c00

    .line 108
    .line 109
    if-nez v5, :cond_9

    .line 110
    .line 111
    .line 112
    invoke-interface {v8, v6}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 113
    move-result v5

    .line 114
    .line 115
    if-eqz v5, :cond_b

    .line 116
    .line 117
    const/16 v5, 0x800

    .line 118
    goto :goto_7

    .line 119
    .line 120
    :cond_b
    const/16 v5, 0x400

    .line 121
    :goto_7
    or-int/2addr v0, v5

    .line 122
    goto :goto_6

    .line 123
    .line 124
    :goto_8
    and-int/lit16 v0, v11, 0x16db

    .line 125
    .line 126
    const/16 v5, 0x492

    .line 127
    .line 128
    if-ne v0, v5, :cond_d

    .line 129
    .line 130
    .line 131
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->b()Z

    .line 132
    move-result v0

    .line 133
    .line 134
    if-nez v0, :cond_c

    .line 135
    goto :goto_9

    .line 136
    .line 137
    .line 138
    :cond_c
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->g()V

    .line 139
    move-object v3, v2

    .line 140
    goto :goto_e

    .line 141
    :cond_d
    :goto_9
    const/4 v0, 0x0

    .line 142
    .line 143
    if-eqz v1, :cond_e

    .line 144
    move-object v12, v0

    .line 145
    goto :goto_a

    .line 146
    :cond_e
    move-object v12, v2

    .line 147
    .line 148
    :goto_a
    if-eqz v3, :cond_f

    .line 149
    move-object v13, v0

    .line 150
    goto :goto_b

    .line 151
    :cond_f
    move-object v13, v4

    .line 152
    .line 153
    :goto_b
    new-instance v14, Landroidx/compose/material/TextFieldImplKt$Decoration$colorAndEmphasis$1;

    .line 154
    move-object v0, v14

    .line 155
    move-wide v1, p0

    .line 156
    move-object v3, v13

    .line 157
    .line 158
    move-object/from16 v4, p4

    .line 159
    move v5, v11

    .line 160
    .line 161
    .line 162
    invoke-direct/range {v0 .. v5}, Landroidx/compose/material/TextFieldImplKt$Decoration$colorAndEmphasis$1;-><init>(JLjava/lang/Float;Le8/p;I)V

    .line 163
    .line 164
    .line 165
    const v0, 0x1d7c49ae

    .line 166
    const/4 v1, 0x1

    .line 167
    .line 168
    .line 169
    invoke-static {v8, v0, v1, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 170
    move-result-object v0

    .line 171
    .line 172
    if-eqz v12, :cond_10

    .line 173
    .line 174
    .line 175
    const v1, -0x77cd7260

    .line 176
    .line 177
    .line 178
    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 179
    .line 180
    shr-int/lit8 v1, v11, 0x3

    .line 181
    .line 182
    and-int/lit8 v1, v1, 0xe

    .line 183
    .line 184
    or-int/lit8 v1, v1, 0x30

    .line 185
    .line 186
    .line 187
    invoke-static {v12, v0, v8, v1}, Landroidx/compose/material/TextKt;->a(Landroidx/compose/ui/text/TextStyle;Le8/p;Landroidx/compose/runtime/Composer;I)V

    .line 188
    .line 189
    .line 190
    :goto_c
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->Q()V

    .line 191
    goto :goto_d

    .line 192
    .line 193
    .line 194
    :cond_10
    const v1, -0x77cd722c

    .line 195
    .line 196
    .line 197
    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 198
    const/4 v1, 0x6

    .line 199
    .line 200
    .line 201
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 202
    move-result-object v1

    .line 203
    .line 204
    .line 205
    invoke-interface {v0, v8, v1}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    goto :goto_c

    .line 207
    :goto_d
    move-object v3, v12

    .line 208
    move-object v4, v13

    .line 209
    .line 210
    .line 211
    :goto_e
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 212
    move-result-object v8

    .line 213
    .line 214
    if-nez v8, :cond_11

    .line 215
    goto :goto_f

    .line 216
    .line 217
    :cond_11
    new-instance v11, Landroidx/compose/material/TextFieldImplKt$Decoration$1;

    .line 218
    move-object v0, v11

    .line 219
    move-wide v1, p0

    .line 220
    .line 221
    move-object/from16 v5, p4

    .line 222
    .line 223
    move/from16 v6, p6

    .line 224
    .line 225
    move/from16 v7, p7

    .line 226
    .line 227
    .line 228
    invoke-direct/range {v0 .. v7}, Landroidx/compose/material/TextFieldImplKt$Decoration$1;-><init>(JLandroidx/compose/ui/text/TextStyle;Ljava/lang/Float;Le8/p;II)V

    .line 229
    .line 230
    .line 231
    invoke-interface {v8, v11}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 232
    :goto_f
    return-void
.end method

.method public static final c()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/TextFieldImplKt;->HorizontalIconPadding:F

    return v0
.end method

.method public static final d()Landroidx/compose/ui/Modifier;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/material/TextFieldImplKt;->IconDefaultSizeModifier:Landroidx/compose/ui/Modifier;

    return-object v0
.end method

.method public static final e(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;
    .locals 2
    .param p0    # Landroidx/compose/ui/layout/IntrinsicMeasurable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p0}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->e()Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 10
    .line 11
    instance-of v0, p0, Landroidx/compose/ui/layout/LayoutIdParentData;

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    check-cast p0, Landroidx/compose/ui/layout/LayoutIdParentData;

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object p0, v1

    .line 19
    .line 20
    :goto_0
    if-eqz p0, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-interface {p0}, Landroidx/compose/ui/layout/LayoutIdParentData;->getLayoutId()Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    :cond_1
    return-object v1
.end method

.method public static final f()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/TextFieldImplKt;->TextFieldPadding:F

    return v0
.end method

.method public static final g()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/material/TextFieldImplKt;->ZeroConstraints:J

    return-wide v0
.end method

.method public static final h(Landroidx/compose/ui/layout/Placeable;)I
    .locals 0
    .param p0    # Landroidx/compose/ui/layout/Placeable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 6
    move-result p0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return p0
.end method

.method public static final i(Landroidx/compose/ui/layout/Placeable;)I
    .locals 0
    .param p0    # Landroidx/compose/ui/layout/Placeable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->Q0()I

    .line 6
    move-result p0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return p0
.end method
