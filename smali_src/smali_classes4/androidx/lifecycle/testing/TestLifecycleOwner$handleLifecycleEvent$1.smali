.class final Landroidx/lifecycle/testing/TestLifecycleOwner$handleLifecycleEvent$1;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
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
    c = "androidx.lifecycle.testing.TestLifecycleOwner$handleLifecycleEvent$1"
    f = "TestLifecycleOwner.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $event:Landroidx/lifecycle/Lifecycle$Event;

.field label:I

.field final synthetic this$0:Landroidx/lifecycle/testing/TestLifecycleOwner;


# direct methods
.method constructor <init>(Landroidx/lifecycle/testing/TestLifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/testing/TestLifecycleOwner;",
            "Landroidx/lifecycle/Lifecycle$Event;",
            "Lkotlin/coroutines/d<",
            "-",
            "Landroidx/lifecycle/testing/TestLifecycleOwner$handleLifecycleEvent$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/lifecycle/testing/TestLifecycleOwner$handleLifecycleEvent$1;->this$0:Landroidx/lifecycle/testing/TestLifecycleOwner;

    iput-object p2, p0, Landroidx/lifecycle/testing/TestLifecycleOwner$handleLifecycleEvent$1;->$event:Landroidx/lifecycle/Lifecycle$Event;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 2
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

    new-instance p1, Landroidx/lifecycle/testing/TestLifecycleOwner$handleLifecycleEvent$1;

    iget-object v0, p0, Landroidx/lifecycle/testing/TestLifecycleOwner$handleLifecycleEvent$1;->this$0:Landroidx/lifecycle/testing/TestLifecycleOwner;

    iget-object v1, p0, Landroidx/lifecycle/testing/TestLifecycleOwner$handleLifecycleEvent$1;->$event:Landroidx/lifecycle/Lifecycle$Event;

    invoke-direct {p1, v0, v1, p2}, Landroidx/lifecycle/testing/TestLifecycleOwner$handleLifecycleEvent$1;-><init>(Landroidx/lifecycle/testing/TestLifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/o0;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/testing/TestLifecycleOwner$handleLifecycleEvent$1;->invoke(Lkotlinx/coroutines/o0;Lkotlin/coroutines/d;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/testing/TestLifecycleOwner$handleLifecycleEvent$1;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/testing/TestLifecycleOwner$handleLifecycleEvent$1;

    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/testing/TestLifecycleOwner$handleLifecycleEvent$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
    iget v0, p0, Landroidx/lifecycle/testing/TestLifecycleOwner$handleLifecycleEvent$1;->label:I

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 11
    .line 12
    iget-object p1, p0, Landroidx/lifecycle/testing/TestLifecycleOwner$handleLifecycleEvent$1;->this$0:Landroidx/lifecycle/testing/TestLifecycleOwner;

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Landroidx/lifecycle/testing/TestLifecycleOwner;->a(Landroidx/lifecycle/testing/TestLifecycleOwner;)Landroidx/lifecycle/LifecycleRegistry;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/lifecycle/testing/TestLifecycleOwner$handleLifecycleEvent$1;->$event:Landroidx/lifecycle/Lifecycle$Event;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroidx/lifecycle/LifecycleRegistry;->i(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 22
    .line 23
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 24
    return-object p1

    .line 25
    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 29
    .line 30
    .line 31
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    throw p1
.end method
