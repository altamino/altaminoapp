.class public Lcom/google/firebase/crashlytics/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final analyticsConnectorDeferred:Lo4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo4/a<",
            "Lcom/google/firebase/analytics/connector/a;",
            ">;"
        }
    .end annotation
.end field

.field private volatile analyticsEventLogger:Lcom/google/firebase/crashlytics/internal/analytics/a;

.field private final breadcrumbHandlerList:Ljava/util/List;
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb4/a;",
            ">;"
        }
    .end annotation
.end field

.field private volatile breadcrumbSource:Lb4/b;


# direct methods
.method public constructor <init>(Lo4/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo4/a<",
            "Lcom/google/firebase/analytics/connector/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lb4/c;

    invoke-direct {v0}, Lb4/c;-><init>()V

    new-instance v1, Lcom/google/firebase/crashlytics/internal/analytics/f;

    invoke-direct {v1}, Lcom/google/firebase/crashlytics/internal/analytics/f;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/google/firebase/crashlytics/d;-><init>(Lo4/a;Lb4/b;Lcom/google/firebase/crashlytics/internal/analytics/a;)V

    return-void
.end method

.method public constructor <init>(Lo4/a;Lb4/b;Lcom/google/firebase/crashlytics/internal/analytics/a;)V
    .locals 0
    .param p2    # Lb4/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/firebase/crashlytics/internal/analytics/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo4/a<",
            "Lcom/google/firebase/analytics/connector/a;",
            ">;",
            "Lb4/b;",
            "Lcom/google/firebase/crashlytics/internal/analytics/a;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/crashlytics/d;->analyticsConnectorDeferred:Lo4/a;

    iput-object p2, p0, Lcom/google/firebase/crashlytics/d;->breadcrumbSource:Lb4/b;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/crashlytics/d;->breadcrumbHandlerList:Ljava/util/List;

    iput-object p3, p0, Lcom/google/firebase/crashlytics/d;->analyticsEventLogger:Lcom/google/firebase/crashlytics/internal/analytics/a;

    .line 4
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/d;->f()V

    return-void
.end method

.method public static synthetic a(Lcom/google/firebase/crashlytics/d;Lo4/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/d;->i(Lo4/b;)V

    return-void
.end method

.method public static synthetic b(Lcom/google/firebase/crashlytics/d;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/crashlytics/d;->g(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic c(Lcom/google/firebase/crashlytics/d;Lb4/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/d;->h(Lb4/a;)V

    return-void
.end method

.method private f()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d;->analyticsConnectorDeferred:Lo4/a;

    .line 3
    .line 4
    new-instance v1, Lcom/google/firebase/crashlytics/c;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/google/firebase/crashlytics/c;-><init>(Lcom/google/firebase/crashlytics/d;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Lo4/a;->a(Lo4/a$a;)V

    .line 11
    return-void
.end method

.method private synthetic g(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d;->analyticsEventLogger:Lcom/google/firebase/crashlytics/internal/analytics/a;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/google/firebase/crashlytics/internal/analytics/a;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 6
    return-void
.end method

.method private synthetic h(Lb4/a;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d;->breadcrumbSource:Lb4/b;

    .line 4
    .line 5
    instance-of v0, v0, Lb4/c;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d;->breadcrumbHandlerList:Ljava/util/List;

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    goto :goto_1

    .line 16
    .line 17
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d;->breadcrumbSource:Lb4/b;

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, p1}, Lb4/b;->a(Lb4/a;)V

    .line 21
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p1
.end method

.method private synthetic i(Lo4/b;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/g;->f()Lcom/google/firebase/crashlytics/internal/g;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "AnalyticsConnector now available."

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/g;->b(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Lo4/b;->get()Ljava/lang/Object;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    check-cast p1, Lcom/google/firebase/analytics/connector/a;

    .line 16
    .line 17
    new-instance v0, Lcom/google/firebase/crashlytics/internal/analytics/e;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, p1}, Lcom/google/firebase/crashlytics/internal/analytics/e;-><init>(Lcom/google/firebase/analytics/connector/a;)V

    .line 21
    .line 22
    new-instance v1, Lcom/google/firebase/crashlytics/e;

    .line 23
    .line 24
    .line 25
    invoke-direct {v1}, Lcom/google/firebase/crashlytics/e;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-static {p1, v1}, Lcom/google/firebase/crashlytics/d;->j(Lcom/google/firebase/analytics/connector/a;Lcom/google/firebase/crashlytics/e;)Lcom/google/firebase/analytics/connector/a$a;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    .line 34
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/g;->f()Lcom/google/firebase/crashlytics/internal/g;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    const-string v2, "Registered Firebase Analytics listener."

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v2}, Lcom/google/firebase/crashlytics/internal/g;->b(Ljava/lang/String;)V

    .line 41
    .line 42
    new-instance p1, Lcom/google/firebase/crashlytics/internal/analytics/d;

    .line 43
    .line 44
    .line 45
    invoke-direct {p1}, Lcom/google/firebase/crashlytics/internal/analytics/d;-><init>()V

    .line 46
    .line 47
    new-instance v2, Lcom/google/firebase/crashlytics/internal/analytics/c;

    .line 48
    .line 49
    const/16 v3, 0x1f4

    .line 50
    .line 51
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 52
    .line 53
    .line 54
    invoke-direct {v2, v0, v3, v4}, Lcom/google/firebase/crashlytics/internal/analytics/c;-><init>(Lcom/google/firebase/crashlytics/internal/analytics/e;ILjava/util/concurrent/TimeUnit;)V

    .line 55
    monitor-enter p0

    .line 56
    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d;->breadcrumbHandlerList:Ljava/util/List;

    .line 58
    .line 59
    .line 60
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    .line 64
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    move-result v3

    .line 66
    .line 67
    if-eqz v3, :cond_0

    .line 68
    .line 69
    .line 70
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    move-result-object v3

    .line 72
    .line 73
    check-cast v3, Lb4/a;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v3}, Lcom/google/firebase/crashlytics/internal/analytics/d;->a(Lb4/a;)V

    .line 77
    goto :goto_0

    .line 78
    :catchall_0
    move-exception p1

    .line 79
    goto :goto_1

    .line 80
    .line 81
    .line 82
    :cond_0
    invoke-virtual {v1, p1}, Lcom/google/firebase/crashlytics/e;->d(Lcom/google/firebase/crashlytics/internal/analytics/b;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/e;->e(Lcom/google/firebase/crashlytics/internal/analytics/b;)V

    .line 86
    .line 87
    iput-object p1, p0, Lcom/google/firebase/crashlytics/d;->breadcrumbSource:Lb4/b;

    .line 88
    .line 89
    iput-object v2, p0, Lcom/google/firebase/crashlytics/d;->analyticsEventLogger:Lcom/google/firebase/crashlytics/internal/analytics/a;

    .line 90
    monitor-exit p0

    .line 91
    goto :goto_2

    .line 92
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    throw p1

    .line 94
    .line 95
    .line 96
    :cond_1
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/g;->f()Lcom/google/firebase/crashlytics/internal/g;

    .line 97
    move-result-object p1

    .line 98
    .line 99
    const-string v0, "Could not register Firebase Analytics listener; a listener is already registered."

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v0}, Lcom/google/firebase/crashlytics/internal/g;->k(Ljava/lang/String;)V

    .line 103
    :goto_2
    return-void
.end method

.method private static j(Lcom/google/firebase/analytics/connector/a;Lcom/google/firebase/crashlytics/e;)Lcom/google/firebase/analytics/connector/a$a;
    .locals 2
    .param p0    # Lcom/google/firebase/analytics/connector/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/firebase/crashlytics/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "clx"

    .line 3
    .line 4
    .line 5
    invoke-interface {p0, v0, p1}, Lcom/google/firebase/analytics/connector/a;->e(Ljava/lang/String;Lcom/google/firebase/analytics/connector/a$b;)Lcom/google/firebase/analytics/connector/a$a;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/g;->f()Lcom/google/firebase/crashlytics/internal/g;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    const-string v1, "Could not register AnalyticsConnectorListener with Crashlytics origin."

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/g;->b(Ljava/lang/String;)V

    .line 18
    .line 19
    const-string v0, "crash"

    .line 20
    .line 21
    .line 22
    invoke-interface {p0, v0, p1}, Lcom/google/firebase/analytics/connector/a;->e(Ljava/lang/String;Lcom/google/firebase/analytics/connector/a$b;)Lcom/google/firebase/analytics/connector/a$a;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/g;->f()Lcom/google/firebase/crashlytics/internal/g;

    .line 29
    move-result-object p0

    .line 30
    .line 31
    const-string p1, "A new version of the Google Analytics for Firebase SDK is now available. For improved performance and compatibility with Crashlytics, please update to the latest version."

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/internal/g;->k(Ljava/lang/String;)V

    .line 35
    :cond_0
    return-object v0
.end method


# virtual methods
.method public d()Lcom/google/firebase/crashlytics/internal/analytics/a;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/crashlytics/b;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/google/firebase/crashlytics/b;-><init>(Lcom/google/firebase/crashlytics/d;)V

    .line 6
    return-object v0
.end method

.method public e()Lb4/b;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/crashlytics/a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/google/firebase/crashlytics/a;-><init>(Lcom/google/firebase/crashlytics/d;)V

    .line 6
    return-object v0
.end method
