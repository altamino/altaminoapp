.class public final Lcom/google/firebase/dynamiclinks/internal/FirebaseDynamicLinkRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# static fields
.field private static final LIBRARY_NAME:Ljava/lang/String; = "fire-dl"


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

.method public static synthetic a(Lcom/google/firebase/components/e;)Lh4/a;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/dynamiclinks/internal/FirebaseDynamicLinkRegistrar;->lambda$getComponents$0(Lcom/google/firebase/components/e;)Lh4/a;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getComponents$0(Lcom/google/firebase/components/e;)Lh4/a;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/dynamiclinks/internal/f;

    .line 3
    .line 4
    const-class v1, Lcom/google/firebase/f;

    .line 5
    .line 6
    .line 7
    invoke-interface {p0, v1}, Lcom/google/firebase/components/e;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    check-cast v1, Lcom/google/firebase/f;

    .line 11
    .line 12
    const-class v2, Lcom/google/firebase/analytics/connector/a;

    .line 13
    .line 14
    .line 15
    invoke-interface {p0, v2}, Lcom/google/firebase/components/e;->b(Ljava/lang/Class;)Lo4/b;

    .line 16
    move-result-object p0

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1, p0}, Lcom/google/firebase/dynamiclinks/internal/f;-><init>(Lcom/google/firebase/f;Lo4/b;)V

    .line 20
    return-object v0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 4
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
    const-class v0, Lh4/a;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/firebase/components/c;->e(Ljava/lang/Class;)Lcom/google/firebase/components/c$b;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "fire-dl"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/google/firebase/components/c$b;->h(Ljava/lang/String;)Lcom/google/firebase/components/c$b;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    const-class v2, Lcom/google/firebase/f;

    .line 15
    .line 16
    .line 17
    invoke-static {v2}, Lcom/google/firebase/components/s;->k(Ljava/lang/Class;)Lcom/google/firebase/components/s;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v2}, Lcom/google/firebase/components/c$b;->b(Lcom/google/firebase/components/s;)Lcom/google/firebase/components/c$b;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    const-class v2, Lcom/google/firebase/analytics/connector/a;

    .line 25
    .line 26
    .line 27
    invoke-static {v2}, Lcom/google/firebase/components/s;->i(Ljava/lang/Class;)Lcom/google/firebase/components/s;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v2}, Lcom/google/firebase/components/c$b;->b(Lcom/google/firebase/components/s;)Lcom/google/firebase/components/c$b;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    new-instance v2, Lcom/google/firebase/dynamiclinks/internal/e;

    .line 35
    .line 36
    .line 37
    invoke-direct {v2}, Lcom/google/firebase/dynamiclinks/internal/e;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v2}, Lcom/google/firebase/components/c$b;->f(Lcom/google/firebase/components/h;)Lcom/google/firebase/components/c$b;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/google/firebase/components/c$b;->d()Lcom/google/firebase/components/c;

    .line 45
    move-result-object v0

    .line 46
    const/4 v2, 0x2

    .line 47
    .line 48
    new-array v2, v2, [Lcom/google/firebase/components/c;

    .line 49
    const/4 v3, 0x0

    .line 50
    .line 51
    aput-object v0, v2, v3

    .line 52
    .line 53
    const-string v0, "21.2.0"

    .line 54
    .line 55
    .line 56
    invoke-static {v1, v0}, Lb5/h;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/components/c;

    .line 57
    move-result-object v0

    .line 58
    const/4 v1, 0x1

    .line 59
    .line 60
    aput-object v0, v2, v1

    .line 61
    .line 62
    .line 63
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 64
    move-result-object v0

    .line 65
    return-object v0
.end method
