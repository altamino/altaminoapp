.class public Lcom/google/firebase/appcheck/FirebaseAppCheckRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# static fields
.field private static final LIBRARY_NAME:Ljava/lang/String; = "fire-app-check"


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

.method public static synthetic a(Lcom/google/firebase/components/g0;Lcom/google/firebase/components/g0;Lcom/google/firebase/components/g0;Lcom/google/firebase/components/g0;Lcom/google/firebase/components/e;)Lx3/e;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/firebase/appcheck/FirebaseAppCheckRegistrar;->b(Lcom/google/firebase/components/g0;Lcom/google/firebase/components/g0;Lcom/google/firebase/components/g0;Lcom/google/firebase/components/g0;Lcom/google/firebase/components/e;)Lx3/e;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic b(Lcom/google/firebase/components/g0;Lcom/google/firebase/components/g0;Lcom/google/firebase/components/g0;Lcom/google/firebase/components/g0;Lcom/google/firebase/components/e;)Lx3/e;
    .locals 8

    .line 1
    .line 2
    new-instance v7, Lcom/google/firebase/appcheck/internal/h;

    .line 3
    .line 4
    const-class v0, Lcom/google/firebase/f;

    .line 5
    .line 6
    .line 7
    invoke-interface {p4, v0}, Lcom/google/firebase/components/e;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    move-object v1, v0

    .line 10
    .line 11
    check-cast v1, Lcom/google/firebase/f;

    .line 12
    .line 13
    const-class v0, Lm4/i;

    .line 14
    .line 15
    .line 16
    invoke-interface {p4, v0}, Lcom/google/firebase/components/e;->b(Ljava/lang/Class;)Lo4/b;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    .line 20
    invoke-interface {p4, p0}, Lcom/google/firebase/components/e;->g(Lcom/google/firebase/components/g0;)Ljava/lang/Object;

    .line 21
    move-result-object p0

    .line 22
    move-object v3, p0

    .line 23
    .line 24
    check-cast v3, Ljava/util/concurrent/Executor;

    .line 25
    .line 26
    .line 27
    invoke-interface {p4, p1}, Lcom/google/firebase/components/e;->g(Lcom/google/firebase/components/g0;)Ljava/lang/Object;

    .line 28
    move-result-object p0

    .line 29
    move-object v4, p0

    .line 30
    .line 31
    check-cast v4, Ljava/util/concurrent/Executor;

    .line 32
    .line 33
    .line 34
    invoke-interface {p4, p2}, Lcom/google/firebase/components/e;->g(Lcom/google/firebase/components/g0;)Ljava/lang/Object;

    .line 35
    move-result-object p0

    .line 36
    move-object v5, p0

    .line 37
    .line 38
    check-cast v5, Ljava/util/concurrent/Executor;

    .line 39
    .line 40
    .line 41
    invoke-interface {p4, p3}, Lcom/google/firebase/components/e;->g(Lcom/google/firebase/components/g0;)Ljava/lang/Object;

    .line 42
    move-result-object p0

    .line 43
    move-object v6, p0

    .line 44
    .line 45
    check-cast v6, Ljava/util/concurrent/ScheduledExecutorService;

    .line 46
    move-object v0, v7

    .line 47
    .line 48
    .line 49
    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/appcheck/internal/h;-><init>(Lcom/google/firebase/f;Lo4/b;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 50
    return-object v7
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 10
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
    const-class v0, Lw3/d;

    .line 3
    .line 4
    const-class v1, Ljava/util/concurrent/Executor;

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/google/firebase/components/g0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/firebase/components/g0;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    const-class v2, Lw3/c;

    .line 11
    .line 12
    .line 13
    invoke-static {v2, v1}, Lcom/google/firebase/components/g0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/firebase/components/g0;

    .line 14
    move-result-object v2

    .line 15
    .line 16
    const-class v3, Lw3/a;

    .line 17
    .line 18
    .line 19
    invoke-static {v3, v1}, Lcom/google/firebase/components/g0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/firebase/components/g0;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    const-class v3, Lw3/b;

    .line 23
    .line 24
    const-class v4, Ljava/util/concurrent/ScheduledExecutorService;

    .line 25
    .line 26
    .line 27
    invoke-static {v3, v4}, Lcom/google/firebase/components/g0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/firebase/components/g0;

    .line 28
    move-result-object v3

    .line 29
    const/4 v4, 0x3

    .line 30
    .line 31
    new-array v4, v4, [Lcom/google/firebase/components/c;

    .line 32
    const/4 v5, 0x1

    .line 33
    .line 34
    new-array v6, v5, [Ljava/lang/Class;

    .line 35
    .line 36
    const-class v7, Lz3/b;

    .line 37
    const/4 v8, 0x0

    .line 38
    .line 39
    aput-object v7, v6, v8

    .line 40
    .line 41
    const-class v7, Lx3/e;

    .line 42
    .line 43
    .line 44
    invoke-static {v7, v6}, Lcom/google/firebase/components/c;->f(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/google/firebase/components/c$b;

    .line 45
    move-result-object v6

    .line 46
    .line 47
    const-string v7, "fire-app-check"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v6, v7}, Lcom/google/firebase/components/c$b;->h(Ljava/lang/String;)Lcom/google/firebase/components/c$b;

    .line 51
    move-result-object v6

    .line 52
    .line 53
    const-class v9, Lcom/google/firebase/f;

    .line 54
    .line 55
    .line 56
    invoke-static {v9}, Lcom/google/firebase/components/s;->k(Ljava/lang/Class;)Lcom/google/firebase/components/s;

    .line 57
    move-result-object v9

    .line 58
    .line 59
    .line 60
    invoke-virtual {v6, v9}, Lcom/google/firebase/components/c$b;->b(Lcom/google/firebase/components/s;)Lcom/google/firebase/components/c$b;

    .line 61
    move-result-object v6

    .line 62
    .line 63
    .line 64
    invoke-static {v0}, Lcom/google/firebase/components/s;->j(Lcom/google/firebase/components/g0;)Lcom/google/firebase/components/s;

    .line 65
    move-result-object v9

    .line 66
    .line 67
    .line 68
    invoke-virtual {v6, v9}, Lcom/google/firebase/components/c$b;->b(Lcom/google/firebase/components/s;)Lcom/google/firebase/components/c$b;

    .line 69
    move-result-object v6

    .line 70
    .line 71
    .line 72
    invoke-static {v2}, Lcom/google/firebase/components/s;->j(Lcom/google/firebase/components/g0;)Lcom/google/firebase/components/s;

    .line 73
    move-result-object v9

    .line 74
    .line 75
    .line 76
    invoke-virtual {v6, v9}, Lcom/google/firebase/components/c$b;->b(Lcom/google/firebase/components/s;)Lcom/google/firebase/components/c$b;

    .line 77
    move-result-object v6

    .line 78
    .line 79
    .line 80
    invoke-static {v1}, Lcom/google/firebase/components/s;->j(Lcom/google/firebase/components/g0;)Lcom/google/firebase/components/s;

    .line 81
    move-result-object v9

    .line 82
    .line 83
    .line 84
    invoke-virtual {v6, v9}, Lcom/google/firebase/components/c$b;->b(Lcom/google/firebase/components/s;)Lcom/google/firebase/components/c$b;

    .line 85
    move-result-object v6

    .line 86
    .line 87
    .line 88
    invoke-static {v3}, Lcom/google/firebase/components/s;->j(Lcom/google/firebase/components/g0;)Lcom/google/firebase/components/s;

    .line 89
    move-result-object v9

    .line 90
    .line 91
    .line 92
    invoke-virtual {v6, v9}, Lcom/google/firebase/components/c$b;->b(Lcom/google/firebase/components/s;)Lcom/google/firebase/components/c$b;

    .line 93
    move-result-object v6

    .line 94
    .line 95
    const-class v9, Lm4/i;

    .line 96
    .line 97
    .line 98
    invoke-static {v9}, Lcom/google/firebase/components/s;->i(Ljava/lang/Class;)Lcom/google/firebase/components/s;

    .line 99
    move-result-object v9

    .line 100
    .line 101
    .line 102
    invoke-virtual {v6, v9}, Lcom/google/firebase/components/c$b;->b(Lcom/google/firebase/components/s;)Lcom/google/firebase/components/c$b;

    .line 103
    move-result-object v6

    .line 104
    .line 105
    new-instance v9, Lx3/f;

    .line 106
    .line 107
    .line 108
    invoke-direct {v9, v0, v2, v1, v3}, Lx3/f;-><init>(Lcom/google/firebase/components/g0;Lcom/google/firebase/components/g0;Lcom/google/firebase/components/g0;Lcom/google/firebase/components/g0;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v6, v9}, Lcom/google/firebase/components/c$b;->f(Lcom/google/firebase/components/h;)Lcom/google/firebase/components/c$b;

    .line 112
    move-result-object v0

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Lcom/google/firebase/components/c$b;->c()Lcom/google/firebase/components/c$b;

    .line 116
    move-result-object v0

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/google/firebase/components/c$b;->d()Lcom/google/firebase/components/c;

    .line 120
    move-result-object v0

    .line 121
    .line 122
    aput-object v0, v4, v8

    .line 123
    .line 124
    .line 125
    invoke-static {}, Lm4/h;->a()Lcom/google/firebase/components/c;

    .line 126
    move-result-object v0

    .line 127
    .line 128
    aput-object v0, v4, v5

    .line 129
    .line 130
    const-string v0, "17.1.1"

    .line 131
    .line 132
    .line 133
    invoke-static {v7, v0}, Lb5/h;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/components/c;

    .line 134
    move-result-object v0

    .line 135
    const/4 v1, 0x2

    .line 136
    .line 137
    aput-object v0, v4, v1

    .line 138
    .line 139
    .line 140
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 141
    move-result-object v0

    .line 142
    return-object v0
.end method
