.class public final Landroidx/compose/ui/node/LayoutNodeWrapper$Companion$PointerInputSource$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/node/LayoutNodeWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource<",
        "Landroidx/compose/ui/node/PointerInputEntity;",
        "Landroidx/compose/ui/input/pointer/PointerInputFilter;",
        "Landroidx/compose/ui/input/pointer/PointerInputModifier;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/ui/node/EntityList;->Companion:Landroidx/compose/ui/node/EntityList$Companion;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/node/EntityList$Companion;->d()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public bridge synthetic b(Landroidx/compose/ui/node/LayoutNodeEntity;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/ui/node/PointerInputEntity;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/LayoutNodeWrapper$Companion$PointerInputSource$1;->f(Landroidx/compose/ui/node/PointerInputEntity;)Landroidx/compose/ui/input/pointer/PointerInputFilter;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public bridge synthetic c(Landroidx/compose/ui/node/LayoutNodeEntity;)Z
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/ui/node/PointerInputEntity;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/LayoutNodeWrapper$Companion$PointerInputSource$1;->g(Landroidx/compose/ui/node/PointerInputEntity;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public d(Landroidx/compose/ui/node/LayoutNode;JLandroidx/compose/ui/node/HitTestResult;ZZ)V
    .locals 1
    .param p1    # Landroidx/compose/ui/node/LayoutNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/node/HitTestResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/node/LayoutNode;",
            "J",
            "Landroidx/compose/ui/node/HitTestResult<",
            "Landroidx/compose/ui/input/pointer/PointerInputFilter;",
            ">;ZZ)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "layoutNode"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "hitTestResult"

    .line 8
    .line 9
    .line 10
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {p1 .. p6}, Landroidx/compose/ui/node/LayoutNode;->C0(JLandroidx/compose/ui/node/HitTestResult;ZZ)V

    .line 14
    return-void
.end method

.method public e(Landroidx/compose/ui/node/LayoutNode;)Z
    .locals 1
    .param p1    # Landroidx/compose/ui/node/LayoutNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "parentLayoutNode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public f(Landroidx/compose/ui/node/PointerInputEntity;)Landroidx/compose/ui/input/pointer/PointerInputFilter;
    .locals 1
    .param p1    # Landroidx/compose/ui/node/PointerInputEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "entity"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeEntity;->c()Landroidx/compose/ui/Modifier;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputModifier;

    .line 12
    .line 13
    .line 14
    invoke-interface {p1}, Landroidx/compose/ui/input/pointer/PointerInputModifier;->B0()Landroidx/compose/ui/input/pointer/PointerInputFilter;

    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public g(Landroidx/compose/ui/node/PointerInputEntity;)Z
    .locals 1
    .param p1    # Landroidx/compose/ui/node/PointerInputEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "entity"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeEntity;->c()Landroidx/compose/ui/Modifier;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputModifier;

    .line 12
    .line 13
    .line 14
    invoke-interface {p1}, Landroidx/compose/ui/input/pointer/PointerInputModifier;->B0()Landroidx/compose/ui/input/pointer/PointerInputFilter;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputFilter;->p()Z

    .line 19
    move-result p1

    .line 20
    return p1
.end method
