.class final Landroidx/compose/ui/draw/BlurKt$blur$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $clip:Z

.field final synthetic $edgeTreatment:Landroidx/compose/ui/graphics/Shape;

.field final synthetic $radiusX:F

.field final synthetic $radiusY:F

.field final synthetic $tileMode:I


# virtual methods
.method public final a(Landroidx/compose/ui/graphics/GraphicsLayerScope;)V
    .locals 4
    .param p1    # Landroidx/compose/ui/graphics/GraphicsLayerScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "$this$graphicsLayer"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget v0, p0, Landroidx/compose/ui/draw/BlurKt$blur$1;->$radiusX:F

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, v0}, Landroidx/compose/ui/unit/Density;->H0(F)F

    .line 11
    move-result v0

    .line 12
    .line 13
    iget v1, p0, Landroidx/compose/ui/draw/BlurKt$blur$1;->$radiusY:F

    .line 14
    .line 15
    .line 16
    invoke-interface {p1, v1}, Landroidx/compose/ui/unit/Density;->H0(F)F

    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x0

    .line 19
    .line 20
    cmpl-float v3, v0, v2

    .line 21
    .line 22
    if-lez v3, :cond_0

    .line 23
    .line 24
    cmpl-float v2, v1, v2

    .line 25
    .line 26
    if-lez v2, :cond_0

    .line 27
    .line 28
    iget v2, p0, Landroidx/compose/ui/draw/BlurKt$blur$1;->$tileMode:I

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v1, v2}, Landroidx/compose/ui/graphics/RenderEffectKt;->a(FFI)Landroidx/compose/ui/graphics/BlurEffect;

    .line 32
    move-result-object v0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 35
    .line 36
    .line 37
    :goto_0
    invoke-interface {p1, v0}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->l(Landroidx/compose/ui/graphics/RenderEffect;)V

    .line 38
    .line 39
    iget-object v0, p0, Landroidx/compose/ui/draw/BlurKt$blur$1;->$edgeTreatment:Landroidx/compose/ui/graphics/Shape;

    .line 40
    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    .line 44
    invoke-static {}, Landroidx/compose/ui/graphics/RectangleShapeKt;->a()Landroidx/compose/ui/graphics/Shape;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    .line 48
    :cond_1
    invoke-interface {p1, v0}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->R(Landroidx/compose/ui/graphics/Shape;)V

    .line 49
    .line 50
    iget-boolean v0, p0, Landroidx/compose/ui/draw/BlurKt$blur$1;->$clip:Z

    .line 51
    .line 52
    .line 53
    invoke-interface {p1, v0}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->y(Z)V

    .line 54
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/ui/graphics/GraphicsLayerScope;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/compose/ui/draw/BlurKt$blur$1;->a(Landroidx/compose/ui/graphics/GraphicsLayerScope;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method
