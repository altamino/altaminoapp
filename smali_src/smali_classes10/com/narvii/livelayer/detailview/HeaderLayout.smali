.class public Lcom/narvii/livelayer/detailview/HeaderLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


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

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/livelayer/detailview/HeaderLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/livelayer/detailview/HeaderLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/narvii/app/NVActivity;

    invoke-static {p1}, Lcom/narvii/livelayer/detailview/HeaderLayout;->getStatusBarHeight(Lcom/narvii/app/NVContext;)I

    move-result p1

    iput p1, p0, Lcom/narvii/livelayer/detailview/HeaderLayout;->statusBarHeight:I

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/narvii/app/NVActivity;

    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->getActionBarOverlaySize()I

    move-result p1

    iput p1, p0, Lcom/narvii/livelayer/detailview/HeaderLayout;->baseHeight:I

    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/app/NVContext;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/livelayer/detailview/HeaderLayout;->getContentHeight(Lcom/narvii/app/NVContext;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic b(Lcom/narvii/app/NVContext;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/livelayer/detailview/HeaderLayout;->getMinHeight(Lcom/narvii/app/NVContext;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic c(Lcom/narvii/app/NVContext;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/livelayer/detailview/HeaderLayout;->getStatusBarHeight(Lcom/narvii/app/NVContext;)I

    move-result p0

    return p0
.end method

.method private calcAlpha(Landroid/view/View;II)F
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 4
    move-result p1

    .line 5
    .line 6
    if-gt p1, p2, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 11
    .line 12
    if-lt p1, p3, :cond_1

    .line 13
    move p1, v0

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_1
    sub-int p1, p3, p1

    .line 17
    int-to-float p1, p1

    .line 18
    mul-float/2addr p1, v0

    .line 19
    sub-int/2addr p3, p2

    .line 20
    int-to-float p2, p3

    .line 21
    div-float/2addr p1, p2

    .line 22
    .line 23
    sub-float p1, v0, p1

    .line 24
    :goto_0
    return p1
.end method

.method private static getContentHeight(Lcom/narvii/app/NVContext;)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    const/high16 v0, 0x42700000    # 60.0f

    .line 7
    .line 8
    .line 9
    invoke-static {p0, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 10
    move-result p0

    .line 11
    float-to-int p0, p0

    .line 12
    return p0
.end method

.method private static getMinHeight(Lcom/narvii/app/NVContext;)I
    .locals 1

    .line 1
    .line 2
    instance-of v0, p0, Lcom/narvii/app/NVFragment;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p0, Lcom/narvii/app/NVFragment;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0
.end method

.method private static getStatusBarHeight(Lcom/narvii/app/NVContext;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static initHeadView(Lcom/narvii/app/NVFragment;Lcom/narvii/list/overlay/OverlayLayout;Lcom/narvii/widget/NVListView;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lcom/narvii/list/overlay/OverlayLayout;->attach(Lcom/narvii/widget/NVListView;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Lcom/narvii/livelayer/detailview/HeaderLayout;->getStatusBarHeight(Lcom/narvii/app/NVContext;)I

    .line 11
    move-result p2

    .line 12
    .line 13
    .line 14
    invoke-static {p0}, Lcom/narvii/livelayer/detailview/HeaderLayout;->getMinHeight(Lcom/narvii/app/NVContext;)I

    .line 15
    move-result v0

    .line 16
    add-int/2addr p2, v0

    .line 17
    .line 18
    .line 19
    invoke-static {p0}, Lcom/narvii/livelayer/detailview/HeaderLayout;->getContentHeight(Lcom/narvii/app/NVContext;)I

    .line 20
    move-result v0

    .line 21
    add-int/2addr p2, v0

    .line 22
    .line 23
    .line 24
    const v0, 0x7f0d04f8

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0, p2}, Lcom/narvii/list/overlay/OverlayLayout;->setLayout(II)V

    .line 28
    .line 29
    .line 30
    invoke-static {p0}, Lcom/narvii/livelayer/detailview/HeaderLayout;->getStatusBarHeight(Lcom/narvii/app/NVContext;)I

    .line 31
    move-result p2

    .line 32
    .line 33
    .line 34
    invoke-static {p0}, Lcom/narvii/livelayer/detailview/HeaderLayout;->getMinHeight(Lcom/narvii/app/NVContext;)I

    .line 35
    move-result p0

    .line 36
    add-int/2addr p2, p0

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p2}, Lcom/narvii/list/overlay/OverlayLayout;->setHeight1(I)V

    .line 40
    return-void
.end method


# virtual methods
.method public bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/narvii/livelayer/detailview/HeaderLayout;->generateDefaultLayoutParams()Lcom/narvii/livelayer/detailview/HeaderLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateDefaultLayoutParams()Lcom/narvii/livelayer/detailview/HeaderLayout$LayoutParams;
    .locals 2

    .line 2
    new-instance v0, Lcom/narvii/livelayer/detailview/HeaderLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, p0, v1, v1}, Lcom/narvii/livelayer/detailview/HeaderLayout$LayoutParams;-><init>(Lcom/narvii/livelayer/detailview/HeaderLayout;II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/narvii/livelayer/detailview/HeaderLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/narvii/livelayer/detailview/HeaderLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/narvii/livelayer/detailview/HeaderLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/narvii/livelayer/detailview/HeaderLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/narvii/livelayer/detailview/HeaderLayout$LayoutParams;
    .locals 2

    .line 3
    new-instance v0, Lcom/narvii/livelayer/detailview/HeaderLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/narvii/livelayer/detailview/HeaderLayout$LayoutParams;-><init>(Lcom/narvii/livelayer/detailview/HeaderLayout;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a042e

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
    iput-object v0, p0, Lcom/narvii/livelayer/detailview/HeaderLayout;->icon:Lcom/narvii/widget/NVImageView;

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setShowPressedMask(Z)V

    .line 19
    .line 20
    .line 21
    const v0, 0x7f0a0432

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    iput-object v0, p0, Lcom/narvii/livelayer/detailview/HeaderLayout;->titleWrapper:Landroid/view/View;

    .line 28
    .line 29
    .line 30
    const v0, 0x7f0a0431

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    check-cast v0, Landroid/widget/TextView;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/narvii/livelayer/detailview/HeaderLayout;->title:Landroid/widget/TextView;

    .line 39
    .line 40
    .line 41
    const v0, 0x7f0a01da

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    check-cast v0, Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 48
    .line 49
    iput-object v0, p0, Lcom/narvii/livelayer/detailview/HeaderLayout;->blurImg:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 50
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 7
    move-result p1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 11
    move-result p2

    .line 12
    .line 13
    iget-object p3, p0, Lcom/narvii/livelayer/detailview/HeaderLayout;->icon:Lcom/narvii/widget/NVImageView;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 17
    move-result-object p3

    .line 18
    .line 19
    instance-of p3, p3, Lcom/narvii/livelayer/detailview/HeaderLayout$LayoutParams;

    .line 20
    const/4 p4, 0x0

    .line 21
    .line 22
    if-eqz p3, :cond_0

    .line 23
    .line 24
    iget-object p3, p0, Lcom/narvii/livelayer/detailview/HeaderLayout;->icon:Lcom/narvii/widget/NVImageView;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 28
    move-result-object p3

    .line 29
    .line 30
    check-cast p3, Lcom/narvii/livelayer/detailview/HeaderLayout$LayoutParams;

    .line 31
    .line 32
    iget p5, p3, Lcom/narvii/livelayer/detailview/HeaderLayout$LayoutParams;->imageMaxHeight:I

    .line 33
    .line 34
    iget v0, p3, Lcom/narvii/livelayer/detailview/HeaderLayout$LayoutParams;->imageMinHeight:I

    .line 35
    .line 36
    iget p3, p3, Lcom/narvii/livelayer/detailview/HeaderLayout$LayoutParams;->minPaddingTop:I

    .line 37
    goto :goto_0

    .line 38
    .line 39
    .line 40
    :cond_0
    const p5, 0x7fffffff

    .line 41
    move p3, p4

    .line 42
    move v0, p5

    .line 43
    .line 44
    :goto_0
    iget v1, p0, Lcom/narvii/livelayer/detailview/HeaderLayout;->baseHeight:I

    .line 45
    sub-int/2addr v1, p3

    .line 46
    .line 47
    .line 48
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 49
    move-result v0

    .line 50
    .line 51
    iget v1, p0, Lcom/narvii/livelayer/detailview/HeaderLayout;->statusBarHeight:I

    .line 52
    add-int/2addr v1, p3

    .line 53
    sub-int/2addr p2, v1

    .line 54
    .line 55
    iget-object p3, p0, Lcom/narvii/livelayer/detailview/HeaderLayout;->titleWrapper:Landroid/view/View;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    .line 59
    move-result p3

    .line 60
    add-int/2addr p3, p5

    .line 61
    .line 62
    const/high16 v2, 0x3f800000    # 1.0f

    .line 63
    .line 64
    if-le p2, p3, :cond_1

    .line 65
    .line 66
    iget-object p3, p0, Lcom/narvii/livelayer/detailview/HeaderLayout;->titleWrapper:Landroid/view/View;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    .line 70
    move-result p3

    .line 71
    add-int/2addr p3, p5

    .line 72
    .line 73
    sub-int v0, p1, p5

    .line 74
    .line 75
    div-int/lit8 v0, v0, 0x2

    .line 76
    sub-int/2addr p2, p3

    .line 77
    .line 78
    div-int/lit8 p2, p2, 0x2

    .line 79
    add-int/2addr p2, v1

    .line 80
    .line 81
    iget-object p3, p0, Lcom/narvii/livelayer/detailview/HeaderLayout;->icon:Lcom/narvii/widget/NVImageView;

    .line 82
    .line 83
    add-int v1, v0, p5

    .line 84
    add-int/2addr p5, p2

    .line 85
    .line 86
    .line 87
    invoke-virtual {p3, v0, p2, v1, p5}, Landroid/view/View;->layout(IIII)V

    .line 88
    .line 89
    iget-object p2, p0, Lcom/narvii/livelayer/detailview/HeaderLayout;->titleWrapper:Landroid/view/View;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2, v2}, Landroid/view/View;->setAlpha(F)V

    .line 93
    .line 94
    iget-object p2, p0, Lcom/narvii/livelayer/detailview/HeaderLayout;->titleWrapper:Landroid/view/View;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 98
    move-result p3

    .line 99
    add-int/2addr p3, p5

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2, p4, p5, p1, p3}, Landroid/view/View;->layout(IIII)V

    .line 103
    goto :goto_1

    .line 104
    .line 105
    :cond_1
    iget-object p3, p0, Lcom/narvii/livelayer/detailview/HeaderLayout;->titleWrapper:Landroid/view/View;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    .line 109
    move-result p3

    .line 110
    add-int/2addr p3, v0

    .line 111
    .line 112
    if-le p2, p3, :cond_2

    .line 113
    .line 114
    iget-object p3, p0, Lcom/narvii/livelayer/detailview/HeaderLayout;->titleWrapper:Landroid/view/View;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    .line 118
    move-result p3

    .line 119
    sub-int/2addr p2, p3

    .line 120
    .line 121
    sub-int p3, p1, p2

    .line 122
    .line 123
    div-int/lit8 p3, p3, 0x2

    .line 124
    .line 125
    iget-object p5, p0, Lcom/narvii/livelayer/detailview/HeaderLayout;->icon:Lcom/narvii/widget/NVImageView;

    .line 126
    .line 127
    add-int v0, p3, p2

    .line 128
    add-int/2addr p2, v1

    .line 129
    .line 130
    .line 131
    invoke-virtual {p5, p3, v1, v0, p2}, Landroid/view/View;->layout(IIII)V

    .line 132
    .line 133
    iget-object p3, p0, Lcom/narvii/livelayer/detailview/HeaderLayout;->titleWrapper:Landroid/view/View;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p3, v2}, Landroid/view/View;->setAlpha(F)V

    .line 137
    .line 138
    iget-object p3, p0, Lcom/narvii/livelayer/detailview/HeaderLayout;->titleWrapper:Landroid/view/View;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    .line 142
    move-result p5

    .line 143
    add-int/2addr p5, p2

    .line 144
    .line 145
    .line 146
    invoke-virtual {p3, p4, p2, p1, p5}, Landroid/view/View;->layout(IIII)V

    .line 147
    goto :goto_1

    .line 148
    :cond_2
    sub-int/2addr p1, v0

    .line 149
    .line 150
    div-int/lit8 p1, p1, 0x2

    .line 151
    .line 152
    iget-object p2, p0, Lcom/narvii/livelayer/detailview/HeaderLayout;->icon:Lcom/narvii/widget/NVImageView;

    .line 153
    .line 154
    add-int p3, p1, v0

    .line 155
    add-int/2addr v0, v1

    .line 156
    .line 157
    .line 158
    invoke-virtual {p2, p1, v1, p3, v0}, Landroid/view/View;->layout(IIII)V

    .line 159
    .line 160
    iget-object p1, p0, Lcom/narvii/livelayer/detailview/HeaderLayout;->titleWrapper:Landroid/view/View;

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    .line 164
    move-result p2

    .line 165
    .line 166
    sub-int p2, v0, p2

    .line 167
    .line 168
    .line 169
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/livelayer/detailview/HeaderLayout;->calcAlpha(Landroid/view/View;II)F

    .line 170
    move-result p2

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 174
    :goto_1
    return-void
.end method

.method public setViewInfo(Lcom/narvii/livelayer/category/OnlineCategoryConfig;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/livelayer/detailview/HeaderLayout;->icon:Lcom/narvii/widget/NVImageView;

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Lcom/narvii/livelayer/category/OnlineCategoryConfig;->iconId()I

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/livelayer/detailview/HeaderLayout;->title:Landroid/widget/TextView;

    .line 12
    .line 13
    .line 14
    invoke-interface {p1}, Lcom/narvii/livelayer/category/OnlineCategoryConfig;->titleId()I

    .line 15
    move-result v1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Lcom/narvii/livelayer/category/OnlineCategoryConfig;->color()I

    .line 22
    move-result p1

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    .line 26
    move-result v0

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    .line 30
    move-result v1

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    .line 34
    move-result p1

    .line 35
    .line 36
    const/16 v2, 0x99

    .line 37
    .line 38
    .line 39
    invoke-static {v2, v0, v1, p1}, Landroid/graphics/Color;->argb(IIII)I

    .line 40
    move-result p1

    .line 41
    .line 42
    .line 43
    const v0, 0x60ffffff

    .line 44
    .line 45
    .line 46
    invoke-static {p1, v0}, Landroidx/core/graphics/ColorUtils;->j(II)I

    .line 47
    move-result p1

    .line 48
    .line 49
    iget-object v0, p0, Lcom/narvii/livelayer/detailview/HeaderLayout;->blurImg:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p1}, Lcom/github/mmin18/widget/RealtimeBlurView;->setOverlayColor(I)V

    .line 53
    return-void
.end method
