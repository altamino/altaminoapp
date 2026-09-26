.class public Lcom/google/firebase/remoteconfig/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld5/a;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/remoteconfig/c$a;
    }
.end annotation


# static fields
.field public static final ACTIVATE_FILE_NAME:Ljava/lang/String; = "activate"

.field public static final CONNECTION_TIMEOUT_IN_SECONDS:J = 0x3cL

.field public static final DEFAULTS_FILE_NAME:Ljava/lang/String; = "defaults"

.field private static final DEFAULT_CLOCK:Lcom/google/android/gms/common/util/Clock;

.field public static final DEFAULT_NAMESPACE:Ljava/lang/String; = "firebase"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final DEFAULT_RANDOM:Ljava/util/Random;

.field public static final FETCH_FILE_NAME:Ljava/lang/String; = "fetch"

.field private static final FIREBASE_REMOTE_CONFIG_FILE_NAME_PREFIX:Ljava/lang/String; = "frc"

.field private static final PREFERENCES_FILE_NAME:Ljava/lang/String; = "settings"

.field private static final frcNamespaceInstancesStatic:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/remoteconfig/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final analyticsConnector:Lo4/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo4/b<",
            "Lcom/google/firebase/analytics/connector/a;",
            ">;"
        }
    .end annotation
.end field

.field private final appId:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private customHeaders:Ljava/util/Map;
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final executor:Ljava/util/concurrent/ScheduledExecutorService;

.field private final firebaseAbt:Lcom/google/firebase/abt/c;

.field private final firebaseApp:Lcom/google/firebase/f;

.field private final firebaseInstallations:Lcom/google/firebase/installations/h;

.field private final frcNamespaceInstances:Ljava/util/Map;
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/remoteconfig/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sput-object v0, Lcom/google/firebase/remoteconfig/c;->DEFAULT_CLOCK:Lcom/google/android/gms/common/util/Clock;

    .line 7
    .line 8
    new-instance v0, Ljava/util/Random;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 12
    .line 13
    sput-object v0, Lcom/google/firebase/remoteconfig/c;->DEFAULT_RANDOM:Ljava/util/Random;

    .line 14
    .line 15
    new-instance v0, Ljava/util/HashMap;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 19
    .line 20
    sput-object v0, Lcom/google/firebase/remoteconfig/c;->frcNamespaceInstancesStatic:Ljava/util/Map;

    .line 21
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/firebase/f;Lcom/google/firebase/installations/h;Lcom/google/firebase/abt/c;Lo4/b;)V
    .locals 8
    .param p2    # Ljava/util/concurrent/ScheduledExecutorService;
        .annotation build Lw3/b;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lcom/google/firebase/f;",
            "Lcom/google/firebase/installations/h;",
            "Lcom/google/firebase/abt/c;",
            "Lo4/b<",
            "Lcom/google/firebase/analytics/connector/a;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/remoteconfig/c;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/firebase/f;Lcom/google/firebase/installations/h;Lcom/google/firebase/abt/c;Lo4/b;Z)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/firebase/f;Lcom/google/firebase/installations/h;Lcom/google/firebase/abt/c;Lo4/b;Z)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lcom/google/firebase/f;",
            "Lcom/google/firebase/installations/h;",
            "Lcom/google/firebase/abt/c;",
            "Lo4/b<",
            "Lcom/google/firebase/analytics/connector/a;",
            ">;Z)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/remoteconfig/c;->frcNamespaceInstances:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/remoteconfig/c;->customHeaders:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/firebase/remoteconfig/c;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/firebase/remoteconfig/c;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p3, p0, Lcom/google/firebase/remoteconfig/c;->firebaseApp:Lcom/google/firebase/f;

    iput-object p4, p0, Lcom/google/firebase/remoteconfig/c;->firebaseInstallations:Lcom/google/firebase/installations/h;

    iput-object p5, p0, Lcom/google/firebase/remoteconfig/c;->firebaseAbt:Lcom/google/firebase/abt/c;

    iput-object p6, p0, Lcom/google/firebase/remoteconfig/c;->analyticsConnector:Lo4/b;

    .line 5
    invoke-virtual {p3}, Lcom/google/firebase/f;->n()Lcom/google/firebase/n;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/firebase/n;->c()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/google/firebase/remoteconfig/c;->appId:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lcom/google/firebase/remoteconfig/c$a;->a(Landroid/content/Context;)V

    if-eqz p7, :cond_0

    .line 7
    new-instance p1, Lcom/google/firebase/remoteconfig/b;

    invoke-direct {p1, p0}, Lcom/google/firebase/remoteconfig/b;-><init>(Lcom/google/firebase/remoteconfig/c;)V

    invoke-static {p2, p1}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    :cond_0
    return-void
.end method

.method public static synthetic b()Lcom/google/firebase/analytics/connector/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/firebase/remoteconfig/c;->q()Lcom/google/firebase/analytics/connector/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/firebase/remoteconfig/c;->r(Z)V

    .line 4
    return-void
.end method

.method private f(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/remoteconfig/internal/f;
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    .line 3
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    .line 6
    const-string v2, "frc"

    .line 7
    .line 8
    aput-object v2, v0, v1

    .line 9
    const/4 v1, 0x1

    .line 10
    .line 11
    iget-object v2, p0, Lcom/google/firebase/remoteconfig/c;->appId:Ljava/lang/String;

    .line 12
    .line 13
    aput-object v2, v0, v1

    .line 14
    const/4 v1, 0x2

    .line 15
    .line 16
    aput-object p1, v0, v1

    .line 17
    const/4 p1, 0x3

    .line 18
    .line 19
    aput-object p2, v0, p1

    .line 20
    .line 21
    const-string p1, "%s_%s_%s_%s.json"

    .line 22
    .line 23
    .line 24
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    iget-object p2, p0, Lcom/google/firebase/remoteconfig/c;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 28
    .line 29
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/c;->context:Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    invoke-static {v0, p1}, Lcom/google/firebase/remoteconfig/internal/u;->c(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/remoteconfig/internal/u;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-static {p2, p1}, Lcom/google/firebase/remoteconfig/internal/f;->h(Ljava/util/concurrent/Executor;Lcom/google/firebase/remoteconfig/internal/u;)Lcom/google/firebase/remoteconfig/internal/f;

    .line 37
    move-result-object p1

    .line 38
    return-object p1
.end method

.method private j(Lcom/google/firebase/remoteconfig/internal/f;Lcom/google/firebase/remoteconfig/internal/f;)Lcom/google/firebase/remoteconfig/internal/o;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/remoteconfig/internal/o;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/c;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1, p1, p2}, Lcom/google/firebase/remoteconfig/internal/o;-><init>(Ljava/util/concurrent/Executor;Lcom/google/firebase/remoteconfig/internal/f;Lcom/google/firebase/remoteconfig/internal/f;)V

    .line 8
    return-object v0
.end method

.method static k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/remoteconfig/internal/p;
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    const/4 v0, 0x4

    .line 2
    .line 3
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    .line 5
    const-string v1, "frc"

    .line 6
    const/4 v2, 0x0

    .line 7
    .line 8
    aput-object v1, v0, v2

    .line 9
    const/4 v1, 0x1

    .line 10
    .line 11
    aput-object p1, v0, v1

    .line 12
    const/4 p1, 0x2

    .line 13
    .line 14
    aput-object p2, v0, p1

    .line 15
    const/4 p1, 0x3

    .line 16
    .line 17
    const-string p2, "settings"

    .line 18
    .line 19
    aput-object p2, v0, p1

    .line 20
    .line 21
    const-string p1, "%s_%s_%s_%s"

    .line 22
    .line 23
    .line 24
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 29
    move-result-object p0

    .line 30
    .line 31
    new-instance p1, Lcom/google/firebase/remoteconfig/internal/p;

    .line 32
    .line 33
    .line 34
    invoke-direct {p1, p0}, Lcom/google/firebase/remoteconfig/internal/p;-><init>(Landroid/content/SharedPreferences;)V

    .line 35
    return-object p1
.end method

.method private static l(Lcom/google/firebase/f;Ljava/lang/String;Lo4/b;)Lcom/google/firebase/remoteconfig/internal/x;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/f;",
            "Ljava/lang/String;",
            "Lo4/b<",
            "Lcom/google/firebase/analytics/connector/a;",
            ">;)",
            "Lcom/google/firebase/remoteconfig/internal/x;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/firebase/remoteconfig/c;->p(Lcom/google/firebase/f;)Z

    .line 4
    move-result p0

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    const-string p0, "firebase"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result p0

    .line 13
    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    new-instance p0, Lcom/google/firebase/remoteconfig/internal/x;

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, p2}, Lcom/google/firebase/remoteconfig/internal/x;-><init>(Lo4/b;)V

    .line 20
    return-object p0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    return-object p0
.end method

.method private n(Lcom/google/firebase/remoteconfig/internal/f;Lcom/google/firebase/remoteconfig/internal/o;)Lcom/google/firebase/remoteconfig/internal/rollouts/e;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p2}, Lcom/google/firebase/remoteconfig/internal/rollouts/a;->a(Lcom/google/firebase/remoteconfig/internal/o;)Lcom/google/firebase/remoteconfig/internal/rollouts/a;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    new-instance v0, Lcom/google/firebase/remoteconfig/internal/rollouts/e;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/c;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p1, p2, v1}, Lcom/google/firebase/remoteconfig/internal/rollouts/e;-><init>(Lcom/google/firebase/remoteconfig/internal/f;Lcom/google/firebase/remoteconfig/internal/rollouts/a;Ljava/util/concurrent/Executor;)V

    .line 12
    return-object v0
.end method

.method private static o(Lcom/google/firebase/f;Ljava/lang/String;)Z
    .locals 1

    .line 1
    .line 2
    const-string v0, "firebase"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Lcom/google/firebase/remoteconfig/c;->p(Lcom/google/firebase/f;)Z

    .line 12
    move-result p0

    .line 13
    .line 14
    if-eqz p0, :cond_0

    .line 15
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
.end method

.method private static p(Lcom/google/firebase/f;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/firebase/f;->m()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    const-string v0, "[DEFAULT]"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private static synthetic q()Lcom/google/firebase/analytics/connector/a;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static declared-synchronized r(Z)V
    .locals 3

    .line 1
    .line 2
    const-class v0, Lcom/google/firebase/remoteconfig/c;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    sget-object v1, Lcom/google/firebase/remoteconfig/c;->frcNamespaceInstancesStatic:Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v2

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    check-cast v2, Lcom/google/firebase/remoteconfig/a;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, p0}, Lcom/google/firebase/remoteconfig/a;->u(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    monitor-exit v0

    .line 33
    return-void

    .line 34
    :goto_1
    monitor-exit v0

    .line 35
    throw p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/google/firebase/remoteconfig/interop/rollouts/f;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/remoteconfig/interop/rollouts/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/firebase/remoteconfig/c;->e(Ljava/lang/String;)Lcom/google/firebase/remoteconfig/a;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/a;->n()Lcom/google/firebase/remoteconfig/internal/rollouts/e;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Lcom/google/firebase/remoteconfig/internal/rollouts/e;->h(Lcom/google/firebase/remoteconfig/interop/rollouts/f;)V

    .line 12
    return-void
.end method

.method declared-synchronized d(Lcom/google/firebase/f;Ljava/lang/String;Lcom/google/firebase/installations/h;Lcom/google/firebase/abt/c;Ljava/util/concurrent/Executor;Lcom/google/firebase/remoteconfig/internal/f;Lcom/google/firebase/remoteconfig/internal/f;Lcom/google/firebase/remoteconfig/internal/f;Lcom/google/firebase/remoteconfig/internal/m;Lcom/google/firebase/remoteconfig/internal/o;Lcom/google/firebase/remoteconfig/internal/p;Lcom/google/firebase/remoteconfig/internal/rollouts/e;)Lcom/google/firebase/remoteconfig/a;
    .locals 24
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v0, p2

    monitor-enter p0

    :try_start_0
    iget-object v1, v9, Lcom/google/firebase/remoteconfig/c;->frcNamespaceInstances:Ljava/util/Map;

    .line 1
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2
    new-instance v15, Lcom/google/firebase/remoteconfig/a;

    iget-object v11, v9, Lcom/google/firebase/remoteconfig/c;->context:Landroid/content/Context;

    .line 3
    invoke-static/range {p1 .. p2}, Lcom/google/firebase/remoteconfig/c;->o(Lcom/google/firebase/f;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v14, p4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move-object v14, v1

    :goto_0
    iget-object v6, v9, Lcom/google/firebase/remoteconfig/c;->context:Landroid/content/Context;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p9

    move-object/from16 v5, p7

    move-object/from16 v7, p2

    move-object/from16 v8, p11

    .line 4
    invoke-virtual/range {v1 .. v8}, Lcom/google/firebase/remoteconfig/c;->m(Lcom/google/firebase/f;Lcom/google/firebase/installations/h;Lcom/google/firebase/remoteconfig/internal/m;Lcom/google/firebase/remoteconfig/internal/f;Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/p;)Lcom/google/firebase/remoteconfig/internal/q;

    move-result-object v22

    move-object v10, v15

    move-object/from16 v12, p1

    move-object/from16 v13, p3

    move-object v1, v15

    move-object/from16 v15, p5

    move-object/from16 v16, p6

    move-object/from16 v17, p7

    move-object/from16 v18, p8

    move-object/from16 v19, p9

    move-object/from16 v20, p10

    move-object/from16 v21, p11

    move-object/from16 v23, p12

    invoke-direct/range {v10 .. v23}, Lcom/google/firebase/remoteconfig/a;-><init>(Landroid/content/Context;Lcom/google/firebase/f;Lcom/google/firebase/installations/h;Lcom/google/firebase/abt/c;Ljava/util/concurrent/Executor;Lcom/google/firebase/remoteconfig/internal/f;Lcom/google/firebase/remoteconfig/internal/f;Lcom/google/firebase/remoteconfig/internal/f;Lcom/google/firebase/remoteconfig/internal/m;Lcom/google/firebase/remoteconfig/internal/o;Lcom/google/firebase/remoteconfig/internal/p;Lcom/google/firebase/remoteconfig/internal/q;Lcom/google/firebase/remoteconfig/internal/rollouts/e;)V

    .line 5
    invoke-virtual {v1}, Lcom/google/firebase/remoteconfig/a;->v()V

    iget-object v2, v9, Lcom/google/firebase/remoteconfig/c;->frcNamespaceInstances:Ljava/util/Map;

    .line 6
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/google/firebase/remoteconfig/c;->frcNamespaceInstancesStatic:Ljava/util/Map;

    .line 7
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    iget-object v1, v9, Lcom/google/firebase/remoteconfig/c;->frcNamespaceInstances:Ljava/util/Map;

    .line 8
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/remoteconfig/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_2
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e(Ljava/lang/String;)Lcom/google/firebase/remoteconfig/a;
    .locals 14
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    const-string v0, "fetch"

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, v0}, Lcom/google/firebase/remoteconfig/c;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/remoteconfig/internal/f;

    .line 7
    move-result-object v7

    .line 8
    .line 9
    const-string v0, "activate"

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, p1, v0}, Lcom/google/firebase/remoteconfig/c;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/remoteconfig/internal/f;

    .line 13
    move-result-object v8

    .line 14
    .line 15
    const-string v0, "defaults"

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, p1, v0}, Lcom/google/firebase/remoteconfig/c;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/remoteconfig/internal/f;

    .line 19
    move-result-object v9

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/c;->context:Landroid/content/Context;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/c;->appId:Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1, p1}, Lcom/google/firebase/remoteconfig/c;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/remoteconfig/internal/p;

    .line 27
    move-result-object v12

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, v8, v9}, Lcom/google/firebase/remoteconfig/c;->j(Lcom/google/firebase/remoteconfig/internal/f;Lcom/google/firebase/remoteconfig/internal/f;)Lcom/google/firebase/remoteconfig/internal/o;

    .line 31
    move-result-object v11

    .line 32
    .line 33
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/c;->firebaseApp:Lcom/google/firebase/f;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/c;->analyticsConnector:Lo4/b;

    .line 36
    .line 37
    .line 38
    invoke-static {v0, p1, v1}, Lcom/google/firebase/remoteconfig/c;->l(Lcom/google/firebase/f;Ljava/lang/String;Lo4/b;)Lcom/google/firebase/remoteconfig/internal/x;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    new-instance v1, Lc5/o;

    .line 44
    .line 45
    .line 46
    invoke-direct {v1, v0}, Lc5/o;-><init>(Lcom/google/firebase/remoteconfig/internal/x;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v11, v1}, Lcom/google/firebase/remoteconfig/internal/o;->b(Lcom/google/android/gms/common/util/BiConsumer;)V

    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    goto :goto_1

    .line 53
    .line 54
    .line 55
    :cond_0
    :goto_0
    invoke-direct {p0, v8, v11}, Lcom/google/firebase/remoteconfig/c;->n(Lcom/google/firebase/remoteconfig/internal/f;Lcom/google/firebase/remoteconfig/internal/o;)Lcom/google/firebase/remoteconfig/internal/rollouts/e;

    .line 56
    move-result-object v13

    .line 57
    .line 58
    iget-object v2, p0, Lcom/google/firebase/remoteconfig/c;->firebaseApp:Lcom/google/firebase/f;

    .line 59
    .line 60
    iget-object v4, p0, Lcom/google/firebase/remoteconfig/c;->firebaseInstallations:Lcom/google/firebase/installations/h;

    .line 61
    .line 62
    iget-object v5, p0, Lcom/google/firebase/remoteconfig/c;->firebaseAbt:Lcom/google/firebase/abt/c;

    .line 63
    .line 64
    iget-object v6, p0, Lcom/google/firebase/remoteconfig/c;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p1, v7, v12}, Lcom/google/firebase/remoteconfig/c;->h(Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/f;Lcom/google/firebase/remoteconfig/internal/p;)Lcom/google/firebase/remoteconfig/internal/m;

    .line 68
    move-result-object v10

    .line 69
    move-object v1, p0

    .line 70
    move-object v3, p1

    .line 71
    .line 72
    .line 73
    invoke-virtual/range {v1 .. v13}, Lcom/google/firebase/remoteconfig/c;->d(Lcom/google/firebase/f;Ljava/lang/String;Lcom/google/firebase/installations/h;Lcom/google/firebase/abt/c;Ljava/util/concurrent/Executor;Lcom/google/firebase/remoteconfig/internal/f;Lcom/google/firebase/remoteconfig/internal/f;Lcom/google/firebase/remoteconfig/internal/f;Lcom/google/firebase/remoteconfig/internal/m;Lcom/google/firebase/remoteconfig/internal/o;Lcom/google/firebase/remoteconfig/internal/p;Lcom/google/firebase/remoteconfig/internal/rollouts/e;)Lcom/google/firebase/remoteconfig/a;

    .line 74
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit p0

    .line 76
    return-object p1

    .line 77
    :goto_1
    monitor-exit p0

    .line 78
    throw p1
.end method

.method g()Lcom/google/firebase/remoteconfig/a;
    .locals 1

    .line 1
    .line 2
    const-string v0, "firebase"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/google/firebase/remoteconfig/c;->e(Ljava/lang/String;)Lcom/google/firebase/remoteconfig/a;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method declared-synchronized h(Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/f;Lcom/google/firebase/remoteconfig/internal/p;)Lcom/google/firebase/remoteconfig/internal/m;
    .locals 11
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    new-instance v10, Lcom/google/firebase/remoteconfig/internal/m;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/c;->firebaseInstallations:Lcom/google/firebase/installations/h;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/c;->firebaseApp:Lcom/google/firebase/f;

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/google/firebase/remoteconfig/c;->p(Lcom/google/firebase/f;)Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/c;->analyticsConnector:Lo4/b;

    .line 16
    :goto_0
    move-object v2, v0

    .line 17
    goto :goto_1

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto :goto_2

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lc5/p;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0}, Lc5/p;-><init>()V

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :goto_1
    iget-object v3, p0, Lcom/google/firebase/remoteconfig/c;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 28
    .line 29
    sget-object v4, Lcom/google/firebase/remoteconfig/c;->DEFAULT_CLOCK:Lcom/google/android/gms/common/util/Clock;

    .line 30
    .line 31
    sget-object v5, Lcom/google/firebase/remoteconfig/c;->DEFAULT_RANDOM:Ljava/util/Random;

    .line 32
    .line 33
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/c;->firebaseApp:Lcom/google/firebase/f;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/google/firebase/f;->n()Lcom/google/firebase/n;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/google/firebase/n;->b()Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v0, p1, p3}, Lcom/google/firebase/remoteconfig/c;->i(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/p;)Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;

    .line 45
    move-result-object v7

    .line 46
    .line 47
    iget-object v9, p0, Lcom/google/firebase/remoteconfig/c;->customHeaders:Ljava/util/Map;

    .line 48
    move-object v0, v10

    .line 49
    move-object v6, p2

    .line 50
    move-object v8, p3

    .line 51
    .line 52
    .line 53
    invoke-direct/range {v0 .. v9}, Lcom/google/firebase/remoteconfig/internal/m;-><init>(Lcom/google/firebase/installations/h;Lo4/b;Ljava/util/concurrent/Executor;Lcom/google/android/gms/common/util/Clock;Ljava/util/Random;Lcom/google/firebase/remoteconfig/internal/f;Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;Lcom/google/firebase/remoteconfig/internal/p;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    .line 55
    return-object v10

    .line 56
    :goto_2
    monitor-exit p0

    .line 57
    throw p1
.end method

.method i(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/p;)Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;
    .locals 10
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/c;->firebaseApp:Lcom/google/firebase/f;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/firebase/f;->n()Lcom/google/firebase/n;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/firebase/n;->c()Ljava/lang/String;

    .line 10
    move-result-object v3

    .line 11
    .line 12
    new-instance v0, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/google/firebase/remoteconfig/c;->context:Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p3}, Lcom/google/firebase/remoteconfig/internal/p;->b()J

    .line 18
    move-result-wide v6

    .line 19
    .line 20
    .line 21
    invoke-virtual {p3}, Lcom/google/firebase/remoteconfig/internal/p;->b()J

    .line 22
    move-result-wide v8

    .line 23
    move-object v1, v0

    .line 24
    move-object v4, p1

    .line 25
    move-object v5, p2

    .line 26
    .line 27
    .line 28
    invoke-direct/range {v1 .. v9}, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 29
    return-object v0
.end method

.method declared-synchronized m(Lcom/google/firebase/f;Lcom/google/firebase/installations/h;Lcom/google/firebase/remoteconfig/internal/m;Lcom/google/firebase/remoteconfig/internal/f;Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/p;)Lcom/google/firebase/remoteconfig/internal/q;
    .locals 11

    .line 1
    move-object v1, p0

    .line 2
    monitor-enter p0

    .line 3
    .line 4
    :try_start_0
    new-instance v0, Lcom/google/firebase/remoteconfig/internal/q;

    .line 5
    .line 6
    iget-object v10, v1, Lcom/google/firebase/remoteconfig/c;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 7
    move-object v2, v0

    .line 8
    move-object v3, p1

    .line 9
    move-object v4, p2

    .line 10
    move-object v5, p3

    .line 11
    move-object v6, p4

    .line 12
    .line 13
    move-object/from16 v7, p5

    .line 14
    .line 15
    move-object/from16 v8, p6

    .line 16
    .line 17
    move-object/from16 v9, p7

    .line 18
    .line 19
    .line 20
    invoke-direct/range {v2 .. v10}, Lcom/google/firebase/remoteconfig/internal/q;-><init>(Lcom/google/firebase/f;Lcom/google/firebase/installations/h;Lcom/google/firebase/remoteconfig/internal/m;Lcom/google/firebase/remoteconfig/internal/f;Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/p;Ljava/util/concurrent/ScheduledExecutorService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    monitor-exit p0

    .line 22
    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    monitor-exit p0

    .line 25
    throw v0
.end method
