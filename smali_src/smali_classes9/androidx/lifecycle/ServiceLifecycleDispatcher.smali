.class public Landroidx/lifecycle/ServiceLifecycleDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;
    }
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private lastDispatchRunnable:Landroidx/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final registry:Landroidx/lifecycle/LifecycleRegistry;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "provider"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    new-instance v0, Landroidx/lifecycle/LifecycleRegistry;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, p1}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    .line 14
    .line 15
    iput-object v0, p0, Landroidx/lifecycle/ServiceLifecycleDispatcher;->registry:Landroidx/lifecycle/LifecycleRegistry;

    .line 16
    .line 17
    new-instance p1, Landroid/os/Handler;

    .line 18
    .line 19
    .line 20
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 21
    .line 22
    iput-object p1, p0, Landroidx/lifecycle/ServiceLifecycleDispatcher;->handler:Landroid/os/Handler;

    .line 23
    return-void
.end method

.method private final f(Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/lifecycle/ServiceLifecycleDispatcher;->lastDispatchRunnable:Landroidx/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;->run()V

    .line 8
    .line 9
    :cond_0
    new-instance v0, Landroidx/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/lifecycle/ServiceLifecycleDispatcher;->registry:Landroidx/lifecycle/LifecycleRegistry;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1, p1}, Landroidx/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;-><init>(Landroidx/lifecycle/LifecycleRegistry;Landroidx/lifecycle/Lifecycle$Event;)V

    .line 15
    .line 16
    iput-object v0, p0, Landroidx/lifecycle/ServiceLifecycleDispatcher;->lastDispatchRunnable:Landroidx/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;

    .line 17
    .line 18
    iget-object p1, p0, Landroidx/lifecycle/ServiceLifecycleDispatcher;->handler:Landroid/os/Handler;

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 25
    return-void
.end method


# virtual methods
.method public a()Landroidx/lifecycle/Lifecycle;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/ServiceLifecycleDispatcher;->registry:Landroidx/lifecycle/LifecycleRegistry;

    return-object v0
.end method

.method public b()V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Landroidx/lifecycle/ServiceLifecycleDispatcher;->f(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 6
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Landroidx/lifecycle/ServiceLifecycleDispatcher;->f(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 6
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Landroidx/lifecycle/ServiceLifecycleDispatcher;->f(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 6
    .line 7
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0}, Landroidx/lifecycle/ServiceLifecycleDispatcher;->f(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 11
    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Landroidx/lifecycle/ServiceLifecycleDispatcher;->f(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 6
    return-void
.end method
