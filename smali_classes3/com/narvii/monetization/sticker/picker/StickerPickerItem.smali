.class public Lcom/narvii/monetization/sticker/picker/StickerPickerItem;
.super Landroid/widget/FrameLayout;
.source "StickerPickerItem.java"

# interfaces
.implements Lcom/narvii/sticker/StickerStatusChangeListener;


# instance fields
.field currentSticker:Lcom/narvii/model/Sticker;

.field disabled:Landroid/view/View;

.field error:Landroid/view/View;

.field selected:Z

.field selectedView:Landroid/view/View;

.field stickerCacheService:Lcom/narvii/sticker/StickerCacheService;

.field thumbnail:Lcom/narvii/widget/NVImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string p2, "stickerCache"

    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/sticker/StickerCacheService;

    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerItem;->stickerCacheService:Lcom/narvii/sticker/StickerCacheService;

    return-void
.end method


# virtual methods
.method protected dispatchSetPressed(Z)V
    .locals 0

    .line 73
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchSetPressed(Z)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 42
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f090b72

    .line 43
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    iput-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerItem;->thumbnail:Lcom/narvii/widget/NVImageView;

    .line 44
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerItem;->thumbnail:Lcom/narvii/widget/NVImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setShowPressedMask(Z)V

    const v0, 0x7f090a0b

    .line 45
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerItem;->selectedView:Landroid/view/View;

    const v0, 0x7f0903fb

    .line 46
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerItem;->error:Landroid/view/View;

    const v0, 0x7f090359

    .line 47
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerItem;->disabled:Landroid/view/View;

    return-void
.end method

.method public onStatusChanged(Lcom/narvii/model/Sticker;Lcom/narvii/asset/DownloadStatusInfo;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 83
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerItem;->currentSticker:Lcom/narvii/model/Sticker;

    if-nez v0, :cond_0

    goto :goto_1

    .line 87
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/model/Sticker;->id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/narvii/model/Sticker;->id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerItem;->thumbnail:Lcom/narvii/widget/NVImageView;

    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerItem;->stickerCacheService:Lcom/narvii/sticker/StickerCacheService;

    invoke-virtual {v1, p1}, Lcom/narvii/sticker/StickerCacheService;->getThumbnailUri(Lcom/narvii/model/Sticker;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 89
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerItem;->error:Landroid/view/View;

    iget p2, p2, Lcom/narvii/asset/DownloadStatusInfo;->status:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-static {p1, p2}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setPressed(Z)V
    .locals 0

    .line 78
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setPressed(Z)V

    return-void
.end method

.method public setSticker(Lcom/narvii/model/Sticker;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 67
    invoke-virtual {p0, p1, p2, v0}, Lcom/narvii/monetization/sticker/picker/StickerPickerItem;->setSticker(Lcom/narvii/model/Sticker;ZZ)V

    return-void
.end method

.method public setSticker(Lcom/narvii/model/Sticker;ZZ)V
    .locals 1

    .line 51
    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerItem;->currentSticker:Lcom/narvii/model/Sticker;

    .line 52
    iput-boolean p2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerItem;->selected:Z

    .line 53
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerItem;->selectedView:Landroid/view/View;

    invoke-static {v0, p2}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 54
    iget-object p2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerItem;->disabled:Landroid/view/View;

    invoke-virtual {p1}, Lcom/narvii/model/Sticker;->isDisabled()Z

    move-result v0

    invoke-static {p2, v0}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    if-eqz p3, :cond_0

    .line 56
    iget-object p2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerItem;->stickerCacheService:Lcom/narvii/sticker/StickerCacheService;

    invoke-virtual {p2, p1, p0}, Lcom/narvii/sticker/StickerCacheService;->observeStickerStatusChange(Lcom/narvii/model/Sticker;Lcom/narvii/sticker/StickerStatusChangeListener;)V

    goto :goto_0

    .line 58
    :cond_0
    iget-object p2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerItem;->stickerCacheService:Lcom/narvii/sticker/StickerCacheService;

    invoke-virtual {p2, p1}, Lcom/narvii/sticker/StickerCacheService;->getThumbnailUri(Lcom/narvii/model/Sticker;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    .line 60
    iget-object p2, p1, Lcom/narvii/model/Sticker;->thumbnail:Ljava/lang/String;

    .line 62
    :cond_1
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerItem;->thumbnail:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    :goto_0
    return-void
.end method
