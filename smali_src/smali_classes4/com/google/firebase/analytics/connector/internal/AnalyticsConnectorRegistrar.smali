.class public Lcom/google/firebase/analytics/connector/internal/AnalyticsConnectorRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$getComponents$0(Lcom/google/firebase/components/e;)Lcom/google/firebase/analytics/connector/a;
    .locals 3

    .line 1
    .line 2
    const-class v0, Lcom/google/firebase/f;

    .line 3
    .line 4
    .line 5
    invoke-interface {p0, v0}, Lcom/google/firebase/components/e;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/google/firebase/f;

    .line 9
    .line 10
    const-class v1, Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    invoke-interface {p0, v1}, Lcom/google/firebase/components/e;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    check-cast v1, Landroid/content/Context;

    .line 17
    .line 18
    const-class v2, Ll4/d;

    .line 19
    .line 20
    .line 21
    invoke-interface {p0, v2}, Lcom/google/firebase/components/e;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 22
    move-result-object p0

    .line 23
    .line 24
    check-cast p0, Ll4/d;

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v1, p0}, Lcom/google/firebase/analytics/connector/b;->h(Lcom/google/firebase/f;Landroid/content/Context;Ll4/d;)Lcom/google/firebase/analytics/connector/a;

    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
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
    const/4 v0, 0x2

    .line 2
    .line 3
    new-array v0, v0, [Lcom/google/firebase/components/c;

    .line 4
    .line 5
    const-class v1, Lcom/google/firebase/analytics/connector/a;

    .line 6
    .line 7
    .line 8
    invoke-static {v1}, Lcom/google/firebase/components/c;->e(Ljava/lang/Class;)Lcom/google/firebase/components/c$b;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    const-class v2, Lcom/google/firebase/f;

    .line 12
    .line 13
    .line 14
    invoke-static {v2}, Lcom/google/firebase/components/s;->k(Ljava/lang/Class;)Lcom/google/firebase/components/s;

    .line 15
    move-result-object v2

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Lcom/google/firebase/components/c$b;->b(Lcom/google/firebase/components/s;)Lcom/google/firebase/components/c$b;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    const-class v2, Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    invoke-static {v2}, Lcom/google/firebase/components/s;->k(Ljava/lang/Class;)Lcom/google/firebase/components/s;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Lcom/google/firebase/components/c$b;->b(Lcom/google/firebase/components/s;)Lcom/google/firebase/components/c$b;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    const-class v2, Ll4/d;

    .line 32
    .line 33
    .line 34
    invoke-static {v2}, Lcom/google/firebase/components/s;->k(Ljava/lang/Class;)Lcom/google/firebase/components/s;

    .line 35
    move-result-object v2

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2}, Lcom/google/firebase/components/c$b;->b(Lcom/google/firebase/components/s;)Lcom/google/firebase/components/c$b;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    sget-object v2, Lcom/google/firebase/analytics/connector/internal/b;->zza:Lcom/google/firebase/analytics/connector/internal/b;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2}, Lcom/google/firebase/components/c$b;->f(Lcom/google/firebase/components/h;)Lcom/google/firebase/components/c$b;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/google/firebase/components/c$b;->e()Lcom/google/firebase/components/c$b;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/google/firebase/components/c$b;->d()Lcom/google/firebase/components/c;

    .line 53
    move-result-object v1

    .line 54
    const/4 v2, 0x0

    .line 55
    .line 56
    aput-object v1, v0, v2

    .line 57
    .line 58
    const-string v1, "fire-analytics"

    .line 59
    .line 60
    const-string v2, "21.5.0"

    .line 61
    .line 62
    .line 63
    invoke-static {v1, v2}, Lb5/h;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/components/c;

    .line 64
    move-result-object v1

    .line 65
    const/4 v2, 0x1

    .line 66
    .line 67
    aput-object v1, v0, v2

    .line 68
    .line 69
    .line 70
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 71
    move-result-object v0

    .line 72
    return-object v0
.end method
