.class Lcom/coloros/ocs/base/common/api/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/coloros/ocs/base/common/api/a$c;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Handler$Callback;"
    }
.end annotation


# static fields
.field private static volatile d:Lcom/coloros/ocs/base/common/api/j;

.field private static e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/coloros/ocs/base/common/api/a$f;",
            "Lcom/coloros/ocs/base/common/api/d;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/coloros/ocs/base/common/api/a$f;",
            "Lcom/coloros/ocs/base/common/api/d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Ld1/a;

.field private b:Landroid/content/Context;

.field private c:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/coloros/ocs/base/common/api/j;->e:Ljava/util/Map;

    .line 8
    .line 9
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 13
    .line 14
    sput-object v0, Lcom/coloros/ocs/base/common/api/j;->f:Ljava/util/Map;

    .line 15
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    iput-object p1, p0, Lcom/coloros/ocs/base/common/api/j;->b:Landroid/content/Context;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/coloros/ocs/base/common/api/j;->c:Landroid/os/Looper;

    .line 12
    .line 13
    new-instance p1, Ld1/a;

    .line 14
    .line 15
    iget-object p2, p0, Lcom/coloros/ocs/base/common/api/j;->c:Landroid/os/Looper;

    .line 16
    .line 17
    .line 18
    invoke-direct {p1, p2, p0}, Ld1/a;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 19
    .line 20
    iput-object p1, p0, Lcom/coloros/ocs/base/common/api/j;->a:Ld1/a;

    .line 21
    return-void
.end method

.method private static a(Lcom/coloros/ocs/base/common/api/d;)I
    .locals 1
    .param p0    # Lcom/coloros/ocs/base/common/api/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Lcom/coloros/ocs/base/common/api/d;->e()Lcom/coloros/ocs/base/common/AuthResult;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-interface {p0}, Lcom/coloros/ocs/base/common/api/d;->e()Lcom/coloros/ocs/base/common/AuthResult;

    .line 10
    move-result-object p0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/coloros/ocs/base/common/AuthResult;->c()I

    .line 14
    move-result p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, -0x1

    .line 17
    :goto_0
    return p0
.end method

.method public static b(Landroid/content/Context;)Lcom/coloros/ocs/base/common/api/j;
    .locals 4

    .line 1
    .line 2
    sget-object v0, Lcom/coloros/ocs/base/common/api/j;->d:Lcom/coloros/ocs/base/common/api/j;

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    const-class v0, Lcom/coloros/ocs/base/common/api/j;

    .line 7
    monitor-enter v0

    .line 8
    .line 9
    :try_start_0
    sget-object v1, Lcom/coloros/ocs/base/common/api/j;->d:Lcom/coloros/ocs/base/common/api/j;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    new-instance v1, Landroid/os/HandlerThread;

    .line 14
    .line 15
    const-string v2, "ColorApiManager"

    .line 16
    .line 17
    const/16 v3, 0x9

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 24
    .line 25
    new-instance v2, Lcom/coloros/ocs/base/common/api/j;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    .line 32
    invoke-direct {v2, p0, v1}, Lcom/coloros/ocs/base/common/api/j;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 33
    .line 34
    sput-object v2, Lcom/coloros/ocs/base/common/api/j;->d:Lcom/coloros/ocs/base/common/api/j;

    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    :goto_0
    monitor-exit v0

    .line 39
    goto :goto_2

    .line 40
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p0

    .line 42
    .line 43
    :cond_1
    :goto_2
    sget-object p0, Lcom/coloros/ocs/base/common/api/j;->d:Lcom/coloros/ocs/base/common/api/j;

    .line 44
    return-object p0
.end method

.method static synthetic c()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Lcom/coloros/ocs/base/common/api/j;->f:Ljava/util/Map;

    return-object v0
.end method

.method static d(Lcom/coloros/ocs/base/common/api/a$f;)V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/coloros/ocs/base/common/api/j;->e:Ljava/util/Map;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    return-void
.end method

.method static f(Lcom/coloros/ocs/base/common/api/c;Lcom/coloros/ocs/base/common/api/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/coloros/ocs/base/common/api/c;",
            "Lcom/coloros/ocs/base/common/api/g<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    const-string v1, "addQueue "

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    const-string v1, "ColorApiManager"

    .line 25
    .line 26
    .line 27
    invoke-static {v1, v0}, Lc1/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    const-string v0, "colorApi not be null"

    .line 30
    .line 31
    .line 32
    invoke-static {p0, v0}, Lc1/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    sget-object v0, Lcom/coloros/ocs/base/common/api/j;->e:Ljava/util/Map;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/coloros/ocs/base/common/api/c;->d()Lcom/coloros/ocs/base/common/api/a;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/coloros/ocs/base/common/api/a;->b()Lcom/coloros/ocs/base/common/api/a$f;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    .line 45
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 46
    move-result v0

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    sget-object v0, Lcom/coloros/ocs/base/common/api/j;->e:Ljava/util/Map;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/coloros/ocs/base/common/api/c;->d()Lcom/coloros/ocs/base/common/api/a;

    .line 54
    move-result-object p0

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/coloros/ocs/base/common/api/a;->b()Lcom/coloros/ocs/base/common/api/a$f;

    .line 58
    move-result-object p0

    .line 59
    .line 60
    .line 61
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    move-result-object p0

    .line 63
    .line 64
    check-cast p0, Lcom/coloros/ocs/base/common/api/d;

    .line 65
    .line 66
    if-eqz p0, :cond_0

    .line 67
    .line 68
    .line 69
    invoke-interface {p0, p1}, Lcom/coloros/ocs/base/common/api/d;->b(Lcom/coloros/ocs/base/common/api/g;)V

    .line 70
    :cond_0
    return-void

    .line 71
    .line 72
    :cond_1
    sget-object v0, Lcom/coloros/ocs/base/common/api/j;->f:Ljava/util/Map;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/coloros/ocs/base/common/api/c;->d()Lcom/coloros/ocs/base/common/api/a;

    .line 76
    move-result-object v1

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Lcom/coloros/ocs/base/common/api/a;->b()Lcom/coloros/ocs/base/common/api/a$f;

    .line 80
    move-result-object v1

    .line 81
    .line 82
    .line 83
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 84
    move-result v0

    .line 85
    .line 86
    if-eqz v0, :cond_2

    .line 87
    .line 88
    sget-object v0, Lcom/coloros/ocs/base/common/api/j;->f:Ljava/util/Map;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/coloros/ocs/base/common/api/c;->d()Lcom/coloros/ocs/base/common/api/a;

    .line 92
    move-result-object p0

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/coloros/ocs/base/common/api/a;->b()Lcom/coloros/ocs/base/common/api/a$f;

    .line 96
    move-result-object p0

    .line 97
    .line 98
    .line 99
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    move-result-object p0

    .line 101
    .line 102
    check-cast p0, Lcom/coloros/ocs/base/common/api/d;

    .line 103
    .line 104
    if-eqz p0, :cond_2

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/coloros/ocs/base/common/api/g;->b()Lcom/coloros/ocs/base/common/api/g$a;

    .line 108
    move-result-object v0

    .line 109
    .line 110
    if-eqz v0, :cond_2

    .line 111
    .line 112
    .line 113
    invoke-static {p0}, Lcom/coloros/ocs/base/common/api/j;->a(Lcom/coloros/ocs/base/common/api/d;)I

    .line 114
    move-result p0

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1}, Lcom/coloros/ocs/base/common/api/g;->b()Lcom/coloros/ocs/base/common/api/g$a;

    .line 118
    move-result-object v0

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1}, Lcom/coloros/ocs/base/common/api/g;->c()Lg1/b;

    .line 122
    move-result-object p1

    .line 123
    .line 124
    .line 125
    invoke-static {p0}, Le1/a;->a(I)Ljava/lang/String;

    .line 126
    move-result-object v1

    .line 127
    .line 128
    .line 129
    invoke-interface {v0, p1, p0, v1}, Lcom/coloros/ocs/base/common/api/g$a;->a(Lg1/b;ILjava/lang/String;)V

    .line 130
    :cond_2
    return-void
.end method

.method static h(Lcom/coloros/ocs/base/common/api/a$f;)V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/coloros/ocs/base/common/api/j;->f:Ljava/util/Map;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    return-void
.end method

.method static i(Lcom/coloros/ocs/base/common/api/c;)Z
    .locals 2

    .line 1
    .line 2
    const-string v0, "colorApi not be null"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lc1/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    sget-object v0, Lcom/coloros/ocs/base/common/api/j;->e:Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/coloros/ocs/base/common/api/c;->d()Lcom/coloros/ocs/base/common/api/a;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/coloros/ocs/base/common/api/a;->b()Lcom/coloros/ocs/base/common/api/a$f;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    sget-object v0, Lcom/coloros/ocs/base/common/api/j;->e:Ljava/util/Map;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/coloros/ocs/base/common/api/c;->d()Lcom/coloros/ocs/base/common/api/a;

    .line 27
    move-result-object p0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/coloros/ocs/base/common/api/a;->b()Lcom/coloros/ocs/base/common/api/a$f;

    .line 31
    move-result-object p0

    .line 32
    .line 33
    .line 34
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    move-result-object p0

    .line 36
    .line 37
    check-cast p0, Lcom/coloros/ocs/base/common/api/d;

    .line 38
    .line 39
    if-eqz p0, :cond_0

    .line 40
    .line 41
    .line 42
    invoke-interface {p0}, Lcom/coloros/ocs/base/common/api/d;->isConnected()Z

    .line 43
    move-result p0

    .line 44
    return p0

    .line 45
    :cond_0
    const/4 p0, 0x0

    .line 46
    return p0
.end method


# virtual methods
.method final e(Lcom/coloros/ocs/base/common/api/c;Lcom/coloros/ocs/base/common/api/f;Landroid/os/Handler;)V
    .locals 2
    .param p3    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "colorApi not be null"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lc1/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    sget-object v0, Lcom/coloros/ocs/base/common/api/j;->e:Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/coloros/ocs/base/common/api/c;->d()Lcom/coloros/ocs/base/common/api/a;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/coloros/ocs/base/common/api/a;->b()Lcom/coloros/ocs/base/common/api/a$f;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    sget-object v0, Lcom/coloros/ocs/base/common/api/j;->e:Ljava/util/Map;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/coloros/ocs/base/common/api/c;->d()Lcom/coloros/ocs/base/common/api/a;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/coloros/ocs/base/common/api/a;->b()Lcom/coloros/ocs/base/common/api/a$f;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    check-cast v0, Lcom/coloros/ocs/base/common/api/d;

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/coloros/ocs/base/common/api/c;->e()Z

    .line 43
    move-result p1

    .line 44
    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    if-nez p3, :cond_0

    .line 48
    .line 49
    .line 50
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 51
    move-result-object p1

    .line 52
    goto :goto_0

    .line 53
    .line 54
    .line 55
    :cond_0
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    :goto_0
    new-instance p3, Lcom/coloros/ocs/base/common/api/j$b;

    .line 59
    .line 60
    .line 61
    invoke-direct {p3, p0, p1, p2}, Lcom/coloros/ocs/base/common/api/j$b;-><init>(Lcom/coloros/ocs/base/common/api/j;Landroid/os/Looper;Lcom/coloros/ocs/base/common/api/f;)V

    .line 62
    const/4 p1, 0x0

    .line 63
    .line 64
    .line 65
    invoke-virtual {p3, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 66
    return-void

    .line 67
    .line 68
    .line 69
    :cond_1
    invoke-interface {v0, p2, p3}, Lcom/coloros/ocs/base/common/api/d;->c(Lcom/coloros/ocs/base/common/api/f;Landroid/os/Handler;)V

    .line 70
    :cond_2
    return-void
.end method

.method final g(Lcom/coloros/ocs/base/common/api/c;Lf1/a;)V
    .locals 5

    .line 1
    .line 2
    const-string v0, "colorApi not be null"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lc1/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    const-string v0, "clientsettings not be null"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lc1/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    sget-object v0, Lcom/coloros/ocs/base/common/api/j;->e:Ljava/util/Map;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/coloros/ocs/base/common/api/c;->d()Lcom/coloros/ocs/base/common/api/a;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/coloros/ocs/base/common/api/a;->b()Lcom/coloros/ocs/base/common/api/a$f;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    const-string v0, "addColorClient"

    .line 29
    .line 30
    const-string v1, "ColorApiManager"

    .line 31
    .line 32
    .line 33
    invoke-static {v1, v0}, Lc1/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    new-instance v0, Lcom/coloros/ocs/base/common/api/k;

    .line 36
    .line 37
    iget-object v2, p0, Lcom/coloros/ocs/base/common/api/j;->b:Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/coloros/ocs/base/common/api/c;->d()Lcom/coloros/ocs/base/common/api/a;

    .line 41
    move-result-object v3

    .line 42
    const/4 v4, 0x0

    .line 43
    .line 44
    .line 45
    invoke-direct {v0, v2, v3, v4, p2}, Lcom/coloros/ocs/base/common/api/k;-><init>(Landroid/content/Context;Lcom/coloros/ocs/base/common/api/a;Lcom/coloros/ocs/base/common/api/a$c;Lf1/a;)V

    .line 46
    .line 47
    new-instance p2, Lcom/coloros/ocs/base/common/api/j$a;

    .line 48
    .line 49
    .line 50
    invoke-direct {p2, p0, p1, v0}, Lcom/coloros/ocs/base/common/api/j$a;-><init>(Lcom/coloros/ocs/base/common/api/j;Lcom/coloros/ocs/base/common/api/c;Lcom/coloros/ocs/base/common/api/d;)V

    .line 51
    .line 52
    .line 53
    invoke-interface {v0, p2}, Lcom/coloros/ocs/base/common/api/d;->d(Lcom/coloros/ocs/base/common/api/l;)V

    .line 54
    .line 55
    new-instance p2, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v2, "getClientKey "

    .line 58
    .line 59
    .line 60
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/coloros/ocs/base/common/api/c;->d()Lcom/coloros/ocs/base/common/api/a;

    .line 64
    move-result-object v2

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Lcom/coloros/ocs/base/common/api/a;->b()Lcom/coloros/ocs/base/common/api/a$f;

    .line 68
    move-result-object v2

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object p2

    .line 76
    .line 77
    const-string v2, "TAG"

    .line 78
    .line 79
    .line 80
    invoke-static {v2, p2}, Lc1/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    sget-object p2, Lcom/coloros/ocs/base/common/api/j;->e:Ljava/util/Map;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/coloros/ocs/base/common/api/c;->d()Lcom/coloros/ocs/base/common/api/a;

    .line 86
    move-result-object v2

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Lcom/coloros/ocs/base/common/api/a;->b()Lcom/coloros/ocs/base/common/api/a$f;

    .line 90
    move-result-object v2

    .line 91
    .line 92
    .line 93
    invoke-interface {p2, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    const-string p2, "handlerConnect"

    .line 96
    .line 97
    .line 98
    invoke-static {v1, p2}, Lc1/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    iget-object p2, p0, Lcom/coloros/ocs/base/common/api/j;->a:Ld1/a;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 104
    move-result-object p2

    .line 105
    const/4 v0, 0x0

    .line 106
    .line 107
    iput v0, p2, Landroid/os/Message;->what:I

    .line 108
    .line 109
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 110
    .line 111
    iget-object p1, p0, Lcom/coloros/ocs/base/common/api/j;->a:Ld1/a;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 115
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    const-string v1, "handle message "

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    iget v1, p1, Landroid/os/Message;->what:I

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    const-string v1, "ColorApiManager"

    .line 19
    .line 20
    .line 21
    invoke-static {v1, v0}, Lc1/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    iget v0, p1, Landroid/os/Message;->what:I

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    const/4 v2, 0x1

    .line 27
    .line 28
    if-eq v0, v2, :cond_0

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p1, Lcom/coloros/ocs/base/common/api/c;

    .line 34
    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/coloros/ocs/base/common/api/c;->d()Lcom/coloros/ocs/base/common/api/a;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/coloros/ocs/base/common/api/a;->b()Lcom/coloros/ocs/base/common/api/a$f;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    sget-object v0, Lcom/coloros/ocs/base/common/api/j;->e:Ljava/util/Map;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/coloros/ocs/base/common/api/c;->d()Lcom/coloros/ocs/base/common/api/a;

    .line 51
    move-result-object v2

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/coloros/ocs/base/common/api/a;->b()Lcom/coloros/ocs/base/common/api/a$f;

    .line 55
    move-result-object v2

    .line 56
    .line 57
    .line 58
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    check-cast v0, Lcom/coloros/ocs/base/common/api/d;

    .line 62
    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    const-string v2, "colorApiClient is not null,will disconnect"

    .line 66
    .line 67
    .line 68
    invoke-static {v1, v2}, Lc1/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-interface {v0}, Lcom/coloros/ocs/base/common/api/d;->disconnect()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/coloros/ocs/base/common/api/c;->d()Lcom/coloros/ocs/base/common/api/a;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/coloros/ocs/base/common/api/a;->b()Lcom/coloros/ocs/base/common/api/a$f;

    .line 79
    move-result-object v0

    .line 80
    .line 81
    .line 82
    invoke-static {v0}, Lcom/coloros/ocs/base/common/api/j;->d(Lcom/coloros/ocs/base/common/api/a$f;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/coloros/ocs/base/common/api/c;->d()Lcom/coloros/ocs/base/common/api/a;

    .line 86
    move-result-object p1

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/coloros/ocs/base/common/api/a;->b()Lcom/coloros/ocs/base/common/api/a$f;

    .line 90
    move-result-object p1

    .line 91
    .line 92
    .line 93
    invoke-static {p1}, Lcom/coloros/ocs/base/common/api/j;->h(Lcom/coloros/ocs/base/common/api/a$f;)V

    .line 94
    goto :goto_0

    .line 95
    .line 96
    :cond_1
    const-string v0, "handle connect"

    .line 97
    .line 98
    .line 99
    invoke-static {v1, v0}, Lc1/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast p1, Lcom/coloros/ocs/base/common/api/c;

    .line 104
    .line 105
    if-eqz p1, :cond_2

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Lcom/coloros/ocs/base/common/api/c;->d()Lcom/coloros/ocs/base/common/api/a;

    .line 109
    move-result-object v0

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Lcom/coloros/ocs/base/common/api/a;->b()Lcom/coloros/ocs/base/common/api/a$f;

    .line 113
    move-result-object v0

    .line 114
    .line 115
    if-eqz v0, :cond_2

    .line 116
    .line 117
    sget-object v0, Lcom/coloros/ocs/base/common/api/j;->e:Ljava/util/Map;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Lcom/coloros/ocs/base/common/api/c;->d()Lcom/coloros/ocs/base/common/api/a;

    .line 121
    move-result-object p1

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1}, Lcom/coloros/ocs/base/common/api/a;->b()Lcom/coloros/ocs/base/common/api/a$f;

    .line 125
    move-result-object p1

    .line 126
    .line 127
    .line 128
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    move-result-object p1

    .line 130
    .line 131
    check-cast p1, Lcom/coloros/ocs/base/common/api/d;

    .line 132
    .line 133
    if-eqz p1, :cond_2

    .line 134
    .line 135
    const-string v0, "colorApiClient is not null,will connect"

    .line 136
    .line 137
    .line 138
    invoke-static {v1, v0}, Lc1/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-interface {p1}, Lcom/coloros/ocs/base/common/api/d;->a()V

    .line 142
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 143
    return p1
.end method
