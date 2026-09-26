.class public final Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/datatransport/runtime/dagger/internal/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/datatransport/runtime/dagger/internal/b<",
        "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/r;",
        ">;"
    }
.end annotation


# instance fields
.field private final backendRegistryProvider:Lv7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv7/a<",
            "Lg2/e;",
            ">;"
        }
    .end annotation
.end field

.field private final clientHealthMetricsStoreProvider:Lv7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv7/a<",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/c;",
            ">;"
        }
    .end annotation
.end field

.field private final clockProvider:Lv7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv7/a<",
            "Lm2/a;",
            ">;"
        }
    .end annotation
.end field

.field private final contextProvider:Lv7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv7/a<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final eventStoreProvider:Lv7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv7/a<",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/d;",
            ">;"
        }
    .end annotation
.end field

.field private final executorProvider:Lv7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv7/a<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final guardProvider:Lv7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv7/a<",
            "Ll2/b;",
            ">;"
        }
    .end annotation
.end field

.field private final uptimeClockProvider:Lv7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv7/a<",
            "Lm2/a;",
            ">;"
        }
    .end annotation
.end field

.field private final workSchedulerProvider:Lv7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv7/a<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/x;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lv7/a;Lv7/a;Lv7/a;Lv7/a;Lv7/a;Lv7/a;Lv7/a;Lv7/a;Lv7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv7/a<",
            "Landroid/content/Context;",
            ">;",
            "Lv7/a<",
            "Lg2/e;",
            ">;",
            "Lv7/a<",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/d;",
            ">;",
            "Lv7/a<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/x;",
            ">;",
            "Lv7/a<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lv7/a<",
            "Ll2/b;",
            ">;",
            "Lv7/a<",
            "Lm2/a;",
            ">;",
            "Lv7/a<",
            "Lm2/a;",
            ">;",
            "Lv7/a<",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/s;->contextProvider:Lv7/a;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/s;->backendRegistryProvider:Lv7/a;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/s;->eventStoreProvider:Lv7/a;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/s;->workSchedulerProvider:Lv7/a;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/s;->executorProvider:Lv7/a;

    .line 14
    .line 15
    iput-object p6, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/s;->guardProvider:Lv7/a;

    .line 16
    .line 17
    iput-object p7, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/s;->clockProvider:Lv7/a;

    .line 18
    .line 19
    iput-object p8, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/s;->uptimeClockProvider:Lv7/a;

    .line 20
    .line 21
    iput-object p9, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/s;->clientHealthMetricsStoreProvider:Lv7/a;

    .line 22
    return-void
.end method

.method public static a(Lv7/a;Lv7/a;Lv7/a;Lv7/a;Lv7/a;Lv7/a;Lv7/a;Lv7/a;Lv7/a;)Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/s;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv7/a<",
            "Landroid/content/Context;",
            ">;",
            "Lv7/a<",
            "Lg2/e;",
            ">;",
            "Lv7/a<",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/d;",
            ">;",
            "Lv7/a<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/x;",
            ">;",
            "Lv7/a<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lv7/a<",
            "Ll2/b;",
            ">;",
            "Lv7/a<",
            "Lm2/a;",
            ">;",
            "Lv7/a<",
            "Lm2/a;",
            ">;",
            "Lv7/a<",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/c;",
            ">;)",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/s;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v10, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/s;

    .line 3
    move-object v0, v10

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move-object v3, p2

    .line 7
    move-object v4, p3

    .line 8
    move-object v5, p4

    .line 9
    .line 10
    move-object/from16 v6, p5

    .line 11
    .line 12
    move-object/from16 v7, p6

    .line 13
    .line 14
    move-object/from16 v8, p7

    .line 15
    .line 16
    move-object/from16 v9, p8

    .line 17
    .line 18
    .line 19
    invoke-direct/range {v0 .. v9}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/s;-><init>(Lv7/a;Lv7/a;Lv7/a;Lv7/a;Lv7/a;Lv7/a;Lv7/a;Lv7/a;Lv7/a;)V

    .line 20
    return-object v10
.end method

.method public static c(Landroid/content/Context;Lg2/e;Lcom/google/android/datatransport/runtime/scheduling/persistence/d;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/x;Ljava/util/concurrent/Executor;Ll2/b;Lm2/a;Lm2/a;Lcom/google/android/datatransport/runtime/scheduling/persistence/c;)Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/r;
    .locals 11

    .line 1
    .line 2
    new-instance v10, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/r;

    .line 3
    move-object v0, v10

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move-object v3, p2

    .line 7
    move-object v4, p3

    .line 8
    move-object v5, p4

    .line 9
    .line 10
    move-object/from16 v6, p5

    .line 11
    .line 12
    move-object/from16 v7, p6

    .line 13
    .line 14
    move-object/from16 v8, p7

    .line 15
    .line 16
    move-object/from16 v9, p8

    .line 17
    .line 18
    .line 19
    invoke-direct/range {v0 .. v9}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/r;-><init>(Landroid/content/Context;Lg2/e;Lcom/google/android/datatransport/runtime/scheduling/persistence/d;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/x;Ljava/util/concurrent/Executor;Ll2/b;Lm2/a;Lm2/a;Lcom/google/android/datatransport/runtime/scheduling/persistence/c;)V

    .line 20
    return-object v10
.end method


# virtual methods
.method public b()Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/r;
    .locals 10

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/s;->contextProvider:Lv7/a;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lv7/a;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    move-object v1, v0

    .line 8
    .line 9
    check-cast v1, Landroid/content/Context;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/s;->backendRegistryProvider:Lv7/a;

    .line 12
    .line 13
    .line 14
    invoke-interface {v0}, Lv7/a;->get()Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    move-object v2, v0

    .line 17
    .line 18
    check-cast v2, Lg2/e;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/s;->eventStoreProvider:Lv7/a;

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Lv7/a;->get()Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 25
    move-object v3, v0

    .line 26
    .line 27
    check-cast v3, Lcom/google/android/datatransport/runtime/scheduling/persistence/d;

    .line 28
    .line 29
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/s;->workSchedulerProvider:Lv7/a;

    .line 30
    .line 31
    .line 32
    invoke-interface {v0}, Lv7/a;->get()Ljava/lang/Object;

    .line 33
    move-result-object v0

    .line 34
    move-object v4, v0

    .line 35
    .line 36
    check-cast v4, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/x;

    .line 37
    .line 38
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/s;->executorProvider:Lv7/a;

    .line 39
    .line 40
    .line 41
    invoke-interface {v0}, Lv7/a;->get()Ljava/lang/Object;

    .line 42
    move-result-object v0

    .line 43
    move-object v5, v0

    .line 44
    .line 45
    check-cast v5, Ljava/util/concurrent/Executor;

    .line 46
    .line 47
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/s;->guardProvider:Lv7/a;

    .line 48
    .line 49
    .line 50
    invoke-interface {v0}, Lv7/a;->get()Ljava/lang/Object;

    .line 51
    move-result-object v0

    .line 52
    move-object v6, v0

    .line 53
    .line 54
    check-cast v6, Ll2/b;

    .line 55
    .line 56
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/s;->clockProvider:Lv7/a;

    .line 57
    .line 58
    .line 59
    invoke-interface {v0}, Lv7/a;->get()Ljava/lang/Object;

    .line 60
    move-result-object v0

    .line 61
    move-object v7, v0

    .line 62
    .line 63
    check-cast v7, Lm2/a;

    .line 64
    .line 65
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/s;->uptimeClockProvider:Lv7/a;

    .line 66
    .line 67
    .line 68
    invoke-interface {v0}, Lv7/a;->get()Ljava/lang/Object;

    .line 69
    move-result-object v0

    .line 70
    move-object v8, v0

    .line 71
    .line 72
    check-cast v8, Lm2/a;

    .line 73
    .line 74
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/s;->clientHealthMetricsStoreProvider:Lv7/a;

    .line 75
    .line 76
    .line 77
    invoke-interface {v0}, Lv7/a;->get()Ljava/lang/Object;

    .line 78
    move-result-object v0

    .line 79
    move-object v9, v0

    .line 80
    .line 81
    check-cast v9, Lcom/google/android/datatransport/runtime/scheduling/persistence/c;

    .line 82
    .line 83
    .line 84
    invoke-static/range {v1 .. v9}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/s;->c(Landroid/content/Context;Lg2/e;Lcom/google/android/datatransport/runtime/scheduling/persistence/d;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/x;Ljava/util/concurrent/Executor;Ll2/b;Lm2/a;Lm2/a;Lcom/google/android/datatransport/runtime/scheduling/persistence/c;)Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/r;

    .line 85
    move-result-object v0

    .line 86
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/s;->b()Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/r;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
