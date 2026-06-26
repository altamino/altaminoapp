.class public Lcom/narvii/livelayer/detailview/HeaderLayout;
.super Landroid/widget/RelativeLayout;
.source "HeaderLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/livelayer/detailview/HeaderLayout$LayoutParams;,
        Lcom/narvii/livelayer/detailview/HeaderLayout$TopAdapter;
    }
.end annotation


# instance fields
.field private baseHeight:I

.field private blurImg:Lcom/github/mmin18/widget/RealtimeBlurView;

.field private icon:Lcom/narvii/widget/NVImageView;

.field private statusBarHeight:I

.field private title:Landroid/widget/TextView;

.field private titleWrapper:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/narvii/livelayer/detailview/HeaderLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/livelayer/detailview/HeaderLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 52
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 53
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/narvii/app/NVActivity;

    invoke-static {p1}, Lcom/narvii/livelayer/detailview/HeaderLayout;->getStatusBarHeight(Lcom/narvii/app/NVContext;)I

    move-result p1

    iput p1, p0, Lcom/narvii/livelayer/detailview/HeaderLayout;->statusBarHeight:I

    .line 54
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/narvii/app/NVActivity;

    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->getActionBarOverlaySize()I

    move-result p1

    iput p1, p0, Lcom/narvii/livelayer/detailview/HeaderLayout;->baseHeight:I

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/app/NVContext;)I
    .locals 0

    .line 30
    invoke-static {p0}, Lcom/narvii/livelayer/detailview/HeaderLayout;->getStatusBarHeight(Lcom/narvii/app/NVContext;)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/narvii/app/NVContext;)I
    .locals 0

    .line 30
    invoke-static {p0}, Lcom/narvii/livelayer/detailview/HeaderLayout;->getMinHeight(Lcom/narvii/app/NVContext;)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/narvii/app/NVContext;)I
    .locals 0

    .line 30
    invoke-static {p0}, Lcom/narvii/livelayer/detailview/HeaderLayout;->getContentHeight(Lcom/narvii/app/NVContext;)I

    move-result p0

    return p0
.end method

.method private calcAlpha(Landroid/view/View;II)F
    .locals 1

    .line 160
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

.method private static getContentHeight(Lcom/narvii/app/NVContext;)I
    .locals 1

    .line 68
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p0

    const/high16 v0, 0x42700000    # 60.0f

    invoke-static {p0, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private static getMinHeight(Lcom/narvii/app/NVContext;)I
    .locals 1

    .line 59
    instance-of v0, p0, Lcom/narvii/app/NVFragment;

    if-eqz v0, :cond_0

    .line 60
    check-cast p0, Lcom/narvii/app/NVFragment;

    .line 61
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static getStatusBarHeight(Lcom/narvii/app/NVContext;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static initHeadView(Lcom/narvii/app/NVFragment;Lcom/narvii/list/overlay/OverlayLayout;Lcom/narvii/widget/NVListView;)V
    .locals 1

    .line 80
    invoke-virtual {p1, p2}, Lcom/narvii/list/overlay/OverlayLayout;->attach(Lcom/narvii/widget/NVListView;)V

    const/4 p2, 0x0

    .line 82
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 83
    invoke-static {p0}, Lcom/narvii/livelayer/detailview/HeaderLayout;->getStatusBarHeight(Lcom/narvii/app/NVContext;)I

    move-result p2

    invoke-static {p0}, Lcom/narvii/livelayer/detailview/HeaderLayout;->getMinHeight(Lcom/narvii/app/NVContext;)I

    move-result v0

    add-int/2addr p2, v0

    invoke-static {p0}, Lcom/narvii/livelayer/detailview/HeaderLayout;->getContentHeight(Lcom/narvii/app/NVContext;)I

    move-result v0

    add-int/2addr p2, v0

    const v0, 0x7f0b04cb

    invoke-virtual {p1, v0, p2}, Lcom/narvii/list/overlay/OverlayLayout;->setLayout(II)V

    .line 84
    invoke-static {p0}, Lcom/narvii/livelayer/detailview/HeaderLayout;->getStatusBarHeight(Lcom/narvii/app/NVContext;)I

    move-result p2

    invoke-static {p0}, Lcom/narvii/livelayer/detailview/HeaderLayout;->getMinHeight(Lcom/narvii/app/NVContext;)I

    move-result p0

    add-int/2addr p2, p0

    invoke-virtual {p1, p2}, Lcom/narvii/list/overlay/OverlayLayout;->setHeight1(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/narvii/livelayer/detailview/HeaderLayout;->generateDefaultLayoutParams()Lcom/narvii/livelayer/detailview/HeaderLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateDefaultLayoutParams()Lcom/narvii/livelayer/detailview/HeaderLayout$LayoutParams;
    .locals 2

    .line 220
    new-instance v0, Lcom/narvii/livelayer/detailview/HeaderLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, p0, v1, v1}, Lcom/narvii/livelayer/detailview/HeaderLayout$LayoutParams;-><init>(Lcom/narvii/livelayer/detailview/HeaderLayout;II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/narvii/livelayer/detailview/HeaderLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/narvii/livelayer/detailview/HeaderLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/narvii/livelayer/detailview/HeaderLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/narvii/livelayer/detailview/HeaderLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/narvii/livelayer/detailview/HeaderLayout$LayoutParams;
    .locals 2

    .line 225
    new-instance v0, Lcom/narvii/livelayer/detailview/HeaderLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/narvii/livelayer/detailview/HeaderLayout$LayoutParams;-><init>(Lcom/narvii/livelayer/detailview/HeaderLayout;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 100
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f09034b

    .line 102
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    iput-object v0, p0, Lcom/narvii/livelayer/detailview/HeaderLayout;->icon:Lcom/narvii/widget/NVImageView;

    .line 103
    iget-object v0, p0, Lcom/narvii/livelayer/detailview/HeaderLayout;->icon:Lcom/narvii/widget/NVImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setShowPressedMask(Z)V

    const v0, 0x7f09034f

    .line 104
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/livelayer/detailview/HeaderLayout;->titleWrapper:Landroid/view/View;

    const v0, 0x7f09034e

    .line 105
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/livelayer/detailview/HeaderLayout;->title:Landroid/widget/TextView;

    const v0, 0x7f09013c

    .line 106
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/mmin18/widget/RealtimeBlurView;

    iput-object v0, p0, Lcom/narvii/livelayer/detailview/HeaderLayout;->blurImg:Lcom/github/mmin18/widget/RealtimeBlurView;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .line 112
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 115
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result p1

    .line 116
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p2

    .line 121
    iget-object p3, p0, Lcom/narvii/livelayer/detailview/HeaderLayout;->icon:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    instance-of p3, p3, Lcom/narvii/livelayer/detailview/HeaderLayout$LayoutParams;

    const p4, 0x7fffffff

    const/4 p5, 0x0

    if-eqz p3, :cond_0

    .line 122
    iget-object p3, p0, Lcom/narvii/livelayer/detailview/HeaderLayout;->icon:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Lcom/narvii/livelayer/detailview/HeaderLayout$LayoutParams;

    .line 123
    iget p4, p3, Lcom/narvii/livelayer/detailview/HeaderLayout$LayoutParams;->imageMaxHeight:I

    .line 124
    iget v0, p3, Lcom/narvii/livelayer/detailview/HeaderLayout$LayoutParams;->imageMinHeight:I

    .line 125
    iget p3, p3, Lcom/narvii/livelayer/detailview/HeaderLayout$LayoutParams;->minPaddingTop:I

    move v3, v0

    move v0, p4

    move p4, v3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    const v0, 0x7fffffff

    .line 128
    :goto_0
    iget v1, p0, Lcom/narvii/livelayer/detailview/HeaderLayout;->baseHeight:I

    sub-int/2addr v1, p3

    invoke-static {v1, p4}, Ljava/lang/Math;->min(II)I

    move-result p4

    .line 129
    iget v1, p0, Lcom/narvii/livelayer/detailview/HeaderLayout;->statusBarHeight:I

    add-int/2addr v1, p3

    sub-int/2addr p2, v1

    .line 131
    iget-object p3, p0, Lcom/narvii/livelayer/detailview/HeaderLayout;->titleWrapper:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    add-int/2addr p3, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-le p2, p3, :cond_1

    .line 132
    iget-object p3, p0, Lcom/narvii/livelayer/detailview/HeaderLayout;->titleWrapper:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    add-int/2addr p3, v0

    sub-int p4, p1, v0

    .line 133
    div-int/lit8 p4, p4, 0x2

    sub-int/2addr p2, p3

    .line 135
    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, v1

    .line 136
    iget-object p3, p0, Lcom/narvii/livelayer/detailview/HeaderLayout;->icon:Lcom/narvii/widget/NVImageView;

    add-int v1, p4, v0

    add-int/2addr v0, p2

    invoke-virtual {p3, p4, p2, v1, v0}, Landroid/widget/ImageView;->layout(IIII)V

    .line 138
    iget-object p2, p0, Lcom/narvii/livelayer/detailview/HeaderLayout;->titleWrapper:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/View;->setAlpha(F)V

    .line 139
    iget-object p2, p0, Lcom/narvii/livelayer/detailview/HeaderLayout;->titleWrapper:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    add-int/2addr p3, v0

    invoke-virtual {p2, p5, v0, p1, p3}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 141
    :cond_1
    iget-object p3, p0, Lcom/narvii/livelayer/detailview/HeaderLayout;->titleWrapper:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    add-int/2addr p3, p4

    if-le p2, p3, :cond_2

    .line 142
    iget-object p3, p0, Lcom/narvii/livelayer/detailview/HeaderLayout;->titleWrapper:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    sub-int/2addr p2, p3

    sub-int p3, p1, p2

    .line 143
    div-int/lit8 p3, p3, 0x2

    .line 144
    iget-object p4, p0, Lcom/narvii/livelayer/detailview/HeaderLayout;->icon:Lcom/narvii/widget/NVImageView;

    add-int v0, p3, p2

    add-int/2addr p2, v1

    invoke-virtual {p4, p3, v1, v0, p2}, Landroid/widget/ImageView;->layout(IIII)V

    .line 147
    iget-object p3, p0, Lcom/narvii/livelayer/detailview/HeaderLayout;->titleWrapper:Landroid/view/View;

    invoke-virtual {p3, v2}, Landroid/view/View;->setAlpha(F)V

    .line 148
    iget-object p3, p0, Lcom/narvii/livelayer/detailview/HeaderLayout;->titleWrapper:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    add-int/2addr p4, p2

    invoke-virtual {p3, p5, p2, p1, p4}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    :cond_2
    sub-int/2addr p1, p4

    .line 151
    div-int/lit8 p1, p1, 0x2

    .line 152
    iget-object p2, p0, Lcom/narvii/livelayer/detailview/HeaderLayout;->icon:Lcom/narvii/widget/NVImageView;

    add-int p3, p1, p4

    add-int/2addr p4, v1

    invoke-virtual {p2, p1, v1, p3, p4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 154
    iget-object p1, p0, Lcom/narvii/livelayer/detailview/HeaderLayout;->titleWrapper:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    sub-int p2, p4, p2

    invoke-direct {p0, p1, p2, p4}, Lcom/narvii/livelayer/detailview/HeaderLayout;->calcAlpha(Landroid/view/View;II)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    :goto_1
    return-void
.end method

.method public setViewInfo(Lcom/narvii/livelayer/category/OnlineCategoryConfig;)V
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/narvii/livelayer/detailview/HeaderLayout;->icon:Lcom/narvii/widget/NVImageView;

    invoke-interface {p1}, Lcom/narvii/livelayer/category/OnlineCategoryConfig;->iconId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 89
    iget-object v0, p0, Lcom/narvii/livelayer/detailview/HeaderLayout;->title:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/narvii/livelayer/category/OnlineCategoryConfig;->titleId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 91
    invoke-interface {p1}, Lcom/narvii/livelayer/category/OnlineCategoryConfig;->color()I

    move-result p1

    .line 92
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    const/16 v2, 0x99

    invoke-static {v2, v0, v1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    const v0, 0x60ffffff

    .line 93
    invoke-static {p1, v0}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I

    move-result p1

    .line 94
    iget-object v0, p0, Lcom/narvii/livelayer/detailview/HeaderLayout;->blurImg:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-virtual {v0, p1}, Lcom/github/mmin18/widget/RealtimeBlurView;->setOverlayColor(I)V

    return-void
.end method
