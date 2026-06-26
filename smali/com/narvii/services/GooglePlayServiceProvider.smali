.class public Lcom/narvii/services/GooglePlayServiceProvider;
.super Ljava/lang/Object;
.source "GooglePlayServiceProvider.java"

# interfaces
.implements Lcom/narvii/services/AutostartServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/AutostartServiceProvider<",
        "Lcom/narvii/util/googleplay/GooglePlayService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/util/googleplay/GooglePlayService;
    .locals 1

    .line 12
    new-instance v0, Lcom/narvii/util/googleplay/GooglePlayService;

    invoke-direct {v0, p1}, Lcom/narvii/util/googleplay/GooglePlayService;-><init>(Lcom/narvii/app/NVContext;)V

    return-object v0
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/services/GooglePlayServiceProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/util/googleplay/GooglePlayService;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/util/googleplay/GooglePlayService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p2, Lcom/narvii/util/googleplay/GooglePlayService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/GooglePlayServiceProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/util/googleplay/GooglePlayService;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/util/googleplay/GooglePlayService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p2, Lcom/narvii/util/googleplay/GooglePlayService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/GooglePlayServiceProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/util/googleplay/GooglePlayService;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/util/googleplay/GooglePlayService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p2, Lcom/narvii/util/googleplay/GooglePlayService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/GooglePlayServiceProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/util/googleplay/GooglePlayService;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/util/googleplay/GooglePlayService;)V
    .locals 2

    const-wide/32 v0, 0x5265c00

    .line 17
    invoke-virtual {p2, v0, v1}, Lcom/narvii/util/googleplay/GooglePlayService;->update(J)V

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p2, Lcom/narvii/util/googleplay/GooglePlayService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/GooglePlayServiceProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/util/googleplay/GooglePlayService;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/util/googleplay/GooglePlayService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p2, Lcom/narvii/util/googleplay/GooglePlayService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/GooglePlayServiceProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/util/googleplay/GooglePlayService;)V

    return-void
.end method
