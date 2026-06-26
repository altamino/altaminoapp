.class public Lcom/narvii/services/ApiServiceProvider;
.super Ljava/lang/Object;
.source "ApiServiceProvider.java"

# interfaces
.implements Lcom/narvii/services/ServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/ServiceProvider<",
        "Lcom/narvii/util/http/ApiService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/util/http/ApiService;
    .locals 1

    .line 10
    new-instance v0, Lcom/narvii/util/http/ApiService;

    invoke-direct {v0, p1}, Lcom/narvii/util/http/ApiService;-><init>(Lcom/narvii/app/NVContext;)V

    return-object v0
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/narvii/services/ApiServiceProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/util/http/ApiService;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/util/http/ApiService;)V
    .locals 0

    const/4 p1, 0x0

    .line 31
    invoke-virtual {p2, p1}, Lcom/narvii/util/http/ApiService;->abortAll(Z)V

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 6
    check-cast p2, Lcom/narvii/util/http/ApiService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/ApiServiceProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/util/http/ApiService;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/util/http/ApiService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 6
    check-cast p2, Lcom/narvii/util/http/ApiService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/ApiServiceProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/util/http/ApiService;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/util/http/ApiService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 6
    check-cast p2, Lcom/narvii/util/http/ApiService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/ApiServiceProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/util/http/ApiService;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/util/http/ApiService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 6
    check-cast p2, Lcom/narvii/util/http/ApiService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/ApiServiceProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/util/http/ApiService;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/util/http/ApiService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 6
    check-cast p2, Lcom/narvii/util/http/ApiService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/ApiServiceProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/util/http/ApiService;)V

    return-void
.end method
