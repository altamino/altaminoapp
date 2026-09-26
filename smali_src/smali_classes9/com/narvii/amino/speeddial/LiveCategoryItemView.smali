.class public Lcom/narvii/amino/speeddial/LiveCategoryItemView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private activeMemberCount:Landroid/widget/TextView;

.field private activeMemberLabelContainer:Landroid/view/View;

.field private imgIndicator:Lcom/narvii/widget/NVImageView;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/amino/speeddial/LiveCategoryItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

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

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getBackgroundDrawable(Lcom/narvii/amino/speeddial/mode/LiveItemSpec;)Landroid/graphics/drawable/Drawable;
    .locals 6

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 6
    .line 7
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 11
    const/4 v2, 0x1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 15
    .line 16
    iget v3, p1, Lcom/narvii/amino/speeddial/mode/LiveItemSpec;->backgroundColor:I

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 20
    const/4 v3, 0x3

    .line 21
    .line 22
    new-array v3, v3, [F

    .line 23
    .line 24
    iget p1, p1, Lcom/narvii/amino/speeddial/mode/LiveItemSpec;->backgroundColor:I

    .line 25
    .line 26
    .line 27
    invoke-static {p1, v3}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 28
    const/4 p1, 0x2

    .line 29
    .line 30
    aget v4, v3, p1

    .line 31
    .line 32
    .line 33
    const v5, 0x3f4ccccd    # 0.8f

    .line 34
    mul-float/2addr v4, v5

    .line 35
    .line 36
    aput v4, v3, p1

    .line 37
    .line 38
    .line 39
    invoke-static {v3}, Landroid/graphics/Color;->HSVToColor([F)I

    .line 40
    move-result p1

    .line 41
    .line 42
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    .line 43
    .line 44
    .line 45
    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 52
    .line 53
    .line 54
    const p1, 0x10100a7

    .line 55
    .line 56
    .line 57
    filled-new-array {p1}, [I

    .line 58
    move-result-object p1

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p1, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 62
    .line 63
    sget-object p1, Landroid/util/StateSet;->WILD_CARD:[I

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 67
    return-object v0
.end method

.method private initViews()V
    .locals 1

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a0088

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    iput-object v0, p0, Lcom/narvii/amino/speeddial/LiveCategoryItemView;->activeMemberLabelContainer:Landroid/view/View;

    .line 10
    .line 11
    .line 12
    const v0, 0x7f0a093e

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Landroid/widget/TextView;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/narvii/amino/speeddial/LiveCategoryItemView;->activeMemberCount:Landroid/widget/TextView;

    .line 21
    .line 22
    .line 23
    const v0, 0x7f0a0809

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 30
    .line 31
    iput-object v0, p0, Lcom/narvii/amino/speeddial/LiveCategoryItemView;->imgIndicator:Lcom/narvii/widget/NVImageView;

    .line 32
    .line 33
    .line 34
    const v0, 0x7f0a0e9e

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    check-cast v0, Landroid/widget/TextView;

    .line 41
    .line 42
    iput-object v0, p0, Lcom/narvii/amino/speeddial/LiveCategoryItemView;->tvTitle:Landroid/widget/TextView;

    .line 43
    return-void
.end method

.method private isValidTopic(Ljava/lang/String;)Z
    .locals 2

    .line 1
    .line 2
    const-string v0, ":"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    array-length v0, p1

    .line 10
    const/4 v1, 0x3

    .line 11
    .line 12
    if-lt v0, v1, :cond_1

    .line 13
    .line 14
    sget-object v0, Lcom/narvii/amino/speeddial/mode/LiveCategory;->itemKeys:Ljava/util/List;

    .line 15
    const/4 v1, 0x2

    .line 16
    .line 17
    aget-object p1, p1, v1

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 21
    move-result p1

    .line 22
    .line 23
    if-nez p1, :cond_0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p1, 0x1

    .line 26
    return p1

    .line 27
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 28
    return p1
.end method


# virtual methods
.method public getMappedLiveItem(Ljava/lang/String;)Lcom/narvii/amino/speeddial/mode/LiveItemSpec;
    .locals 2

    .line 1
    .line 2
    const-string v0, ":"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1}, Lcom/narvii/amino/speeddial/LiveCategoryItemView;->isValidTopic(Ljava/lang/String;)Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    const/4 p1, 0x0

    .line 14
    return-object p1

    .line 15
    .line 16
    :cond_0
    sget-object p1, Lcom/narvii/amino/speeddial/mode/LiveCategory;->liveItems:Ljava/util/HashMap;

    .line 17
    const/4 v1, 0x2

    .line 18
    .line 19
    aget-object v0, v0, v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    check-cast p1, Lcom/narvii/amino/speeddial/mode/LiveItemSpec;

    .line 26
    return-object p1
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/amino/speeddial/LiveCategoryItemView;->initViews()V

    .line 7
    return-void
.end method

.method public updateLiveCategory(Lcom/narvii/amino/speeddial/mode/LiveCategory;)V
    .locals 5

    .line 1
    .line 2
    const/16 v0, 0x8

    .line 3
    .line 4
    if-eqz p1, :cond_3

    .line 5
    .line 6
    iget-object v1, p1, Lcom/narvii/amino/speeddial/mode/LiveCategory;->topic:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    goto :goto_1

    .line 14
    .line 15
    :cond_0
    iget-object v1, p1, Lcom/narvii/amino/speeddial/mode/LiveCategory;->topic:Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lcom/narvii/amino/speeddial/LiveCategoryItemView;->getMappedLiveItem(Ljava/lang/String;)Lcom/narvii/amino/speeddial/mode/LiveItemSpec;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 25
    return-void

    .line 26
    .line 27
    :cond_1
    iget-object v0, p0, Lcom/narvii/amino/speeddial/LiveCategoryItemView;->imgIndicator:Lcom/narvii/widget/NVImageView;

    .line 28
    const/4 v2, 0x0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v2}, Lcom/narvii/widget/NVImageView;->setShowPressedMask(Z)V

    .line 32
    .line 33
    iget-object v0, p0, Lcom/narvii/amino/speeddial/LiveCategoryItemView;->imgIndicator:Lcom/narvii/widget/NVImageView;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 37
    move-result-object v3

    .line 38
    .line 39
    iget v4, v1, Lcom/narvii/amino/speeddial/mode/LiveItemSpec;->iconId:I

    .line 40
    .line 41
    .line 42
    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 43
    move-result-object v3

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v3}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 47
    .line 48
    iget-object v0, p0, Lcom/narvii/amino/speeddial/LiveCategoryItemView;->activeMemberCount:Landroid/widget/TextView;

    .line 49
    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    const-string v4, ""

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    iget v4, p1, Lcom/narvii/amino/speeddial/mode/LiveCategory;->userProfileCount:I

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object v3

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    .line 72
    iget-object v0, p0, Lcom/narvii/amino/speeddial/LiveCategoryItemView;->tvTitle:Landroid/widget/TextView;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 76
    move-result-object v3

    .line 77
    .line 78
    iget v1, v1, Lcom/narvii/amino/speeddial/mode/LiveItemSpec;->titleId:I

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 82
    move-result-object v1

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    .line 87
    iget-object v0, p0, Lcom/narvii/amino/speeddial/LiveCategoryItemView;->activeMemberLabelContainer:Landroid/view/View;

    .line 88
    .line 89
    iget p1, p1, Lcom/narvii/amino/speeddial/mode/LiveCategory;->userProfileCount:I

    .line 90
    .line 91
    if-lez p1, :cond_2

    .line 92
    goto :goto_0

    .line 93
    :cond_2
    const/4 v2, 0x4

    .line 94
    .line 95
    .line 96
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 97
    return-void

    .line 98
    .line 99
    .line 100
    :cond_3
    :goto_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 101
    return-void
.end method
