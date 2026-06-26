.class public Lcom/narvii/monetization/store/StoreItemView;
.super Landroid/widget/FrameLayout;
.source "StoreItemView.java"


# instance fields
.field private final disCountLabelAminoPlus:Landroid/view/View;

.field private final freeLabel:Landroid/widget/TextView;

.field private isMemberShip:Z

.field private isSelected:Z

.field private final isSelectedLabel:Landroid/view/View;

.field private final membershipLabel:Landroid/widget/ImageView;

.field private final nameView:Landroid/widget/TextView;

.field private final ownedLabel:Landroid/widget/ImageView;

.field private final previewView:Lcom/narvii/widget/NVImageView;

.field private final priceLabel:Landroid/view/ViewGroup;

.field private final priceLabelMainText:Landroid/widget/TextView;

.field private storeItem:Lcom/narvii/monetization/store/data/StoreItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/narvii/monetization/store/StoreItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/monetization/store/StoreItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p2, 0x7f0b0527

    .line 52
    invoke-static {p1, p2, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f090aca

    .line 53
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVImageView;

    iput-object p1, p0, Lcom/narvii/monetization/store/StoreItemView;->previewView:Lcom/narvii/widget/NVImageView;

    const p1, 0x7f090ac7

    .line 54
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/monetization/store/StoreItemView;->nameView:Landroid/widget/TextView;

    const p1, 0x7f090ac6

    .line 55
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/monetization/store/StoreItemView;->membershipLabel:Landroid/widget/ImageView;

    const p1, 0x7f090ac3

    .line 56
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/monetization/store/StoreItemView;->freeLabel:Landroid/widget/TextView;

    const p1, 0x7f090ac9

    .line 57
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/monetization/store/StoreItemView;->ownedLabel:Landroid/widget/ImageView;

    const p1, 0x7f090acc

    .line 58
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/narvii/monetization/store/StoreItemView;->priceLabel:Landroid/view/ViewGroup;

    const p1, 0x7f090acd

    .line 59
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/monetization/store/StoreItemView;->priceLabelMainText:Landroid/widget/TextView;

    const p1, 0x7f090ac2

    .line 60
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/store/StoreItemView;->disCountLabelAminoPlus:Landroid/view/View;

    const p1, 0x7f090ac5

    .line 61
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/store/StoreItemView;->isSelectedLabel:Landroid/view/View;

    return-void
.end method

.method private updateView()V
    .locals 9

    .line 77
    iget-object v0, p0, Lcom/narvii/monetization/store/StoreItemView;->storeItem:Lcom/narvii/monetization/store/data/StoreItem;

    if-eqz v0, :cond_c

    iget-object v0, v0, Lcom/narvii/monetization/store/data/StoreItem;->itemBasicInfo:Lcom/narvii/monetization/store/data/StoreItem$ItemBasicInfo;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/narvii/monetization/store/StoreItemView;->previewView:Lcom/narvii/widget/NVImageView;

    iget-object v0, v0, Lcom/narvii/monetization/store/data/StoreItem$ItemBasicInfo;->icon:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 81
    iget-object v0, p0, Lcom/narvii/monetization/store/StoreItemView;->nameView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/narvii/monetization/store/StoreItemView;->storeItem:Lcom/narvii/monetization/store/data/StoreItem;

    iget-object v1, v1, Lcom/narvii/monetization/store/data/StoreItem;->itemBasicInfo:Lcom/narvii/monetization/store/data/StoreItem$ItemBasicInfo;

    iget-object v1, v1, Lcom/narvii/monetization/store/data/StoreItem$ItemBasicInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/narvii/monetization/store/StoreItemView;->storeItem:Lcom/narvii/monetization/store/data/StoreItem;

    invoke-virtual {v0}, Lcom/narvii/monetization/store/data/StoreItem;->getRefObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/narvii/monetization/store/StoreItemView;->storeItem:Lcom/narvii/monetization/store/data/StoreItem;

    iget-object v1, v1, Lcom/narvii/monetization/store/data/StoreItem;->itemRestrictionInfo:Lcom/narvii/model/RestrictionInfo;

    .line 86
    iget-object v2, p0, Lcom/narvii/monetization/store/StoreItemView;->membershipLabel:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 87
    iget-object v2, p0, Lcom/narvii/monetization/store/StoreItemView;->freeLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    iget-object v2, p0, Lcom/narvii/monetization/store/StoreItemView;->ownedLabel:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 89
    iget-object v2, p0, Lcom/narvii/monetization/store/StoreItemView;->priceLabel:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 91
    instance-of v2, v0, Lcom/narvii/model/IStoreItem;

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    move-object v5, v0

    check-cast v5, Lcom/narvii/model/IStoreItem;

    invoke-interface {v5}, Lcom/narvii/model/IStoreItem;->isTotalOwned()Z

    move-result v5

    if-eqz v5, :cond_1

    instance-of v5, v0, Lcom/narvii/monetization/sticker/model/MoodStickerCollection;

    if-nez v5, :cond_1

    .line 92
    iget-object v1, p0, Lcom/narvii/monetization/store/StoreItemView;->ownedLabel:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_1
    const/4 v5, 0x4

    if-eqz v1, :cond_7

    .line 93
    iget-object v6, p0, Lcom/narvii/monetization/store/StoreItemView;->storeItem:Lcom/narvii/monetization/store/data/StoreItem;

    iget-object v6, v6, Lcom/narvii/monetization/store/data/StoreItem;->itemRestrictionInfo:Lcom/narvii/model/RestrictionInfo;

    invoke-virtual {v6}, Lcom/narvii/model/RestrictionInfo;->isSupported()Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    .line 101
    :cond_2
    iget v6, v1, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    const/4 v7, 0x2

    const v8, 0x7f0f0722

    if-ne v6, v7, :cond_3

    .line 102
    iget-object v1, p0, Lcom/narvii/monetization/store/StoreItemView;->membershipLabel:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 103
    iget-object v1, p0, Lcom/narvii/monetization/store/StoreItemView;->freeLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(I)V

    .line 104
    iget-object v1, p0, Lcom/narvii/monetization/store/StoreItemView;->freeLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    const/4 v7, 0x1

    if-ne v6, v5, :cond_5

    .line 106
    iget-object v5, p0, Lcom/narvii/monetization/store/StoreItemView;->priceLabel:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 107
    iget v5, v1, Lcom/narvii/model/RestrictionInfo;->discountStatus:I

    if-ne v5, v7, :cond_4

    iget-boolean v5, p0, Lcom/narvii/monetization/store/StoreItemView;->isMemberShip:Z

    if-eqz v5, :cond_4

    .line 109
    iget-object v5, p0, Lcom/narvii/monetization/store/StoreItemView;->priceLabelMainText:Landroid/widget/TextView;

    iget v1, v1, Lcom/narvii/model/RestrictionInfo;->discountValue:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v1, p0, Lcom/narvii/monetization/store/StoreItemView;->disCountLabelAminoPlus:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 112
    :cond_4
    iget-object v5, p0, Lcom/narvii/monetization/store/StoreItemView;->priceLabelMainText:Landroid/widget/TextView;

    iget v1, v1, Lcom/narvii/model/RestrictionInfo;->restrictValue:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v1, p0, Lcom/narvii/monetization/store/StoreItemView;->disCountLabelAminoPlus:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_5
    const/4 v1, 0x3

    if-ne v6, v1, :cond_6

    goto :goto_1

    :cond_6
    if-ne v6, v7, :cond_9

    .line 118
    iget-object v1, p0, Lcom/narvii/monetization/store/StoreItemView;->freeLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(I)V

    .line 119
    iget-object v1, p0, Lcom/narvii/monetization/store/StoreItemView;->freeLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_7
    :goto_0
    const-string v6, "- -"

    if-eqz v1, :cond_8

    .line 94
    iget v1, v1, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    if-ne v1, v5, :cond_8

    .line 95
    iget-object v1, p0, Lcom/narvii/monetization/store/StoreItemView;->priceLabel:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 96
    iget-object v1, p0, Lcom/narvii/monetization/store/StoreItemView;->priceLabelMainText:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 98
    :cond_8
    iget-object v1, p0, Lcom/narvii/monetization/store/StoreItemView;->freeLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v1, p0, Lcom/narvii/monetization/store/StoreItemView;->freeLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_9
    :goto_1
    const v1, 0x7f090019

    if-eqz v2, :cond_a

    .line 123
    check-cast v0, Lcom/narvii/model/IStoreItem;

    invoke-interface {v0}, Lcom/narvii/model/IStoreItem;->isNew()Z

    move-result v0

    invoke-static {p0, v1, v0}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;IZ)V

    goto :goto_2

    .line 125
    :cond_a
    invoke-static {p0, v1, v4}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;IZ)V

    .line 128
    :goto_2
    iget-object v0, p0, Lcom/narvii/monetization/store/StoreItemView;->isSelectedLabel:Landroid/view/View;

    iget-boolean v1, p0, Lcom/narvii/monetization/store/StoreItemView;->isSelected:Z

    if-eqz v1, :cond_b

    const/4 v3, 0x0

    :cond_b
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    :goto_3
    return-void
.end method


# virtual methods
.method public setIsSelected(Z)V
    .locals 0

    .line 72
    iput-boolean p1, p0, Lcom/narvii/monetization/store/StoreItemView;->isSelected:Z

    .line 73
    invoke-direct {p0}, Lcom/narvii/monetization/store/StoreItemView;->updateView()V

    return-void
.end method

.method public setStoreItem(Lcom/narvii/monetization/store/data/StoreItem;Z)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/narvii/monetization/store/StoreItemView;->storeItem:Lcom/narvii/monetization/store/data/StoreItem;

    .line 67
    iput-boolean p2, p0, Lcom/narvii/monetization/store/StoreItemView;->isMemberShip:Z

    .line 68
    invoke-direct {p0}, Lcom/narvii/monetization/store/StoreItemView;->updateView()V

    return-void
.end method
