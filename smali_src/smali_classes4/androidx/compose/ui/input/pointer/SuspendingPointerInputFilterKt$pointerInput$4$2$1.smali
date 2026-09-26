.class final Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt$pointerInput$4$2$1;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt$pointerInput$4;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
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
    c = "androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt$pointerInput$4$2$1"
    f = "SuspendingPointerInputFilter.kt"
    l = {
        0x123
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $block:Le8/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/p<",
            "Landroidx/compose/ui/input/pointer/PointerInputScope;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $filter:Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;Le8/p;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;",
            "Le8/p<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerInputScope;",
            "-",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/d<",
            "-",
            "Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt$pointerInput$4$2$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt$pointerInput$4$2$1;->$filter:Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;

    iput-object p2, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt$pointerInput$4$2$1;->$block:Le8/p;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 3
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

    new-instance v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt$pointerInput$4$2$1;

    iget-object v1, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt$pointerInput$4$2$1;->$filter:Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;

    iget-object v2, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt$pointerInput$4$2$1;->$block:Le8/p;

    invoke-direct {v0, v1, v2, p2}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt$pointerInput$4$2$1;-><init>(Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;Le8/p;Lkotlin/coroutines/d;)V

    iput-object p1, v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt$pointerInput$4$2$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/o0;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt$pointerInput$4$2$1;->invoke(Lkotlinx/coroutines/o0;Lkotlin/coroutines/d;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt$pointerInput$4$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt$pointerInput$4$2$1;

    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {p1, p2}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt$pointerInput$4$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
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
    iget v1, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt$pointerInput$4$2$1;->label:I

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
    iget-object p1, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt$pointerInput$4$2$1;->L$0:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p1, Lkotlinx/coroutines/o0;

    .line 31
    .line 32
    iget-object v1, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt$pointerInput$4$2$1;->$filter:Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p1}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->J0(Lkotlinx/coroutines/o0;)V

    .line 36
    .line 37
    iget-object p1, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt$pointerInput$4$2$1;->$block:Le8/p;

    .line 38
    .line 39
    iget-object v1, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt$pointerInput$4$2$1;->$filter:Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;

    .line 40
    .line 41
    iput v2, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt$pointerInput$4$2$1;->label:I

    .line 42
    .line 43
    .line 44
    invoke-interface {p1, v1, p0}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    if-ne p1, v0, :cond_2

    .line 48
    return-object v0

    .line 49
    .line 50
    :cond_2
    :goto_0
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 51
    return-object p1
.end method
