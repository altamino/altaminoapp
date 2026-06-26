.class public Lcom/narvii/blog/category/BlogCategoryListItem;
.super Landroid/widget/RelativeLayout;
.source "BlogCategoryListItem.java"


# instance fields
.field desc:Landroid/widget/TextView;

.field icon:Lcom/narvii/widget/ThumbImageView;

.field status:Landroid/widget/ImageView;

.field stub:Landroid/widget/TextView;

.field title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/narvii/blog/category/BlogCategoryListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 41
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f090562

    .line 43
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/ThumbImageView;

    iput-object v0, p0, Lcom/narvii/blog/category/BlogCategoryListItem;->icon:Lcom/narvii/widget/ThumbImageView;

    const v0, 0x7f090b9a

    .line 44
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/blog/category/BlogCategoryListItem;->title:Landroid/widget/TextView;

    const v0, 0x7f090a97

    .line 45
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/narvii/blog/category/BlogCategoryListItem;->status:Landroid/widget/ImageView;

    const v0, 0x7f090b08

    .line 46
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/blog/category/BlogCategoryListItem;->desc:Landroid/widget/TextView;

    const v0, 0x7f090b03

    .line 47
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/blog/category/BlogCategoryListItem;->stub:Landroid/widget/TextView;

    return-void
.end method

.method public setCategory(Lcom/narvii/model/BlogCategory;)V
    .locals 10

    .line 51
    iget-object v0, p1, Lcom/narvii/model/BlogCategory;->icon:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/high16 v2, 0x41f00000    # 30.0f

    .line 52
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    .line 53
    iget-object v0, p0, Lcom/narvii/blog/category/BlogCategoryListItem;->icon:Lcom/narvii/widget/ThumbImageView;

    new-instance v2, Lcom/narvii/widget/CommunityNameDrawable;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p1, Lcom/narvii/model/BlogCategory;->label:Ljava/lang/String;

    const/4 v7, -0x1

    const v9, -0x777778

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/narvii/widget/CommunityNameDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;IFI)V

    invoke-virtual {v0, v2}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/narvii/blog/category/BlogCategoryListItem;->icon:Lcom/narvii/widget/ThumbImageView;

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    iget-object v0, p0, Lcom/narvii/blog/category/BlogCategoryListItem;->icon:Lcom/narvii/widget/ThumbImageView;

    iget-object v2, p1, Lcom/narvii/model/BlogCategory;->icon:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 59
    :goto_0
    iget v0, p1, Lcom/narvii/model/BlogCategory;->status:I

    const/4 v2, 0x3

    const/16 v3, 0x9

    if-ne v0, v2, :cond_1

    .line 60
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080124

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    :cond_1
    if-ne v0, v3, :cond_2

    .line 62
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080122

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 64
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/narvii/blog/category/BlogCategoryListItem;->status:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    iget-object v0, p0, Lcom/narvii/blog/category/BlogCategoryListItem;->title:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/narvii/model/BlogCategory;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v0, p0, Lcom/narvii/blog/category/BlogCategoryListItem;->desc:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/narvii/model/BlogCategory;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Lcom/narvii/blog/category/BlogCategoryListItem;->desc:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/narvii/model/BlogCategory;->content:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x8

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 68
    iget p1, p1, Lcom/narvii/model/BlogCategory;->status:I

    if-ne p1, v3, :cond_4

    .line 69
    iget-object p1, p0, Lcom/narvii/blog/category/BlogCategoryListItem;->icon:Lcom/narvii/widget/ThumbImageView;

    const v0, 0x3e99999a    # 0.3f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 70
    iget-object p1, p0, Lcom/narvii/blog/category/BlogCategoryListItem;->title:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 71
    iget-object p1, p0, Lcom/narvii/blog/category/BlogCategoryListItem;->desc:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_3

    .line 73
    :cond_4
    iget-object p1, p0, Lcom/narvii/blog/category/BlogCategoryListItem;->icon:Lcom/narvii/widget/ThumbImageView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 74
    iget-object p1, p0, Lcom/narvii/blog/category/BlogCategoryListItem;->title:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 75
    iget-object p1, p0, Lcom/narvii/blog/category/BlogCategoryListItem;->desc:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    :goto_3
    return-void
.end method

.method public setChecked(Ljava/lang/Boolean;)V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/narvii/blog/category/BlogCategoryListItem;->stub:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/narvii/blog/category/BlogCategoryListItem;->stub:Landroid/widget/TextView;

    if-nez p1, :cond_2

    const p1, 0x7f0f048e

    goto :goto_2

    :cond_2
    const p1, 0x7f0f0483

    :goto_2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
