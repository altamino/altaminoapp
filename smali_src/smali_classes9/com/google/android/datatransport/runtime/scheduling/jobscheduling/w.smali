.class public final Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/datatransport/runtime/dagger/internal/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/datatransport/runtime/dagger/internal/b<",
        "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/v;",
        ">;"
    }
.end annotation


# instance fields
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

.field private final schedulerProvider:Lv7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv7/a<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/x;",
            ">;"
        }
    .end annotation
.end field

.field private final storeProvider:Lv7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv7/a<",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lv7/a;Lv7/a;Lv7/a;Lv7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv7/a<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lv7/a<",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/d;",
            ">;",
            "Lv7/a<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/x;",
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
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/w;->executorProvider:Lv7/a;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/w;->storeProvider:Lv7/a;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/w;->schedulerProvider:Lv7/a;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/w;->guardProvider:Lv7/a;

    .line 12
    return-void
.end method

.method public static a(Lv7/a;Lv7/a;Lv7/a;Lv7/a;)Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv7/a<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lv7/a<",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/d;",
            ">;",
            "Lv7/a<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/x;",
            ">;",
            "Lv7/a<",
            "Ll2/b;",
            ">;)",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/w;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/w;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/w;-><init>(Lv7/a;Lv7/a;Lv7/a;Lv7/a;)V

    .line 6
    return-object v0
.end method

.method public static c(Ljava/util/concurrent/Executor;Lcom/google/android/datatransport/runtime/scheduling/persistence/d;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/x;Ll2/b;)Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/v;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/v;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/v;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/datatransport/runtime/scheduling/persistence/d;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/x;Ll2/b;)V

    .line 6
    return-object v0
.end method


# virtual methods
.method public b()Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/v;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/w;->executorProvider:Lv7/a;

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
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/w;->storeProvider:Lv7/a;

    .line 11
    .line 12
    .line 13
    invoke-interface {v1}, Lv7/a;->get()Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    check-cast v1, Lcom/google/android/datatransport/runtime/scheduling/persistence/d;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/w;->schedulerProvider:Lv7/a;

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
    iget-object v3, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/w;->guardProvider:Lv7/a;

    .line 27
    .line 28
    .line 29
    invoke-interface {v3}, Lv7/a;->get()Ljava/lang/Object;

    .line 30
    move-result-object v3

    .line 31
    .line 32
    check-cast v3, Ll2/b;

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/w;->c(Ljava/util/concurrent/Executor;Lcom/google/android/datatransport/runtime/scheduling/persistence/d;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/x;Ll2/b;)Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/v;

    .line 36
    move-result-object v0

    .line 37
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/w;->b()Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/v;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
