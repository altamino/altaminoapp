.class public final Landroidx/lifecycle/WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# instance fields
.field final synthetic $block:Le8/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $co:Lkotlinx/coroutines/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/o<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $state:Landroidx/lifecycle/Lifecycle$State;

.field final synthetic $this_suspendWithStateAtLeastUnchecked:Landroidx/lifecycle/Lifecycle;


# virtual methods
.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/Lifecycle$Event;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "source"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p1, "event"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->Companion:Landroidx/lifecycle/Lifecycle$Event$Companion;

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/lifecycle/WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1;->$state:Landroidx/lifecycle/Lifecycle$State;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle$Event$Companion;->c(Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$Event;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    if-ne p2, p1, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Landroidx/lifecycle/WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1;->$this_suspendWithStateAtLeastUnchecked:Landroidx/lifecycle/Lifecycle;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->d(Landroidx/lifecycle/LifecycleObserver;)V

    .line 26
    .line 27
    iget-object p1, p0, Landroidx/lifecycle/WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1;->$co:Lkotlinx/coroutines/o;

    .line 28
    .line 29
    iget-object p2, p0, Landroidx/lifecycle/WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1;->$block:Le8/a;

    .line 30
    .line 31
    :try_start_0
    sget-object v0, Lw7/v;->Companion:Lw7/v$a;

    .line 32
    .line 33
    .line 34
    invoke-interface {p2}, Le8/a;->invoke()Ljava/lang/Object;

    .line 35
    move-result-object p2

    .line 36
    .line 37
    .line 38
    invoke-static {p2}, Lw7/v;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p2

    .line 42
    .line 43
    sget-object v0, Lw7/v;->Companion:Lw7/v$a;

    .line 44
    .line 45
    .line 46
    invoke-static {p2}, Lw7/w;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 47
    move-result-object p2

    .line 48
    .line 49
    .line 50
    invoke-static {p2}, Lw7/v;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    move-result-object p2

    .line 52
    .line 53
    .line 54
    :goto_0
    invoke-interface {p1, p2}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    .line 55
    goto :goto_1

    .line 56
    .line 57
    :cond_0
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 58
    .line 59
    if-ne p2, p1, :cond_1

    .line 60
    .line 61
    iget-object p1, p0, Landroidx/lifecycle/WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1;->$this_suspendWithStateAtLeastUnchecked:Landroidx/lifecycle/Lifecycle;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->d(Landroidx/lifecycle/LifecycleObserver;)V

    .line 65
    .line 66
    iget-object p1, p0, Landroidx/lifecycle/WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1;->$co:Lkotlinx/coroutines/o;

    .line 67
    .line 68
    sget-object p2, Lw7/v;->Companion:Lw7/v$a;

    .line 69
    .line 70
    new-instance p2, Landroidx/lifecycle/LifecycleDestroyedException;

    .line 71
    .line 72
    .line 73
    invoke-direct {p2}, Landroidx/lifecycle/LifecycleDestroyedException;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-static {p2}, Lw7/w;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 77
    move-result-object p2

    .line 78
    .line 79
    .line 80
    invoke-static {p2}, Lw7/v;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    move-result-object p2

    .line 82
    .line 83
    .line 84
    invoke-interface {p1, p2}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    .line 85
    :cond_1
    :goto_1
    return-void
.end method
