.class public interface abstract Landroidx/compose/ui/node/OwnedLayer;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a(Landroidx/compose/ui/geometry/MutableRect;Z)V
    .param p1    # Landroidx/compose/ui/geometry/MutableRect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract b(Landroidx/compose/ui/graphics/Canvas;)V
    .param p1    # Landroidx/compose/ui/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract c(Le8/l;Le8/a;)V
    .param p1    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Le8/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/graphics/Canvas;",
            "Lw7/l0;",
            ">;",
            "Le8/a<",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract d(JZ)J
.end method

.method public abstract destroy()V
.end method

.method public abstract e(J)V
.end method

.method public abstract f(FFFFFFFFFFJLandroidx/compose/ui/graphics/Shape;ZLandroidx/compose/ui/graphics/RenderEffect;JJLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)V
    .param p13    # Landroidx/compose/ui/graphics/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p15    # Landroidx/compose/ui/graphics/RenderEffect;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p20    # Landroidx/compose/ui/unit/LayoutDirection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p21    # Landroidx/compose/ui/unit/Density;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract g(J)Z
.end method

.method public abstract h(J)V
.end method

.method public abstract i()V
.end method

.method public abstract invalidate()V
.end method
