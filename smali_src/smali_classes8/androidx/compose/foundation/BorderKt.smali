.class public final Landroidx/compose/foundation/BorderKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBorder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Border.kt\nandroidx/compose/foundation/BorderKt\n+ 2 InspectableValue.kt\nandroidx/compose/ui/platform/InspectableValueKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Border.kt\nandroidx/compose/foundation/BorderCache\n+ 5 CanvasDrawScope.kt\nandroidx/compose/ui/graphics/drawscope/CanvasDrawScope\n+ 6 DrawScope.kt\nandroidx/compose/ui/graphics/drawscope/DrawScopeKt\n*L\n1#1,459:1\n135#2:460\n1#3:461\n1#3:487\n181#4,25:462\n206#4,4:488\n215#4,6:501\n221#4:528\n222#4,2:537\n558#5,9:492\n567#5,8:529\n120#6,2:507\n173#6,6:509\n261#6,11:515\n122#6,2:526\n*S KotlinDebug\n*F\n+ 1 Border.kt\nandroidx/compose/foundation/BorderKt\n*L\n149#1:460\n290#1:487\n290#1:462,25\n290#1:488,4\n290#1:501,6\n290#1:528\n290#1:537,2\n290#1:492,9\n290#1:529,8\n296#1:507,2\n304#1:509,6\n304#1:515,11\n296#1:526,2\n*E\n"
.end annotation


# direct methods
.method public static final synthetic a(Landroidx/compose/ui/draw/CacheDrawScope;)Landroidx/compose/ui/draw/DrawResult;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/foundation/BorderKt;->j(Landroidx/compose/ui/draw/CacheDrawScope;)Landroidx/compose/ui/draw/DrawResult;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic b(Landroidx/compose/ui/draw/CacheDrawScope;Landroidx/compose/ui/node/Ref;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Outline$Generic;ZF)Landroidx/compose/ui/draw/DrawResult;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static/range {p0 .. p5}, Landroidx/compose/foundation/BorderKt;->k(Landroidx/compose/ui/draw/CacheDrawScope;Landroidx/compose/ui/node/Ref;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Outline$Generic;ZF)Landroidx/compose/ui/draw/DrawResult;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic c(Landroidx/compose/ui/draw/CacheDrawScope;Landroidx/compose/ui/graphics/Brush;JJZF)Landroidx/compose/ui/draw/DrawResult;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static/range {p0 .. p7}, Landroidx/compose/foundation/BorderKt;->l(Landroidx/compose/ui/draw/CacheDrawScope;Landroidx/compose/ui/graphics/Brush;JJZF)Landroidx/compose/ui/draw/DrawResult;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic d(Landroidx/compose/ui/draw/CacheDrawScope;Landroidx/compose/ui/node/Ref;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Outline$Rounded;JJZF)Landroidx/compose/ui/draw/DrawResult;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static/range {p0 .. p9}, Landroidx/compose/foundation/BorderKt;->m(Landroidx/compose/ui/draw/CacheDrawScope;Landroidx/compose/ui/node/Ref;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Outline$Rounded;JJZF)Landroidx/compose/ui/draw/DrawResult;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic e(JF)J
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/BorderKt;->o(JF)J

    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static final f(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;
    .locals 1
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/foundation/BorderStroke;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/graphics/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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
    const-string v0, "border"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "shape"

    .line 13
    .line 14
    .line 15
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/compose/foundation/BorderStroke;->b()F

    .line 19
    move-result v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroidx/compose/foundation/BorderStroke;->a()Landroidx/compose/ui/graphics/Brush;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-static {p0, v0, p1, p2}, Landroidx/compose/foundation/BorderKt;->g(Landroidx/compose/ui/Modifier;FLandroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method public static final g(Landroidx/compose/ui/Modifier;FLandroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;
    .locals 2
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/graphics/Brush;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/graphics/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "$this$border"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "brush"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "shape"

    .line 13
    .line 14
    .line 15
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->c()Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    new-instance v0, Landroidx/compose/foundation/BorderKt$border-ziNgDLE$$inlined$debugInspectorInfo$1;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, p1, p2, p3}, Landroidx/compose/foundation/BorderKt$border-ziNgDLE$$inlined$debugInspectorInfo$1;-><init>(FLandroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Shape;)V

    .line 27
    goto :goto_0

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->a()Le8/l;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    :goto_0
    new-instance v1, Landroidx/compose/foundation/BorderKt$border$2;

    .line 34
    .line 35
    .line 36
    invoke-direct {v1, p1, p3, p2}, Landroidx/compose/foundation/BorderKt$border$2;-><init>(FLandroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Brush;)V

    .line 37
    .line 38
    .line 39
    invoke-static {p0, v0, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/ui/Modifier;Le8/l;Le8/q;)Landroidx/compose/ui/Modifier;

    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method

.method private static final h(FLandroidx/compose/ui/geometry/RoundRect;)Landroidx/compose/ui/geometry/RoundRect;
    .locals 15

    .line 1
    move v2, p0

    .line 2
    .line 3
    .line 4
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/geometry/RoundRect;->j()F

    .line 5
    move-result v0

    .line 6
    .line 7
    sub-float v3, v0, v2

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/geometry/RoundRect;->d()F

    .line 11
    move-result v0

    .line 12
    .line 13
    sub-float v4, v0, v2

    .line 14
    .line 15
    .line 16
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/geometry/RoundRect;->h()J

    .line 17
    move-result-wide v0

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1, p0}, Landroidx/compose/foundation/BorderKt;->o(JF)J

    .line 21
    move-result-wide v5

    .line 22
    .line 23
    .line 24
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/geometry/RoundRect;->i()J

    .line 25
    move-result-wide v0

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1, p0}, Landroidx/compose/foundation/BorderKt;->o(JF)J

    .line 29
    move-result-wide v7

    .line 30
    .line 31
    .line 32
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/geometry/RoundRect;->b()J

    .line 33
    move-result-wide v0

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v1, p0}, Landroidx/compose/foundation/BorderKt;->o(JF)J

    .line 37
    move-result-wide v11

    .line 38
    .line 39
    .line 40
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/geometry/RoundRect;->c()J

    .line 41
    move-result-wide v0

    .line 42
    .line 43
    .line 44
    invoke-static {v0, v1, p0}, Landroidx/compose/foundation/BorderKt;->o(JF)J

    .line 45
    move-result-wide v9

    .line 46
    .line 47
    new-instance v14, Landroidx/compose/ui/geometry/RoundRect;

    .line 48
    const/4 v13, 0x0

    .line 49
    move-object v0, v14

    .line 50
    move v1, p0

    .line 51
    .line 52
    .line 53
    invoke-direct/range {v0 .. v13}, Landroidx/compose/ui/geometry/RoundRect;-><init>(FFFFJJJJLkotlin/jvm/internal/k;)V

    .line 54
    return-object v14
.end method

.method private static final i(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/RoundRect;FZ)Landroidx/compose/ui/graphics/Path;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/compose/ui/graphics/Path;->reset()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, p1}, Landroidx/compose/ui/graphics/Path;->e(Landroidx/compose/ui/geometry/RoundRect;)V

    .line 7
    .line 8
    if-nez p3, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->a()Landroidx/compose/ui/graphics/Path;

    .line 12
    move-result-object p3

    .line 13
    .line 14
    .line 15
    invoke-static {p2, p1}, Landroidx/compose/foundation/BorderKt;->h(FLandroidx/compose/ui/geometry/RoundRect;)Landroidx/compose/ui/geometry/RoundRect;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-interface {p3, p1}, Landroidx/compose/ui/graphics/Path;->e(Landroidx/compose/ui/geometry/RoundRect;)V

    .line 20
    .line 21
    sget-object p1, Landroidx/compose/ui/graphics/PathOperation;->Companion:Landroidx/compose/ui/graphics/PathOperation$Companion;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/PathOperation$Companion;->a()I

    .line 25
    move-result p1

    .line 26
    .line 27
    .line 28
    invoke-interface {p0, p0, p3, p1}, Landroidx/compose/ui/graphics/Path;->k(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Path;I)Z

    .line 29
    :cond_0
    return-object p0
.end method

.method private static final j(Landroidx/compose/ui/draw/CacheDrawScope;)Landroidx/compose/ui/draw/DrawResult;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/foundation/BorderKt$drawContentWithoutBorder$1;->INSTANCE:Landroidx/compose/foundation/BorderKt$drawContentWithoutBorder$1;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroidx/compose/ui/draw/CacheDrawScope;->m(Le8/l;)Landroidx/compose/ui/draw/DrawResult;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private static final k(Landroidx/compose/ui/draw/CacheDrawScope;Landroidx/compose/ui/node/Ref;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Outline$Generic;ZF)Landroidx/compose/ui/draw/DrawResult;
    .locals 42
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/draw/CacheDrawScope;",
            "Landroidx/compose/ui/node/Ref<",
            "Landroidx/compose/foundation/BorderCache;",
            ">;",
            "Landroidx/compose/ui/graphics/Brush;",
            "Landroidx/compose/ui/graphics/Outline$Generic;",
            "ZF)",
            "Landroidx/compose/ui/draw/DrawResult;"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v10, p2

    .line 5
    .line 6
    if-eqz p4, :cond_0

    .line 7
    .line 8
    new-instance v1, Landroidx/compose/foundation/BorderKt$drawGenericBorder$1;

    .line 9
    .line 10
    move-object/from16 v2, p3

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v2, v10}, Landroidx/compose/foundation/BorderKt$drawGenericBorder$1;-><init>(Landroidx/compose/ui/graphics/Outline$Generic;Landroidx/compose/ui/graphics/Brush;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroidx/compose/ui/draw/CacheDrawScope;->m(Le8/l;)Landroidx/compose/ui/draw/DrawResult;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    goto/16 :goto_7

    .line 20
    .line 21
    :cond_0
    move-object/from16 v2, p3

    .line 22
    .line 23
    instance-of v1, v10, Landroidx/compose/ui/graphics/SolidColor;

    .line 24
    const/4 v3, 0x0

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    sget-object v1, Landroidx/compose/ui/graphics/ImageBitmapConfig;->Companion:Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;->a()I

    .line 32
    move-result v1

    .line 33
    .line 34
    sget-object v4, Landroidx/compose/ui/graphics/ColorFilter;->Companion:Landroidx/compose/ui/graphics/ColorFilter$Companion;

    .line 35
    move-object v5, v10

    .line 36
    .line 37
    check-cast v5, Landroidx/compose/ui/graphics/SolidColor;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/SolidColor;->c()J

    .line 41
    move-result-wide v5

    .line 42
    const/4 v7, 0x0

    .line 43
    const/4 v8, 0x2

    .line 44
    const/4 v9, 0x0

    .line 45
    .line 46
    .line 47
    invoke-static/range {v4 .. v9}, Landroidx/compose/ui/graphics/ColorFilter$Companion;->b(Landroidx/compose/ui/graphics/ColorFilter$Companion;JIILjava/lang/Object;)Landroidx/compose/ui/graphics/ColorFilter;

    .line 48
    move-result-object v4

    .line 49
    move v13, v1

    .line 50
    .line 51
    move-object/from16 v18, v4

    .line 52
    goto :goto_0

    .line 53
    .line 54
    :cond_1
    sget-object v1, Landroidx/compose/ui/graphics/ImageBitmapConfig;->Companion:Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;->b()I

    .line 58
    move-result v1

    .line 59
    move v13, v1

    .line 60
    .line 61
    move-object/from16 v18, v3

    .line 62
    .line 63
    .line 64
    :goto_0
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/graphics/Outline$Generic;->a()Landroidx/compose/ui/graphics/Path;

    .line 65
    move-result-object v1

    .line 66
    .line 67
    .line 68
    invoke-interface {v1}, Landroidx/compose/ui/graphics/Path;->getBounds()Landroidx/compose/ui/geometry/Rect;

    .line 69
    move-result-object v9

    .line 70
    .line 71
    .line 72
    invoke-static/range {p1 .. p1}, Landroidx/compose/foundation/BorderKt;->n(Landroidx/compose/ui/node/Ref;)Landroidx/compose/foundation/BorderCache;

    .line 73
    move-result-object v1

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Landroidx/compose/foundation/BorderCache;->g()Landroidx/compose/ui/graphics/Path;

    .line 77
    move-result-object v8

    .line 78
    .line 79
    .line 80
    invoke-interface {v8}, Landroidx/compose/ui/graphics/Path;->reset()V

    .line 81
    .line 82
    .line 83
    invoke-interface {v8, v9}, Landroidx/compose/ui/graphics/Path;->j(Landroidx/compose/ui/geometry/Rect;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/graphics/Outline$Generic;->a()Landroidx/compose/ui/graphics/Path;

    .line 87
    move-result-object v4

    .line 88
    .line 89
    sget-object v5, Landroidx/compose/ui/graphics/PathOperation;->Companion:Landroidx/compose/ui/graphics/PathOperation$Companion;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/PathOperation$Companion;->a()I

    .line 93
    move-result v5

    .line 94
    .line 95
    .line 96
    invoke-interface {v8, v8, v4, v5}, Landroidx/compose/ui/graphics/Path;->k(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Path;I)Z

    .line 97
    .line 98
    new-instance v7, Lkotlin/jvm/internal/p0;

    .line 99
    .line 100
    .line 101
    invoke-direct {v7}, Lkotlin/jvm/internal/p0;-><init>()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v9}, Landroidx/compose/ui/geometry/Rect;->p()F

    .line 105
    move-result v4

    .line 106
    float-to-double v4, v4

    .line 107
    .line 108
    .line 109
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    .line 110
    move-result-wide v4

    .line 111
    double-to-float v4, v4

    .line 112
    float-to-int v4, v4

    .line 113
    .line 114
    .line 115
    invoke-virtual {v9}, Landroidx/compose/ui/geometry/Rect;->i()F

    .line 116
    move-result v5

    .line 117
    float-to-double v5, v5

    .line 118
    .line 119
    .line 120
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    .line 121
    move-result-wide v5

    .line 122
    double-to-float v5, v5

    .line 123
    float-to-int v5, v5

    .line 124
    .line 125
    .line 126
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntSizeKt;->a(II)J

    .line 127
    move-result-wide v19

    .line 128
    .line 129
    .line 130
    invoke-static {v1}, Landroidx/compose/foundation/BorderCache;->c(Landroidx/compose/foundation/BorderCache;)Landroidx/compose/ui/graphics/ImageBitmap;

    .line 131
    move-result-object v4

    .line 132
    .line 133
    .line 134
    invoke-static {v1}, Landroidx/compose/foundation/BorderCache;->a(Landroidx/compose/foundation/BorderCache;)Landroidx/compose/ui/graphics/Canvas;

    .line 135
    move-result-object v5

    .line 136
    .line 137
    if-eqz v4, :cond_2

    .line 138
    .line 139
    .line 140
    invoke-interface {v4}, Landroidx/compose/ui/graphics/ImageBitmap;->b()I

    .line 141
    move-result v6

    .line 142
    .line 143
    .line 144
    invoke-static {v6}, Landroidx/compose/ui/graphics/ImageBitmapConfig;->f(I)Landroidx/compose/ui/graphics/ImageBitmapConfig;

    .line 145
    move-result-object v6

    .line 146
    goto :goto_1

    .line 147
    :cond_2
    move-object v6, v3

    .line 148
    .line 149
    :goto_1
    sget-object v11, Landroidx/compose/ui/graphics/ImageBitmapConfig;->Companion:Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;->b()I

    .line 153
    move-result v11

    .line 154
    const/4 v15, 0x1

    .line 155
    .line 156
    if-nez v6, :cond_3

    .line 157
    goto :goto_2

    .line 158
    .line 159
    .line 160
    :cond_3
    invoke-virtual {v6}, Landroidx/compose/ui/graphics/ImageBitmapConfig;->l()I

    .line 161
    move-result v6

    .line 162
    .line 163
    .line 164
    invoke-static {v6, v11}, Landroidx/compose/ui/graphics/ImageBitmapConfig;->i(II)Z

    .line 165
    move-result v6

    .line 166
    .line 167
    if-nez v6, :cond_6

    .line 168
    .line 169
    :goto_2
    if-eqz v4, :cond_4

    .line 170
    .line 171
    .line 172
    invoke-interface {v4}, Landroidx/compose/ui/graphics/ImageBitmap;->b()I

    .line 173
    move-result v3

    .line 174
    .line 175
    .line 176
    invoke-static {v3}, Landroidx/compose/ui/graphics/ImageBitmapConfig;->f(I)Landroidx/compose/ui/graphics/ImageBitmapConfig;

    .line 177
    move-result-object v3

    .line 178
    .line 179
    .line 180
    :cond_4
    invoke-static {v13, v3}, Landroidx/compose/ui/graphics/ImageBitmapConfig;->h(ILjava/lang/Object;)Z

    .line 181
    move-result v3

    .line 182
    .line 183
    if-eqz v3, :cond_5

    .line 184
    goto :goto_3

    .line 185
    :cond_5
    const/4 v3, 0x0

    .line 186
    goto :goto_4

    .line 187
    :cond_6
    :goto_3
    move v3, v15

    .line 188
    .line 189
    :goto_4
    if-eqz v4, :cond_8

    .line 190
    .line 191
    if-eqz v5, :cond_8

    .line 192
    .line 193
    .line 194
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/draw/CacheDrawScope;->c()J

    .line 195
    move-result-wide v11

    .line 196
    .line 197
    .line 198
    invoke-static {v11, v12}, Landroidx/compose/ui/geometry/Size;->i(J)F

    .line 199
    move-result v6

    .line 200
    .line 201
    .line 202
    invoke-interface {v4}, Landroidx/compose/ui/graphics/ImageBitmap;->getWidth()I

    .line 203
    move-result v11

    .line 204
    int-to-float v11, v11

    .line 205
    .line 206
    cmpl-float v6, v6, v11

    .line 207
    .line 208
    if-gtz v6, :cond_8

    .line 209
    .line 210
    .line 211
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/draw/CacheDrawScope;->c()J

    .line 212
    move-result-wide v11

    .line 213
    .line 214
    .line 215
    invoke-static {v11, v12}, Landroidx/compose/ui/geometry/Size;->g(J)F

    .line 216
    move-result v6

    .line 217
    .line 218
    .line 219
    invoke-interface {v4}, Landroidx/compose/ui/graphics/ImageBitmap;->getHeight()I

    .line 220
    move-result v11

    .line 221
    int-to-float v11, v11

    .line 222
    .line 223
    cmpl-float v6, v6, v11

    .line 224
    .line 225
    if-gtz v6, :cond_8

    .line 226
    .line 227
    if-nez v3, :cond_7

    .line 228
    goto :goto_5

    .line 229
    :cond_7
    move-object v11, v4

    .line 230
    move-object v12, v5

    .line 231
    move v6, v15

    .line 232
    goto :goto_6

    .line 233
    .line 234
    .line 235
    :cond_8
    :goto_5
    invoke-static/range {v19 .. v20}, Landroidx/compose/ui/unit/IntSize;->g(J)I

    .line 236
    move-result v11

    .line 237
    .line 238
    .line 239
    invoke-static/range {v19 .. v20}, Landroidx/compose/ui/unit/IntSize;->f(J)I

    .line 240
    move-result v12

    .line 241
    const/4 v14, 0x0

    .line 242
    const/4 v3, 0x0

    .line 243
    .line 244
    const/16 v16, 0x18

    .line 245
    .line 246
    const/16 v17, 0x0

    .line 247
    move v6, v15

    .line 248
    move-object v15, v3

    .line 249
    .line 250
    .line 251
    invoke-static/range {v11 .. v17}, Landroidx/compose/ui/graphics/ImageBitmapKt;->b(IIIZLandroidx/compose/ui/graphics/colorspace/ColorSpace;ILjava/lang/Object;)Landroidx/compose/ui/graphics/ImageBitmap;

    .line 252
    move-result-object v4

    .line 253
    .line 254
    .line 255
    invoke-static {v1, v4}, Landroidx/compose/foundation/BorderCache;->f(Landroidx/compose/foundation/BorderCache;Landroidx/compose/ui/graphics/ImageBitmap;)V

    .line 256
    .line 257
    .line 258
    invoke-static {v4}, Landroidx/compose/ui/graphics/CanvasKt;->a(Landroidx/compose/ui/graphics/ImageBitmap;)Landroidx/compose/ui/graphics/Canvas;

    .line 259
    move-result-object v5

    .line 260
    .line 261
    .line 262
    invoke-static {v1, v5}, Landroidx/compose/foundation/BorderCache;->d(Landroidx/compose/foundation/BorderCache;Landroidx/compose/ui/graphics/Canvas;)V

    .line 263
    move-object v11, v4

    .line 264
    move-object v12, v5

    .line 265
    .line 266
    .line 267
    :goto_6
    invoke-static {v1}, Landroidx/compose/foundation/BorderCache;->b(Landroidx/compose/foundation/BorderCache;)Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 268
    move-result-object v3

    .line 269
    .line 270
    if-nez v3, :cond_9

    .line 271
    .line 272
    new-instance v3, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 273
    .line 274
    .line 275
    invoke-direct {v3}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;-><init>()V

    .line 276
    .line 277
    .line 278
    invoke-static {v1, v3}, Landroidx/compose/foundation/BorderCache;->e(Landroidx/compose/foundation/BorderCache;Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;)V

    .line 279
    :cond_9
    move-object v13, v3

    .line 280
    .line 281
    .line 282
    invoke-static/range {v19 .. v20}, Landroidx/compose/ui/unit/IntSizeKt;->b(J)J

    .line 283
    move-result-wide v3

    .line 284
    .line 285
    .line 286
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/draw/CacheDrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 287
    move-result-object v1

    .line 288
    .line 289
    .line 290
    invoke-virtual {v13}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->I()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 291
    move-result-object v5

    .line 292
    .line 293
    .line 294
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->a()Landroidx/compose/ui/unit/Density;

    .line 295
    move-result-object v14

    .line 296
    .line 297
    .line 298
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->b()Landroidx/compose/ui/unit/LayoutDirection;

    .line 299
    move-result-object v15

    .line 300
    .line 301
    move-object/from16 p1, v8

    .line 302
    .line 303
    .line 304
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->c()Landroidx/compose/ui/graphics/Canvas;

    .line 305
    move-result-object v8

    .line 306
    .line 307
    move-object/from16 p4, v7

    .line 308
    .line 309
    move-object/from16 v16, v8

    .line 310
    .line 311
    .line 312
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->d()J

    .line 313
    move-result-wide v7

    .line 314
    .line 315
    .line 316
    invoke-virtual {v13}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->I()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 317
    move-result-object v5

    .line 318
    .line 319
    .line 320
    invoke-virtual {v5, v0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->j(Landroidx/compose/ui/unit/Density;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v5, v1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->k(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v5, v12}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->i(Landroidx/compose/ui/graphics/Canvas;)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v5, v3, v4}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->l(J)V

    .line 330
    .line 331
    .line 332
    invoke-interface {v12}, Landroidx/compose/ui/graphics/Canvas;->r()V

    .line 333
    .line 334
    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 335
    .line 336
    .line 337
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->a()J

    .line 338
    move-result-wide v22

    .line 339
    .line 340
    const-wide/16 v24, 0x0

    .line 341
    .line 342
    const/16 v28, 0x0

    .line 343
    .line 344
    const/16 v29, 0x0

    .line 345
    .line 346
    const/16 v30, 0x0

    .line 347
    .line 348
    sget-object v17, Landroidx/compose/ui/graphics/BlendMode;->Companion:Landroidx/compose/ui/graphics/BlendMode$Companion;

    .line 349
    .line 350
    .line 351
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/BlendMode$Companion;->a()I

    .line 352
    move-result v31

    .line 353
    .line 354
    const/16 v32, 0x3a

    .line 355
    .line 356
    const/16 v33, 0x0

    .line 357
    .line 358
    move-object/from16 v21, v13

    .line 359
    .line 360
    move-wide/from16 v26, v3

    .line 361
    .line 362
    .line 363
    invoke-static/range {v21 .. v33}, Landroidx/compose/ui/graphics/drawscope/a;->n(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v9}, Landroidx/compose/ui/geometry/Rect;->j()F

    .line 367
    move-result v1

    .line 368
    neg-float v5, v1

    .line 369
    .line 370
    .line 371
    invoke-virtual {v9}, Landroidx/compose/ui/geometry/Rect;->m()F

    .line 372
    move-result v1

    .line 373
    neg-float v4, v1

    .line 374
    .line 375
    .line 376
    invoke-interface {v13}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->T()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    .line 377
    move-result-object v1

    .line 378
    .line 379
    .line 380
    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->d()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    .line 381
    move-result-object v1

    .line 382
    .line 383
    .line 384
    invoke-interface {v1, v5, v4}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->b(FF)V

    .line 385
    .line 386
    .line 387
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/graphics/Outline$Generic;->a()Landroidx/compose/ui/graphics/Path;

    .line 388
    move-result-object v2

    .line 389
    .line 390
    const/16 v21, 0x0

    .line 391
    .line 392
    new-instance v30, Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 393
    const/4 v1, 0x2

    .line 394
    int-to-float v1, v1

    .line 395
    .line 396
    mul-float v23, p5, v1

    .line 397
    .line 398
    const/16 v24, 0x0

    .line 399
    .line 400
    const/16 v25, 0x0

    .line 401
    .line 402
    const/16 v26, 0x0

    .line 403
    .line 404
    const/16 v27, 0x0

    .line 405
    .line 406
    const/16 v28, 0x1e

    .line 407
    .line 408
    move-object/from16 v22, v30

    .line 409
    .line 410
    .line 411
    invoke-direct/range {v22 .. v29}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIILandroidx/compose/ui/graphics/PathEffect;ILkotlin/jvm/internal/k;)V

    .line 412
    .line 413
    const/16 v22, 0x0

    .line 414
    .line 415
    const/16 v23, 0x0

    .line 416
    .line 417
    const/16 v24, 0x34

    .line 418
    .line 419
    const/16 v25, 0x0

    .line 420
    move-object v1, v13

    .line 421
    .line 422
    move-object/from16 v3, p2

    .line 423
    .line 424
    move/from16 v34, v4

    .line 425
    .line 426
    move/from16 v4, v21

    .line 427
    .line 428
    move/from16 v35, v5

    .line 429
    .line 430
    move-object/from16 v5, v30

    .line 431
    .line 432
    move-object/from16 v6, v22

    .line 433
    .line 434
    move-wide/from16 v36, v7

    .line 435
    .line 436
    move-object/from16 v8, p4

    .line 437
    .line 438
    move/from16 v7, v23

    .line 439
    .line 440
    move-object/from16 v38, v8

    .line 441
    .line 442
    move-object/from16 v39, v16

    .line 443
    .line 444
    move-object/from16 v16, p1

    .line 445
    .line 446
    move/from16 v8, v24

    .line 447
    .line 448
    move-object/from16 v21, v9

    .line 449
    .line 450
    move-object/from16 v9, v25

    .line 451
    .line 452
    .line 453
    invoke-static/range {v1 .. v9}, Landroidx/compose/ui/graphics/drawscope/a;->j(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 454
    .line 455
    .line 456
    invoke-interface {v13}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->c()J

    .line 457
    move-result-wide v1

    .line 458
    .line 459
    .line 460
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Size;->i(J)F

    .line 461
    move-result v1

    .line 462
    const/4 v2, 0x1

    .line 463
    int-to-float v2, v2

    .line 464
    add-float/2addr v1, v2

    .line 465
    .line 466
    .line 467
    invoke-interface {v13}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->c()J

    .line 468
    move-result-wide v3

    .line 469
    .line 470
    .line 471
    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Size;->i(J)F

    .line 472
    move-result v3

    .line 473
    div-float/2addr v1, v3

    .line 474
    .line 475
    .line 476
    invoke-interface {v13}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->c()J

    .line 477
    move-result-wide v3

    .line 478
    .line 479
    .line 480
    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Size;->g(J)F

    .line 481
    move-result v3

    .line 482
    add-float/2addr v3, v2

    .line 483
    .line 484
    .line 485
    invoke-interface {v13}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->c()J

    .line 486
    move-result-wide v4

    .line 487
    .line 488
    .line 489
    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Size;->g(J)F

    .line 490
    move-result v2

    .line 491
    div-float/2addr v3, v2

    .line 492
    .line 493
    .line 494
    invoke-interface {v13}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->W()J

    .line 495
    move-result-wide v4

    .line 496
    .line 497
    .line 498
    invoke-interface {v13}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->T()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    .line 499
    move-result-object v9

    .line 500
    .line 501
    .line 502
    invoke-interface {v9}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->c()J

    .line 503
    move-result-wide v7

    .line 504
    .line 505
    .line 506
    invoke-interface {v9}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->a()Landroidx/compose/ui/graphics/Canvas;

    .line 507
    move-result-object v2

    .line 508
    .line 509
    .line 510
    invoke-interface {v2}, Landroidx/compose/ui/graphics/Canvas;->r()V

    .line 511
    .line 512
    .line 513
    invoke-interface {v9}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->d()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    .line 514
    move-result-object v2

    .line 515
    .line 516
    .line 517
    invoke-interface {v2, v1, v3, v4, v5}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->d(FFJ)V

    .line 518
    const/4 v4, 0x0

    .line 519
    const/4 v5, 0x0

    .line 520
    const/4 v6, 0x0

    .line 521
    .line 522
    .line 523
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/BlendMode$Companion;->a()I

    .line 524
    move-result v17

    .line 525
    .line 526
    const/16 v22, 0x1c

    .line 527
    .line 528
    const/16 v23, 0x0

    .line 529
    move-object v1, v13

    .line 530
    .line 531
    move-object/from16 v2, v16

    .line 532
    .line 533
    move-object/from16 v3, p2

    .line 534
    .line 535
    move-wide/from16 v40, v7

    .line 536
    .line 537
    move/from16 v7, v17

    .line 538
    .line 539
    move/from16 v8, v22

    .line 540
    move-object v10, v9

    .line 541
    .line 542
    move-object/from16 v9, v23

    .line 543
    .line 544
    .line 545
    invoke-static/range {v1 .. v9}, Landroidx/compose/ui/graphics/drawscope/a;->j(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 546
    .line 547
    .line 548
    invoke-interface {v10}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->a()Landroidx/compose/ui/graphics/Canvas;

    .line 549
    move-result-object v1

    .line 550
    .line 551
    .line 552
    invoke-interface {v1}, Landroidx/compose/ui/graphics/Canvas;->n()V

    .line 553
    .line 554
    move-wide/from16 v1, v40

    .line 555
    .line 556
    .line 557
    invoke-interface {v10, v1, v2}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->b(J)V

    .line 558
    .line 559
    .line 560
    invoke-interface {v13}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->T()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    .line 561
    move-result-object v1

    .line 562
    .line 563
    .line 564
    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->d()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    .line 565
    move-result-object v1

    .line 566
    .line 567
    move/from16 v2, v35

    .line 568
    neg-float v2, v2

    .line 569
    .line 570
    move/from16 v3, v34

    .line 571
    neg-float v3, v3

    .line 572
    .line 573
    .line 574
    invoke-interface {v1, v2, v3}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->b(FF)V

    .line 575
    .line 576
    .line 577
    invoke-interface {v12}, Landroidx/compose/ui/graphics/Canvas;->n()V

    .line 578
    .line 579
    .line 580
    invoke-virtual {v13}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->I()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 581
    move-result-object v1

    .line 582
    .line 583
    .line 584
    invoke-virtual {v1, v14}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->j(Landroidx/compose/ui/unit/Density;)V

    .line 585
    .line 586
    .line 587
    invoke-virtual {v1, v15}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->k(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 588
    .line 589
    move-object/from16 v2, v39

    .line 590
    .line 591
    .line 592
    invoke-virtual {v1, v2}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->i(Landroidx/compose/ui/graphics/Canvas;)V

    .line 593
    .line 594
    move-wide/from16 v2, v36

    .line 595
    .line 596
    .line 597
    invoke-virtual {v1, v2, v3}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->l(J)V

    .line 598
    .line 599
    .line 600
    invoke-interface {v11}, Landroidx/compose/ui/graphics/ImageBitmap;->a()V

    .line 601
    .line 602
    move-object/from16 v1, v38

    .line 603
    .line 604
    iput-object v11, v1, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 605
    .line 606
    new-instance v2, Landroidx/compose/foundation/BorderKt$drawGenericBorder$3;

    .line 607
    move-object v4, v2

    .line 608
    .line 609
    move-object/from16 v5, v21

    .line 610
    move-object v6, v1

    .line 611
    .line 612
    move-wide/from16 v7, v19

    .line 613
    .line 614
    move-object/from16 v9, v18

    .line 615
    .line 616
    .line 617
    invoke-direct/range {v4 .. v9}, Landroidx/compose/foundation/BorderKt$drawGenericBorder$3;-><init>(Landroidx/compose/ui/geometry/Rect;Lkotlin/jvm/internal/p0;JLandroidx/compose/ui/graphics/ColorFilter;)V

    .line 618
    .line 619
    .line 620
    invoke-virtual {v0, v2}, Landroidx/compose/ui/draw/CacheDrawScope;->m(Le8/l;)Landroidx/compose/ui/draw/DrawResult;

    .line 621
    move-result-object v0

    .line 622
    :goto_7
    return-object v0
.end method

.method private static final l(Landroidx/compose/ui/draw/CacheDrawScope;Landroidx/compose/ui/graphics/Brush;JJZF)Landroidx/compose/ui/draw/DrawResult;
    .locals 16

    .line 1
    .line 2
    if-eqz p6, :cond_0

    .line 3
    .line 4
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->c()J

    .line 8
    move-result-wide v0

    .line 9
    move-wide v4, v0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    move-wide/from16 v4, p2

    .line 13
    .line 14
    :goto_0
    if-eqz p6, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/draw/CacheDrawScope;->c()J

    .line 18
    move-result-wide v0

    .line 19
    move-wide v6, v0

    .line 20
    goto :goto_1

    .line 21
    .line 22
    :cond_1
    move-wide/from16 v6, p4

    .line 23
    .line 24
    :goto_1
    if-eqz p6, :cond_2

    .line 25
    .line 26
    sget-object v0, Landroidx/compose/ui/graphics/drawscope/Fill;->INSTANCE:Landroidx/compose/ui/graphics/drawscope/Fill;

    .line 27
    move-object v8, v0

    .line 28
    goto :goto_2

    .line 29
    .line 30
    :cond_2
    new-instance v0, Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 31
    const/4 v10, 0x0

    .line 32
    const/4 v11, 0x0

    .line 33
    const/4 v12, 0x0

    .line 34
    const/4 v13, 0x0

    .line 35
    .line 36
    const/16 v14, 0x1e

    .line 37
    const/4 v15, 0x0

    .line 38
    move-object v8, v0

    .line 39
    .line 40
    move/from16 v9, p7

    .line 41
    .line 42
    .line 43
    invoke-direct/range {v8 .. v15}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIILandroidx/compose/ui/graphics/PathEffect;ILkotlin/jvm/internal/k;)V

    .line 44
    .line 45
    :goto_2
    new-instance v0, Landroidx/compose/foundation/BorderKt$drawRectBorder$1;

    .line 46
    move-object v2, v0

    .line 47
    .line 48
    move-object/from16 v3, p1

    .line 49
    .line 50
    .line 51
    invoke-direct/range {v2 .. v8}, Landroidx/compose/foundation/BorderKt$drawRectBorder$1;-><init>(Landroidx/compose/ui/graphics/Brush;JJLandroidx/compose/ui/graphics/drawscope/DrawStyle;)V

    .line 52
    .line 53
    move-object/from16 v1, p0

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v0}, Landroidx/compose/ui/draw/CacheDrawScope;->m(Le8/l;)Landroidx/compose/ui/draw/DrawResult;

    .line 57
    move-result-object v0

    .line 58
    return-object v0
.end method

.method private static final m(Landroidx/compose/ui/draw/CacheDrawScope;Landroidx/compose/ui/node/Ref;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Outline$Rounded;JJZF)Landroidx/compose/ui/draw/DrawResult;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/draw/CacheDrawScope;",
            "Landroidx/compose/ui/node/Ref<",
            "Landroidx/compose/foundation/BorderCache;",
            ">;",
            "Landroidx/compose/ui/graphics/Brush;",
            "Landroidx/compose/ui/graphics/Outline$Rounded;",
            "JJZF)",
            "Landroidx/compose/ui/draw/DrawResult;"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    .line 3
    move/from16 v9, p9

    .line 4
    .line 5
    .line 6
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/graphics/Outline$Rounded;->a()Landroidx/compose/ui/geometry/RoundRect;

    .line 7
    move-result-object v1

    .line 8
    .line 9
    .line 10
    invoke-static {v1}, Landroidx/compose/ui/geometry/RoundRectKt;->d(Landroidx/compose/ui/geometry/RoundRect;)Z

    .line 11
    move-result v1

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/graphics/Outline$Rounded;->a()Landroidx/compose/ui/geometry/RoundRect;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/RoundRect;->h()J

    .line 21
    move-result-wide v10

    .line 22
    const/4 v1, 0x2

    .line 23
    int-to-float v1, v1

    .line 24
    .line 25
    div-float v12, v9, v1

    .line 26
    .line 27
    new-instance v13, Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 28
    const/4 v3, 0x0

    .line 29
    const/4 v4, 0x0

    .line 30
    const/4 v5, 0x0

    .line 31
    const/4 v6, 0x0

    .line 32
    .line 33
    const/16 v7, 0x1e

    .line 34
    const/4 v8, 0x0

    .line 35
    move-object v1, v13

    .line 36
    .line 37
    move/from16 v2, p9

    .line 38
    .line 39
    .line 40
    invoke-direct/range {v1 .. v8}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIILandroidx/compose/ui/graphics/PathEffect;ILkotlin/jvm/internal/k;)V

    .line 41
    .line 42
    new-instance v14, Landroidx/compose/foundation/BorderKt$drawRoundRectBorder$1;

    .line 43
    move-object v1, v14

    .line 44
    .line 45
    move/from16 v2, p8

    .line 46
    .line 47
    move-object/from16 v3, p2

    .line 48
    move-wide v4, v10

    .line 49
    move v6, v12

    .line 50
    .line 51
    move/from16 v7, p9

    .line 52
    .line 53
    move-wide/from16 v8, p4

    .line 54
    .line 55
    move-wide/from16 v10, p6

    .line 56
    move-object v12, v13

    .line 57
    .line 58
    .line 59
    invoke-direct/range {v1 .. v12}, Landroidx/compose/foundation/BorderKt$drawRoundRectBorder$1;-><init>(ZLandroidx/compose/ui/graphics/Brush;JFFJJLandroidx/compose/ui/graphics/drawscope/Stroke;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v14}, Landroidx/compose/ui/draw/CacheDrawScope;->m(Le8/l;)Landroidx/compose/ui/draw/DrawResult;

    .line 63
    move-result-object v0

    .line 64
    goto :goto_0

    .line 65
    .line 66
    .line 67
    :cond_0
    invoke-static/range {p1 .. p1}, Landroidx/compose/foundation/BorderKt;->n(Landroidx/compose/ui/node/Ref;)Landroidx/compose/foundation/BorderCache;

    .line 68
    move-result-object v1

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Landroidx/compose/foundation/BorderCache;->g()Landroidx/compose/ui/graphics/Path;

    .line 72
    move-result-object v1

    .line 73
    .line 74
    .line 75
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/graphics/Outline$Rounded;->a()Landroidx/compose/ui/geometry/RoundRect;

    .line 76
    move-result-object v2

    .line 77
    .line 78
    move/from16 v3, p8

    .line 79
    .line 80
    .line 81
    invoke-static {v1, v2, v9, v3}, Landroidx/compose/foundation/BorderKt;->i(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/RoundRect;FZ)Landroidx/compose/ui/graphics/Path;

    .line 82
    move-result-object v1

    .line 83
    .line 84
    new-instance v2, Landroidx/compose/foundation/BorderKt$drawRoundRectBorder$2;

    .line 85
    .line 86
    move-object/from16 v3, p2

    .line 87
    .line 88
    .line 89
    invoke-direct {v2, v1, v3}, Landroidx/compose/foundation/BorderKt$drawRoundRectBorder$2;-><init>(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Brush;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v2}, Landroidx/compose/ui/draw/CacheDrawScope;->m(Le8/l;)Landroidx/compose/ui/draw/DrawResult;

    .line 93
    move-result-object v0

    .line 94
    :goto_0
    return-object v0
.end method

.method private static final n(Landroidx/compose/ui/node/Ref;)Landroidx/compose/foundation/BorderCache;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/node/Ref<",
            "Landroidx/compose/foundation/BorderCache;",
            ">;)",
            "Landroidx/compose/foundation/BorderCache;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/node/Ref;->a()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Landroidx/compose/foundation/BorderCache;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Landroidx/compose/foundation/BorderCache;

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x0

    .line 15
    .line 16
    const/16 v6, 0xf

    .line 17
    const/4 v7, 0x0

    .line 18
    move-object v1, v0

    .line 19
    .line 20
    .line 21
    invoke-direct/range {v1 .. v7}, Landroidx/compose/foundation/BorderCache;-><init>(Landroidx/compose/ui/graphics/ImageBitmap;Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;Landroidx/compose/ui/graphics/Path;ILkotlin/jvm/internal/k;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/Ref;->b(Ljava/lang/Object;)V

    .line 25
    :cond_0
    return-object v0
.end method

.method private static final o(JF)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/CornerRadius;->e(J)F

    .line 4
    move-result v0

    .line 5
    sub-float/2addr v0, p2

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    .line 9
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    .line 10
    move-result v0

    .line 11
    .line 12
    .line 13
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/CornerRadius;->f(J)F

    .line 14
    move-result p0

    .line 15
    sub-float/2addr p0, p2

    .line 16
    .line 17
    .line 18
    invoke-static {v1, p0}, Ljava/lang/Math;->max(FF)F

    .line 19
    move-result p0

    .line 20
    .line 21
    .line 22
    invoke-static {v0, p0}, Landroidx/compose/ui/geometry/CornerRadiusKt;->a(FF)J

    .line 23
    move-result-wide p0

    .line 24
    return-wide p0
.end method
