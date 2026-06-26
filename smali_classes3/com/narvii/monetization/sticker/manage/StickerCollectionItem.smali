.class public Lcom/narvii/monetization/sticker/manage/StickerCollectionItem;
.super Landroid/widget/FrameLayout;
.source "StickerCollectionItem.java"


# instance fields
.field mainLayout:Landroid/view/View;

.field notAvailableMark:Landroid/view/View;

.field sourceView:Lcom/narvii/monetization/sticker/widget/StickerCollectionSourceView;

.field stickerCacheImageView:Lcom/narvii/monetization/sticker/widget/StickerCacheImageView;

.field stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

.field storeItemNameView:Lcom/narvii/monetization/utils/StoreItemNameView;

.field subtitle:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance p1, Lcom/narvii/monetization/sticker/StickerHelper;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/monetization/sticker/StickerHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionItem;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 41
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f09027a

    .line 42
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/monetization/sticker/widget/StickerCacheImageView;

    iput-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionItem;->stickerCacheImageView:Lcom/narvii/monetization/sticker/widget/StickerCacheImageView;

    const v0, 0x7f090aae

    .line 43
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/monetization/utils/StoreItemNameView;

    iput-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionItem;->storeItemNameView:Lcom/narvii/monetization/utils/StoreItemNameView;

    const v0, 0x7f090b23

    .line 44
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionItem;->subtitle:Landroid/view/View;

    const v0, 0x7f09027c

    .line 45
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionItem;->mainLayout:Landroid/view/View;

    const v0, 0x7f090a6d

    .line 46
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/monetization/sticker/widget/StickerCollectionSourceView;

    iput-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionItem;->sourceView:Lcom/narvii/monetization/sticker/widget/StickerCollectionSourceView;

    const v0, 0x7f09077d

    .line 47
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionItem;->notAvailableMark:Landroid/view/View;

    return-void
.end method

.method public setStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)V
    .locals 4

    .line 51
    instance-of v0, p1, Lcom/narvii/monetization/sticker/model/MoodStickerCollection;

    .line 52
    iget-object v1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionItem;->stickerCacheImageView:Lcom/narvii/monetization/sticker/widget/StickerCacheImageView;

    iget-object v2, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;->collectionId:Ljava/lang/String;

    iget-object v3, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;->smallIcon:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/narvii/monetization/sticker/widget/StickerCacheImageView;->setStickerImageUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionItem;->storeItemNameView:Lcom/narvii/monetization/utils/StoreItemNameView;

    invoke-virtual {v1, p1}, Lcom/narvii/monetization/utils/StoreItemNameView;->setStoreItem(Lcom/narvii/model/IStoreItem;)V

    .line 54
    iget-object v1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionItem;->subtitle:Landroid/view/View;

    invoke-static {v1, v0}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 55
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionItem;->sourceView:Lcom/narvii/monetization/sticker/widget/StickerCollectionSourceView;

    invoke-virtual {v0, p1}, Lcom/narvii/monetization/sticker/widget/StickerCollectionSourceView;->setStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    .line 56
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionItem;->mainLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionItem;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    invoke-virtual {v1, p1}, Lcom/narvii/monetization/sticker/StickerHelper;->greyStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f000000    # 0.5f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 57
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionItem;->notAvailableMark:Landroid/view/View;

    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->notAvailable()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    return-void
.end method
