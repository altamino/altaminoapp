.class public Lcom/narvii/services/ApiRequestQueueProvider;
.super Ljava/lang/Object;
.source "ApiRequestQueueProvider.java"

# interfaces
.implements Lcom/narvii/services/AutostartServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/AutostartServiceProvider<",
        "Lcom/android/volley/RequestQueue;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/android/volley/RequestQueue;
    .locals 3

    .line 16
    new-instance v0, Lcom/android/volley/toolbox/BasicNetwork;

    new-instance v1, Lcom/narvii/util/http/ProxyStack;

    invoke-direct {v1, p1}, Lcom/narvii/util/http/ProxyStack;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-direct {v0, v1}, Lcom/android/volley/toolbox/BasicNetwork;-><init>(Lcom/android/volley/toolbox/HttpStack;)V

    .line 17
    new-instance p1, Lcom/android/volley/RequestQueue;

    new-instance v1, Lcom/android/volley/toolbox/NoCache;

    invoke-direct {v1}, Lcom/android/volley/toolbox/NoCache;-><init>()V

    const/4 v2, 0x4

    invoke-direct {p1, v1, v0, v2}, Lcom/android/volley/RequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;I)V

    .line 18
    invoke-virtual {p1}, Lcom/android/volley/RequestQueue;->start()V

    return-object p1
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/narvii/services/ApiRequestQueueProvider;->create(Lcom/narvii/app/NVContext;)Lcom/android/volley/RequestQueue;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/android/volley/RequestQueue;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p2, Lcom/android/volley/RequestQueue;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/ApiRequestQueueProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/android/volley/RequestQueue;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/android/volley/RequestQueue;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p2, Lcom/android/volley/RequestQueue;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/ApiRequestQueueProvider;->pause(Lcom/narvii/app/NVContext;Lcom/android/volley/RequestQueue;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/android/volley/RequestQueue;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p2, Lcom/android/volley/RequestQueue;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/ApiRequestQueueProvider;->resume(Lcom/narvii/app/NVContext;Lcom/android/volley/RequestQueue;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/android/volley/RequestQueue;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p2, Lcom/android/volley/RequestQueue;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/ApiRequestQueueProvider;->start(Lcom/narvii/app/NVContext;Lcom/android/volley/RequestQueue;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/android/volley/RequestQueue;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p2, Lcom/android/volley/RequestQueue;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/ApiRequestQueueProvider;->stop(Lcom/narvii/app/NVContext;Lcom/android/volley/RequestQueue;)V

    return-void
.end method
