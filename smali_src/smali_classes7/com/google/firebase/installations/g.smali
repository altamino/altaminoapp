.class public Lcom/google/firebase/installations/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/installations/h;


# static fields
.field private static final API_KEY_VALIDATION_MSG:Ljava/lang/String; = "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options."

.field private static final APP_ID_VALIDATION_MSG:Ljava/lang/String; = "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options."

.field private static final AUTH_ERROR_MSG:Ljava/lang/String; = "Installation ID could not be validated with the Firebase servers (maybe it was deleted). Firebase Installations will need to create a new Installation ID and auth token. Please retry your last request."

.field private static final CHIME_FIREBASE_APP_NAME:Ljava/lang/String; = "CHIME_ANDROID_SDK"

.field private static final CORE_POOL_SIZE:I = 0x0

.field private static final KEEP_ALIVE_TIME_IN_SECONDS:J = 0x1eL

.field private static final LOCKFILE_NAME_GENERATE_FID:Ljava/lang/String; = "generatefid.lock"

.field private static final MAXIMUM_POOL_SIZE:I = 0x1

.field private static final PROJECT_ID_VALIDATION_MSG:Ljava/lang/String; = "Please set your Project ID. A valid Firebase Project ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options."

.field private static final THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

.field private static final lockGenerateFid:Ljava/lang/Object;


# instance fields
.field private final backgroundExecutor:Ljava/util/concurrent/ExecutorService;

.field private cachedFid:Ljava/lang/String;
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation
.end field

.field private final fidGenerator:Lcom/google/firebase/installations/n;

.field private fidListeners:Ljava/util/Set;
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lp4/a;",
            ">;"
        }
    .end annotation
.end field

.field private final firebaseApp:Lcom/google/firebase/f;

.field private final iidStore:Lcom/google/firebase/components/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/components/y<",
            "Lq4/b;",
            ">;"
        }
    .end annotation
.end field

.field private final listeners:Ljava/util/List;
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/installations/o;",
            ">;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;

.field private final networkExecutor:Ljava/util/concurrent/Executor;

.field private final persistedInstallation:Lq4/c;

.field private final serviceClient:Lcom/google/firebase/installations/remote/c;

.field private final utils:Lcom/google/firebase/installations/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/google/firebase/installations/g;->lockGenerateFid:Ljava/lang/Object;

    .line 8
    .line 9
    new-instance v0, Lcom/google/firebase/installations/g$a;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Lcom/google/firebase/installations/g$a;-><init>()V

    .line 13
    .line 14
    sput-object v0, Lcom/google/firebase/installations/g;->THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

    .line 15
    return-void
.end method

.method constructor <init>(Lcom/google/firebase/f;Lo4/b;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Executor;)V
    .locals 9
    .param p2    # Lo4/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/concurrent/ExecutorService;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ThreadPoolCreation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/f;",
            "Lo4/b<",
            "Lm4/i;",
            ">;",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v4, Lcom/google/firebase/installations/remote/c;

    .line 2
    invoke-virtual {p1}, Lcom/google/firebase/f;->k()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v4, v0, p2}, Lcom/google/firebase/installations/remote/c;-><init>(Landroid/content/Context;Lo4/b;)V

    new-instance v5, Lq4/c;

    invoke-direct {v5, p1}, Lq4/c;-><init>(Lcom/google/firebase/f;)V

    .line 3
    invoke-static {}, Lcom/google/firebase/installations/p;->c()Lcom/google/firebase/installations/p;

    move-result-object v6

    new-instance v7, Lcom/google/firebase/components/y;

    new-instance p2, Lcom/google/firebase/installations/d;

    invoke-direct {p2, p1}, Lcom/google/firebase/installations/d;-><init>(Lcom/google/firebase/f;)V

    invoke-direct {v7, p2}, Lcom/google/firebase/components/y;-><init>(Lo4/b;)V

    new-instance v8, Lcom/google/firebase/installations/n;

    invoke-direct {v8}, Lcom/google/firebase/installations/n;-><init>()V

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p1

    .line 4
    invoke-direct/range {v0 .. v8}, Lcom/google/firebase/installations/g;-><init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Executor;Lcom/google/firebase/f;Lcom/google/firebase/installations/remote/c;Lq4/c;Lcom/google/firebase/installations/p;Lcom/google/firebase/components/y;Lcom/google/firebase/installations/n;)V

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Executor;Lcom/google/firebase/f;Lcom/google/firebase/installations/remote/c;Lq4/c;Lcom/google/firebase/installations/p;Lcom/google/firebase/components/y;Lcom/google/firebase/installations/n;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ThreadPoolCreation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/firebase/f;",
            "Lcom/google/firebase/installations/remote/c;",
            "Lq4/c;",
            "Lcom/google/firebase/installations/p;",
            "Lcom/google/firebase/components/y<",
            "Lq4/b;",
            ">;",
            "Lcom/google/firebase/installations/n;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/installations/g;->lock:Ljava/lang/Object;

    .line 7
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/installations/g;->fidListeners:Ljava/util/Set;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/installations/g;->listeners:Ljava/util/List;

    iput-object p3, p0, Lcom/google/firebase/installations/g;->firebaseApp:Lcom/google/firebase/f;

    iput-object p4, p0, Lcom/google/firebase/installations/g;->serviceClient:Lcom/google/firebase/installations/remote/c;

    iput-object p5, p0, Lcom/google/firebase/installations/g;->persistedInstallation:Lq4/c;

    iput-object p6, p0, Lcom/google/firebase/installations/g;->utils:Lcom/google/firebase/installations/p;

    iput-object p7, p0, Lcom/google/firebase/installations/g;->iidStore:Lcom/google/firebase/components/y;

    iput-object p8, p0, Lcom/google/firebase/installations/g;->fidGenerator:Lcom/google/firebase/installations/n;

    iput-object p1, p0, Lcom/google/firebase/installations/g;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    iput-object p2, p0, Lcom/google/firebase/installations/g;->networkExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private A(Lq4/d;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/installations/g;->firebaseApp:Lcom/google/firebase/f;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/firebase/f;->m()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "CHIME_ANDROID_SDK"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/google/firebase/installations/g;->firebaseApp:Lcom/google/firebase/f;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/google/firebase/f;->u()Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {p1}, Lq4/d;->m()Z

    .line 26
    move-result p1

    .line 27
    .line 28
    if-nez p1, :cond_2

    .line 29
    .line 30
    :cond_1
    iget-object p1, p0, Lcom/google/firebase/installations/g;->fidGenerator:Lcom/google/firebase/installations/n;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/google/firebase/installations/n;->a()Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    return-object p1

    .line 36
    .line 37
    .line 38
    :cond_2
    invoke-direct {p0}, Lcom/google/firebase/installations/g;->o()Lq4/b;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lq4/b;->f()Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    .line 46
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 47
    move-result v0

    .line 48
    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    iget-object p1, p0, Lcom/google/firebase/installations/g;->fidGenerator:Lcom/google/firebase/installations/n;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/google/firebase/installations/n;->a()Ljava/lang/String;

    .line 55
    move-result-object p1

    .line 56
    :cond_3
    return-object p1
.end method

.method private B(Lq4/d;)Lq4/d;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/installations/i;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lq4/d;->d()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lq4/d;->d()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 14
    move-result v0

    .line 15
    .line 16
    const/16 v1, 0xb

    .line 17
    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/google/firebase/installations/g;->o()Lq4/b;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lq4/b;->i()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    :goto_0
    move-object v6, v0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :goto_1
    iget-object v1, p0, Lcom/google/firebase/installations/g;->serviceClient:Lcom/google/firebase/installations/remote/c;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/google/firebase/installations/g;->l()Ljava/lang/String;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lq4/d;->d()Ljava/lang/String;

    .line 40
    move-result-object v3

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/google/firebase/installations/g;->t()Ljava/lang/String;

    .line 44
    move-result-object v4

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/google/firebase/installations/g;->m()Ljava/lang/String;

    .line 48
    move-result-object v5

    .line 49
    .line 50
    .line 51
    invoke-virtual/range {v1 .. v6}, Lcom/google/firebase/installations/remote/c;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/installations/remote/d;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    sget-object v1, Lcom/google/firebase/installations/g$b;->$SwitchMap$com$google$firebase$installations$remote$InstallationResponse$ResponseCode:[I

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/google/firebase/installations/remote/d;->e()Lcom/google/firebase/installations/remote/d$b;

    .line 58
    move-result-object v2

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 62
    move-result v2

    .line 63
    .line 64
    aget v1, v1, v2

    .line 65
    const/4 v2, 0x1

    .line 66
    .line 67
    if-eq v1, v2, :cond_2

    .line 68
    const/4 v0, 0x2

    .line 69
    .line 70
    if-ne v1, v0, :cond_1

    .line 71
    .line 72
    const-string v0, "BAD CONFIG"

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v0}, Lq4/d;->q(Ljava/lang/String;)Lq4/d;

    .line 76
    move-result-object p1

    .line 77
    return-object p1

    .line 78
    .line 79
    :cond_1
    new-instance p1, Lcom/google/firebase/installations/i;

    .line 80
    .line 81
    const-string v0, "Firebase Installations Service is unavailable. Please try again later."

    .line 82
    .line 83
    sget-object v1, Lcom/google/firebase/installations/i$a;->UNAVAILABLE:Lcom/google/firebase/installations/i$a;

    .line 84
    .line 85
    .line 86
    invoke-direct {p1, v0, v1}, Lcom/google/firebase/installations/i;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/i$a;)V

    .line 87
    throw p1

    .line 88
    .line 89
    .line 90
    :cond_2
    invoke-virtual {v0}, Lcom/google/firebase/installations/remote/d;->c()Ljava/lang/String;

    .line 91
    move-result-object v3

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/google/firebase/installations/remote/d;->d()Ljava/lang/String;

    .line 95
    move-result-object v4

    .line 96
    .line 97
    iget-object v1, p0, Lcom/google/firebase/installations/g;->utils:Lcom/google/firebase/installations/p;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Lcom/google/firebase/installations/p;->b()J

    .line 101
    move-result-wide v5

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/google/firebase/installations/remote/d;->b()Lcom/google/firebase/installations/remote/f;

    .line 105
    move-result-object v1

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, Lcom/google/firebase/installations/remote/f;->c()Ljava/lang/String;

    .line 109
    move-result-object v7

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Lcom/google/firebase/installations/remote/d;->b()Lcom/google/firebase/installations/remote/f;

    .line 113
    move-result-object v0

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/google/firebase/installations/remote/f;->d()J

    .line 117
    move-result-wide v8

    .line 118
    move-object v2, p1

    .line 119
    .line 120
    .line 121
    invoke-virtual/range {v2 .. v9}, Lq4/d;->s(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;J)Lq4/d;

    .line 122
    move-result-object p1

    .line 123
    return-object p1
.end method

.method private C(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/installations/g;->lock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/installations/g;->listeners:Ljava/util/List;

    .line 6
    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v2

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v2

    .line 20
    .line 21
    check-cast v2, Lcom/google/firebase/installations/o;

    .line 22
    .line 23
    .line 24
    invoke-interface {v2, p1}, Lcom/google/firebase/installations/o;->a(Ljava/lang/Exception;)Z

    .line 25
    move-result v2

    .line 26
    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    monitor-exit v0

    .line 35
    return-void

    .line 36
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p1
.end method

.method private D(Lq4/d;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/installations/g;->lock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/installations/g;->listeners:Ljava/util/List;

    .line 6
    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v2

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v2

    .line 20
    .line 21
    check-cast v2, Lcom/google/firebase/installations/o;

    .line 22
    .line 23
    .line 24
    invoke-interface {v2, p1}, Lcom/google/firebase/installations/o;->b(Lq4/d;)Z

    .line 25
    move-result v2

    .line 26
    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    monitor-exit v0

    .line 35
    return-void

    .line 36
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p1
.end method

.method private declared-synchronized E(Ljava/lang/String;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iput-object p1, p0, Lcom/google/firebase/installations/g;->cachedFid:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    monitor-exit p0

    .line 8
    throw p1
.end method

.method private declared-synchronized F(Lq4/d;Lq4/d;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/installations/g;->fidListeners:Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 7
    move-result v0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lq4/d;->d()Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Lq4/d;->d()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 21
    move-result p1

    .line 22
    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    iget-object p1, p0, Lcom/google/firebase/installations/g;->fidListeners:Ljava/util/Set;

    .line 26
    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    move-result v0

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    .line 38
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    check-cast v0, Lp4/a;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Lq4/d;->d()Ljava/lang/String;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    .line 48
    invoke-interface {v0, v1}, Lp4/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    monitor-exit p0

    .line 53
    return-void

    .line 54
    :goto_1
    monitor-exit p0

    .line 55
    throw p1
.end method

.method public static synthetic b(Lcom/google/firebase/f;)Lq4/b;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/installations/g;->y(Lcom/google/firebase/f;)Lq4/b;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/google/firebase/installations/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/installations/g;->w()V

    return-void
.end method

.method public static synthetic d(Lcom/google/firebase/installations/g;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/installations/g;->v(Z)V

    return-void
.end method

.method public static synthetic e(Lcom/google/firebase/installations/g;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/installations/g;->x(Z)V

    return-void
.end method

.method private f()Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/installations/m;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 6
    .line 7
    new-instance v1, Lcom/google/firebase/installations/k;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/google/firebase/installations/g;->utils:Lcom/google/firebase/installations/p;

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2, v0}, Lcom/google/firebase/installations/k;-><init>(Lcom/google/firebase/installations/p;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v1}, Lcom/google/firebase/installations/g;->h(Lcom/google/firebase/installations/o;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method private g()Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 6
    .line 7
    new-instance v1, Lcom/google/firebase/installations/l;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v0}, Lcom/google/firebase/installations/l;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v1}, Lcom/google/firebase/installations/g;->h(Lcom/google/firebase/installations/o;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method private h(Lcom/google/firebase/installations/o;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/installations/g;->lock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/installations/g;->listeners:Ljava/util/List;

    .line 6
    .line 7
    .line 8
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p1
.end method

.method private i(Z)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/firebase/installations/g;->r()Lq4/d;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    :try_start_0
    invoke-virtual {v0}, Lq4/d;->i()Z

    .line 8
    move-result v1

    .line 9
    .line 10
    if-nez v1, :cond_3

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lq4/d;->l()Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    goto :goto_1

    .line 18
    .line 19
    :cond_0
    if-nez p1, :cond_2

    .line 20
    .line 21
    iget-object p1, p0, Lcom/google/firebase/installations/g;->utils:Lcom/google/firebase/installations/p;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Lcom/google/firebase/installations/p;->f(Lq4/d;)Z

    .line 25
    move-result p1

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return-void

    .line 30
    :catch_0
    move-exception p1

    .line 31
    goto :goto_4

    .line 32
    .line 33
    .line 34
    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Lcom/google/firebase/installations/g;->k(Lq4/d;)Lq4/d;

    .line 35
    move-result-object p1

    .line 36
    goto :goto_2

    .line 37
    .line 38
    .line 39
    :cond_3
    :goto_1
    invoke-direct {p0, v0}, Lcom/google/firebase/installations/g;->B(Lq4/d;)Lq4/d;

    .line 40
    move-result-object p1
    :try_end_0
    .catch Lcom/google/firebase/installations/i; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    :goto_2
    invoke-direct {p0, p1}, Lcom/google/firebase/installations/g;->u(Lq4/d;)V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0, v0, p1}, Lcom/google/firebase/installations/g;->F(Lq4/d;Lq4/d;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lq4/d;->k()Z

    .line 50
    move-result v0

    .line 51
    .line 52
    if-eqz v0, :cond_4

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lq4/d;->d()Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    .line 59
    invoke-direct {p0, v0}, Lcom/google/firebase/installations/g;->E(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :cond_4
    invoke-virtual {p1}, Lq4/d;->i()Z

    .line 63
    move-result v0

    .line 64
    .line 65
    if-eqz v0, :cond_5

    .line 66
    .line 67
    new-instance p1, Lcom/google/firebase/installations/i;

    .line 68
    .line 69
    sget-object v0, Lcom/google/firebase/installations/i$a;->BAD_CONFIG:Lcom/google/firebase/installations/i$a;

    .line 70
    .line 71
    .line 72
    invoke-direct {p1, v0}, Lcom/google/firebase/installations/i;-><init>(Lcom/google/firebase/installations/i$a;)V

    .line 73
    .line 74
    .line 75
    invoke-direct {p0, p1}, Lcom/google/firebase/installations/g;->C(Ljava/lang/Exception;)V

    .line 76
    goto :goto_3

    .line 77
    .line 78
    .line 79
    :cond_5
    invoke-virtual {p1}, Lq4/d;->j()Z

    .line 80
    move-result v0

    .line 81
    .line 82
    if-eqz v0, :cond_6

    .line 83
    .line 84
    new-instance p1, Ljava/io/IOException;

    .line 85
    .line 86
    const-string v0, "Installation ID could not be validated with the Firebase servers (maybe it was deleted). Firebase Installations will need to create a new Installation ID and auth token. Please retry your last request."

    .line 87
    .line 88
    .line 89
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-direct {p0, p1}, Lcom/google/firebase/installations/g;->C(Ljava/lang/Exception;)V

    .line 93
    goto :goto_3

    .line 94
    .line 95
    .line 96
    :cond_6
    invoke-direct {p0, p1}, Lcom/google/firebase/installations/g;->D(Lq4/d;)V

    .line 97
    :goto_3
    return-void

    .line 98
    .line 99
    .line 100
    :goto_4
    invoke-direct {p0, p1}, Lcom/google/firebase/installations/g;->C(Ljava/lang/Exception;)V

    .line 101
    return-void
.end method

.method private final j(Z)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/firebase/installations/g;->s()Lq4/d;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lq4/d;->p()Lq4/d;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/installations/g;->D(Lq4/d;)V

    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/firebase/installations/g;->networkExecutor:Ljava/util/concurrent/Executor;

    .line 16
    .line 17
    new-instance v1, Lcom/google/firebase/installations/e;

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, p0, p1}, Lcom/google/firebase/installations/e;-><init>(Lcom/google/firebase/installations/g;Z)V

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 24
    return-void
.end method

.method private k(Lq4/d;)Lq4/d;
    .locals 6
    .param p1    # Lq4/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/installations/i;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/installations/g;->serviceClient:Lcom/google/firebase/installations/remote/c;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/firebase/installations/g;->l()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lq4/d;->d()Ljava/lang/String;

    .line 10
    move-result-object v2

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/firebase/installations/g;->t()Ljava/lang/String;

    .line 14
    move-result-object v3

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lq4/d;->f()Ljava/lang/String;

    .line 18
    move-result-object v4

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/firebase/installations/remote/c;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/installations/remote/f;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    sget-object v1, Lcom/google/firebase/installations/g$b;->$SwitchMap$com$google$firebase$installations$remote$TokenResult$ResponseCode:[I

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/google/firebase/installations/remote/f;->b()Lcom/google/firebase/installations/remote/f$b;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 32
    move-result v2

    .line 33
    .line 34
    aget v1, v1, v2

    .line 35
    const/4 v2, 0x1

    .line 36
    .line 37
    if-eq v1, v2, :cond_2

    .line 38
    const/4 v0, 0x2

    .line 39
    .line 40
    if-eq v1, v0, :cond_1

    .line 41
    const/4 v0, 0x3

    .line 42
    .line 43
    if-ne v1, v0, :cond_0

    .line 44
    const/4 v0, 0x0

    .line 45
    .line 46
    .line 47
    invoke-direct {p0, v0}, Lcom/google/firebase/installations/g;->E(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lq4/d;->r()Lq4/d;

    .line 51
    move-result-object p1

    .line 52
    return-object p1

    .line 53
    .line 54
    :cond_0
    new-instance p1, Lcom/google/firebase/installations/i;

    .line 55
    .line 56
    const-string v0, "Firebase Installations Service is unavailable. Please try again later."

    .line 57
    .line 58
    sget-object v1, Lcom/google/firebase/installations/i$a;->UNAVAILABLE:Lcom/google/firebase/installations/i$a;

    .line 59
    .line 60
    .line 61
    invoke-direct {p1, v0, v1}, Lcom/google/firebase/installations/i;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/i$a;)V

    .line 62
    throw p1

    .line 63
    .line 64
    :cond_1
    const-string v0, "BAD CONFIG"

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0}, Lq4/d;->q(Ljava/lang/String;)Lq4/d;

    .line 68
    move-result-object p1

    .line 69
    return-object p1

    .line 70
    .line 71
    .line 72
    :cond_2
    invoke-virtual {v0}, Lcom/google/firebase/installations/remote/f;->c()Ljava/lang/String;

    .line 73
    move-result-object v1

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/google/firebase/installations/remote/f;->d()J

    .line 77
    move-result-wide v2

    .line 78
    .line 79
    iget-object v0, p0, Lcom/google/firebase/installations/g;->utils:Lcom/google/firebase/installations/p;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/google/firebase/installations/p;->b()J

    .line 83
    move-result-wide v4

    .line 84
    move-object v0, p1

    .line 85
    .line 86
    .line 87
    invoke-virtual/range {v0 .. v5}, Lq4/d;->o(Ljava/lang/String;JJ)Lq4/d;

    .line 88
    move-result-object p1

    .line 89
    return-object p1
.end method

.method private declared-synchronized n()Ljava/lang/String;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/installations/g;->cachedFid:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method private o()Lq4/b;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/installations/g;->iidStore:Lcom/google/firebase/components/y;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/firebase/components/y;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lq4/b;

    .line 9
    return-object v0
.end method

.method public static p()Lcom/google/firebase/installations/g;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/firebase/f;->l()Lcom/google/firebase/f;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/google/firebase/installations/g;->q(Lcom/google/firebase/f;)Lcom/google/firebase/installations/g;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static q(Lcom/google/firebase/f;)Lcom/google/firebase/installations/g;
    .locals 2
    .param p0    # Lcom/google/firebase/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    if-eqz p0, :cond_0

    .line 3
    const/4 v0, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    .line 7
    :goto_0
    const-string v1, "Null is not a valid value of FirebaseApp."

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 11
    .line 12
    const-class v0, Lcom/google/firebase/installations/h;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/google/firebase/f;->j(Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    move-result-object p0

    .line 17
    .line 18
    check-cast p0, Lcom/google/firebase/installations/g;

    .line 19
    return-object p0
.end method

.method private r()Lq4/d;
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lcom/google/firebase/installations/g;->lockGenerateFid:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/installations/g;->firebaseApp:Lcom/google/firebase/f;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/google/firebase/f;->k()Landroid/content/Context;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    const-string v2, "generatefid.lock"

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2}, Lcom/google/firebase/installations/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/installations/b;

    .line 15
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    :try_start_1
    iget-object v2, p0, Lcom/google/firebase/installations/g;->persistedInstallation:Lq4/c;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Lq4/c;->d()Lq4/d;

    .line 21
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    .line 26
    :try_start_2
    invoke-virtual {v1}, Lcom/google/firebase/installations/b;->b()V

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception v1

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    :goto_0
    monitor-exit v0

    .line 31
    return-object v2

    .line 32
    :catchall_1
    move-exception v2

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/google/firebase/installations/b;->b()V

    .line 38
    :cond_1
    throw v2

    .line 39
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 40
    throw v1
.end method

.method private s()Lq4/d;
    .locals 5

    .line 1
    .line 2
    sget-object v0, Lcom/google/firebase/installations/g;->lockGenerateFid:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/installations/g;->firebaseApp:Lcom/google/firebase/f;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/google/firebase/f;->k()Landroid/content/Context;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    const-string v2, "generatefid.lock"

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2}, Lcom/google/firebase/installations/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/installations/b;

    .line 15
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 16
    .line 17
    :try_start_1
    iget-object v2, p0, Lcom/google/firebase/installations/g;->persistedInstallation:Lq4/c;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Lq4/c;->d()Lq4/d;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Lq4/d;->j()Z

    .line 25
    move-result v3

    .line 26
    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, v2}, Lcom/google/firebase/installations/g;->A(Lq4/d;)Ljava/lang/String;

    .line 31
    move-result-object v3

    .line 32
    .line 33
    iget-object v4, p0, Lcom/google/firebase/installations/g;->persistedInstallation:Lq4/c;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v3}, Lq4/d;->t(Ljava/lang/String;)Lq4/d;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4, v2}, Lq4/c;->b(Lq4/d;)Lq4/d;

    .line 41
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception v2

    .line 44
    goto :goto_2

    .line 45
    .line 46
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 47
    .line 48
    .line 49
    :try_start_2
    invoke-virtual {v1}, Lcom/google/firebase/installations/b;->b()V

    .line 50
    goto :goto_1

    .line 51
    :catchall_1
    move-exception v1

    .line 52
    goto :goto_3

    .line 53
    :cond_1
    :goto_1
    monitor-exit v0

    .line 54
    return-object v2

    .line 55
    .line 56
    :goto_2
    if-eqz v1, :cond_2

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/google/firebase/installations/b;->b()V

    .line 60
    :cond_2
    throw v2

    .line 61
    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 62
    throw v1
.end method

.method private u(Lq4/d;)V
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lcom/google/firebase/installations/g;->lockGenerateFid:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/installations/g;->firebaseApp:Lcom/google/firebase/f;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/google/firebase/f;->k()Landroid/content/Context;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    const-string v2, "generatefid.lock"

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2}, Lcom/google/firebase/installations/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/installations/b;

    .line 15
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    :try_start_1
    iget-object v2, p0, Lcom/google/firebase/installations/g;->persistedInstallation:Lq4/c;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, p1}, Lq4/c;->b(Lq4/d;)Lq4/d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    .line 25
    :try_start_2
    invoke-virtual {v1}, Lcom/google/firebase/installations/b;->b()V

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :catchall_1
    move-exception p1

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/google/firebase/installations/b;->b()V

    .line 37
    :cond_1
    throw p1

    .line 38
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    throw p1
.end method

.method private synthetic v(Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/firebase/installations/g;->i(Z)V

    .line 4
    return-void
.end method

.method private synthetic w()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcom/google/firebase/installations/g;->j(Z)V

    .line 5
    return-void
.end method

.method private synthetic x(Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/firebase/installations/g;->j(Z)V

    .line 4
    return-void
.end method

.method private static synthetic y(Lcom/google/firebase/f;)Lq4/b;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lq4/b;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lq4/b;-><init>(Lcom/google/firebase/f;)V

    .line 6
    return-object v0
.end method

.method private z()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/firebase/installations/g;->m()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options."

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/firebase/installations/g;->t()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    const-string v2, "Please set your Project ID. A valid Firebase Project ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options."

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/google/firebase/installations/g;->l()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    const-string v2, "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options."

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/google/firebase/installations/g;->m()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lcom/google/firebase/installations/p;->h(Ljava/lang/String;)Z

    .line 35
    move-result v0

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/google/firebase/installations/g;->l()Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    .line 45
    invoke-static {v0}, Lcom/google/firebase/installations/p;->g(Ljava/lang/String;)Z

    .line 46
    move-result v0

    .line 47
    .line 48
    .line 49
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 50
    return-void
.end method


# virtual methods
.method public a(Z)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/installations/m;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/firebase/installations/g;->z()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/google/firebase/installations/g;->f()Lcom/google/android/gms/tasks/Task;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/firebase/installations/g;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    .line 10
    .line 11
    new-instance v2, Lcom/google/firebase/installations/f;

    .line 12
    .line 13
    .line 14
    invoke-direct {v2, p0, p1}, Lcom/google/firebase/installations/f;-><init>(Lcom/google/firebase/installations/g;Z)V

    .line 15
    .line 16
    .line 17
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 18
    return-object v0
.end method

.method public getId()Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/firebase/installations/g;->z()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/google/firebase/installations/g;->n()Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 13
    move-result-object v0

    .line 14
    return-object v0

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/installations/g;->g()Lcom/google/android/gms/tasks/Task;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    iget-object v1, p0, Lcom/google/firebase/installations/g;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    .line 21
    .line 22
    new-instance v2, Lcom/google/firebase/installations/c;

    .line 23
    .line 24
    .line 25
    invoke-direct {v2, p0}, Lcom/google/firebase/installations/c;-><init>(Lcom/google/firebase/installations/g;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 29
    return-object v0
.end method

.method l()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/installations/g;->firebaseApp:Lcom/google/firebase/f;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/firebase/f;->n()Lcom/google/firebase/n;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/firebase/n;->b()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method m()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/installations/g;->firebaseApp:Lcom/google/firebase/f;

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
    move-result-object v0

    .line 11
    return-object v0
.end method

.method t()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/installations/g;->firebaseApp:Lcom/google/firebase/f;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/firebase/f;->n()Lcom/google/firebase/n;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/firebase/n;->e()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method
