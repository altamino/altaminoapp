.class public Lcom/google/firebase/remoteconfig/RemoteConfigRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final LIBRARY_NAME:Ljava/lang/String; = "fire-rc"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static synthetic a(Lcom/google/firebase/components/g0;Lcom/google/firebase/components/e;)Lcom/google/firebase/remoteconfig/c;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/firebase/remoteconfig/RemoteConfigRegistrar;->lambda$getComponents$0(Lcom/google/firebase/components/g0;Lcom/google/firebase/components/e;)Lcom/google/firebase/remoteconfig/c;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getComponents$0(Lcom/google/firebase/components/g0;Lcom/google/firebase/components/e;)Lcom/google/firebase/remoteconfig/c;
    .locals 8

    .line 1
    .line 2
    new-instance v7, Lcom/google/firebase/remoteconfig/c;

    .line 3
    .line 4
    const-class v0, Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, v0}, Lcom/google/firebase/components/e;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    move-object v1, v0

    .line 10
    .line 11
    check-cast v1, Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    invoke-interface {p1, p0}, Lcom/google/firebase/components/e;->g(Lcom/google/firebase/components/g0;)Ljava/lang/Object;

    .line 15
    move-result-object p0

    .line 16
    move-object v2, p0

    .line 17
    .line 18
    check-cast v2, Ljava/util/concurrent/ScheduledExecutorService;

    .line 19
    .line 20
    const-class p0, Lcom/google/firebase/f;

    .line 21
    .line 22
    .line 23
    invoke-interface {p1, p0}, Lcom/google/firebase/components/e;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 24
    move-result-object p0

    .line 25
    move-object v3, p0

    .line 26
    .line 27
    check-cast v3, Lcom/google/firebase/f;

    .line 28
    .line 29
    const-class p0, Lcom/google/firebase/installations/h;

    .line 30
    .line 31
    .line 32
    invoke-interface {p1, p0}, Lcom/google/firebase/components/e;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 33
    move-result-object p0

    .line 34
    move-object v4, p0

    .line 35
    .line 36
    check-cast v4, Lcom/google/firebase/installations/h;

    .line 37
    .line 38
    const-class p0, Lcom/google/firebase/abt/component/a;

    .line 39
    .line 40
    .line 41
    invoke-interface {p1, p0}, Lcom/google/firebase/components/e;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 42
    move-result-object p0

    .line 43
    .line 44
    check-cast p0, Lcom/google/firebase/abt/component/a;

    .line 45
    .line 46
    const-string v0, "frc"

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v0}, Lcom/google/firebase/abt/component/a;->b(Ljava/lang/String;)Lcom/google/firebase/abt/c;

    .line 50
    move-result-object v5

    .line 51
    .line 52
    const-class p0, Lcom/google/firebase/analytics/connector/a;

    .line 53
    .line 54
    .line 55
    invoke-interface {p1, p0}, Lcom/google/firebase/components/e;->b(Ljava/lang/Class;)Lo4/b;

    .line 56
    move-result-object v6

    .line 57
    move-object v0, v7

    .line 58
    .line 59
    .line 60
    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/remoteconfig/c;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/firebase/f;Lcom/google/firebase/installations/h;Lcom/google/firebase/abt/c;Lo4/b;)V

    .line 61
    return-object v7
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/components/c<",
            "*>;>;"
        }
    .end annotation

    .line 1
    .line 2
    const-class v0, Lw3/b;

    .line 3
    .line 4
    const-class v1, Ljava/util/concurrent/ScheduledExecutorService;

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/google/firebase/components/g0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/firebase/components/g0;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x2

    .line 10
    .line 11
    new-array v1, v1, [Lcom/google/firebase/components/c;

    .line 12
    const/4 v2, 0x1

    .line 13
    .line 14
    new-array v3, v2, [Ljava/lang/Class;

    .line 15
    .line 16
    const-class v4, Ld5/a;

    .line 17
    const/4 v5, 0x0

    .line 18
    .line 19
    aput-object v4, v3, v5

    .line 20
    .line 21
    const-class v4, Lcom/google/firebase/remoteconfig/c;

    .line 22
    .line 23
    .line 24
    invoke-static {v4, v3}, Lcom/google/firebase/components/c;->f(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/google/firebase/components/c$b;

    .line 25
    move-result-object v3

    .line 26
    .line 27
    const-string v4, "fire-rc"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, v4}, Lcom/google/firebase/components/c$b;->h(Ljava/lang/String;)Lcom/google/firebase/components/c$b;

    .line 31
    move-result-object v3

    .line 32
    .line 33
    const-class v6, Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    invoke-static {v6}, Lcom/google/firebase/components/s;->k(Ljava/lang/Class;)Lcom/google/firebase/components/s;

    .line 37
    move-result-object v6

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, v6}, Lcom/google/firebase/components/c$b;->b(Lcom/google/firebase/components/s;)Lcom/google/firebase/components/c$b;

    .line 41
    move-result-object v3

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Lcom/google/firebase/components/s;->j(Lcom/google/firebase/components/g0;)Lcom/google/firebase/components/s;

    .line 45
    move-result-object v6

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v6}, Lcom/google/firebase/components/c$b;->b(Lcom/google/firebase/components/s;)Lcom/google/firebase/components/c$b;

    .line 49
    move-result-object v3

    .line 50
    .line 51
    const-class v6, Lcom/google/firebase/f;

    .line 52
    .line 53
    .line 54
    invoke-static {v6}, Lcom/google/firebase/components/s;->k(Ljava/lang/Class;)Lcom/google/firebase/components/s;

    .line 55
    move-result-object v6

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, v6}, Lcom/google/firebase/components/c$b;->b(Lcom/google/firebase/components/s;)Lcom/google/firebase/components/c$b;

    .line 59
    move-result-object v3

    .line 60
    .line 61
    const-class v6, Lcom/google/firebase/installations/h;

    .line 62
    .line 63
    .line 64
    invoke-static {v6}, Lcom/google/firebase/components/s;->k(Ljava/lang/Class;)Lcom/google/firebase/components/s;

    .line 65
    move-result-object v6

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, v6}, Lcom/google/firebase/components/c$b;->b(Lcom/google/firebase/components/s;)Lcom/google/firebase/components/c$b;

    .line 69
    move-result-object v3

    .line 70
    .line 71
    const-class v6, Lcom/google/firebase/abt/component/a;

    .line 72
    .line 73
    .line 74
    invoke-static {v6}, Lcom/google/firebase/components/s;->k(Ljava/lang/Class;)Lcom/google/firebase/components/s;

    .line 75
    move-result-object v6

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3, v6}, Lcom/google/firebase/components/c$b;->b(Lcom/google/firebase/components/s;)Lcom/google/firebase/components/c$b;

    .line 79
    move-result-object v3

    .line 80
    .line 81
    const-class v6, Lcom/google/firebase/analytics/connector/a;

    .line 82
    .line 83
    .line 84
    invoke-static {v6}, Lcom/google/firebase/components/s;->i(Ljava/lang/Class;)Lcom/google/firebase/components/s;

    .line 85
    move-result-object v6

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, v6}, Lcom/google/firebase/components/c$b;->b(Lcom/google/firebase/components/s;)Lcom/google/firebase/components/c$b;

    .line 89
    move-result-object v3

    .line 90
    .line 91
    new-instance v6, Lc5/q;

    .line 92
    .line 93
    .line 94
    invoke-direct {v6, v0}, Lc5/q;-><init>(Lcom/google/firebase/components/g0;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3, v6}, Lcom/google/firebase/components/c$b;->f(Lcom/google/firebase/components/h;)Lcom/google/firebase/components/c$b;

    .line 98
    move-result-object v0

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/google/firebase/components/c$b;->e()Lcom/google/firebase/components/c$b;

    .line 102
    move-result-object v0

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/google/firebase/components/c$b;->d()Lcom/google/firebase/components/c;

    .line 106
    move-result-object v0

    .line 107
    .line 108
    aput-object v0, v1, v5

    .line 109
    .line 110
    const-string v0, "21.6.0"

    .line 111
    .line 112
    .line 113
    invoke-static {v4, v0}, Lb5/h;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/components/c;

    .line 114
    move-result-object v0

    .line 115
    .line 116
    aput-object v0, v1, v2

    .line 117
    .line 118
    .line 119
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 120
    move-result-object v0

    .line 121
    return-object v0
.end method
