.class public Lcom/google/firebase/remoteconfig/internal/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final FALSE_REGEX:Ljava/util/regex/Pattern;

.field public static final FRC_BYTE_ARRAY_ENCODING:Ljava/nio/charset/Charset;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final TRUE_REGEX:Ljava/util/regex/Pattern;


# instance fields
.field private final activatedConfigsCache:Lcom/google/firebase/remoteconfig/internal/f;

.field private final defaultConfigsCache:Lcom/google/firebase/remoteconfig/internal/f;

.field private final executor:Ljava/util/concurrent/Executor;

.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/util/BiConsumer<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/remoteconfig/internal/g;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    const-string v0, "UTF-8"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sput-object v0, Lcom/google/firebase/remoteconfig/internal/o;->FRC_BYTE_ARRAY_ENCODING:Ljava/nio/charset/Charset;

    .line 9
    .line 10
    const-string v0, "^(1|true|t|yes|y|on)$"

    .line 11
    const/4 v1, 0x2

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    sput-object v0, Lcom/google/firebase/remoteconfig/internal/o;->TRUE_REGEX:Ljava/util/regex/Pattern;

    .line 18
    .line 19
    const-string v0, "^(0|false|f|no|n|off|)$"

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    sput-object v0, Lcom/google/firebase/remoteconfig/internal/o;->FALSE_REGEX:Ljava/util/regex/Pattern;

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/firebase/remoteconfig/internal/f;Lcom/google/firebase/remoteconfig/internal/f;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/HashSet;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/firebase/remoteconfig/internal/o;->listeners:Ljava/util/Set;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/google/firebase/remoteconfig/internal/o;->executor:Ljava/util/concurrent/Executor;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/google/firebase/remoteconfig/internal/o;->activatedConfigsCache:Lcom/google/firebase/remoteconfig/internal/f;

    .line 15
    .line 16
    iput-object p3, p0, Lcom/google/firebase/remoteconfig/internal/o;->defaultConfigsCache:Lcom/google/firebase/remoteconfig/internal/f;

    .line 17
    return-void
.end method

.method public static synthetic a(Lcom/google/android/gms/common/util/BiConsumer;Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/g;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/firebase/remoteconfig/internal/o;->m(Lcom/google/android/gms/common/util/BiConsumer;Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/g;)V

    return-void
.end method

.method private c(Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/g;)V
    .locals 5

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/o;->listeners:Ljava/util/Set;

    .line 6
    monitor-enter v0

    .line 7
    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/o;->listeners:Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v2

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    check-cast v2, Lcom/google/android/gms/common/util/BiConsumer;

    .line 25
    .line 26
    iget-object v3, p0, Lcom/google/firebase/remoteconfig/internal/o;->executor:Ljava/util/concurrent/Executor;

    .line 27
    .line 28
    new-instance v4, Lcom/google/firebase/remoteconfig/internal/n;

    .line 29
    .line 30
    .line 31
    invoke-direct {v4, v2, p1, p2}, Lcom/google/firebase/remoteconfig/internal/n;-><init>(Lcom/google/android/gms/common/util/BiConsumer;Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/g;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    monitor-exit v0

    .line 39
    return-void

    .line 40
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p1
.end method

.method private static f(Lcom/google/firebase/remoteconfig/internal/f;)Lcom/google/firebase/remoteconfig/internal/g;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/firebase/remoteconfig/internal/f;->f()Lcom/google/firebase/remoteconfig/internal/g;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static g(Lcom/google/firebase/remoteconfig/internal/f;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/remoteconfig/internal/f;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/HashSet;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Lcom/google/firebase/remoteconfig/internal/o;->f(Lcom/google/firebase/remoteconfig/internal/f;)Lcom/google/firebase/remoteconfig/internal/g;

    .line 9
    move-result-object p0

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    return-object v0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/remoteconfig/internal/g;->g()Lorg/json/JSONObject;

    .line 16
    move-result-object p0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 20
    move-result-object p0

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v1

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    check-cast v1, Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    return-object v0
.end method

.method private static i(Lcom/google/firebase/remoteconfig/internal/f;Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/firebase/remoteconfig/internal/o;->f(Lcom/google/firebase/remoteconfig/internal/f;)Lcom/google/firebase/remoteconfig/internal/g;

    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    return-object v0

    .line 9
    .line 10
    .line 11
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/firebase/remoteconfig/internal/g;->g()Lorg/json/JSONObject;

    .line 12
    move-result-object p0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 16
    move-result-wide p0

    .line 17
    .line 18
    .line 19
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 20
    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    return-object p0

    .line 22
    :catch_0
    return-object v0
.end method

.method private static k(Lcom/google/firebase/remoteconfig/internal/f;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/firebase/remoteconfig/internal/o;->f(Lcom/google/firebase/remoteconfig/internal/f;)Lcom/google/firebase/remoteconfig/internal/g;

    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    return-object v0

    .line 9
    .line 10
    .line 11
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/firebase/remoteconfig/internal/g;->g()Lorg/json/JSONObject;

    .line 12
    move-result-object p0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return-object p0

    .line 18
    :catch_0
    return-object v0
.end method

.method private static synthetic m(Lcom/google/android/gms/common/util/BiConsumer;Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/g;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/common/util/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    return-void
.end method

.method private static n(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    .line 6
    aput-object p1, v0, v1

    .line 7
    const/4 p1, 0x1

    .line 8
    .line 9
    aput-object p0, v0, p1

    .line 10
    .line 11
    const-string p0, "No value of type \'%s\' exists for parameter key \'%s\'."

    .line 12
    .line 13
    .line 14
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 16
    .line 17
    const-string p1, "FirebaseRemoteConfig"

    .line 18
    .line 19
    .line 20
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    return-void
.end method


# virtual methods
.method public b(Lcom/google/android/gms/common/util/BiConsumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/util/BiConsumer<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/remoteconfig/internal/g;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/o;->listeners:Ljava/util/Set;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/o;->listeners:Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

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

.method public d()Ljava/util/Map;
    .locals 4
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
    new-instance v0, Ljava/util/HashSet;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/o;->activatedConfigsCache:Lcom/google/firebase/remoteconfig/internal/f;

    .line 8
    .line 9
    .line 10
    invoke-static {v1}, Lcom/google/firebase/remoteconfig/internal/o;->g(Lcom/google/firebase/remoteconfig/internal/f;)Ljava/util/Set;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 15
    .line 16
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/o;->defaultConfigsCache:Lcom/google/firebase/remoteconfig/internal/f;

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Lcom/google/firebase/remoteconfig/internal/o;->g(Lcom/google/firebase/remoteconfig/internal/f;)Ljava/util/Set;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 24
    .line 25
    new-instance v1, Ljava/util/HashMap;

    .line 26
    .line 27
    .line 28
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    move-result v2

    .line 37
    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    move-result-object v2

    .line 43
    .line 44
    check-cast v2, Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v2}, Lcom/google/firebase/remoteconfig/internal/o;->l(Ljava/lang/String;)Lc5/n;

    .line 48
    move-result-object v3

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    return-object v1
.end method

.method public e(Ljava/lang/String;)Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/o;->activatedConfigsCache:Lcom/google/firebase/remoteconfig/internal/f;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/google/firebase/remoteconfig/internal/o;->k(Lcom/google/firebase/remoteconfig/internal/f;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    sget-object v3, Lcom/google/firebase/remoteconfig/internal/o;->TRUE_REGEX:Ljava/util/regex/Pattern;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 16
    move-result-object v3

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    .line 20
    move-result v3

    .line 21
    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/o;->activatedConfigsCache:Lcom/google/firebase/remoteconfig/internal/f;

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lcom/google/firebase/remoteconfig/internal/o;->f(Lcom/google/firebase/remoteconfig/internal/f;)Lcom/google/firebase/remoteconfig/internal/g;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, p1, v0}, Lcom/google/firebase/remoteconfig/internal/o;->c(Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/g;)V

    .line 32
    return v1

    .line 33
    .line 34
    :cond_0
    sget-object v3, Lcom/google/firebase/remoteconfig/internal/o;->FALSE_REGEX:Ljava/util/regex/Pattern;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 42
    move-result v0

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/o;->activatedConfigsCache:Lcom/google/firebase/remoteconfig/internal/f;

    .line 47
    .line 48
    .line 49
    invoke-static {v0}, Lcom/google/firebase/remoteconfig/internal/o;->f(Lcom/google/firebase/remoteconfig/internal/f;)Lcom/google/firebase/remoteconfig/internal/g;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    .line 53
    invoke-direct {p0, p1, v0}, Lcom/google/firebase/remoteconfig/internal/o;->c(Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/g;)V

    .line 54
    return v2

    .line 55
    .line 56
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/o;->defaultConfigsCache:Lcom/google/firebase/remoteconfig/internal/f;

    .line 57
    .line 58
    .line 59
    invoke-static {v0, p1}, Lcom/google/firebase/remoteconfig/internal/o;->k(Lcom/google/firebase/remoteconfig/internal/f;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    sget-object v3, Lcom/google/firebase/remoteconfig/internal/o;->TRUE_REGEX:Ljava/util/regex/Pattern;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 68
    move-result-object v3

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    .line 72
    move-result v3

    .line 73
    .line 74
    if-eqz v3, :cond_2

    .line 75
    return v1

    .line 76
    .line 77
    :cond_2
    sget-object v1, Lcom/google/firebase/remoteconfig/internal/o;->FALSE_REGEX:Ljava/util/regex/Pattern;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 81
    move-result-object v0

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 85
    move-result v0

    .line 86
    .line 87
    if-eqz v0, :cond_3

    .line 88
    return v2

    .line 89
    .line 90
    :cond_3
    const-string v0, "Boolean"

    .line 91
    .line 92
    .line 93
    invoke-static {p1, v0}, Lcom/google/firebase/remoteconfig/internal/o;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return v2
.end method

.method public h(Ljava/lang/String;)J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/o;->activatedConfigsCache:Lcom/google/firebase/remoteconfig/internal/f;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/google/firebase/remoteconfig/internal/o;->i(Lcom/google/firebase/remoteconfig/internal/f;Ljava/lang/String;)Ljava/lang/Long;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/o;->activatedConfigsCache:Lcom/google/firebase/remoteconfig/internal/f;

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Lcom/google/firebase/remoteconfig/internal/o;->f(Lcom/google/firebase/remoteconfig/internal/f;)Lcom/google/firebase/remoteconfig/internal/g;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, p1, v1}, Lcom/google/firebase/remoteconfig/internal/o;->c(Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/g;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 21
    move-result-wide v0

    .line 22
    return-wide v0

    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/o;->defaultConfigsCache:Lcom/google/firebase/remoteconfig/internal/f;

    .line 25
    .line 26
    .line 27
    invoke-static {v0, p1}, Lcom/google/firebase/remoteconfig/internal/o;->i(Lcom/google/firebase/remoteconfig/internal/f;Ljava/lang/String;)Ljava/lang/Long;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 34
    move-result-wide v0

    .line 35
    return-wide v0

    .line 36
    .line 37
    :cond_1
    const-string v0, "Long"

    .line 38
    .line 39
    .line 40
    invoke-static {p1, v0}, Lcom/google/firebase/remoteconfig/internal/o;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    const-wide/16 v0, 0x0

    .line 43
    return-wide v0
.end method

.method public j(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/o;->activatedConfigsCache:Lcom/google/firebase/remoteconfig/internal/f;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/google/firebase/remoteconfig/internal/o;->k(Lcom/google/firebase/remoteconfig/internal/f;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/o;->activatedConfigsCache:Lcom/google/firebase/remoteconfig/internal/f;

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Lcom/google/firebase/remoteconfig/internal/o;->f(Lcom/google/firebase/remoteconfig/internal/f;)Lcom/google/firebase/remoteconfig/internal/g;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, p1, v1}, Lcom/google/firebase/remoteconfig/internal/o;->c(Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/g;)V

    .line 18
    return-object v0

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/o;->defaultConfigsCache:Lcom/google/firebase/remoteconfig/internal/f;

    .line 21
    .line 22
    .line 23
    invoke-static {v0, p1}, Lcom/google/firebase/remoteconfig/internal/o;->k(Lcom/google/firebase/remoteconfig/internal/f;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    return-object v0

    .line 28
    .line 29
    :cond_1
    const-string v0, "String"

    .line 30
    .line 31
    .line 32
    invoke-static {p1, v0}, Lcom/google/firebase/remoteconfig/internal/o;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    const-string p1, ""

    .line 35
    return-object p1
.end method

.method public l(Ljava/lang/String;)Lc5/n;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/o;->activatedConfigsCache:Lcom/google/firebase/remoteconfig/internal/f;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/google/firebase/remoteconfig/internal/o;->k(Lcom/google/firebase/remoteconfig/internal/f;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/o;->activatedConfigsCache:Lcom/google/firebase/remoteconfig/internal/f;

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Lcom/google/firebase/remoteconfig/internal/o;->f(Lcom/google/firebase/remoteconfig/internal/f;)Lcom/google/firebase/remoteconfig/internal/g;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, p1, v1}, Lcom/google/firebase/remoteconfig/internal/o;->c(Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/g;)V

    .line 18
    .line 19
    new-instance p1, Lcom/google/firebase/remoteconfig/internal/w;

    .line 20
    const/4 v1, 0x2

    .line 21
    .line 22
    .line 23
    invoke-direct {p1, v0, v1}, Lcom/google/firebase/remoteconfig/internal/w;-><init>(Ljava/lang/String;I)V

    .line 24
    return-object p1

    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/o;->defaultConfigsCache:Lcom/google/firebase/remoteconfig/internal/f;

    .line 27
    .line 28
    .line 29
    invoke-static {v0, p1}, Lcom/google/firebase/remoteconfig/internal/o;->k(Lcom/google/firebase/remoteconfig/internal/f;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    new-instance p1, Lcom/google/firebase/remoteconfig/internal/w;

    .line 35
    const/4 v1, 0x1

    .line 36
    .line 37
    .line 38
    invoke-direct {p1, v0, v1}, Lcom/google/firebase/remoteconfig/internal/w;-><init>(Ljava/lang/String;I)V

    .line 39
    return-object p1

    .line 40
    .line 41
    :cond_1
    const-string v0, "FirebaseRemoteConfigValue"

    .line 42
    .line 43
    .line 44
    invoke-static {p1, v0}, Lcom/google/firebase/remoteconfig/internal/o;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    new-instance p1, Lcom/google/firebase/remoteconfig/internal/w;

    .line 47
    .line 48
    const-string v0, ""

    .line 49
    const/4 v1, 0x0

    .line 50
    .line 51
    .line 52
    invoke-direct {p1, v0, v1}, Lcom/google/firebase/remoteconfig/internal/w;-><init>(Ljava/lang/String;I)V

    .line 53
    return-object p1
.end method
