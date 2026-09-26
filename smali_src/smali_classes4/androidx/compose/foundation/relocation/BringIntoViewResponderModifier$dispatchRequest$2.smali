.class final Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$dispatchRequest$2;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->j(Lw7/u;Landroidx/compose/ui/layout/LayoutCoordinates;Lkotlin/coroutines/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/l;",
        "Le8/p<",
        "Lkotlinx/coroutines/o0;",
        "Lkotlin/coroutines/d<",
        "-",
        "Lw7/l0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "androidx.compose.foundation.relocation.BringIntoViewResponderModifier$dispatchRequest$2"
    f = "BringIntoViewResponder.kt"
    l = {
        0x110
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $layoutCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

.field final synthetic $localRect:Landroidx/compose/ui/geometry/Rect;

.field final synthetic $parentRect:Landroidx/compose/ui/geometry/Rect;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/geometry/Rect;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;",
            "Landroidx/compose/ui/geometry/Rect;",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            "Landroidx/compose/ui/geometry/Rect;",
            "Lkotlin/coroutines/d<",
            "-",
            "Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$dispatchRequest$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$dispatchRequest$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    iput-object p2, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$dispatchRequest$2;->$parentRect:Landroidx/compose/ui/geometry/Rect;

    iput-object p3, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$dispatchRequest$2;->$layoutCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    iput-object p4, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$dispatchRequest$2;->$localRect:Landroidx/compose/ui/geometry/Rect;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/d<",
            "*>;)",
            "Lkotlin/coroutines/d<",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v6, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$dispatchRequest$2;

    iget-object v1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$dispatchRequest$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    iget-object v2, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$dispatchRequest$2;->$parentRect:Landroidx/compose/ui/geometry/Rect;

    iget-object v3, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$dispatchRequest$2;->$layoutCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    iget-object v4, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$dispatchRequest$2;->$localRect:Landroidx/compose/ui/geometry/Rect;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$dispatchRequest$2;-><init>(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/geometry/Rect;Lkotlin/coroutines/d;)V

    iput-object p1, v6, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$dispatchRequest$2;->L$0:Ljava/lang/Object;

    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/o0;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$dispatchRequest$2;->invoke(Lkotlinx/coroutines/o0;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/o0;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lkotlinx/coroutines/o0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/o0;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$dispatchRequest$2;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$dispatchRequest$2;

    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {p1, p2}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$dispatchRequest$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget v1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$dispatchRequest$2;->label:I

    .line 7
    const/4 v2, 0x1

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 18
    .line 19
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 20
    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    throw p1

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 27
    .line 28
    iget-object p1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$dispatchRequest$2;->L$0:Ljava/lang/Object;

    .line 29
    move-object v3, p1

    .line 30
    .line 31
    check-cast v3, Lkotlinx/coroutines/o0;

    .line 32
    const/4 v4, 0x0

    .line 33
    const/4 v5, 0x0

    .line 34
    .line 35
    new-instance v6, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$dispatchRequest$2$1;

    .line 36
    .line 37
    iget-object p1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$dispatchRequest$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    .line 38
    .line 39
    iget-object v1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$dispatchRequest$2;->$localRect:Landroidx/compose/ui/geometry/Rect;

    .line 40
    const/4 v7, 0x0

    .line 41
    .line 42
    .line 43
    invoke-direct {v6, p1, v1, v7}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$dispatchRequest$2$1;-><init>(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;Landroidx/compose/ui/geometry/Rect;Lkotlin/coroutines/d;)V

    .line 44
    const/4 v7, 0x3

    .line 45
    const/4 v8, 0x0

    .line 46
    .line 47
    .line 48
    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/o0;Lkotlin/coroutines/g;Lkotlinx/coroutines/q0;Le8/p;ILjava/lang/Object;)Lkotlinx/coroutines/b2;

    .line 49
    .line 50
    iget-object p1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$dispatchRequest$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Landroidx/compose/foundation/relocation/BringIntoViewChildModifier;->c()Landroidx/compose/foundation/relocation/BringIntoViewParent;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    iget-object v1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$dispatchRequest$2;->$parentRect:Landroidx/compose/ui/geometry/Rect;

    .line 57
    .line 58
    iget-object v3, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$dispatchRequest$2;->$layoutCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 59
    .line 60
    iput v2, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$dispatchRequest$2;->label:I

    .line 61
    .line 62
    .line 63
    invoke-interface {p1, v1, v3, p0}, Landroidx/compose/foundation/relocation/BringIntoViewParent;->a(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/layout/LayoutCoordinates;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    if-ne p1, v0, :cond_2

    .line 67
    return-object v0

    .line 68
    .line 69
    :cond_2
    :goto_0
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 70
    return-object p1
.end method
