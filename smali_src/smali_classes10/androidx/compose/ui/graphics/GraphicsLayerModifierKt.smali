.class public final Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGraphicsLayerModifier.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GraphicsLayerModifier.kt\nandroidx/compose/ui/graphics/GraphicsLayerModifierKt\n+ 2 InspectableValue.kt\nandroidx/compose/ui/platform/InspectableValueKt\n*L\n1#1,470:1\n135#2:471\n135#2:472\n*S KotlinDebug\n*F\n+ 1 GraphicsLayerModifier.kt\nandroidx/compose/ui/graphics/GraphicsLayerModifierKt\n*L\n276#1:471\n318#1:472\n*E\n"
.end annotation


# direct methods
.method public static final a(Landroidx/compose/ui/Modifier;Le8/l;)Landroidx/compose/ui/Modifier;
    .locals 2
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
            "Lw7/l0;",
            ">;)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
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
    const-string v0, "block"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    new-instance v0, Landroidx/compose/ui/graphics/BlockGraphicsLayerModifier;

    .line 13
    .line 14
    .line 15
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->c()Z

    .line 16
    move-result v1

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    new-instance v1, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt$graphicsLayer$$inlined$debugInspectorInfo$1;

    .line 21
    .line 22
    .line 23
    invoke-direct {v1, p1}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt$graphicsLayer$$inlined$debugInspectorInfo$1;-><init>(Le8/l;)V

    .line 24
    goto :goto_0

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->a()Le8/l;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-direct {v0, p1, v1}, Landroidx/compose/ui/graphics/BlockGraphicsLayerModifier;-><init>(Le8/l;Le8/l;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method

.method public static final b(Landroidx/compose/ui/Modifier;FFFFFFFFFFJLandroidx/compose/ui/graphics/Shape;ZLandroidx/compose/ui/graphics/RenderEffect;JJ)Landroidx/compose/ui/Modifier;
    .locals 24
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p13    # Landroidx/compose/ui/graphics/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p15    # Landroidx/compose/ui/graphics/RenderEffect;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    const-string v1, "$this$graphicsLayer"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    const-string v1, "shape"

    .line 10
    .line 11
    move-object/from16 v15, p13

    .line 12
    .line 13
    .line 14
    invoke-static {v15, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->c()Z

    .line 18
    move-result v1

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    new-instance v1, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt$graphicsLayer-pANQ8Wg$$inlined$debugInspectorInfo$1;

    .line 23
    move-object v2, v1

    .line 24
    .line 25
    move/from16 v3, p1

    .line 26
    .line 27
    move/from16 v4, p2

    .line 28
    .line 29
    move/from16 v5, p3

    .line 30
    .line 31
    move/from16 v6, p4

    .line 32
    .line 33
    move/from16 v7, p5

    .line 34
    .line 35
    move/from16 v8, p6

    .line 36
    .line 37
    move/from16 v9, p7

    .line 38
    .line 39
    move/from16 v10, p8

    .line 40
    .line 41
    move/from16 v11, p9

    .line 42
    .line 43
    move/from16 v12, p10

    .line 44
    .line 45
    move-wide/from16 v13, p11

    .line 46
    .line 47
    move-object/from16 v15, p13

    .line 48
    .line 49
    move/from16 v16, p14

    .line 50
    .line 51
    move-object/from16 v17, p15

    .line 52
    .line 53
    move-wide/from16 v18, p16

    .line 54
    .line 55
    move-wide/from16 v20, p18

    .line 56
    .line 57
    .line 58
    invoke-direct/range {v2 .. v21}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt$graphicsLayer-pANQ8Wg$$inlined$debugInspectorInfo$1;-><init>(FFFFFFFFFFJLandroidx/compose/ui/graphics/Shape;ZLandroidx/compose/ui/graphics/RenderEffect;JJ)V

    .line 59
    .line 60
    :goto_0
    move-object/from16 v22, v1

    .line 61
    goto :goto_1

    .line 62
    .line 63
    .line 64
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->a()Le8/l;

    .line 65
    move-result-object v1

    .line 66
    goto :goto_0

    .line 67
    .line 68
    :goto_1
    new-instance v1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;

    .line 69
    move-object v2, v1

    .line 70
    .line 71
    const/16 v23, 0x0

    .line 72
    .line 73
    move/from16 v3, p1

    .line 74
    .line 75
    move/from16 v4, p2

    .line 76
    .line 77
    move/from16 v5, p3

    .line 78
    .line 79
    move/from16 v6, p4

    .line 80
    .line 81
    move/from16 v7, p5

    .line 82
    .line 83
    move/from16 v8, p6

    .line 84
    .line 85
    move/from16 v9, p7

    .line 86
    .line 87
    move/from16 v10, p8

    .line 88
    .line 89
    move/from16 v11, p9

    .line 90
    .line 91
    move/from16 v12, p10

    .line 92
    .line 93
    move-wide/from16 v13, p11

    .line 94
    .line 95
    move-object/from16 v15, p13

    .line 96
    .line 97
    move/from16 v16, p14

    .line 98
    .line 99
    move-object/from16 v17, p15

    .line 100
    .line 101
    move-wide/from16 v18, p16

    .line 102
    .line 103
    move-wide/from16 v20, p18

    .line 104
    .line 105
    .line 106
    invoke-direct/range {v2 .. v23}, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;-><init>(FFFFFFFFFFJLandroidx/compose/ui/graphics/Shape;ZLandroidx/compose/ui/graphics/RenderEffect;JJLe8/l;Lkotlin/jvm/internal/k;)V

    .line 107
    .line 108
    .line 109
    invoke-interface {v0, v1}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 110
    move-result-object v0

    .line 111
    return-object v0
.end method

.method public static synthetic c(Landroidx/compose/ui/Modifier;FFFFFFFFFFJLandroidx/compose/ui/graphics/Shape;ZLandroidx/compose/ui/graphics/RenderEffect;JJILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 19

    move/from16 v0, p20

    and-int/lit8 v1, v0, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move/from16 v2, p3

    :goto_2
    and-int/lit8 v4, v0, 0x8

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    move v4, v5

    goto :goto_3

    :cond_3
    move/from16 v4, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    move v6, v5

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    move v7, v5

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    move v8, v5

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    move v9, v5

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    goto :goto_8

    :cond_8
    move/from16 v5, p9

    :goto_8
    and-int/lit16 v10, v0, 0x200

    if-eqz v10, :cond_9

    const/high16 v10, 0x41000000    # 8.0f

    goto :goto_9

    :cond_9
    move/from16 v10, p10

    :goto_9
    and-int/lit16 v11, v0, 0x400

    if-eqz v11, :cond_a

    .line 1
    sget-object v11, Landroidx/compose/ui/graphics/TransformOrigin;->Companion:Landroidx/compose/ui/graphics/TransformOrigin$Companion;

    invoke-virtual {v11}, Landroidx/compose/ui/graphics/TransformOrigin$Companion;->a()J

    move-result-wide v11

    goto :goto_a

    :cond_a
    move-wide/from16 v11, p11

    :goto_a
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_b

    .line 2
    invoke-static {}, Landroidx/compose/ui/graphics/RectangleShapeKt;->a()Landroidx/compose/ui/graphics/Shape;

    move-result-object v13

    goto :goto_b

    :cond_b
    move-object/from16 v13, p13

    :goto_b
    and-int/lit16 v14, v0, 0x1000

    if-eqz v14, :cond_c

    const/4 v14, 0x0

    goto :goto_c

    :cond_c
    move/from16 v14, p14

    :goto_c
    and-int/lit16 v15, v0, 0x2000

    if-eqz v15, :cond_d

    const/4 v15, 0x0

    goto :goto_d

    :cond_d
    move-object/from16 v15, p15

    :goto_d
    move-object/from16 p15, v15

    and-int/lit16 v15, v0, 0x4000

    if-eqz v15, :cond_e

    .line 3
    invoke-static {}, Landroidx/compose/ui/graphics/GraphicsLayerScopeKt;->a()J

    move-result-wide v15

    goto :goto_e

    :cond_e
    move-wide/from16 v15, p16

    :goto_e
    const v17, 0x8000

    and-int v0, v0, v17

    if-eqz v0, :cond_f

    .line 4
    invoke-static {}, Landroidx/compose/ui/graphics/GraphicsLayerScopeKt;->a()J

    move-result-wide v17

    goto :goto_f

    :cond_f
    move-wide/from16 v17, p18

    :goto_f
    move/from16 p1, v1

    move/from16 p2, v3

    move/from16 p3, v2

    move/from16 p4, v4

    move/from16 p5, v6

    move/from16 p6, v7

    move/from16 p7, v8

    move/from16 p8, v9

    move/from16 p9, v5

    move/from16 p10, v10

    move-wide/from16 p11, v11

    move-object/from16 p13, v13

    move/from16 p14, v14

    move-wide/from16 p16, v15

    move-wide/from16 p18, v17

    .line 5
    invoke-static/range {p0 .. p19}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->b(Landroidx/compose/ui/Modifier;FFFFFFFFFFJLandroidx/compose/ui/graphics/Shape;ZLandroidx/compose/ui/graphics/RenderEffect;JJ)Landroidx/compose/ui/Modifier;

    move-result-object v0

    return-object v0
.end method

.method public static final d(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 24
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    const-string v1, "<this>"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->c()Z

    .line 11
    move-result v1

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v6, 0x0

    .line 20
    const/4 v7, 0x0

    .line 21
    const/4 v8, 0x0

    .line 22
    const/4 v9, 0x0

    .line 23
    const/4 v10, 0x0

    .line 24
    const/4 v11, 0x0

    .line 25
    const/4 v12, 0x0

    .line 26
    .line 27
    const-wide/16 v13, 0x0

    .line 28
    const/4 v15, 0x0

    .line 29
    .line 30
    const/16 v16, 0x0

    .line 31
    .line 32
    const/16 v17, 0x0

    .line 33
    .line 34
    const-wide/16 v18, 0x0

    .line 35
    .line 36
    const-wide/16 v20, 0x0

    .line 37
    .line 38
    .line 39
    const v22, 0xffff

    .line 40
    .line 41
    const/16 v23, 0x0

    .line 42
    .line 43
    .line 44
    invoke-static/range {v2 .. v23}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->c(Landroidx/compose/ui/Modifier;FFFFFFFFFFJLandroidx/compose/ui/graphics/Shape;ZLandroidx/compose/ui/graphics/RenderEffect;JJILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    .line 48
    invoke-interface {v0, v1}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 49
    move-result-object v0

    .line 50
    :cond_0
    return-object v0
.end method
