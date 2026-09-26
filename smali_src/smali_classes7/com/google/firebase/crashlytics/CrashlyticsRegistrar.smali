.class public Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# static fields
.field private static final LIBRARY_NAME:Ljava/lang/String; = "fire-cls"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/google/firebase/sessions/api/a;->INSTANCE:Lcom/google/firebase/sessions/api/a;

    .line 3
    .line 4
    sget-object v1, Lcom/google/firebase/sessions/api/b$a;->CRASHLYTICS:Lcom/google/firebase/sessions/api/b$a;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/google/firebase/sessions/api/a;->a(Lcom/google/firebase/sessions/api/b$a;)V

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static synthetic a(Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;Lcom/google/firebase/components/e;)Lcom/google/firebase/crashlytics/g;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;->b(Lcom/google/firebase/components/e;)Lcom/google/firebase/crashlytics/g;

    move-result-object p0

    return-object p0
.end method

.method private b(Lcom/google/firebase/components/e;)Lcom/google/firebase/crashlytics/g;
    .locals 5

    .line 1
    .line 2
    const-class v0, Lcom/google/firebase/f;

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, v0}, Lcom/google/firebase/components/e;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/google/firebase/f;

    .line 9
    .line 10
    const-class v1, Lcom/google/firebase/crashlytics/internal/a;

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, v1}, Lcom/google/firebase/components/e;->h(Ljava/lang/Class;)Lo4/a;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    const-class v2, Lcom/google/firebase/analytics/connector/a;

    .line 17
    .line 18
    .line 19
    invoke-interface {p1, v2}, Lcom/google/firebase/components/e;->h(Ljava/lang/Class;)Lo4/a;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    const-class v3, Lcom/google/firebase/installations/h;

    .line 23
    .line 24
    .line 25
    invoke-interface {p1, v3}, Lcom/google/firebase/components/e;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 26
    move-result-object v3

    .line 27
    .line 28
    check-cast v3, Lcom/google/firebase/installations/h;

    .line 29
    .line 30
    const-class v4, Ld5/a;

    .line 31
    .line 32
    .line 33
    invoke-interface {p1, v4}, Lcom/google/firebase/components/e;->h(Ljava/lang/Class;)Lo4/a;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    .line 37
    invoke-static {v0, v3, v1, v2, p1}, Lcom/google/firebase/crashlytics/g;->b(Lcom/google/firebase/f;Lcom/google/firebase/installations/h;Lo4/a;Lo4/a;Lo4/a;)Lcom/google/firebase/crashlytics/g;

    .line 38
    move-result-object p1

    .line 39
    return-object p1
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/components/c<",
            "*>;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    new-array v0, v0, [Lcom/google/firebase/components/c;

    .line 4
    .line 5
    const-class v1, Lcom/google/firebase/crashlytics/g;

    .line 6
    .line 7
    .line 8
    invoke-static {v1}, Lcom/google/firebase/components/c;->e(Ljava/lang/Class;)Lcom/google/firebase/components/c$b;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    const-string v2, "fire-cls"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Lcom/google/firebase/components/c$b;->h(Ljava/lang/String;)Lcom/google/firebase/components/c$b;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    const-class v3, Lcom/google/firebase/f;

    .line 18
    .line 19
    .line 20
    invoke-static {v3}, Lcom/google/firebase/components/s;->k(Ljava/lang/Class;)Lcom/google/firebase/components/s;

    .line 21
    move-result-object v3

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v3}, Lcom/google/firebase/components/c$b;->b(Lcom/google/firebase/components/s;)Lcom/google/firebase/components/c$b;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    const-class v3, Lcom/google/firebase/installations/h;

    .line 28
    .line 29
    .line 30
    invoke-static {v3}, Lcom/google/firebase/components/s;->k(Ljava/lang/Class;)Lcom/google/firebase/components/s;

    .line 31
    move-result-object v3

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v3}, Lcom/google/firebase/components/c$b;->b(Lcom/google/firebase/components/s;)Lcom/google/firebase/components/c$b;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    const-class v3, Lcom/google/firebase/crashlytics/internal/a;

    .line 38
    .line 39
    .line 40
    invoke-static {v3}, Lcom/google/firebase/components/s;->a(Ljava/lang/Class;)Lcom/google/firebase/components/s;

    .line 41
    move-result-object v3

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v3}, Lcom/google/firebase/components/c$b;->b(Lcom/google/firebase/components/s;)Lcom/google/firebase/components/c$b;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    const-class v3, Lcom/google/firebase/analytics/connector/a;

    .line 48
    .line 49
    .line 50
    invoke-static {v3}, Lcom/google/firebase/components/s;->a(Ljava/lang/Class;)Lcom/google/firebase/components/s;

    .line 51
    move-result-object v3

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v3}, Lcom/google/firebase/components/c$b;->b(Lcom/google/firebase/components/s;)Lcom/google/firebase/components/c$b;

    .line 55
    move-result-object v1

    .line 56
    .line 57
    const-class v3, Ld5/a;

    .line 58
    .line 59
    .line 60
    invoke-static {v3}, Lcom/google/firebase/components/s;->a(Ljava/lang/Class;)Lcom/google/firebase/components/s;

    .line 61
    move-result-object v3

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v3}, Lcom/google/firebase/components/c$b;->b(Lcom/google/firebase/components/s;)Lcom/google/firebase/components/c$b;

    .line 65
    move-result-object v1

    .line 66
    .line 67
    new-instance v3, Lcom/google/firebase/crashlytics/f;

    .line 68
    .line 69
    .line 70
    invoke-direct {v3, p0}, Lcom/google/firebase/crashlytics/f;-><init>(Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v3}, Lcom/google/firebase/components/c$b;->f(Lcom/google/firebase/components/h;)Lcom/google/firebase/components/c$b;

    .line 74
    move-result-object v1

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Lcom/google/firebase/components/c$b;->e()Lcom/google/firebase/components/c$b;

    .line 78
    move-result-object v1

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Lcom/google/firebase/components/c$b;->d()Lcom/google/firebase/components/c;

    .line 82
    move-result-object v1

    .line 83
    const/4 v3, 0x0

    .line 84
    .line 85
    aput-object v1, v0, v3

    .line 86
    .line 87
    const-string v1, "18.6.0"

    .line 88
    .line 89
    .line 90
    invoke-static {v2, v1}, Lb5/h;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/components/c;

    .line 91
    move-result-object v1

    .line 92
    const/4 v2, 0x1

    .line 93
    .line 94
    aput-object v1, v0, v2

    .line 95
    .line 96
    .line 97
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 98
    move-result-object v0

    .line 99
    return-object v0
.end method
