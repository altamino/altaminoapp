.class public Lcom/google/firebase/messaging/FirebaseMessaging;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/messaging/FirebaseMessaging$a;
    }
.end annotation


# static fields
.field private static final EXTRA_DUMMY_P_INTENT:Ljava/lang/String; = "app"

.field static final GMS_PACKAGE:Ljava/lang/String; = "com.google.android.gms"

.field public static final INSTANCE_ID_SCOPE:Ljava/lang/String; = "FCM"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final MAX_DELAY_SEC:J

.field private static final MIN_DELAY_SEC:J = 0x1eL

.field private static final SEND_INTENT_ACTION:Ljava/lang/String; = "com.google.android.gcm.intent.SEND"

.field private static final SUBTYPE_DEFAULT:Ljava/lang/String; = ""

.field static final TAG:Ljava/lang/String; = "FirebaseMessaging"

.field private static store:Lcom/google/firebase/messaging/v0;
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation
.end field

.field static syncExecutor:Ljava/util/concurrent/ScheduledExecutorService;
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static transportFactory:Lf2/g;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "FirebaseUnknownNullness"
        }
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final autoInit:Lcom/google/firebase/messaging/FirebaseMessaging$a;

.field private final context:Landroid/content/Context;

.field private final fileExecutor:Ljava/util/concurrent/Executor;

.field private final firebaseApp:Lcom/google/firebase/f;

.field private final fis:Lcom/google/firebase/installations/h;

.field private final gmsRpc:Lcom/google/firebase/messaging/b0;

.field private final iid:Ln4/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final initExecutor:Ljava/util/concurrent/Executor;

.field private final lifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private final metadata:Lcom/google/firebase/messaging/g0;

.field private final requestDeduplicator:Lcom/google/firebase/messaging/q0;

.field private syncScheduledOrRunning:Z
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation
.end field

.field private final taskExecutor:Ljava/util/concurrent/Executor;

.field private final topicsSubscriberTask:Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/messaging/a1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 3
    .line 4
    const-wide/16 v1, 0x8

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    .line 8
    move-result-wide v0

    .line 9
    .line 10
    sput-wide v0, Lcom/google/firebase/messaging/FirebaseMessaging;->MAX_DELAY_SEC:J

    .line 11
    return-void
.end method

.method constructor <init>(Lcom/google/firebase/f;Ln4/a;Lcom/google/firebase/installations/h;Lf2/g;Ll4/d;Lcom/google/firebase/messaging/g0;Lcom/google/firebase/messaging/b0;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p2    # Ln4/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lf2/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->syncScheduledOrRunning:Z

    sput-object p4, Lcom/google/firebase/messaging/FirebaseMessaging;->transportFactory:Lf2/g;

    iput-object p1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->firebaseApp:Lcom/google/firebase/f;

    iput-object p2, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->iid:Ln4/a;

    iput-object p3, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->fis:Lcom/google/firebase/installations/h;

    .line 10
    new-instance p3, Lcom/google/firebase/messaging/FirebaseMessaging$a;

    invoke-direct {p3, p0, p5}, Lcom/google/firebase/messaging/FirebaseMessaging$a;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;Ll4/d;)V

    iput-object p3, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->autoInit:Lcom/google/firebase/messaging/FirebaseMessaging$a;

    .line 11
    invoke-virtual {p1}, Lcom/google/firebase/f;->k()Landroid/content/Context;

    move-result-object p3

    iput-object p3, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->context:Landroid/content/Context;

    .line 12
    new-instance p4, Lcom/google/firebase/messaging/q;

    invoke-direct {p4}, Lcom/google/firebase/messaging/q;-><init>()V

    iput-object p4, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->lifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    iput-object p6, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->metadata:Lcom/google/firebase/messaging/g0;

    iput-object p8, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->taskExecutor:Ljava/util/concurrent/Executor;

    iput-object p7, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->gmsRpc:Lcom/google/firebase/messaging/b0;

    .line 13
    new-instance p5, Lcom/google/firebase/messaging/q0;

    invoke-direct {p5, p8}, Lcom/google/firebase/messaging/q0;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object p5, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->requestDeduplicator:Lcom/google/firebase/messaging/q0;

    iput-object p9, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->initExecutor:Ljava/util/concurrent/Executor;

    iput-object p10, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->fileExecutor:Ljava/util/concurrent/Executor;

    .line 14
    invoke-virtual {p1}, Lcom/google/firebase/f;->k()Landroid/content/Context;

    move-result-object p1

    .line 15
    instance-of p5, p1, Landroid/app/Application;

    if-eqz p5, :cond_0

    .line 16
    check-cast p1, Landroid/app/Application;

    .line 17
    invoke-virtual {p1, p4}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0

    .line 18
    :cond_0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Context "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " was not an application, can\'t register for lifecycle callbacks. Some notification events may be dropped as a result."

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "FirebaseMessaging"

    invoke-static {p4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz p2, :cond_1

    .line 19
    new-instance p1, Lcom/google/firebase/messaging/r;

    invoke-direct {p1, p0}, Lcom/google/firebase/messaging/r;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;)V

    invoke-interface {p2, p1}, Ln4/a;->a(Ln4/a$a;)V

    .line 20
    :cond_1
    new-instance p1, Lcom/google/firebase/messaging/s;

    invoke-direct {p1, p0}, Lcom/google/firebase/messaging/s;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;)V

    invoke-interface {p9, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 21
    invoke-static {}, Lcom/google/firebase/messaging/o;->g()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    .line 22
    invoke-static {p0, p6, p7, p3, p1}, Lcom/google/firebase/messaging/a1;->e(Lcom/google/firebase/messaging/FirebaseMessaging;Lcom/google/firebase/messaging/g0;Lcom/google/firebase/messaging/b0;Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->topicsSubscriberTask:Lcom/google/android/gms/tasks/Task;

    .line 23
    new-instance p2, Lcom/google/firebase/messaging/t;

    invoke-direct {p2, p0}, Lcom/google/firebase/messaging/t;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;)V

    invoke-virtual {p1, p9, p2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 24
    new-instance p1, Lcom/google/firebase/messaging/u;

    invoke-direct {p1, p0}, Lcom/google/firebase/messaging/u;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;)V

    invoke-interface {p9, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/f;Ln4/a;Lo4/b;Lo4/b;Lcom/google/firebase/installations/h;Lf2/g;Ll4/d;)V
    .locals 9
    .param p2    # Ln4/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lf2/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/f;",
            "Ln4/a;",
            "Lo4/b<",
            "Lb5/i;",
            ">;",
            "Lo4/b<",
            "Lm4/j;",
            ">;",
            "Lcom/google/firebase/installations/h;",
            "Lf2/g;",
            "Ll4/d;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/google/firebase/messaging/g0;

    .line 2
    invoke-virtual {p1}, Lcom/google/firebase/f;->k()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/google/firebase/messaging/g0;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 3
    invoke-direct/range {v0 .. v8}, Lcom/google/firebase/messaging/FirebaseMessaging;-><init>(Lcom/google/firebase/f;Ln4/a;Lo4/b;Lo4/b;Lcom/google/firebase/installations/h;Lf2/g;Ll4/d;Lcom/google/firebase/messaging/g0;)V

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/f;Ln4/a;Lo4/b;Lo4/b;Lcom/google/firebase/installations/h;Lf2/g;Ll4/d;Lcom/google/firebase/messaging/g0;)V
    .locals 11
    .param p2    # Ln4/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lf2/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/f;",
            "Ln4/a;",
            "Lo4/b<",
            "Lb5/i;",
            ">;",
            "Lo4/b<",
            "Lm4/j;",
            ">;",
            "Lcom/google/firebase/installations/h;",
            "Lf2/g;",
            "Ll4/d;",
            "Lcom/google/firebase/messaging/g0;",
            ")V"
        }
    .end annotation

    .line 4
    new-instance v7, Lcom/google/firebase/messaging/b0;

    move-object v0, v7

    move-object v1, p1

    move-object/from16 v2, p8

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/messaging/b0;-><init>(Lcom/google/firebase/f;Lcom/google/firebase/messaging/g0;Lo4/b;Lo4/b;Lcom/google/firebase/installations/h;)V

    .line 5
    invoke-static {}, Lcom/google/firebase/messaging/o;->f()Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    .line 6
    invoke-static {}, Lcom/google/firebase/messaging/o;->c()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v9

    .line 7
    invoke-static {}, Lcom/google/firebase/messaging/o;->b()Ljava/util/concurrent/Executor;

    move-result-object v10

    move-object v0, p0

    move-object v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    .line 8
    invoke-direct/range {v0 .. v10}, Lcom/google/firebase/messaging/FirebaseMessaging;-><init>(Lcom/google/firebase/f;Ln4/a;Lcom/google/firebase/installations/h;Lf2/g;Ll4/d;Lcom/google/firebase/messaging/g0;Lcom/google/firebase/messaging/b0;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private declared-synchronized C()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-boolean v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->syncScheduledOrRunning:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/messaging/FirebaseMessaging;->E(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    :goto_0
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :goto_1
    monitor-exit p0

    .line 17
    throw v0
.end method

.method private D()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->iid:Ln4/a;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ln4/a;->getToken()Ljava/lang/String;

    .line 8
    return-void

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->p()Lcom/google/firebase/messaging/v0$a;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->F(Lcom/google/firebase/messaging/v0$a;)Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->C()V

    .line 22
    :cond_1
    return-void
.end method

.method public static synthetic a(Lcom/google/firebase/messaging/FirebaseMessaging;Ljava/lang/String;Lcom/google/firebase/messaging/v0$a;)Lcom/google/android/gms/tasks/Task;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/messaging/FirebaseMessaging;->u(Ljava/lang/String;Lcom/google/firebase/messaging/v0$a;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/google/firebase/messaging/FirebaseMessaging;Ljava/lang/String;Lcom/google/firebase/messaging/v0$a;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/messaging/FirebaseMessaging;->v(Ljava/lang/String;Lcom/google/firebase/messaging/v0$a;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/google/firebase/messaging/FirebaseMessaging;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->z()V

    return-void
.end method

.method public static synthetic d(Lcom/google/firebase/messaging/FirebaseMessaging;Lcom/google/firebase/messaging/a1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessaging;->y(Lcom/google/firebase/messaging/a1;)V

    return-void
.end method

.method public static synthetic e(Lcom/google/firebase/messaging/FirebaseMessaging;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->x()V

    return-void
.end method

.method public static synthetic f(Lcom/google/firebase/messaging/FirebaseMessaging;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessaging;->w(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method

.method static synthetic g(Lcom/google/firebase/messaging/FirebaseMessaging;)Lcom/google/firebase/f;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->firebaseApp:Lcom/google/firebase/f;

    .line 3
    return-object p0
.end method

.method static declared-synchronized getInstance(Lcom/google/firebase/f;)Lcom/google/firebase/messaging/FirebaseMessaging;
    .locals 2
    .param p0    # Lcom/google/firebase/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    const-class v0, Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    const-class v1, Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v1}, Lcom/google/firebase/f;->j(Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 10
    .line 11
    check-cast p0, Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 12
    .line 13
    const-string v1, "Firebase Messaging component is not present"

    .line 14
    .line 15
    .line 16
    invoke-static {p0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    monitor-exit v0

    .line 18
    return-object p0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    monitor-exit v0

    .line 21
    throw p0
.end method

.method static synthetic h(Lcom/google/firebase/messaging/FirebaseMessaging;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->D()V

    .line 4
    return-void
.end method

.method public static declared-synchronized l()Lcom/google/firebase/messaging/FirebaseMessaging;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    const-class v0, Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-static {}, Lcom/google/firebase/f;->l()Lcom/google/firebase/f;

    .line 7
    move-result-object v1

    .line 8
    .line 9
    .line 10
    invoke-static {v1}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance(Lcom/google/firebase/f;)Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 11
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit v0

    .line 13
    return-object v1

    .line 14
    :catchall_0
    move-exception v1

    .line 15
    monitor-exit v0

    .line 16
    throw v1
.end method

.method private static declared-synchronized m(Landroid/content/Context;)Lcom/google/firebase/messaging/v0;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    const-class v0, Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    sget-object v1, Lcom/google/firebase/messaging/FirebaseMessaging;->store:Lcom/google/firebase/messaging/v0;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    new-instance v1, Lcom/google/firebase/messaging/v0;

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/google/firebase/messaging/v0;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    sput-object v1, Lcom/google/firebase/messaging/FirebaseMessaging;->store:Lcom/google/firebase/messaging/v0;

    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    .line 19
    :cond_0
    :goto_0
    sget-object p0, Lcom/google/firebase/messaging/FirebaseMessaging;->store:Lcom/google/firebase/messaging/v0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit v0

    .line 21
    return-object p0

    .line 22
    :goto_1
    monitor-exit v0

    .line 23
    throw p0
.end method

.method private n()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->firebaseApp:Lcom/google/firebase/f;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/firebase/f;->m()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "[DEFAULT]"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const-string v0, ""

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->firebaseApp:Lcom/google/firebase/f;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/google/firebase/f;->o()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    :goto_0
    return-object v0
.end method

.method public static q()Lf2/g;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/firebase/messaging/FirebaseMessaging;->transportFactory:Lf2/g;

    return-object v0
.end method

.method private r(Ljava/lang/String;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->firebaseApp:Lcom/google/firebase/f;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/firebase/f;->m()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "[DEFAULT]"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    const/4 v0, 0x3

    .line 16
    .line 17
    const-string v1, "FirebaseMessaging"

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 21
    move-result v0

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    const-string v2, "Invoking onNewToken for app: "

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    iget-object v2, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->firebaseApp:Lcom/google/firebase/f;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/google/firebase/f;->m()Ljava/lang/String;

    .line 39
    move-result-object v2

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    .line 49
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 52
    .line 53
    const-string v1, "com.google.firebase.messaging.NEW_TOKEN"

    .line 54
    .line 55
    .line 56
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    const-string v1, "token"

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    .line 63
    new-instance p1, Lcom/google/firebase/messaging/n;

    .line 64
    .line 65
    iget-object v1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->context:Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    invoke-direct {p1, v1}, Lcom/google/firebase/messaging/n;-><init>(Landroid/content/Context;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/n;->k(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;

    .line 72
    :cond_1
    return-void
.end method

.method private synthetic u(Ljava/lang/String;Lcom/google/firebase/messaging/v0$a;)Lcom/google/android/gms/tasks/Task;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->gmsRpc:Lcom/google/firebase/messaging/b0;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/firebase/messaging/b0;->e()Lcom/google/android/gms/tasks/Task;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->fileExecutor:Ljava/util/concurrent/Executor;

    .line 9
    .line 10
    new-instance v2, Lcom/google/firebase/messaging/x;

    .line 11
    .line 12
    .line 13
    invoke-direct {v2, p0, p1, p2}, Lcom/google/firebase/messaging/x;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;Ljava/lang/String;Lcom/google/firebase/messaging/v0$a;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method private synthetic v(Ljava/lang/String;Lcom/google/firebase/messaging/v0$a;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->context:Landroid/content/Context;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->m(Landroid/content/Context;)Lcom/google/firebase/messaging/v0;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->n()Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    iget-object v2, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->metadata:Lcom/google/firebase/messaging/g0;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/google/firebase/messaging/g0;->a()Ljava/lang/String;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1, p1, p3, v2}, Lcom/google/firebase/messaging/v0;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    iget-object p1, p2, Lcom/google/firebase/messaging/v0$a;->token:Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result p1

    .line 28
    .line 29
    if-nez p1, :cond_1

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-direct {p0, p3}, Lcom/google/firebase/messaging/FirebaseMessaging;->r(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-static {p3}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 36
    move-result-object p1

    .line 37
    return-object p1
.end method

.method private synthetic w(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->i()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    .line 13
    :goto_0
    return-void
.end method

.method private synthetic x()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->s()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->D()V

    .line 10
    :cond_0
    return-void
.end method

.method private synthetic y(Lcom/google/firebase/messaging/a1;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->s()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/google/firebase/messaging/a1;->o()V

    .line 10
    :cond_0
    return-void
.end method

.method private synthetic z()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->context:Landroid/content/Context;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/firebase/messaging/m0;->c(Landroid/content/Context;)V

    .line 6
    return-void
.end method


# virtual methods
.method public A(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 5
    .param p1    # Lcom/google/firebase/messaging/RemoteMessage;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getTo()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Landroid/content/Intent;

    .line 13
    .line 14
    const-string v1, "com.google.android.gcm.intent.SEND"

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    new-instance v1, Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 23
    .line 24
    const-string v2, "com.google.example.invalidpackage"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->context:Landroid/content/Context;

    .line 30
    const/4 v3, 0x0

    .line 31
    .line 32
    const/high16 v4, 0x4000000

    .line 33
    .line 34
    .line 35
    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    const-string v2, "app"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 42
    .line 43
    const-string v1, "com.google.android.gms"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/RemoteMessage;->a(Landroid/content/Intent;)V

    .line 50
    .line 51
    iget-object p1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->context:Landroid/content/Context;

    .line 52
    .line 53
    const-string v1, "com.google.android.gtalkservice.permission.GTALK_SERVICE"

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 57
    return-void

    .line 58
    .line 59
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 60
    .line 61
    const-string v0, "Missing \'to\'"

    .line 62
    .line 63
    .line 64
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 65
    throw p1
.end method

.method declared-synchronized B(Z)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iput-boolean p1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->syncScheduledOrRunning:Z
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

.method declared-synchronized E(J)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    const-wide/16 v0, 0x2

    .line 4
    mul-long/2addr v0, p1

    .line 5
    .line 6
    const-wide/16 v2, 0x1e

    .line 7
    .line 8
    .line 9
    :try_start_0
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 10
    move-result-wide v0

    .line 11
    .line 12
    sget-wide v2, Lcom/google/firebase/messaging/FirebaseMessaging;->MAX_DELAY_SEC:J

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 16
    move-result-wide v0

    .line 17
    .line 18
    new-instance v2, Lcom/google/firebase/messaging/w0;

    .line 19
    .line 20
    .line 21
    invoke-direct {v2, p0, v0, v1}, Lcom/google/firebase/messaging/w0;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v2, p1, p2}, Lcom/google/firebase/messaging/FirebaseMessaging;->j(Ljava/lang/Runnable;J)V

    .line 25
    const/4 p1, 0x1

    .line 26
    .line 27
    iput-boolean p1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->syncScheduledOrRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    monitor-exit p0

    .line 32
    throw p1
.end method

.method F(Lcom/google/firebase/messaging/v0$a;)Z
    .locals 1
    .param p1    # Lcom/google/firebase/messaging/v0$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->metadata:Lcom/google/firebase/messaging/g0;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/firebase/messaging/g0;->a()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/v0$a;->b(Ljava/lang/String;)Z

    .line 12
    move-result p1

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 19
    :goto_1
    return p1
.end method

.method i()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->iid:Ln4/a;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    :try_start_0
    invoke-interface {v0}, Ln4/a;->b()Lcom/google/android/gms/tasks/Task;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return-object v0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    goto :goto_0

    .line 18
    :catch_1
    move-exception v0

    .line 19
    .line 20
    :goto_0
    new-instance v1, Ljava/io/IOException;

    .line 21
    .line 22
    .line 23
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 24
    throw v1

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->p()Lcom/google/firebase/messaging/v0$a;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->F(Lcom/google/firebase/messaging/v0$a;)Z

    .line 32
    move-result v1

    .line 33
    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    iget-object v0, v0, Lcom/google/firebase/messaging/v0$a;->token:Ljava/lang/String;

    .line 37
    return-object v0

    .line 38
    .line 39
    :cond_1
    iget-object v1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->firebaseApp:Lcom/google/firebase/f;

    .line 40
    .line 41
    .line 42
    invoke-static {v1}, Lcom/google/firebase/messaging/g0;->c(Lcom/google/firebase/f;)Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    iget-object v2, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->requestDeduplicator:Lcom/google/firebase/messaging/q0;

    .line 46
    .line 47
    new-instance v3, Lcom/google/firebase/messaging/v;

    .line 48
    .line 49
    .line 50
    invoke-direct {v3, p0, v1, v0}, Lcom/google/firebase/messaging/v;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;Ljava/lang/String;Lcom/google/firebase/messaging/v0$a;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v1, v3}, Lcom/google/firebase/messaging/q0;->b(Ljava/lang/String;Lcom/google/firebase/messaging/q0$a;)Lcom/google/android/gms/tasks/Task;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    .line 57
    :try_start_1
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 61
    return-object v0

    .line 62
    :catch_2
    move-exception v0

    .line 63
    goto :goto_1

    .line 64
    :catch_3
    move-exception v0

    .line 65
    .line 66
    :goto_1
    new-instance v1, Ljava/io/IOException;

    .line 67
    .line 68
    .line 69
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 70
    throw v1
.end method

.method j(Ljava/lang/Runnable;J)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ThreadPoolCreation"
        }
    .end annotation

    .line 1
    .line 2
    const-class v0, Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    sget-object v1, Lcom/google/firebase/messaging/FirebaseMessaging;->syncExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 10
    .line 11
    new-instance v2, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;

    .line 12
    .line 13
    const-string v3, "TAG"

    .line 14
    .line 15
    .line 16
    invoke-direct {v2, v3}, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    .line 17
    const/4 v3, 0x1

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, v3, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 21
    .line 22
    sput-object v1, Lcom/google/firebase/messaging/FirebaseMessaging;->syncExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_1

    .line 26
    .line 27
    :cond_0
    :goto_0
    sget-object v1, Lcom/google/firebase/messaging/FirebaseMessaging;->syncExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 28
    .line 29
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 30
    .line 31
    .line 32
    invoke-interface {v1, p1, p2, p3, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 33
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p1
.end method

.method k()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->context:Landroid/content/Context;

    return-object v0
.end method

.method public o()Lcom/google/android/gms/tasks/Task;
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
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->iid:Ln4/a;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ln4/a;->b()Lcom/google/android/gms/tasks/Task;

    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    .line 11
    :cond_0
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 15
    .line 16
    iget-object v1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->initExecutor:Ljava/util/concurrent/Executor;

    .line 17
    .line 18
    new-instance v2, Lcom/google/firebase/messaging/w;

    .line 19
    .line 20
    .line 21
    invoke-direct {v2, p0, v0}, Lcom/google/firebase/messaging/w;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method

.method p()Lcom/google/firebase/messaging/v0$a;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->context:Landroid/content/Context;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->m(Landroid/content/Context;)Lcom/google/firebase/messaging/v0;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->n()Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    iget-object v2, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->firebaseApp:Lcom/google/firebase/f;

    .line 13
    .line 14
    .line 15
    invoke-static {v2}, Lcom/google/firebase/messaging/g0;->c(Lcom/google/firebase/f;)Ljava/lang/String;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/messaging/v0;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/messaging/v0$a;

    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public s()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->autoInit:Lcom/google/firebase/messaging/FirebaseMessaging$a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/firebase/messaging/FirebaseMessaging$a;->c()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method t()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->metadata:Lcom/google/firebase/messaging/g0;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/firebase/messaging/g0;->g()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method
