.class public final Landroidx/compose/material/OutlinedTextFieldKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOutlinedTextField.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OutlinedTextField.kt\nandroidx/compose/material/OutlinedTextFieldKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 5 Color.kt\nandroidx/compose/ui/graphics/ColorKt\n+ 6 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 7 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 8 Dp.kt\nandroidx/compose/ui/unit/Dp\n+ 9 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,831:1\n76#2:832\n76#2:842\n76#2:861\n76#2:863\n76#2:894\n76#2:931\n76#2:975\n76#2:1013\n25#3:833\n25#3:843\n83#3,3:852\n460#3,13:875\n460#3,13:906\n473#3,3:920\n460#3,13:943\n473#3,3:957\n460#3,13:987\n473#3,3:1001\n460#3,13:1025\n473#3,3:1039\n473#3,3:1044\n1057#4,6:834\n1057#4,6:844\n1057#4,6:855\n666#5:840\n654#5:841\n666#5:850\n654#5:851\n75#6:862\n76#6,11:864\n75#6:893\n76#6,11:895\n89#6:923\n75#6:930\n76#6,11:932\n89#6:960\n75#6:974\n76#6,11:976\n89#6:1004\n75#6:1012\n76#6,11:1014\n89#6:1042\n89#6:1047\n68#7,5:888\n73#7:919\n77#7:924\n68#7,5:925\n73#7:956\n77#7:961\n67#7,6:968\n73#7:1000\n77#7:1005\n67#7,6:1006\n73#7:1038\n77#7:1043\n59#8:962\n59#8:965\n155#9:963\n212#9:964\n155#9:966\n212#9:967\n155#9:1048\n155#9:1049\n*S KotlinDebug\n*F\n+ 1 OutlinedTextField.kt\nandroidx/compose/material/OutlinedTextFieldKt\n*L\n138#1:832\n282#1:842\n383#1:861\n384#1:863\n395#1:894\n403#1:931\n431#1:975\n439#1:1013\n149#1:833\n293#1:843\n375#1:852,3\n384#1:875,13\n395#1:906,13\n395#1:920,3\n403#1:943,13\n403#1:957,3\n431#1:987,13\n431#1:1001,3\n439#1:1025,13\n439#1:1039,3\n384#1:1044,3\n149#1:834,6\n293#1:844,6\n375#1:855,6\n154#1:840\n154#1:841\n298#1:850\n298#1:851\n384#1:862\n384#1:864,11\n395#1:893\n395#1:895,11\n395#1:923\n403#1:930\n403#1:932,11\n403#1:960\n431#1:974\n431#1:976,11\n431#1:1004\n439#1:1012\n439#1:1014,11\n439#1:1042\n384#1:1047\n395#1:888,5\n395#1:919\n395#1:924\n403#1:925,5\n403#1:956\n403#1:961\n431#1:968,6\n431#1:1000\n431#1:1005\n439#1:1006,6\n439#1:1038\n439#1:1043\n415#1:962\n422#1:965\n416#1:963\n415#1:964\n422#1:966\n422#1:967\n821#1:1048\n829#1:1049\n*E\n"
.end annotation


# static fields
.field public static final BorderId:Ljava/lang/String; = "border"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final OutlinedTextFieldInnerPadding:F

.field private static final OutlinedTextFieldTopPadding:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    int-to-float v0, v0

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 6
    move-result v0

    .line 7
    .line 8
    sput v0, Landroidx/compose/material/OutlinedTextFieldKt;->OutlinedTextFieldInnerPadding:F

    .line 9
    .line 10
    const/16 v0, 0x8

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
    sput v0, Landroidx/compose/material/OutlinedTextFieldKt;->OutlinedTextFieldTopPadding:F

    .line 18
    return-void
.end method

.method public static final a(Landroidx/compose/ui/text/input/TextFieldValue;Le8/l;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Le8/p;Le8/p;Le8/p;Le8/p;ZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZILandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material/TextFieldColors;Landroidx/compose/runtime/Composer;III)V
    .locals 70
    .param p0    # Landroidx/compose/ui/text/input/TextFieldValue;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/ui/text/TextStyle;
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
    .param p8    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Landroidx/compose/ui/text/input/VisualTransformation;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Landroidx/compose/foundation/text/KeyboardOptions;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Landroidx/compose/foundation/text/KeyboardActions;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p16    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p17    # Landroidx/compose/ui/graphics/Shape;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p18    # Landroidx/compose/material/TextFieldColors;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p19    # Landroidx/compose/runtime/Composer;
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
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "ZZ",
            "Landroidx/compose/ui/text/TextStyle;",
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
            ">;Z",
            "Landroidx/compose/ui/text/input/VisualTransformation;",
            "Landroidx/compose/foundation/text/KeyboardOptions;",
            "Landroidx/compose/foundation/text/KeyboardActions;",
            "ZI",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/ui/graphics/Shape;",
            "Landroidx/compose/material/TextFieldColors;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v12, p1

    move/from16 v10, p20

    move/from16 v9, p21

    move/from16 v8, p22

    const-string v0, "value"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onValueChange"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x1139c5a0

    move-object/from16 v1, p19

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

    invoke-interface {v7, v12}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

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
    move-object/from16 v13, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v13, v10, 0x380

    if-nez v13, :cond_6

    move-object/from16 v13, p2

    invoke-interface {v7, v13}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    const/16 v14, 0x100

    goto :goto_4

    :cond_8
    const/16 v14, 0x80

    :goto_4
    or-int/2addr v0, v14

    :goto_5
    and-int/lit8 v14, v8, 0x8

    const/16 v16, 0x400

    const/16 v17, 0x800

    if-eqz v14, :cond_a

    or-int/lit16 v0, v0, 0xc00

    :cond_9
    move/from16 v1, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v1, v10, 0x1c00

    if-nez v1, :cond_9

    move/from16 v1, p3

    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->m(Z)Z

    move-result v18

    if-eqz v18, :cond_b

    move/from16 v18, v17

    goto :goto_6

    :cond_b
    move/from16 v18, v16

    :goto_6
    or-int v0, v0, v18

    :goto_7
    and-int/lit8 v18, v8, 0x10

    const/16 v19, 0x4000

    const v64, 0xe000

    const/16 v20, 0x2000

    if-eqz v18, :cond_c

    or-int/lit16 v0, v0, 0x6000

    move/from16 v2, p4

    goto :goto_9

    :cond_c
    and-int v21, v10, v64

    move/from16 v2, p4

    if-nez v21, :cond_e

    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->m(Z)Z

    move-result v22

    if-eqz v22, :cond_d

    move/from16 v22, v19

    goto :goto_8

    :cond_d
    move/from16 v22, v20

    :goto_8
    or-int v0, v0, v22

    :cond_e
    :goto_9
    const/high16 v22, 0x70000

    and-int v22, v10, v22

    const/high16 v23, 0x10000

    const/high16 v24, 0x20000

    if-nez v22, :cond_10

    and-int/lit8 v22, v8, 0x20

    move-object/from16 v4, p5

    if-nez v22, :cond_f

    invoke-interface {v7, v4}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_f

    move/from16 v25, v24

    goto :goto_a

    :cond_f
    move/from16 v25, v23

    :goto_a
    or-int v0, v0, v25

    goto :goto_b

    :cond_10
    move-object/from16 v4, p5

    :goto_b
    and-int/lit8 v25, v8, 0x40

    const/high16 v65, 0x380000

    if-eqz v25, :cond_11

    const/high16 v26, 0x180000

    or-int v0, v0, v26

    move-object/from16 v5, p6

    goto :goto_d

    :cond_11
    and-int v26, v10, v65

    move-object/from16 v5, p6

    if-nez v26, :cond_13

    invoke-interface {v7, v5}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_12

    const/high16 v27, 0x100000

    goto :goto_c

    :cond_12
    const/high16 v27, 0x80000

    :goto_c
    or-int v0, v0, v27

    :cond_13
    :goto_d
    and-int/lit16 v6, v8, 0x80

    if-eqz v6, :cond_14

    const/high16 v28, 0xc00000

    or-int v0, v0, v28

    move-object/from16 v11, p7

    goto :goto_f

    :cond_14
    const/high16 v28, 0x1c00000

    and-int v28, v10, v28

    move-object/from16 v11, p7

    if-nez v28, :cond_16

    invoke-interface {v7, v11}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_15

    const/high16 v29, 0x800000

    goto :goto_e

    :cond_15
    const/high16 v29, 0x400000

    :goto_e
    or-int v0, v0, v29

    :cond_16
    :goto_f
    and-int/lit16 v1, v8, 0x100

    if-eqz v1, :cond_17

    const/high16 v29, 0x6000000

    or-int v0, v0, v29

    move-object/from16 v2, p8

    goto :goto_11

    :cond_17
    const/high16 v29, 0xe000000

    and-int v29, v10, v29

    move-object/from16 v2, p8

    if-nez v29, :cond_19

    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_18

    const/high16 v29, 0x4000000

    goto :goto_10

    :cond_18
    const/high16 v29, 0x2000000

    :goto_10
    or-int v0, v0, v29

    :cond_19
    :goto_11
    and-int/lit16 v2, v8, 0x200

    if-eqz v2, :cond_1a

    const/high16 v29, 0x30000000

    or-int v0, v0, v29

    move-object/from16 v4, p9

    goto :goto_13

    :cond_1a
    const/high16 v29, 0x70000000

    and-int v29, v10, v29

    move-object/from16 v4, p9

    if-nez v29, :cond_1c

    invoke-interface {v7, v4}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1b

    const/high16 v29, 0x20000000

    goto :goto_12

    :cond_1b
    const/high16 v29, 0x10000000

    :goto_12
    or-int v0, v0, v29

    :cond_1c
    :goto_13
    and-int/lit16 v4, v8, 0x400

    if-eqz v4, :cond_1d

    or-int/lit8 v21, v9, 0x6

    move/from16 v5, p10

    goto :goto_15

    :cond_1d
    and-int/lit8 v29, v9, 0xe

    move/from16 v5, p10

    if-nez v29, :cond_1f

    invoke-interface {v7, v5}, Landroidx/compose/runtime/Composer;->m(Z)Z

    move-result v29

    if-eqz v29, :cond_1e

    const/16 v21, 0x4

    goto :goto_14

    :cond_1e
    const/16 v21, 0x2

    :goto_14
    or-int v21, v9, v21

    goto :goto_15

    :cond_1f
    move/from16 v21, v9

    :goto_15
    and-int/lit16 v5, v8, 0x800

    if-eqz v5, :cond_20

    or-int/lit8 v21, v21, 0x30

    move-object/from16 v11, p11

    goto :goto_17

    :cond_20
    and-int/lit8 v29, v9, 0x70

    move-object/from16 v11, p11

    if-nez v29, :cond_22

    invoke-interface {v7, v11}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_21

    const/16 v26, 0x20

    goto :goto_16

    :cond_21
    const/16 v26, 0x10

    :goto_16
    or-int v21, v21, v26

    :cond_22
    :goto_17
    and-int/lit16 v11, v9, 0x380

    if-nez v11, :cond_25

    and-int/lit16 v11, v8, 0x1000

    if-nez v11, :cond_23

    move-object/from16 v11, p12

    invoke-interface {v7, v11}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_24

    const/16 v27, 0x100

    goto :goto_18

    :cond_23
    move-object/from16 v11, p12

    :cond_24
    const/16 v27, 0x80

    :goto_18
    or-int v21, v21, v27

    goto :goto_19

    :cond_25
    move-object/from16 v11, p12

    :goto_19
    and-int/lit16 v11, v9, 0x1c00

    if-nez v11, :cond_28

    and-int/lit16 v11, v8, 0x2000

    if-nez v11, :cond_26

    move-object/from16 v11, p13

    invoke-interface {v7, v11}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_27

    move/from16 v16, v17

    goto :goto_1a

    :cond_26
    move-object/from16 v11, p13

    :cond_27
    :goto_1a
    or-int v21, v21, v16

    :goto_1b
    move/from16 v11, v21

    goto :goto_1c

    :cond_28
    move-object/from16 v11, p13

    goto :goto_1b

    :goto_1c
    and-int/lit16 v12, v8, 0x4000

    if-eqz v12, :cond_29

    or-int/lit16 v11, v11, 0x6000

    move/from16 v13, p14

    goto :goto_1e

    :cond_29
    and-int v16, v9, v64

    move/from16 v13, p14

    if-nez v16, :cond_2b

    invoke-interface {v7, v13}, Landroidx/compose/runtime/Composer;->m(Z)Z

    move-result v16

    if-eqz v16, :cond_2a

    goto :goto_1d

    :cond_2a
    move/from16 v19, v20

    :goto_1d
    or-int v11, v11, v19

    :cond_2b
    :goto_1e
    const v16, 0x8000

    and-int v16, v8, v16

    if-eqz v16, :cond_2c

    const/high16 v17, 0x30000

    or-int v11, v11, v17

    move/from16 v13, p15

    goto :goto_20

    :cond_2c
    const/high16 v17, 0x70000

    and-int v17, v9, v17

    move/from16 v13, p15

    if-nez v17, :cond_2e

    invoke-interface {v7, v13}, Landroidx/compose/runtime/Composer;->p(I)Z

    move-result v17

    if-eqz v17, :cond_2d

    move/from16 v17, v24

    goto :goto_1f

    :cond_2d
    move/from16 v17, v23

    :goto_1f
    or-int v11, v11, v17

    :cond_2e
    :goto_20
    and-int v17, v8, v23

    if-eqz v17, :cond_2f

    const/high16 v19, 0x180000

    or-int v11, v11, v19

    move-object/from16 v13, p16

    goto :goto_22

    :cond_2f
    and-int v19, v9, v65

    move-object/from16 v13, p16

    if-nez v19, :cond_31

    invoke-interface {v7, v13}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_30

    const/high16 v19, 0x100000

    goto :goto_21

    :cond_30
    const/high16 v19, 0x80000

    :goto_21
    or-int v11, v11, v19

    :cond_31
    :goto_22
    const/high16 v19, 0x1c00000

    and-int v19, v9, v19

    if-nez v19, :cond_33

    and-int v19, v8, v24

    move-object/from16 v13, p17

    if-nez v19, :cond_32

    invoke-interface {v7, v13}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_32

    const/high16 v19, 0x800000

    goto :goto_23

    :cond_32
    const/high16 v19, 0x400000

    :goto_23
    or-int v11, v11, v19

    goto :goto_24

    :cond_33
    move-object/from16 v13, p17

    :goto_24
    const/high16 v19, 0xe000000

    and-int v19, v9, v19

    if-nez v19, :cond_35

    const/high16 v19, 0x40000

    and-int v19, v8, v19

    move-object/from16 v9, p18

    if-nez v19, :cond_34

    invoke-interface {v7, v9}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_34

    const/high16 v19, 0x4000000

    goto :goto_25

    :cond_34
    const/high16 v19, 0x2000000

    :goto_25
    or-int v11, v11, v19

    goto :goto_26

    :cond_35
    move-object/from16 v9, p18

    :goto_26
    const v19, 0x5b6db6db

    and-int v9, v0, v19

    const v13, 0x12492492

    if-ne v9, v13, :cond_37

    const v9, 0xb6db6db

    and-int/2addr v9, v11

    const v13, 0x2492492

    if-ne v9, v13, :cond_37

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->b()Z

    move-result v9

    if-nez v9, :cond_36

    goto :goto_27

    .line 2
    :cond_36
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->g()V

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v31, v7

    move-object/from16 v7, p6

    goto/16 :goto_3e

    .line 3
    :cond_37
    :goto_27
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->J()V

    and-int/lit8 v9, v10, 0x1

    if-eqz v9, :cond_3e

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->h()Z

    move-result v9

    if-eqz v9, :cond_38

    goto :goto_28

    .line 4
    :cond_38
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->g()V

    and-int/lit8 v1, v8, 0x20

    if-eqz v1, :cond_39

    const v1, -0x70001

    and-int/2addr v0, v1

    :cond_39
    and-int/lit16 v1, v8, 0x1000

    if-eqz v1, :cond_3a

    and-int/lit16 v11, v11, -0x381

    :cond_3a
    and-int/lit16 v1, v8, 0x2000

    if-eqz v1, :cond_3b

    and-int/lit16 v11, v11, -0x1c01

    :cond_3b
    and-int v1, v8, v24

    if-eqz v1, :cond_3c

    const v1, -0x1c00001

    and-int/2addr v11, v1

    :cond_3c
    const/high16 v1, 0x40000

    and-int/2addr v1, v8

    if-eqz v1, :cond_3d

    const v1, -0xe000001

    and-int/2addr v11, v1

    :cond_3d
    move-object/from16 v19, p2

    move/from16 v12, p3

    move/from16 v20, p4

    move-object/from16 v10, p5

    move-object/from16 v66, p6

    move-object/from16 v21, p7

    move-object/from16 v22, p8

    move-object/from16 v23, p9

    move/from16 v9, p10

    move-object/from16 v24, p11

    move-object/from16 v25, p12

    move-object/from16 v26, p13

    move/from16 v27, p14

    move/from16 v67, p15

    move-object/from16 v28, p16

    move-object/from16 v6, p17

    move-object/from16 v5, p18

    move v1, v11

    goto/16 :goto_3a

    :cond_3e
    :goto_28
    if-eqz v3, :cond_3f

    .line 5
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_29

    :cond_3f
    move-object/from16 v3, p2

    :goto_29
    if-eqz v14, :cond_40

    const/4 v9, 0x1

    goto :goto_2a

    :cond_40
    move/from16 v9, p3

    :goto_2a
    if-eqz v18, :cond_41

    const/4 v14, 0x0

    goto :goto_2b

    :cond_41
    move/from16 v14, p4

    :goto_2b
    and-int/lit8 v18, v8, 0x20

    if-eqz v18, :cond_42

    .line 6
    invoke-static {}, Landroidx/compose/material/TextKt;->d()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v13

    .line 7
    invoke-interface {v7, v13}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/ui/text/TextStyle;

    const v18, -0x70001

    and-int v0, v0, v18

    goto :goto_2c

    :cond_42
    move-object/from16 v13, p5

    :goto_2c
    if-eqz v25, :cond_43

    const/16 v66, 0x0

    goto :goto_2d

    :cond_43
    move-object/from16 v66, p6

    :goto_2d
    if-eqz v6, :cond_44

    const/4 v6, 0x0

    goto :goto_2e

    :cond_44
    move-object/from16 v6, p7

    :goto_2e
    if-eqz v1, :cond_45

    const/4 v1, 0x0

    goto :goto_2f

    :cond_45
    move-object/from16 v1, p8

    :goto_2f
    if-eqz v2, :cond_46

    const/4 v2, 0x0

    goto :goto_30

    :cond_46
    move-object/from16 v2, p9

    :goto_30
    if-eqz v4, :cond_47

    const/4 v4, 0x0

    goto :goto_31

    :cond_47
    move/from16 v4, p10

    :goto_31
    if-eqz v5, :cond_48

    .line 8
    sget-object v5, Landroidx/compose/ui/text/input/VisualTransformation;->Companion:Landroidx/compose/ui/text/input/VisualTransformation$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/text/input/VisualTransformation$Companion;->c()Landroidx/compose/ui/text/input/VisualTransformation;

    move-result-object v5

    goto :goto_32

    :cond_48
    move-object/from16 v5, p11

    :goto_32
    and-int/lit16 v10, v8, 0x1000

    if-eqz v10, :cond_49

    .line 9
    sget-object v10, Landroidx/compose/foundation/text/KeyboardOptions;->Companion:Landroidx/compose/foundation/text/KeyboardOptions$Companion;

    invoke-virtual {v10}, Landroidx/compose/foundation/text/KeyboardOptions$Companion;->a()Landroidx/compose/foundation/text/KeyboardOptions;

    move-result-object v10

    and-int/lit16 v11, v11, -0x381

    goto :goto_33

    :cond_49
    move-object/from16 v10, p12

    :goto_33
    move/from16 p2, v0

    and-int/lit16 v0, v8, 0x2000

    if-eqz v0, :cond_4a

    .line 10
    new-instance v0, Landroidx/compose/foundation/text/KeyboardActions;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x3f

    const/16 v26, 0x0

    move-object/from16 p3, v0

    move-object/from16 p4, v18

    move-object/from16 p5, v19

    move-object/from16 p6, v20

    move-object/from16 p7, v21

    move-object/from16 p8, v22

    move-object/from16 p9, v23

    move/from16 p10, v25

    move-object/from16 p11, v26

    invoke-direct/range {p3 .. p11}, Landroidx/compose/foundation/text/KeyboardActions;-><init>(Le8/l;Le8/l;Le8/l;Le8/l;Le8/l;Le8/l;ILkotlin/jvm/internal/k;)V

    and-int/lit16 v11, v11, -0x1c01

    goto :goto_34

    :cond_4a
    move-object/from16 v0, p13

    :goto_34
    if-eqz v12, :cond_4b

    const/4 v12, 0x0

    goto :goto_35

    :cond_4b
    move/from16 v12, p14

    :goto_35
    if-eqz v16, :cond_4c

    const v16, 0x7fffffff

    move/from16 v67, v16

    goto :goto_36

    :cond_4c
    move/from16 v67, p15

    :goto_36
    move-object/from16 p3, v0

    if-eqz v17, :cond_4e

    const v0, -0x1d58f75c

    .line 11
    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 12
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    move-result-object v0

    .line 13
    sget-object v16, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 p4, v1

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_4d

    .line 14
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->a()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v0

    .line 15
    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 16
    :cond_4d
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->Q()V

    check-cast v0, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    goto :goto_37

    :cond_4e
    move-object/from16 p4, v1

    move-object/from16 v0, p16

    :goto_37
    and-int v1, v8, v24

    if-eqz v1, :cond_4f

    .line 17
    sget-object v1, Landroidx/compose/material/TextFieldDefaults;->INSTANCE:Landroidx/compose/material/TextFieldDefaults;

    move-object/from16 p5, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v7, v0}, Landroidx/compose/material/TextFieldDefaults;->f(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v0

    const v1, -0x1c00001

    and-int/2addr v1, v11

    move v11, v1

    goto :goto_38

    :cond_4f
    move-object/from16 p5, v0

    move-object/from16 v0, p17

    :goto_38
    const/high16 v1, 0x40000

    and-int/2addr v1, v8

    if-eqz v1, :cond_50

    .line 18
    sget-object v16, Landroidx/compose/material/TextFieldDefaults;->INSTANCE:Landroidx/compose/material/TextFieldDefaults;

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

    const/16 v62, 0x30

    const v63, 0x1fffff

    move-object/from16 v59, v7

    invoke-virtual/range {v16 .. v63}, Landroidx/compose/material/TextFieldDefaults;->j(JJJJJJJJJJJJJJJJJJJJJLandroidx/compose/runtime/Composer;IIII)Landroidx/compose/material/TextFieldColors;

    move-result-object v1

    const v16, -0xe000001

    and-int v11, v11, v16

    move-object/from16 v26, p3

    move-object/from16 v22, p4

    move-object/from16 v28, p5

    move-object/from16 v23, v2

    move-object/from16 v19, v3

    move-object/from16 v24, v5

    move-object/from16 v21, v6

    move-object/from16 v25, v10

    move/from16 v27, v12

    move-object v10, v13

    move/from16 v20, v14

    move-object v6, v0

    move-object v5, v1

    move v12, v9

    move v1, v11

    :goto_39
    move/from16 v0, p2

    move v9, v4

    goto :goto_3a

    :cond_50
    move-object/from16 v26, p3

    move-object/from16 v22, p4

    move-object/from16 v28, p5

    move-object/from16 v23, v2

    move-object/from16 v19, v3

    move-object/from16 v24, v5

    move-object/from16 v21, v6

    move-object/from16 v25, v10

    move v1, v11

    move/from16 v27, v12

    move-object v10, v13

    move/from16 v20, v14

    move-object/from16 v5, p18

    move-object v6, v0

    move v12, v9

    goto :goto_39

    :goto_3a
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->A()V

    const v2, 0x74e8a0da

    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 19
    invoke-virtual {v10}, Landroidx/compose/ui/text/TextStyle;->g()J

    move-result-wide v2

    .line 20
    sget-object v4, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/Color$Companion;->f()J

    move-result-wide v13

    cmp-long v4, v2, v13

    if-eqz v4, :cond_51

    :goto_3b
    move-wide/from16 v30, v2

    goto :goto_3c

    :cond_51
    shr-int/lit8 v2, v0, 0x9

    and-int/lit8 v2, v2, 0xe

    shr-int/lit8 v3, v1, 0x15

    and-int/lit8 v3, v3, 0x70

    or-int/2addr v2, v3

    .line 21
    invoke-interface {v5, v12, v7, v2}, Landroidx/compose/material/TextFieldColors;->h(ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v2

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color;->v()J

    move-result-wide v2

    goto :goto_3b

    .line 22
    :goto_3c
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->Q()V

    .line 23
    new-instance v2, Landroidx/compose/ui/text/TextStyle;

    move-object/from16 v29, v2

    const-wide/16 v32, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const-wide/16 v39, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const-wide/16 v44, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const-wide/16 v50, 0x0

    const/16 v52, 0x0

    const v53, 0x3fffe

    const/16 v54, 0x0

    invoke-direct/range {v29 .. v54}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextAlign;Landroidx/compose/ui/text/style/TextDirection;JLandroidx/compose/ui/text/style/TextIndent;ILkotlin/jvm/internal/k;)V

    invoke-virtual {v10, v2}, Landroidx/compose/ui/text/TextStyle;->C(Landroidx/compose/ui/text/TextStyle;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v29

    if-eqz v66, :cond_52

    const/4 v2, 0x0

    sget v3, Landroidx/compose/material/OutlinedTextFieldKt;->OutlinedTextFieldTopPadding:F

    const/4 v4, 0x0

    const/4 v11, 0x0

    const/16 v13, 0xd

    const/4 v14, 0x0

    move-object/from16 p6, v19

    move/from16 p7, v2

    move/from16 p8, v3

    move/from16 p9, v4

    move/from16 p10, v11

    move/from16 p11, v13

    move-object/from16 p12, v14

    .line 24
    invoke-static/range {p6 .. p12}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    goto :goto_3d

    :cond_52
    move-object/from16 v2, v19

    :goto_3d
    shr-int/lit8 v3, v0, 0x9

    and-int/lit8 v3, v3, 0xe

    shr-int/lit8 v4, v1, 0x15

    and-int/lit8 v4, v4, 0x70

    or-int/2addr v3, v4

    .line 25
    invoke-interface {v5, v12, v7, v3}, Landroidx/compose/material/TextFieldColors;->a(ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v3

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/Color;->v()J

    move-result-wide v13

    invoke-static {v2, v13, v14, v6}, Landroidx/compose/foundation/BackgroundKt;->a(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 26
    sget-object v3, Landroidx/compose/material/TextFieldDefaults;->INSTANCE:Landroidx/compose/material/TextFieldDefaults;

    invoke-virtual {v3}, Landroidx/compose/material/TextFieldDefaults;->e()F

    move-result v11

    .line 27
    invoke-virtual {v3}, Landroidx/compose/material/TextFieldDefaults;->d()F

    move-result v3

    .line 28
    invoke-static {v2, v11, v3}, Landroidx/compose/foundation/layout/SizeKt;->g(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 29
    new-instance v3, Landroidx/compose/ui/graphics/SolidColor;

    const/4 v11, 0x0

    move-object v13, v3

    and-int/lit8 v14, v1, 0xe

    or-int/2addr v4, v14

    invoke-interface {v5, v9, v7, v4}, Landroidx/compose/material/TextFieldColors;->i(ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v4

    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/Color;->v()J

    move-result-wide v14

    invoke-direct {v3, v14, v15, v11}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/k;)V

    const/4 v11, 0x0

    .line 30
    new-instance v3, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$5;

    move-object/from16 p2, v3

    move-object/from16 p3, p0

    move/from16 p4, v12

    move/from16 p5, v27

    move-object/from16 p6, v24

    move-object/from16 p7, v28

    move/from16 p8, v9

    move-object/from16 p9, v66

    move-object/from16 p10, v21

    move-object/from16 p11, v22

    move-object/from16 p12, v23

    move-object/from16 p13, v5

    move/from16 p14, v0

    move/from16 p15, v1

    move-object/from16 p16, v6

    invoke-direct/range {p2 .. p16}, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$5;-><init>(Landroidx/compose/ui/text/input/TextFieldValue;ZZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/MutableInteractionSource;ZLe8/p;Le8/p;Le8/p;Le8/p;Landroidx/compose/material/TextFieldColors;IILandroidx/compose/ui/graphics/Shape;)V

    const v4, -0x48a9abc9

    const/4 v14, 0x1

    invoke-static {v7, v4, v14, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v14

    and-int/lit8 v3, v0, 0xe

    and-int/lit8 v4, v0, 0x70

    or-int/2addr v3, v4

    and-int/lit16 v4, v0, 0x1c00

    or-int/2addr v3, v4

    and-int v0, v0, v64

    or-int/2addr v0, v3

    shl-int/lit8 v3, v1, 0xc

    and-int v4, v3, v65

    or-int/2addr v0, v4

    sget v4, Landroidx/compose/foundation/text/KeyboardActions;->$stable:I

    shl-int/lit8 v4, v4, 0x15

    or-int/2addr v0, v4

    const/high16 v4, 0x1c00000

    and-int/2addr v4, v3

    or-int/2addr v0, v4

    const/high16 v4, 0xe000000

    and-int/2addr v4, v3

    or-int/2addr v0, v4

    const/high16 v4, 0x70000000

    and-int/2addr v3, v4

    or-int v16, v0, v3

    shr-int/lit8 v0, v1, 0x3

    and-int/lit8 v0, v0, 0xe

    or-int/lit16 v0, v0, 0x6000

    shr-int/lit8 v1, v1, 0xc

    and-int/lit16 v1, v1, 0x380

    or-int v17, v0, v1

    const/16 v18, 0x800

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v3, v12

    move/from16 v4, v20

    move-object/from16 v30, v5

    move-object/from16 v5, v29

    move-object/from16 v29, v6

    move-object/from16 v6, v25

    move-object/from16 v31, v7

    move-object/from16 v7, v26

    move/from16 v8, v27

    move/from16 v32, v9

    move/from16 v9, v67

    move-object/from16 v33, v10

    move-object/from16 v10, v24

    move/from16 v34, v12

    move-object/from16 v12, v28

    move-object/from16 v15, v31

    .line 31
    invoke-static/range {v0 .. v18}, Landroidx/compose/foundation/text/BasicTextFieldKt;->a(Landroidx/compose/ui/text/input/TextFieldValue;Le8/l;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZILandroidx/compose/ui/text/input/VisualTransformation;Le8/l;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Le8/q;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v3, v19

    move/from16 v5, v20

    move-object/from16 v8, v21

    move-object/from16 v9, v22

    move-object/from16 v10, v23

    move-object/from16 v12, v24

    move-object/from16 v13, v25

    move-object/from16 v14, v26

    move/from16 v15, v27

    move-object/from16 v17, v28

    move-object/from16 v18, v29

    move-object/from16 v19, v30

    move/from16 v11, v32

    move-object/from16 v6, v33

    move/from16 v4, v34

    move-object/from16 v7, v66

    move/from16 v16, v67

    .line 32
    :goto_3e
    invoke-interface/range {v31 .. v31}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v2

    if-nez v2, :cond_53

    goto :goto_3f

    :cond_53
    new-instance v1, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$6;

    move-object v0, v1

    move-object/from16 v68, v1

    move-object/from16 v1, p0

    move-object/from16 v69, v2

    move-object/from16 v2, p1

    move/from16 v20, p20

    move/from16 v21, p21

    move/from16 v22, p22

    invoke-direct/range {v0 .. v22}, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$6;-><init>(Landroidx/compose/ui/text/input/TextFieldValue;Le8/l;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Le8/p;Le8/p;Le8/p;Le8/p;ZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZILandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material/TextFieldColors;III)V

    move-object/from16 v1, v68

    move-object/from16 v0, v69

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    :goto_3f
    return-void
.end method

.method public static final b(Ljava/lang/String;Le8/l;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Le8/p;Le8/p;Le8/p;Le8/p;ZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZILandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material/TextFieldColors;Landroidx/compose/runtime/Composer;III)V
    .locals 70
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/ui/text/TextStyle;
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
    .param p8    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Landroidx/compose/ui/text/input/VisualTransformation;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Landroidx/compose/foundation/text/KeyboardOptions;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Landroidx/compose/foundation/text/KeyboardActions;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p16    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p17    # Landroidx/compose/ui/graphics/Shape;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p18    # Landroidx/compose/material/TextFieldColors;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p19    # Landroidx/compose/runtime/Composer;
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
            "Ljava/lang/String;",
            "Le8/l<",
            "-",
            "Ljava/lang/String;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "ZZ",
            "Landroidx/compose/ui/text/TextStyle;",
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
            ">;Z",
            "Landroidx/compose/ui/text/input/VisualTransformation;",
            "Landroidx/compose/foundation/text/KeyboardOptions;",
            "Landroidx/compose/foundation/text/KeyboardActions;",
            "ZI",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/ui/graphics/Shape;",
            "Landroidx/compose/material/TextFieldColors;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v12, p1

    move/from16 v10, p20

    move/from16 v9, p21

    move/from16 v8, p22

    const-string v0, "value"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onValueChange"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x7d2ac873

    move-object/from16 v1, p19

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

    invoke-interface {v7, v12}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

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
    move-object/from16 v13, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v13, v10, 0x380

    if-nez v13, :cond_6

    move-object/from16 v13, p2

    invoke-interface {v7, v13}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    const/16 v14, 0x100

    goto :goto_4

    :cond_8
    const/16 v14, 0x80

    :goto_4
    or-int/2addr v0, v14

    :goto_5
    and-int/lit8 v14, v8, 0x8

    const/16 v16, 0x400

    const/16 v17, 0x800

    if-eqz v14, :cond_a

    or-int/lit16 v0, v0, 0xc00

    :cond_9
    move/from16 v1, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v1, v10, 0x1c00

    if-nez v1, :cond_9

    move/from16 v1, p3

    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->m(Z)Z

    move-result v18

    if-eqz v18, :cond_b

    move/from16 v18, v17

    goto :goto_6

    :cond_b
    move/from16 v18, v16

    :goto_6
    or-int v0, v0, v18

    :goto_7
    and-int/lit8 v18, v8, 0x10

    const/16 v19, 0x4000

    const v64, 0xe000

    const/16 v20, 0x2000

    if-eqz v18, :cond_c

    or-int/lit16 v0, v0, 0x6000

    move/from16 v2, p4

    goto :goto_9

    :cond_c
    and-int v21, v10, v64

    move/from16 v2, p4

    if-nez v21, :cond_e

    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->m(Z)Z

    move-result v22

    if-eqz v22, :cond_d

    move/from16 v22, v19

    goto :goto_8

    :cond_d
    move/from16 v22, v20

    :goto_8
    or-int v0, v0, v22

    :cond_e
    :goto_9
    const/high16 v22, 0x70000

    and-int v22, v10, v22

    const/high16 v23, 0x10000

    const/high16 v24, 0x20000

    if-nez v22, :cond_10

    and-int/lit8 v22, v8, 0x20

    move-object/from16 v4, p5

    if-nez v22, :cond_f

    invoke-interface {v7, v4}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_f

    move/from16 v25, v24

    goto :goto_a

    :cond_f
    move/from16 v25, v23

    :goto_a
    or-int v0, v0, v25

    goto :goto_b

    :cond_10
    move-object/from16 v4, p5

    :goto_b
    and-int/lit8 v25, v8, 0x40

    const/high16 v65, 0x380000

    if-eqz v25, :cond_11

    const/high16 v26, 0x180000

    or-int v0, v0, v26

    move-object/from16 v5, p6

    goto :goto_d

    :cond_11
    and-int v26, v10, v65

    move-object/from16 v5, p6

    if-nez v26, :cond_13

    invoke-interface {v7, v5}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_12

    const/high16 v27, 0x100000

    goto :goto_c

    :cond_12
    const/high16 v27, 0x80000

    :goto_c
    or-int v0, v0, v27

    :cond_13
    :goto_d
    and-int/lit16 v6, v8, 0x80

    if-eqz v6, :cond_14

    const/high16 v28, 0xc00000

    or-int v0, v0, v28

    move-object/from16 v11, p7

    goto :goto_f

    :cond_14
    const/high16 v28, 0x1c00000

    and-int v28, v10, v28

    move-object/from16 v11, p7

    if-nez v28, :cond_16

    invoke-interface {v7, v11}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_15

    const/high16 v29, 0x800000

    goto :goto_e

    :cond_15
    const/high16 v29, 0x400000

    :goto_e
    or-int v0, v0, v29

    :cond_16
    :goto_f
    and-int/lit16 v1, v8, 0x100

    if-eqz v1, :cond_17

    const/high16 v29, 0x6000000

    or-int v0, v0, v29

    move-object/from16 v2, p8

    goto :goto_11

    :cond_17
    const/high16 v29, 0xe000000

    and-int v29, v10, v29

    move-object/from16 v2, p8

    if-nez v29, :cond_19

    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_18

    const/high16 v29, 0x4000000

    goto :goto_10

    :cond_18
    const/high16 v29, 0x2000000

    :goto_10
    or-int v0, v0, v29

    :cond_19
    :goto_11
    and-int/lit16 v2, v8, 0x200

    if-eqz v2, :cond_1a

    const/high16 v29, 0x30000000

    or-int v0, v0, v29

    move-object/from16 v4, p9

    goto :goto_13

    :cond_1a
    const/high16 v29, 0x70000000

    and-int v29, v10, v29

    move-object/from16 v4, p9

    if-nez v29, :cond_1c

    invoke-interface {v7, v4}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1b

    const/high16 v29, 0x20000000

    goto :goto_12

    :cond_1b
    const/high16 v29, 0x10000000

    :goto_12
    or-int v0, v0, v29

    :cond_1c
    :goto_13
    and-int/lit16 v4, v8, 0x400

    if-eqz v4, :cond_1d

    or-int/lit8 v21, v9, 0x6

    move/from16 v5, p10

    goto :goto_15

    :cond_1d
    and-int/lit8 v29, v9, 0xe

    move/from16 v5, p10

    if-nez v29, :cond_1f

    invoke-interface {v7, v5}, Landroidx/compose/runtime/Composer;->m(Z)Z

    move-result v29

    if-eqz v29, :cond_1e

    const/16 v21, 0x4

    goto :goto_14

    :cond_1e
    const/16 v21, 0x2

    :goto_14
    or-int v21, v9, v21

    goto :goto_15

    :cond_1f
    move/from16 v21, v9

    :goto_15
    and-int/lit16 v5, v8, 0x800

    if-eqz v5, :cond_20

    or-int/lit8 v21, v21, 0x30

    move-object/from16 v11, p11

    goto :goto_17

    :cond_20
    and-int/lit8 v29, v9, 0x70

    move-object/from16 v11, p11

    if-nez v29, :cond_22

    invoke-interface {v7, v11}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_21

    const/16 v26, 0x20

    goto :goto_16

    :cond_21
    const/16 v26, 0x10

    :goto_16
    or-int v21, v21, v26

    :cond_22
    :goto_17
    and-int/lit16 v11, v9, 0x380

    if-nez v11, :cond_25

    and-int/lit16 v11, v8, 0x1000

    if-nez v11, :cond_23

    move-object/from16 v11, p12

    invoke-interface {v7, v11}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_24

    const/16 v27, 0x100

    goto :goto_18

    :cond_23
    move-object/from16 v11, p12

    :cond_24
    const/16 v27, 0x80

    :goto_18
    or-int v21, v21, v27

    goto :goto_19

    :cond_25
    move-object/from16 v11, p12

    :goto_19
    and-int/lit16 v11, v9, 0x1c00

    if-nez v11, :cond_28

    and-int/lit16 v11, v8, 0x2000

    if-nez v11, :cond_26

    move-object/from16 v11, p13

    invoke-interface {v7, v11}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_27

    move/from16 v16, v17

    goto :goto_1a

    :cond_26
    move-object/from16 v11, p13

    :cond_27
    :goto_1a
    or-int v21, v21, v16

    :goto_1b
    move/from16 v11, v21

    goto :goto_1c

    :cond_28
    move-object/from16 v11, p13

    goto :goto_1b

    :goto_1c
    and-int/lit16 v12, v8, 0x4000

    if-eqz v12, :cond_29

    or-int/lit16 v11, v11, 0x6000

    move/from16 v13, p14

    goto :goto_1e

    :cond_29
    and-int v16, v9, v64

    move/from16 v13, p14

    if-nez v16, :cond_2b

    invoke-interface {v7, v13}, Landroidx/compose/runtime/Composer;->m(Z)Z

    move-result v16

    if-eqz v16, :cond_2a

    goto :goto_1d

    :cond_2a
    move/from16 v19, v20

    :goto_1d
    or-int v11, v11, v19

    :cond_2b
    :goto_1e
    const v16, 0x8000

    and-int v16, v8, v16

    if-eqz v16, :cond_2c

    const/high16 v17, 0x30000

    or-int v11, v11, v17

    move/from16 v13, p15

    goto :goto_20

    :cond_2c
    const/high16 v17, 0x70000

    and-int v17, v9, v17

    move/from16 v13, p15

    if-nez v17, :cond_2e

    invoke-interface {v7, v13}, Landroidx/compose/runtime/Composer;->p(I)Z

    move-result v17

    if-eqz v17, :cond_2d

    move/from16 v17, v24

    goto :goto_1f

    :cond_2d
    move/from16 v17, v23

    :goto_1f
    or-int v11, v11, v17

    :cond_2e
    :goto_20
    and-int v17, v8, v23

    if-eqz v17, :cond_2f

    const/high16 v19, 0x180000

    or-int v11, v11, v19

    move-object/from16 v13, p16

    goto :goto_22

    :cond_2f
    and-int v19, v9, v65

    move-object/from16 v13, p16

    if-nez v19, :cond_31

    invoke-interface {v7, v13}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_30

    const/high16 v19, 0x100000

    goto :goto_21

    :cond_30
    const/high16 v19, 0x80000

    :goto_21
    or-int v11, v11, v19

    :cond_31
    :goto_22
    const/high16 v19, 0x1c00000

    and-int v19, v9, v19

    if-nez v19, :cond_33

    and-int v19, v8, v24

    move-object/from16 v13, p17

    if-nez v19, :cond_32

    invoke-interface {v7, v13}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_32

    const/high16 v19, 0x800000

    goto :goto_23

    :cond_32
    const/high16 v19, 0x400000

    :goto_23
    or-int v11, v11, v19

    goto :goto_24

    :cond_33
    move-object/from16 v13, p17

    :goto_24
    const/high16 v19, 0xe000000

    and-int v19, v9, v19

    if-nez v19, :cond_35

    const/high16 v19, 0x40000

    and-int v19, v8, v19

    move-object/from16 v9, p18

    if-nez v19, :cond_34

    invoke-interface {v7, v9}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_34

    const/high16 v19, 0x4000000

    goto :goto_25

    :cond_34
    const/high16 v19, 0x2000000

    :goto_25
    or-int v11, v11, v19

    goto :goto_26

    :cond_35
    move-object/from16 v9, p18

    :goto_26
    const v19, 0x5b6db6db

    and-int v9, v0, v19

    const v13, 0x12492492

    if-ne v9, v13, :cond_37

    const v9, 0xb6db6db

    and-int/2addr v9, v11

    const v13, 0x2492492

    if-ne v9, v13, :cond_37

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->b()Z

    move-result v9

    if-nez v9, :cond_36

    goto :goto_27

    .line 2
    :cond_36
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->g()V

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v31, v7

    move-object/from16 v7, p6

    goto/16 :goto_3e

    .line 3
    :cond_37
    :goto_27
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->J()V

    and-int/lit8 v9, v10, 0x1

    if-eqz v9, :cond_3e

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->h()Z

    move-result v9

    if-eqz v9, :cond_38

    goto :goto_28

    .line 4
    :cond_38
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->g()V

    and-int/lit8 v1, v8, 0x20

    if-eqz v1, :cond_39

    const v1, -0x70001

    and-int/2addr v0, v1

    :cond_39
    and-int/lit16 v1, v8, 0x1000

    if-eqz v1, :cond_3a

    and-int/lit16 v11, v11, -0x381

    :cond_3a
    and-int/lit16 v1, v8, 0x2000

    if-eqz v1, :cond_3b

    and-int/lit16 v11, v11, -0x1c01

    :cond_3b
    and-int v1, v8, v24

    if-eqz v1, :cond_3c

    const v1, -0x1c00001

    and-int/2addr v11, v1

    :cond_3c
    const/high16 v1, 0x40000

    and-int/2addr v1, v8

    if-eqz v1, :cond_3d

    const v1, -0xe000001

    and-int/2addr v11, v1

    :cond_3d
    move-object/from16 v19, p2

    move/from16 v12, p3

    move/from16 v20, p4

    move-object/from16 v10, p5

    move-object/from16 v66, p6

    move-object/from16 v21, p7

    move-object/from16 v22, p8

    move-object/from16 v23, p9

    move/from16 v9, p10

    move-object/from16 v24, p11

    move-object/from16 v25, p12

    move-object/from16 v26, p13

    move/from16 v27, p14

    move/from16 v67, p15

    move-object/from16 v28, p16

    move-object/from16 v6, p17

    move-object/from16 v5, p18

    move v1, v11

    goto/16 :goto_3a

    :cond_3e
    :goto_28
    if-eqz v3, :cond_3f

    .line 5
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_29

    :cond_3f
    move-object/from16 v3, p2

    :goto_29
    if-eqz v14, :cond_40

    const/4 v9, 0x1

    goto :goto_2a

    :cond_40
    move/from16 v9, p3

    :goto_2a
    if-eqz v18, :cond_41

    const/4 v14, 0x0

    goto :goto_2b

    :cond_41
    move/from16 v14, p4

    :goto_2b
    and-int/lit8 v18, v8, 0x20

    if-eqz v18, :cond_42

    .line 6
    invoke-static {}, Landroidx/compose/material/TextKt;->d()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v13

    .line 7
    invoke-interface {v7, v13}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/ui/text/TextStyle;

    const v18, -0x70001

    and-int v0, v0, v18

    goto :goto_2c

    :cond_42
    move-object/from16 v13, p5

    :goto_2c
    if-eqz v25, :cond_43

    const/16 v66, 0x0

    goto :goto_2d

    :cond_43
    move-object/from16 v66, p6

    :goto_2d
    if-eqz v6, :cond_44

    const/4 v6, 0x0

    goto :goto_2e

    :cond_44
    move-object/from16 v6, p7

    :goto_2e
    if-eqz v1, :cond_45

    const/4 v1, 0x0

    goto :goto_2f

    :cond_45
    move-object/from16 v1, p8

    :goto_2f
    if-eqz v2, :cond_46

    const/4 v2, 0x0

    goto :goto_30

    :cond_46
    move-object/from16 v2, p9

    :goto_30
    if-eqz v4, :cond_47

    const/4 v4, 0x0

    goto :goto_31

    :cond_47
    move/from16 v4, p10

    :goto_31
    if-eqz v5, :cond_48

    .line 8
    sget-object v5, Landroidx/compose/ui/text/input/VisualTransformation;->Companion:Landroidx/compose/ui/text/input/VisualTransformation$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/text/input/VisualTransformation$Companion;->c()Landroidx/compose/ui/text/input/VisualTransformation;

    move-result-object v5

    goto :goto_32

    :cond_48
    move-object/from16 v5, p11

    :goto_32
    and-int/lit16 v10, v8, 0x1000

    if-eqz v10, :cond_49

    .line 9
    sget-object v10, Landroidx/compose/foundation/text/KeyboardOptions;->Companion:Landroidx/compose/foundation/text/KeyboardOptions$Companion;

    invoke-virtual {v10}, Landroidx/compose/foundation/text/KeyboardOptions$Companion;->a()Landroidx/compose/foundation/text/KeyboardOptions;

    move-result-object v10

    and-int/lit16 v11, v11, -0x381

    goto :goto_33

    :cond_49
    move-object/from16 v10, p12

    :goto_33
    move/from16 p2, v0

    and-int/lit16 v0, v8, 0x2000

    if-eqz v0, :cond_4a

    .line 10
    sget-object v0, Landroidx/compose/foundation/text/KeyboardActions;->Companion:Landroidx/compose/foundation/text/KeyboardActions$Companion;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/KeyboardActions$Companion;->a()Landroidx/compose/foundation/text/KeyboardActions;

    move-result-object v0

    and-int/lit16 v11, v11, -0x1c01

    goto :goto_34

    :cond_4a
    move-object/from16 v0, p13

    :goto_34
    if-eqz v12, :cond_4b

    const/4 v12, 0x0

    goto :goto_35

    :cond_4b
    move/from16 v12, p14

    :goto_35
    if-eqz v16, :cond_4c

    const v16, 0x7fffffff

    move/from16 v67, v16

    goto :goto_36

    :cond_4c
    move/from16 v67, p15

    :goto_36
    move-object/from16 p3, v0

    if-eqz v17, :cond_4e

    const v0, -0x1d58f75c

    .line 11
    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 12
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    move-result-object v0

    .line 13
    sget-object v16, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 p4, v1

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_4d

    .line 14
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->a()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v0

    .line 15
    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 16
    :cond_4d
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->Q()V

    check-cast v0, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    goto :goto_37

    :cond_4e
    move-object/from16 p4, v1

    move-object/from16 v0, p16

    :goto_37
    and-int v1, v8, v24

    if-eqz v1, :cond_4f

    .line 17
    sget-object v1, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    move-object/from16 p5, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v7, v0}, Landroidx/compose/material/MaterialTheme;->b(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Shapes;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/material/Shapes;->c()Landroidx/compose/foundation/shape/CornerBasedShape;

    move-result-object v0

    const v1, -0x1c00001

    and-int/2addr v1, v11

    move v11, v1

    goto :goto_38

    :cond_4f
    move-object/from16 p5, v0

    move-object/from16 v0, p17

    :goto_38
    const/high16 v1, 0x40000

    and-int/2addr v1, v8

    if-eqz v1, :cond_50

    .line 18
    sget-object v16, Landroidx/compose/material/TextFieldDefaults;->INSTANCE:Landroidx/compose/material/TextFieldDefaults;

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

    const/16 v62, 0x30

    const v63, 0x1fffff

    move-object/from16 v59, v7

    invoke-virtual/range {v16 .. v63}, Landroidx/compose/material/TextFieldDefaults;->j(JJJJJJJJJJJJJJJJJJJJJLandroidx/compose/runtime/Composer;IIII)Landroidx/compose/material/TextFieldColors;

    move-result-object v1

    const v16, -0xe000001

    and-int v11, v11, v16

    move-object/from16 v26, p3

    move-object/from16 v22, p4

    move-object/from16 v28, p5

    move-object/from16 v23, v2

    move-object/from16 v19, v3

    move-object/from16 v24, v5

    move-object/from16 v21, v6

    move-object/from16 v25, v10

    move/from16 v27, v12

    move-object v10, v13

    move/from16 v20, v14

    move-object v6, v0

    move-object v5, v1

    move v12, v9

    move v1, v11

    :goto_39
    move/from16 v0, p2

    move v9, v4

    goto :goto_3a

    :cond_50
    move-object/from16 v26, p3

    move-object/from16 v22, p4

    move-object/from16 v28, p5

    move-object/from16 v23, v2

    move-object/from16 v19, v3

    move-object/from16 v24, v5

    move-object/from16 v21, v6

    move-object/from16 v25, v10

    move v1, v11

    move/from16 v27, v12

    move-object v10, v13

    move/from16 v20, v14

    move-object/from16 v5, p18

    move-object v6, v0

    move v12, v9

    goto :goto_39

    :goto_3a
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->A()V

    const v2, 0x74e8831f

    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 19
    invoke-virtual {v10}, Landroidx/compose/ui/text/TextStyle;->g()J

    move-result-wide v2

    .line 20
    sget-object v4, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/Color$Companion;->f()J

    move-result-wide v13

    cmp-long v4, v2, v13

    if-eqz v4, :cond_51

    :goto_3b
    move-wide/from16 v30, v2

    goto :goto_3c

    :cond_51
    shr-int/lit8 v2, v0, 0x9

    and-int/lit8 v2, v2, 0xe

    shr-int/lit8 v3, v1, 0x15

    and-int/lit8 v3, v3, 0x70

    or-int/2addr v2, v3

    .line 21
    invoke-interface {v5, v12, v7, v2}, Landroidx/compose/material/TextFieldColors;->h(ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v2

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color;->v()J

    move-result-wide v2

    goto :goto_3b

    .line 22
    :goto_3c
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->Q()V

    .line 23
    new-instance v2, Landroidx/compose/ui/text/TextStyle;

    move-object/from16 v29, v2

    const-wide/16 v32, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const-wide/16 v39, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const-wide/16 v44, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const-wide/16 v50, 0x0

    const/16 v52, 0x0

    const v53, 0x3fffe

    const/16 v54, 0x0

    invoke-direct/range {v29 .. v54}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextAlign;Landroidx/compose/ui/text/style/TextDirection;JLandroidx/compose/ui/text/style/TextIndent;ILkotlin/jvm/internal/k;)V

    invoke-virtual {v10, v2}, Landroidx/compose/ui/text/TextStyle;->C(Landroidx/compose/ui/text/TextStyle;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v29

    if-eqz v66, :cond_52

    const/4 v2, 0x0

    sget v3, Landroidx/compose/material/OutlinedTextFieldKt;->OutlinedTextFieldTopPadding:F

    const/4 v4, 0x0

    const/4 v11, 0x0

    const/16 v13, 0xd

    const/4 v14, 0x0

    move-object/from16 p6, v19

    move/from16 p7, v2

    move/from16 p8, v3

    move/from16 p9, v4

    move/from16 p10, v11

    move/from16 p11, v13

    move-object/from16 p12, v14

    .line 24
    invoke-static/range {p6 .. p12}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    goto :goto_3d

    :cond_52
    move-object/from16 v2, v19

    :goto_3d
    shr-int/lit8 v3, v0, 0x9

    and-int/lit8 v3, v3, 0xe

    shr-int/lit8 v4, v1, 0x15

    and-int/lit8 v4, v4, 0x70

    or-int/2addr v3, v4

    .line 25
    invoke-interface {v5, v12, v7, v3}, Landroidx/compose/material/TextFieldColors;->a(ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v3

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/Color;->v()J

    move-result-wide v13

    invoke-static {v2, v13, v14, v6}, Landroidx/compose/foundation/BackgroundKt;->a(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 26
    sget-object v3, Landroidx/compose/material/TextFieldDefaults;->INSTANCE:Landroidx/compose/material/TextFieldDefaults;

    invoke-virtual {v3}, Landroidx/compose/material/TextFieldDefaults;->e()F

    move-result v11

    .line 27
    invoke-virtual {v3}, Landroidx/compose/material/TextFieldDefaults;->d()F

    move-result v3

    .line 28
    invoke-static {v2, v11, v3}, Landroidx/compose/foundation/layout/SizeKt;->g(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 29
    new-instance v3, Landroidx/compose/ui/graphics/SolidColor;

    const/4 v11, 0x0

    move-object v13, v3

    and-int/lit8 v14, v1, 0xe

    or-int/2addr v4, v14

    invoke-interface {v5, v9, v7, v4}, Landroidx/compose/material/TextFieldColors;->i(ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v4

    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/Color;->v()J

    move-result-wide v14

    invoke-direct {v3, v14, v15, v11}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/k;)V

    const/4 v11, 0x0

    .line 30
    new-instance v3, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$2;

    move-object/from16 p2, v3

    move-object/from16 p3, p0

    move/from16 p4, v12

    move/from16 p5, v27

    move-object/from16 p6, v24

    move-object/from16 p7, v28

    move/from16 p8, v9

    move-object/from16 p9, v66

    move-object/from16 p10, v21

    move-object/from16 p11, v22

    move-object/from16 p12, v23

    move-object/from16 p13, v5

    move/from16 p14, v0

    move/from16 p15, v1

    move-object/from16 p16, v6

    invoke-direct/range {p2 .. p16}, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$2;-><init>(Ljava/lang/String;ZZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/MutableInteractionSource;ZLe8/p;Le8/p;Le8/p;Le8/p;Landroidx/compose/material/TextFieldColors;IILandroidx/compose/ui/graphics/Shape;)V

    const v4, 0x3acc1864

    const/4 v14, 0x1

    invoke-static {v7, v4, v14, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v14

    and-int/lit8 v3, v0, 0xe

    and-int/lit8 v4, v0, 0x70

    or-int/2addr v3, v4

    and-int/lit16 v4, v0, 0x1c00

    or-int/2addr v3, v4

    and-int v0, v0, v64

    or-int/2addr v0, v3

    shl-int/lit8 v3, v1, 0xc

    and-int v4, v3, v65

    or-int/2addr v0, v4

    sget v4, Landroidx/compose/foundation/text/KeyboardActions;->$stable:I

    shl-int/lit8 v4, v4, 0x15

    or-int/2addr v0, v4

    const/high16 v4, 0x1c00000

    and-int/2addr v4, v3

    or-int/2addr v0, v4

    const/high16 v4, 0xe000000

    and-int/2addr v4, v3

    or-int/2addr v0, v4

    const/high16 v4, 0x70000000

    and-int/2addr v3, v4

    or-int v16, v0, v3

    shr-int/lit8 v0, v1, 0x3

    and-int/lit8 v0, v0, 0xe

    or-int/lit16 v0, v0, 0x6000

    shr-int/lit8 v1, v1, 0xc

    and-int/lit16 v1, v1, 0x380

    or-int v17, v0, v1

    const/16 v18, 0x800

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v3, v12

    move/from16 v4, v20

    move-object/from16 v30, v5

    move-object/from16 v5, v29

    move-object/from16 v29, v6

    move-object/from16 v6, v25

    move-object/from16 v31, v7

    move-object/from16 v7, v26

    move/from16 v8, v27

    move/from16 v32, v9

    move/from16 v9, v67

    move-object/from16 v33, v10

    move-object/from16 v10, v24

    move/from16 v34, v12

    move-object/from16 v12, v28

    move-object/from16 v15, v31

    .line 31
    invoke-static/range {v0 .. v18}, Landroidx/compose/foundation/text/BasicTextFieldKt;->b(Ljava/lang/String;Le8/l;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZILandroidx/compose/ui/text/input/VisualTransformation;Le8/l;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Le8/q;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v3, v19

    move/from16 v5, v20

    move-object/from16 v8, v21

    move-object/from16 v9, v22

    move-object/from16 v10, v23

    move-object/from16 v12, v24

    move-object/from16 v13, v25

    move-object/from16 v14, v26

    move/from16 v15, v27

    move-object/from16 v17, v28

    move-object/from16 v18, v29

    move-object/from16 v19, v30

    move/from16 v11, v32

    move-object/from16 v6, v33

    move/from16 v4, v34

    move-object/from16 v7, v66

    move/from16 v16, v67

    .line 32
    :goto_3e
    invoke-interface/range {v31 .. v31}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v2

    if-nez v2, :cond_53

    goto :goto_3f

    :cond_53
    new-instance v1, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$3;

    move-object v0, v1

    move-object/from16 v68, v1

    move-object/from16 v1, p0

    move-object/from16 v69, v2

    move-object/from16 v2, p1

    move/from16 v20, p20

    move/from16 v21, p21

    move/from16 v22, p22

    invoke-direct/range {v0 .. v22}, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$3;-><init>(Ljava/lang/String;Le8/l;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Le8/p;Le8/p;Le8/p;Le8/p;ZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZILandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material/TextFieldColors;III)V

    move-object/from16 v1, v68

    move-object/from16 v0, v69

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    :goto_3f
    return-void
.end method

.method public static final c(Landroidx/compose/ui/Modifier;Le8/p;Le8/q;Le8/p;Le8/p;Le8/p;ZFLe8/l;Le8/p;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;II)V
    .locals 27
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Le8/q;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
    .param p8    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Landroidx/compose/foundation/layout/PaddingValues;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p11    # Landroidx/compose/runtime/Composer;
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
            ">;",
            "Le8/q<",
            "-",
            "Landroidx/compose/ui/Modifier;",
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
            ">;ZF",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/geometry/Size;",
            "Lw7/l0;",
            ">;",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p12

    const-string v0, "modifier"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textField"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onLabelMeasured"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "border"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paddingValues"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x7a2970ae

    move-object/from16 v13, p11

    .line 1
    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    move-result-object v0

    and-int/lit8 v13, v12, 0xe

    if-nez v13, :cond_1

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v13, 0x4

    goto :goto_0

    :cond_0
    const/4 v13, 0x2

    :goto_0
    or-int/2addr v13, v12

    goto :goto_1

    :cond_1
    move v13, v12

    :goto_1
    and-int/lit8 v16, v12, 0x70

    if-nez v16, :cond_3

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    const/16 v16, 0x20

    goto :goto_2

    :cond_2
    const/16 v16, 0x10

    :goto_2
    or-int v13, v13, v16

    :cond_3
    and-int/lit16 v14, v12, 0x380

    if-nez v14, :cond_5

    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    const/16 v14, 0x100

    goto :goto_3

    :cond_4
    const/16 v14, 0x80

    :goto_3
    or-int/2addr v13, v14

    :cond_5
    and-int/lit16 v14, v12, 0x1c00

    if-nez v14, :cond_7

    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    const/16 v14, 0x800

    goto :goto_4

    :cond_6
    const/16 v14, 0x400

    :goto_4
    or-int/2addr v13, v14

    :cond_7
    const v14, 0xe000

    and-int/2addr v14, v12

    if-nez v14, :cond_9

    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    const/16 v14, 0x4000

    goto :goto_5

    :cond_8
    const/16 v14, 0x2000

    :goto_5
    or-int/2addr v13, v14

    :cond_9
    const/high16 v14, 0x70000

    and-int/2addr v14, v12

    if-nez v14, :cond_b

    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    const/high16 v14, 0x20000

    goto :goto_6

    :cond_a
    const/high16 v14, 0x10000

    :goto_6
    or-int/2addr v13, v14

    :cond_b
    const/high16 v14, 0x380000

    and-int/2addr v14, v12

    if-nez v14, :cond_d

    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->m(Z)Z

    move-result v14

    if-eqz v14, :cond_c

    const/high16 v14, 0x100000

    goto :goto_7

    :cond_c
    const/high16 v14, 0x80000

    :goto_7
    or-int/2addr v13, v14

    :cond_d
    const/high16 v14, 0x1c00000

    and-int/2addr v14, v12

    if-nez v14, :cond_f

    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->n(F)Z

    move-result v14

    if-eqz v14, :cond_e

    const/high16 v14, 0x800000

    goto :goto_8

    :cond_e
    const/high16 v14, 0x400000

    :goto_8
    or-int/2addr v13, v14

    :cond_f
    const/high16 v14, 0xe000000

    and-int/2addr v14, v12

    if-nez v14, :cond_11

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    const/high16 v14, 0x4000000

    goto :goto_9

    :cond_10
    const/high16 v14, 0x2000000

    :goto_9
    or-int/2addr v13, v14

    :cond_11
    const/high16 v14, 0x70000000

    and-int/2addr v14, v12

    if-nez v14, :cond_13

    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_12

    const/high16 v14, 0x20000000

    goto :goto_a

    :cond_12
    const/high16 v14, 0x10000000

    :goto_a
    or-int/2addr v13, v14

    :cond_13
    and-int/lit8 v14, p13, 0xe

    if-nez v14, :cond_15

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_14

    const/4 v14, 0x4

    goto :goto_b

    :cond_14
    const/4 v14, 0x2

    :goto_b
    or-int v14, p13, v14

    goto :goto_c

    :cond_15
    move/from16 v14, p13

    :goto_c
    const v16, 0x5b6db6db

    and-int v15, v13, v16

    const v1, 0x12492492

    if-ne v15, v1, :cond_16

    and-int/lit8 v1, v14, 0xb

    const/4 v14, 0x2

    if-ne v1, v14, :cond_16

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->b()Z

    move-result v1

    if-nez v1, :cond_17

    :cond_16
    const/4 v1, 0x4

    goto :goto_d

    .line 2
    :cond_17
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->g()V

    move-object v8, v4

    goto/16 :goto_18

    :goto_d
    new-array v14, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v9, v14, v1

    .line 3
    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    const/4 v1, 0x1

    aput-object v15, v14, v1

    invoke-static/range {p7 .. p7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    const/16 v17, 0x2

    aput-object v15, v14, v17

    const/4 v15, 0x3

    aput-object v11, v14, v15

    const v15, -0x21de6e89

    invoke-interface {v0, v15}, Landroidx/compose/runtime/Composer;->G(I)V

    const/4 v1, 0x4

    const/4 v15, 0x0

    const/16 v18, 0x0

    :goto_e
    if-ge v15, v1, :cond_18

    .line 4
    aget-object v1, v14, v15

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v1

    or-int v18, v18, v1

    add-int/lit8 v15, v15, 0x1

    const/4 v1, 0x4

    goto :goto_e

    .line 5
    :cond_18
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    move-result-object v1

    if-nez v18, :cond_19

    .line 6
    sget-object v14, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v14}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    move-result-object v14

    if-ne v1, v14, :cond_1a

    .line 7
    :cond_19
    new-instance v1, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;

    invoke-direct {v1, v9, v7, v8, v11}, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;-><init>(Le8/l;ZFLandroidx/compose/foundation/layout/PaddingValues;)V

    .line 8
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 9
    :cond_1a
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 10
    check-cast v1, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;

    .line 11
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v14

    .line 12
    invoke-interface {v0, v14}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v14

    .line 13
    check-cast v14, Landroidx/compose/ui/unit/LayoutDirection;

    shl-int/lit8 v15, v13, 0x3

    and-int/lit8 v15, v15, 0x70

    const v7, -0x4ee9b9da

    .line 14
    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 15
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v7

    .line 16
    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    .line 17
    check-cast v7, Landroidx/compose/ui/unit/Density;

    .line 18
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v8

    .line 19
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v8

    .line 20
    check-cast v8, Landroidx/compose/ui/unit/LayoutDirection;

    .line 21
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v9

    .line 22
    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v9

    .line 23
    check-cast v9, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 24
    sget-object v19, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    move-result-object v12

    .line 25
    invoke-static/range {p0 .. p0}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    move-result-object v4

    shl-int/lit8 v15, v15, 0x9

    and-int/lit16 v15, v15, 0x1c00

    const/4 v2, 0x6

    or-int/2addr v15, v2

    .line 26
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    move-result-object v2

    instance-of v2, v2, Landroidx/compose/runtime/Applier;

    if-nez v2, :cond_1b

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 27
    :cond_1b
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->e()V

    .line 28
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->r()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 29
    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    goto :goto_f

    .line 30
    :cond_1c
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->c()V

    .line 31
    :goto_f
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->L()V

    .line 32
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v2

    .line 33
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    move-result-object v12

    invoke-static {v2, v1, v12}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 34
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    move-result-object v1

    invoke-static {v2, v7, v1}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 35
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    move-result-object v1

    invoke-static {v2, v8, v1}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 36
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    move-result-object v1

    invoke-static {v2, v9, v1}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 37
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->o()V

    .line 38
    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v1

    shr-int/lit8 v2, v15, 0x3

    and-int/lit8 v2, v2, 0x70

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v1, v0, v2}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7ab4aae9

    .line 39
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    shr-int/lit8 v2, v15, 0x9

    const v4, 0x70ae189

    .line 40
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->G(I)V

    and-int/lit8 v2, v2, 0xa

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1e

    .line 41
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->b()Z

    move-result v2

    if-nez v2, :cond_1d

    goto :goto_10

    .line 42
    :cond_1d
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->g()V

    move-object/from16 v2, p1

    move-object/from16 v8, p3

    goto/16 :goto_17

    :cond_1e
    :goto_10
    shr-int/lit8 v2, v13, 0x1b

    and-int/lit8 v2, v2, 0xe

    .line 43
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v10, v0, v2}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v2, 0x45bb78fc    # 5999.123f

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    const v4, 0x2bb5b5d7

    if-eqz v5, :cond_21

    .line 44
    sget-object v7, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    const-string v8, "Leading"

    invoke-static {v7, v8}, Landroidx/compose/ui/layout/LayoutIdKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    invoke-static {}, Landroidx/compose/material/TextFieldImplKt;->d()Landroidx/compose/ui/Modifier;

    move-result-object v8

    invoke-interface {v7, v8}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    .line 45
    sget-object v8, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/Alignment$Companion;->e()Landroidx/compose/ui/Alignment;

    move-result-object v8

    .line 46
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->G(I)V

    const/4 v9, 0x0

    const/4 v12, 0x6

    .line 47
    invoke-static {v8, v9, v0, v12}, Landroidx/compose/foundation/layout/BoxKt;->h(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v8

    const v9, -0x4ee9b9da

    .line 48
    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 49
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v9

    .line 50
    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v9

    .line 51
    check-cast v9, Landroidx/compose/ui/unit/Density;

    .line 52
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v12

    .line 53
    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v12

    .line 54
    check-cast v12, Landroidx/compose/ui/unit/LayoutDirection;

    .line 55
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v15

    .line 56
    invoke-interface {v0, v15}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v15

    .line 57
    check-cast v15, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 58
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    move-result-object v4

    .line 59
    invoke-static {v7}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    move-result-object v7

    .line 60
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    move-result-object v2

    instance-of v2, v2, Landroidx/compose/runtime/Applier;

    if-nez v2, :cond_1f

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 61
    :cond_1f
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->e()V

    .line 62
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->r()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 63
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    goto :goto_11

    .line 64
    :cond_20
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->c()V

    .line 65
    :goto_11
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->L()V

    .line 66
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v2

    .line 67
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    move-result-object v4

    invoke-static {v2, v8, v4}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 68
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    move-result-object v4

    invoke-static {v2, v9, v4}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 69
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    move-result-object v4

    invoke-static {v2, v12, v4}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 70
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    move-result-object v4

    invoke-static {v2, v15, v4}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 71
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->o()V

    .line 72
    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v2, v0, v8}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    const v2, -0x7f65a980

    .line 74
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 75
    sget-object v2, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    const v2, 0x64d56faa

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    shr-int/lit8 v2, v13, 0xc

    and-int/lit8 v2, v2, 0xe

    .line 76
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v5, v0, v2}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 77
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 78
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 79
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->d()V

    .line 80
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 81
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 82
    :cond_21
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    const v2, 0x45bb7a19    # 5999.262f

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    if-eqz v6, :cond_24

    .line 83
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    const-string v4, "Trailing"

    invoke-static {v2, v4}, Landroidx/compose/ui/layout/LayoutIdKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static {}, Landroidx/compose/material/TextFieldImplKt;->d()Landroidx/compose/ui/Modifier;

    move-result-object v4

    invoke-interface {v2, v4}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 84
    sget-object v4, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/Alignment$Companion;->e()Landroidx/compose/ui/Alignment;

    move-result-object v4

    const v7, 0x2bb5b5d7

    .line 85
    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->G(I)V

    const/4 v7, 0x0

    const/4 v8, 0x6

    .line 86
    invoke-static {v4, v7, v0, v8}, Landroidx/compose/foundation/layout/BoxKt;->h(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v4

    const v7, -0x4ee9b9da

    .line 87
    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 88
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v7

    .line 89
    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    .line 90
    check-cast v7, Landroidx/compose/ui/unit/Density;

    .line 91
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v8

    .line 92
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v8

    .line 93
    check-cast v8, Landroidx/compose/ui/unit/LayoutDirection;

    .line 94
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v9

    .line 95
    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v9

    .line 96
    check-cast v9, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 97
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    move-result-object v12

    .line 98
    invoke-static {v2}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    move-result-object v2

    .line 99
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    move-result-object v15

    instance-of v15, v15, Landroidx/compose/runtime/Applier;

    if-nez v15, :cond_22

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 100
    :cond_22
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->e()V

    .line 101
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->r()Z

    move-result v15

    if-eqz v15, :cond_23

    .line 102
    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    goto :goto_12

    .line 103
    :cond_23
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->c()V

    .line 104
    :goto_12
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->L()V

    .line 105
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v12

    .line 106
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    move-result-object v15

    invoke-static {v12, v4, v15}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 107
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    move-result-object v4

    invoke-static {v12, v7, v4}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 108
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    move-result-object v4

    invoke-static {v12, v8, v4}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 109
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    move-result-object v4

    invoke-static {v12, v9, v4}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 110
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->o()V

    .line 111
    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v4

    invoke-static {v4}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v4

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v4, v0, v8}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    const v2, -0x7f65a980

    .line 113
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 114
    sget-object v2, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    const v2, -0x508f939f

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    shr-int/lit8 v2, v13, 0xf

    and-int/lit8 v2, v2, 0xe

    .line 115
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v6, v0, v2}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 116
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 117
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 118
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->d()V

    .line 119
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 120
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 121
    :cond_24
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 122
    invoke-static {v11, v14}, Landroidx/compose/foundation/layout/PaddingKt;->g(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v2

    .line 123
    invoke-static {v11, v14}, Landroidx/compose/foundation/layout/PaddingKt;->f(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v4

    .line 124
    sget-object v7, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    if-eqz v5, :cond_25

    .line 125
    invoke-static {}, Landroidx/compose/material/TextFieldImplKt;->c()F

    move-result v8

    sub-float/2addr v2, v8

    .line 126
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->f(F)F

    move-result v2

    const/4 v8, 0x0

    int-to-float v9, v8

    .line 127
    invoke-static {v9}, Landroidx/compose/ui/unit/Dp;->f(F)F

    move-result v9

    .line 128
    invoke-static {v2, v9}, Lj8/m;->d(FF)F

    move-result v2

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->f(F)F

    move-result v2

    :goto_13
    move/from16 v21, v2

    goto :goto_14

    :cond_25
    const/4 v8, 0x0

    goto :goto_13

    :goto_14
    const/16 v22, 0x0

    if-eqz v6, :cond_26

    .line 129
    invoke-static {}, Landroidx/compose/material/TextFieldImplKt;->c()F

    move-result v2

    sub-float/2addr v4, v2

    .line 130
    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->f(F)F

    move-result v2

    int-to-float v4, v8

    .line 131
    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->f(F)F

    move-result v4

    .line 132
    invoke-static {v2, v4}, Lj8/m;->d(FF)F

    move-result v2

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->f(F)F

    move-result v4

    :cond_26
    move/from16 v23, v4

    const/16 v24, 0x0

    const/16 v25, 0xa

    const/16 v26, 0x0

    move-object/from16 v20, v7

    .line 133
    invoke-static/range {v20 .. v26}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const v4, 0x45bb7e0c    # 5999.756f

    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->G(I)V

    if-eqz v3, :cond_27

    const-string v4, "Hint"

    .line 134
    invoke-static {v7, v4}, Landroidx/compose/ui/layout/LayoutIdKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    invoke-interface {v4, v2}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    shr-int/lit8 v8, v13, 0x3

    and-int/lit8 v8, v8, 0x70

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v3, v4, v0, v8}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    const-string v4, "TextField"

    .line 135
    invoke-static {v7, v4}, Landroidx/compose/ui/layout/LayoutIdKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    invoke-interface {v4, v2}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const v4, 0x2bb5b5d7

    .line 136
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 137
    sget-object v4, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/Alignment$Companion;->o()Landroidx/compose/ui/Alignment;

    move-result-object v8

    const/16 v9, 0x30

    const/4 v12, 0x1

    .line 138
    invoke-static {v8, v12, v0, v9}, Landroidx/compose/foundation/layout/BoxKt;->h(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v8

    const v9, -0x4ee9b9da

    .line 139
    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 140
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v9

    .line 141
    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v9

    .line 142
    check-cast v9, Landroidx/compose/ui/unit/Density;

    .line 143
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v12

    .line 144
    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v12

    .line 145
    check-cast v12, Landroidx/compose/ui/unit/LayoutDirection;

    .line 146
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v14

    .line 147
    invoke-interface {v0, v14}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v14

    .line 148
    check-cast v14, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 149
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    move-result-object v15

    .line 150
    invoke-static {v2}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    move-result-object v2

    .line 151
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    move-result-object v1

    instance-of v1, v1, Landroidx/compose/runtime/Applier;

    if-nez v1, :cond_28

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 152
    :cond_28
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->e()V

    .line 153
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->r()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 154
    invoke-interface {v0, v15}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    goto :goto_15

    .line 155
    :cond_29
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->c()V

    .line 156
    :goto_15
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->L()V

    .line 157
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v1

    .line 158
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    move-result-object v15

    invoke-static {v1, v8, v15}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 159
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    move-result-object v8

    invoke-static {v1, v9, v8}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 160
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    move-result-object v8

    invoke-static {v1, v12, v8}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 161
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    move-result-object v8

    invoke-static {v1, v14, v8}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 162
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->o()V

    .line 163
    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v1

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, v1, v0, v9}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7ab4aae9

    .line 164
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    const v1, -0x7f65a980

    .line 165
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 166
    sget-object v1, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    const v1, -0x47dbf6f1

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    shr-int/lit8 v1, v13, 0x3

    and-int/lit8 v1, v1, 0xe

    .line 167
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-interface {v2, v0, v1}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 168
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 169
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 170
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->d()V

    .line 171
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 172
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    move-object/from16 v8, p3

    if-eqz v8, :cond_2c

    const-string v1, "Label"

    .line 173
    invoke-static {v7, v1}, Landroidx/compose/ui/layout/LayoutIdKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const v7, 0x2bb5b5d7

    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 174
    invoke-virtual {v4}, Landroidx/compose/ui/Alignment$Companion;->o()Landroidx/compose/ui/Alignment;

    move-result-object v4

    const/4 v7, 0x0

    .line 175
    invoke-static {v4, v7, v0, v7}, Landroidx/compose/foundation/layout/BoxKt;->h(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v4

    const v7, -0x4ee9b9da

    .line 176
    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 177
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v7

    .line 178
    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    .line 179
    check-cast v7, Landroidx/compose/ui/unit/Density;

    .line 180
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v9

    .line 181
    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v9

    .line 182
    check-cast v9, Landroidx/compose/ui/unit/LayoutDirection;

    .line 183
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v12

    .line 184
    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v12

    .line 185
    check-cast v12, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 186
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    move-result-object v14

    .line 187
    invoke-static {v1}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    move-result-object v1

    .line 188
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    move-result-object v15

    instance-of v15, v15, Landroidx/compose/runtime/Applier;

    if-nez v15, :cond_2a

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 189
    :cond_2a
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->e()V

    .line 190
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->r()Z

    move-result v15

    if-eqz v15, :cond_2b

    .line 191
    invoke-interface {v0, v14}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    goto :goto_16

    .line 192
    :cond_2b
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->c()V

    .line 193
    :goto_16
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->L()V

    .line 194
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v14

    .line 195
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    move-result-object v15

    invoke-static {v14, v4, v15}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 196
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    move-result-object v4

    invoke-static {v14, v7, v4}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 197
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    move-result-object v4

    invoke-static {v14, v9, v4}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 198
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    move-result-object v4

    invoke-static {v14, v12, v4}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 199
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->o()V

    .line 200
    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v4

    invoke-static {v4}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v4

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v4, v0, v7}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7ab4aae9

    .line 201
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    const v1, -0x7f65a980

    .line 202
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    const v1, -0x3493e9d

    .line 203
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    shr-int/lit8 v1, v13, 0x9

    and-int/lit8 v1, v1, 0xe

    .line 204
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v8, v0, v1}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 205
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 206
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->d()V

    .line 207
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 208
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 209
    :cond_2c
    :goto_17
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 210
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 211
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->d()V

    .line 212
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 213
    :goto_18
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v14

    if-nez v14, :cond_2d

    goto :goto_19

    :cond_2d
    new-instance v15, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextFieldLayout$2;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p12

    move/from16 v13, p13

    invoke-direct/range {v0 .. v13}, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextFieldLayout$2;-><init>(Landroidx/compose/ui/Modifier;Le8/p;Le8/q;Le8/p;Le8/p;Le8/p;ZFLe8/l;Le8/p;Landroidx/compose/foundation/layout/PaddingValues;II)V

    invoke-interface {v14, v15}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    :goto_19
    return-void
.end method

.method public static final synthetic d(IIIIIJFLandroidx/compose/foundation/layout/PaddingValues;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static/range {p0 .. p8}, Landroidx/compose/material/OutlinedTextFieldKt;->h(IIIIIJFLandroidx/compose/foundation/layout/PaddingValues;)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic e(IIIIIJ)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static/range {p0 .. p6}, Landroidx/compose/material/OutlinedTextFieldKt;->i(IIIIIJ)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic f()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/OutlinedTextFieldKt;->OutlinedTextFieldInnerPadding:F

    return v0
.end method

.method public static final synthetic g(Landroidx/compose/ui/layout/Placeable$PlacementScope;IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;FZFLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/foundation/layout/PaddingValues;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static/range {p0 .. p13}, Landroidx/compose/material/OutlinedTextFieldKt;->k(Landroidx/compose/ui/layout/Placeable$PlacementScope;IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;FZFLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/foundation/layout/PaddingValues;)V

    .line 4
    return-void
.end method

.method private static final h(IIIIIJFLandroidx/compose/foundation/layout/PaddingValues;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    .line 4
    move-result p2

    .line 5
    .line 6
    .line 7
    invoke-interface {p8}, Landroidx/compose/foundation/layout/PaddingValues;->d()F

    .line 8
    move-result p4

    .line 9
    mul-float/2addr p4, p7

    .line 10
    .line 11
    .line 12
    invoke-interface {p8}, Landroidx/compose/foundation/layout/PaddingValues;->a()F

    .line 13
    move-result p8

    .line 14
    mul-float/2addr p8, p7

    .line 15
    int-to-float p2, p2

    .line 16
    add-float/2addr p2, p8

    .line 17
    int-to-float p3, p3

    .line 18
    .line 19
    const/high16 p7, 0x40000000    # 2.0f

    .line 20
    div-float/2addr p3, p7

    .line 21
    .line 22
    .line 23
    invoke-static {p4, p3}, Ljava/lang/Math;->max(FF)F

    .line 24
    move-result p3

    .line 25
    add-float/2addr p2, p3

    .line 26
    .line 27
    .line 28
    invoke-static {p5, p6}, Landroidx/compose/ui/unit/Constraints;->o(J)I

    .line 29
    move-result p3

    .line 30
    .line 31
    .line 32
    invoke-static {p2}, Lg8/a;->c(F)I

    .line 33
    move-result p2

    .line 34
    .line 35
    .line 36
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 37
    move-result p1

    .line 38
    .line 39
    .line 40
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    .line 41
    move-result p0

    .line 42
    .line 43
    .line 44
    invoke-static {p3, p0}, Ljava/lang/Math;->max(II)I

    .line 45
    move-result p0

    .line 46
    return p0
.end method

.method private static final i(IIIIIJ)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    .line 4
    move-result p3

    .line 5
    .line 6
    .line 7
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    .line 8
    move-result p2

    .line 9
    add-int/2addr p0, p2

    .line 10
    add-int/2addr p0, p1

    .line 11
    .line 12
    .line 13
    invoke-static {p5, p6}, Landroidx/compose/ui/unit/Constraints;->p(J)I

    .line 14
    move-result p1

    .line 15
    .line 16
    .line 17
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public static final j(Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;
    .locals 1
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/foundation/layout/PaddingValues;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "$this$outlineCutout"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "paddingValues"

    .line 8
    .line 9
    .line 10
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    new-instance v0, Landroidx/compose/material/OutlinedTextFieldKt$outlineCutout$1;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p1, p2, p3}, Landroidx/compose/material/OutlinedTextFieldKt$outlineCutout$1;-><init>(JLandroidx/compose/foundation/layout/PaddingValues;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p0, v0}, Landroidx/compose/ui/draw/DrawModifierKt;->c(Landroidx/compose/ui/Modifier;Le8/l;)Landroidx/compose/ui/Modifier;

    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method private static final k(Landroidx/compose/ui/layout/Placeable$PlacementScope;IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;FZFLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/foundation/layout/PaddingValues;)V
    .locals 18

    .line 1
    .line 2
    move/from16 v0, p1

    .line 3
    .line 4
    .line 5
    invoke-interface/range {p13 .. p13}, Landroidx/compose/foundation/layout/PaddingValues;->d()F

    .line 6
    move-result v1

    .line 7
    .line 8
    mul-float v1, v1, p11

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Lg8/a;->c(F)I

    .line 12
    move-result v8

    .line 13
    .line 14
    move-object/from16 v1, p12

    .line 15
    .line 16
    move-object/from16 v2, p13

    .line 17
    .line 18
    .line 19
    invoke-static {v2, v1}, Landroidx/compose/foundation/layout/PaddingKt;->g(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 20
    move-result v1

    .line 21
    .line 22
    mul-float v1, v1, p11

    .line 23
    .line 24
    .line 25
    invoke-static {v1}, Lg8/a;->c(F)I

    .line 26
    move-result v9

    .line 27
    .line 28
    .line 29
    invoke-static {}, Landroidx/compose/material/TextFieldImplKt;->c()F

    .line 30
    move-result v1

    .line 31
    .line 32
    mul-float v10, v1, p11

    .line 33
    .line 34
    if-eqz p3, :cond_0

    .line 35
    const/4 v3, 0x0

    .line 36
    .line 37
    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->i()Landroidx/compose/ui/Alignment$Vertical;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    .line 44
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 45
    move-result v2

    .line 46
    .line 47
    .line 48
    invoke-interface {v1, v2, v0}, Landroidx/compose/ui/Alignment$Vertical;->a(II)I

    .line 49
    move-result v4

    .line 50
    const/4 v5, 0x0

    .line 51
    const/4 v6, 0x4

    .line 52
    const/4 v7, 0x0

    .line 53
    .line 54
    move-object/from16 v1, p0

    .line 55
    .line 56
    move-object/from16 v2, p3

    .line 57
    .line 58
    .line 59
    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->n(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 60
    .line 61
    :cond_0
    if-eqz p4, :cond_1

    .line 62
    .line 63
    .line 64
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/ui/layout/Placeable;->Q0()I

    .line 65
    move-result v1

    .line 66
    .line 67
    sub-int v13, p2, v1

    .line 68
    .line 69
    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->i()Landroidx/compose/ui/Alignment$Vertical;

    .line 73
    move-result-object v1

    .line 74
    .line 75
    .line 76
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 77
    move-result v2

    .line 78
    .line 79
    .line 80
    invoke-interface {v1, v2, v0}, Landroidx/compose/ui/Alignment$Vertical;->a(II)I

    .line 81
    move-result v14

    .line 82
    const/4 v15, 0x0

    .line 83
    .line 84
    const/16 v16, 0x4

    .line 85
    .line 86
    const/16 v17, 0x0

    .line 87
    .line 88
    move-object/from16 v11, p0

    .line 89
    .line 90
    move-object/from16 v12, p4

    .line 91
    .line 92
    .line 93
    invoke-static/range {v11 .. v17}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->n(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 94
    .line 95
    :cond_1
    if-eqz p6, :cond_4

    .line 96
    .line 97
    if-eqz p10, :cond_2

    .line 98
    .line 99
    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->i()Landroidx/compose/ui/Alignment$Vertical;

    .line 103
    move-result-object v1

    .line 104
    .line 105
    .line 106
    invoke-virtual/range {p6 .. p6}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 107
    move-result v2

    .line 108
    .line 109
    .line 110
    invoke-interface {v1, v2, v0}, Landroidx/compose/ui/Alignment$Vertical;->a(II)I

    .line 111
    move-result v1

    .line 112
    goto :goto_0

    .line 113
    :cond_2
    move v1, v8

    .line 114
    :goto_0
    int-to-float v1, v1

    .line 115
    const/4 v2, 0x1

    .line 116
    int-to-float v2, v2

    .line 117
    .line 118
    sub-float v2, v2, p9

    .line 119
    mul-float/2addr v1, v2

    .line 120
    .line 121
    .line 122
    invoke-virtual/range {p6 .. p6}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 123
    move-result v3

    .line 124
    .line 125
    div-int/lit8 v3, v3, 0x2

    .line 126
    int-to-float v3, v3

    .line 127
    .line 128
    mul-float v3, v3, p9

    .line 129
    sub-float/2addr v1, v3

    .line 130
    .line 131
    if-nez p3, :cond_3

    .line 132
    const/4 v2, 0x0

    .line 133
    goto :goto_1

    .line 134
    .line 135
    .line 136
    :cond_3
    invoke-static/range {p3 .. p3}, Landroidx/compose/material/TextFieldImplKt;->i(Landroidx/compose/ui/layout/Placeable;)I

    .line 137
    move-result v3

    .line 138
    int-to-float v3, v3

    .line 139
    sub-float/2addr v3, v10

    .line 140
    mul-float/2addr v2, v3

    .line 141
    .line 142
    .line 143
    :goto_1
    invoke-static {v2}, Lg8/a;->c(F)I

    .line 144
    move-result v2

    .line 145
    .line 146
    add-int v3, v2, v9

    .line 147
    .line 148
    .line 149
    invoke-static {v1}, Lg8/a;->c(F)I

    .line 150
    move-result v4

    .line 151
    const/4 v5, 0x0

    .line 152
    const/4 v6, 0x4

    .line 153
    const/4 v7, 0x0

    .line 154
    .line 155
    move-object/from16 v1, p0

    .line 156
    .line 157
    move-object/from16 v2, p6

    .line 158
    .line 159
    .line 160
    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->n(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 161
    .line 162
    :cond_4
    if-eqz p10, :cond_5

    .line 163
    .line 164
    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->i()Landroidx/compose/ui/Alignment$Vertical;

    .line 168
    move-result-object v1

    .line 169
    .line 170
    .line 171
    invoke-virtual/range {p5 .. p5}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 172
    move-result v2

    .line 173
    .line 174
    .line 175
    invoke-interface {v1, v2, v0}, Landroidx/compose/ui/Alignment$Vertical;->a(II)I

    .line 176
    move-result v1

    .line 177
    goto :goto_2

    .line 178
    :cond_5
    move v1, v8

    .line 179
    .line 180
    .line 181
    :goto_2
    invoke-static/range {p6 .. p6}, Landroidx/compose/material/TextFieldImplKt;->h(Landroidx/compose/ui/layout/Placeable;)I

    .line 182
    move-result v2

    .line 183
    .line 184
    div-int/lit8 v2, v2, 0x2

    .line 185
    .line 186
    .line 187
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 188
    move-result v12

    .line 189
    .line 190
    .line 191
    invoke-static/range {p3 .. p3}, Landroidx/compose/material/TextFieldImplKt;->i(Landroidx/compose/ui/layout/Placeable;)I

    .line 192
    move-result v11

    .line 193
    const/4 v13, 0x0

    .line 194
    const/4 v14, 0x4

    .line 195
    const/4 v15, 0x0

    .line 196
    .line 197
    move-object/from16 v9, p0

    .line 198
    .line 199
    move-object/from16 v10, p5

    .line 200
    .line 201
    .line 202
    invoke-static/range {v9 .. v15}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->n(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 203
    .line 204
    if-eqz p7, :cond_7

    .line 205
    .line 206
    if-eqz p10, :cond_6

    .line 207
    .line 208
    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->i()Landroidx/compose/ui/Alignment$Vertical;

    .line 212
    move-result-object v1

    .line 213
    .line 214
    .line 215
    invoke-virtual/range {p7 .. p7}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 216
    move-result v2

    .line 217
    .line 218
    .line 219
    invoke-interface {v1, v2, v0}, Landroidx/compose/ui/Alignment$Vertical;->a(II)I

    .line 220
    move-result v8

    .line 221
    :cond_6
    move v3, v8

    .line 222
    .line 223
    .line 224
    invoke-static/range {p3 .. p3}, Landroidx/compose/material/TextFieldImplKt;->i(Landroidx/compose/ui/layout/Placeable;)I

    .line 225
    move-result v2

    .line 226
    const/4 v4, 0x0

    .line 227
    const/4 v5, 0x4

    .line 228
    const/4 v6, 0x0

    .line 229
    .line 230
    move-object/from16 v0, p0

    .line 231
    .line 232
    move-object/from16 v1, p7

    .line 233
    .line 234
    .line 235
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->n(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 236
    .line 237
    :cond_7
    sget-object v0, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntOffset$Companion;->a()J

    .line 241
    move-result-wide v0

    .line 242
    const/4 v2, 0x0

    .line 243
    const/4 v3, 0x2

    .line 244
    const/4 v4, 0x0

    .line 245
    .line 246
    move-object/from16 p1, p8

    .line 247
    .line 248
    move-wide/from16 p2, v0

    .line 249
    .line 250
    move/from16 p4, v2

    .line 251
    .line 252
    move/from16 p5, v3

    .line 253
    .line 254
    move-object/from16 p6, v4

    .line 255
    .line 256
    .line 257
    invoke-static/range {p0 .. p6}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->l(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;JFILjava/lang/Object;)V

    .line 258
    return-void
.end method
