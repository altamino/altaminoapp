.class public final Lcom/google/android/datatransport/runtime/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/datatransport/runtime/dagger/internal/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/datatransport/runtime/dagger/internal/b<",
        "Lcom/google/android/datatransport/runtime/u;",
        ">;"
    }
.end annotation


# instance fields
.field private final eventClockProvider:Lv7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv7/a<",
            "Lm2/a;",
            ">;"
        }
    .end annotation
.end field

.field private final initializerProvider:Lv7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv7/a<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/v;",
            ">;"
        }
    .end annotation
.end field

.field private final schedulerProvider:Lv7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv7/a<",
            "Lk2/e;",
            ">;"
        }
    .end annotation
.end field

.field private final uploaderProvider:Lv7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv7/a<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/r;",
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


# direct methods
.method public constructor <init>(Lv7/a;Lv7/a;Lv7/a;Lv7/a;Lv7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv7/a<",
            "Lm2/a;",
            ">;",
            "Lv7/a<",
            "Lm2/a;",
            ">;",
            "Lv7/a<",
            "Lk2/e;",
            ">;",
            "Lv7/a<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/r;",
            ">;",
            "Lv7/a<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/v;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/w;->eventClockProvider:Lv7/a;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/google/android/datatransport/runtime/w;->uptimeClockProvider:Lv7/a;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/google/android/datatransport/runtime/w;->schedulerProvider:Lv7/a;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/google/android/datatransport/runtime/w;->uploaderProvider:Lv7/a;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/google/android/datatransport/runtime/w;->initializerProvider:Lv7/a;

    .line 14
    return-void
.end method

.method public static a(Lv7/a;Lv7/a;Lv7/a;Lv7/a;Lv7/a;)Lcom/google/android/datatransport/runtime/w;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv7/a<",
            "Lm2/a;",
            ">;",
            "Lv7/a<",
            "Lm2/a;",
            ">;",
            "Lv7/a<",
            "Lk2/e;",
            ">;",
            "Lv7/a<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/r;",
            ">;",
            "Lv7/a<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/v;",
            ">;)",
            "Lcom/google/android/datatransport/runtime/w;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v6, Lcom/google/android/datatransport/runtime/w;

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
    invoke-direct/range {v0 .. v5}, Lcom/google/android/datatransport/runtime/w;-><init>(Lv7/a;Lv7/a;Lv7/a;Lv7/a;Lv7/a;)V

    .line 12
    return-object v6
.end method

.method public static c(Lm2/a;Lm2/a;Lk2/e;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/r;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/v;)Lcom/google/android/datatransport/runtime/u;
    .locals 7

    .line 1
    .line 2
    new-instance v6, Lcom/google/android/datatransport/runtime/u;

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
    invoke-direct/range {v0 .. v5}, Lcom/google/android/datatransport/runtime/u;-><init>(Lm2/a;Lm2/a;Lk2/e;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/r;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/v;)V

    .line 12
    return-object v6
.end method


# virtual methods
.method public b()Lcom/google/android/datatransport/runtime/u;
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/w;->eventClockProvider:Lv7/a;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lv7/a;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lm2/a;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/w;->uptimeClockProvider:Lv7/a;

    .line 11
    .line 12
    .line 13
    invoke-interface {v1}, Lv7/a;->get()Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    check-cast v1, Lm2/a;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/google/android/datatransport/runtime/w;->schedulerProvider:Lv7/a;

    .line 19
    .line 20
    .line 21
    invoke-interface {v2}, Lv7/a;->get()Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    check-cast v2, Lk2/e;

    .line 25
    .line 26
    iget-object v3, p0, Lcom/google/android/datatransport/runtime/w;->uploaderProvider:Lv7/a;

    .line 27
    .line 28
    .line 29
    invoke-interface {v3}, Lv7/a;->get()Ljava/lang/Object;

    .line 30
    move-result-object v3

    .line 31
    .line 32
    check-cast v3, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/r;

    .line 33
    .line 34
    iget-object v4, p0, Lcom/google/android/datatransport/runtime/w;->initializerProvider:Lv7/a;

    .line 35
    .line 36
    .line 37
    invoke-interface {v4}, Lv7/a;->get()Ljava/lang/Object;

    .line 38
    move-result-object v4

    .line 39
    .line 40
    check-cast v4, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/v;

    .line 41
    .line 42
    .line 43
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/datatransport/runtime/w;->c(Lm2/a;Lm2/a;Lk2/e;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/r;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/v;)Lcom/google/android/datatransport/runtime/u;

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
    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/w;->b()Lcom/google/android/datatransport/runtime/u;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
