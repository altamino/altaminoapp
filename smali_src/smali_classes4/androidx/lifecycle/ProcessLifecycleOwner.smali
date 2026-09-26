.class public final Landroidx/lifecycle/ProcessLifecycleOwner;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleOwner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/ProcessLifecycleOwner$Api29Impl;,
        Landroidx/lifecycle/ProcessLifecycleOwner$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/lifecycle/ProcessLifecycleOwner$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TIMEOUT_MS:J = 0x2bcL

.field private static final newInstance:Landroidx/lifecycle/ProcessLifecycleOwner;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final delayedPauseRunnable:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private handler:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final initializationListener:Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private pauseSent:Z

.field private final registry:Landroidx/lifecycle/LifecycleRegistry;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private resumedCounter:I

.field private startedCounter:I

.field private stopSent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/lifecycle/ProcessLifecycleOwner$Companion;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroidx/lifecycle/ProcessLifecycleOwner$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Landroidx/lifecycle/ProcessLifecycleOwner;->Companion:Landroidx/lifecycle/ProcessLifecycleOwner$Companion;

    .line 9
    .line 10
    new-instance v0, Landroidx/lifecycle/ProcessLifecycleOwner;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0}, Landroidx/lifecycle/ProcessLifecycleOwner;-><init>()V

    .line 14
    .line 15
    sput-object v0, Landroidx/lifecycle/ProcessLifecycleOwner;->newInstance:Landroidx/lifecycle/ProcessLifecycleOwner;

    .line 16
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput-boolean v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->pauseSent:Z

    .line 7
    .line 8
    iput-boolean v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->stopSent:Z

    .line 9
    .line 10
    new-instance v0, Landroidx/lifecycle/LifecycleRegistry;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, p0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    .line 14
    .line 15
    iput-object v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->registry:Landroidx/lifecycle/LifecycleRegistry;

    .line 16
    .line 17
    new-instance v0, Landroidx/lifecycle/g;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, p0}, Landroidx/lifecycle/g;-><init>(Landroidx/lifecycle/ProcessLifecycleOwner;)V

    .line 21
    .line 22
    iput-object v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->delayedPauseRunnable:Ljava/lang/Runnable;

    .line 23
    .line 24
    new-instance v0, Landroidx/lifecycle/ProcessLifecycleOwner$initializationListener$1;

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, p0}, Landroidx/lifecycle/ProcessLifecycleOwner$initializationListener$1;-><init>(Landroidx/lifecycle/ProcessLifecycleOwner;)V

    .line 28
    .line 29
    iput-object v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->initializationListener:Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;

    .line 30
    return-void
.end method

.method public static synthetic a(Landroidx/lifecycle/ProcessLifecycleOwner;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/ProcessLifecycleOwner;->i(Landroidx/lifecycle/ProcessLifecycleOwner;)V

    return-void
.end method

.method public static final synthetic b(Landroidx/lifecycle/ProcessLifecycleOwner;)Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->initializationListener:Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;

    .line 3
    return-object p0
.end method

.method public static final synthetic c()Landroidx/lifecycle/ProcessLifecycleOwner;
    .locals 1

    .line 1
    sget-object v0, Landroidx/lifecycle/ProcessLifecycleOwner;->newInstance:Landroidx/lifecycle/ProcessLifecycleOwner;

    return-object v0
.end method

.method private static final i(Landroidx/lifecycle/ProcessLifecycleOwner;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/lifecycle/ProcessLifecycleOwner;->j()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/lifecycle/ProcessLifecycleOwner;->k()V

    .line 12
    return-void
.end method

.method public static final l()Landroidx/lifecycle/LifecycleOwner;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/lifecycle/ProcessLifecycleOwner;->Companion:Landroidx/lifecycle/ProcessLifecycleOwner$Companion;

    invoke-virtual {v0}, Landroidx/lifecycle/ProcessLifecycleOwner$Companion;->a()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final d()V
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->resumedCounter:I

    .line 3
    .line 4
    add-int/lit8 v0, v0, -0x1

    .line 5
    .line 6
    iput v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->resumedCounter:I

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->handler:Landroid/os/Handler;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->delayedPauseRunnable:Ljava/lang/Runnable;

    .line 16
    .line 17
    const-wide/16 v2, 0x2bc

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 21
    :cond_0
    return-void
.end method

.method public final e()V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->resumedCounter:I

    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    .line 6
    iput v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->resumedCounter:I

    .line 7
    .line 8
    if-ne v0, v1, :cond_1

    .line 9
    .line 10
    iget-boolean v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->pauseSent:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->registry:Landroidx/lifecycle/LifecycleRegistry;

    .line 15
    .line 16
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->i(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 20
    const/4 v0, 0x0

    .line 21
    .line 22
    iput-boolean v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->pauseSent:Z

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->handler:Landroid/os/Handler;

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 29
    .line 30
    iget-object v1, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->delayedPauseRunnable:Ljava/lang/Runnable;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 34
    :cond_1
    :goto_0
    return-void
.end method

.method public final f()V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->startedCounter:I

    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    .line 6
    iput v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->startedCounter:I

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget-boolean v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->stopSent:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->registry:Landroidx/lifecycle/LifecycleRegistry;

    .line 15
    .line 16
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->i(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 20
    const/4 v0, 0x0

    .line 21
    .line 22
    iput-boolean v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->stopSent:Z

    .line 23
    :cond_0
    return-void
.end method

.method public final g()V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->startedCounter:I

    .line 3
    .line 4
    add-int/lit8 v0, v0, -0x1

    .line 5
    .line 6
    iput v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->startedCounter:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/lifecycle/ProcessLifecycleOwner;->k()V

    .line 10
    return-void
.end method

.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->registry:Landroidx/lifecycle/LifecycleRegistry;

    return-object v0
.end method

.method public final h(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "context"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Landroid/os/Handler;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 11
    .line 12
    iput-object v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->handler:Landroid/os/Handler;

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->registry:Landroidx/lifecycle/LifecycleRegistry;

    .line 15
    .line 16
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->i(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    const-string v0, "null cannot be cast to non-null type android.app.Application"

    .line 26
    .line 27
    .line 28
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    check-cast p1, Landroid/app/Application;

    .line 31
    .line 32
    new-instance v0, Landroidx/lifecycle/ProcessLifecycleOwner$attach$1;

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, p0}, Landroidx/lifecycle/ProcessLifecycleOwner$attach$1;-><init>(Landroidx/lifecycle/ProcessLifecycleOwner;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 39
    return-void
.end method

.method public final j()V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->resumedCounter:I

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    .line 7
    iput-boolean v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->pauseSent:Z

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->registry:Landroidx/lifecycle/LifecycleRegistry;

    .line 10
    .line 11
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->i(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 15
    :cond_0
    return-void
.end method

.method public final k()V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->startedCounter:I

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-boolean v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->pauseSent:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->registry:Landroidx/lifecycle/LifecycleRegistry;

    .line 11
    .line 12
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->i(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 16
    const/4 v0, 0x1

    .line 17
    .line 18
    iput-boolean v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->stopSent:Z

    .line 19
    :cond_0
    return-void
.end method
