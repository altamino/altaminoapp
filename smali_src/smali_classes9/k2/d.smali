.class public final Lk2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/datatransport/runtime/dagger/internal/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/datatransport/runtime/dagger/internal/b<",
        "Lk2/c;",
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
.method public constructor <init>(Lv7/a;Lv7/a;Lv7/a;Lv7/a;Lv7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv7/a<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lv7/a<",
            "Lg2/e;",
            ">;",
            "Lv7/a<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/x;",
            ">;",
            "Lv7/a<",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/d;",
            ">;",
            "Lv7/a<",
            "Ll2/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lk2/d;->executorProvider:Lv7/a;

    .line 6
    .line 7
    iput-object p2, p0, Lk2/d;->backendRegistryProvider:Lv7/a;

    .line 8
    .line 9
    iput-object p3, p0, Lk2/d;->workSchedulerProvider:Lv7/a;

    .line 10
    .line 11
    iput-object p4, p0, Lk2/d;->eventStoreProvider:Lv7/a;

    .line 12
    .line 13
    iput-object p5, p0, Lk2/d;->guardProvider:Lv7/a;

    .line 14
    return-void
.end method

.method public static a(Lv7/a;Lv7/a;Lv7/a;Lv7/a;Lv7/a;)Lk2/d;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv7/a<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lv7/a<",
            "Lg2/e;",
            ">;",
            "Lv7/a<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/x;",
            ">;",
            "Lv7/a<",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/d;",
            ">;",
            "Lv7/a<",
            "Ll2/b;",
            ">;)",
            "Lk2/d;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v6, Lk2/d;

    .line 3
    move-object v0, v6

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
    .line 11
    invoke-direct/range {v0 .. v5}, Lk2/d;-><init>(Lv7/a;Lv7/a;Lv7/a;Lv7/a;Lv7/a;)V

    .line 12
    return-object v6
.end method

.method public static c(Ljava/util/concurrent/Executor;Lg2/e;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/x;Lcom/google/android/datatransport/runtime/scheduling/persistence/d;Ll2/b;)Lk2/c;
    .locals 7

    .line 1
    .line 2
    new-instance v6, Lk2/c;

    .line 3
    move-object v0, v6

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
    .line 11
    invoke-direct/range {v0 .. v5}, Lk2/c;-><init>(Ljava/util/concurrent/Executor;Lg2/e;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/x;Lcom/google/android/datatransport/runtime/scheduling/persistence/d;Ll2/b;)V

    .line 12
    return-object v6
.end method


# virtual methods
.method public b()Lk2/c;
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lk2/d;->executorProvider:Lv7/a;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lv7/a;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Ljava/util/concurrent/Executor;

    .line 9
    .line 10
    iget-object v1, p0, Lk2/d;->backendRegistryProvider:Lv7/a;

    .line 11
    .line 12
    .line 13
    invoke-interface {v1}, Lv7/a;->get()Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    check-cast v1, Lg2/e;

    .line 17
    .line 18
    iget-object v2, p0, Lk2/d;->workSchedulerProvider:Lv7/a;

    .line 19
    .line 20
    .line 21
    invoke-interface {v2}, Lv7/a;->get()Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    check-cast v2, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/x;

    .line 25
    .line 26
    iget-object v3, p0, Lk2/d;->eventStoreProvider:Lv7/a;

    .line 27
    .line 28
    .line 29
    invoke-interface {v3}, Lv7/a;->get()Ljava/lang/Object;

    .line 30
    move-result-object v3

    .line 31
    .line 32
    check-cast v3, Lcom/google/android/datatransport/runtime/scheduling/persistence/d;

    .line 33
    .line 34
    iget-object v4, p0, Lk2/d;->guardProvider:Lv7/a;

    .line 35
    .line 36
    .line 37
    invoke-interface {v4}, Lv7/a;->get()Ljava/lang/Object;

    .line 38
    move-result-object v4

    .line 39
    .line 40
    check-cast v4, Ll2/b;

    .line 41
    .line 42
    .line 43
    invoke-static {v0, v1, v2, v3, v4}, Lk2/d;->c(Ljava/util/concurrent/Executor;Lg2/e;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/x;Lcom/google/android/datatransport/runtime/scheduling/persistence/d;Ll2/b;)Lk2/c;

    .line 44
    move-result-object v0

    .line 45
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lk2/d;->b()Lk2/c;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
