.class public Lcom/google/firebase/appcheck/playintegrity/FirebaseAppCheckPlayIntegrityRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# static fields
.field private static final LIBRARY_NAME:Ljava/lang/String; = "fire-app-check-play-integrity"


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

.method public static synthetic a(Lcom/google/firebase/components/g0;Lcom/google/firebase/components/g0;Lcom/google/firebase/components/e;)Lcom/google/firebase/appcheck/playintegrity/internal/i;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/firebase/appcheck/playintegrity/FirebaseAppCheckPlayIntegrityRegistrar;->b(Lcom/google/firebase/components/g0;Lcom/google/firebase/components/g0;Lcom/google/firebase/components/e;)Lcom/google/firebase/appcheck/playintegrity/internal/i;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic b(Lcom/google/firebase/components/g0;Lcom/google/firebase/components/g0;Lcom/google/firebase/components/e;)Lcom/google/firebase/appcheck/playintegrity/internal/i;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/appcheck/playintegrity/internal/i;

    .line 3
    .line 4
    const-class v1, Lcom/google/firebase/f;

    .line 5
    .line 6
    .line 7
    invoke-interface {p2, v1}, Lcom/google/firebase/components/e;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    check-cast v1, Lcom/google/firebase/f;

    .line 11
    .line 12
    .line 13
    invoke-interface {p2, p0}, Lcom/google/firebase/components/e;->g(Lcom/google/firebase/components/g0;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 15
    .line 16
    check-cast p0, Ljava/util/concurrent/Executor;

    .line 17
    .line 18
    .line 19
    invoke-interface {p2, p1}, Lcom/google/firebase/components/e;->g(Lcom/google/firebase/components/g0;)Ljava/lang/Object;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    check-cast p1, Ljava/util/concurrent/Executor;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v1, p0, p1}, Lcom/google/firebase/appcheck/playintegrity/internal/i;-><init>(Lcom/google/firebase/f;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    .line 26
    return-object v0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 6
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
    const-class v2, Lw3/b;

    .line 11
    .line 12
    .line 13
    invoke-static {v2, v1}, Lcom/google/firebase/components/g0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/firebase/components/g0;

    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x2

    .line 16
    .line 17
    new-array v2, v2, [Lcom/google/firebase/components/c;

    .line 18
    .line 19
    const-class v3, Lcom/google/firebase/appcheck/playintegrity/internal/i;

    .line 20
    .line 21
    .line 22
    invoke-static {v3}, Lcom/google/firebase/components/c;->e(Ljava/lang/Class;)Lcom/google/firebase/components/c$b;

    .line 23
    move-result-object v3

    .line 24
    .line 25
    const-string v4, "fire-app-check-play-integrity"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, v4}, Lcom/google/firebase/components/c$b;->h(Ljava/lang/String;)Lcom/google/firebase/components/c$b;

    .line 29
    move-result-object v3

    .line 30
    .line 31
    const-class v5, Lcom/google/firebase/f;

    .line 32
    .line 33
    .line 34
    invoke-static {v5}, Lcom/google/firebase/components/s;->k(Ljava/lang/Class;)Lcom/google/firebase/components/s;

    .line 35
    move-result-object v5

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v5}, Lcom/google/firebase/components/c$b;->b(Lcom/google/firebase/components/s;)Lcom/google/firebase/components/c$b;

    .line 39
    move-result-object v3

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Lcom/google/firebase/components/s;->j(Lcom/google/firebase/components/g0;)Lcom/google/firebase/components/s;

    .line 43
    move-result-object v5

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v5}, Lcom/google/firebase/components/c$b;->b(Lcom/google/firebase/components/s;)Lcom/google/firebase/components/c$b;

    .line 47
    move-result-object v3

    .line 48
    .line 49
    .line 50
    invoke-static {v1}, Lcom/google/firebase/components/s;->j(Lcom/google/firebase/components/g0;)Lcom/google/firebase/components/s;

    .line 51
    move-result-object v5

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v5}, Lcom/google/firebase/components/c$b;->b(Lcom/google/firebase/components/s;)Lcom/google/firebase/components/c$b;

    .line 55
    move-result-object v3

    .line 56
    .line 57
    new-instance v5, La4/a;

    .line 58
    .line 59
    .line 60
    invoke-direct {v5, v0, v1}, La4/a;-><init>(Lcom/google/firebase/components/g0;Lcom/google/firebase/components/g0;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, v5}, Lcom/google/firebase/components/c$b;->f(Lcom/google/firebase/components/h;)Lcom/google/firebase/components/c$b;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/google/firebase/components/c$b;->d()Lcom/google/firebase/components/c;

    .line 68
    move-result-object v0

    .line 69
    const/4 v1, 0x0

    .line 70
    .line 71
    aput-object v0, v2, v1

    .line 72
    .line 73
    const-string v0, "17.1.1"

    .line 74
    .line 75
    .line 76
    invoke-static {v4, v0}, Lb5/h;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/components/c;

    .line 77
    move-result-object v0

    .line 78
    const/4 v1, 0x1

    .line 79
    .line 80
    aput-object v0, v2, v1

    .line 81
    .line 82
    .line 83
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 84
    move-result-object v0

    .line 85
    return-object v0
.end method
