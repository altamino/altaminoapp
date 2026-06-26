.class public Lcom/narvii/monetization/sticker/widget/StickerImageView;
.super Lcom/narvii/widget/NVImageView;
.source "StickerImageView.java"


# instance fields
.field stickerCacheService:Lcom/narvii/sticker/StickerCacheService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/NVImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string p2, "stickerCache"

    .line 24
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/sticker/StickerCacheService;

    iput-object p1, p0, Lcom/narvii/monetization/sticker/widget/StickerImageView;->stickerCacheService:Lcom/narvii/sticker/StickerCacheService;

    const/4 p1, 0x0

    .line 25
    invoke-virtual {p0, p1}, Lcom/narvii/widget/NVImageView;->setShowPressedMask(Z)V

    return-void
.end method


# virtual methods
.method public setSticker(Lcom/narvii/model/Sticker;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 30
    invoke-virtual {p0, p1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    return-void

    .line 33
    :cond_0
    iget-object v0, p1, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    iget-object p1, p1, Lcom/narvii/model/Sticker;->icon:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/narvii/monetization/sticker/widget/StickerImageView;->setStickerImageUrl(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setStickerImageUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    .line 38
    invoke-virtual {p0, p1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    return-void

    :cond_0
    const-string v0, "file://"

    .line 41
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "assets://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "res://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/narvii/monetization/sticker/widget/StickerImageView;->stickerCacheService:Lcom/narvii/sticker/StickerCacheService;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/sticker/StickerCacheService;->getLocalUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    .line 47
    invoke-virtual {p0, p2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {p0, p1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    :goto_0
    return-void

    .line 42
    :cond_3
    :goto_1
    invoke-virtual {p0, p2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    return-void
.end method
