.class public Lcom/narvii/monetization/sticker/manage/StickerCollectionItem;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


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
    new-instance p1, Lcom/narvii/monetization/sticker/StickerHelper;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    move-result-object p2

    .line 10
    .line 11
    .line 12
    invoke-static {p2}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 13
    move-result-object p2

    .line 14
    .line 15
    .line 16
    invoke-direct {p1, p2}, Lcom/narvii/monetization/sticker/StickerHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 17
    .line 18
    iput-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionItem;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    .line 19
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a0343

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/monetization/sticker/widget/StickerCacheImageView;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionItem;->stickerCacheImageView:Lcom/narvii/monetization/sticker/widget/StickerCacheImageView;

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0a0da8

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Lcom/narvii/monetization/utils/StoreItemNameView;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionItem;->storeItemNameView:Lcom/narvii/monetization/utils/StoreItemNameView;

    .line 26
    .line 27
    .line 28
    const v0, 0x7f0a0e08

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    iput-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionItem;->subtitle:Landroid/view/View;

    .line 35
    .line 36
    .line 37
    const v0, 0x7f0a0345

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    iput-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionItem;->mainLayout:Landroid/view/View;

    .line 44
    .line 45
    .line 46
    const v0, 0x7f0a0d59

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    check-cast v0, Lcom/narvii/monetization/sticker/widget/StickerCollectionSourceView;

    .line 53
    .line 54
    iput-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionItem;->sourceView:Lcom/narvii/monetization/sticker/widget/StickerCollectionSourceView;

    .line 55
    .line 56
    .line 57
    const v0, 0x7f0a0a19

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    iput-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionItem;->notAvailableMark:Landroid/view/View;

    .line 64
    return-void
.end method

.method public setStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)V
    .locals 4

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/monetization/sticker/model/MoodStickerCollection;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionItem;->stickerCacheImageView:Lcom/narvii/monetization/sticker/widget/StickerCacheImageView;

    .line 5
    .line 6
    iget-object v2, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;->collectionId:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v3, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;->smallIcon:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v2, v3}, Lcom/narvii/monetization/sticker/widget/StickerCacheImageView;->setStickerImageUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    iget-object v1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionItem;->storeItemNameView:Lcom/narvii/monetization/utils/StoreItemNameView;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p1}, Lcom/narvii/monetization/utils/StoreItemNameView;->setStoreItem(Lcom/narvii/model/IStoreItem;)V

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionItem;->subtitle:Landroid/view/View;

    .line 19
    .line 20
    .line 21
    invoke-static {v1, v0}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionItem;->sourceView:Lcom/narvii/monetization/sticker/widget/StickerCollectionSourceView;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/narvii/monetization/sticker/widget/StickerCollectionSourceView;->setStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    .line 27
    .line 28
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionItem;->mainLayout:Landroid/view/View;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionItem;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p1}, Lcom/narvii/monetization/sticker/StickerHelper;->greyStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z

    .line 34
    move-result v1

    .line 35
    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    const/high16 v1, 0x3f800000    # 1.0f

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_0
    const/high16 v1, 0x3f000000    # 0.5f

    .line 42
    .line 43
    .line 44
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 45
    .line 46
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionItem;->notAvailableMark:Landroid/view/View;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->notAvailable()Z

    .line 50
    move-result p1

    .line 51
    .line 52
    .line 53
    invoke-static {v0, p1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 54
    return-void
.end method
