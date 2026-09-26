.class public final Lcoil/compose/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/ui/Modifier;Le8/l;Le8/l;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;ILandroidx/compose/runtime/Composer;II)V
    .locals 30
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/ui/Alignment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Landroidx/compose/ui/layout/ContentScale;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Landroidx/compose/ui/graphics/ColorFilter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Landroidx/compose/ui/Modifier;",
            "Le8/l<",
            "-",
            "Lcoil/compose/b$c;",
            "+",
            "Lcoil/compose/b$c;",
            ">;",
            "Le8/l<",
            "-",
            "Lcoil/compose/b$c;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/ui/Alignment;",
            "Landroidx/compose/ui/layout/ContentScale;",
            "F",
            "Landroidx/compose/ui/graphics/ColorFilter;",
            "I",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move/from16 v12, p12

    const v0, -0x381e6b2c

    move-object/from16 v1, p10

    .line 1
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    move-result-object v1

    and-int/lit8 v2, v12, 0x4

    if-eqz v2, :cond_0

    .line 2
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v3, v2

    goto :goto_0

    :cond_0
    move-object/from16 v3, p2

    :goto_0
    and-int/lit8 v2, v12, 0x8

    if-eqz v2, :cond_1

    .line 3
    sget-object v2, Lcoil/compose/b;->Companion:Lcoil/compose/b$b;

    invoke-virtual {v2}, Lcoil/compose/b$b;->a()Le8/l;

    move-result-object v2

    move/from16 v11, p11

    and-int/lit16 v4, v11, -0x1c01

    move-object v5, v2

    goto :goto_1

    :cond_1
    move/from16 v11, p11

    move-object/from16 v5, p3

    move v4, v11

    :goto_1
    and-int/lit8 v2, v12, 0x10

    const/4 v6, 0x0

    if-eqz v2, :cond_2

    move-object v7, v6

    goto :goto_2

    :cond_2
    move-object/from16 v7, p4

    :goto_2
    and-int/lit8 v2, v12, 0x20

    if-eqz v2, :cond_3

    .line 4
    sget-object v2, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/Alignment$Companion;->e()Landroidx/compose/ui/Alignment;

    move-result-object v2

    move-object v8, v2

    goto :goto_3

    :cond_3
    move-object/from16 v8, p5

    :goto_3
    and-int/lit8 v2, v12, 0x40

    if-eqz v2, :cond_4

    .line 5
    sget-object v2, Landroidx/compose/ui/layout/ContentScale;->Companion:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/layout/ContentScale$Companion;->b()Landroidx/compose/ui/layout/ContentScale;

    move-result-object v2

    move-object v9, v2

    goto :goto_4

    :cond_4
    move-object/from16 v9, p6

    :goto_4
    and-int/lit16 v2, v12, 0x80

    if-eqz v2, :cond_5

    const/high16 v2, 0x3f800000    # 1.0f

    move v10, v2

    goto :goto_5

    :cond_5
    move/from16 v10, p7

    :goto_5
    and-int/lit16 v2, v12, 0x100

    if-eqz v2, :cond_6

    move-object/from16 v28, v6

    goto :goto_6

    :cond_6
    move-object/from16 v28, p8

    :goto_6
    and-int/lit16 v2, v12, 0x200

    if-eqz v2, :cond_7

    .line 6
    sget-object v2, Landroidx/compose/ui/graphics/drawscope/DrawScope;->Companion:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;->b()I

    move-result v2

    const v6, -0x70000001

    and-int/2addr v4, v6

    move/from16 v29, v2

    goto :goto_7

    :cond_7
    move/from16 v29, p9

    :goto_7
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->O()Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, -0x1

    const-string v6, "coil.compose.AsyncImage (SingletonAsyncImage.kt:99)"

    .line 7
    invoke-static {v0, v4, v2, v6}, Landroidx/compose/runtime/ComposerKt;->Z(IIILjava/lang/String;)V

    .line 8
    :cond_8
    invoke-static {}, Lcoil/compose/h;->a()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Lcoil/compose/g;->d(Landroidx/compose/runtime/ProvidableCompositionLocal;Landroidx/compose/runtime/Composer;I)Lcoil/e;

    move-result-object v15

    and-int/lit8 v0, v4, 0x70

    or-int/lit16 v0, v0, 0x208

    shl-int/lit8 v2, v4, 0x3

    and-int/lit16 v6, v2, 0x1c00

    or-int/2addr v0, v6

    const v6, 0xe000

    and-int/2addr v6, v2

    or-int/2addr v0, v6

    const/high16 v6, 0x70000

    and-int/2addr v6, v2

    or-int/2addr v0, v6

    const/high16 v6, 0x380000

    and-int/2addr v6, v2

    or-int/2addr v0, v6

    const/high16 v6, 0x1c00000

    and-int/2addr v6, v2

    or-int/2addr v0, v6

    const/high16 v6, 0xe000000

    and-int/2addr v6, v2

    or-int/2addr v0, v6

    const/high16 v6, 0x70000000

    and-int/2addr v2, v6

    or-int v25, v0, v2

    shr-int/lit8 v0, v4, 0x1b

    and-int/lit8 v26, v0, 0xe

    const/16 v27, 0x0

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v16, v3

    move-object/from16 v17, v5

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    move/from16 v21, v10

    move-object/from16 v22, v28

    move/from16 v23, v29

    move-object/from16 v24, v1

    .line 9
    invoke-static/range {v13 .. v27}, Lcoil/compose/a;->a(Ljava/lang/Object;Ljava/lang/String;Lcoil/e;Landroidx/compose/ui/Modifier;Le8/l;Le8/l;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;ILandroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->O()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->Y()V

    :cond_9
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v13

    if-nez v13, :cond_a

    goto :goto_8

    :cond_a
    new-instance v14, Lcoil/compose/i$a;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v4, v5

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move v8, v10

    move-object/from16 v9, v28

    move/from16 v10, v29

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Lcoil/compose/i$a;-><init>(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/ui/Modifier;Le8/l;Le8/l;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;III)V

    invoke-interface {v13, v14}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    :goto_8
    return-void
.end method
