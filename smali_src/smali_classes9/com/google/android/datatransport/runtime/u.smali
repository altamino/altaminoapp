.class public Lcom/google/android/datatransport/runtime/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/datatransport/runtime/t;


# static fields
.field private static volatile instance:Lcom/google/android/datatransport/runtime/v;


# instance fields
.field private final eventClock:Lm2/a;

.field private final scheduler:Lk2/e;

.field private final uploader:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/r;

.field private final uptimeClock:Lm2/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lm2/a;Lm2/a;Lk2/e;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/r;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/v;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/u;->eventClock:Lm2/a;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/google/android/datatransport/runtime/u;->uptimeClock:Lm2/a;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/google/android/datatransport/runtime/u;->scheduler:Lk2/e;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/google/android/datatransport/runtime/u;->uploader:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/r;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p5}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/v;->c()V

    .line 15
    return-void
.end method

.method private b(Lcom/google/android/datatransport/runtime/o;)Lcom/google/android/datatransport/runtime/i;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/datatransport/runtime/i;->a()Lcom/google/android/datatransport/runtime/i$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/u;->eventClock:Lm2/a;

    .line 7
    .line 8
    .line 9
    invoke-interface {v1}, Lm2/a;->a()J

    .line 10
    move-result-wide v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/google/android/datatransport/runtime/i$a;->i(J)Lcom/google/android/datatransport/runtime/i$a;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/u;->uptimeClock:Lm2/a;

    .line 17
    .line 18
    .line 19
    invoke-interface {v1}, Lm2/a;->a()J

    .line 20
    move-result-wide v1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Lcom/google/android/datatransport/runtime/i$a;->k(J)Lcom/google/android/datatransport/runtime/i$a;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/o;->g()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/google/android/datatransport/runtime/i$a;->j(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/i$a;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    new-instance v1, Lcom/google/android/datatransport/runtime/h;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/o;->b()Lf2/b;

    .line 38
    move-result-object v2

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/o;->d()[B

    .line 42
    move-result-object v3

    .line 43
    .line 44
    .line 45
    invoke-direct {v1, v2, v3}, Lcom/google/android/datatransport/runtime/h;-><init>(Lf2/b;[B)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/google/android/datatransport/runtime/i$a;->h(Lcom/google/android/datatransport/runtime/h;)Lcom/google/android/datatransport/runtime/i$a;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/o;->c()Lf2/c;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lf2/c;->a()Ljava/lang/Integer;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p1}, Lcom/google/android/datatransport/runtime/i$a;->g(Ljava/lang/Integer;)Lcom/google/android/datatransport/runtime/i$a;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/i$a;->d()Lcom/google/android/datatransport/runtime/i;

    .line 65
    move-result-object p1

    .line 66
    return-object p1
.end method

.method public static c()Lcom/google/android/datatransport/runtime/u;
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/google/android/datatransport/runtime/u;->instance:Lcom/google/android/datatransport/runtime/v;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/android/datatransport/runtime/v;->h()Lcom/google/android/datatransport/runtime/u;

    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 12
    .line 13
    const-string v1, "Not initialized!"

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 17
    throw v0
.end method

.method private static d(Lcom/google/android/datatransport/runtime/f;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/datatransport/runtime/f;",
            ")",
            "Ljava/util/Set<",
            "Lf2/b;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    instance-of v0, p0, Lcom/google/android/datatransport/runtime/g;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p0, Lcom/google/android/datatransport/runtime/g;

    .line 7
    .line 8
    .line 9
    invoke-interface {p0}, Lcom/google/android/datatransport/runtime/g;->a()Ljava/util/Set;

    .line 10
    move-result-object p0

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    .line 17
    :cond_0
    const-string p0, "proto"

    .line 18
    .line 19
    .line 20
    invoke-static {p0}, Lf2/b;->b(Ljava/lang/String;)Lf2/b;

    .line 21
    move-result-object p0

    .line 22
    .line 23
    .line 24
    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public static f(Landroid/content/Context;)V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/google/android/datatransport/runtime/u;->instance:Lcom/google/android/datatransport/runtime/v;

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    const-class v0, Lcom/google/android/datatransport/runtime/u;

    .line 7
    monitor-enter v0

    .line 8
    .line 9
    :try_start_0
    sget-object v1, Lcom/google/android/datatransport/runtime/u;->instance:Lcom/google/android/datatransport/runtime/v;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/google/android/datatransport/runtime/e;->k()Lcom/google/android/datatransport/runtime/v$a;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-interface {v1, p0}, Lcom/google/android/datatransport/runtime/v$a;->a(Landroid/content/Context;)Lcom/google/android/datatransport/runtime/v$a;

    .line 19
    move-result-object p0

    .line 20
    .line 21
    .line 22
    invoke-interface {p0}, Lcom/google/android/datatransport/runtime/v$a;->build()Lcom/google/android/datatransport/runtime/v;

    .line 23
    move-result-object p0

    .line 24
    .line 25
    sput-object p0, Lcom/google/android/datatransport/runtime/u;->instance:Lcom/google/android/datatransport/runtime/v;

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    monitor-exit v0

    .line 30
    goto :goto_2

    .line 31
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0

    .line 33
    :cond_1
    :goto_2
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/datatransport/runtime/o;Lf2/h;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/u;->scheduler:Lk2/e;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/o;->f()Lcom/google/android/datatransport/runtime/p;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/o;->c()Lf2/c;

    .line 10
    move-result-object v2

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2}, Lf2/c;->c()Lf2/d;

    .line 14
    move-result-object v2

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Lcom/google/android/datatransport/runtime/p;->f(Lf2/d;)Lcom/google/android/datatransport/runtime/p;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1}, Lcom/google/android/datatransport/runtime/u;->b(Lcom/google/android/datatransport/runtime/o;)Lcom/google/android/datatransport/runtime/i;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, v1, p1, p2}, Lk2/e;->a(Lcom/google/android/datatransport/runtime/p;Lcom/google/android/datatransport/runtime/i;Lf2/h;)V

    .line 26
    return-void
.end method

.method public e()Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/r;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/u;->uploader:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/r;

    return-object v0
.end method

.method public g(Lcom/google/android/datatransport/runtime/f;)Lf2/g;
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/datatransport/runtime/q;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/google/android/datatransport/runtime/u;->d(Lcom/google/android/datatransport/runtime/f;)Ljava/util/Set;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/google/android/datatransport/runtime/p;->a()Lcom/google/android/datatransport/runtime/p$a;

    .line 10
    move-result-object v2

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Lcom/google/android/datatransport/runtime/f;->getName()Ljava/lang/String;

    .line 14
    move-result-object v3

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v3}, Lcom/google/android/datatransport/runtime/p$a;->b(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/p$a;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Lcom/google/android/datatransport/runtime/f;->getExtras()[B

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, p1}, Lcom/google/android/datatransport/runtime/p$a;->c([B)Lcom/google/android/datatransport/runtime/p$a;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/p$a;->a()Lcom/google/android/datatransport/runtime/p;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, v1, p1, p0}, Lcom/google/android/datatransport/runtime/q;-><init>(Ljava/util/Set;Lcom/google/android/datatransport/runtime/p;Lcom/google/android/datatransport/runtime/t;)V

    .line 34
    return-object v0
.end method
