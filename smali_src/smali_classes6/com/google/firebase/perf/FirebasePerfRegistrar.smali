.class public Lcom/google/firebase/perf/FirebasePerfRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final EARLY_LIBRARY_NAME:Ljava/lang/String; = "fire-perf-early"

.field private static final LIBRARY_NAME:Ljava/lang/String; = "fire-perf"


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

.method public static synthetic a(Lcom/google/firebase/components/e;)Lv4/e;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/perf/FirebasePerfRegistrar;->providesFirebasePerformance(Lcom/google/firebase/components/e;)Lv4/e;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/google/firebase/components/g0;Lcom/google/firebase/components/e;)Lv4/b;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/firebase/perf/FirebasePerfRegistrar;->lambda$getComponents$0(Lcom/google/firebase/components/g0;Lcom/google/firebase/components/e;)Lv4/b;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getComponents$0(Lcom/google/firebase/components/g0;Lcom/google/firebase/components/e;)Lv4/b;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lv4/b;

    .line 3
    .line 4
    const-class v1, Lcom/google/firebase/f;

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, v1}, Lcom/google/firebase/components/e;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    check-cast v1, Lcom/google/firebase/f;

    .line 11
    .line 12
    const-class v2, Lcom/google/firebase/o;

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v2}, Lcom/google/firebase/components/e;->b(Ljava/lang/Class;)Lo4/b;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    .line 19
    invoke-interface {v2}, Lo4/b;->get()Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    check-cast v2, Lcom/google/firebase/o;

    .line 23
    .line 24
    .line 25
    invoke-interface {p1, p0}, Lcom/google/firebase/components/e;->g(Lcom/google/firebase/components/g0;)Ljava/lang/Object;

    .line 26
    move-result-object p0

    .line 27
    .line 28
    check-cast p0, Ljava/util/concurrent/Executor;

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v1, v2, p0}, Lv4/b;-><init>(Lcom/google/firebase/f;Lcom/google/firebase/o;Ljava/util/concurrent/Executor;)V

    .line 32
    return-object v0
.end method

.method private static providesFirebasePerformance(Lcom/google/firebase/components/e;)Lv4/e;
    .locals 6

    .line 1
    .line 2
    const-class v0, Lv4/b;

    .line 3
    .line 4
    .line 5
    invoke-interface {p0, v0}, Lcom/google/firebase/components/e;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lw4/a;->b()Lw4/a$b;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    new-instance v1, Lx4/a;

    .line 12
    .line 13
    const-class v2, Lcom/google/firebase/f;

    .line 14
    .line 15
    .line 16
    invoke-interface {p0, v2}, Lcom/google/firebase/components/e;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    check-cast v2, Lcom/google/firebase/f;

    .line 20
    .line 21
    const-class v3, Lcom/google/firebase/installations/h;

    .line 22
    .line 23
    .line 24
    invoke-interface {p0, v3}, Lcom/google/firebase/components/e;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    move-result-object v3

    .line 26
    .line 27
    check-cast v3, Lcom/google/firebase/installations/h;

    .line 28
    .line 29
    const-class v4, Lcom/google/firebase/remoteconfig/c;

    .line 30
    .line 31
    .line 32
    invoke-interface {p0, v4}, Lcom/google/firebase/components/e;->b(Ljava/lang/Class;)Lo4/b;

    .line 33
    move-result-object v4

    .line 34
    .line 35
    const-class v5, Lf2/g;

    .line 36
    .line 37
    .line 38
    invoke-interface {p0, v5}, Lcom/google/firebase/components/e;->b(Ljava/lang/Class;)Lo4/b;

    .line 39
    move-result-object p0

    .line 40
    .line 41
    .line 42
    invoke-direct {v1, v2, v3, v4, p0}, Lx4/a;-><init>(Lcom/google/firebase/f;Lcom/google/firebase/installations/h;Lo4/b;Lo4/b;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lw4/a$b;->b(Lx4/a;)Lw4/a$b;

    .line 46
    move-result-object p0

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lw4/a$b;->a()Lw4/b;

    .line 50
    move-result-object p0

    .line 51
    .line 52
    .line 53
    invoke-interface {p0}, Lw4/b;->a()Lv4/e;

    .line 54
    move-result-object p0

    .line 55
    return-object p0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 7
    .annotation build Landroidx/annotation/Keep;
    .end annotation

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
    const/4 v1, 0x3

    .line 10
    .line 11
    new-array v1, v1, [Lcom/google/firebase/components/c;

    .line 12
    .line 13
    const-class v2, Lv4/e;

    .line 14
    .line 15
    .line 16
    invoke-static {v2}, Lcom/google/firebase/components/c;->e(Ljava/lang/Class;)Lcom/google/firebase/components/c$b;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    const-string v3, "fire-perf"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v3}, Lcom/google/firebase/components/c$b;->h(Ljava/lang/String;)Lcom/google/firebase/components/c$b;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    const-class v4, Lcom/google/firebase/f;

    .line 26
    .line 27
    .line 28
    invoke-static {v4}, Lcom/google/firebase/components/s;->k(Ljava/lang/Class;)Lcom/google/firebase/components/s;

    .line 29
    move-result-object v5

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v5}, Lcom/google/firebase/components/c$b;->b(Lcom/google/firebase/components/s;)Lcom/google/firebase/components/c$b;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    const-class v5, Lcom/google/firebase/remoteconfig/c;

    .line 36
    .line 37
    .line 38
    invoke-static {v5}, Lcom/google/firebase/components/s;->m(Ljava/lang/Class;)Lcom/google/firebase/components/s;

    .line 39
    move-result-object v5

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v5}, Lcom/google/firebase/components/c$b;->b(Lcom/google/firebase/components/s;)Lcom/google/firebase/components/c$b;

    .line 43
    move-result-object v2

    .line 44
    .line 45
    const-class v5, Lcom/google/firebase/installations/h;

    .line 46
    .line 47
    .line 48
    invoke-static {v5}, Lcom/google/firebase/components/s;->k(Ljava/lang/Class;)Lcom/google/firebase/components/s;

    .line 49
    move-result-object v5

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v5}, Lcom/google/firebase/components/c$b;->b(Lcom/google/firebase/components/s;)Lcom/google/firebase/components/c$b;

    .line 53
    move-result-object v2

    .line 54
    .line 55
    const-class v5, Lf2/g;

    .line 56
    .line 57
    .line 58
    invoke-static {v5}, Lcom/google/firebase/components/s;->m(Ljava/lang/Class;)Lcom/google/firebase/components/s;

    .line 59
    move-result-object v5

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v5}, Lcom/google/firebase/components/c$b;->b(Lcom/google/firebase/components/s;)Lcom/google/firebase/components/c$b;

    .line 63
    move-result-object v2

    .line 64
    .line 65
    const-class v5, Lv4/b;

    .line 66
    .line 67
    .line 68
    invoke-static {v5}, Lcom/google/firebase/components/s;->k(Ljava/lang/Class;)Lcom/google/firebase/components/s;

    .line 69
    move-result-object v6

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v6}, Lcom/google/firebase/components/c$b;->b(Lcom/google/firebase/components/s;)Lcom/google/firebase/components/c$b;

    .line 73
    move-result-object v2

    .line 74
    .line 75
    new-instance v6, Lv4/c;

    .line 76
    .line 77
    .line 78
    invoke-direct {v6}, Lv4/c;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v6}, Lcom/google/firebase/components/c$b;->f(Lcom/google/firebase/components/h;)Lcom/google/firebase/components/c$b;

    .line 82
    move-result-object v2

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2}, Lcom/google/firebase/components/c$b;->d()Lcom/google/firebase/components/c;

    .line 86
    move-result-object v2

    .line 87
    const/4 v6, 0x0

    .line 88
    .line 89
    aput-object v2, v1, v6

    .line 90
    .line 91
    .line 92
    invoke-static {v5}, Lcom/google/firebase/components/c;->e(Ljava/lang/Class;)Lcom/google/firebase/components/c$b;

    .line 93
    move-result-object v2

    .line 94
    .line 95
    const-string v5, "fire-perf-early"

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2, v5}, Lcom/google/firebase/components/c$b;->h(Ljava/lang/String;)Lcom/google/firebase/components/c$b;

    .line 99
    move-result-object v2

    .line 100
    .line 101
    .line 102
    invoke-static {v4}, Lcom/google/firebase/components/s;->k(Ljava/lang/Class;)Lcom/google/firebase/components/s;

    .line 103
    move-result-object v4

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2, v4}, Lcom/google/firebase/components/c$b;->b(Lcom/google/firebase/components/s;)Lcom/google/firebase/components/c$b;

    .line 107
    move-result-object v2

    .line 108
    .line 109
    const-class v4, Lcom/google/firebase/o;

    .line 110
    .line 111
    .line 112
    invoke-static {v4}, Lcom/google/firebase/components/s;->i(Ljava/lang/Class;)Lcom/google/firebase/components/s;

    .line 113
    move-result-object v4

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2, v4}, Lcom/google/firebase/components/c$b;->b(Lcom/google/firebase/components/s;)Lcom/google/firebase/components/c$b;

    .line 117
    move-result-object v2

    .line 118
    .line 119
    .line 120
    invoke-static {v0}, Lcom/google/firebase/components/s;->j(Lcom/google/firebase/components/g0;)Lcom/google/firebase/components/s;

    .line 121
    move-result-object v4

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2, v4}, Lcom/google/firebase/components/c$b;->b(Lcom/google/firebase/components/s;)Lcom/google/firebase/components/c$b;

    .line 125
    move-result-object v2

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2}, Lcom/google/firebase/components/c$b;->e()Lcom/google/firebase/components/c$b;

    .line 129
    move-result-object v2

    .line 130
    .line 131
    new-instance v4, Lv4/d;

    .line 132
    .line 133
    .line 134
    invoke-direct {v4, v0}, Lv4/d;-><init>(Lcom/google/firebase/components/g0;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2, v4}, Lcom/google/firebase/components/c$b;->f(Lcom/google/firebase/components/h;)Lcom/google/firebase/components/c$b;

    .line 138
    move-result-object v0

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Lcom/google/firebase/components/c$b;->d()Lcom/google/firebase/components/c;

    .line 142
    move-result-object v0

    .line 143
    const/4 v2, 0x1

    .line 144
    .line 145
    aput-object v0, v1, v2

    .line 146
    .line 147
    const-string v0, "20.5.1"

    .line 148
    .line 149
    .line 150
    invoke-static {v3, v0}, Lb5/h;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/components/c;

    .line 151
    move-result-object v0

    .line 152
    const/4 v2, 0x2

    .line 153
    .line 154
    aput-object v0, v1, v2

    .line 155
    .line 156
    .line 157
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 158
    move-result-object v0

    .line 159
    return-object v0
.end method
