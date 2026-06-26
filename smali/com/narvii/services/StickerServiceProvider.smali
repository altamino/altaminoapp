.class public Lcom/narvii/services/StickerServiceProvider;
.super Lcom/narvii/services/util/SoftRetainedAutoStartServiceProvider;
.source "StickerServiceProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/services/util/SoftRetainedAutoStartServiceProvider<",
        "Lcom/narvii/monetization/sticker/StickerService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/narvii/services/util/SoftRetainedAutoStartServiceProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public createNew(Lcom/narvii/app/NVContext;)Lcom/narvii/monetization/sticker/StickerService;
    .locals 1

    .line 15
    new-instance v0, Lcom/narvii/monetization/sticker/StickerService;

    invoke-direct {v0, p1}, Lcom/narvii/monetization/sticker/StickerService;-><init>(Lcom/narvii/app/NVContext;)V

    return-object v0
.end method

.method public bridge synthetic createNew(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lcom/narvii/services/StickerServiceProvider;->createNew(Lcom/narvii/app/NVContext;)Lcom/narvii/monetization/sticker/StickerService;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/sticker/StickerService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p2, Lcom/narvii/monetization/sticker/StickerService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/StickerServiceProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/sticker/StickerService;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/sticker/StickerService;)V
    .locals 0

    .line 30
    invoke-virtual {p2}, Lcom/narvii/monetization/sticker/StickerService;->onPause()V

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p2, Lcom/narvii/monetization/sticker/StickerService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/StickerServiceProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/sticker/StickerService;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/sticker/StickerService;)V
    .locals 0

    .line 25
    invoke-virtual {p2}, Lcom/narvii/monetization/sticker/StickerService;->onResume()V

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p2, Lcom/narvii/monetization/sticker/StickerService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/StickerServiceProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/sticker/StickerService;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/sticker/StickerService;)V
    .locals 0

    .line 20
    invoke-virtual {p2}, Lcom/narvii/monetization/sticker/StickerService;->onStart()V

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p2, Lcom/narvii/monetization/sticker/StickerService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/StickerServiceProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/sticker/StickerService;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/sticker/StickerService;)V
    .locals 0

    .line 35
    invoke-virtual {p2}, Lcom/narvii/monetization/sticker/StickerService;->onStop()V

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p2, Lcom/narvii/monetization/sticker/StickerService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/StickerServiceProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/sticker/StickerService;)V

    return-void
.end method
