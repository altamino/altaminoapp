.class public Lcom/google/firebase/remoteconfig/internal/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final activatedCacheClient:Lcom/google/firebase/remoteconfig/internal/f;

.field private final configFetchHandler:Lcom/google/firebase/remoteconfig/internal/m;

.field private final configRealtimeHttpClient:Lcom/google/firebase/remoteconfig/internal/t;
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final firebaseApp:Lcom/google/firebase/f;

.field private final firebaseInstallations:Lcom/google/firebase/installations/h;

.field private final listeners:Ljava/util/Set;
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lc5/c;",
            ">;"
        }
    .end annotation
.end field

.field private final metadataClient:Lcom/google/firebase/remoteconfig/internal/p;

.field private final namespace:Ljava/lang/String;

.field private final scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Lcom/google/firebase/f;Lcom/google/firebase/installations/h;Lcom/google/firebase/remoteconfig/internal/m;Lcom/google/firebase/remoteconfig/internal/f;Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/p;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    new-instance v8, Ljava/util/LinkedHashSet;

    .line 7
    .line 8
    .line 9
    invoke-direct {v8}, Ljava/util/LinkedHashSet;-><init>()V

    .line 10
    .line 11
    iput-object v8, v0, Lcom/google/firebase/remoteconfig/internal/q;->listeners:Ljava/util/Set;

    .line 12
    .line 13
    new-instance v11, Lcom/google/firebase/remoteconfig/internal/t;

    .line 14
    move-object v1, v11

    .line 15
    move-object v2, p1

    .line 16
    move-object v3, p2

    .line 17
    move-object v4, p3

    .line 18
    .line 19
    move-object/from16 v5, p4

    .line 20
    .line 21
    move-object/from16 v6, p5

    .line 22
    .line 23
    move-object/from16 v7, p6

    .line 24
    .line 25
    move-object/from16 v9, p7

    .line 26
    .line 27
    move-object/from16 v10, p8

    .line 28
    .line 29
    .line 30
    invoke-direct/range {v1 .. v10}, Lcom/google/firebase/remoteconfig/internal/t;-><init>(Lcom/google/firebase/f;Lcom/google/firebase/installations/h;Lcom/google/firebase/remoteconfig/internal/m;Lcom/google/firebase/remoteconfig/internal/f;Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lcom/google/firebase/remoteconfig/internal/p;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 31
    .line 32
    iput-object v11, v0, Lcom/google/firebase/remoteconfig/internal/q;->configRealtimeHttpClient:Lcom/google/firebase/remoteconfig/internal/t;

    .line 33
    move-object v1, p1

    .line 34
    .line 35
    iput-object v1, v0, Lcom/google/firebase/remoteconfig/internal/q;->firebaseApp:Lcom/google/firebase/f;

    .line 36
    move-object v1, p3

    .line 37
    .line 38
    iput-object v1, v0, Lcom/google/firebase/remoteconfig/internal/q;->configFetchHandler:Lcom/google/firebase/remoteconfig/internal/m;

    .line 39
    move-object v1, p2

    .line 40
    .line 41
    iput-object v1, v0, Lcom/google/firebase/remoteconfig/internal/q;->firebaseInstallations:Lcom/google/firebase/installations/h;

    .line 42
    .line 43
    move-object/from16 v1, p4

    .line 44
    .line 45
    iput-object v1, v0, Lcom/google/firebase/remoteconfig/internal/q;->activatedCacheClient:Lcom/google/firebase/remoteconfig/internal/f;

    .line 46
    .line 47
    move-object/from16 v1, p5

    .line 48
    .line 49
    iput-object v1, v0, Lcom/google/firebase/remoteconfig/internal/q;->context:Landroid/content/Context;

    .line 50
    .line 51
    move-object/from16 v1, p6

    .line 52
    .line 53
    iput-object v1, v0, Lcom/google/firebase/remoteconfig/internal/q;->namespace:Ljava/lang/String;

    .line 54
    .line 55
    move-object/from16 v1, p7

    .line 56
    .line 57
    iput-object v1, v0, Lcom/google/firebase/remoteconfig/internal/q;->metadataClient:Lcom/google/firebase/remoteconfig/internal/p;

    .line 58
    .line 59
    move-object/from16 v1, p8

    .line 60
    .line 61
    iput-object v1, v0, Lcom/google/firebase/remoteconfig/internal/q;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 62
    return-void
.end method

.method private declared-synchronized a()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/q;->listeners:Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/q;->configRealtimeHttpClient:Lcom/google/firebase/remoteconfig/internal/t;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/internal/t;->C()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :goto_1
    monitor-exit p0

    .line 21
    throw v0
.end method


# virtual methods
.method public declared-synchronized b(Z)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/q;->configRealtimeHttpClient:Lcom/google/firebase/remoteconfig/internal/t;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/google/firebase/remoteconfig/internal/t;->z(Z)V

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/google/firebase/remoteconfig/internal/q;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    :goto_0
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :goto_1
    monitor-exit p0

    .line 18
    throw p1
.end method
