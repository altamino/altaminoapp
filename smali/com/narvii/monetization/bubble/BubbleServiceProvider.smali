.class public Lcom/narvii/monetization/bubble/BubbleServiceProvider;
.super Ljava/lang/Object;
.source "BubbleServiceProvider.java"

# interfaces
.implements Lcom/narvii/services/ServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/ServiceProvider<",
        "Lcom/narvii/monetization/bubble/BubbleService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/monetization/bubble/BubbleService;
    .locals 1

    .line 14
    new-instance v0, Lcom/narvii/monetization/bubble/BubbleService;

    invoke-direct {v0, p1}, Lcom/narvii/monetization/bubble/BubbleService;-><init>(Lcom/narvii/app/NVContext;)V

    return-object v0
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/bubble/BubbleServiceProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/monetization/bubble/BubbleService;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/bubble/BubbleService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/monetization/bubble/BubbleService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/monetization/bubble/BubbleServiceProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/bubble/BubbleService;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/bubble/BubbleService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/monetization/bubble/BubbleService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/monetization/bubble/BubbleServiceProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/bubble/BubbleService;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/bubble/BubbleService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/monetization/bubble/BubbleService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/monetization/bubble/BubbleServiceProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/bubble/BubbleService;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/bubble/BubbleService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/monetization/bubble/BubbleService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/monetization/bubble/BubbleServiceProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/bubble/BubbleService;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/bubble/BubbleService;)V
    .locals 0

    .line 34
    invoke-virtual {p2}, Lcom/narvii/monetization/bubble/BubbleService;->cancelAll()V

    .line 35
    invoke-virtual {p2}, Lcom/narvii/monetization/bubble/BubbleService;->cleanDiscardedBubbleCache()V

    .line 36
    invoke-virtual {p2}, Lcom/narvii/monetization/bubble/BubbleService;->removeUploadDir()V

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/monetization/bubble/BubbleService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/monetization/bubble/BubbleServiceProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/bubble/BubbleService;)V

    return-void
.end method
