.class public Lcom/narvii/widget/NVTabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/NVTabLayout$SavedState;,
        Lcom/narvii/widget/NVTabLayout$ItemClickListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_INDICATOR_CORNER_SIZE:I = 0x5


# instance fields
.field clickListener:Lcom/narvii/widget/NVTabLayout$ItemClickListener;

.field private currentPosition:I

.field private currentPositionOffset:F

.field private indicatorAttachedViewId:I

.field private indicatorColor:I

.field private indicatorHeight:F

.field private indicatorHorizontalOffset:F

.field private indicatorPaint:Landroid/graphics/Paint;

.field private indicatorRect:Landroid/graphics/RectF;

.field private indicatorVerticalOffset:F

.field private lastScrollX:I

.field private pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private scrollOffset:I

.field private tabCount:I

.field private tabMode:I

.field public tabsContainer:Landroid/widget/LinearLayout;

.field private viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/NVTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/widget/NVTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    iput p3, p0, Lcom/narvii/widget/NVTabLayout;->currentPosition:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/narvii/widget/NVTabLayout;->currentPositionOffset:F

    const/16 v1, 0x34

    iput v1, p0, Lcom/narvii/widget/NVTabLayout;->scrollOffset:I

    iput p3, p0, Lcom/narvii/widget/NVTabLayout;->lastScrollX:I

    iput v0, p0, Lcom/narvii/widget/NVTabLayout;->indicatorHorizontalOffset:F

    iput v0, p0, Lcom/narvii/widget/NVTabLayout;->indicatorVerticalOffset:F

    iput p3, p0, Lcom/narvii/widget/NVTabLayout;->indicatorAttachedViewId:I

    .line 4
    new-instance v0, Lcom/narvii/widget/NVTabLayout$2;

    invoke-direct {v0, p0}, Lcom/narvii/widget/NVTabLayout$2;-><init>(Lcom/narvii/widget/NVTabLayout;)V

    iput-object v0, p0, Lcom/narvii/widget/NVTabLayout;->pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 5
    sget-object v0, Lcom/narvii/amino/R$styleable;->NVTabLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v0, 0x2

    .line 6
    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/narvii/widget/NVTabLayout;->tabMode:I

    .line 7
    invoke-virtual {p2, p3, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/narvii/widget/NVTabLayout;->indicatorColor:I

    const/high16 v0, 0x40000000    # 2.0f

    const/4 v1, 0x1

    .line 8
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/narvii/widget/NVTabLayout;->indicatorHeight:F

    .line 9
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 10
    new-instance p2, Landroid/widget/LinearLayout;

    invoke-direct {p2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/narvii/widget/NVTabLayout;->tabsContainer:Landroid/widget/LinearLayout;

    .line 11
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object p1, p0, Lcom/narvii/widget/NVTabLayout;->tabsContainer:Landroid/widget/LinearLayout;

    .line 12
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p2, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/narvii/widget/NVTabLayout;->tabsContainer:Landroid/widget/LinearLayout;

    .line 13
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 14
    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    .line 15
    invoke-virtual {p0, p3}, Landroid/view/View;->setLayoutDirection(I)V

    .line 16
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/NVTabLayout;->indicatorPaint:Landroid/graphics/Paint;

    .line 17
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/narvii/widget/NVTabLayout;->indicatorPaint:Landroid/graphics/Paint;

    .line 18
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/narvii/widget/NVTabLayout;->indicatorPaint:Landroid/graphics/Paint;

    .line 19
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 20
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/NVTabLayout;->indicatorRect:Landroid/graphics/RectF;

    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/widget/NVTabLayout;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/widget/NVTabLayout;->currentPosition:I

    return p0
.end method

.method static bridge synthetic b(Lcom/narvii/widget/NVTabLayout;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/widget/NVTabLayout;->viewPager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/narvii/widget/NVTabLayout;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/widget/NVTabLayout;->currentPosition:I

    return-void
.end method

.method static bridge synthetic d(Lcom/narvii/widget/NVTabLayout;F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/widget/NVTabLayout;->currentPositionOffset:F

    return-void
.end method

.method static bridge synthetic e(Lcom/narvii/widget/NVTabLayout;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/NVTabLayout;->scrollToChild(II)V

    return-void
.end method

.method private scrollToChild(II)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/NVTabLayout;->tabCount:I

    .line 3
    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/widget/NVTabLayout;->tabsContainer:Landroid/widget/LinearLayout;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 10
    move-result v0

    .line 11
    .line 12
    if-lt p1, v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/NVTabLayout;->tabsContainer:Landroid/widget/LinearLayout;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 23
    move-result v0

    .line 24
    add-int/2addr v0, p2

    .line 25
    .line 26
    if-gtz p1, :cond_1

    .line 27
    .line 28
    if-lez p2, :cond_2

    .line 29
    .line 30
    :cond_1
    iget p1, p0, Lcom/narvii/widget/NVTabLayout;->scrollOffset:I

    .line 31
    sub-int/2addr v0, p1

    .line 32
    .line 33
    :cond_2
    iget p1, p0, Lcom/narvii/widget/NVTabLayout;->lastScrollX:I

    .line 34
    .line 35
    if-eq v0, p1, :cond_3

    .line 36
    .line 37
    iput v0, p0, Lcom/narvii/widget/NVTabLayout;->lastScrollX:I

    .line 38
    const/4 p1, 0x0

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->scrollTo(II)V

    .line 42
    :cond_3
    :goto_0
    return-void
.end method

.method private updateViews()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NVTabLayout;->tabsContainer:Landroid/widget/LinearLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    new-instance v1, Lcom/narvii/widget/NVTabLayout$3;

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, p0}, Lcom/narvii/widget/NVTabLayout$3;-><init>(Lcom/narvii/widget/NVTabLayout;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 21
    return-void

    .line 22
    .line 23
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    const-string v1, "Please add the label for each page"

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    throw v0
.end method


# virtual methods
.method public addSubView(Landroid/view/View;)V
    .locals 5

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/NVTabLayout;->tabMode:I

    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    .line 7
    if-ne v0, v3, :cond_0

    .line 8
    .line 9
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 10
    .line 11
    const/high16 v4, 0x3f800000    # 1.0f

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v2, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 18
    const/4 v4, -0x2

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 22
    .line 23
    :goto_0
    iget-object v1, p0, Lcom/narvii/widget/NVTabLayout;->tabsContainer:Landroid/widget/LinearLayout;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    .line 28
    iget p1, p0, Lcom/narvii/widget/NVTabLayout;->tabCount:I

    .line 29
    add-int/2addr p1, v3

    .line 30
    .line 31
    iput p1, p0, Lcom/narvii/widget/NVTabLayout;->tabCount:I

    .line 32
    .line 33
    :goto_1
    iget-object p1, p0, Lcom/narvii/widget/NVTabLayout;->tabsContainer:Landroid/widget/LinearLayout;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 37
    move-result p1

    .line 38
    .line 39
    if-ge v2, p1, :cond_1

    .line 40
    .line 41
    iget-object p1, p0, Lcom/narvii/widget/NVTabLayout;->tabsContainer:Landroid/widget/LinearLayout;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    new-instance v0, Lcom/narvii/widget/NVTabLayout$1;

    .line 48
    .line 49
    .line 50
    invoke-direct {v0, p0, v2}, Lcom/narvii/widget/NVTabLayout$1;-><init>(Lcom/narvii/widget/NVTabLayout;I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    .line 55
    add-int/lit8 v2, v2, 0x1

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    return-void
.end method

.method protected getItemView(Landroid/content/Context;I)Landroid/view/View;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    const v0, 0x7f0d06df

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    const v0, 0x7f0a0e9e

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    check-cast v0, Landroid/widget/TextView;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 25
    return-object p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-nez v0, :cond_4

    .line 10
    .line 11
    iget v0, p0, Lcom/narvii/widget/NVTabLayout;->tabCount:I

    .line 12
    .line 13
    if-eqz v0, :cond_4

    .line 14
    .line 15
    iget v0, p0, Lcom/narvii/widget/NVTabLayout;->currentPosition:I

    .line 16
    .line 17
    iget-object v1, p0, Lcom/narvii/widget/NVTabLayout;->tabsContainer:Landroid/widget/LinearLayout;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 21
    move-result v1

    .line 22
    .line 23
    if-lt v0, v1, :cond_0

    .line 24
    .line 25
    goto/16 :goto_0

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 29
    move-result v0

    .line 30
    .line 31
    iget-object v1, p0, Lcom/narvii/widget/NVTabLayout;->indicatorPaint:Landroid/graphics/Paint;

    .line 32
    .line 33
    iget v2, p0, Lcom/narvii/widget/NVTabLayout;->indicatorColor:I

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 37
    .line 38
    iget-object v1, p0, Lcom/narvii/widget/NVTabLayout;->tabsContainer:Landroid/widget/LinearLayout;

    .line 39
    .line 40
    iget v2, p0, Lcom/narvii/widget/NVTabLayout;->currentPosition:I

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 48
    move-result v2

    .line 49
    int-to-float v2, v2

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    .line 53
    move-result v3

    .line 54
    int-to-float v3, v3

    .line 55
    .line 56
    iget v4, p0, Lcom/narvii/widget/NVTabLayout;->indicatorAttachedViewId:I

    .line 57
    .line 58
    if-eqz v4, :cond_1

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 66
    move-result v3

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    .line 70
    move-result v4

    .line 71
    add-int/2addr v3, v4

    .line 72
    int-to-float v3, v3

    .line 73
    add-float/2addr v2, v3

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 77
    move-result v1

    .line 78
    int-to-float v1, v1

    .line 79
    .line 80
    add-float v3, v2, v1

    .line 81
    .line 82
    :cond_1
    iget v1, p0, Lcom/narvii/widget/NVTabLayout;->currentPositionOffset:F

    .line 83
    const/4 v4, 0x0

    .line 84
    .line 85
    cmpl-float v1, v1, v4

    .line 86
    .line 87
    if-lez v1, :cond_3

    .line 88
    .line 89
    iget v1, p0, Lcom/narvii/widget/NVTabLayout;->currentPosition:I

    .line 90
    .line 91
    iget v4, p0, Lcom/narvii/widget/NVTabLayout;->tabCount:I

    .line 92
    .line 93
    add-int/lit8 v4, v4, -0x1

    .line 94
    .line 95
    if-ge v1, v4, :cond_3

    .line 96
    .line 97
    iget-object v4, p0, Lcom/narvii/widget/NVTabLayout;->tabsContainer:Landroid/widget/LinearLayout;

    .line 98
    .line 99
    add-int/lit8 v1, v1, 0x1

    .line 100
    .line 101
    .line 102
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 103
    move-result-object v1

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 107
    move-result v4

    .line 108
    int-to-float v4, v4

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    .line 112
    move-result v5

    .line 113
    int-to-float v5, v5

    .line 114
    .line 115
    iget v6, p0, Lcom/narvii/widget/NVTabLayout;->indicatorAttachedViewId:I

    .line 116
    .line 117
    if-eqz v6, :cond_2

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 121
    move-result-object v1

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 125
    move-result v5

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    .line 129
    move-result v6

    .line 130
    add-int/2addr v5, v6

    .line 131
    int-to-float v5, v5

    .line 132
    add-float/2addr v4, v5

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 136
    move-result v1

    .line 137
    int-to-float v1, v1

    .line 138
    .line 139
    add-float v5, v4, v1

    .line 140
    .line 141
    :cond_2
    iget v1, p0, Lcom/narvii/widget/NVTabLayout;->currentPositionOffset:F

    .line 142
    mul-float/2addr v4, v1

    .line 143
    .line 144
    const/high16 v6, 0x3f800000    # 1.0f

    .line 145
    .line 146
    sub-float v7, v6, v1

    .line 147
    mul-float/2addr v7, v2

    .line 148
    .line 149
    add-float v2, v4, v7

    .line 150
    mul-float/2addr v5, v1

    .line 151
    sub-float/2addr v6, v1

    .line 152
    mul-float/2addr v6, v3

    .line 153
    .line 154
    add-float v3, v5, v6

    .line 155
    .line 156
    :cond_3
    iget v1, p0, Lcom/narvii/widget/NVTabLayout;->indicatorHorizontalOffset:F

    .line 157
    add-float/2addr v2, v1

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 161
    move-result v1

    .line 162
    int-to-float v1, v1

    .line 163
    add-float/2addr v2, v1

    .line 164
    .line 165
    iget v1, p0, Lcom/narvii/widget/NVTabLayout;->indicatorHorizontalOffset:F

    .line 166
    sub-float/2addr v3, v1

    .line 167
    int-to-float v1, v0

    .line 168
    .line 169
    iget v4, p0, Lcom/narvii/widget/NVTabLayout;->indicatorHeight:F

    .line 170
    sub-float/2addr v1, v4

    .line 171
    .line 172
    const/high16 v4, 0x40000000    # 2.0f

    .line 173
    sub-float/2addr v1, v4

    .line 174
    .line 175
    iget v4, p0, Lcom/narvii/widget/NVTabLayout;->indicatorVerticalOffset:F

    .line 176
    sub-float/2addr v1, v4

    .line 177
    .line 178
    add-int/lit8 v0, v0, -0x2

    .line 179
    int-to-float v0, v0

    .line 180
    sub-float/2addr v0, v4

    .line 181
    .line 182
    iget-object v4, p0, Lcom/narvii/widget/NVTabLayout;->indicatorRect:Landroid/graphics/RectF;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v4, v2, v1, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 186
    .line 187
    iget-object v0, p0, Lcom/narvii/widget/NVTabLayout;->indicatorRect:Landroid/graphics/RectF;

    .line 188
    .line 189
    iget-object v1, p0, Lcom/narvii/widget/NVTabLayout;->indicatorPaint:Landroid/graphics/Paint;

    .line 190
    .line 191
    const/high16 v2, 0x40a00000    # 5.0f

    .line 192
    .line 193
    .line 194
    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 195
    :cond_4
    :goto_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onFinishInflate()V

    .line 4
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    .line 2
    check-cast p1, Lcom/narvii/widget/NVTabLayout$SavedState;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-super {p0, v0}, Landroid/widget/HorizontalScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 10
    .line 11
    iget p1, p1, Lcom/narvii/widget/NVTabLayout$SavedState;->currentPosition:I

    .line 12
    .line 13
    iput p1, p0, Lcom/narvii/widget/NVTabLayout;->currentPosition:I

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 17
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Lcom/narvii/widget/NVTabLayout$SavedState;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v0}, Lcom/narvii/widget/NVTabLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 10
    .line 11
    iget v0, p0, Lcom/narvii/widget/NVTabLayout;->currentPosition:I

    .line 12
    .line 13
    iput v0, v1, Lcom/narvii/widget/NVTabLayout$SavedState;->currentPosition:I

    .line 14
    return-object v1
.end method

.method public setIndicatorAttachedViewId(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/widget/NVTabLayout;->indicatorAttachedViewId:I

    return-void
.end method

.method public setViewPager(Lcom/narvii/widget/NVViewPager;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/NVTabLayout;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/widget/NVTabLayout;->pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/narvii/widget/NVTabLayout;->updateViews()V

    .line 17
    return-void

    .line 18
    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string v0, "ViewPager does not have adapter instance."

    .line 22
    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    throw p1
.end method
