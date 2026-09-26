.class public final Lw4/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw4/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw4/a$b;
    }
.end annotation


# instance fields
.field private firebasePerformanceProvider:Lv7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv7/a<",
            "Lv4/e;",
            ">;"
        }
    .end annotation
.end field

.field private providesConfigResolverProvider:Lv7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv7/a<",
            "Lcom/google/firebase/perf/config/a;",
            ">;"
        }
    .end annotation
.end field

.field private providesFirebaseAppProvider:Lv7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv7/a<",
            "Lcom/google/firebase/f;",
            ">;"
        }
    .end annotation
.end field

.field private providesFirebaseInstallationsProvider:Lv7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv7/a<",
            "Lcom/google/firebase/installations/h;",
            ">;"
        }
    .end annotation
.end field

.field private providesRemoteConfigComponentProvider:Lv7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv7/a<",
            "Lo4/b<",
            "Lcom/google/firebase/remoteconfig/c;",
            ">;>;"
        }
    .end annotation
.end field

.field private providesRemoteConfigManagerProvider:Lv7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv7/a<",
            "Lcom/google/firebase/perf/config/RemoteConfigManager;",
            ">;"
        }
    .end annotation
.end field

.field private providesSessionManagerProvider:Lv7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv7/a<",
            "Lcom/google/firebase/perf/session/SessionManager;",
            ">;"
        }
    .end annotation
.end field

.field private providesTransportFactoryProvider:Lv7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv7/a<",
            "Lo4/b<",
            "Lf2/g;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lx4/a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-direct {p0, p1}, Lw4/a;->c(Lx4/a;)V

    return-void
.end method

.method synthetic constructor <init>(Lx4/a;Lw4/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lw4/a;-><init>(Lx4/a;)V

    return-void
.end method

.method public static b()Lw4/a$b;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lw4/a$b;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lw4/a$b;-><init>(Lw4/a$a;)V

    .line 7
    return-object v0
.end method

.method private c(Lx4/a;)V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lx4/c;->a(Lx4/a;)Lx4/c;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iput-object v0, p0, Lw4/a;->providesFirebaseAppProvider:Lv7/a;

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Lx4/e;->a(Lx4/a;)Lx4/e;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iput-object v0, p0, Lw4/a;->providesRemoteConfigComponentProvider:Lv7/a;

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lx4/d;->a(Lx4/a;)Lx4/d;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    iput-object v0, p0, Lw4/a;->providesFirebaseInstallationsProvider:Lv7/a;

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lx4/h;->a(Lx4/a;)Lx4/h;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    iput-object v0, p0, Lw4/a;->providesTransportFactoryProvider:Lv7/a;

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lx4/f;->a(Lx4/a;)Lx4/f;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    iput-object v0, p0, Lw4/a;->providesRemoteConfigManagerProvider:Lv7/a;

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Lx4/b;->a(Lx4/a;)Lx4/b;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    iput-object v0, p0, Lw4/a;->providesConfigResolverProvider:Lv7/a;

    .line 37
    .line 38
    .line 39
    invoke-static {p1}, Lx4/g;->a(Lx4/a;)Lx4/g;

    .line 40
    move-result-object v7

    .line 41
    .line 42
    iput-object v7, p0, Lw4/a;->providesSessionManagerProvider:Lv7/a;

    .line 43
    .line 44
    iget-object v1, p0, Lw4/a;->providesFirebaseAppProvider:Lv7/a;

    .line 45
    .line 46
    iget-object v2, p0, Lw4/a;->providesRemoteConfigComponentProvider:Lv7/a;

    .line 47
    .line 48
    iget-object v3, p0, Lw4/a;->providesFirebaseInstallationsProvider:Lv7/a;

    .line 49
    .line 50
    iget-object v4, p0, Lw4/a;->providesTransportFactoryProvider:Lv7/a;

    .line 51
    .line 52
    iget-object v5, p0, Lw4/a;->providesRemoteConfigManagerProvider:Lv7/a;

    .line 53
    .line 54
    iget-object v6, p0, Lw4/a;->providesConfigResolverProvider:Lv7/a;

    .line 55
    .line 56
    .line 57
    invoke-static/range {v1 .. v7}, Lv4/g;->a(Lv7/a;Lv7/a;Lv7/a;Lv7/a;Lv7/a;Lv7/a;Lv7/a;)Lv4/g;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    .line 61
    invoke-static {p1}, Ldagger/internal/a;->b(Lv7/a;)Lv7/a;

    .line 62
    move-result-object p1

    .line 63
    .line 64
    iput-object p1, p0, Lw4/a;->firebasePerformanceProvider:Lv7/a;

    .line 65
    return-void
.end method


# virtual methods
.method public a()Lv4/e;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lw4/a;->firebasePerformanceProvider:Lv7/a;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lv7/a;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lv4/e;

    .line 9
    return-object v0
.end method
