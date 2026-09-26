.class public Lcom/narvii/blog/category/BlogCategoryListItem;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


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

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/blog/category/BlogCategoryListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a06d5

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/widget/ThumbImageView;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/blog/category/BlogCategoryListItem;->icon:Lcom/narvii/widget/ThumbImageView;

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0a0e9e

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Landroid/widget/TextView;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/blog/category/BlogCategoryListItem;->title:Landroid/widget/TextView;

    .line 26
    .line 27
    .line 28
    const v0, 0x7f0a0d90

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    check-cast v0, Landroid/widget/ImageView;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/narvii/blog/category/BlogCategoryListItem;->status:Landroid/widget/ImageView;

    .line 37
    .line 38
    .line 39
    const v0, 0x7f0a0dea

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    check-cast v0, Landroid/widget/TextView;

    .line 46
    .line 47
    iput-object v0, p0, Lcom/narvii/blog/category/BlogCategoryListItem;->desc:Landroid/widget/TextView;

    .line 48
    .line 49
    .line 50
    const v0, 0x7f0a0de5

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    check-cast v0, Landroid/widget/TextView;

    .line 57
    .line 58
    iput-object v0, p0, Lcom/narvii/blog/category/BlogCategoryListItem;->stub:Landroid/widget/TextView;

    .line 59
    return-void
.end method

.method public setCategory(Lcom/narvii/model/BlogCategory;)V
    .locals 10

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/model/BlogCategory;->icon:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 17
    move-result-object v0

    .line 18
    const/4 v2, 0x1

    .line 19
    .line 20
    const/high16 v3, 0x41f00000    # 30.0f

    .line 21
    .line 22
    .line 23
    invoke-static {v2, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 24
    move-result v8

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/blog/category/BlogCategoryListItem;->icon:Lcom/narvii/widget/ThumbImageView;

    .line 27
    .line 28
    new-instance v2, Lcom/narvii/widget/CommunityNameDrawable;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 32
    move-result-object v5

    .line 33
    .line 34
    iget-object v6, p1, Lcom/narvii/model/BlogCategory;->label:Ljava/lang/String;

    .line 35
    const/4 v7, -0x1

    .line 36
    .line 37
    .line 38
    const v9, -0x777778

    .line 39
    move-object v4, v2

    .line 40
    .line 41
    .line 42
    invoke-direct/range {v4 .. v9}, Lcom/narvii/widget/CommunityNameDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;IFI)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v2}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 46
    goto :goto_0

    .line 47
    .line 48
    :cond_0
    iget-object v0, p0, Lcom/narvii/blog/category/BlogCategoryListItem;->icon:Lcom/narvii/widget/ThumbImageView;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    .line 53
    iget-object v0, p0, Lcom/narvii/blog/category/BlogCategoryListItem;->icon:Lcom/narvii/widget/ThumbImageView;

    .line 54
    .line 55
    iget-object v2, p1, Lcom/narvii/model/BlogCategory;->icon:Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 59
    .line 60
    :goto_0
    iget v0, p1, Lcom/narvii/model/BlogCategory;->status:I

    .line 61
    const/4 v2, 0x3

    .line 62
    .line 63
    const/16 v3, 0x9

    .line 64
    .line 65
    if-ne v0, v2, :cond_1

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 69
    move-result-object v0

    .line 70
    .line 71
    .line 72
    const v1, 0x7f0801b3

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 76
    move-result-object v1

    .line 77
    goto :goto_1

    .line 78
    .line 79
    :cond_1
    if-ne v0, v3, :cond_2

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 83
    move-result-object v0

    .line 84
    .line 85
    .line 86
    const v1, 0x7f0801b1

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 90
    move-result-object v1

    .line 91
    .line 92
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/narvii/blog/category/BlogCategoryListItem;->status:Landroid/widget/ImageView;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    .line 97
    iget-object v0, p0, Lcom/narvii/blog/category/BlogCategoryListItem;->title:Landroid/widget/TextView;

    .line 98
    .line 99
    iget-object v1, p1, Lcom/narvii/model/BlogCategory;->label:Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    .line 104
    iget-object v0, p0, Lcom/narvii/blog/category/BlogCategoryListItem;->desc:Landroid/widget/TextView;

    .line 105
    .line 106
    iget-object v1, p1, Lcom/narvii/model/BlogCategory;->content:Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    .line 111
    iget-object v0, p0, Lcom/narvii/blog/category/BlogCategoryListItem;->desc:Landroid/widget/TextView;

    .line 112
    .line 113
    iget-object v1, p1, Lcom/narvii/model/BlogCategory;->content:Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 117
    move-result v1

    .line 118
    .line 119
    if-eqz v1, :cond_3

    .line 120
    .line 121
    const/16 v1, 0x8

    .line 122
    goto :goto_2

    .line 123
    :cond_3
    const/4 v1, 0x0

    .line 124
    .line 125
    .line 126
    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 127
    .line 128
    iget p1, p1, Lcom/narvii/model/BlogCategory;->status:I

    .line 129
    .line 130
    if-ne p1, v3, :cond_4

    .line 131
    .line 132
    iget-object p1, p0, Lcom/narvii/blog/category/BlogCategoryListItem;->icon:Lcom/narvii/widget/ThumbImageView;

    .line 133
    .line 134
    .line 135
    const v0, 0x3e99999a    # 0.3f

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 139
    .line 140
    iget-object p1, p0, Lcom/narvii/blog/category/BlogCategoryListItem;->title:Landroid/widget/TextView;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 144
    .line 145
    iget-object p1, p0, Lcom/narvii/blog/category/BlogCategoryListItem;->desc:Landroid/widget/TextView;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 149
    goto :goto_3

    .line 150
    .line 151
    :cond_4
    iget-object p1, p0, Lcom/narvii/blog/category/BlogCategoryListItem;->icon:Lcom/narvii/widget/ThumbImageView;

    .line 152
    .line 153
    const/high16 v0, 0x3f800000    # 1.0f

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 157
    .line 158
    iget-object p1, p0, Lcom/narvii/blog/category/BlogCategoryListItem;->title:Landroid/widget/TextView;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 162
    .line 163
    iget-object p1, p0, Lcom/narvii/blog/category/BlogCategoryListItem;->desc:Landroid/widget/TextView;

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 167
    :goto_3
    return-void
.end method

.method public setChecked(Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/blog/category/BlogCategoryListItem;->stub:Landroid/widget/TextView;

    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    move-result v1

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x4

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 15
    .line 16
    .line 17
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/blog/category/BlogCategoryListItem;->stub:Landroid/widget/TextView;

    .line 20
    .line 21
    if-nez p1, :cond_2

    .line 22
    .line 23
    .line 24
    const p1, 0x7f120539

    .line 25
    goto :goto_2

    .line 26
    .line 27
    .line 28
    :cond_2
    const p1, 0x7f12052e

    .line 29
    .line 30
    .line 31
    :goto_2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 32
    return-void
.end method
