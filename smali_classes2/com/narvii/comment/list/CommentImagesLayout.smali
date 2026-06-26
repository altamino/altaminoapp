.class public Lcom/narvii/comment/list/CommentImagesLayout;
.super Landroid/widget/LinearLayout;
.source "CommentImagesLayout.java"


# static fields
.field static final RATIO:F = 0.715f


# instance fields
.field darkTheme:Z

.field image1:Lcom/narvii/widget/NVImageView;

.field image2:Lcom/narvii/widget/NVImageView;

.field image3:Lcom/narvii/widget/NVImageView;

.field image4:Lcom/narvii/widget/NVImageView;

.field image5:Lcom/narvii/widget/NVImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private setImagePlaceholder(Lcom/narvii/widget/NVImageView;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 44
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/narvii/comment/list/CommentImagesLayout;->darkTheme:Z

    if-eqz v1, :cond_0

    const v1, 0x7f060172

    goto :goto_0

    :cond_0
    const v1, 0x7f060170

    :goto_0
    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVImageView;->setDefaultDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .line 50
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f090572

    .line 51
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    iput-object v0, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image1:Lcom/narvii/widget/NVImageView;

    const v0, 0x7f090573

    .line 52
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    iput-object v0, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image2:Lcom/narvii/widget/NVImageView;

    const v0, 0x7f090574

    .line 53
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    iput-object v0, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image3:Lcom/narvii/widget/NVImageView;

    const v0, 0x7f090575

    .line 54
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    iput-object v0, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image4:Lcom/narvii/widget/NVImageView;

    const v0, 0x7f090576

    .line 55
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    iput-object v0, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image5:Lcom/narvii/widget/NVImageView;

    .line 56
    iget-object v0, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image1:Lcom/narvii/widget/NVImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 57
    iget-object v0, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image2:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 58
    iget-object v0, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image3:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 59
    iget-object v0, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image4:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 60
    iget-object v0, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image5:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    .line 116
    iget-object p1, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image5:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/4 v3, 0x5

    const/4 v4, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x5

    goto :goto_0

    .line 118
    :cond_0
    iget-object p1, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image4:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x4

    goto :goto_0

    .line 120
    :cond_1
    iget-object p1, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image3:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x3

    goto :goto_0

    .line 122
    :cond_2
    iget-object p1, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image2:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x2

    goto :goto_0

    .line 124
    :cond_3
    iget-object p1, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image1:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    .line 128
    :goto_0
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 129
    iget-object v5, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image1:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_1

    .line 131
    :cond_5
    iget-object v5, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image1:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_1
    if-le p1, v1, :cond_b

    sub-int/2addr p4, p2

    .line 135
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result p2

    sub-int p2, p4, p2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v0

    sub-int/2addr p2, v0

    mul-int/lit8 v0, v5, 0x4

    sub-int/2addr p2, v0

    div-int/2addr p2, v3

    sub-int/2addr p5, p3

    .line 136
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result p3

    sub-int/2addr p5, p3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p5, p3

    .line 137
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result p3

    .line 139
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 140
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v0

    .line 141
    iget-object v1, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image1:Lcom/narvii/widget/NVImageView;

    sub-int v6, p4, v0

    sub-int v7, v6, p2

    add-int/2addr p5, p3

    invoke-virtual {v1, v7, p3, v6, p5}, Landroid/widget/ImageView;->layout(IIII)V

    add-int/2addr v5, p2

    add-int/2addr v0, v5

    .line 143
    iget-object v1, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image2:Lcom/narvii/widget/NVImageView;

    sub-int v6, p4, v0

    sub-int v7, v6, p2

    invoke-virtual {v1, v7, p3, v6, p5}, Landroid/widget/ImageView;->layout(IIII)V

    add-int/2addr v0, v5

    .line 145
    iget-object v1, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image3:Lcom/narvii/widget/NVImageView;

    sub-int v6, p4, v0

    sub-int v7, v6, p2

    invoke-virtual {v1, v7, p3, v6, p5}, Landroid/widget/ImageView;->layout(IIII)V

    add-int/2addr v0, v5

    if-ge p1, v2, :cond_6

    .line 148
    iget-object v1, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image4:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_2

    .line 150
    :cond_6
    iget-object v1, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image4:Lcom/narvii/widget/NVImageView;

    sub-int v2, p4, v0

    sub-int v6, v2, p2

    invoke-virtual {v1, v6, p3, v2, p5}, Landroid/widget/ImageView;->layout(IIII)V

    :goto_2
    add-int/2addr v0, v5

    if-ge p1, v3, :cond_7

    .line 154
    iget-object p1, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image5:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1, v4, v4, v4, v4}, Landroid/widget/ImageView;->layout(IIII)V

    goto/16 :goto_5

    .line 156
    :cond_7
    iget-object p1, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image5:Lcom/narvii/widget/NVImageView;

    sub-int/2addr p4, v0

    sub-int p2, p4, p2

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/ImageView;->layout(IIII)V

    goto/16 :goto_5

    .line 159
    :cond_8
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result p4

    .line 160
    iget-object v0, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image1:Lcom/narvii/widget/NVImageView;

    add-int v1, p4, p2

    add-int/2addr p5, p3

    invoke-virtual {v0, p4, p3, v1, p5}, Landroid/widget/ImageView;->layout(IIII)V

    add-int/2addr v5, p2

    add-int/2addr p4, v5

    .line 162
    iget-object v0, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image2:Lcom/narvii/widget/NVImageView;

    add-int v1, p4, p2

    invoke-virtual {v0, p4, p3, v1, p5}, Landroid/widget/ImageView;->layout(IIII)V

    add-int/2addr p4, v5

    .line 164
    iget-object v0, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image3:Lcom/narvii/widget/NVImageView;

    add-int v1, p4, p2

    invoke-virtual {v0, p4, p3, v1, p5}, Landroid/widget/ImageView;->layout(IIII)V

    add-int/2addr p4, v5

    if-ge p1, v2, :cond_9

    .line 167
    iget-object v0, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image4:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_3

    .line 169
    :cond_9
    iget-object v0, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image4:Lcom/narvii/widget/NVImageView;

    add-int v1, p4, p2

    invoke-virtual {v0, p4, p3, v1, p5}, Landroid/widget/ImageView;->layout(IIII)V

    :goto_3
    add-int/2addr p4, v5

    if-ge p1, v3, :cond_a

    .line 173
    iget-object p1, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image5:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1, v4, v4, v4, v4}, Landroid/widget/ImageView;->layout(IIII)V

    goto/16 :goto_5

    .line 175
    :cond_a
    iget-object p1, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image5:Lcom/narvii/widget/NVImageView;

    add-int/2addr p2, p4

    invoke-virtual {p1, p4, p3, p2, p5}, Landroid/widget/ImageView;->layout(IIII)V

    goto/16 :goto_5

    :cond_b
    if-le p1, v0, :cond_d

    sub-int/2addr p4, p2

    .line 180
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result p1

    sub-int p1, p4, p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    sub-int/2addr p1, v5

    div-int/2addr p1, v1

    sub-int/2addr p5, p3

    .line 181
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result p2

    sub-int/2addr p5, p2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result p2

    sub-int/2addr p5, p2

    .line 182
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result p2

    .line 183
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result p3

    if-eqz p3, :cond_c

    .line 184
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result p3

    .line 185
    iget-object v0, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image1:Lcom/narvii/widget/NVImageView;

    sub-int v1, p4, p3

    sub-int v2, v1, p1

    add-int/2addr p5, p2

    invoke-virtual {v0, v2, p2, v1, p5}, Landroid/widget/ImageView;->layout(IIII)V

    add-int/2addr v5, p1

    add-int/2addr p3, v5

    .line 187
    iget-object v0, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image2:Lcom/narvii/widget/NVImageView;

    sub-int/2addr p4, p3

    sub-int p1, p4, p1

    invoke-virtual {v0, p1, p2, p4, p5}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_4

    .line 189
    :cond_c
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result p3

    .line 190
    iget-object p4, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image1:Lcom/narvii/widget/NVImageView;

    add-int v0, p3, p1

    add-int/2addr p5, p2

    invoke-virtual {p4, p3, p2, v0, p5}, Landroid/widget/ImageView;->layout(IIII)V

    add-int/2addr v5, p1

    add-int/2addr p3, v5

    .line 192
    iget-object p4, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image2:Lcom/narvii/widget/NVImageView;

    add-int/2addr p1, p3

    invoke-virtual {p4, p3, p2, p1, p5}, Landroid/widget/ImageView;->layout(IIII)V

    .line 194
    :goto_4
    iget-object p1, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image3:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1, v4, v4, v4, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 195
    iget-object p1, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image4:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1, v4, v4, v4, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 196
    iget-object p1, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image5:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1, v4, v4, v4, v4}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_5

    :cond_d
    if-lez p1, :cond_e

    .line 199
    iget-object p1, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image1:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    sub-int/2addr p4, p2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result p2

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result p2

    sub-int/2addr p5, p2

    invoke-virtual {p1, v0, v1, p4, p5}, Landroid/widget/ImageView;->layout(IIII)V

    .line 200
    iget-object p1, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image2:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1, v4, v4, v4, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 201
    iget-object p1, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image3:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1, v4, v4, v4, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 202
    iget-object p1, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image4:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1, v4, v4, v4, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 203
    iget-object p1, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image5:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1, v4, v4, v4, v4}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_5

    .line 205
    :cond_e
    iget-object p1, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image1:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1, v4, v4, v4, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 206
    iget-object p1, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image2:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1, v4, v4, v4, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 207
    iget-object p1, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image3:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1, v4, v4, v4, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 208
    iget-object p1, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image4:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1, v4, v4, v4, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 209
    iget-object p1, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image5:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1, v4, v4, v4, v4}, Landroid/widget/ImageView;->layout(IIII)V

    :goto_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 80
    iget-object p2, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image5:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getVisibility()I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x4

    const/4 v2, 0x5

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-nez p2, :cond_0

    const/4 p2, 0x5

    goto :goto_0

    .line 82
    :cond_0
    iget-object p2, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image4:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getVisibility()I

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x4

    goto :goto_0

    .line 84
    :cond_1
    iget-object p2, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image3:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getVisibility()I

    move-result p2

    if-nez p2, :cond_2

    const/4 p2, 0x3

    goto :goto_0

    .line 86
    :cond_2
    iget-object p2, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image2:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getVisibility()I

    move-result p2

    if-nez p2, :cond_3

    const/4 p2, 0x2

    goto :goto_0

    .line 88
    :cond_3
    iget-object p2, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image1:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getVisibility()I

    move-result p2

    if-nez p2, :cond_4

    const/4 p2, 0x1

    goto :goto_0

    :cond_4
    const/4 p2, 0x0

    :goto_0
    if-le p2, v3, :cond_5

    .line 92
    iget-object p2, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image1:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 93
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 94
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    mul-int/lit8 p2, p2, 0x4

    sub-int/2addr v0, p2

    .line 95
    div-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result p2

    add-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result p2

    add-int/2addr v0, p2

    .line 96
    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    goto :goto_1

    :cond_5
    const v1, 0x3f370a3d    # 0.715f

    if-le p2, v0, :cond_6

    .line 98
    iget-object p2, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image1:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 99
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 100
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    sub-int/2addr v0, p2

    .line 101
    div-int/2addr v0, v3

    int-to-float p2, v0

    mul-float p2, p2, v1

    float-to-int p2, p2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    .line 102
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    goto :goto_1

    :cond_6
    if-lez p2, :cond_7

    .line 104
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 105
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result p2

    sub-int p2, p1, p2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v0

    sub-int/2addr p2, v0

    int-to-float p2, p2

    mul-float p2, p2, v1

    float-to-int p2, p2

    .line 106
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    .line 107
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    goto :goto_1

    .line 109
    :cond_7
    invoke-virtual {p0, v4, v4}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    :goto_1
    return-void
.end method

.method public setDarkTheme(Z)V
    .locals 0

    .line 35
    iget-object p1, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image1:Lcom/narvii/widget/NVImageView;

    invoke-direct {p0, p1}, Lcom/narvii/comment/list/CommentImagesLayout;->setImagePlaceholder(Lcom/narvii/widget/NVImageView;)V

    .line 36
    iget-object p1, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image2:Lcom/narvii/widget/NVImageView;

    invoke-direct {p0, p1}, Lcom/narvii/comment/list/CommentImagesLayout;->setImagePlaceholder(Lcom/narvii/widget/NVImageView;)V

    .line 37
    iget-object p1, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image3:Lcom/narvii/widget/NVImageView;

    invoke-direct {p0, p1}, Lcom/narvii/comment/list/CommentImagesLayout;->setImagePlaceholder(Lcom/narvii/widget/NVImageView;)V

    .line 38
    iget-object p1, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image4:Lcom/narvii/widget/NVImageView;

    invoke-direct {p0, p1}, Lcom/narvii/comment/list/CommentImagesLayout;->setImagePlaceholder(Lcom/narvii/widget/NVImageView;)V

    .line 39
    iget-object p1, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image5:Lcom/narvii/widget/NVImageView;

    invoke-direct {p0, p1}, Lcom/narvii/comment/list/CommentImagesLayout;->setImagePlaceholder(Lcom/narvii/widget/NVImageView;)V

    return-void
.end method

.method public setImages(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 64
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 65
    :goto_0
    iget-object v2, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image1:Lcom/narvii/widget/NVImageView;

    const/16 v3, 0x8

    if-lez v1, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    const/16 v4, 0x8

    :goto_1
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 66
    iget-object v2, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image1:Lcom/narvii/widget/NVImageView;

    const/4 v4, 0x0

    if-lez v1, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/model/Media;

    goto :goto_2

    :cond_2
    move-object v5, v4

    :goto_2
    invoke-virtual {v2, v5}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 67
    iget-object v2, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image2:Lcom/narvii/widget/NVImageView;

    const/4 v5, 0x1

    if-le v1, v5, :cond_3

    const/4 v6, 0x0

    goto :goto_3

    :cond_3
    const/16 v6, 0x8

    :goto_3
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 68
    iget-object v2, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image2:Lcom/narvii/widget/NVImageView;

    if-le v1, v5, :cond_4

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/model/Media;

    goto :goto_4

    :cond_4
    move-object v5, v4

    :goto_4
    invoke-virtual {v2, v5}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 69
    iget-object v2, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image3:Lcom/narvii/widget/NVImageView;

    const/4 v5, 0x2

    if-le v1, v5, :cond_5

    const/4 v6, 0x0

    goto :goto_5

    :cond_5
    const/16 v6, 0x8

    :goto_5
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 70
    iget-object v2, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image3:Lcom/narvii/widget/NVImageView;

    if-le v1, v5, :cond_6

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/model/Media;

    goto :goto_6

    :cond_6
    move-object v5, v4

    :goto_6
    invoke-virtual {v2, v5}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 71
    iget-object v2, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image4:Lcom/narvii/widget/NVImageView;

    const/4 v5, 0x3

    if-le v1, v5, :cond_7

    const/4 v6, 0x0

    goto :goto_7

    :cond_7
    const/16 v6, 0x8

    :goto_7
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 72
    iget-object v2, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image4:Lcom/narvii/widget/NVImageView;

    if-le v1, v5, :cond_8

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/model/Media;

    goto :goto_8

    :cond_8
    move-object v5, v4

    :goto_8
    invoke-virtual {v2, v5}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 73
    iget-object v2, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image5:Lcom/narvii/widget/NVImageView;

    const/4 v5, 0x4

    if-le v1, v5, :cond_9

    goto :goto_9

    :cond_9
    const/16 v0, 0x8

    :goto_9
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image5:Lcom/narvii/widget/NVImageView;

    if-le v1, v5, :cond_a

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/narvii/model/Media;

    :cond_a
    invoke-virtual {v0, v4}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    return-void
.end method
