.class public final Landroidx/compose/ui/draw/ShadowKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShadow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Shadow.kt\nandroidx/compose/ui/draw/ShadowKt\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 InspectableValue.kt\nandroidx/compose/ui/platform/InspectableValueKt\n*L\n1#1,123:1\n155#2:124\n155#2:125\n155#2:128\n135#3:126\n146#3:127\n*S KotlinDebug\n*F\n+ 1 Shadow.kt\nandroidx/compose/ui/draw/ShadowKt\n*L\n64#1:124\n101#1:125\n98#1:128\n103#1:126\n102#1:127\n*E\n"
.end annotation


# direct methods
.method public static final a(Landroidx/compose/ui/Modifier;FLandroidx/compose/ui/graphics/Shape;ZJJ)Landroidx/compose/ui/Modifier;
    .locals 14
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/graphics/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    .line 3
    const-string v1, "$this$shadow"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    const-string v1, "shape"

    .line 9
    .line 10
    move-object/from16 v10, p2

    .line 11
    .line 12
    .line 13
    invoke-static {v10, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    const/4 v1, 0x0

    .line 15
    int-to-float v1, v1

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 19
    move-result v1

    .line 20
    move v11, p1

    .line 21
    .line 22
    .line 23
    invoke-static {p1, v1}, Landroidx/compose/ui/unit/Dp;->e(FF)I

    .line 24
    move-result v1

    .line 25
    .line 26
    if-gtz v1, :cond_0

    .line 27
    .line 28
    if-eqz p3, :cond_2

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->c()Z

    .line 32
    move-result v1

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    new-instance v1, Landroidx/compose/ui/draw/ShadowKt$shadow-s4CzXII$$inlined$debugInspectorInfo$1;

    .line 37
    move-object v2, v1

    .line 38
    move v3, p1

    .line 39
    .line 40
    move-object/from16 v4, p2

    .line 41
    .line 42
    move/from16 v5, p3

    .line 43
    .line 44
    move-wide/from16 v6, p4

    .line 45
    .line 46
    move-wide/from16 v8, p6

    .line 47
    .line 48
    .line 49
    invoke-direct/range {v2 .. v9}, Landroidx/compose/ui/draw/ShadowKt$shadow-s4CzXII$$inlined$debugInspectorInfo$1;-><init>(FLandroidx/compose/ui/graphics/Shape;ZJJ)V

    .line 50
    goto :goto_0

    .line 51
    .line 52
    .line 53
    :cond_1
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->a()Le8/l;

    .line 54
    move-result-object v1

    .line 55
    .line 56
    :goto_0
    sget-object v12, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 57
    .line 58
    new-instance v13, Landroidx/compose/ui/draw/ShadowKt$shadow$2$1;

    .line 59
    move-object v2, v13

    .line 60
    move v3, p1

    .line 61
    .line 62
    move-object/from16 v4, p2

    .line 63
    .line 64
    move/from16 v5, p3

    .line 65
    .line 66
    move-wide/from16 v6, p4

    .line 67
    .line 68
    move-wide/from16 v8, p6

    .line 69
    .line 70
    .line 71
    invoke-direct/range {v2 .. v9}, Landroidx/compose/ui/draw/ShadowKt$shadow$2$1;-><init>(FLandroidx/compose/ui/graphics/Shape;ZJJ)V

    .line 72
    .line 73
    .line 74
    invoke-static {v12, v13}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->a(Landroidx/compose/ui/Modifier;Le8/l;)Landroidx/compose/ui/Modifier;

    .line 75
    move-result-object v2

    .line 76
    .line 77
    .line 78
    invoke-static {p0, v1, v2}, Landroidx/compose/ui/platform/InspectableValueKt;->b(Landroidx/compose/ui/Modifier;Le8/l;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 79
    move-result-object v0

    .line 80
    :cond_2
    return-object v0
.end method

.method public static synthetic b(Landroidx/compose/ui/Modifier;FLandroidx/compose/ui/graphics/Shape;ZJJILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 8

    .line 1
    .line 2
    and-int/lit8 v0, p8, 0x2

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroidx/compose/ui/graphics/RectangleShapeKt;->a()Landroidx/compose/ui/graphics/Shape;

    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object v0, p2

    .line 11
    .line 12
    :goto_0
    and-int/lit8 v1, p8, 0x4

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    const/4 v1, 0x0

    .line 16
    int-to-float v2, v1

    .line 17
    .line 18
    .line 19
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 20
    move-result v2

    .line 21
    move v3, p1

    .line 22
    .line 23
    .line 24
    invoke-static {p1, v2}, Landroidx/compose/ui/unit/Dp;->e(FF)I

    .line 25
    move-result v2

    .line 26
    .line 27
    if-lez v2, :cond_2

    .line 28
    const/4 v1, 0x1

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move v3, p1

    .line 31
    move v1, p3

    .line 32
    .line 33
    :cond_2
    :goto_1
    and-int/lit8 v2, p8, 0x8

    .line 34
    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    .line 38
    invoke-static {}, Landroidx/compose/ui/graphics/GraphicsLayerScopeKt;->a()J

    .line 39
    move-result-wide v4

    .line 40
    goto :goto_2

    .line 41
    :cond_3
    move-wide v4, p4

    .line 42
    .line 43
    :goto_2
    and-int/lit8 v2, p8, 0x10

    .line 44
    .line 45
    if-eqz v2, :cond_4

    .line 46
    .line 47
    .line 48
    invoke-static {}, Landroidx/compose/ui/graphics/GraphicsLayerScopeKt;->a()J

    .line 49
    move-result-wide v6

    .line 50
    goto :goto_3

    .line 51
    :cond_4
    move-wide v6, p6

    .line 52
    :goto_3
    move-object p2, p0

    .line 53
    move p3, p1

    .line 54
    move-object p4, v0

    .line 55
    move p5, v1

    .line 56
    move-wide p6, v4

    .line 57
    .line 58
    move-wide/from16 p8, v6

    .line 59
    .line 60
    .line 61
    invoke-static/range {p2 .. p9}, Landroidx/compose/ui/draw/ShadowKt;->a(Landroidx/compose/ui/Modifier;FLandroidx/compose/ui/graphics/Shape;ZJJ)Landroidx/compose/ui/Modifier;

    .line 62
    move-result-object v0

    .line 63
    return-object v0
.end method
