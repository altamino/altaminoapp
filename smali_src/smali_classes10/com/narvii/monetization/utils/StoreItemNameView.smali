.class public Lcom/narvii/monetization/utils/StoreItemNameView;
.super Lcom/narvii/widget/ShrinkLayout;
.source "SourceFile"


# instance fields
.field aminoBadge:Landroid/view/View;

.field nameTV:Landroid/widget/TextView;

.field newLabel:Landroid/view/View;

.field stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

.field textColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/ShrinkLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/monetization/utils/StoreItemNameView;->getLayoutId()I

    .line 11
    move-result v1

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 15
    .line 16
    sget-object v0, Lcom/narvii/amino/R$styleable;->StoreItemNameView:[I

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    move-result-object p2

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 28
    move-result-object p2

    .line 29
    .line 30
    .line 31
    const v0, 0x7f0704ee

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 35
    move-result p2

    .line 36
    const/4 v0, 0x0

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 40
    move-result p2

    .line 41
    int-to-float p2, p2

    .line 42
    const/4 v1, 0x2

    .line 43
    .line 44
    .line 45
    const v2, -0xcccccc

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 49
    move-result v1

    .line 50
    .line 51
    iput v1, p0, Lcom/narvii/monetization/utils/StoreItemNameView;->textColor:I

    .line 52
    const/4 v1, 0x3

    .line 53
    const/4 v2, -0x1

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 57
    move-result v1

    .line 58
    const/4 v2, 0x1

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 62
    move-result v2

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 66
    .line 67
    .line 68
    const p1, 0x7f0a0346

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    move-result-object p1

    .line 73
    .line 74
    check-cast p1, Landroid/widget/TextView;

    .line 75
    .line 76
    iput-object p1, p0, Lcom/narvii/monetization/utils/StoreItemNameView;->nameTV:Landroid/widget/TextView;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v0, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 80
    .line 81
    iget-object p1, p0, Lcom/narvii/monetization/utils/StoreItemNameView;->nameTV:Landroid/widget/TextView;

    .line 82
    .line 83
    iget p2, p0, Lcom/narvii/monetization/utils/StoreItemNameView;->textColor:I

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    .line 88
    iget-object p1, p0, Lcom/narvii/monetization/utils/StoreItemNameView;->nameTV:Landroid/widget/TextView;

    .line 89
    .line 90
    .line 91
    invoke-static {v2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    .line 92
    move-result-object p2

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 96
    .line 97
    if-lez v1, :cond_0

    .line 98
    .line 99
    iget-object p1, p0, Lcom/narvii/monetization/utils/StoreItemNameView;->nameTV:Landroid/widget/TextView;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 103
    .line 104
    .line 105
    :cond_0
    const p1, 0x7f0a010a

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 109
    move-result-object p1

    .line 110
    .line 111
    iput-object p1, p0, Lcom/narvii/monetization/utils/StoreItemNameView;->aminoBadge:Landroid/view/View;

    .line 112
    .line 113
    .line 114
    const p1, 0x7f0a0025

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 118
    move-result-object p1

    .line 119
    .line 120
    iput-object p1, p0, Lcom/narvii/monetization/utils/StoreItemNameView;->newLabel:Landroid/view/View;

    .line 121
    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0d0712

    return v0
.end method

.method public setStoreItem(Lcom/narvii/model/IStoreItem;)V
    .locals 5

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/monetization/utils/StoreItemNameView;->nameTV:Landroid/widget/TextView;

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/monetization/utils/StoreItemNameView;->aminoBadge:Landroid/view/View;

    .line 11
    .line 12
    const/16 v0, 0x8

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 16
    return-void

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/utils/StoreItemNameView;->nameTV:Landroid/widget/TextView;

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Lcom/narvii/model/IStoreItem;->getName()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    instance-of v0, p1, Lcom/narvii/model/NVObject;

    .line 28
    const/4 v1, 0x1

    .line 29
    const/4 v2, 0x0

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    move-object v0, p1

    .line 33
    .line 34
    check-cast v0, Lcom/narvii/model/NVObject;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->status()I

    .line 38
    move-result v3

    .line 39
    .line 40
    const/16 v4, 0x9

    .line 41
    .line 42
    if-eq v3, v4, :cond_1

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->status()I

    .line 46
    move-result v0

    .line 47
    .line 48
    const/16 v3, 0xa

    .line 49
    .line 50
    if-ne v0, v3, :cond_2

    .line 51
    :cond_1
    move v0, v1

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    move v0, v2

    .line 54
    .line 55
    :goto_0
    iget-object v3, p0, Lcom/narvii/monetization/utils/StoreItemNameView;->nameTV:Landroid/widget/TextView;

    .line 56
    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    .line 60
    const v0, -0x7a8a9

    .line 61
    goto :goto_1

    .line 62
    .line 63
    :cond_3
    iget v0, p0, Lcom/narvii/monetization/utils/StoreItemNameView;->textColor:I

    .line 64
    .line 65
    .line 66
    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 67
    .line 68
    .line 69
    invoke-interface {p1}, Lcom/narvii/model/IStoreItem;->getRestrictionInfo()Lcom/narvii/model/RestrictionInfo;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    if-eqz v0, :cond_4

    .line 73
    .line 74
    iget v0, v0, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    .line 75
    const/4 v3, 0x2

    .line 76
    .line 77
    if-ne v0, v3, :cond_4

    .line 78
    goto :goto_2

    .line 79
    :cond_4
    move v1, v2

    .line 80
    .line 81
    :goto_2
    iget-object v0, p0, Lcom/narvii/monetization/utils/StoreItemNameView;->aminoBadge:Landroid/view/View;

    .line 82
    .line 83
    .line 84
    invoke-static {v0, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 85
    .line 86
    iget-object v0, p0, Lcom/narvii/monetization/utils/StoreItemNameView;->newLabel:Landroid/view/View;

    .line 87
    .line 88
    .line 89
    invoke-interface {p1}, Lcom/narvii/model/IStoreItem;->isNew()Z

    .line 90
    move-result p1

    .line 91
    .line 92
    .line 93
    invoke-static {v0, p1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 94
    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/monetization/utils/StoreItemNameView;->textColor:I

    return-void
.end method
