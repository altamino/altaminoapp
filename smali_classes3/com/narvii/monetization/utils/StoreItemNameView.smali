.class public Lcom/narvii/monetization/utils/StoreItemNameView;
.super Lcom/narvii/widget/ShrinkLayout;
.source "StoreItemNameView.java"


# instance fields
.field aminoBadge:Landroid/view/View;

.field nameTV:Landroid/widget/TextView;

.field newLabel:Landroid/view/View;

.field stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

.field textColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/ShrinkLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/narvii/monetization/utils/StoreItemNameView;->getLayoutId()I

    move-result v1

    invoke-static {v0, v1, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 35
    sget-object v0, Lcom/narvii/amino/R$styleable;->StoreItemNameView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 36
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0702b9

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    const/4 v1, 0x2

    const v2, -0xcccccc

    .line 37
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/narvii/monetization/utils/StoreItemNameView;->textColor:I

    const/4 v1, 0x3

    const/4 v2, -0x1

    .line 38
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    const/4 v2, 0x1

    .line 39
    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 40
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const p1, 0x7f09027d

    .line 42
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/monetization/utils/StoreItemNameView;->nameTV:Landroid/widget/TextView;

    .line 43
    iget-object p1, p0, Lcom/narvii/monetization/utils/StoreItemNameView;->nameTV:Landroid/widget/TextView;

    invoke-virtual {p1, v0, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 44
    iget-object p1, p0, Lcom/narvii/monetization/utils/StoreItemNameView;->nameTV:Landroid/widget/TextView;

    iget p2, p0, Lcom/narvii/monetization/utils/StoreItemNameView;->textColor:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45
    iget-object p1, p0, Lcom/narvii/monetization/utils/StoreItemNameView;->nameTV:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    if-lez v1, :cond_0

    .line 47
    iget-object p1, p0, Lcom/narvii/monetization/utils/StoreItemNameView;->nameTV:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_0
    const p1, 0x7f0900a2

    .line 50
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/utils/StoreItemNameView;->aminoBadge:Landroid/view/View;

    const p1, 0x7f090019

    .line 51
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/utils/StoreItemNameView;->newLabel:Landroid/view/View;

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0b065b

    return v0
.end method

.method public setStoreItem(Lcom/narvii/model/IStoreItem;)V
    .locals 5

    if-nez p1, :cond_0

    .line 60
    iget-object p1, p0, Lcom/narvii/monetization/utils/StoreItemNameView;->nameTV:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object p1, p0, Lcom/narvii/monetization/utils/StoreItemNameView;->aminoBadge:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/utils/StoreItemNameView;->nameTV:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/narvii/model/IStoreItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    instance-of v0, p1, Lcom/narvii/model/NVObject;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 67
    move-object v0, p1

    check-cast v0, Lcom/narvii/model/NVObject;

    .line 68
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->status()I

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_1

    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->status()I

    move-result v0

    const/16 v3, 0xa

    if-ne v0, v3, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 72
    :goto_0
    iget-object v3, p0, Lcom/narvii/monetization/utils/StoreItemNameView;->nameTV:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    const v0, -0x7a8a9

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/narvii/monetization/utils/StoreItemNameView;->textColor:I

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73
    invoke-interface {p1}, Lcom/narvii/model/IStoreItem;->getRestrictionInfo()Lcom/narvii/model/RestrictionInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 74
    iget v0, v0, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    .line 75
    :goto_2
    iget-object v0, p0, Lcom/narvii/monetization/utils/StoreItemNameView;->aminoBadge:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 77
    iget-object v0, p0, Lcom/narvii/monetization/utils/StoreItemNameView;->newLabel:Landroid/view/View;

    invoke-interface {p1}, Lcom/narvii/model/IStoreItem;->isNew()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 81
    iput p1, p0, Lcom/narvii/monetization/utils/StoreItemNameView;->textColor:I

    return-void
.end method
