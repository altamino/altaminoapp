.class final Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;
.super Landroidx/compose/foundation/relocation/BringIntoViewChildModifier;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/modifier/ModifierLocalProvider;
.implements Landroidx/compose/foundation/relocation/BringIntoViewParent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/foundation/relocation/BringIntoViewChildModifier;",
        "Landroidx/compose/ui/modifier/ModifierLocalProvider<",
        "Landroidx/compose/foundation/relocation/BringIntoViewParent;",
        ">;",
        "Landroidx/compose/foundation/relocation/BringIntoViewParent;"
    }
.end annotation


# instance fields
.field private newestDispatchedRequest:Lw7/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw7/u<",
            "Landroidx/compose/ui/geometry/Rect;",
            "+",
            "Lkotlinx/coroutines/b2;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private newestReceivedRequest:Lw7/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw7/u<",
            "Landroidx/compose/ui/geometry/Rect;",
            "+",
            "Lkotlinx/coroutines/b2;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public responder:Landroidx/compose/foundation/relocation/BringIntoViewResponder;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/relocation/BringIntoViewParent;)V
    .locals 1
    .param p1    # Landroidx/compose/foundation/relocation/BringIntoViewParent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "defaultParent"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Landroidx/compose/foundation/relocation/BringIntoViewChildModifier;-><init>(Landroidx/compose/foundation/relocation/BringIntoViewParent;)V

    .line 9
    return-void
.end method

.method public static final synthetic d(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;Lw7/u;Landroidx/compose/ui/layout/LayoutCoordinates;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->j(Lw7/u;Landroidx/compose/ui/layout/LayoutCoordinates;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic f(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;)Lw7/u;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->newestDispatchedRequest:Lw7/u;

    .line 3
    return-object p0
.end method

.method public static final synthetic g(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;)Lw7/u;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->newestReceivedRequest:Lw7/u;

    .line 3
    return-object p0
.end method

.method public static final synthetic h(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;Lw7/u;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->newestDispatchedRequest:Lw7/u;

    .line 3
    return-void
.end method

.method public static final synthetic i(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;Lw7/u;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->newestReceivedRequest:Lw7/u;

    .line 3
    return-void
.end method

.method private final j(Lw7/u;Landroidx/compose/ui/layout/LayoutCoordinates;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw7/u<",
            "Landroidx/compose/ui/geometry/Rect;",
            "+",
            "Lkotlinx/coroutines/b2;",
            ">;",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->newestDispatchedRequest:Lw7/u;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lw7/u;->c()Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    move-object v4, p1

    .line 8
    .line 9
    check-cast v4, Landroidx/compose/ui/geometry/Rect;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->k()Landroidx/compose/foundation/relocation/BringIntoViewResponder;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    invoke-interface {p1, v4}, Landroidx/compose/foundation/relocation/BringIntoViewResponder;->b(Landroidx/compose/ui/geometry/Rect;)Landroidx/compose/ui/geometry/Rect;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    new-instance p1, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$dispatchRequest$2;

    .line 20
    const/4 v5, 0x0

    .line 21
    move-object v0, p1

    .line 22
    move-object v1, p0

    .line 23
    move-object v3, p2

    .line 24
    .line 25
    .line 26
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$dispatchRequest$2;-><init>(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/geometry/Rect;Lkotlin/coroutines/d;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p1, p3}, Lkotlinx/coroutines/p0;->f(Le8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 34
    move-result-object p2

    .line 35
    .line 36
    if-ne p1, p2, :cond_0

    .line 37
    return-object p1

    .line 38
    .line 39
    :cond_0
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 40
    return-object p1
.end method


# virtual methods
.method public a(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/layout/LayoutCoordinates;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 2
    .param p1    # Landroidx/compose/ui/geometry/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/layout/LayoutCoordinates;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/geometry/Rect;",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0, p2, p1, v1}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;-><init>(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/geometry/Rect;Lkotlin/coroutines/d;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0, p3}, Lkotlinx/coroutines/p0;->f(Le8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    if-ne p1, p2, :cond_0

    .line 17
    return-object p1

    .line 18
    .line 19
    :cond_0
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 20
    return-object p1
.end method

.method public getKey()Landroidx/compose/ui/modifier/ProvidableModifierLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/ui/modifier/ProvidableModifierLocal<",
            "Landroidx/compose/foundation/relocation/BringIntoViewParent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroidx/compose/foundation/relocation/BringIntoViewKt;->a()Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->l()Landroidx/compose/foundation/relocation/BringIntoViewParent;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final k()Landroidx/compose/foundation/relocation/BringIntoViewResponder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->responder:Landroidx/compose/foundation/relocation/BringIntoViewResponder;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string v0, "responder"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public l()Landroidx/compose/foundation/relocation/BringIntoViewParent;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public final n(Landroidx/compose/foundation/relocation/BringIntoViewResponder;)V
    .locals 1
    .param p1    # Landroidx/compose/foundation/relocation/BringIntoViewResponder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->responder:Landroidx/compose/foundation/relocation/BringIntoViewResponder;

    return-void
.end method
