.class public Lcom/narvii/monetization/sticker/widget/StickerCacheImageView;
.super Lcom/narvii/widget/NVImageView;
.source "StickerCacheImageView.java"

# interfaces
.implements Lcom/narvii/sticker/StickerFileDownloadListener;


# instance fields
.field currentCollectionId:Ljava/lang/String;

.field currentImageUrl:Ljava/lang/String;

.field stickerCacheService:Lcom/narvii/sticker/StickerCacheService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/NVImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string p2, "stickerCache"

    .line 29
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/sticker/StickerCacheService;

    iput-object p1, p0, Lcom/narvii/monetization/sticker/widget/StickerCacheImageView;->stickerCacheService:Lcom/narvii/sticker/StickerCacheService;

    .line 30
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f0601e3

    invoke-static {p2, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-direct {p1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object p1, p0, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x1

    .line 31
    iput-boolean p1, p0, Lcom/narvii/widget/NVImageView;->scalePlaceholder:Z

    const/4 p1, 0x0

    .line 32
    invoke-virtual {p0, p1}, Lcom/narvii/widget/NVImageView;->setShowPressedMask(Z)V

    return-void
.end method


# virtual methods
.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/asset/DownloadStatusInfo;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/narvii/monetization/sticker/widget/StickerCacheImageView;->currentCollectionId:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/narvii/monetization/sticker/widget/StickerCacheImageView;->currentImageUrl:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p3}, Lcom/narvii/asset/DownloadStatusInfo;->isReady()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 54
    iget-object p3, p0, Lcom/narvii/monetization/sticker/widget/StickerCacheImageView;->stickerCacheService:Lcom/narvii/sticker/StickerCacheService;

    invoke-virtual {p3, p1, p2}, Lcom/narvii/sticker/StickerCacheService;->getLocalUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    goto :goto_0

    .line 56
    :cond_1
    iget-object p1, p0, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setStickerImageUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "file://"

    .line 39
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "assets://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "res://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 43
    :cond_1
    iput-object p1, p0, Lcom/narvii/monetization/sticker/widget/StickerCacheImageView;->currentCollectionId:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/narvii/monetization/sticker/widget/StickerCacheImageView;->currentImageUrl:Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lcom/narvii/monetization/sticker/widget/StickerCacheImageView;->stickerCacheService:Lcom/narvii/sticker/StickerCacheService;

    invoke-virtual {v0, p1, p2, p0}, Lcom/narvii/sticker/StickerCacheService;->observeFileStatusChange(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/sticker/StickerFileDownloadListener;)V

    return-void

    .line 40
    :cond_2
    :goto_0
    invoke-virtual {p0, p2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    :cond_3
    :goto_1
    return-void
.end method
