.class public Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final guard:Ll2/b;

.field private final scheduler:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/x;

.field private final store:Lcom/google/android/datatransport/runtime/scheduling/persistence/d;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/datatransport/runtime/scheduling/persistence/d;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/x;Ll2/b;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/v;->executor:Ljava/util/concurrent/Executor;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/v;->store:Lcom/google/android/datatransport/runtime/scheduling/persistence/d;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/v;->scheduler:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/x;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/v;->guard:Ll2/b;

    .line 12
    return-void
.end method

.method public static synthetic a(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/v;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/v;->d()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/v;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/v;->e()V

    return-void
.end method

.method private synthetic d()Ljava/lang/Object;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/v;->store:Lcom/google/android/datatransport/runtime/scheduling/persistence/d;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/d;->a0()Ljava/lang/Iterable;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    check-cast v1, Lcom/google/android/datatransport/runtime/p;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/v;->scheduler:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/x;

    .line 25
    const/4 v3, 0x1

    .line 26
    .line 27
    .line 28
    invoke-interface {v2, v1, v3}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/x;->b(Lcom/google/android/datatransport/runtime/p;I)V

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    return-object v0
.end method

.method private synthetic e()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/v;->guard:Ll2/b;

    .line 3
    .line 4
    new-instance v1, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/u;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/u;-><init>(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/v;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Ll2/b;->a(Ll2/b$a;)Ljava/lang/Object;

    .line 11
    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/v;->executor:Ljava/util/concurrent/Executor;

    .line 3
    .line 4
    new-instance v1, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/t;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/t;-><init>(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/v;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 11
    return-void
.end method
