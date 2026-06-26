.class public Lcom/narvii/services/StickerCacheServiceProvider;
.super Ljava/lang/Object;
.source "StickerCacheServiceProvider.java"

# interfaces
.implements Lcom/narvii/services/ServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/ServiceProvider<",
        "Lcom/narvii/sticker/StickerCacheService;",
        ">;"
    }
.end annotation


# instance fields
.field stickerCacheService:Lcom/narvii/sticker/StickerCacheService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/sticker/StickerCacheService;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/narvii/services/StickerCacheServiceProvider;->stickerCacheService:Lcom/narvii/sticker/StickerCacheService;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lcom/narvii/sticker/StickerCacheService;

    invoke-direct {v0, p1}, Lcom/narvii/sticker/StickerCacheService;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/services/StickerCacheServiceProvider;->stickerCacheService:Lcom/narvii/sticker/StickerCacheService;

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/narvii/services/StickerCacheServiceProvider;->stickerCacheService:Lcom/narvii/sticker/StickerCacheService;

    return-object p1
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lcom/narvii/services/StickerCacheServiceProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/sticker/StickerCacheService;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/sticker/StickerCacheService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/sticker/StickerCacheService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/StickerCacheServiceProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/sticker/StickerCacheService;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/sticker/StickerCacheService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/sticker/StickerCacheService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/StickerCacheServiceProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/sticker/StickerCacheService;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/sticker/StickerCacheService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/sticker/StickerCacheService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/StickerCacheServiceProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/sticker/StickerCacheService;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/sticker/StickerCacheService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/sticker/StickerCacheService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/StickerCacheServiceProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/sticker/StickerCacheService;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/sticker/StickerCacheService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/sticker/StickerCacheService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/StickerCacheServiceProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/sticker/StickerCacheService;)V

    return-void
.end method
