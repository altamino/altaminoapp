.class public Lcom/narvii/widget/NVPagerTabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/NVPagerTabLayout$WrappedPageListener;,
        Lcom/narvii/widget/NVPagerTabLayout$OnTabItemClickListener;,
        Lcom/narvii/widget/NVPagerTabLayout$CustomPagerTabView;,
        Lcom/narvii/widget/NVPagerTabLayout$SavedState;,
        Lcom/narvii/widget/NVPagerTabLayout$PositionChangeListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_INDICATOR_COLOR:I = -0x1

.field private static final DEFAULT_INDICATOR_CORNER_SIZE:I = 0x5

.field private static final DEFAULT_INDICATOR_WIDTH_SIZE:I = 0x14


# instance fields
.field private currentPosition:I

.field private currentPositionOffset:F

.field private customTabViewId:I

.field private customTabWidth:I

.field private indicatorAlpha:I

.field private indicatorArrachedViewId:I

.field private indicatorColor:I

.field private indicatorHeight:I

.field private indicatorHorizontalOffset:I

.field private indicatorRect:Landroid/graphics/RectF;

.field private indicatorShow:Z

.field private indicatorVerticalOffset:I

.field private lastScrollX:I

.field onTabItemClickListener:Lcom/narvii/widget/NVPagerTabLayout$OnTabItemClickListener;

.field onTabItemClickListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/widget/NVPagerTabLayout$OnTabItemClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private pager:Landroidx/viewpager/widget/ViewPager;

.field positionChangeListenerEventDispatcher:Lcom/narvii/util/EventDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/widget/NVPagerTabLayout$PositionChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private rectPaint:Landroid/graphics/Paint;

.field scrollDivideEqual:Z

.field private scrollOffset:I

.field public scrollWhenGlobalLayoutChanged:Z

.field segmentControl:Z

.field public showSelectedStatus:Z

.field private tabCount:I

.field private tabMode:I

.field private tabPadding:I

.field private tabsContainer:Lcom/narvii/widget/TabContainerLayout;

.field private final wrappedPageListener:Lcom/narvii/widget/NVPagerTabLayout$WrappedPageListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/NVPagerTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/widget/NVPagerTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/narvii/widget/NVPagerTabLayout;->currentPosition:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/narvii/widget/NVPagerTabLayout;->currentPositionOffset:F

    iput v0, p0, Lcom/narvii/widget/NVPagerTabLayout;->lastScrollX:I

    const/16 v1, 0x34

    iput v1, p0, Lcom/narvii/widget/NVPagerTabLayout;->scrollOffset:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/narvii/widget/NVPagerTabLayout;->showSelectedStatus:Z

    iput-boolean v1, p0, Lcom/narvii/widget/NVPagerTabLayout;->scrollWhenGlobalLayoutChanged:Z

    iput v0, p0, Lcom/narvii/widget/NVPagerTabLayout;->indicatorArrachedViewId:I

    .line 4
    new-instance v2, Lcom/narvii/widget/NVPagerTabLayout$WrappedPageListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/narvii/widget/NVPagerTabLayout$WrappedPageListener;-><init>(Lcom/narvii/widget/NVPagerTabLayout;Lcom/narvii/widget/k;)V

    iput-object v2, p0, Lcom/narvii/widget/NVPagerTabLayout;->wrappedPageListener:Lcom/narvii/widget/NVPagerTabLayout$WrappedPageListener;

    iput-boolean v1, p0, Lcom/narvii/widget/NVPagerTabLayout;->scrollDivideEqual:Z

    const/16 v2, 0xff

    iput v2, p0, Lcom/narvii/widget/NVPagerTabLayout;->indicatorAlpha:I

    iput v0, p0, Lcom/narvii/widget/NVPagerTabLayout;->customTabWidth:I

    .line 5
    new-instance v2, Lcom/narvii/util/EventDispatcher;

    invoke-direct {v2}, Lcom/narvii/util/EventDispatcher;-><init>()V

    iput-object v2, p0, Lcom/narvii/widget/NVPagerTabLayout;->positionChangeListenerEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 6
    sget-object v2, Lcom/narvii/lib/R$styleable;->NVPagerTabLayout:[I

    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 7
    sget p3, Lcom/narvii/lib/R$styleable;->NVPagerTabLayout_tab_mode:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/narvii/widget/NVPagerTabLayout;->tabMode:I

    .line 8
    sget p3, Lcom/narvii/lib/R$styleable;->NVPagerTabLayout_tab_padding:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/narvii/lib/R$dimen;->tab_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/narvii/widget/NVPagerTabLayout;->tabPadding:I

    .line 9
    sget p3, Lcom/narvii/lib/R$styleable;->NVPagerTabLayout_indicator_h_offset:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/narvii/widget/NVPagerTabLayout;->indicatorHorizontalOffset:I

    .line 10
    sget p3, Lcom/narvii/lib/R$styleable;->NVPagerTabLayout_indicator_v_offset:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/narvii/widget/NVPagerTabLayout;->indicatorVerticalOffset:I

    .line 11
    sget p3, Lcom/narvii/lib/R$styleable;->NVPagerTabLayout_indicator_color:I

    const/4 v2, -0x1

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/narvii/widget/NVPagerTabLayout;->indicatorColor:I

    .line 12
    sget p3, Lcom/narvii/lib/R$styleable;->NVPagerTabLayout_indicator_show:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/narvii/widget/NVPagerTabLayout;->indicatorShow:Z

    .line 13
    sget p3, Lcom/narvii/lib/R$styleable;->NVPagerTabLayout_segment_control:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/narvii/widget/NVPagerTabLayout;->segmentControl:Z

    .line 14
    sget p3, Lcom/narvii/lib/R$styleable;->NVPagerTabLayout_scroll_divide_equal:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/narvii/widget/NVPagerTabLayout;->scrollDivideEqual:Z

    .line 15
    sget p3, Lcom/narvii/lib/R$styleable;->NVPagerTabLayout_custom_tab_view:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/narvii/widget/NVPagerTabLayout;->customTabViewId:I

    .line 16
    sget p3, Lcom/narvii/lib/R$styleable;->NVPagerTabLayout_custom_tab_width:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/narvii/widget/NVPagerTabLayout;->customTabWidth:I

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v3, Lcom/narvii/lib/R$dimen;->tab_custom_min_width:I

    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iget v3, p0, Lcom/narvii/widget/NVPagerTabLayout;->customTabWidth:I

    if-eqz v3, :cond_0

    if-ge v3, p3, :cond_0

    iput p3, p0, Lcom/narvii/widget/NVPagerTabLayout;->customTabWidth:I

    .line 18
    :cond_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 19
    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 21
    new-instance p2, Lcom/narvii/widget/TabContainerLayout;

    iget p3, p0, Lcom/narvii/widget/NVPagerTabLayout;->tabMode:I

    invoke-direct {p2, p1, p3}, Lcom/narvii/widget/TabContainerLayout;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/narvii/widget/NVPagerTabLayout;->tabsContainer:Lcom/narvii/widget/TabContainerLayout;

    iget-boolean p3, p0, Lcom/narvii/widget/NVPagerTabLayout;->segmentControl:Z

    .line 22
    invoke-virtual {p2, p3}, Lcom/narvii/widget/TabContainerLayout;->setSegmentControl(Z)V

    iget-object p2, p0, Lcom/narvii/widget/NVPagerTabLayout;->tabsContainer:Lcom/narvii/widget/TabContainerLayout;

    iget-boolean p3, p0, Lcom/narvii/widget/NVPagerTabLayout;->scrollDivideEqual:Z

    .line 23
    invoke-virtual {p2, p3}, Lcom/narvii/widget/TabContainerLayout;->setScrollDivideEqual(Z)V

    iget-object p2, p0, Lcom/narvii/widget/NVPagerTabLayout;->tabsContainer:Lcom/narvii/widget/TabContainerLayout;

    .line 24
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object p2, p0, Lcom/narvii/widget/NVPagerTabLayout;->tabsContainer:Lcom/narvii/widget/TabContainerLayout;

    .line 25
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result p3

    if-eqz p3, :cond_1

    const p3, 0x800005

    goto :goto_0

    :cond_1
    const p3, 0x800003

    :goto_0
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object p2, p0, Lcom/narvii/widget/NVPagerTabLayout;->tabsContainer:Lcom/narvii/widget/TabContainerLayout;

    .line 26
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p3, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Lcom/narvii/widget/NVPagerTabLayout;->tabsContainer:Lcom/narvii/widget/TabContainerLayout;

    .line 27
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/narvii/lib/R$dimen;->switch_button_decorator:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/widget/NVPagerTabLayout;->indicatorHeight:I

    .line 29
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/NVPagerTabLayout;->rectPaint:Landroid/graphics/Paint;

    .line 30
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/narvii/widget/NVPagerTabLayout;->rectPaint:Landroid/graphics/Paint;

    .line 31
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 32
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutDirection(I)V

    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/widget/NVPagerTabLayout;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/widget/NVPagerTabLayout;->pager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method private addIconTab(II)V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/widget/ImageButton;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/NVPagerTabLayout;->addTab(ILandroid/view/View;)V

    .line 16
    return-void
.end method

.method private addTab(ILandroid/view/View;)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 8
    move-result v1

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    move v1, v0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 16
    move-result v1

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutDirection(I)V

    .line 20
    .line 21
    new-instance v1, Lcom/narvii/widget/NVPagerTabLayout$1;

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, p0, p1}, Lcom/narvii/widget/NVPagerTabLayout$1;-><init>(Lcom/narvii/widget/NVPagerTabLayout;I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    .line 29
    iget v1, p0, Lcom/narvii/widget/NVPagerTabLayout;->tabPadding:I

    .line 30
    const/4 v2, 0x0

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, v1, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 34
    .line 35
    iget v1, p0, Lcom/narvii/widget/NVPagerTabLayout;->tabMode:I

    .line 36
    const/4 v3, -0x1

    .line 37
    .line 38
    if-ne v1, v0, :cond_2

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 53
    .line 54
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 55
    .line 56
    .line 57
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 58
    move-result v4

    .line 59
    .line 60
    if-eqz v4, :cond_1

    .line 61
    .line 62
    div-int/lit8 v2, v0, 0x4

    .line 63
    .line 64
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 65
    .line 66
    .line 67
    invoke-direct {v1, v2, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 68
    goto :goto_1

    .line 69
    .line 70
    :cond_2
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 71
    const/4 v0, -0x2

    .line 72
    .line 73
    .line 74
    invoke-direct {v1, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 75
    .line 76
    :goto_1
    iget-object v0, p0, Lcom/narvii/widget/NVPagerTabLayout;->tabsContainer:Lcom/narvii/widget/TabContainerLayout;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 80
    return-void
.end method

.method private addTextTab(ILjava/lang/String;)V
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/NVPagerTabLayout;->customTabViewId:I

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iget v1, p0, Lcom/narvii/widget/NVPagerTabLayout;->customTabViewId:I

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    instance-of v1, v0, Landroid/widget/TextView;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    move-object v1, v0

    .line 21
    .line 22
    check-cast v1, Landroid/widget/TextView;

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_0
    sget v1, Lcom/narvii/lib/R$id;->tab_item_text:I

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    check-cast v1, Landroid/widget/TextView;

    .line 32
    .line 33
    :goto_0
    if-eqz v1, :cond_2

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    goto :goto_1

    .line 38
    .line 39
    :cond_1
    new-instance v0, Landroid/widget/TextView;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    .line 46
    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 50
    .line 51
    const/16 v1, 0x11

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/NVPagerTabLayout;->addTab(ILandroid/view/View;)V

    .line 61
    return-void
.end method

.method static bridge synthetic b(Lcom/narvii/widget/NVPagerTabLayout;)Lcom/narvii/widget/TabContainerLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/widget/NVPagerTabLayout;->tabsContainer:Lcom/narvii/widget/TabContainerLayout;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/narvii/widget/NVPagerTabLayout;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/widget/NVPagerTabLayout;->currentPosition:I

    return-void
.end method

.method static bridge synthetic d(Lcom/narvii/widget/NVPagerTabLayout;F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/widget/NVPagerTabLayout;->currentPositionOffset:F

    return-void
.end method

.method static bridge synthetic e(Lcom/narvii/widget/NVPagerTabLayout;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/NVPagerTabLayout;->scrollToChild(II)V

    return-void
.end method

.method private scrollToChild(II)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/NVPagerTabLayout;->tabCount:I

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/NVPagerTabLayout;->tabsContainer:Lcom/narvii/widget/TabContainerLayout;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    return-void

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 18
    move-result v0

    .line 19
    add-int/2addr v0, p2

    .line 20
    .line 21
    if-gtz p1, :cond_2

    .line 22
    .line 23
    if-lez p2, :cond_3

    .line 24
    .line 25
    :cond_2
    iget p1, p0, Lcom/narvii/widget/NVPagerTabLayout;->scrollOffset:I

    .line 26
    sub-int/2addr v0, p1

    .line 27
    .line 28
    :cond_3
    iget p1, p0, Lcom/narvii/widget/NVPagerTabLayout;->lastScrollX:I

    .line 29
    .line 30
    if-eq v0, p1, :cond_4

    .line 31
    .line 32
    iput v0, p0, Lcom/narvii/widget/NVPagerTabLayout;->lastScrollX:I

    .line 33
    const/4 p1, 0x0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->scrollTo(II)V

    .line 37
    :cond_4
    return-void
.end method


# virtual methods
.method public addOnTabItemClickListener(Lcom/narvii/widget/NVPagerTabLayout$OnTabItemClickListener;)V
    .locals 1

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/NVPagerTabLayout;->onTabItemClickListenerList:Ljava/util/List;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/widget/NVPagerTabLayout;->onTabItemClickListenerList:Ljava/util/List;

    .line 15
    .line 16
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/NVPagerTabLayout;->onTabItemClickListenerList:Ljava/util/List;

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    return-void
.end method

.method public addPagerListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NVPagerTabLayout;->pager:Landroidx/viewpager/widget/ViewPager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 6
    return-void
.end method

.method public addPositionListener(Lcom/narvii/widget/NVPagerTabLayout$PositionChangeListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NVPagerTabLayout;->positionChangeListenerEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public getChildTabAt(I)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NVPagerTabLayout;->tabsContainer:Lcom/narvii/widget/TabContainerLayout;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return-object p1
.end method

.method public getTabCount()I
    .locals 1

    iget v0, p0, Lcom/narvii/widget/NVPagerTabLayout;->tabCount:I

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NVPagerTabLayout;->tabsContainer:Lcom/narvii/widget/TabContainerLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/widget/NVPagerTabLayout;->pager:Landroidx/viewpager/widget/ViewPager;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    .line 15
    move-result v0

    .line 16
    .line 17
    iput v0, p0, Lcom/narvii/widget/NVPagerTabLayout;->tabCount:I

    .line 18
    const/4 v0, 0x0

    .line 19
    .line 20
    :goto_0
    iget v1, p0, Lcom/narvii/widget/NVPagerTabLayout;->tabCount:I

    .line 21
    .line 22
    if-ge v0, v1, :cond_1

    .line 23
    .line 24
    iget-object v1, p0, Lcom/narvii/widget/NVPagerTabLayout;->pager:Landroidx/viewpager/widget/ViewPager;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    instance-of v1, v1, Lcom/narvii/widget/NVPagerTabLayout$CustomPagerTabView;

    .line 31
    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    iget-object v1, p0, Lcom/narvii/widget/NVPagerTabLayout;->pager:Landroidx/viewpager/widget/ViewPager;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    check-cast v1, Lcom/narvii/widget/NVPagerTabLayout$CustomPagerTabView;

    .line 41
    .line 42
    .line 43
    invoke-interface {v1, v0}, Lcom/narvii/widget/NVPagerTabLayout$CustomPagerTabView;->getPageTabView(I)Landroid/view/View;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    .line 47
    invoke-direct {p0, v0, v1}, Lcom/narvii/widget/NVPagerTabLayout;->addTab(ILandroid/view/View;)V

    .line 48
    goto :goto_1

    .line 49
    .line 50
    :cond_0
    iget-object v1, p0, Lcom/narvii/widget/NVPagerTabLayout;->pager:Landroidx/viewpager/widget/ViewPager;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    .line 54
    move-result-object v1

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    .line 58
    move-result-object v1

    .line 59
    .line 60
    .line 61
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    .line 65
    invoke-direct {p0, v0, v1}, Lcom/narvii/widget/NVPagerTabLayout;->addTextTab(ILjava/lang/String;)V

    .line 66
    .line 67
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 68
    goto :goto_0

    .line 69
    .line 70
    .line 71
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/widget/NVPagerTabLayout;->updateTabsSelectStatus()V

    .line 72
    .line 73
    iget-boolean v0, p0, Lcom/narvii/widget/NVPagerTabLayout;->scrollWhenGlobalLayoutChanged:Z

    .line 74
    .line 75
    if-eqz v0, :cond_2

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 79
    move-result-object v0

    .line 80
    .line 81
    new-instance v1, Lcom/narvii/widget/NVPagerTabLayout$2;

    .line 82
    .line 83
    .line 84
    invoke-direct {v1, p0}, Lcom/narvii/widget/NVPagerTabLayout$2;-><init>(Lcom/narvii/widget/NVPagerTabLayout;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 88
    :cond_2
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

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
    if-nez v0, :cond_e

    .line 10
    .line 11
    iget v0, p0, Lcom/narvii/widget/NVPagerTabLayout;->tabCount:I

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto/16 :goto_8

    .line 16
    .line 17
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/widget/NVPagerTabLayout;->indicatorShow:Z

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    return-void

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 24
    move-result v0

    .line 25
    .line 26
    iget-object v1, p0, Lcom/narvii/widget/NVPagerTabLayout;->rectPaint:Landroid/graphics/Paint;

    .line 27
    .line 28
    iget v2, p0, Lcom/narvii/widget/NVPagerTabLayout;->indicatorColor:I

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    .line 33
    iget-object v1, p0, Lcom/narvii/widget/NVPagerTabLayout;->rectPaint:Landroid/graphics/Paint;

    .line 34
    .line 35
    iget v2, p0, Lcom/narvii/widget/NVPagerTabLayout;->indicatorAlpha:I

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 39
    .line 40
    iget-object v1, p0, Lcom/narvii/widget/NVPagerTabLayout;->tabsContainer:Lcom/narvii/widget/TabContainerLayout;

    .line 41
    .line 42
    iget v2, p0, Lcom/narvii/widget/NVPagerTabLayout;->currentPosition:I

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 46
    move-result-object v1

    .line 47
    const/4 v2, 0x0

    .line 48
    .line 49
    if-nez v1, :cond_2

    .line 50
    move v3, v2

    .line 51
    goto :goto_0

    .line 52
    .line 53
    .line 54
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 55
    move-result v3

    .line 56
    int-to-float v3, v3

    .line 57
    .line 58
    :goto_0
    if-nez v1, :cond_3

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 62
    move-result v4

    .line 63
    :goto_1
    int-to-float v4, v4

    .line 64
    goto :goto_2

    .line 65
    .line 66
    .line 67
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    .line 68
    move-result v4

    .line 69
    goto :goto_1

    .line 70
    .line 71
    :goto_2
    iget v5, p0, Lcom/narvii/widget/NVPagerTabLayout;->indicatorArrachedViewId:I

    .line 72
    .line 73
    if-eqz v5, :cond_7

    .line 74
    .line 75
    if-nez v1, :cond_4

    .line 76
    const/4 v1, 0x0

    .line 77
    goto :goto_3

    .line 78
    .line 79
    .line 80
    :cond_4
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 81
    move-result-object v1

    .line 82
    .line 83
    :goto_3
    if-nez v1, :cond_5

    .line 84
    move v4, v2

    .line 85
    goto :goto_4

    .line 86
    .line 87
    .line 88
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 89
    move-result v4

    .line 90
    int-to-float v4, v4

    .line 91
    :goto_4
    add-float/2addr v3, v4

    .line 92
    .line 93
    if-nez v1, :cond_6

    .line 94
    const/4 v4, 0x0

    .line 95
    goto :goto_5

    .line 96
    .line 97
    .line 98
    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 99
    move-result v4

    .line 100
    :goto_5
    int-to-float v4, v4

    .line 101
    add-float/2addr v4, v3

    .line 102
    .line 103
    :cond_7
    iget v5, p0, Lcom/narvii/widget/NVPagerTabLayout;->customTabWidth:I

    .line 104
    .line 105
    const/high16 v6, 0x40000000    # 2.0f

    .line 106
    .line 107
    if-eqz v5, :cond_9

    .line 108
    .line 109
    if-nez v1, :cond_8

    .line 110
    move v1, v2

    .line 111
    goto :goto_6

    .line 112
    .line 113
    .line 114
    :cond_8
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 115
    move-result v1

    .line 116
    .line 117
    iget v5, p0, Lcom/narvii/widget/NVPagerTabLayout;->customTabWidth:I

    .line 118
    sub-int/2addr v1, v5

    .line 119
    int-to-float v1, v1

    .line 120
    div-float/2addr v1, v6

    .line 121
    :goto_6
    add-float/2addr v3, v1

    .line 122
    sub-float/2addr v4, v1

    .line 123
    .line 124
    :cond_9
    iget v1, p0, Lcom/narvii/widget/NVPagerTabLayout;->currentPositionOffset:F

    .line 125
    .line 126
    cmpl-float v1, v1, v2

    .line 127
    const/4 v2, 0x1

    .line 128
    .line 129
    if-lez v1, :cond_c

    .line 130
    .line 131
    iget v1, p0, Lcom/narvii/widget/NVPagerTabLayout;->currentPosition:I

    .line 132
    .line 133
    iget v5, p0, Lcom/narvii/widget/NVPagerTabLayout;->tabCount:I

    .line 134
    sub-int/2addr v5, v2

    .line 135
    .line 136
    if-ge v1, v5, :cond_c

    .line 137
    .line 138
    iget-object v5, p0, Lcom/narvii/widget/NVPagerTabLayout;->tabsContainer:Lcom/narvii/widget/TabContainerLayout;

    .line 139
    add-int/2addr v1, v2

    .line 140
    .line 141
    .line 142
    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 143
    move-result-object v1

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 147
    move-result v5

    .line 148
    int-to-float v5, v5

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    .line 152
    move-result v7

    .line 153
    int-to-float v7, v7

    .line 154
    .line 155
    iget v8, p0, Lcom/narvii/widget/NVPagerTabLayout;->indicatorArrachedViewId:I

    .line 156
    .line 157
    if-eqz v8, :cond_a

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 161
    move-result-object v1

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 165
    move-result v7

    .line 166
    int-to-float v7, v7

    .line 167
    add-float/2addr v5, v7

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 171
    move-result v7

    .line 172
    int-to-float v7, v7

    .line 173
    add-float/2addr v7, v5

    .line 174
    .line 175
    :cond_a
    iget v8, p0, Lcom/narvii/widget/NVPagerTabLayout;->customTabWidth:I

    .line 176
    .line 177
    if-eqz v8, :cond_b

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 181
    move-result v1

    .line 182
    .line 183
    iget v8, p0, Lcom/narvii/widget/NVPagerTabLayout;->customTabWidth:I

    .line 184
    sub-int/2addr v1, v8

    .line 185
    int-to-float v1, v1

    .line 186
    div-float/2addr v1, v6

    .line 187
    add-float/2addr v5, v1

    .line 188
    sub-float/2addr v7, v1

    .line 189
    .line 190
    :cond_b
    iget v1, p0, Lcom/narvii/widget/NVPagerTabLayout;->currentPositionOffset:F

    .line 191
    mul-float/2addr v5, v1

    .line 192
    .line 193
    const/high16 v8, 0x3f800000    # 1.0f

    .line 194
    .line 195
    sub-float v9, v8, v1

    .line 196
    mul-float/2addr v9, v3

    .line 197
    .line 198
    add-float v3, v5, v9

    .line 199
    mul-float/2addr v7, v1

    .line 200
    sub-float/2addr v8, v1

    .line 201
    mul-float/2addr v8, v4

    .line 202
    .line 203
    add-float v4, v7, v8

    .line 204
    .line 205
    :cond_c
    iget v1, p0, Lcom/narvii/widget/NVPagerTabLayout;->indicatorHorizontalOffset:I

    .line 206
    int-to-float v5, v1

    .line 207
    add-float/2addr v3, v5

    .line 208
    int-to-float v1, v1

    .line 209
    sub-float/2addr v4, v1

    .line 210
    .line 211
    iget v1, p0, Lcom/narvii/widget/NVPagerTabLayout;->indicatorHeight:I

    .line 212
    .line 213
    sub-int v1, v0, v1

    .line 214
    .line 215
    add-int/lit8 v1, v1, -0x2

    .line 216
    .line 217
    iget v5, p0, Lcom/narvii/widget/NVPagerTabLayout;->indicatorVerticalOffset:I

    .line 218
    sub-int/2addr v1, v5

    .line 219
    int-to-float v1, v1

    .line 220
    .line 221
    add-int/lit8 v0, v0, -0x2

    .line 222
    sub-int/2addr v0, v5

    .line 223
    int-to-float v0, v0

    .line 224
    .line 225
    iget v5, p0, Lcom/narvii/widget/NVPagerTabLayout;->tabMode:I

    .line 226
    .line 227
    if-ne v5, v2, :cond_d

    .line 228
    add-float/2addr v1, v6

    .line 229
    add-float/2addr v0, v6

    .line 230
    goto :goto_7

    .line 231
    .line 232
    .line 233
    :cond_d
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 234
    move-result-object v2

    .line 235
    .line 236
    const/high16 v5, 0x40c00000    # 6.0f

    .line 237
    .line 238
    .line 239
    invoke-static {v2, v5}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 240
    move-result v2

    .line 241
    add-float/2addr v3, v2

    .line 242
    .line 243
    .line 244
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 245
    move-result-object v2

    .line 246
    .line 247
    .line 248
    invoke-static {v2, v5}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 249
    move-result v2

    .line 250
    sub-float/2addr v4, v2

    .line 251
    .line 252
    :goto_7
    new-instance v2, Landroid/graphics/RectF;

    .line 253
    .line 254
    .line 255
    invoke-direct {v2, v3, v1, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 256
    .line 257
    iput-object v2, p0, Lcom/narvii/widget/NVPagerTabLayout;->indicatorRect:Landroid/graphics/RectF;

    .line 258
    .line 259
    iget-object v0, p0, Lcom/narvii/widget/NVPagerTabLayout;->rectPaint:Landroid/graphics/Paint;

    .line 260
    .line 261
    const/high16 v1, 0x40a00000    # 5.0f

    .line 262
    .line 263
    .line 264
    invoke-virtual {p1, v2, v1, v1, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 265
    :cond_e
    :goto_8
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    .line 2
    check-cast p1, Lcom/narvii/widget/NVPagerTabLayout$SavedState;

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
    iget p1, p1, Lcom/narvii/widget/NVPagerTabLayout$SavedState;->currentPosition:I

    .line 12
    .line 13
    iput p1, p0, Lcom/narvii/widget/NVPagerTabLayout;->currentPosition:I

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
    new-instance v1, Lcom/narvii/widget/NVPagerTabLayout$SavedState;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v0}, Lcom/narvii/widget/NVPagerTabLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 10
    .line 11
    iget v0, p0, Lcom/narvii/widget/NVPagerTabLayout;->currentPosition:I

    .line 12
    .line 13
    iput v0, v1, Lcom/narvii/widget/NVPagerTabLayout$SavedState;->currentPosition:I

    .line 14
    return-object v1
.end method

.method public removePagerListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NVPagerTabLayout;->pager:Landroidx/viewpager/widget/ViewPager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 6
    return-void
.end method

.method public removePositionListener(Lcom/narvii/widget/NVPagerTabLayout$PositionChangeListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NVPagerTabLayout;->positionChangeListenerEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public scrollToCurrentPosition()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NVPagerTabLayout;->pager:Landroidx/viewpager/widget/ViewPager;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, v0, v1}, Lcom/narvii/widget/NVPagerTabLayout;->scrollToChild(II)V

    .line 13
    :cond_0
    return-void
.end method

.method public setIndicatorAlpha(F)V
    .locals 2

    .line 1
    .line 2
    const/high16 v0, 0x437f0000    # 255.0f

    .line 3
    mul-float/2addr p1, v0

    .line 4
    float-to-int p1, p1

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    const/16 v1, 0xff

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0, v1}, Landroidx/core/math/MathUtils;->b(III)I

    .line 11
    move-result p1

    .line 12
    .line 13
    iput p1, p0, Lcom/narvii/widget/NVPagerTabLayout;->indicatorAlpha:I

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 17
    return-void
.end method

.method public setIndicatorAttachedViewId(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/widget/NVPagerTabLayout;->indicatorArrachedViewId:I

    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/widget/NVPagerTabLayout;->indicatorColor:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6
    return-void
.end method

.method public setOnTabItemClickListener(Lcom/narvii/widget/NVPagerTabLayout$OnTabItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/NVPagerTabLayout;->onTabItemClickListener:Lcom/narvii/widget/NVPagerTabLayout$OnTabItemClickListener;

    return-void
.end method

.method public setScrollDividerEqual(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NVPagerTabLayout;->tabsContainer:Lcom/narvii/widget/TabContainerLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/widget/TabContainerLayout;->setScrollDivideEqual(Z)V

    .line 6
    return-void
.end method

.method public setScrollOffset(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/widget/NVPagerTabLayout;->scrollOffset:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6
    return-void
.end method

.method public setShowSelectedStatus(Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/widget/NVPagerTabLayout;->showSelectedStatus:Z

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/widget/NVPagerTabLayout;->updateTabsSelectStatus()V

    .line 6
    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/NVPagerTabLayout;->pager:Landroidx/viewpager/widget/ViewPager;

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
    iget-object v0, p0, Lcom/narvii/widget/NVPagerTabLayout;->wrappedPageListener:Lcom/narvii/widget/NVPagerTabLayout$WrappedPageListener;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/widget/NVPagerTabLayout;->notifyDataSetChanged()V

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

.method public updateTabsSelectStatus()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NVPagerTabLayout;->pager:Landroidx/viewpager/widget/ViewPager;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/widget/NVPagerTabLayout;->tabsContainer:Lcom/narvii/widget/TabContainerLayout;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    goto :goto_2

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    move v2, v1

    .line 16
    .line 17
    :goto_0
    iget-object v3, p0, Lcom/narvii/widget/NVPagerTabLayout;->tabsContainer:Lcom/narvii/widget/TabContainerLayout;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    .line 21
    move-result v3

    .line 22
    .line 23
    if-ge v2, v3, :cond_2

    .line 24
    .line 25
    if-ne v2, v0, :cond_1

    .line 26
    .line 27
    iget-object v3, p0, Lcom/narvii/widget/NVPagerTabLayout;->tabsContainer:Lcom/narvii/widget/TabContainerLayout;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 31
    move-result-object v3

    .line 32
    .line 33
    iget-boolean v4, p0, Lcom/narvii/widget/NVPagerTabLayout;->showSelectedStatus:Z

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    .line 37
    goto :goto_1

    .line 38
    .line 39
    :cond_1
    iget-object v3, p0, Lcom/narvii/widget/NVPagerTabLayout;->tabsContainer:Lcom/narvii/widget/TabContainerLayout;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 43
    move-result-object v3

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v1}, Landroid/view/View;->setSelected(Z)V

    .line 47
    .line 48
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    :goto_2
    return-void
.end method
