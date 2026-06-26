.class public Lcom/narvii/monetization/sticker/widget/StickerCollectionSourceView;
.super Landroid/widget/FrameLayout;
.source "StickerCollectionSourceView.java"


# instance fields
.field authorIcon:Lcom/narvii/widget/NVImageView;

.field authorLayout:Landroid/view/View;

.field authorName:Landroid/widget/TextView;

.field meIcon:Landroid/widget/ImageView;

.field stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    new-instance p1, Lcom/narvii/monetization/sticker/StickerHelper;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/monetization/sticker/StickerHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/monetization/sticker/widget/StickerCollectionSourceView;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 35
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f090a6b

    .line 36
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/monetization/sticker/widget/StickerCollectionSourceView;->authorLayout:Landroid/view/View;

    const v0, 0x7f090a6a

    .line 37
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    iput-object v0, p0, Lcom/narvii/monetization/sticker/widget/StickerCollectionSourceView;->authorIcon:Lcom/narvii/widget/NVImageView;

    const v0, 0x7f0906ca

    .line 38
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/narvii/monetization/sticker/widget/StickerCollectionSourceView;->meIcon:Landroid/widget/ImageView;

    const v0, 0x7f090a6c

    .line 39
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/monetization/sticker/widget/StickerCollectionSourceView;->authorName:Landroid/widget/TextView;

    return-void
.end method

.method public setStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)V
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/narvii/monetization/sticker/widget/StickerCollectionSourceView;->authorLayout:Landroid/view/View;

    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isUserCreated()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 44
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isUserCreated()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 45
    iget-object v0, p0, Lcom/narvii/monetization/sticker/widget/StickerCollectionSourceView;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    invoke-virtual {v0, p1}, Lcom/narvii/monetization/sticker/StickerHelper;->isCreatedByMe(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 46
    iget-object p1, p0, Lcom/narvii/monetization/sticker/widget/StickerCollectionSourceView;->meIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 47
    iget-object p1, p0, Lcom/narvii/monetization/sticker/widget/StickerCollectionSourceView;->authorIcon:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 48
    iget-object p1, p0, Lcom/narvii/monetization/sticker/widget/StickerCollectionSourceView;->meIcon:Landroid/widget/ImageView;

    const v0, 0x7f080509

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 49
    iget-object p1, p0, Lcom/narvii/monetization/sticker/widget/StickerCollectionSourceView;->authorName:Landroid/widget/TextView;

    const v0, 0x7f0f0b28

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/sticker/widget/StickerCollectionSourceView;->meIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 52
    iget-object v0, p0, Lcom/narvii/monetization/sticker/widget/StickerCollectionSourceView;->authorIcon:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 53
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->getOriginalCommunity()Lcom/narvii/model/Community;

    move-result-object p1

    .line 54
    iget-object v0, p0, Lcom/narvii/monetization/sticker/widget/StickerCollectionSourceView;->authorLayout:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-static {v0, v2}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 55
    iget-object v0, p0, Lcom/narvii/monetization/sticker/widget/StickerCollectionSourceView;->authorIcon:Lcom/narvii/widget/NVImageView;

    const/4 v1, 0x0

    if-nez p1, :cond_2

    move-object v2, v1

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 56
    iget-object v0, p0, Lcom/narvii/monetization/sticker/widget/StickerCollectionSourceView;->authorName:Landroid/widget/TextView;

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    iget-object v1, p1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_2
    return-void
.end method
