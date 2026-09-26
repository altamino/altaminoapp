.class public final Landroidx/compose/ui/node/UiApplier;
.super Landroidx/compose/runtime/AbstractApplier;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/runtime/AbstractApplier<",
        "Landroidx/compose/ui/node/LayoutNode;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/node/LayoutNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "root"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Landroidx/compose/runtime/AbstractApplier;-><init>(Ljava/lang/Object;)V

    .line 9
    return-void
.end method


# virtual methods
.method public b(II)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/AbstractApplier;->a()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Landroidx/compose/ui/node/LayoutNode;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/node/LayoutNode;->e1(II)V

    .line 10
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroidx/compose/runtime/AbstractApplier;->c()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/compose/runtime/AbstractApplier;->j()Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    check-cast v0, Landroidx/compose/ui/node/LayoutNode;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->s0()Landroidx/compose/ui/node/Owner;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->g()V

    .line 19
    :cond_0
    return-void
.end method

.method public e(III)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/AbstractApplier;->a()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Landroidx/compose/ui/node/LayoutNode;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1, p2, p3}, Landroidx/compose/ui/node/LayoutNode;->R0(III)V

    .line 10
    return-void
.end method

.method public bridge synthetic f(ILjava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    check-cast p2, Landroidx/compose/ui/node/LayoutNode;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/UiApplier;->n(ILandroidx/compose/ui/node/LayoutNode;)V

    .line 6
    return-void
.end method

.method public bridge synthetic g(ILjava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    check-cast p2, Landroidx/compose/ui/node/LayoutNode;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/UiApplier;->m(ILandroidx/compose/ui/node/LayoutNode;)V

    .line 6
    return-void
.end method

.method protected k()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/AbstractApplier;->j()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Landroidx/compose/ui/node/LayoutNode;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->d1()V

    .line 10
    return-void
.end method

.method public m(ILandroidx/compose/ui/node/LayoutNode;)V
    .locals 1
    .param p2    # Landroidx/compose/ui/node/LayoutNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "instance"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/compose/runtime/AbstractApplier;->a()Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Landroidx/compose/ui/node/LayoutNode;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/node/LayoutNode;->G0(ILandroidx/compose/ui/node/LayoutNode;)V

    .line 15
    return-void
.end method

.method public n(ILandroidx/compose/ui/node/LayoutNode;)V
    .locals 0
    .param p2    # Landroidx/compose/ui/node/LayoutNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p1, "instance"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
