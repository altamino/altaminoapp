.class public abstract Landroidx/compose/ui/graphics/painter/Painter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPainter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Painter.kt\nandroidx/compose/ui/graphics/painter/Painter\n+ 2 DrawScope.kt\nandroidx/compose/ui/graphics/drawscope/DrawScopeKt\n+ 3 Canvas.kt\nandroidx/compose/ui/graphics/CanvasKt\n*L\n1#1,217:1\n66#2,2:218\n245#2:220\n68#2,2:228\n111#3,7:221\n*S KotlinDebug\n*F\n+ 1 Painter.kt\nandroidx/compose/ui/graphics/painter/Painter\n*L\n195#1:218,2\n206#1:220\n195#1:228,2\n207#1:221,7\n*E\n"
.end annotation


# instance fields
.field private alpha:F

.field private colorFilter:Landroidx/compose/ui/graphics/ColorFilter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final drawLambda:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private layerPaint:Landroidx/compose/ui/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private useLayer:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    const/high16 v0, 0x3f800000    # 1.0f

    .line 6
    .line 7
    iput v0, p0, Landroidx/compose/ui/graphics/painter/Painter;->alpha:F

    .line 8
    .line 9
    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 10
    .line 11
    iput-object v0, p0, Landroidx/compose/ui/graphics/painter/Painter;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 12
    .line 13
    new-instance v0, Landroidx/compose/ui/graphics/painter/Painter$drawLambda$1;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, p0}, Landroidx/compose/ui/graphics/painter/Painter$drawLambda$1;-><init>(Landroidx/compose/ui/graphics/painter/Painter;)V

    .line 17
    .line 18
    iput-object v0, p0, Landroidx/compose/ui/graphics/painter/Painter;->drawLambda:Le8/l;

    .line 19
    return-void
.end method

.method private final g(F)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/ui/graphics/painter/Painter;->alpha:F

    .line 3
    .line 4
    cmpg-float v0, v0, p1

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    goto :goto_2

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/ui/graphics/painter/Painter;->a(F)Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-nez v0, :cond_3

    .line 14
    .line 15
    const/high16 v0, 0x3f800000    # 1.0f

    .line 16
    .line 17
    cmpg-float v0, p1, v0

    .line 18
    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    iget-object v0, p0, Landroidx/compose/ui/graphics/painter/Painter;->layerPaint:Landroidx/compose/ui/graphics/Paint;

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    goto :goto_0

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-interface {v0, p1}, Landroidx/compose/ui/graphics/Paint;->b(F)V

    .line 28
    :goto_0
    const/4 v0, 0x0

    .line 29
    .line 30
    iput-boolean v0, p0, Landroidx/compose/ui/graphics/painter/Painter;->useLayer:Z

    .line 31
    goto :goto_1

    .line 32
    .line 33
    .line 34
    :cond_2
    invoke-direct {p0}, Landroidx/compose/ui/graphics/painter/Painter;->l()Landroidx/compose/ui/graphics/Paint;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-interface {v0, p1}, Landroidx/compose/ui/graphics/Paint;->b(F)V

    .line 39
    const/4 v0, 0x1

    .line 40
    .line 41
    iput-boolean v0, p0, Landroidx/compose/ui/graphics/painter/Painter;->useLayer:Z

    .line 42
    .line 43
    :cond_3
    :goto_1
    iput p1, p0, Landroidx/compose/ui/graphics/painter/Painter;->alpha:F

    .line 44
    :goto_2
    return-void
.end method

.method private final h(Landroidx/compose/ui/graphics/ColorFilter;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/graphics/painter/Painter;->colorFilter:Landroidx/compose/ui/graphics/ColorFilter;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_3

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroidx/compose/ui/graphics/painter/Painter;->e(Landroidx/compose/ui/graphics/ColorFilter;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_2

    .line 15
    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/compose/ui/graphics/painter/Painter;->layerPaint:Landroidx/compose/ui/graphics/Paint;

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v1, 0x0

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, v1}, Landroidx/compose/ui/graphics/Paint;->y(Landroidx/compose/ui/graphics/ColorFilter;)V

    .line 26
    :goto_0
    const/4 v0, 0x0

    .line 27
    .line 28
    iput-boolean v0, p0, Landroidx/compose/ui/graphics/painter/Painter;->useLayer:Z

    .line 29
    goto :goto_1

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-direct {p0}, Landroidx/compose/ui/graphics/painter/Painter;->l()Landroidx/compose/ui/graphics/Paint;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    .line 36
    invoke-interface {v0, p1}, Landroidx/compose/ui/graphics/Paint;->y(Landroidx/compose/ui/graphics/ColorFilter;)V

    .line 37
    const/4 v0, 0x1

    .line 38
    .line 39
    iput-boolean v0, p0, Landroidx/compose/ui/graphics/painter/Painter;->useLayer:Z

    .line 40
    .line 41
    :cond_2
    :goto_1
    iput-object p1, p0, Landroidx/compose/ui/graphics/painter/Painter;->colorFilter:Landroidx/compose/ui/graphics/ColorFilter;

    .line 42
    :cond_3
    return-void
.end method

.method private final i(Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/graphics/painter/Painter;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 3
    .line 4
    if-eq v0, p1, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/compose/ui/graphics/painter/Painter;->f(Landroidx/compose/ui/unit/LayoutDirection;)Z

    .line 8
    .line 9
    iput-object p1, p0, Landroidx/compose/ui/graphics/painter/Painter;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 10
    :cond_0
    return-void
.end method

.method private final l()Landroidx/compose/ui/graphics/Paint;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/graphics/painter/Painter;->layerPaint:Landroidx/compose/ui/graphics/Paint;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->a()Landroidx/compose/ui/graphics/Paint;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/compose/ui/graphics/painter/Painter;->layerPaint:Landroidx/compose/ui/graphics/Paint;

    .line 11
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected a(F)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method protected e(Landroidx/compose/ui/graphics/ColorFilter;)Z
    .locals 0
    .param p1    # Landroidx/compose/ui/graphics/ColorFilter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method protected f(Landroidx/compose/ui/unit/LayoutDirection;)Z
    .locals 1
    .param p1    # Landroidx/compose/ui/unit/LayoutDirection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "layoutDirection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final j(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFLandroidx/compose/ui/graphics/ColorFilter;)V
    .locals 3
    .param p1    # Landroidx/compose/ui/graphics/drawscope/DrawScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/ui/graphics/ColorFilter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "$this$draw"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p4}, Landroidx/compose/ui/graphics/painter/Painter;->g(F)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p5}, Landroidx/compose/ui/graphics/painter/Painter;->h(Landroidx/compose/ui/graphics/ColorFilter;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 15
    move-result-object p5

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, p5}, Landroidx/compose/ui/graphics/painter/Painter;->i(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->c()J

    .line 22
    move-result-wide v0

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->i(J)F

    .line 26
    move-result p5

    .line 27
    .line 28
    .line 29
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Size;->i(J)F

    .line 30
    move-result v0

    .line 31
    sub-float/2addr p5, v0

    .line 32
    .line 33
    .line 34
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->c()J

    .line 35
    move-result-wide v0

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->g(J)F

    .line 39
    move-result v0

    .line 40
    .line 41
    .line 42
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Size;->g(J)F

    .line 43
    move-result v1

    .line 44
    sub-float/2addr v0, v1

    .line 45
    .line 46
    .line 47
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->T()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    .line 51
    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->d()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    .line 52
    move-result-object v1

    .line 53
    const/4 v2, 0x0

    .line 54
    .line 55
    .line 56
    invoke-interface {v1, v2, v2, p5, v0}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->f(FFFF)V

    .line 57
    .line 58
    cmpl-float p4, p4, v2

    .line 59
    .line 60
    if-lez p4, :cond_1

    .line 61
    .line 62
    .line 63
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Size;->i(J)F

    .line 64
    move-result p4

    .line 65
    .line 66
    cmpl-float p4, p4, v2

    .line 67
    .line 68
    if-lez p4, :cond_1

    .line 69
    .line 70
    .line 71
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Size;->g(J)F

    .line 72
    move-result p4

    .line 73
    .line 74
    cmpl-float p4, p4, v2

    .line 75
    .line 76
    if-lez p4, :cond_1

    .line 77
    .line 78
    iget-boolean p4, p0, Landroidx/compose/ui/graphics/painter/Painter;->useLayer:Z

    .line 79
    .line 80
    if-eqz p4, :cond_0

    .line 81
    .line 82
    sget-object p4, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p4}, Landroidx/compose/ui/geometry/Offset$Companion;->c()J

    .line 86
    move-result-wide v1

    .line 87
    .line 88
    .line 89
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Size;->i(J)F

    .line 90
    move-result p4

    .line 91
    .line 92
    .line 93
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Size;->g(J)F

    .line 94
    move-result p2

    .line 95
    .line 96
    .line 97
    invoke-static {p4, p2}, Landroidx/compose/ui/geometry/SizeKt;->a(FF)J

    .line 98
    move-result-wide p2

    .line 99
    .line 100
    .line 101
    invoke-static {v1, v2, p2, p3}, Landroidx/compose/ui/geometry/RectKt;->b(JJ)Landroidx/compose/ui/geometry/Rect;

    .line 102
    move-result-object p2

    .line 103
    .line 104
    .line 105
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->T()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    .line 106
    move-result-object p3

    .line 107
    .line 108
    .line 109
    invoke-interface {p3}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->a()Landroidx/compose/ui/graphics/Canvas;

    .line 110
    move-result-object p3

    .line 111
    .line 112
    .line 113
    invoke-direct {p0}, Landroidx/compose/ui/graphics/painter/Painter;->l()Landroidx/compose/ui/graphics/Paint;

    .line 114
    move-result-object p4

    .line 115
    .line 116
    .line 117
    :try_start_0
    invoke-interface {p3, p2, p4}, Landroidx/compose/ui/graphics/Canvas;->g(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/graphics/Paint;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, p1}, Landroidx/compose/ui/graphics/painter/Painter;->m(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    .line 122
    .line 123
    invoke-interface {p3}, Landroidx/compose/ui/graphics/Canvas;->n()V

    .line 124
    goto :goto_0

    .line 125
    :catchall_0
    move-exception p1

    .line 126
    .line 127
    .line 128
    invoke-interface {p3}, Landroidx/compose/ui/graphics/Canvas;->n()V

    .line 129
    throw p1

    .line 130
    .line 131
    .line 132
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/ui/graphics/painter/Painter;->m(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V

    .line 133
    .line 134
    .line 135
    :cond_1
    :goto_0
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->T()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    .line 136
    move-result-object p1

    .line 137
    .line 138
    .line 139
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->d()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    .line 140
    move-result-object p1

    .line 141
    neg-float p2, p5

    .line 142
    neg-float p3, v0

    .line 143
    .line 144
    const/high16 p4, -0x80000000

    .line 145
    .line 146
    .line 147
    invoke-interface {p1, p4, p4, p2, p3}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->f(FFFF)V

    .line 148
    return-void
.end method

.method public abstract k()J
.end method

.method protected abstract m(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    .param p1    # Landroidx/compose/ui/graphics/drawscope/DrawScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
