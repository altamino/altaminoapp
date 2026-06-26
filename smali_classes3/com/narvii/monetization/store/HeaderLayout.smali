.class public Lcom/narvii/monetization/store/HeaderLayout;
.super Landroid/widget/RelativeLayout;
.source "HeaderLayout.java"


# instance fields
.field private final actionBarHeight:I

.field private icon:Landroid/view/View;

.field private imageMaxSize:I

.field private imageMinSize:I

.field private final statusBarHeight:I

.field private titleWrapper:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, v0}, Lcom/narvii/monetization/store/HeaderLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/monetization/store/HeaderLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x7fffffff

    .line 20
    iput p1, p0, Lcom/narvii/monetization/store/HeaderLayout;->imageMaxSize:I

    .line 21
    iput p1, p0, Lcom/narvii/monetization/store/HeaderLayout;->imageMinSize:I

    .line 34
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/narvii/monetization/store/HeaderLayout;->statusBarHeight:I

    .line 35
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->getActionBarHeight(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/narvii/monetization/store/HeaderLayout;->actionBarHeight:I

    return-void
.end method

.method private calcAlpha(Landroid/view/View;II)F
    .locals 1

    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    if-gt p1, p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    if-lt p1, p3, :cond_1

    goto :goto_0

    :cond_1
    sub-int p1, p3, p1

    int-to-float p1, p1

    mul-float p1, p1, v0

    sub-int/2addr p3, p2

    int-to-float p2, p3

    div-float/2addr p1, p2

    sub-float/2addr v0, p1

    :goto_0
    return v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 40
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f090acf

    .line 42
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/monetization/store/HeaderLayout;->icon:Landroid/view/View;

    const v0, 0x7f090ad3

    .line 43
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/monetization/store/HeaderLayout;->titleWrapper:Landroid/view/View;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 53
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 56
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result p1

    .line 57
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p2

    .line 59
    iget p3, p0, Lcom/narvii/monetization/store/HeaderLayout;->actionBarHeight:I

    iget p4, p0, Lcom/narvii/monetization/store/HeaderLayout;->imageMinSize:I

    sub-int p5, p3, p4

    div-int/lit8 p5, p5, 0x2

    sub-int/2addr p3, p5

    .line 61
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 62
    iget p4, p0, Lcom/narvii/monetization/store/HeaderLayout;->statusBarHeight:I

    add-int/2addr p4, p5

    sub-int/2addr p2, p4

    .line 65
    iget p5, p0, Lcom/narvii/monetization/store/HeaderLayout;->imageMaxSize:I

    iget-object v0, p0, Lcom/narvii/monetization/store/HeaderLayout;->titleWrapper:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr p5, v0

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-le p2, p5, :cond_0

    .line 66
    iget p3, p0, Lcom/narvii/monetization/store/HeaderLayout;->imageMaxSize:I

    iget-object p5, p0, Lcom/narvii/monetization/store/HeaderLayout;->titleWrapper:Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    add-int/2addr p3, p5

    .line 67
    iget p5, p0, Lcom/narvii/monetization/store/HeaderLayout;->imageMaxSize:I

    sub-int v2, p1, p5

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr p2, p3

    .line 69
    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, p4

    .line 70
    iget-object p3, p0, Lcom/narvii/monetization/store/HeaderLayout;->icon:Landroid/view/View;

    add-int p4, v2, p5

    add-int/2addr p5, p2

    invoke-virtual {p3, v2, p2, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 72
    iget-object p3, p0, Lcom/narvii/monetization/store/HeaderLayout;->titleWrapper:Landroid/view/View;

    invoke-virtual {p3, v1}, Landroid/view/View;->setAlpha(F)V

    .line 73
    iget-object p3, p0, Lcom/narvii/monetization/store/HeaderLayout;->titleWrapper:Landroid/view/View;

    iget p4, p0, Lcom/narvii/monetization/store/HeaderLayout;->imageMaxSize:I

    add-int p5, p2, p4

    add-int/2addr p2, p4

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    add-int/2addr p2, p4

    invoke-virtual {p3, v0, p5, p1, p2}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 75
    :cond_0
    iget-object p5, p0, Lcom/narvii/monetization/store/HeaderLayout;->titleWrapper:Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    add-int/2addr p5, p3

    if-le p2, p5, :cond_1

    .line 76
    iget-object p3, p0, Lcom/narvii/monetization/store/HeaderLayout;->titleWrapper:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    sub-int/2addr p2, p3

    sub-int p3, p1, p2

    .line 77
    div-int/lit8 p3, p3, 0x2

    .line 78
    iget-object p5, p0, Lcom/narvii/monetization/store/HeaderLayout;->icon:Landroid/view/View;

    add-int v2, p3, p2

    add-int/2addr p2, p4

    invoke-virtual {p5, p3, p4, v2, p2}, Landroid/view/View;->layout(IIII)V

    .line 80
    iget-object p3, p0, Lcom/narvii/monetization/store/HeaderLayout;->titleWrapper:Landroid/view/View;

    invoke-virtual {p3, v1}, Landroid/view/View;->setAlpha(F)V

    .line 81
    iget-object p3, p0, Lcom/narvii/monetization/store/HeaderLayout;->titleWrapper:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    add-int/2addr p4, p2

    invoke-virtual {p3, v0, p2, p1, p4}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_1
    sub-int/2addr p1, p3

    .line 84
    div-int/lit8 p1, p1, 0x2

    .line 85
    iget-object p2, p0, Lcom/narvii/monetization/store/HeaderLayout;->icon:Landroid/view/View;

    add-int p5, p1, p3

    add-int/2addr p3, p4

    invoke-virtual {p2, p1, p4, p5, p3}, Landroid/view/View;->layout(IIII)V

    .line 86
    iget-object p1, p0, Lcom/narvii/monetization/store/HeaderLayout;->titleWrapper:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    sub-int p2, p3, p2

    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/monetization/store/HeaderLayout;->calcAlpha(Landroid/view/View;II)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method public setImageSizeRange(II)V
    .locals 0

    .line 47
    iput p1, p0, Lcom/narvii/monetization/store/HeaderLayout;->imageMaxSize:I

    .line 48
    iput p2, p0, Lcom/narvii/monetization/store/HeaderLayout;->imageMinSize:I

    return-void
.end method
