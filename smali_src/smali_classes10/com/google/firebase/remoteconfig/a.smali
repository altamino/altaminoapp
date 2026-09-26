.class public Lcom/google/firebase/remoteconfig/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_VALUE_FOR_BOOLEAN:Z = false

.field public static final DEFAULT_VALUE_FOR_BYTE_ARRAY:[B

.field public static final DEFAULT_VALUE_FOR_DOUBLE:D = 0.0

.field public static final DEFAULT_VALUE_FOR_LONG:J = 0x0L

.field public static final DEFAULT_VALUE_FOR_STRING:Ljava/lang/String; = ""

.field public static final LAST_FETCH_STATUS_FAILURE:I = 0x1

.field public static final LAST_FETCH_STATUS_NO_FETCH_YET:I = 0x0

.field public static final LAST_FETCH_STATUS_SUCCESS:I = -0x1

.field public static final LAST_FETCH_STATUS_THROTTLED:I = 0x2

.field public static final TAG:Ljava/lang/String; = "FirebaseRemoteConfig"

.field public static final VALUE_SOURCE_DEFAULT:I = 0x1

.field public static final VALUE_SOURCE_REMOTE:I = 0x2

.field public static final VALUE_SOURCE_STATIC:I


# instance fields
.field private final activatedConfigsCache:Lcom/google/firebase/remoteconfig/internal/f;

.field private final configRealtimeHandler:Lcom/google/firebase/remoteconfig/internal/q;

.field private final context:Landroid/content/Context;

.field private final defaultConfigsCache:Lcom/google/firebase/remoteconfig/internal/f;

.field private final executor:Ljava/util/concurrent/Executor;

.field private final fetchHandler:Lcom/google/firebase/remoteconfig/internal/m;

.field private final fetchedConfigsCache:Lcom/google/firebase/remoteconfig/internal/f;

.field private final firebaseAbt:Lcom/google/firebase/abt/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final firebaseApp:Lcom/google/firebase/f;

.field private final firebaseInstallations:Lcom/google/firebase/installations/h;

.field private final frcMetadata:Lcom/google/firebase/remoteconfig/internal/p;

.field private final getHandler:Lcom/google/firebase/remoteconfig/internal/o;

.field private final rolloutsStateSubscriptionsHandler:Lcom/google/firebase/remoteconfig/internal/rollouts/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/firebase/remoteconfig/a;->DEFAULT_VALUE_FOR_BYTE_ARRAY:[B

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/firebase/f;Lcom/google/firebase/installations/h;Lcom/google/firebase/abt/c;Ljava/util/concurrent/Executor;Lcom/google/firebase/remoteconfig/internal/f;Lcom/google/firebase/remoteconfig/internal/f;Lcom/google/firebase/remoteconfig/internal/f;Lcom/google/firebase/remoteconfig/internal/m;Lcom/google/firebase/remoteconfig/internal/o;Lcom/google/firebase/remoteconfig/internal/p;Lcom/google/firebase/remoteconfig/internal/q;Lcom/google/firebase/remoteconfig/internal/rollouts/e;)V
    .locals 0
    .param p4    # Lcom/google/firebase/abt/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/firebase/remoteconfig/a;->context:Landroid/content/Context;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/google/firebase/remoteconfig/a;->firebaseApp:Lcom/google/firebase/f;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/google/firebase/remoteconfig/a;->firebaseInstallations:Lcom/google/firebase/installations/h;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/google/firebase/remoteconfig/a;->firebaseAbt:Lcom/google/firebase/abt/c;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/google/firebase/remoteconfig/a;->executor:Ljava/util/concurrent/Executor;

    .line 14
    .line 15
    iput-object p6, p0, Lcom/google/firebase/remoteconfig/a;->fetchedConfigsCache:Lcom/google/firebase/remoteconfig/internal/f;

    .line 16
    .line 17
    iput-object p7, p0, Lcom/google/firebase/remoteconfig/a;->activatedConfigsCache:Lcom/google/firebase/remoteconfig/internal/f;

    .line 18
    .line 19
    iput-object p8, p0, Lcom/google/firebase/remoteconfig/a;->defaultConfigsCache:Lcom/google/firebase/remoteconfig/internal/f;

    .line 20
    .line 21
    iput-object p9, p0, Lcom/google/firebase/remoteconfig/a;->fetchHandler:Lcom/google/firebase/remoteconfig/internal/m;

    .line 22
    .line 23
    iput-object p10, p0, Lcom/google/firebase/remoteconfig/a;->getHandler:Lcom/google/firebase/remoteconfig/internal/o;

    .line 24
    .line 25
    iput-object p11, p0, Lcom/google/firebase/remoteconfig/a;->frcMetadata:Lcom/google/firebase/remoteconfig/internal/p;

    .line 26
    .line 27
    iput-object p12, p0, Lcom/google/firebase/remoteconfig/a;->configRealtimeHandler:Lcom/google/firebase/remoteconfig/internal/q;

    .line 28
    .line 29
    iput-object p13, p0, Lcom/google/firebase/remoteconfig/a;->rolloutsStateSubscriptionsHandler:Lcom/google/firebase/remoteconfig/internal/rollouts/e;

    .line 30
    return-void
.end method

.method public static synthetic a(Lcom/google/firebase/remoteconfig/internal/m$a;)Lcom/google/android/gms/tasks/Task;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/remoteconfig/a;->r(Lcom/google/firebase/remoteconfig/internal/m$a;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/google/firebase/remoteconfig/a;Ljava/lang/Void;)Lcom/google/android/gms/tasks/Task;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/remoteconfig/a;->s(Ljava/lang/Void;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/google/firebase/remoteconfig/a;Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/remoteconfig/a;->q(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/google/firebase/remoteconfig/a;Lcom/google/android/gms/tasks/Task;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/remoteconfig/a;->t(Lcom/google/android/gms/tasks/Task;)Z

    move-result p0

    return p0
.end method

.method public static k()Lcom/google/firebase/remoteconfig/a;
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
    invoke-static {v0}, Lcom/google/firebase/remoteconfig/a;->l(Lcom/google/firebase/f;)Lcom/google/firebase/remoteconfig/a;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static l(Lcom/google/firebase/f;)Lcom/google/firebase/remoteconfig/a;
    .locals 1
    .param p0    # Lcom/google/firebase/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    const-class v0, Lcom/google/firebase/remoteconfig/c;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/google/firebase/f;->j(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lcom/google/firebase/remoteconfig/c;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/firebase/remoteconfig/c;->g()Lcom/google/firebase/remoteconfig/a;

    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method private static p(Lcom/google/firebase/remoteconfig/internal/g;Lcom/google/firebase/remoteconfig/internal/g;)Z
    .locals 0
    .param p1    # Lcom/google/firebase/remoteconfig/internal/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/firebase/remoteconfig/internal/g;->h()Ljava/util/Date;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/internal/g;->h()Ljava/util/Date;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result p0

    .line 15
    .line 16
    if-nez p0, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
    :goto_1
    return p0
.end method

.method private synthetic q(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    .line 4
    move-result p3

    .line 5
    .line 6
    if-eqz p3, :cond_2

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    .line 10
    move-result-object p3

    .line 11
    .line 12
    if-nez p3, :cond_0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    check-cast p1, Lcom/google/firebase/remoteconfig/internal/g;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    .line 23
    move-result p3

    .line 24
    .line 25
    if-eqz p3, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    .line 29
    move-result-object p2

    .line 30
    .line 31
    check-cast p2, Lcom/google/firebase/remoteconfig/internal/g;

    .line 32
    .line 33
    .line 34
    invoke-static {p1, p2}, Lcom/google/firebase/remoteconfig/a;->p(Lcom/google/firebase/remoteconfig/internal/g;Lcom/google/firebase/remoteconfig/internal/g;)Z

    .line 35
    move-result p2

    .line 36
    .line 37
    if-nez p2, :cond_1

    .line 38
    .line 39
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 40
    .line 41
    .line 42
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 43
    move-result-object p1

    .line 44
    return-object p1

    .line 45
    .line 46
    :cond_1
    iget-object p2, p0, Lcom/google/firebase/remoteconfig/a;->activatedConfigsCache:Lcom/google/firebase/remoteconfig/internal/f;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, p1}, Lcom/google/firebase/remoteconfig/internal/f;->k(Lcom/google/firebase/remoteconfig/internal/g;)Lcom/google/android/gms/tasks/Task;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    iget-object p2, p0, Lcom/google/firebase/remoteconfig/a;->executor:Ljava/util/concurrent/Executor;

    .line 53
    .line 54
    new-instance p3, Lc5/g;

    .line 55
    .line 56
    .line 57
    invoke-direct {p3, p0}, Lc5/g;-><init>(Lcom/google/firebase/remoteconfig/a;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/tasks/Task;->continueWith(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 61
    move-result-object p1

    .line 62
    return-object p1

    .line 63
    .line 64
    :cond_2
    :goto_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 65
    .line 66
    .line 67
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 68
    move-result-object p1

    .line 69
    return-object p1
.end method

.method private static synthetic r(Lcom/google/firebase/remoteconfig/internal/m$a;)Lcom/google/android/gms/tasks/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const/4 p0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method private synthetic s(Ljava/lang/Void;)Lcom/google/android/gms/tasks/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/firebase/remoteconfig/a;->e()Lcom/google/android/gms/tasks/Task;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method private t(Lcom/google/android/gms/tasks/Task;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/remoteconfig/internal/g;",
            ">;)Z"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/a;->fetchedConfigsCache:Lcom/google/firebase/remoteconfig/internal/f;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/internal/f;->d()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    check-cast p1, Lcom/google/firebase/remoteconfig/internal/g;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/internal/g;->e()Lorg/json/JSONArray;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0}, Lcom/google/firebase/remoteconfig/a;->x(Lorg/json/JSONArray;)V

    .line 27
    .line 28
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/a;->rolloutsStateSubscriptionsHandler:Lcom/google/firebase/remoteconfig/internal/rollouts/e;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1}, Lcom/google/firebase/remoteconfig/internal/rollouts/e;->g(Lcom/google/firebase/remoteconfig/internal/g;)V

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_0
    const-string p1, "FirebaseRemoteConfig"

    .line 35
    .line 36
    const-string v0, "Activated configs written to disk are null."

    .line 37
    .line 38
    .line 39
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :goto_0
    const/4 p1, 0x1

    .line 41
    return p1

    .line 42
    :cond_1
    const/4 p1, 0x0

    .line 43
    return p1
.end method

.method static w(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 7
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 10
    move-result v2

    .line 11
    .line 12
    if-ge v1, v2, :cond_1

    .line 13
    .line 14
    new-instance v2, Ljava/util/HashMap;

    .line 15
    .line 16
    .line 17
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 21
    move-result-object v3

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 25
    move-result-object v4

    .line 26
    .line 27
    .line 28
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v5

    .line 30
    .line 31
    if-eqz v5, :cond_0

    .line 32
    .line 33
    .line 34
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object v5

    .line 36
    .line 37
    check-cast v5, Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    move-result-object v6

    .line 42
    .line 43
    .line 44
    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    goto :goto_1

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    add-int/lit8 v1, v1, 0x1

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    return-object v0
.end method


# virtual methods
.method public e()Lcom/google/android/gms/tasks/Task;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/a;->fetchedConfigsCache:Lcom/google/firebase/remoteconfig/internal/f;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/internal/f;->e()Lcom/google/android/gms/tasks/Task;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/a;->activatedConfigsCache:Lcom/google/firebase/remoteconfig/internal/f;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/google/firebase/remoteconfig/internal/f;->e()Lcom/google/android/gms/tasks/Task;

    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x2

    .line 14
    .line 15
    new-array v2, v2, [Lcom/google/android/gms/tasks/Task;

    .line 16
    const/4 v3, 0x0

    .line 17
    .line 18
    aput-object v0, v2, v3

    .line 19
    const/4 v3, 0x1

    .line 20
    .line 21
    aput-object v1, v2, v3

    .line 22
    .line 23
    .line 24
    invoke-static {v2}, Lcom/google/android/gms/tasks/Tasks;->whenAllComplete([Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    iget-object v3, p0, Lcom/google/firebase/remoteconfig/a;->executor:Ljava/util/concurrent/Executor;

    .line 28
    .line 29
    new-instance v4, Lc5/f;

    .line 30
    .line 31
    .line 32
    invoke-direct {v4, p0, v0, v1}, Lc5/f;-><init>(Lcom/google/firebase/remoteconfig/a;Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 36
    move-result-object v0

    .line 37
    return-object v0
.end method

.method public f()Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/a;->fetchHandler:Lcom/google/firebase/remoteconfig/internal/m;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/internal/m;->i()Lcom/google/android/gms/tasks/Task;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/google/firebase/concurrent/z;->a()Ljava/util/concurrent/Executor;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    new-instance v2, Lc5/d;

    .line 13
    .line 14
    .line 15
    invoke-direct {v2}, Lc5/d;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public g()Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/firebase/remoteconfig/a;->f()Lcom/google/android/gms/tasks/Task;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/a;->executor:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    new-instance v2, Lc5/e;

    .line 9
    .line 10
    .line 11
    invoke-direct {v2, p0}, Lc5/e;-><init>(Lcom/google/firebase/remoteconfig/a;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public h()Ljava/util/Map;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lc5/n;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/a;->getHandler:Lcom/google/firebase/remoteconfig/internal/o;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/internal/o;->d()Ljava/util/Map;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public i(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/a;->getHandler:Lcom/google/firebase/remoteconfig/internal/o;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/firebase/remoteconfig/internal/o;->e(Ljava/lang/String;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public j()Lc5/k;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/a;->frcMetadata:Lcom/google/firebase/remoteconfig/internal/p;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/internal/p;->c()Lc5/k;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public m(Ljava/lang/String;)J
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/a;->getHandler:Lcom/google/firebase/remoteconfig/internal/o;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/firebase/remoteconfig/internal/o;->h(Ljava/lang/String;)J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method n()Lcom/google/firebase/remoteconfig/internal/rollouts/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/a;->rolloutsStateSubscriptionsHandler:Lcom/google/firebase/remoteconfig/internal/rollouts/e;

    return-object v0
.end method

.method public o(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/a;->getHandler:Lcom/google/firebase/remoteconfig/internal/o;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/firebase/remoteconfig/internal/o;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method u(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/a;->configRealtimeHandler:Lcom/google/firebase/remoteconfig/internal/q;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/firebase/remoteconfig/internal/q;->b(Z)V

    .line 6
    return-void
.end method

.method v()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/a;->activatedConfigsCache:Lcom/google/firebase/remoteconfig/internal/f;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/internal/f;->e()Lcom/google/android/gms/tasks/Task;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/a;->defaultConfigsCache:Lcom/google/firebase/remoteconfig/internal/f;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/internal/f;->e()Lcom/google/android/gms/tasks/Task;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/a;->fetchedConfigsCache:Lcom/google/firebase/remoteconfig/internal/f;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/internal/f;->e()Lcom/google/android/gms/tasks/Task;

    .line 16
    return-void
.end method

.method x(Lorg/json/JSONArray;)V
    .locals 2
    .param p1    # Lorg/json/JSONArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    .line 2
    const-string v0, "FirebaseRemoteConfig"

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/a;->firebaseAbt:Lcom/google/firebase/abt/c;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/google/firebase/remoteconfig/a;->w(Lorg/json/JSONArray;)Ljava/util/List;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/a;->firebaseAbt:Lcom/google/firebase/abt/c;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p1}, Lcom/google/firebase/abt/c;->m(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/firebase/abt/a; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    goto :goto_2

    .line 18
    :catch_0
    move-exception p1

    .line 19
    goto :goto_0

    .line 20
    :catch_1
    move-exception p1

    .line 21
    goto :goto_1

    .line 22
    .line 23
    :goto_0
    const-string v1, "Could not update ABT experiments."

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 27
    goto :goto_2

    .line 28
    .line 29
    :goto_1
    const-string v1, "Could not parse ABT experiments from the JSON response."

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 33
    :goto_2
    return-void
.end method
