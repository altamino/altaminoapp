.class final Landroidx/compose/foundation/gestures/ScrollableKt$pointerScrollable$4;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/ScrollableKt;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/OverscrollEffect;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/l;",
        "Le8/q<",
        "Lkotlinx/coroutines/o0;",
        "Ljava/lang/Float;",
        "Lkotlin/coroutines/d<",
        "-",
        "Lw7/l0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "androidx.compose.foundation.gestures.ScrollableKt$pointerScrollable$4"
    f = "Scrollable.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $nestedScrollDispatcher:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $scrollLogic:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/foundation/gestures/ScrollingLogic;",
            ">;"
        }
    .end annotation
.end field

.field synthetic F$0:F

.field label:I


# direct methods
.method constructor <init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/foundation/gestures/ScrollingLogic;",
            ">;",
            "Lkotlin/coroutines/d<",
            "-",
            "Landroidx/compose/foundation/gestures/ScrollableKt$pointerScrollable$4;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/gestures/ScrollableKt$pointerScrollable$4;->$nestedScrollDispatcher:Landroidx/compose/runtime/MutableState;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/ScrollableKt$pointerScrollable$4;->$scrollLogic:Landroidx/compose/runtime/State;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final f(Lkotlinx/coroutines/o0;FLkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lkotlinx/coroutines/o0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/o0;",
            "F",
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
    new-instance p1, Landroidx/compose/foundation/gestures/ScrollableKt$pointerScrollable$4;

    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableKt$pointerScrollable$4;->$nestedScrollDispatcher:Landroidx/compose/runtime/MutableState;

    iget-object v1, p0, Landroidx/compose/foundation/gestures/ScrollableKt$pointerScrollable$4;->$scrollLogic:Landroidx/compose/runtime/State;

    invoke-direct {p1, v0, v1, p3}, Landroidx/compose/foundation/gestures/ScrollableKt$pointerScrollable$4;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Lkotlin/coroutines/d;)V

    iput p2, p1, Landroidx/compose/foundation/gestures/ScrollableKt$pointerScrollable$4;->F$0:F

    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {p1, p2}, Landroidx/compose/foundation/gestures/ScrollableKt$pointerScrollable$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/o0;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    check-cast p3, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/gestures/ScrollableKt$pointerScrollable$4;->f(Lkotlinx/coroutines/o0;FLkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
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
    .line 5
    iget v0, p0, Landroidx/compose/foundation/gestures/ScrollableKt$pointerScrollable$4;->label:I

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 11
    .line 12
    iget p1, p0, Landroidx/compose/foundation/gestures/ScrollableKt$pointerScrollable$4;->F$0:F

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableKt$pointerScrollable$4;->$nestedScrollDispatcher:Landroidx/compose/runtime/MutableState;

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->e()Lkotlinx/coroutines/o0;

    .line 24
    move-result-object v1

    .line 25
    const/4 v2, 0x0

    .line 26
    const/4 v3, 0x0

    .line 27
    .line 28
    new-instance v4, Landroidx/compose/foundation/gestures/ScrollableKt$pointerScrollable$4$1;

    .line 29
    .line 30
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableKt$pointerScrollable$4;->$scrollLogic:Landroidx/compose/runtime/State;

    .line 31
    const/4 v5, 0x0

    .line 32
    .line 33
    .line 34
    invoke-direct {v4, v0, p1, v5}, Landroidx/compose/foundation/gestures/ScrollableKt$pointerScrollable$4$1;-><init>(Landroidx/compose/runtime/State;FLkotlin/coroutines/d;)V

    .line 35
    const/4 v5, 0x3

    .line 36
    const/4 v6, 0x0

    .line 37
    .line 38
    .line 39
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/o0;Lkotlin/coroutines/g;Lkotlinx/coroutines/q0;Le8/p;ILjava/lang/Object;)Lkotlinx/coroutines/b2;

    .line 40
    .line 41
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 42
    return-object p1

    .line 43
    .line 44
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 47
    .line 48
    .line 49
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    throw p1
.end method
