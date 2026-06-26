.class public Lcom/narvii/amino/speeddial/LiveCategoryItemView;
.super Landroid/widget/FrameLayout;
.source "LiveCategoryItemView.java"


# instance fields
.field private activeMemberCount:Landroid/widget/TextView;

.field private activeMemberLabelContainer:Landroid/view/View;

.field private imgIndicator:Lcom/narvii/widget/NVImageView;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, v0}, Lcom/narvii/amino/speeddial/LiveCategoryItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getBackgroundDrawable(Lcom/narvii/amino/speeddial/mode/LiveItemSpec;)Landroid/graphics/drawable/Drawable;
    .locals 6

    .line 106
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 107
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v2, 0x1

    .line 108
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 109
    iget v3, p1, Lcom/narvii/amino/speeddial/mode/LiveItemSpec;->backgroundColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 v3, 0x3

    new-array v3, v3, [F

    .line 112
    iget p1, p1, Lcom/narvii/amino/speeddial/mode/LiveItemSpec;->backgroundColor:I

    invoke-static {p1, v3}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 p1, 0x2

    .line 113
    aget v4, v3, p1

    const v5, 0x3f4ccccd    # 0.8f

    mul-float v4, v4, v5

    aput v4, v3, p1

    .line 114
    invoke-static {v3}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p1

    .line 116
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 117
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 118
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    new-array p1, v2, [I

    const/4 v2, 0x0

    const v4, 0x10100a7

    aput v4, p1, v2

    .line 120
    invoke-virtual {v0, p1, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 121
    sget-object p1, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method private initViews()V
    .locals 1

    const v0, 0x7f090057

    .line 63
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/amino/speeddial/LiveCategoryItemView;->activeMemberLabelContainer:Landroid/view/View;

    const v0, 0x7f0906dd

    .line 64
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/amino/speeddial/LiveCategoryItemView;->activeMemberCount:Landroid/widget/TextView;

    const v0, 0x7f090684

    .line 65
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    iput-object v0, p0, Lcom/narvii/amino/speeddial/LiveCategoryItemView;->imgIndicator:Lcom/narvii/widget/NVImageView;

    const v0, 0x7f090b9a

    .line 66
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/amino/speeddial/LiveCategoryItemView;->tvTitle:Landroid/widget/TextView;

    return-void
.end method

.method private isValidTopic(Ljava/lang/String;)Z
    .locals 2

    const-string v0, ":"

    .line 70
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 71
    array-length v0, p1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    sget-object v0, Lcom/narvii/amino/speeddial/mode/LiveCategory;->itemKeys:Ljava/util/List;

    const/4 v1, 0x2

    aget-object p1, p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public getMappedLiveItem(Ljava/lang/String;)Lcom/narvii/amino/speeddial/mode/LiveItemSpec;
    .locals 2

    const-string v0, ":"

    .line 79
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-direct {p0, p1}, Lcom/narvii/amino/speeddial/LiveCategoryItemView;->isValidTopic(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 83
    :cond_0
    sget-object p1, Lcom/narvii/amino/speeddial/mode/LiveCategory;->liveItems:Ljava/util/HashMap;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/amino/speeddial/mode/LiveItemSpec;

    return-object p1
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 58
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 59
    invoke-direct {p0}, Lcom/narvii/amino/speeddial/LiveCategoryItemView;->initViews()V

    return-void
.end method

.method public updateLiveCategory(Lcom/narvii/amino/speeddial/mode/LiveCategory;)V
    .locals 5

    const/16 v0, 0x8

    if-eqz p1, :cond_3

    .line 87
    iget-object v1, p1, Lcom/narvii/amino/speeddial/mode/LiveCategory;->topic:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 92
    :cond_0
    iget-object v1, p1, Lcom/narvii/amino/speeddial/mode/LiveCategory;->topic:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/narvii/amino/speeddial/LiveCategoryItemView;->getMappedLiveItem(Ljava/lang/String;)Lcom/narvii/amino/speeddial/mode/LiveItemSpec;

    move-result-object v1

    if-nez v1, :cond_1

    .line 94
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/narvii/amino/speeddial/LiveCategoryItemView;->imgIndicator:Lcom/narvii/widget/NVImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/narvii/widget/NVImageView;->setShowPressedMask(Z)V

    .line 98
    iget-object v0, p0, Lcom/narvii/amino/speeddial/LiveCategoryItemView;->imgIndicator:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, v1, Lcom/narvii/amino/speeddial/mode/LiveItemSpec;->iconId:I

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    iget-object v0, p0, Lcom/narvii/amino/speeddial/LiveCategoryItemView;->activeMemberCount:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/narvii/amino/speeddial/mode/LiveCategory;->userProfileCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcom/narvii/amino/speeddial/LiveCategoryItemView;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v1, v1, Lcom/narvii/amino/speeddial/mode/LiveItemSpec;->titleId:I

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lcom/narvii/amino/speeddial/LiveCategoryItemView;->activeMemberLabelContainer:Landroid/view/View;

    iget p1, p1, Lcom/narvii/amino/speeddial/mode/LiveCategory;->userProfileCount:I

    if-lez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 88
    :cond_3
    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
