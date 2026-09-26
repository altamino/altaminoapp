.class public Lcom/google/firebase/perf/application/c;
.super Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;
.source "SourceFile"


# static fields
.field private static final logger:Ly4/a;


# instance fields
.field private final activityFramesRecorder:Lcom/google/firebase/perf/application/d;

.field private final appStateMonitor:Lcom/google/firebase/perf/application/a;

.field private final clock:Lcom/google/firebase/perf/util/a;

.field private final fragmentToTraceMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroidx/fragment/app/Fragment;",
            "Lcom/google/firebase/perf/metrics/Trace;",
            ">;"
        }
    .end annotation
.end field

.field private final transportManager:Lcom/google/firebase/perf/transport/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ly4/a;->e()Ly4/a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sput-object v0, Lcom/google/firebase/perf/application/c;->logger:Ly4/a;

    .line 7
    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/perf/util/a;Lcom/google/firebase/perf/transport/k;Lcom/google/firebase/perf/application/a;Lcom/google/firebase/perf/application/d;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/WeakHashMap;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/firebase/perf/application/c;->fragmentToTraceMap:Ljava/util/WeakHashMap;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/google/firebase/perf/application/c;->clock:Lcom/google/firebase/perf/util/a;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/google/firebase/perf/application/c;->transportManager:Lcom/google/firebase/perf/transport/k;

    .line 15
    .line 16
    iput-object p3, p0, Lcom/google/firebase/perf/application/c;->appStateMonitor:Lcom/google/firebase/perf/application/a;

    .line 17
    .line 18
    iput-object p4, p0, Lcom/google/firebase/perf/application/c;->activityFramesRecorder:Lcom/google/firebase/perf/application/d;

    .line 19
    return-void
.end method


# virtual methods
.method public a(Landroidx/fragment/app/Fragment;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "_st_"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method

.method public onFragmentPaused(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V
    .locals 5
    .param p1    # Landroidx/fragment/app/FragmentManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentPaused(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    .line 4
    .line 5
    sget-object p1, Lcom/google/firebase/perf/application/c;->logger:Ly4/a;

    .line 6
    const/4 v0, 0x1

    .line 7
    .line 8
    new-array v1, v0, [Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 16
    move-result-object v2

    .line 17
    const/4 v3, 0x0

    .line 18
    .line 19
    aput-object v2, v1, v3

    .line 20
    .line 21
    const-string v2, "FragmentMonitor %s.onFragmentPaused "

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v2, v1}, Ly4/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    .line 26
    iget-object v1, p0, Lcom/google/firebase/perf/application/c;->fragmentToTraceMap:Ljava/util/WeakHashMap;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p2}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 30
    move-result v1

    .line 31
    .line 32
    if-nez v1, :cond_0

    .line 33
    .line 34
    new-array v0, v0, [Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    move-result-object p2

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 42
    move-result-object p2

    .line 43
    .line 44
    aput-object p2, v0, v3

    .line 45
    .line 46
    const-string p2, "FragmentMonitor: missed a fragment trace from %s"

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p2, v0}, Ly4/a;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    return-void

    .line 51
    .line 52
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/perf/application/c;->fragmentToTraceMap:Ljava/util/WeakHashMap;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    move-result-object v1

    .line 57
    .line 58
    check-cast v1, Lcom/google/firebase/perf/metrics/Trace;

    .line 59
    .line 60
    iget-object v2, p0, Lcom/google/firebase/perf/application/c;->fragmentToTraceMap:Ljava/util/WeakHashMap;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, p2}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    iget-object v2, p0, Lcom/google/firebase/perf/application/c;->activityFramesRecorder:Lcom/google/firebase/perf/application/d;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, p2}, Lcom/google/firebase/perf/application/d;->f(Landroidx/fragment/app/Fragment;)Lcom/google/firebase/perf/util/g;

    .line 69
    move-result-object v2

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Lcom/google/firebase/perf/util/g;->d()Z

    .line 73
    move-result v4

    .line 74
    .line 75
    if-nez v4, :cond_1

    .line 76
    .line 77
    new-array v0, v0, [Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    move-result-object p2

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 85
    move-result-object p2

    .line 86
    .line 87
    aput-object p2, v0, v3

    .line 88
    .line 89
    const-string p2, "onFragmentPaused: recorder failed to trace %s"

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, p2, v0}, Ly4/a;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    return-void

    .line 94
    .line 95
    .line 96
    :cond_1
    invoke-virtual {v2}, Lcom/google/firebase/perf/util/g;->c()Ljava/lang/Object;

    .line 97
    move-result-object p1

    .line 98
    .line 99
    check-cast p1, Lcom/google/firebase/perf/metrics/g$a;

    .line 100
    .line 101
    .line 102
    invoke-static {v1, p1}, Lcom/google/firebase/perf/util/j;->a(Lcom/google/firebase/perf/metrics/Trace;Lcom/google/firebase/perf/metrics/g$a;)Lcom/google/firebase/perf/metrics/Trace;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Lcom/google/firebase/perf/metrics/Trace;->stop()V

    .line 106
    return-void
.end method

.method public onFragmentResumed(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V
    .locals 4
    .param p1    # Landroidx/fragment/app/FragmentManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentResumed(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    .line 4
    .line 5
    sget-object p1, Lcom/google/firebase/perf/application/c;->logger:Ly4/a;

    .line 6
    const/4 v0, 0x1

    .line 7
    .line 8
    new-array v0, v0, [Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x0

    .line 18
    .line 19
    aput-object v1, v0, v2

    .line 20
    .line 21
    const-string v1, "FragmentMonitor %s.onFragmentResumed"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v1, v0}, Ly4/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    .line 26
    new-instance p1, Lcom/google/firebase/perf/metrics/Trace;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p2}, Lcom/google/firebase/perf/application/c;->a(Landroidx/fragment/app/Fragment;)Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    iget-object v1, p0, Lcom/google/firebase/perf/application/c;->transportManager:Lcom/google/firebase/perf/transport/k;

    .line 33
    .line 34
    iget-object v2, p0, Lcom/google/firebase/perf/application/c;->clock:Lcom/google/firebase/perf/util/a;

    .line 35
    .line 36
    iget-object v3, p0, Lcom/google/firebase/perf/application/c;->appStateMonitor:Lcom/google/firebase/perf/application/a;

    .line 37
    .line 38
    .line 39
    invoke-direct {p1, v0, v1, v2, v3}, Lcom/google/firebase/perf/metrics/Trace;-><init>(Ljava/lang/String;Lcom/google/firebase/perf/transport/k;Lcom/google/firebase/perf/util/a;Lcom/google/firebase/perf/application/a;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/google/firebase/perf/metrics/Trace;->start()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    if-nez v0, :cond_0

    .line 49
    .line 50
    const-string v0, "No parent"

    .line 51
    goto :goto_0

    .line 52
    .line 53
    .line 54
    :cond_0
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    :goto_0
    const-string v1, "Parent_fragment"

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v1, v0}, Lcom/google/firebase/perf/metrics/Trace;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 72
    move-result-object v0

    .line 73
    .line 74
    if-eqz v0, :cond_1

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 78
    move-result-object v0

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    move-result-object v0

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 86
    move-result-object v0

    .line 87
    .line 88
    const-string v1, "Hosting_activity"

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v1, v0}, Lcom/google/firebase/perf/metrics/Trace;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/perf/application/c;->fragmentToTraceMap:Ljava/util/WeakHashMap;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, p2, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    iget-object p1, p0, Lcom/google/firebase/perf/application/c;->activityFramesRecorder:Lcom/google/firebase/perf/application/d;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, p2}, Lcom/google/firebase/perf/application/d;->d(Landroidx/fragment/app/Fragment;)V

    .line 102
    return-void
.end method
