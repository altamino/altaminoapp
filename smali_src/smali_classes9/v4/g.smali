.class public final Lv4/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/c;"
    }
.end annotation


# instance fields
.field private final configResolverProvider:Lv7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv7/a<",
            "Lcom/google/firebase/perf/config/a;",
            ">;"
        }
    .end annotation
.end field

.field private final firebaseAppProvider:Lv7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv7/a<",
            "Lcom/google/firebase/f;",
            ">;"
        }
    .end annotation
.end field

.field private final firebaseInstallationsApiProvider:Lv7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv7/a<",
            "Lcom/google/firebase/installations/h;",
            ">;"
        }
    .end annotation
.end field

.field private final firebaseRemoteConfigProvider:Lv7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv7/a<",
            "Lo4/b<",
            "Lcom/google/firebase/remoteconfig/c;",
            ">;>;"
        }
    .end annotation
.end field

.field private final remoteConfigManagerProvider:Lv7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv7/a<",
            "Lcom/google/firebase/perf/config/RemoteConfigManager;",
            ">;"
        }
    .end annotation
.end field

.field private final sessionManagerProvider:Lv7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv7/a<",
            "Lcom/google/firebase/perf/session/SessionManager;",
            ">;"
        }
    .end annotation
.end field

.field private final transportFactoryProvider:Lv7/a;
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
.method public constructor <init>(Lv7/a;Lv7/a;Lv7/a;Lv7/a;Lv7/a;Lv7/a;Lv7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv7/a<",
            "Lcom/google/firebase/f;",
            ">;",
            "Lv7/a<",
            "Lo4/b<",
            "Lcom/google/firebase/remoteconfig/c;",
            ">;>;",
            "Lv7/a<",
            "Lcom/google/firebase/installations/h;",
            ">;",
            "Lv7/a<",
            "Lo4/b<",
            "Lf2/g;",
            ">;>;",
            "Lv7/a<",
            "Lcom/google/firebase/perf/config/RemoteConfigManager;",
            ">;",
            "Lv7/a<",
            "Lcom/google/firebase/perf/config/a;",
            ">;",
            "Lv7/a<",
            "Lcom/google/firebase/perf/session/SessionManager;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lv4/g;->firebaseAppProvider:Lv7/a;

    .line 6
    .line 7
    iput-object p2, p0, Lv4/g;->firebaseRemoteConfigProvider:Lv7/a;

    .line 8
    .line 9
    iput-object p3, p0, Lv4/g;->firebaseInstallationsApiProvider:Lv7/a;

    .line 10
    .line 11
    iput-object p4, p0, Lv4/g;->transportFactoryProvider:Lv7/a;

    .line 12
    .line 13
    iput-object p5, p0, Lv4/g;->remoteConfigManagerProvider:Lv7/a;

    .line 14
    .line 15
    iput-object p6, p0, Lv4/g;->configResolverProvider:Lv7/a;

    .line 16
    .line 17
    iput-object p7, p0, Lv4/g;->sessionManagerProvider:Lv7/a;

    .line 18
    return-void
.end method

.method public static a(Lv7/a;Lv7/a;Lv7/a;Lv7/a;Lv7/a;Lv7/a;Lv7/a;)Lv4/g;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv7/a<",
            "Lcom/google/firebase/f;",
            ">;",
            "Lv7/a<",
            "Lo4/b<",
            "Lcom/google/firebase/remoteconfig/c;",
            ">;>;",
            "Lv7/a<",
            "Lcom/google/firebase/installations/h;",
            ">;",
            "Lv7/a<",
            "Lo4/b<",
            "Lf2/g;",
            ">;>;",
            "Lv7/a<",
            "Lcom/google/firebase/perf/config/RemoteConfigManager;",
            ">;",
            "Lv7/a<",
            "Lcom/google/firebase/perf/config/a;",
            ">;",
            "Lv7/a<",
            "Lcom/google/firebase/perf/session/SessionManager;",
            ">;)",
            "Lv4/g;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v8, Lv4/g;

    .line 3
    move-object v0, v8

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move-object v3, p2

    .line 7
    move-object v4, p3

    .line 8
    move-object v5, p4

    .line 9
    move-object v6, p5

    .line 10
    move-object v7, p6

    .line 11
    .line 12
    .line 13
    invoke-direct/range {v0 .. v7}, Lv4/g;-><init>(Lv7/a;Lv7/a;Lv7/a;Lv7/a;Lv7/a;Lv7/a;Lv7/a;)V

    .line 14
    return-object v8
.end method

.method public static c(Lcom/google/firebase/f;Lo4/b;Lcom/google/firebase/installations/h;Lo4/b;Lcom/google/firebase/perf/config/RemoteConfigManager;Lcom/google/firebase/perf/config/a;Lcom/google/firebase/perf/session/SessionManager;)Lv4/e;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/f;",
            "Lo4/b<",
            "Lcom/google/firebase/remoteconfig/c;",
            ">;",
            "Lcom/google/firebase/installations/h;",
            "Lo4/b<",
            "Lf2/g;",
            ">;",
            "Lcom/google/firebase/perf/config/RemoteConfigManager;",
            "Lcom/google/firebase/perf/config/a;",
            "Lcom/google/firebase/perf/session/SessionManager;",
            ")",
            "Lv4/e;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v8, Lv4/e;

    .line 3
    move-object v0, v8

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move-object v3, p2

    .line 7
    move-object v4, p3

    .line 8
    move-object v5, p4

    .line 9
    move-object v6, p5

    .line 10
    move-object v7, p6

    .line 11
    .line 12
    .line 13
    invoke-direct/range {v0 .. v7}, Lv4/e;-><init>(Lcom/google/firebase/f;Lo4/b;Lcom/google/firebase/installations/h;Lo4/b;Lcom/google/firebase/perf/config/RemoteConfigManager;Lcom/google/firebase/perf/config/a;Lcom/google/firebase/perf/session/SessionManager;)V

    .line 14
    return-object v8
.end method


# virtual methods
.method public b()Lv4/e;
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lv4/g;->firebaseAppProvider:Lv7/a;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lv7/a;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    move-object v1, v0

    .line 8
    .line 9
    check-cast v1, Lcom/google/firebase/f;

    .line 10
    .line 11
    iget-object v0, p0, Lv4/g;->firebaseRemoteConfigProvider:Lv7/a;

    .line 12
    .line 13
    .line 14
    invoke-interface {v0}, Lv7/a;->get()Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    move-object v2, v0

    .line 17
    .line 18
    check-cast v2, Lo4/b;

    .line 19
    .line 20
    iget-object v0, p0, Lv4/g;->firebaseInstallationsApiProvider:Lv7/a;

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Lv7/a;->get()Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 25
    move-object v3, v0

    .line 26
    .line 27
    check-cast v3, Lcom/google/firebase/installations/h;

    .line 28
    .line 29
    iget-object v0, p0, Lv4/g;->transportFactoryProvider:Lv7/a;

    .line 30
    .line 31
    .line 32
    invoke-interface {v0}, Lv7/a;->get()Ljava/lang/Object;

    .line 33
    move-result-object v0

    .line 34
    move-object v4, v0

    .line 35
    .line 36
    check-cast v4, Lo4/b;

    .line 37
    .line 38
    iget-object v0, p0, Lv4/g;->remoteConfigManagerProvider:Lv7/a;

    .line 39
    .line 40
    .line 41
    invoke-interface {v0}, Lv7/a;->get()Ljava/lang/Object;

    .line 42
    move-result-object v0

    .line 43
    move-object v5, v0

    .line 44
    .line 45
    check-cast v5, Lcom/google/firebase/perf/config/RemoteConfigManager;

    .line 46
    .line 47
    iget-object v0, p0, Lv4/g;->configResolverProvider:Lv7/a;

    .line 48
    .line 49
    .line 50
    invoke-interface {v0}, Lv7/a;->get()Ljava/lang/Object;

    .line 51
    move-result-object v0

    .line 52
    move-object v6, v0

    .line 53
    .line 54
    check-cast v6, Lcom/google/firebase/perf/config/a;

    .line 55
    .line 56
    iget-object v0, p0, Lv4/g;->sessionManagerProvider:Lv7/a;

    .line 57
    .line 58
    .line 59
    invoke-interface {v0}, Lv7/a;->get()Ljava/lang/Object;

    .line 60
    move-result-object v0

    .line 61
    move-object v7, v0

    .line 62
    .line 63
    check-cast v7, Lcom/google/firebase/perf/session/SessionManager;

    .line 64
    .line 65
    .line 66
    invoke-static/range {v1 .. v7}, Lv4/g;->c(Lcom/google/firebase/f;Lo4/b;Lcom/google/firebase/installations/h;Lo4/b;Lcom/google/firebase/perf/config/RemoteConfigManager;Lcom/google/firebase/perf/config/a;Lcom/google/firebase/perf/session/SessionManager;)Lv4/e;

    .line 67
    move-result-object v0

    .line 68
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lv4/g;->b()Lv4/e;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
