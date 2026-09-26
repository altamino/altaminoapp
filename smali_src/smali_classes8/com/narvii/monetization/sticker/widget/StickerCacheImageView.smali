.class public Lcom/narvii/monetization/sticker/widget/StickerCacheImageView;
.super Lcom/narvii/widget/NVImageView;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/sticker/StickerFileDownloadListener;


# instance fields
.field currentCollectionId:Ljava/lang/String;

.field currentImageUrl:Ljava/lang/String;

.field stickerCacheService:Lcom/narvii/sticker/StickerCacheService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/NVImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    const-string p2, "stickerCache"

    .line 14
    .line 15
    .line 16
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    check-cast p1, Lcom/narvii/sticker/StickerCacheService;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/narvii/monetization/sticker/widget/StickerCacheImageView;->stickerCacheService:Lcom/narvii/sticker/StickerCacheService;

    .line 22
    .line 23
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 27
    move-result-object p2

    .line 28
    .line 29
    .line 30
    const v0, 0x7f06046b

    .line 31
    .line 32
    .line 33
    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 34
    move-result p2

    .line 35
    .line 36
    .line 37
    invoke-direct {p1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 38
    .line 39
    iput-object p1, p0, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 40
    const/4 p1, 0x1

    .line 41
    .line 42
    iput-boolean p1, p0, Lcom/narvii/widget/NVImageView;->scalePlaceholder:Z

    .line 43
    const/4 p1, 0x0

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p1}, Lcom/narvii/widget/NVImageView;->setShowPressedMask(Z)V

    .line 47
    return-void
.end method


# virtual methods
.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/asset/DownloadStatusInfo;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/widget/StickerCacheImageView;->currentCollectionId:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/monetization/sticker/widget/StickerCacheImageView;->currentImageUrl:Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    invoke-static {p2, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    goto :goto_0

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p3}, Lcom/narvii/asset/DownloadStatusInfo;->isReady()Z

    .line 21
    move-result p3

    .line 22
    .line 23
    if-eqz p3, :cond_1

    .line 24
    .line 25
    iget-object p3, p0, Lcom/narvii/monetization/sticker/widget/StickerCacheImageView;->stickerCacheService:Lcom/narvii/sticker/StickerCacheService;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p3, p1, p2}, Lcom/narvii/sticker/StickerCacheService;->getLocalUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_1
    iget-object p1, p0, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 39
    :cond_2
    :goto_0
    return-void
.end method

.method public setStickerImageUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    goto :goto_1

    .line 6
    .line 7
    :cond_0
    const-string v0, "file://"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    const-string v0, "assets://"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    const-string v0, "res://"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 27
    move-result v0

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_1
    iput-object p1, p0, Lcom/narvii/monetization/sticker/widget/StickerCacheImageView;->currentCollectionId:Ljava/lang/String;

    .line 33
    .line 34
    iput-object p2, p0, Lcom/narvii/monetization/sticker/widget/StickerCacheImageView;->currentImageUrl:Ljava/lang/String;

    .line 35
    .line 36
    iget-object v0, p0, Lcom/narvii/monetization/sticker/widget/StickerCacheImageView;->stickerCacheService:Lcom/narvii/sticker/StickerCacheService;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1, p2, p0}, Lcom/narvii/sticker/StickerCacheService;->observeFileStatusChange(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/sticker/StickerFileDownloadListener;)V

    .line 40
    return-void

    .line 41
    .line 42
    .line 43
    :cond_2
    :goto_0
    invoke-virtual {p0, p2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 44
    :cond_3
    :goto_1
    return-void
.end method
