.class public Lcom/narvii/services/SmAntiFraudServiceProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/services/ServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/ServiceProvider<",
        "Lcom/narvii/sm/SmAntiFraudManager;",
        ">;"
    }
.end annotation


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


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/sm/SmAntiFraudManager;
    .locals 1

    .line 2
    new-instance v0, Lcom/narvii/sm/SmAntiFraudManager;

    invoke-direct {v0, p1}, Lcom/narvii/sm/SmAntiFraudManager;-><init>(Lcom/narvii/app/NVContext;)V

    return-object v0
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/narvii/services/SmAntiFraudServiceProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/sm/SmAntiFraudManager;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/sm/SmAntiFraudManager;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/sm/SmAntiFraudManager;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/SmAntiFraudServiceProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/sm/SmAntiFraudManager;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/sm/SmAntiFraudManager;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/sm/SmAntiFraudManager;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/SmAntiFraudServiceProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/sm/SmAntiFraudManager;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/sm/SmAntiFraudManager;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/sm/SmAntiFraudManager;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/SmAntiFraudServiceProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/sm/SmAntiFraudManager;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/sm/SmAntiFraudManager;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/sm/SmAntiFraudManager;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/SmAntiFraudServiceProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/sm/SmAntiFraudManager;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/sm/SmAntiFraudManager;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/sm/SmAntiFraudManager;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/SmAntiFraudServiceProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/sm/SmAntiFraudManager;)V

    return-void
.end method
