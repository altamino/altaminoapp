.class public Lcom/narvii/comment/list/CommentImagesLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    return-void
.end method

.method private setImagePlaceholder(Lcom/narvii/widget/NVImageView;)V
    .locals 2

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/narvii/comment/list/CommentImagesLayout;->darkTheme:Z

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    .line 13
    const v1, 0x7f0603db

    .line 14
    goto :goto_0

    .line 15
    .line 16
    .line 17
    :cond_0
    const v1, 0x7f0603d9

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVImageView;->setDefaultDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 25
    :cond_1
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a06ec

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image1:Lcom/narvii/widget/NVImageView;

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0a06ed

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image2:Lcom/narvii/widget/NVImageView;

    .line 26
    .line 27
    .line 28
    const v0, 0x7f0a06ee

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image3:Lcom/narvii/widget/NVImageView;

    .line 37
    .line 38
    .line 39
    const v0, 0x7f0a06ef

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 46
    .line 47
    iput-object v0, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image4:Lcom/narvii/widget/NVImageView;

    .line 48
    .line 49
    .line 50
    const v0, 0x7f0a06f0

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 57
    .line 58
    iput-object v0, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image5:Lcom/narvii/widget/NVImageView;

    .line 59
    .line 60
    iget-object v0, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image1:Lcom/narvii/widget/NVImageView;

    .line 61
    .line 62
    const/16 v1, 0x8

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    iget-object v0, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image2:Lcom/narvii/widget/NVImageView;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    .line 72
    iget-object v0, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image3:Lcom/narvii/widget/NVImageView;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 76
    .line 77
    iget-object v0, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image4:Lcom/narvii/widget/NVImageView;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 81
    .line 82
    iget-object v0, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image5:Lcom/narvii/widget/NVImageView;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 86
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    iget-object p1, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image5:Lcom/narvii/widget/NVImageView;

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/4 v3, 0x5

    const/4 v4, 0x0

    if-nez p1, :cond_0

    move p1, v3

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image4:Lcom/narvii/widget/NVImageView;

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image3:Lcom/narvii/widget/NVImageView;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x3

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image2:Lcom/narvii/widget/NVImageView;

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    move p1, v1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image1:Lcom/narvii/widget/NVImageView;

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    move p1, v0

    goto :goto_0

    :cond_4
    move p1, v4

    .line 6
    :goto_0
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image1:Lcom/narvii/widget/NVImageView;

    .line 7
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_1

    :cond_5
    iget-object v5, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image1:Lcom/narvii/widget/NVImageView;

    .line 8
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_1
    if-le p1, v1, :cond_b

    sub-int/2addr p4, p2

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    sub-int p2, p4, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr p2, v0

    mul-int/lit8 v0, v5, 0x4

    sub-int/2addr p2, v0

    div-int/2addr p2, v3

    sub-int/2addr p5, p3

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    sub-int/2addr p5, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p5, p3

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    .line 12
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    iget-object v1, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image1:Lcom/narvii/widget/NVImageView;

    sub-int v6, p4, v0

    sub-int v7, v6, p2

    add-int/2addr p5, p3

    .line 14
    invoke-virtual {v1, v7, p3, v6, p5}, Landroid/view/View;->layout(IIII)V

    add-int/2addr v5, p2

    add-int/2addr v0, v5

    iget-object v1, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image2:Lcom/narvii/widget/NVImageView;

    sub-int v6, p4, v0

    sub-int v7, v6, p2

    .line 15
    invoke-virtual {v1, v7, p3, v6, p5}, Landroid/view/View;->layout(IIII)V

    add-int/2addr v0, v5

    iget-object v1, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image3:Lcom/narvii/widget/NVImageView;

    sub-int v6, p4, v0

    sub-int v7, v6, p2

    .line 16
    invoke-virtual {v1, v7, p3, v6, p5}, Landroid/view/View;->layout(IIII)V

    add-int/2addr v0, v5

    if-ge p1, v2, :cond_6

    iget-object v1, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image4:Lcom/narvii/widget/NVImageView;

    .line 17
    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image4:Lcom/narvii/widget/NVImageView;

    sub-int v2, p4, v0

    sub-int v6, v2, p2

    .line 18
    invoke-virtual {v1, v6, p3, v2, p5}, Landroid/view/View;->layout(IIII)V

    :goto_2
    add-int/2addr v0, v5

    if-ge p1, v3, :cond_7

    iget-object p1, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image5:Lcom/narvii/widget/NVImageView;

    .line 19
    invoke-virtual {p1, v4, v4, v4, v4}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_5

    :cond_7
    iget-object p1, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image5:Lcom/narvii/widget/NVImageView;

    sub-int/2addr p4, v0

    sub-int p2, p4, p2

    .line 20
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_5

    .line 21
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p4

    iget-object v0, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image1:Lcom/narvii/widget/NVImageView;

    add-int v1, p4, p2

    add-int/2addr p5, p3

    .line 22
    invoke-virtual {v0, p4, p3, v1, p5}, Landroid/view/View;->layout(IIII)V

    add-int/2addr v5, p2

    add-int/2addr p4, v5

    iget-object v0, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image2:Lcom/narvii/widget/NVImageView;

    add-int v1, p4, p2

    .line 23
    invoke-virtual {v0, p4, p3, v1, p5}, Landroid/view/View;->layout(IIII)V

    add-int/2addr p4, v5

    iget-object v0, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image3:Lcom/narvii/widget/NVImageView;

    add-int v1, p4, p2

    .line 24
    invoke-virtual {v0, p4, p3, v1, p5}, Landroid/view/View;->layout(IIII)V

    add-int/2addr p4, v5

    if-ge p1, v2, :cond_9

    iget-object v0, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image4:Lcom/narvii/widget/NVImageView;

    .line 25
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image4:Lcom/narvii/widget/NVImageView;

    add-int v1, p4, p2

    .line 26
    invoke-virtual {v0, p4, p3, v1, p5}, Landroid/view/View;->layout(IIII)V

    :goto_3
    add-int/2addr p4, v5

    if-ge p1, v3, :cond_a

    iget-object p1, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image5:Lcom/narvii/widget/NVImageView;

    .line 27
    invoke-virtual {p1, v4, v4, v4, v4}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_5

    :cond_a
    iget-object p1, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image5:Lcom/narvii/widget/NVImageView;

    add-int/2addr p2, p4

    .line 28
    invoke-virtual {p1, p4, p3, p2, p5}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_5

    :cond_b
    if-le p1, v0, :cond_d

    sub-int/2addr p4, p2

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    sub-int p1, p4, p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    sub-int/2addr p1, v5

    div-int/2addr p1, v1

    sub-int/2addr p5, p3

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    sub-int/2addr p5, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    sub-int/2addr p5, p2

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    .line 32
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result p3

    if-eqz p3, :cond_c

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p3

    iget-object v0, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image1:Lcom/narvii/widget/NVImageView;

    sub-int v1, p4, p3

    sub-int v2, v1, p1

    add-int/2addr p5, p2

    .line 34
    invoke-virtual {v0, v2, p2, v1, p5}, Landroid/view/View;->layout(IIII)V

    add-int/2addr v5, p1

    add-int/2addr p3, v5

    iget-object v0, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image2:Lcom/narvii/widget/NVImageView;

    sub-int/2addr p4, p3

    sub-int p1, p4, p1

    .line 35
    invoke-virtual {v0, p1, p2, p4, p5}, Landroid/view/View;->layout(IIII)V

    goto :goto_4

    .line 36
    :cond_c
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    iget-object p4, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image1:Lcom/narvii/widget/NVImageView;

    add-int v0, p3, p1

    add-int/2addr p5, p2

    .line 37
    invoke-virtual {p4, p3, p2, v0, p5}, Landroid/view/View;->layout(IIII)V

    add-int/2addr v5, p1

    add-int/2addr p3, v5

    iget-object p4, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image2:Lcom/narvii/widget/NVImageView;

    add-int/2addr p1, p3

    .line 38
    invoke-virtual {p4, p3, p2, p1, p5}, Landroid/view/View;->layout(IIII)V

    :goto_4
    iget-object p1, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image3:Lcom/narvii/widget/NVImageView;

    .line 39
    invoke-virtual {p1, v4, v4, v4, v4}, Landroid/view/View;->layout(IIII)V

    iget-object p1, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image4:Lcom/narvii/widget/NVImageView;

    .line 40
    invoke-virtual {p1, v4, v4, v4, v4}, Landroid/view/View;->layout(IIII)V

    iget-object p1, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image5:Lcom/narvii/widget/NVImageView;

    .line 41
    invoke-virtual {p1, v4, v4, v4, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_5

    :cond_d
    if-lez p1, :cond_e

    iget-object p1, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image1:Lcom/narvii/widget/NVImageView;

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr p4, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    sub-int/2addr p5, p2

    invoke-virtual {p1, v0, v1, p4, p5}, Landroid/view/View;->layout(IIII)V

    iget-object p1, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image2:Lcom/narvii/widget/NVImageView;

    .line 43
    invoke-virtual {p1, v4, v4, v4, v4}, Landroid/view/View;->layout(IIII)V

    iget-object p1, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image3:Lcom/narvii/widget/NVImageView;

    .line 44
    invoke-virtual {p1, v4, v4, v4, v4}, Landroid/view/View;->layout(IIII)V

    iget-object p1, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image4:Lcom/narvii/widget/NVImageView;

    .line 45
    invoke-virtual {p1, v4, v4, v4, v4}, Landroid/view/View;->layout(IIII)V

    iget-object p1, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image5:Lcom/narvii/widget/NVImageView;

    .line 46
    invoke-virtual {p1, v4, v4, v4, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_5

    :cond_e
    iget-object p1, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image1:Lcom/narvii/widget/NVImageView;

    .line 47
    invoke-virtual {p1, v4, v4, v4, v4}, Landroid/view/View;->layout(IIII)V

    iget-object p1, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image2:Lcom/narvii/widget/NVImageView;

    .line 48
    invoke-virtual {p1, v4, v4, v4, v4}, Landroid/view/View;->layout(IIII)V

    iget-object p1, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image3:Lcom/narvii/widget/NVImageView;

    .line 49
    invoke-virtual {p1, v4, v4, v4, v4}, Landroid/view/View;->layout(IIII)V

    iget-object p1, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image4:Lcom/narvii/widget/NVImageView;

    .line 50
    invoke-virtual {p1, v4, v4, v4, v4}, Landroid/view/View;->layout(IIII)V

    iget-object p1, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image5:Lcom/narvii/widget/NVImageView;

    .line 51
    invoke-virtual {p1, v4, v4, v4, v4}, Landroid/view/View;->layout(IIII)V

    :goto_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 1
    .line 2
    iget-object p2, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image5:Lcom/narvii/widget/NVImageView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 6
    move-result p2

    .line 7
    const/4 v0, 0x1

    .line 8
    const/4 v1, 0x4

    .line 9
    const/4 v2, 0x5

    .line 10
    const/4 v3, 0x2

    .line 11
    const/4 v4, 0x0

    .line 12
    .line 13
    if-nez p2, :cond_0

    .line 14
    move p2, v2

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    iget-object p2, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image4:Lcom/narvii/widget/NVImageView;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 21
    move-result p2

    .line 22
    .line 23
    if-nez p2, :cond_1

    .line 24
    move p2, v1

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_1
    iget-object p2, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image3:Lcom/narvii/widget/NVImageView;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 31
    move-result p2

    .line 32
    .line 33
    if-nez p2, :cond_2

    .line 34
    const/4 p2, 0x3

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_2
    iget-object p2, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image2:Lcom/narvii/widget/NVImageView;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 41
    move-result p2

    .line 42
    .line 43
    if-nez p2, :cond_3

    .line 44
    move p2, v3

    .line 45
    goto :goto_0

    .line 46
    .line 47
    :cond_3
    iget-object p2, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image1:Lcom/narvii/widget/NVImageView;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 51
    move-result p2

    .line 52
    .line 53
    if-nez p2, :cond_4

    .line 54
    move p2, v0

    .line 55
    goto :goto_0

    .line 56
    :cond_4
    move p2, v4

    .line 57
    .line 58
    :goto_0
    if-le p2, v3, :cond_5

    .line 59
    .line 60
    iget-object p2, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image1:Lcom/narvii/widget/NVImageView;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 64
    move-result-object p2

    .line 65
    .line 66
    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 67
    .line 68
    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 69
    .line 70
    .line 71
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 72
    move-result p1

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 76
    move-result v0

    .line 77
    .line 78
    sub-int v0, p1, v0

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 82
    move-result v3

    .line 83
    sub-int/2addr v0, v3

    .line 84
    mul-int/2addr p2, v1

    .line 85
    sub-int/2addr v0, p2

    .line 86
    div-int/2addr v0, v2

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 90
    move-result p2

    .line 91
    add-int/2addr v0, p2

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 95
    move-result p2

    .line 96
    add-int/2addr v0, p2

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 100
    goto :goto_1

    .line 101
    .line 102
    .line 103
    :cond_5
    const v1, 0x3f370a3d    # 0.715f

    .line 104
    .line 105
    if-le p2, v0, :cond_6

    .line 106
    .line 107
    iget-object p2, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image1:Lcom/narvii/widget/NVImageView;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 111
    move-result-object p2

    .line 112
    .line 113
    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 114
    .line 115
    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 116
    .line 117
    .line 118
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 119
    move-result p1

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 123
    move-result v0

    .line 124
    .line 125
    sub-int v0, p1, v0

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 129
    move-result v2

    .line 130
    sub-int/2addr v0, v2

    .line 131
    sub-int/2addr v0, p2

    .line 132
    div-int/2addr v0, v3

    .line 133
    int-to-float p2, v0

    .line 134
    mul-float/2addr p2, v1

    .line 135
    float-to-int p2, p2

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 139
    move-result v0

    .line 140
    add-int/2addr p2, v0

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 144
    move-result v0

    .line 145
    add-int/2addr p2, v0

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 149
    goto :goto_1

    .line 150
    .line 151
    :cond_6
    if-lez p2, :cond_7

    .line 152
    .line 153
    .line 154
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 155
    move-result p1

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 159
    move-result p2

    .line 160
    .line 161
    sub-int p2, p1, p2

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 165
    move-result v0

    .line 166
    sub-int/2addr p2, v0

    .line 167
    int-to-float p2, p2

    .line 168
    mul-float/2addr p2, v1

    .line 169
    float-to-int p2, p2

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 173
    move-result v0

    .line 174
    add-int/2addr p2, v0

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 178
    move-result v0

    .line 179
    add-int/2addr p2, v0

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 183
    goto :goto_1

    .line 184
    .line 185
    .line 186
    :cond_7
    invoke-virtual {p0, v4, v4}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 187
    :goto_1
    return-void
.end method

.method public setDarkTheme(Z)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image1:Lcom/narvii/widget/NVImageView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/comment/list/CommentImagesLayout;->setImagePlaceholder(Lcom/narvii/widget/NVImageView;)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image2:Lcom/narvii/widget/NVImageView;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1}, Lcom/narvii/comment/list/CommentImagesLayout;->setImagePlaceholder(Lcom/narvii/widget/NVImageView;)V

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image3:Lcom/narvii/widget/NVImageView;

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1}, Lcom/narvii/comment/list/CommentImagesLayout;->setImagePlaceholder(Lcom/narvii/widget/NVImageView;)V

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image4:Lcom/narvii/widget/NVImageView;

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, p1}, Lcom/narvii/comment/list/CommentImagesLayout;->setImagePlaceholder(Lcom/narvii/widget/NVImageView;)V

    .line 21
    .line 22
    iget-object p1, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image5:Lcom/narvii/widget/NVImageView;

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, p1}, Lcom/narvii/comment/list/CommentImagesLayout;->setImagePlaceholder(Lcom/narvii/widget/NVImageView;)V

    .line 26
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

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    move v1, v0

    .line 5
    goto :goto_0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 9
    move-result v1

    .line 10
    .line 11
    :goto_0
    iget-object v2, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image1:Lcom/narvii/widget/NVImageView;

    .line 12
    .line 13
    const/16 v3, 0x8

    .line 14
    .line 15
    if-lez v1, :cond_1

    .line 16
    move v4, v0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    move v4, v3

    .line 19
    .line 20
    .line 21
    :goto_1
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    iget-object v2, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image1:Lcom/narvii/widget/NVImageView;

    .line 24
    const/4 v4, 0x0

    .line 25
    .line 26
    if-lez v1, :cond_2

    .line 27
    .line 28
    .line 29
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    move-result-object v5

    .line 31
    .line 32
    check-cast v5, Lcom/narvii/model/Media;

    .line 33
    goto :goto_2

    .line 34
    :cond_2
    move-object v5, v4

    .line 35
    .line 36
    .line 37
    :goto_2
    invoke-virtual {v2, v5}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 38
    .line 39
    iget-object v2, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image2:Lcom/narvii/widget/NVImageView;

    .line 40
    const/4 v5, 0x1

    .line 41
    .line 42
    if-le v1, v5, :cond_3

    .line 43
    move v6, v0

    .line 44
    goto :goto_3

    .line 45
    :cond_3
    move v6, v3

    .line 46
    .line 47
    .line 48
    :goto_3
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 49
    .line 50
    iget-object v2, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image2:Lcom/narvii/widget/NVImageView;

    .line 51
    .line 52
    if-le v1, v5, :cond_4

    .line 53
    .line 54
    .line 55
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 56
    move-result-object v5

    .line 57
    .line 58
    check-cast v5, Lcom/narvii/model/Media;

    .line 59
    goto :goto_4

    .line 60
    :cond_4
    move-object v5, v4

    .line 61
    .line 62
    .line 63
    :goto_4
    invoke-virtual {v2, v5}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 64
    .line 65
    iget-object v2, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image3:Lcom/narvii/widget/NVImageView;

    .line 66
    const/4 v5, 0x2

    .line 67
    .line 68
    if-le v1, v5, :cond_5

    .line 69
    move v6, v0

    .line 70
    goto :goto_5

    .line 71
    :cond_5
    move v6, v3

    .line 72
    .line 73
    .line 74
    :goto_5
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 75
    .line 76
    iget-object v2, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image3:Lcom/narvii/widget/NVImageView;

    .line 77
    .line 78
    if-le v1, v5, :cond_6

    .line 79
    .line 80
    .line 81
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 82
    move-result-object v5

    .line 83
    .line 84
    check-cast v5, Lcom/narvii/model/Media;

    .line 85
    goto :goto_6

    .line 86
    :cond_6
    move-object v5, v4

    .line 87
    .line 88
    .line 89
    :goto_6
    invoke-virtual {v2, v5}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 90
    .line 91
    iget-object v2, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image4:Lcom/narvii/widget/NVImageView;

    .line 92
    const/4 v5, 0x3

    .line 93
    .line 94
    if-le v1, v5, :cond_7

    .line 95
    move v6, v0

    .line 96
    goto :goto_7

    .line 97
    :cond_7
    move v6, v3

    .line 98
    .line 99
    .line 100
    :goto_7
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 101
    .line 102
    iget-object v2, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image4:Lcom/narvii/widget/NVImageView;

    .line 103
    .line 104
    if-le v1, v5, :cond_8

    .line 105
    .line 106
    .line 107
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 108
    move-result-object v5

    .line 109
    .line 110
    check-cast v5, Lcom/narvii/model/Media;

    .line 111
    goto :goto_8

    .line 112
    :cond_8
    move-object v5, v4

    .line 113
    .line 114
    .line 115
    :goto_8
    invoke-virtual {v2, v5}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 116
    .line 117
    iget-object v2, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image5:Lcom/narvii/widget/NVImageView;

    .line 118
    const/4 v5, 0x4

    .line 119
    .line 120
    if-le v1, v5, :cond_9

    .line 121
    goto :goto_9

    .line 122
    :cond_9
    move v0, v3

    .line 123
    .line 124
    .line 125
    :goto_9
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 126
    .line 127
    iget-object v0, p0, Lcom/narvii/comment/list/CommentImagesLayout;->image5:Lcom/narvii/widget/NVImageView;

    .line 128
    .line 129
    if-le v1, v5, :cond_a

    .line 130
    .line 131
    .line 132
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 133
    move-result-object p1

    .line 134
    move-object v4, p1

    .line 135
    .line 136
    check-cast v4, Lcom/narvii/model/Media;

    .line 137
    .line 138
    .line 139
    :cond_a
    invoke-virtual {v0, v4}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 140
    return-void
.end method
