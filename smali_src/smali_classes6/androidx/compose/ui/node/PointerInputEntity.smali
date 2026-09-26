.class public final Landroidx/compose/ui/node/PointerInputEntity;
.super Landroidx/compose/ui/node/LayoutNodeEntity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/LayoutNodeEntity<",
        "Landroidx/compose/ui/node/PointerInputEntity;",
        "Landroidx/compose/ui/input/pointer/PointerInputModifier;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/input/pointer/PointerInputModifier;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/node/LayoutNodeWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/input/pointer/PointerInputModifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "layoutNodeWrapper"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "modifier"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/node/LayoutNodeEntity;-><init>(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/Modifier;)V

    .line 14
    return-void
.end method


# virtual methods
.method public g()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroidx/compose/ui/node/LayoutNodeEntity;->g()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeEntity;->c()Landroidx/compose/ui/Modifier;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    check-cast v0, Landroidx/compose/ui/input/pointer/PointerInputModifier;

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Landroidx/compose/ui/input/pointer/PointerInputModifier;->B0()Landroidx/compose/ui/input/pointer/PointerInputFilter;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeEntity;->b()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroidx/compose/ui/input/pointer/PointerInputFilter;->f0(Landroidx/compose/ui/layout/LayoutCoordinates;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeEntity;->c()Landroidx/compose/ui/Modifier;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    check-cast v0, Landroidx/compose/ui/input/pointer/PointerInputModifier;

    .line 27
    .line 28
    .line 29
    invoke-interface {v0}, Landroidx/compose/ui/input/pointer/PointerInputModifier;->B0()Landroidx/compose/ui/input/pointer/PointerInputFilter;

    .line 30
    move-result-object v0

    .line 31
    const/4 v1, 0x1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroidx/compose/ui/input/pointer/PointerInputFilter;->e0(Z)V

    .line 35
    return-void
.end method

.method public h()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroidx/compose/ui/node/LayoutNodeEntity;->h()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeEntity;->c()Landroidx/compose/ui/Modifier;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    check-cast v0, Landroidx/compose/ui/input/pointer/PointerInputModifier;

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Landroidx/compose/ui/input/pointer/PointerInputModifier;->B0()Landroidx/compose/ui/input/pointer/PointerInputFilter;

    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroidx/compose/ui/input/pointer/PointerInputFilter;->e0(Z)V

    .line 18
    return-void
.end method

.method public final j()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeEntity;->c()Landroidx/compose/ui/Modifier;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Landroidx/compose/ui/input/pointer/PointerInputModifier;

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Landroidx/compose/ui/input/pointer/PointerInputModifier;->B0()Landroidx/compose/ui/input/pointer/PointerInputFilter;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerInputFilter;->x()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeEntity;->d()Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    check-cast v0, Landroidx/compose/ui/node/PointerInputEntity;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroidx/compose/ui/node/PointerInputEntity;->j()Z

    .line 28
    move-result v0

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 35
    :goto_1
    return v0
.end method
