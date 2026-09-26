.class public final Lk2/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/datatransport/runtime/dagger/internal/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/datatransport/runtime/dagger/internal/b<",
        "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/x;",
        ">;"
    }
.end annotation


# instance fields
.field private final clockProvider:Lv7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv7/a<",
            "Lm2/a;",
            ">;"
        }
    .end annotation
.end field

.field private final configProvider:Lv7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv7/a<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/f;",
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


# direct methods
.method public constructor <init>(Lv7/a;Lv7/a;Lv7/a;Lv7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv7/a<",
            "Landroid/content/Context;",
            ">;",
            "Lv7/a<",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/d;",
            ">;",
            "Lv7/a<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/f;",
            ">;",
            "Lv7/a<",
            "Lm2/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lk2/i;->contextProvider:Lv7/a;

    .line 6
    .line 7
    iput-object p2, p0, Lk2/i;->eventStoreProvider:Lv7/a;

    .line 8
    .line 9
    iput-object p3, p0, Lk2/i;->configProvider:Lv7/a;

    .line 10
    .line 11
    iput-object p4, p0, Lk2/i;->clockProvider:Lv7/a;

    .line 12
    return-void
.end method

.method public static a(Lv7/a;Lv7/a;Lv7/a;Lv7/a;)Lk2/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv7/a<",
            "Landroid/content/Context;",
            ">;",
            "Lv7/a<",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/d;",
            ">;",
            "Lv7/a<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/f;",
            ">;",
            "Lv7/a<",
            "Lm2/a;",
            ">;)",
            "Lk2/i;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lk2/i;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p1, p2, p3}, Lk2/i;-><init>(Lv7/a;Lv7/a;Lv7/a;Lv7/a;)V

    .line 6
    return-object v0
.end method

.method public static c(Landroid/content/Context;Lcom/google/android/datatransport/runtime/scheduling/persistence/d;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/f;Lm2/a;)Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/x;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2, p3}, Lk2/h;->a(Landroid/content/Context;Lcom/google/android/datatransport/runtime/scheduling/persistence/d;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/f;Lm2/a;)Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/x;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 7
    .line 8
    .line 9
    invoke-static {p0, p1}, Lcom/google/android/datatransport/runtime/dagger/internal/e;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 11
    .line 12
    check-cast p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/x;

    .line 13
    return-object p0
.end method


# virtual methods
.method public b()Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/x;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lk2/i;->contextProvider:Lv7/a;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lv7/a;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/content/Context;

    .line 9
    .line 10
    iget-object v1, p0, Lk2/i;->eventStoreProvider:Lv7/a;

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
    iget-object v2, p0, Lk2/i;->configProvider:Lv7/a;

    .line 19
    .line 20
    .line 21
    invoke-interface {v2}, Lv7/a;->get()Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    check-cast v2, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/f;

    .line 25
    .line 26
    iget-object v3, p0, Lk2/i;->clockProvider:Lv7/a;

    .line 27
    .line 28
    .line 29
    invoke-interface {v3}, Lv7/a;->get()Ljava/lang/Object;

    .line 30
    move-result-object v3

    .line 31
    .line 32
    check-cast v3, Lm2/a;

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v1, v2, v3}, Lk2/i;->c(Landroid/content/Context;Lcom/google/android/datatransport/runtime/scheduling/persistence/d;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/f;Lm2/a;)Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/x;

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
    invoke-virtual {p0}, Lk2/i;->b()Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/x;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
