.class public Lcom/google/firebase/appcheck/debug/FirebaseAppCheckDebugRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# static fields
.field private static final LIBRARY_NAME:Ljava/lang/String; = "fire-app-check-debug"


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

.method public static synthetic a(Lcom/google/firebase/components/g0;Lcom/google/firebase/components/g0;Lcom/google/firebase/components/g0;Lcom/google/firebase/components/e;)Lcom/google/firebase/appcheck/debug/internal/e;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/google/firebase/appcheck/debug/FirebaseAppCheckDebugRegistrar;->b(Lcom/google/firebase/components/g0;Lcom/google/firebase/components/g0;Lcom/google/firebase/components/g0;Lcom/google/firebase/components/e;)Lcom/google/firebase/appcheck/debug/internal/e;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic b(Lcom/google/firebase/components/g0;Lcom/google/firebase/components/g0;Lcom/google/firebase/components/g0;Lcom/google/firebase/components/e;)Lcom/google/firebase/appcheck/debug/internal/e;
    .locals 7

    .line 1
    .line 2
    new-instance v6, Lcom/google/firebase/appcheck/debug/internal/e;

    .line 3
    .line 4
    const-class v0, Lcom/google/firebase/f;

    .line 5
    .line 6
    .line 7
    invoke-interface {p3, v0}, Lcom/google/firebase/components/e;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    move-object v1, v0

    .line 10
    .line 11
    check-cast v1, Lcom/google/firebase/f;

    .line 12
    .line 13
    const-class v0, Ly3/b;

    .line 14
    .line 15
    .line 16
    invoke-interface {p3, v0}, Lcom/google/firebase/components/e;->b(Ljava/lang/Class;)Lo4/b;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    .line 20
    invoke-interface {p3, p0}, Lcom/google/firebase/components/e;->g(Lcom/google/firebase/components/g0;)Ljava/lang/Object;

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
    invoke-interface {p3, p1}, Lcom/google/firebase/components/e;->g(Lcom/google/firebase/components/g0;)Ljava/lang/Object;

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
    invoke-interface {p3, p2}, Lcom/google/firebase/components/e;->g(Lcom/google/firebase/components/g0;)Ljava/lang/Object;

    .line 35
    move-result-object p0

    .line 36
    move-object v5, p0

    .line 37
    .line 38
    check-cast v5, Ljava/util/concurrent/Executor;

    .line 39
    move-object v0, v6

    .line 40
    .line 41
    .line 42
    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/appcheck/debug/internal/e;-><init>(Lcom/google/firebase/f;Lo4/b;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    .line 43
    return-object v6
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
    const-class v0, Lw3/c;

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
    const-class v2, Lw3/a;

    .line 11
    .line 12
    .line 13
    invoke-static {v2, v1}, Lcom/google/firebase/components/g0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/firebase/components/g0;

    .line 14
    move-result-object v2

    .line 15
    .line 16
    const-class v3, Lw3/b;

    .line 17
    .line 18
    .line 19
    invoke-static {v3, v1}, Lcom/google/firebase/components/g0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/firebase/components/g0;

    .line 20
    move-result-object v1

    .line 21
    const/4 v3, 0x2

    .line 22
    .line 23
    new-array v3, v3, [Lcom/google/firebase/components/c;

    .line 24
    .line 25
    const-class v4, Lcom/google/firebase/appcheck/debug/internal/e;

    .line 26
    .line 27
    .line 28
    invoke-static {v4}, Lcom/google/firebase/components/c;->e(Ljava/lang/Class;)Lcom/google/firebase/components/c$b;

    .line 29
    move-result-object v4

    .line 30
    .line 31
    const-string v5, "fire-app-check-debug"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4, v5}, Lcom/google/firebase/components/c$b;->h(Ljava/lang/String;)Lcom/google/firebase/components/c$b;

    .line 35
    move-result-object v4

    .line 36
    .line 37
    const-class v6, Lcom/google/firebase/f;

    .line 38
    .line 39
    .line 40
    invoke-static {v6}, Lcom/google/firebase/components/s;->k(Ljava/lang/Class;)Lcom/google/firebase/components/s;

    .line 41
    move-result-object v6

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4, v6}, Lcom/google/firebase/components/c$b;->b(Lcom/google/firebase/components/s;)Lcom/google/firebase/components/c$b;

    .line 45
    move-result-object v4

    .line 46
    .line 47
    const-class v6, Ly3/b;

    .line 48
    .line 49
    .line 50
    invoke-static {v6}, Lcom/google/firebase/components/s;->i(Ljava/lang/Class;)Lcom/google/firebase/components/s;

    .line 51
    move-result-object v6

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4, v6}, Lcom/google/firebase/components/c$b;->b(Lcom/google/firebase/components/s;)Lcom/google/firebase/components/c$b;

    .line 55
    move-result-object v4

    .line 56
    .line 57
    .line 58
    invoke-static {v0}, Lcom/google/firebase/components/s;->j(Lcom/google/firebase/components/g0;)Lcom/google/firebase/components/s;

    .line 59
    move-result-object v6

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4, v6}, Lcom/google/firebase/components/c$b;->b(Lcom/google/firebase/components/s;)Lcom/google/firebase/components/c$b;

    .line 63
    move-result-object v4

    .line 64
    .line 65
    .line 66
    invoke-static {v2}, Lcom/google/firebase/components/s;->j(Lcom/google/firebase/components/g0;)Lcom/google/firebase/components/s;

    .line 67
    move-result-object v6

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4, v6}, Lcom/google/firebase/components/c$b;->b(Lcom/google/firebase/components/s;)Lcom/google/firebase/components/c$b;

    .line 71
    move-result-object v4

    .line 72
    .line 73
    .line 74
    invoke-static {v1}, Lcom/google/firebase/components/s;->j(Lcom/google/firebase/components/g0;)Lcom/google/firebase/components/s;

    .line 75
    move-result-object v6

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4, v6}, Lcom/google/firebase/components/c$b;->b(Lcom/google/firebase/components/s;)Lcom/google/firebase/components/c$b;

    .line 79
    move-result-object v4

    .line 80
    .line 81
    new-instance v6, Ly3/a;

    .line 82
    .line 83
    .line 84
    invoke-direct {v6, v0, v2, v1}, Ly3/a;-><init>(Lcom/google/firebase/components/g0;Lcom/google/firebase/components/g0;Lcom/google/firebase/components/g0;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4, v6}, Lcom/google/firebase/components/c$b;->f(Lcom/google/firebase/components/h;)Lcom/google/firebase/components/c$b;

    .line 88
    move-result-object v0

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/google/firebase/components/c$b;->d()Lcom/google/firebase/components/c;

    .line 92
    move-result-object v0

    .line 93
    const/4 v1, 0x0

    .line 94
    .line 95
    aput-object v0, v3, v1

    .line 96
    .line 97
    const-string v0, "17.1.1"

    .line 98
    .line 99
    .line 100
    invoke-static {v5, v0}, Lb5/h;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/components/c;

    .line 101
    move-result-object v0

    .line 102
    const/4 v1, 0x1

    .line 103
    .line 104
    aput-object v0, v3, v1

    .line 105
    .line 106
    .line 107
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 108
    move-result-object v0

    .line 109
    return-object v0
.end method
