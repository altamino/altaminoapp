.class public abstract Lcom/google/firebase/perf/application/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/perf/application/a$b;


# instance fields
.field private final appStateCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/firebase/perf/application/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private final appStateMonitor:Lcom/google/firebase/perf/application/a;

.field private currentAppState:Lcom/google/firebase/perf/v1/d;

.field private isRegisteredForAppState:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/firebase/perf/application/a;->b()Lcom/google/firebase/perf/application/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/perf/application/b;-><init>(Lcom/google/firebase/perf/application/a;)V

    return-void
.end method

.method protected constructor <init>(Lcom/google/firebase/perf/application/a;)V
    .locals 1
    .param p1    # Lcom/google/firebase/perf/application/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/perf/application/b;->isRegisteredForAppState:Z

    .line 3
    sget-object v0, Lcom/google/firebase/perf/v1/d;->APPLICATION_PROCESS_STATE_UNKNOWN:Lcom/google/firebase/perf/v1/d;

    iput-object v0, p0, Lcom/google/firebase/perf/application/b;->currentAppState:Lcom/google/firebase/perf/v1/d;

    iput-object p1, p0, Lcom/google/firebase/perf/application/b;->appStateMonitor:Lcom/google/firebase/perf/application/a;

    .line 4
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/firebase/perf/application/b;->appStateCallback:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public getAppState()Lcom/google/firebase/perf/v1/d;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/application/b;->currentAppState:Lcom/google/firebase/perf/v1/d;

    return-object v0
.end method

.method public getAppStateCallback()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/firebase/perf/application/a$b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/perf/application/b;->appStateCallback:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method protected incrementTsnsCount(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/perf/application/b;->appStateMonitor:Lcom/google/firebase/perf/application/a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/application/a;->e(I)V

    .line 6
    return-void
.end method

.method public onUpdateAppState(Lcom/google/firebase/perf/v1/d;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/perf/application/b;->currentAppState:Lcom/google/firebase/perf/v1/d;

    .line 3
    .line 4
    sget-object v1, Lcom/google/firebase/perf/v1/d;->APPLICATION_PROCESS_STATE_UNKNOWN:Lcom/google/firebase/perf/v1/d;

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/firebase/perf/application/b;->currentAppState:Lcom/google/firebase/perf/v1/d;

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    if-eq v0, p1, :cond_1

    .line 12
    .line 13
    if-eq p1, v1, :cond_1

    .line 14
    .line 15
    sget-object p1, Lcom/google/firebase/perf/v1/d;->FOREGROUND_BACKGROUND:Lcom/google/firebase/perf/v1/d;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/google/firebase/perf/application/b;->currentAppState:Lcom/google/firebase/perf/v1/d;

    .line 18
    :cond_1
    :goto_0
    return-void
.end method

.method protected registerForAppState()V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/firebase/perf/application/b;->isRegisteredForAppState:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/application/b;->appStateMonitor:Lcom/google/firebase/perf/application/a;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/firebase/perf/application/a;->a()Lcom/google/firebase/perf/v1/d;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iput-object v0, p0, Lcom/google/firebase/perf/application/b;->currentAppState:Lcom/google/firebase/perf/v1/d;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/firebase/perf/application/b;->appStateMonitor:Lcom/google/firebase/perf/application/a;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/google/firebase/perf/application/b;->appStateCallback:Ljava/lang/ref/WeakReference;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/application/a;->k(Ljava/lang/ref/WeakReference;)V

    .line 21
    const/4 v0, 0x1

    .line 22
    .line 23
    iput-boolean v0, p0, Lcom/google/firebase/perf/application/b;->isRegisteredForAppState:Z

    .line 24
    return-void
.end method

.method protected unregisterForAppState()V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/firebase/perf/application/b;->isRegisteredForAppState:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/application/b;->appStateMonitor:Lcom/google/firebase/perf/application/a;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/firebase/perf/application/b;->appStateCallback:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/application/a;->p(Ljava/lang/ref/WeakReference;)V

    .line 13
    const/4 v0, 0x0

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/google/firebase/perf/application/b;->isRegisteredForAppState:Z

    .line 16
    return-void
.end method
