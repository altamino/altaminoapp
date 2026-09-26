.class final Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;
.super Landroidx/compose/ui/platform/InspectorValueInfo;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/LayoutModifier;


# instance fields
.field private final alpha:F

.field private final ambientShadowColor:J

.field private final cameraDistance:F

.field private final clip:Z

.field private final layerBlock:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final renderEffect:Landroidx/compose/ui/graphics/RenderEffect;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final rotationX:F

.field private final rotationY:F

.field private final rotationZ:F

.field private final scaleX:F

.field private final scaleY:F

.field private final shadowElevation:F

.field private final shape:Landroidx/compose/ui/graphics/Shape;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final spotShadowColor:J

.field private final transformOrigin:J

.field private final translationX:F

.field private final translationY:F


# direct methods
.method private constructor <init>(FFFFFFFFFFJLandroidx/compose/ui/graphics/Shape;ZLandroidx/compose/ui/graphics/RenderEffect;JJLe8/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFFFFFFFFJ",
            "Landroidx/compose/ui/graphics/Shape;",
            "Z",
            "Landroidx/compose/ui/graphics/RenderEffect;",
            "JJ",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/platform/InspectorInfo;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p20

    .line 2
    invoke-direct {p0, v1}, Landroidx/compose/ui/platform/InspectorValueInfo;-><init>(Le8/l;)V

    move v1, p1

    iput v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->scaleX:F

    move v1, p2

    iput v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->scaleY:F

    move v1, p3

    iput v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->alpha:F

    move v1, p4

    iput v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->translationX:F

    move v1, p5

    iput v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->translationY:F

    move v1, p6

    iput v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->shadowElevation:F

    move v1, p7

    iput v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->rotationX:F

    move v1, p8

    iput v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->rotationY:F

    move v1, p9

    iput v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->rotationZ:F

    move v1, p10

    iput v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->cameraDistance:F

    move-wide v1, p11

    iput-wide v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->transformOrigin:J

    move-object/from16 v1, p13

    iput-object v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->shape:Landroidx/compose/ui/graphics/Shape;

    move/from16 v1, p14

    iput-boolean v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->clip:Z

    move-object/from16 v1, p15

    iput-object v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->renderEffect:Landroidx/compose/ui/graphics/RenderEffect;

    move-wide/from16 v1, p16

    iput-wide v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->ambientShadowColor:J

    move-wide/from16 v1, p18

    iput-wide v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->spotShadowColor:J

    .line 3
    new-instance v1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier$layerBlock$1;

    invoke-direct {v1, p0}, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier$layerBlock$1;-><init>(Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;)V

    iput-object v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->layerBlock:Le8/l;

    return-void
.end method

.method public synthetic constructor <init>(FFFFFFFFFFJLandroidx/compose/ui/graphics/Shape;ZLandroidx/compose/ui/graphics/RenderEffect;JJLe8/l;Lkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p20}, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;-><init>(FFFFFFFFFFJLandroidx/compose/ui/graphics/Shape;ZLandroidx/compose/ui/graphics/RenderEffect;JJLe8/l;)V

    return-void
.end method

.method public static final synthetic a(Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;)F
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->alpha:F

    .line 3
    return p0
.end method

.method public static final synthetic b(Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;)J
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->ambientShadowColor:J

    .line 3
    return-wide v0
.end method

.method public static final synthetic c(Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;)F
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->cameraDistance:F

    .line 3
    return p0
.end method

.method public static final synthetic d(Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->clip:Z

    .line 3
    return p0
.end method

.method public static final synthetic f(Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;)Le8/l;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->layerBlock:Le8/l;

    .line 3
    return-object p0
.end method

.method public static final synthetic g(Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;)Landroidx/compose/ui/graphics/RenderEffect;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->renderEffect:Landroidx/compose/ui/graphics/RenderEffect;

    .line 3
    return-object p0
.end method

.method public static final synthetic h(Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;)F
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->rotationX:F

    .line 3
    return p0
.end method

.method public static final synthetic i(Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;)F
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->rotationY:F

    .line 3
    return p0
.end method

.method public static final synthetic j(Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;)F
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->rotationZ:F

    .line 3
    return p0
.end method

.method public static final synthetic k(Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;)F
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->scaleX:F

    .line 3
    return p0
.end method

.method public static final synthetic l(Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;)F
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->scaleY:F

    .line 3
    return p0
.end method

.method public static final synthetic n(Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;)F
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->shadowElevation:F

    .line 3
    return p0
.end method

.method public static final synthetic o(Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;)Landroidx/compose/ui/graphics/Shape;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->shape:Landroidx/compose/ui/graphics/Shape;

    .line 3
    return-object p0
.end method

.method public static final synthetic p(Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;)J
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->spotShadowColor:J

    .line 3
    return-wide v0
.end method

.method public static final synthetic q(Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;)J
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->transformOrigin:J

    .line 3
    return-wide v0
.end method

.method public static final synthetic s(Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;)F
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->translationX:F

    .line 3
    return p0
.end method

.method public static final synthetic t(Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;)F
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->translationY:F

    .line 3
    return p0
.end method


# virtual methods
.method public synthetic B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/a;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    return-object p1
.end method

.method public synthetic K(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/layout/b;->d(Landroidx/compose/ui/layout/LayoutModifier;Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I

    move-result p1

    return p1
.end method

.method public N0(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 7
    .param p1    # Landroidx/compose/ui/layout/MeasureScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/layout/Measurable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "$this$measure"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "measurable"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p2, p3, p4}, Landroidx/compose/ui/layout/Measurable;->b0(J)Landroidx/compose/ui/layout/Placeable;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->Q0()I

    .line 18
    move-result v1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 22
    move-result v2

    .line 23
    const/4 v3, 0x0

    .line 24
    .line 25
    new-instance v4, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier$measure$1;

    .line 26
    .line 27
    .line 28
    invoke-direct {v4, p2, p0}, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier$measure$1;-><init>(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;)V

    .line 29
    const/4 v5, 0x4

    .line 30
    const/4 v6, 0x0

    .line 31
    move-object v0, p1

    .line 32
    .line 33
    .line 34
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/MeasureScope$-CC;->b(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Le8/l;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    .line 35
    move-result-object p1

    .line 36
    return-object p1
.end method

.method public synthetic S(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/layout/b;->b(Landroidx/compose/ui/layout/LayoutModifier;Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I

    move-result p1

    return p1
.end method

.method public synthetic V(Ljava/lang/Object;Le8/p;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/b;->c(Landroidx/compose/ui/Modifier$Element;Ljava/lang/Object;Le8/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a0(Ljava/lang/Object;Le8/p;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/b;->b(Landroidx/compose/ui/Modifier$Element;Ljava/lang/Object;Le8/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c0(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/layout/b;->a(Landroidx/compose/ui/layout/LayoutModifier;Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I

    move-result p1

    return p1
.end method

.method public synthetic d0(Le8/l;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/b;->a(Landroidx/compose/ui/Modifier$Element;Le8/l;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    instance-of v0, p1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    const/4 v0, 0x0

    .line 10
    .line 11
    if-nez p1, :cond_1

    .line 12
    return v0

    .line 13
    .line 14
    :cond_1
    iget v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->scaleX:F

    .line 15
    .line 16
    iget v2, p1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->scaleX:F

    .line 17
    .line 18
    cmpg-float v1, v1, v2

    .line 19
    .line 20
    if-nez v1, :cond_2

    .line 21
    .line 22
    iget v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->scaleY:F

    .line 23
    .line 24
    iget v2, p1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->scaleY:F

    .line 25
    .line 26
    cmpg-float v1, v1, v2

    .line 27
    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    iget v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->alpha:F

    .line 31
    .line 32
    iget v2, p1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->alpha:F

    .line 33
    .line 34
    cmpg-float v1, v1, v2

    .line 35
    .line 36
    if-nez v1, :cond_2

    .line 37
    .line 38
    iget v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->translationX:F

    .line 39
    .line 40
    iget v2, p1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->translationX:F

    .line 41
    .line 42
    cmpg-float v1, v1, v2

    .line 43
    .line 44
    if-nez v1, :cond_2

    .line 45
    .line 46
    iget v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->translationY:F

    .line 47
    .line 48
    iget v2, p1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->translationY:F

    .line 49
    .line 50
    cmpg-float v1, v1, v2

    .line 51
    .line 52
    if-nez v1, :cond_2

    .line 53
    .line 54
    iget v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->shadowElevation:F

    .line 55
    .line 56
    iget v2, p1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->shadowElevation:F

    .line 57
    .line 58
    cmpg-float v1, v1, v2

    .line 59
    .line 60
    if-nez v1, :cond_2

    .line 61
    .line 62
    iget v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->rotationX:F

    .line 63
    .line 64
    iget v2, p1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->rotationX:F

    .line 65
    .line 66
    cmpg-float v1, v1, v2

    .line 67
    .line 68
    if-nez v1, :cond_2

    .line 69
    .line 70
    iget v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->rotationY:F

    .line 71
    .line 72
    iget v2, p1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->rotationY:F

    .line 73
    .line 74
    cmpg-float v1, v1, v2

    .line 75
    .line 76
    if-nez v1, :cond_2

    .line 77
    .line 78
    iget v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->rotationZ:F

    .line 79
    .line 80
    iget v2, p1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->rotationZ:F

    .line 81
    .line 82
    cmpg-float v1, v1, v2

    .line 83
    .line 84
    if-nez v1, :cond_2

    .line 85
    .line 86
    iget v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->cameraDistance:F

    .line 87
    .line 88
    iget v2, p1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->cameraDistance:F

    .line 89
    .line 90
    cmpg-float v1, v1, v2

    .line 91
    .line 92
    if-nez v1, :cond_2

    .line 93
    .line 94
    iget-wide v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->transformOrigin:J

    .line 95
    .line 96
    iget-wide v3, p1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->transformOrigin:J

    .line 97
    .line 98
    .line 99
    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/graphics/TransformOrigin;->e(JJ)Z

    .line 100
    move-result v1

    .line 101
    .line 102
    if-eqz v1, :cond_2

    .line 103
    .line 104
    iget-object v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->shape:Landroidx/compose/ui/graphics/Shape;

    .line 105
    .line 106
    iget-object v2, p1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->shape:Landroidx/compose/ui/graphics/Shape;

    .line 107
    .line 108
    .line 109
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 110
    move-result v1

    .line 111
    .line 112
    if-eqz v1, :cond_2

    .line 113
    .line 114
    iget-boolean v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->clip:Z

    .line 115
    .line 116
    iget-boolean v2, p1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->clip:Z

    .line 117
    .line 118
    if-ne v1, v2, :cond_2

    .line 119
    .line 120
    iget-object v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->renderEffect:Landroidx/compose/ui/graphics/RenderEffect;

    .line 121
    .line 122
    iget-object v2, p1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->renderEffect:Landroidx/compose/ui/graphics/RenderEffect;

    .line 123
    .line 124
    .line 125
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 126
    move-result v1

    .line 127
    .line 128
    if-eqz v1, :cond_2

    .line 129
    .line 130
    iget-wide v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->ambientShadowColor:J

    .line 131
    .line 132
    iget-wide v3, p1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->ambientShadowColor:J

    .line 133
    .line 134
    .line 135
    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/graphics/Color;->n(JJ)Z

    .line 136
    move-result v1

    .line 137
    .line 138
    if-eqz v1, :cond_2

    .line 139
    .line 140
    iget-wide v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->spotShadowColor:J

    .line 141
    .line 142
    iget-wide v3, p1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->spotShadowColor:J

    .line 143
    .line 144
    .line 145
    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/graphics/Color;->n(JJ)Z

    .line 146
    move-result p1

    .line 147
    .line 148
    if-eqz p1, :cond_2

    .line 149
    const/4 v0, 0x1

    .line 150
    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->scaleX:F

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 6
    move-result v0

    .line 7
    .line 8
    mul-int/lit8 v0, v0, 0x1f

    .line 9
    .line 10
    iget v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->scaleY:F

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    .line 17
    mul-int/lit8 v0, v0, 0x1f

    .line 18
    .line 19
    iget v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->alpha:F

    .line 20
    .line 21
    .line 22
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 23
    move-result v1

    .line 24
    add-int/2addr v0, v1

    .line 25
    .line 26
    mul-int/lit8 v0, v0, 0x1f

    .line 27
    .line 28
    iget v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->translationX:F

    .line 29
    .line 30
    .line 31
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 32
    move-result v1

    .line 33
    add-int/2addr v0, v1

    .line 34
    .line 35
    mul-int/lit8 v0, v0, 0x1f

    .line 36
    .line 37
    iget v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->translationY:F

    .line 38
    .line 39
    .line 40
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 41
    move-result v1

    .line 42
    add-int/2addr v0, v1

    .line 43
    .line 44
    mul-int/lit8 v0, v0, 0x1f

    .line 45
    .line 46
    iget v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->shadowElevation:F

    .line 47
    .line 48
    .line 49
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 50
    move-result v1

    .line 51
    add-int/2addr v0, v1

    .line 52
    .line 53
    mul-int/lit8 v0, v0, 0x1f

    .line 54
    .line 55
    iget v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->rotationX:F

    .line 56
    .line 57
    .line 58
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 59
    move-result v1

    .line 60
    add-int/2addr v0, v1

    .line 61
    .line 62
    mul-int/lit8 v0, v0, 0x1f

    .line 63
    .line 64
    iget v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->rotationY:F

    .line 65
    .line 66
    .line 67
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 68
    move-result v1

    .line 69
    add-int/2addr v0, v1

    .line 70
    .line 71
    mul-int/lit8 v0, v0, 0x1f

    .line 72
    .line 73
    iget v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->rotationZ:F

    .line 74
    .line 75
    .line 76
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 77
    move-result v1

    .line 78
    add-int/2addr v0, v1

    .line 79
    .line 80
    mul-int/lit8 v0, v0, 0x1f

    .line 81
    .line 82
    iget v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->cameraDistance:F

    .line 83
    .line 84
    .line 85
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 86
    move-result v1

    .line 87
    add-int/2addr v0, v1

    .line 88
    .line 89
    mul-int/lit8 v0, v0, 0x1f

    .line 90
    .line 91
    iget-wide v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->transformOrigin:J

    .line 92
    .line 93
    .line 94
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/TransformOrigin;->h(J)I

    .line 95
    move-result v1

    .line 96
    add-int/2addr v0, v1

    .line 97
    .line 98
    mul-int/lit8 v0, v0, 0x1f

    .line 99
    .line 100
    iget-object v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->shape:Landroidx/compose/ui/graphics/Shape;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 104
    move-result v1

    .line 105
    add-int/2addr v0, v1

    .line 106
    .line 107
    mul-int/lit8 v0, v0, 0x1f

    .line 108
    .line 109
    iget-boolean v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->clip:Z

    .line 110
    .line 111
    .line 112
    invoke-static {v1}, Landroidx/compose/foundation/c;->a(Z)I

    .line 113
    move-result v1

    .line 114
    add-int/2addr v0, v1

    .line 115
    .line 116
    mul-int/lit8 v0, v0, 0x1f

    .line 117
    .line 118
    iget-object v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->renderEffect:Landroidx/compose/ui/graphics/RenderEffect;

    .line 119
    .line 120
    if-eqz v1, :cond_0

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 124
    move-result v1

    .line 125
    goto :goto_0

    .line 126
    :cond_0
    const/4 v1, 0x0

    .line 127
    :goto_0
    add-int/2addr v0, v1

    .line 128
    .line 129
    mul-int/lit8 v0, v0, 0x1f

    .line 130
    .line 131
    iget-wide v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->ambientShadowColor:J

    .line 132
    .line 133
    .line 134
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->t(J)I

    .line 135
    move-result v1

    .line 136
    add-int/2addr v0, v1

    .line 137
    .line 138
    mul-int/lit8 v0, v0, 0x1f

    .line 139
    .line 140
    iget-wide v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->spotShadowColor:J

    .line 141
    .line 142
    .line 143
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->t(J)I

    .line 144
    move-result v1

    .line 145
    add-int/2addr v0, v1

    .line 146
    return v0
.end method

.method public synthetic s0(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/layout/b;->c(Landroidx/compose/ui/layout/LayoutModifier;Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "SimpleGraphicsLayerModifier(scaleX="

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->scaleX:F

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, ", scaleY="

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    iget v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->scaleY:F

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v1, ", alpha = "

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    iget v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->alpha:F

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v1, ", translationX="

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    iget v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->translationX:F

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v1, ", translationY="

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    iget v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->translationY:F

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v1, ", shadowElevation="

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    iget v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->shadowElevation:F

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v1, ", rotationX="

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    iget v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->rotationX:F

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v1, ", rotationY="

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    iget v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->rotationY:F

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string v1, ", rotationZ="

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    iget v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->rotationZ:F

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    const-string v1, ", cameraDistance="

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    iget v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->cameraDistance:F

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    const-string v1, ", transformOrigin="

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    iget-wide v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->transformOrigin:J

    .line 113
    .line 114
    .line 115
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/TransformOrigin;->i(J)Ljava/lang/String;

    .line 116
    move-result-object v1

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    const-string v1, ", shape="

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    iget-object v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->shape:Landroidx/compose/ui/graphics/Shape;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    const-string v1, ", clip="

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    iget-boolean v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->clip:Z

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    const-string v1, ", renderEffect="

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    iget-object v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->renderEffect:Landroidx/compose/ui/graphics/RenderEffect;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    const-string v1, ", ambientShadowColor="

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    iget-wide v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->ambientShadowColor:J

    .line 157
    .line 158
    .line 159
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->u(J)Ljava/lang/String;

    .line 160
    move-result-object v1

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    const-string v1, ", spotShadowColor="

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    iget-wide v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->spotShadowColor:J

    .line 171
    .line 172
    .line 173
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->u(J)Ljava/lang/String;

    .line 174
    move-result-object v1

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    const/16 v1, 0x29

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    move-result-object v0

    .line 187
    return-object v0
.end method
