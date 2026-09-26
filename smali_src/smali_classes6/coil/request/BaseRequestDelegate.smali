.class public final Lcoil/request/BaseRequestDelegate;
.super Lcoil/request/RequestDelegate;
.source "SourceFile"


# instance fields
.field private final job:Lkotlinx/coroutines/b2;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final lifecycle:Landroidx/lifecycle/Lifecycle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/lifecycle/Lifecycle;Lkotlinx/coroutines/b2;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/Lifecycle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlinx/coroutines/b2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcoil/request/RequestDelegate;-><init>(Lkotlin/jvm/internal/k;)V

    .line 5
    .line 6
    iput-object p1, p0, Lcoil/request/BaseRequestDelegate;->lifecycle:Landroidx/lifecycle/Lifecycle;

    .line 7
    .line 8
    iput-object p2, p0, Lcoil/request/BaseRequestDelegate;->job:Lkotlinx/coroutines/b2;

    .line 9
    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcoil/request/BaseRequestDelegate;->lifecycle:Landroidx/lifecycle/Lifecycle;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->d(Landroidx/lifecycle/LifecycleObserver;)V

    .line 6
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcoil/request/BaseRequestDelegate;->lifecycle:Landroidx/lifecycle/Lifecycle;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/LifecycleObserver;)V

    .line 6
    return-void
.end method

.method public d()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcoil/request/BaseRequestDelegate;->job:Lkotlinx/coroutines/b2;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/b2$a;->a(Lkotlinx/coroutines/b2;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 8
    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcoil/request/BaseRequestDelegate;->d()V

    .line 4
    return-void
.end method
