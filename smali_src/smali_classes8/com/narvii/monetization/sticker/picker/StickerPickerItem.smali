.class public Lcom/narvii/monetization/sticker/picker/StickerPickerItem;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

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
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    const-string p2, "stickerCache"

    .line 10
    .line 11
    .line 12
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    check-cast p1, Lcom/narvii/sticker/StickerCacheService;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerItem;->stickerCacheService:Lcom/narvii/sticker/StickerCacheService;

    .line 18
    return-void
.end method


# virtual methods
.method protected dispatchSetPressed(Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchSetPressed(Z)V

    .line 4
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a0e77

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerItem;->thumbnail:Lcom/narvii/widget/NVImageView;

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setShowPressedMask(Z)V

    .line 19
    .line 20
    .line 21
    const v0, 0x7f0a0cd2

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    iput-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerItem;->selectedView:Landroid/view/View;

    .line 28
    .line 29
    .line 30
    const v0, 0x7f0a04fd

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    iput-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerItem;->error:Landroid/view/View;

    .line 37
    .line 38
    .line 39
    const v0, 0x7f0a0441

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    iput-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerItem;->disabled:Landroid/view/View;

    .line 46
    return-void
.end method

.method public onStatusChanged(Lcom/narvii/model/Sticker;Lcom/narvii/asset/DownloadStatusInfo;)V
    .locals 2

    .line 1
    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerItem;->currentSticker:Lcom/narvii/model/Sticker;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    goto :goto_1

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/model/Sticker;->id()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/narvii/model/Sticker;->id()Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerItem;->thumbnail:Lcom/narvii/widget/NVImageView;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerItem;->stickerCacheService:Lcom/narvii/sticker/StickerCacheService;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p1}, Lcom/narvii/sticker/StickerCacheService;->getThumbnailUri(Lcom/narvii/model/Sticker;)Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 33
    .line 34
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerItem;->error:Landroid/view/View;

    .line 35
    .line 36
    iget p2, p2, Lcom/narvii/asset/DownloadStatusInfo;->status:I

    .line 37
    const/4 v0, -0x1

    .line 38
    .line 39
    if-ne p2, v0, :cond_1

    .line 40
    const/4 p2, 0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/4 p2, 0x0

    .line 43
    .line 44
    .line 45
    :goto_0
    invoke-static {p1, p2}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 46
    :cond_2
    :goto_1
    return-void
.end method

.method public setPressed(Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setPressed(Z)V

    .line 4
    return-void
.end method

.method public setSticker(Lcom/narvii/model/Sticker;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, p1, p2, v0}, Lcom/narvii/monetization/sticker/picker/StickerPickerItem;->setSticker(Lcom/narvii/model/Sticker;ZZ)V

    return-void
.end method

.method public setSticker(Lcom/narvii/model/Sticker;ZZ)V
    .locals 1

    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerItem;->currentSticker:Lcom/narvii/model/Sticker;

    iput-boolean p2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerItem;->selected:Z

    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerItem;->selectedView:Landroid/view/View;

    .line 1
    invoke-static {v0, p2}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    iget-object p2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerItem;->disabled:Landroid/view/View;

    .line 2
    invoke-virtual {p1}, Lcom/narvii/model/Sticker;->isDisabled()Z

    move-result v0

    invoke-static {p2, v0}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    if-eqz p3, :cond_0

    iget-object p2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerItem;->stickerCacheService:Lcom/narvii/sticker/StickerCacheService;

    .line 3
    invoke-virtual {p2, p1, p0}, Lcom/narvii/sticker/StickerCacheService;->observeStickerStatusChange(Lcom/narvii/model/Sticker;Lcom/narvii/sticker/StickerStatusChangeListener;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerItem;->stickerCacheService:Lcom/narvii/sticker/StickerCacheService;

    .line 4
    invoke-virtual {p2, p1}, Lcom/narvii/sticker/StickerCacheService;->getThumbnailUri(Lcom/narvii/model/Sticker;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    .line 5
    iget-object p2, p1, Lcom/narvii/model/Sticker;->thumbnail:Ljava/lang/String;

    :cond_1
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerItem;->thumbnail:Lcom/narvii/widget/NVImageView;

    .line 6
    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    :goto_0
    return-void
.end method
