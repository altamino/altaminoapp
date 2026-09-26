.class public Lx4/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final firebaseApp:Lcom/google/firebase/f;

.field private final firebaseInstallations:Lcom/google/firebase/installations/h;

.field private final remoteConfigComponentProvider:Lo4/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo4/b<",
            "Lcom/google/firebase/remoteconfig/c;",
            ">;"
        }
    .end annotation
.end field

.field private final transportFactoryProvider:Lo4/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo4/b<",
            "Lf2/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/firebase/f;Lcom/google/firebase/installations/h;Lo4/b;Lo4/b;)V
    .locals 0
    .param p1    # Lcom/google/firebase/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/installations/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lo4/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lo4/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/f;",
            "Lcom/google/firebase/installations/h;",
            "Lo4/b<",
            "Lcom/google/firebase/remoteconfig/c;",
            ">;",
            "Lo4/b<",
            "Lf2/g;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lx4/a;->firebaseApp:Lcom/google/firebase/f;

    .line 6
    .line 7
    iput-object p2, p0, Lx4/a;->firebaseInstallations:Lcom/google/firebase/installations/h;

    .line 8
    .line 9
    iput-object p3, p0, Lx4/a;->remoteConfigComponentProvider:Lo4/b;

    .line 10
    .line 11
    iput-object p4, p0, Lx4/a;->transportFactoryProvider:Lo4/b;

    .line 12
    return-void
.end method


# virtual methods
.method a()Lcom/google/firebase/perf/config/a;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/firebase/perf/config/a;->g()Lcom/google/firebase/perf/config/a;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method b()Lcom/google/firebase/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lx4/a;->firebaseApp:Lcom/google/firebase/f;

    return-object v0
.end method

.method c()Lcom/google/firebase/installations/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lx4/a;->firebaseInstallations:Lcom/google/firebase/installations/h;

    return-object v0
.end method

.method d()Lo4/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo4/b<",
            "Lcom/google/firebase/remoteconfig/c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lx4/a;->remoteConfigComponentProvider:Lo4/b;

    return-object v0
.end method

.method e()Lcom/google/firebase/perf/config/RemoteConfigManager;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/firebase/perf/config/RemoteConfigManager;->getInstance()Lcom/google/firebase/perf/config/RemoteConfigManager;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method f()Lcom/google/firebase/perf/session/SessionManager;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/firebase/perf/session/SessionManager;->getInstance()Lcom/google/firebase/perf/session/SessionManager;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method g()Lo4/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo4/b<",
            "Lf2/g;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lx4/a;->transportFactoryProvider:Lo4/b;

    return-object v0
.end method
