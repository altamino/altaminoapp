.class public Lcom/narvii/widget/NVTabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "NVTabLayout.java"


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

.field private pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private scrollOffset:I

.field private tabCount:I

.field private tabMode:I

.field public tabsContainer:Landroid/widget/LinearLayout;

.field private viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/NVTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/widget/NVTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 34
    iput p3, p0, Lcom/narvii/widget/NVTabLayout;->currentPosition:I

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/narvii/widget/NVTabLayout;->currentPositionOffset:F

    const/16 v1, 0x34

    .line 37
    iput v1, p0, Lcom/narvii/widget/NVTabLayout;->scrollOffset:I

    .line 38
    iput p3, p0, Lcom/narvii/widget/NVTabLayout;->lastScrollX:I

    .line 46
    iput v0, p0, Lcom/narvii/widget/NVTabLayout;->indicatorHorizontalOffset:F

    .line 47
    iput v0, p0, Lcom/narvii/widget/NVTabLayout;->indicatorVerticalOffset:F

    .line 52
    iput p3, p0, Lcom/narvii/widget/NVTabLayout;->indicatorAttachedViewId:I

    .line 146
    new-instance v0, Lcom/narvii/widget/NVTabLayout$2;

    invoke-direct {v0, p0}, Lcom/narvii/widget/NVTabLayout$2;-><init>(Lcom/narvii/widget/NVTabLayout;)V

    iput-object v0, p0, Lcom/narvii/widget/NVTabLayout;->pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 68
    sget-object v0, Lcom/narvii/amino/R$styleable;->NVTabLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v0, 0x2

    .line 69
    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/narvii/widget/NVTabLayout;->tabMode:I

    .line 70
    invoke-virtual {p2, p3, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/narvii/widget/NVTabLayout;->indicatorColor:I

    const/4 v0, 0x1

    const/high16 v1, 0x40000000    # 2.0f

    .line 71
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/narvii/widget/NVTabLayout;->indicatorHeight:F

    .line 72
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 75
    new-instance p2, Landroid/widget/LinearLayout;

    invoke-direct {p2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/narvii/widget/NVTabLayout;->tabsContainer:Landroid/widget/LinearLayout;

    .line 76
    iget-object p1, p0, Lcom/narvii/widget/NVTabLayout;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 77
    iget-object p1, p0, Lcom/narvii/widget/NVTabLayout;->tabsContainer:Landroid/widget/LinearLayout;

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p2, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    iget-object p1, p0, Lcom/narvii/widget/NVTabLayout;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 79
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    .line 81
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x11

    if-lt p1, p2, :cond_0

    .line 82
    invoke-virtual {p0, p3}, Landroid/widget/HorizontalScrollView;->setLayoutDirection(I)V

    .line 85
    :cond_0
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/NVTabLayout;->indicatorPaint:Landroid/graphics/Paint;

    .line 86
    iget-object p1, p0, Lcom/narvii/widget/NVTabLayout;->indicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 87
    iget-object p1, p0, Lcom/narvii/widget/NVTabLayout;->indicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    iget-object p1, p0, Lcom/narvii/widget/NVTabLayout;->indicatorPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 90
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/NVTabLayout;->indicatorRect:Landroid/graphics/RectF;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/widget/NVTabLayout;)Landroid/support/v4/view/ViewPager;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/narvii/widget/NVTabLayout;->viewPager:Landroid/support/v4/view/ViewPager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/widget/NVTabLayout;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/narvii/widget/NVTabLayout;->currentPosition:I

    return p0
.end method

.method static synthetic access$102(Lcom/narvii/widget/NVTabLayout;I)I
    .locals 0

    .line 27
    iput p1, p0, Lcom/narvii/widget/NVTabLayout;->currentPosition:I

    return p1
.end method

.method static synthetic access$202(Lcom/narvii/widget/NVTabLayout;F)F
    .locals 0

    .line 27
    iput p1, p0, Lcom/narvii/widget/NVTabLayout;->currentPositionOffset:F

    return p1
.end method

.method static synthetic access$300(Lcom/narvii/widget/NVTabLayout;II)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/NVTabLayout;->scrollToChild(II)V

    return-void
.end method

.method private scrollToChild(II)V
    .locals 1

    .line 187
    iget v0, p0, Lcom/narvii/widget/NVTabLayout;->tabCount:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/narvii/widget/NVTabLayout;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/NVTabLayout;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int/2addr v0, p2

    if-gtz p1, :cond_1

    if-lez p2, :cond_2

    .line 192
    :cond_1
    iget p1, p0, Lcom/narvii/widget/NVTabLayout;->scrollOffset:I

    sub-int/2addr v0, p1

    .line 194
    :cond_2
    iget p1, p0, Lcom/narvii/widget/NVTabLayout;->lastScrollX:I

    if-eq v0, p1, :cond_3

    .line 195
    iput v0, p0, Lcom/narvii/widget/NVTabLayout;->lastScrollX:I

    const/4 p1, 0x0

    .line 196
    invoke-virtual {p0, v0, p1}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    :cond_3
    :goto_0
    return-void
.end method

.method private updateViews()V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/narvii/widget/NVTabLayout;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/narvii/widget/NVTabLayout$3;

    invoke-direct {v1, p0}, Lcom/narvii/widget/NVTabLayout$3;-><init>(Lcom/narvii/widget/NVTabLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void

    .line 170
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Please add the label for each page"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addSubView(Landroid/view/View;)V
    .locals 5

    .line 113
    iget v0, p0, Lcom/narvii/widget/NVTabLayout;->tabMode:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 114
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    goto :goto_0

    .line 116
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v0, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 118
    :goto_0
    iget-object v2, p0, Lcom/narvii/widget/NVTabLayout;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    iget p1, p0, Lcom/narvii/widget/NVTabLayout;->tabCount:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/narvii/widget/NVTabLayout;->tabCount:I

    .line 120
    :goto_1
    iget-object p1, p0, Lcom/narvii/widget/NVTabLayout;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    if-ge v1, p1, :cond_1

    .line 121
    iget-object p1, p0, Lcom/narvii/widget/NVTabLayout;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 123
    new-instance v0, Lcom/narvii/widget/NVTabLayout$1;

    invoke-direct {v0, p0, v1}, Lcom/narvii/widget/NVTabLayout$1;-><init>(Lcom/narvii/widget/NVTabLayout;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected getItemView(Landroid/content/Context;I)Landroid/view/View;
    .locals 2

    .line 101
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b062f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f090b9a

    .line 102
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 103
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    return-object p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 219
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 220
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/narvii/widget/NVTabLayout;->tabCount:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/narvii/widget/NVTabLayout;->currentPosition:I

    iget-object v1, p0, Lcom/narvii/widget/NVTabLayout;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto/16 :goto_0

    .line 223
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v0

    .line 226
    iget-object v1, p0, Lcom/narvii/widget/NVTabLayout;->indicatorPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/narvii/widget/NVTabLayout;->indicatorColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 228
    iget-object v1, p0, Lcom/narvii/widget/NVTabLayout;->tabsContainer:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/narvii/widget/NVTabLayout;->currentPosition:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 229
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    .line 230
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    .line 231
    iget v4, p0, Lcom/narvii/widget/NVTabLayout;->indicatorAttachedViewId:I

    if-eqz v4, :cond_1

    .line 232
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 233
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 234
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float v3, v2, v1

    .line 236
    :cond_1
    iget v1, p0, Lcom/narvii/widget/NVTabLayout;->currentPositionOffset:F

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-lez v1, :cond_3

    iget v1, p0, Lcom/narvii/widget/NVTabLayout;->currentPosition:I

    iget v4, p0, Lcom/narvii/widget/NVTabLayout;->tabCount:I

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_3

    .line 237
    iget-object v4, p0, Lcom/narvii/widget/NVTabLayout;->tabsContainer:Landroid/widget/LinearLayout;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 238
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    .line 239
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    .line 240
    iget v6, p0, Lcom/narvii/widget/NVTabLayout;->indicatorAttachedViewId:I

    if-eqz v6, :cond_2

    .line 241
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 242
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    add-float/2addr v4, v5

    .line 243
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float v5, v4, v1

    .line 245
    :cond_2
    iget v1, p0, Lcom/narvii/widget/NVTabLayout;->currentPositionOffset:F

    mul-float v4, v4, v1

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v7, v6, v1

    mul-float v7, v7, v2

    add-float v2, v4, v7

    mul-float v5, v5, v1

    sub-float/2addr v6, v1

    mul-float v6, v6, v3

    add-float v3, v5, v6

    .line 249
    :cond_3
    iget v1, p0, Lcom/narvii/widget/NVTabLayout;->indicatorHorizontalOffset:F

    add-float/2addr v2, v1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v2, v1

    .line 250
    iget v1, p0, Lcom/narvii/widget/NVTabLayout;->indicatorHorizontalOffset:F

    sub-float/2addr v3, v1

    int-to-float v1, v0

    .line 251
    iget v4, p0, Lcom/narvii/widget/NVTabLayout;->indicatorHeight:F

    sub-float/2addr v1, v4

    const/high16 v4, 0x40000000    # 2.0f

    sub-float/2addr v1, v4

    iget v4, p0, Lcom/narvii/widget/NVTabLayout;->indicatorVerticalOffset:F

    sub-float/2addr v1, v4

    add-int/lit8 v0, v0, -0x2

    int-to-float v0, v0

    sub-float/2addr v0, v4

    .line 253
    iget-object v4, p0, Lcom/narvii/widget/NVTabLayout;->indicatorRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v2, v1, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 254
    iget-object v0, p0, Lcom/narvii/widget/NVTabLayout;->indicatorRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/narvii/widget/NVTabLayout;->indicatorPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_4
    :goto_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 96
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onFinishInflate()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 211
    check-cast p1, Lcom/narvii/widget/NVTabLayout$SavedState;

    .line 212
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/HorizontalScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 213
    iget p1, p1, Lcom/narvii/widget/NVTabLayout$SavedState;->currentPosition:I

    iput p1, p0, Lcom/narvii/widget/NVTabLayout;->currentPosition:I

    .line 214
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 203
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 204
    new-instance v1, Lcom/narvii/widget/NVTabLayout$SavedState;

    invoke-direct {v1, v0}, Lcom/narvii/widget/NVTabLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 205
    iget v0, p0, Lcom/narvii/widget/NVTabLayout;->currentPosition:I

    iput v0, v1, Lcom/narvii/widget/NVTabLayout$SavedState;->currentPosition:I

    return-object v1
.end method

.method public setIndicatorAttachedViewId(I)V
    .locals 0

    .line 108
    iput p1, p0, Lcom/narvii/widget/NVTabLayout;->indicatorAttachedViewId:I

    return-void
.end method

.method public setViewPager(Lcom/narvii/widget/NVViewPager;)V
    .locals 1

    .line 138
    iput-object p1, p0, Lcom/narvii/widget/NVTabLayout;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 139
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/narvii/widget/NVTabLayout;->pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 143
    invoke-direct {p0}, Lcom/narvii/widget/NVTabLayout;->updateViews()V

    return-void

    .line 140
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ViewPager does not have adapter instance."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
