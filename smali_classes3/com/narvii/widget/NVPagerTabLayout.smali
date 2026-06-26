.class public Lcom/narvii/widget/NVPagerTabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "NVPagerTabLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/NVPagerTabLayout$SavedState;,
        Lcom/narvii/widget/NVPagerTabLayout$WrappedPageListener;,
        Lcom/narvii/widget/NVPagerTabLayout$PositionChangeListener;,
        Lcom/narvii/widget/NVPagerTabLayout$CustomPagerTabView;,
        Lcom/narvii/widget/NVPagerTabLayout$OnTabItemClickListener;
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

.field private pager:Landroid/support/v4/view/ViewPager;

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

    .line 95
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/NVPagerTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 99
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/widget/NVPagerTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 103
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/narvii/widget/NVPagerTabLayout;->currentPosition:I

    const/4 v1, 0x0

    .line 57
    iput v1, p0, Lcom/narvii/widget/NVPagerTabLayout;->currentPositionOffset:F

    .line 58
    iput v0, p0, Lcom/narvii/widget/NVPagerTabLayout;->lastScrollX:I

    const/16 v1, 0x34

    .line 67
    iput v1, p0, Lcom/narvii/widget/NVPagerTabLayout;->scrollOffset:I

    const/4 v1, 0x1

    .line 77
    iput-boolean v1, p0, Lcom/narvii/widget/NVPagerTabLayout;->showSelectedStatus:Z

    .line 78
    iput-boolean v1, p0, Lcom/narvii/widget/NVPagerTabLayout;->scrollWhenGlobalLayoutChanged:Z

    .line 80
    iput v0, p0, Lcom/narvii/widget/NVPagerTabLayout;->indicatorArrachedViewId:I

    .line 82
    new-instance v2, Lcom/narvii/widget/NVPagerTabLayout$WrappedPageListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/narvii/widget/NVPagerTabLayout$WrappedPageListener;-><init>(Lcom/narvii/widget/NVPagerTabLayout;Lcom/narvii/widget/NVPagerTabLayout$1;)V

    iput-object v2, p0, Lcom/narvii/widget/NVPagerTabLayout;->wrappedPageListener:Lcom/narvii/widget/NVPagerTabLayout$WrappedPageListener;

    .line 88
    iput-boolean v1, p0, Lcom/narvii/widget/NVPagerTabLayout;->scrollDivideEqual:Z

    const/16 v2, 0xff

    .line 89
    iput v2, p0, Lcom/narvii/widget/NVPagerTabLayout;->indicatorAlpha:I

    .line 90
    iput v0, p0, Lcom/narvii/widget/NVPagerTabLayout;->customTabWidth:I

    .line 92
    new-instance v2, Lcom/narvii/util/EventDispatcher;

    invoke-direct {v2}, Lcom/narvii/util/EventDispatcher;-><init>()V

    iput-object v2, p0, Lcom/narvii/widget/NVPagerTabLayout;->positionChangeListenerEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 105
    sget-object v2, Lcom/narvii/lib/R$styleable;->NVPagerTabLayout:[I

    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 106
    sget p3, Lcom/narvii/lib/R$styleable;->NVPagerTabLayout_tab_mode:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/narvii/widget/NVPagerTabLayout;->tabMode:I

    .line 107
    sget p3, Lcom/narvii/lib/R$styleable;->NVPagerTabLayout_tab_padding:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/narvii/lib/R$dimen;->tab_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/narvii/widget/NVPagerTabLayout;->tabPadding:I

    .line 108
    sget p3, Lcom/narvii/lib/R$styleable;->NVPagerTabLayout_indicator_h_offset:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/narvii/widget/NVPagerTabLayout;->indicatorHorizontalOffset:I

    .line 109
    sget p3, Lcom/narvii/lib/R$styleable;->NVPagerTabLayout_indicator_v_offset:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/narvii/widget/NVPagerTabLayout;->indicatorVerticalOffset:I

    .line 110
    sget p3, Lcom/narvii/lib/R$styleable;->NVPagerTabLayout_indicator_color:I

    const/4 v2, -0x1

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/narvii/widget/NVPagerTabLayout;->indicatorColor:I

    .line 111
    sget p3, Lcom/narvii/lib/R$styleable;->NVPagerTabLayout_indicator_show:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/narvii/widget/NVPagerTabLayout;->indicatorShow:Z

    .line 112
    sget p3, Lcom/narvii/lib/R$styleable;->NVPagerTabLayout_segment_control:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/narvii/widget/NVPagerTabLayout;->segmentControl:Z

    .line 113
    sget p3, Lcom/narvii/lib/R$styleable;->NVPagerTabLayout_scroll_divide_equal:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/narvii/widget/NVPagerTabLayout;->scrollDivideEqual:Z

    .line 114
    sget p3, Lcom/narvii/lib/R$styleable;->NVPagerTabLayout_custom_tab_view:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/narvii/widget/NVPagerTabLayout;->customTabViewId:I

    .line 115
    sget p3, Lcom/narvii/lib/R$styleable;->NVPagerTabLayout_custom_tab_width:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/narvii/widget/NVPagerTabLayout;->customTabWidth:I

    .line 116
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v3, Lcom/narvii/lib/R$dimen;->tab_custom_min_width:I

    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 117
    iget v3, p0, Lcom/narvii/widget/NVPagerTabLayout;->customTabWidth:I

    if-eqz v3, :cond_0

    if-ge v3, p3, :cond_0

    .line 118
    iput p3, p0, Lcom/narvii/widget/NVPagerTabLayout;->customTabWidth:I

    .line 120
    :cond_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 122
    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    .line 123
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->setWillNotDraw(Z)V

    .line 125
    new-instance p2, Lcom/narvii/widget/TabContainerLayout;

    iget p3, p0, Lcom/narvii/widget/NVPagerTabLayout;->tabMode:I

    invoke-direct {p2, p1, p3}, Lcom/narvii/widget/TabContainerLayout;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/narvii/widget/NVPagerTabLayout;->tabsContainer:Lcom/narvii/widget/TabContainerLayout;

    .line 126
    iget-object p2, p0, Lcom/narvii/widget/NVPagerTabLayout;->tabsContainer:Lcom/narvii/widget/TabContainerLayout;

    iget-boolean p3, p0, Lcom/narvii/widget/NVPagerTabLayout;->segmentControl:Z

    invoke-virtual {p2, p3}, Lcom/narvii/widget/TabContainerLayout;->setSegmentControl(Z)V

    .line 127
    iget-object p2, p0, Lcom/narvii/widget/NVPagerTabLayout;->tabsContainer:Lcom/narvii/widget/TabContainerLayout;

    iget-boolean p3, p0, Lcom/narvii/widget/NVPagerTabLayout;->scrollDivideEqual:Z

    invoke-virtual {p2, p3}, Lcom/narvii/widget/TabContainerLayout;->setScrollDivideEqual(Z)V

    .line 128
    iget-object p2, p0, Lcom/narvii/widget/NVPagerTabLayout;->tabsContainer:Lcom/narvii/widget/TabContainerLayout;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 129
    iget-object p2, p0, Lcom/narvii/widget/NVPagerTabLayout;->tabsContainer:Lcom/narvii/widget/TabContainerLayout;

    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result p3

    if-eqz p3, :cond_1

    const p3, 0x800005

    goto :goto_0

    :cond_1
    const p3, 0x800003

    :goto_0
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 130
    iget-object p2, p0, Lcom/narvii/widget/NVPagerTabLayout;->tabsContainer:Lcom/narvii/widget/TabContainerLayout;

    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p3, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    iget-object p2, p0, Lcom/narvii/widget/NVPagerTabLayout;->tabsContainer:Lcom/narvii/widget/TabContainerLayout;

    invoke-virtual {p0, p2}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/narvii/lib/R$dimen;->switch_button_decorator:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/widget/NVPagerTabLayout;->indicatorHeight:I

    .line 135
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/NVPagerTabLayout;->rectPaint:Landroid/graphics/Paint;

    .line 136
    iget-object p1, p0, Lcom/narvii/widget/NVPagerTabLayout;->rectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 137
    iget-object p1, p0, Lcom/narvii/widget/NVPagerTabLayout;->rectPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 139
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x11

    if-lt p1, p2, :cond_2

    .line 140
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->setLayoutDirection(I)V

    :cond_2
    return-void
.end method

.method static synthetic access$100(Lcom/narvii/widget/NVPagerTabLayout;)Landroid/support/v4/view/ViewPager;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/narvii/widget/NVPagerTabLayout;->pager:Landroid/support/v4/view/ViewPager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/widget/NVPagerTabLayout;II)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/NVPagerTabLayout;->scrollToChild(II)V

    return-void
.end method

.method static synthetic access$302(Lcom/narvii/widget/NVPagerTabLayout;I)I
    .locals 0

    .line 34
    iput p1, p0, Lcom/narvii/widget/NVPagerTabLayout;->currentPosition:I

    return p1
.end method

.method static synthetic access$402(Lcom/narvii/widget/NVPagerTabLayout;F)F
    .locals 0

    .line 34
    iput p1, p0, Lcom/narvii/widget/NVPagerTabLayout;->currentPositionOffset:F

    return p1
.end method

.method static synthetic access$500(Lcom/narvii/widget/NVPagerTabLayout;)Lcom/narvii/widget/TabContainerLayout;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/narvii/widget/NVPagerTabLayout;->tabsContainer:Lcom/narvii/widget/TabContainerLayout;

    return-object p0
.end method

.method private addIconTab(II)V
    .locals 2

    .line 220
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 221
    invoke-virtual {v0, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 222
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/NVPagerTabLayout;->addTab(ILandroid/view/View;)V

    return-void
.end method

.method private addTab(ILandroid/view/View;)V
    .locals 5

    const/4 v0, 0x1

    .line 231
    invoke-virtual {p2, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 232
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1

    .line 233
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getLayoutDirection()I

    move-result v1

    :goto_0
    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutDirection(I)V

    .line 235
    :cond_1
    new-instance v1, Lcom/narvii/widget/NVPagerTabLayout$1;

    invoke-direct {v1, p0, p1}, Lcom/narvii/widget/NVPagerTabLayout$1;-><init>(Lcom/narvii/widget/NVPagerTabLayout;I)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    iget v1, p0, Lcom/narvii/widget/NVPagerTabLayout;->tabPadding:I

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 253
    iget v1, p0, Lcom/narvii/widget/NVPagerTabLayout;->tabMode:I

    const/4 v3, -0x1

    if-ne v1, v0, :cond_3

    .line 255
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 256
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v4

    if-eqz v4, :cond_2

    div-int/lit8 v2, v0, 0x4

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    goto :goto_1

    .line 258
    :cond_3
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {v1, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 260
    :goto_1
    iget-object v0, p0, Lcom/narvii/widget/NVPagerTabLayout;->tabsContainer:Lcom/narvii/widget/TabContainerLayout;

    invoke-virtual {v0, p2, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addTextTab(ILjava/lang/String;)V
    .locals 3

    .line 198
    iget v0, p0, Lcom/narvii/widget/NVPagerTabLayout;->customTabViewId:I

    if-eqz v0, :cond_1

    .line 199
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/narvii/widget/NVPagerTabLayout;->customTabViewId:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/HorizontalScrollView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 201
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 202
    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    goto :goto_0

    .line 204
    :cond_0
    sget v1, Lcom/narvii/lib/R$id;->tab_item_text:I

    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    :goto_0
    if-eqz v1, :cond_2

    .line 207
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 210
    :cond_1
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 211
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    const/16 v1, 0x11

    .line 212
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 213
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    :cond_2
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/NVPagerTabLayout;->addTab(ILandroid/view/View;)V

    return-void
.end method

.method private scrollToChild(II)V
    .locals 1

    .line 437
    iget v0, p0, Lcom/narvii/widget/NVPagerTabLayout;->tabCount:I

    if-nez v0, :cond_0

    return-void

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/NVPagerTabLayout;->tabsContainer:Lcom/narvii/widget/TabContainerLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 444
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int/2addr v0, p2

    if-gtz p1, :cond_2

    if-lez p2, :cond_3

    .line 446
    :cond_2
    iget p1, p0, Lcom/narvii/widget/NVPagerTabLayout;->scrollOffset:I

    sub-int/2addr v0, p1

    .line 448
    :cond_3
    iget p1, p0, Lcom/narvii/widget/NVPagerTabLayout;->lastScrollX:I

    if-eq v0, p1, :cond_4

    .line 449
    iput v0, p0, Lcom/narvii/widget/NVPagerTabLayout;->lastScrollX:I

    const/4 p1, 0x0

    .line 450
    invoke-virtual {p0, v0, p1}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    :cond_4
    return-void
.end method


# virtual methods
.method public addOnTabItemClickListener(Lcom/narvii/widget/NVPagerTabLayout$OnTabItemClickListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/NVPagerTabLayout;->onTabItemClickListenerList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/NVPagerTabLayout;->onTabItemClickListenerList:Ljava/util/List;

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/NVPagerTabLayout;->onTabItemClickListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addPagerListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/narvii/widget/NVPagerTabLayout;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method public addPositionListener(Lcom/narvii/widget/NVPagerTabLayout$PositionChangeListener;)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/narvii/widget/NVPagerTabLayout;->positionChangeListenerEventDispatcher:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    return-void
.end method

.method public getChildTabAt(I)Landroid/view/View;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/narvii/widget/NVPagerTabLayout;->tabsContainer:Lcom/narvii/widget/TabContainerLayout;

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTabCount()I
    .locals 1

    .line 276
    iget v0, p0, Lcom/narvii/widget/NVPagerTabLayout;->tabCount:I

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .line 288
    iget-object v0, p0, Lcom/narvii/widget/NVPagerTabLayout;->tabsContainer:Lcom/narvii/widget/TabContainerLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 289
    iget-object v0, p0, Lcom/narvii/widget/NVPagerTabLayout;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/narvii/widget/NVPagerTabLayout;->tabCount:I

    const/4 v0, 0x0

    .line 290
    :goto_0
    iget v1, p0, Lcom/narvii/widget/NVPagerTabLayout;->tabCount:I

    if-ge v0, v1, :cond_1

    .line 291
    iget-object v1, p0, Lcom/narvii/widget/NVPagerTabLayout;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    instance-of v1, v1, Lcom/narvii/widget/NVPagerTabLayout$CustomPagerTabView;

    if-eqz v1, :cond_0

    .line 292
    iget-object v1, p0, Lcom/narvii/widget/NVPagerTabLayout;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/NVPagerTabLayout$CustomPagerTabView;

    invoke-interface {v1, v0}, Lcom/narvii/widget/NVPagerTabLayout$CustomPagerTabView;->getPageTabView(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/narvii/widget/NVPagerTabLayout;->addTab(ILandroid/view/View;)V

    goto :goto_1

    .line 294
    :cond_0
    iget-object v1, p0, Lcom/narvii/widget/NVPagerTabLayout;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/narvii/widget/NVPagerTabLayout;->addTextTab(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 298
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/widget/NVPagerTabLayout;->updateTabsSelectStatus()V

    .line 300
    iget-boolean v0, p0, Lcom/narvii/widget/NVPagerTabLayout;->scrollWhenGlobalLayoutChanged:Z

    if-eqz v0, :cond_2

    .line 301
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/narvii/widget/NVPagerTabLayout$2;

    invoke-direct {v1, p0}, Lcom/narvii/widget/NVPagerTabLayout$2;-><init>(Lcom/narvii/widget/NVPagerTabLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_2
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 337
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 338
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_e

    iget v0, p0, Lcom/narvii/widget/NVPagerTabLayout;->tabCount:I

    if-nez v0, :cond_0

    goto/16 :goto_7

    .line 342
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/widget/NVPagerTabLayout;->indicatorShow:Z

    if-nez v0, :cond_1

    return-void

    .line 345
    :cond_1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v0

    .line 348
    iget-object v1, p0, Lcom/narvii/widget/NVPagerTabLayout;->rectPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/narvii/widget/NVPagerTabLayout;->indicatorColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 349
    iget-object v1, p0, Lcom/narvii/widget/NVPagerTabLayout;->rectPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/narvii/widget/NVPagerTabLayout;->indicatorAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 351
    iget-object v1, p0, Lcom/narvii/widget/NVPagerTabLayout;->tabsContainer:Lcom/narvii/widget/TabContainerLayout;

    iget v2, p0, Lcom/narvii/widget/NVPagerTabLayout;->currentPosition:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    const/4 v3, 0x0

    goto :goto_0

    .line 352
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    :goto_0
    if-nez v1, :cond_3

    .line 353
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v4

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v4

    :goto_1
    int-to-float v4, v4

    .line 354
    iget v5, p0, Lcom/narvii/widget/NVPagerTabLayout;->indicatorArrachedViewId:I

    if-eqz v5, :cond_7

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_2

    .line 355
    :cond_4
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    :goto_2
    if-nez v1, :cond_5

    const/4 v4, 0x0

    goto :goto_3

    .line 356
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    :goto_3
    add-float/2addr v3, v4

    if-nez v1, :cond_6

    const/4 v4, 0x0

    goto :goto_4

    .line 357
    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    :goto_4
    int-to-float v4, v4

    add-float/2addr v4, v3

    .line 359
    :cond_7
    iget v5, p0, Lcom/narvii/widget/NVPagerTabLayout;->customTabWidth:I

    const/high16 v6, 0x40000000    # 2.0f

    if-eqz v5, :cond_9

    if-nez v1, :cond_8

    const/4 v1, 0x0

    goto :goto_5

    .line 360
    :cond_8
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v5, p0, Lcom/narvii/widget/NVPagerTabLayout;->customTabWidth:I

    sub-int/2addr v1, v5

    int-to-float v1, v1

    div-float/2addr v1, v6

    :goto_5
    add-float/2addr v3, v1

    sub-float/2addr v4, v1

    .line 365
    :cond_9
    iget v1, p0, Lcom/narvii/widget/NVPagerTabLayout;->currentPositionOffset:F

    const/4 v5, 0x1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_c

    iget v1, p0, Lcom/narvii/widget/NVPagerTabLayout;->currentPosition:I

    iget v2, p0, Lcom/narvii/widget/NVPagerTabLayout;->tabCount:I

    sub-int/2addr v2, v5

    if-ge v1, v2, :cond_c

    .line 366
    iget-object v2, p0, Lcom/narvii/widget/NVPagerTabLayout;->tabsContainer:Lcom/narvii/widget/TabContainerLayout;

    add-int/2addr v1, v5

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 367
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    .line 368
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v7

    int-to-float v7, v7

    .line 369
    iget v8, p0, Lcom/narvii/widget/NVPagerTabLayout;->indicatorArrachedViewId:I

    if-eqz v8, :cond_a

    .line 370
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 371
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v2, v7

    .line 372
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v2

    .line 374
    :cond_a
    iget v8, p0, Lcom/narvii/widget/NVPagerTabLayout;->customTabWidth:I

    if-eqz v8, :cond_b

    .line 375
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v8, p0, Lcom/narvii/widget/NVPagerTabLayout;->customTabWidth:I

    sub-int/2addr v1, v8

    int-to-float v1, v1

    div-float/2addr v1, v6

    add-float/2addr v2, v1

    sub-float/2addr v7, v1

    .line 379
    :cond_b
    iget v1, p0, Lcom/narvii/widget/NVPagerTabLayout;->currentPositionOffset:F

    mul-float v2, v2, v1

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v9, v8, v1

    mul-float v9, v9, v3

    add-float v3, v2, v9

    mul-float v7, v7, v1

    sub-float/2addr v8, v1

    mul-float v8, v8, v4

    add-float v4, v7, v8

    .line 383
    :cond_c
    iget v1, p0, Lcom/narvii/widget/NVPagerTabLayout;->indicatorHorizontalOffset:I

    int-to-float v2, v1

    add-float/2addr v3, v2

    int-to-float v1, v1

    sub-float/2addr v4, v1

    .line 385
    iget v1, p0, Lcom/narvii/widget/NVPagerTabLayout;->indicatorHeight:I

    sub-int v1, v0, v1

    add-int/lit8 v1, v1, -0x2

    iget v2, p0, Lcom/narvii/widget/NVPagerTabLayout;->indicatorVerticalOffset:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    add-int/lit8 v0, v0, -0x2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    .line 387
    iget v2, p0, Lcom/narvii/widget/NVPagerTabLayout;->tabMode:I

    if-ne v2, v5, :cond_d

    add-float/2addr v1, v6

    add-float/2addr v0, v6

    goto :goto_6

    .line 391
    :cond_d
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v5, 0x40c00000    # 6.0f

    invoke-static {v2, v5}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v2

    add-float/2addr v3, v2

    .line 392
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v2

    sub-float/2addr v4, v2

    .line 394
    :goto_6
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v3, v1, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/narvii/widget/NVPagerTabLayout;->indicatorRect:Landroid/graphics/RectF;

    .line 395
    iget-object v0, p0, Lcom/narvii/widget/NVPagerTabLayout;->indicatorRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/narvii/widget/NVPagerTabLayout;->rectPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_e
    :goto_7
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 464
    check-cast p1, Lcom/narvii/widget/NVPagerTabLayout$SavedState;

    .line 465
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/HorizontalScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 466
    iget p1, p1, Lcom/narvii/widget/NVPagerTabLayout$SavedState;->currentPosition:I

    iput p1, p0, Lcom/narvii/widget/NVPagerTabLayout;->currentPosition:I

    .line 467
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 456
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 457
    new-instance v1, Lcom/narvii/widget/NVPagerTabLayout$SavedState;

    invoke-direct {v1, v0}, Lcom/narvii/widget/NVPagerTabLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 458
    iget v0, p0, Lcom/narvii/widget/NVPagerTabLayout;->currentPosition:I

    iput v0, v1, Lcom/narvii/widget/NVPagerTabLayout$SavedState;->currentPosition:I

    return-object v1
.end method

.method public removePagerListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/narvii/widget/NVPagerTabLayout;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method public removePositionListener(Lcom/narvii/widget/NVPagerTabLayout$PositionChangeListener;)V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/narvii/widget/NVPagerTabLayout;->positionChangeListenerEventDispatcher:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    return-void
.end method

.method public scrollToCurrentPosition()V
    .locals 2

    .line 431
    iget-object v0, p0, Lcom/narvii/widget/NVPagerTabLayout;->pager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 432
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/narvii/widget/NVPagerTabLayout;->scrollToChild(II)V

    :cond_0
    return-void
.end method

.method public setIndicatorAlpha(F)V
    .locals 2

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    const/4 v0, 0x0

    const/16 v1, 0xff

    .line 502
    invoke-static {p1, v0, v1}, Landroid/support/v4/math/MathUtils;->clamp(III)I

    move-result p1

    iput p1, p0, Lcom/narvii/widget/NVPagerTabLayout;->indicatorAlpha:I

    .line 503
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void
.end method

.method public setIndicatorAttachedViewId(I)V
    .locals 0

    .line 193
    iput p1, p0, Lcom/narvii/widget/NVPagerTabLayout;->indicatorArrachedViewId:I

    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 0

    .line 172
    iput p1, p0, Lcom/narvii/widget/NVPagerTabLayout;->indicatorColor:I

    .line 173
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void
.end method

.method public setOnTabItemClickListener(Lcom/narvii/widget/NVPagerTabLayout$OnTabItemClickListener;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/narvii/widget/NVPagerTabLayout;->onTabItemClickListener:Lcom/narvii/widget/NVPagerTabLayout$OnTabItemClickListener;

    return-void
.end method

.method public setScrollDividerEqual(Z)V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/narvii/widget/NVPagerTabLayout;->tabsContainer:Lcom/narvii/widget/TabContainerLayout;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/TabContainerLayout;->setScrollDivideEqual(Z)V

    return-void
.end method

.method public setScrollOffset(I)V
    .locals 0

    .line 177
    iput p1, p0, Lcom/narvii/widget/NVPagerTabLayout;->scrollOffset:I

    .line 178
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void
.end method

.method public setShowSelectedStatus(Z)V
    .locals 0

    .line 226
    iput-boolean p1, p0, Lcom/narvii/widget/NVPagerTabLayout;->showSelectedStatus:Z

    .line 227
    invoke-virtual {p0}, Lcom/narvii/widget/NVPagerTabLayout;->updateTabsSelectStatus()V

    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 1

    .line 264
    iput-object p1, p0, Lcom/narvii/widget/NVPagerTabLayout;->pager:Landroid/support/v4/view/ViewPager;

    .line 266
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/narvii/widget/NVPagerTabLayout;->wrappedPageListener:Lcom/narvii/widget/NVPagerTabLayout$WrappedPageListener;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 272
    invoke-virtual {p0}, Lcom/narvii/widget/NVPagerTabLayout;->notifyDataSetChanged()V

    return-void

    .line 267
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ViewPager does not have adapter instance."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public updateTabsSelectStatus()V
    .locals 5

    .line 321
    iget-object v0, p0, Lcom/narvii/widget/NVPagerTabLayout;->pager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/narvii/widget/NVPagerTabLayout;->tabsContainer:Lcom/narvii/widget/TabContainerLayout;

    if-nez v1, :cond_0

    goto :goto_2

    .line 324
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 325
    :goto_0
    iget-object v3, p0, Lcom/narvii/widget/NVPagerTabLayout;->tabsContainer:Lcom/narvii/widget/TabContainerLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    if-ne v2, v0, :cond_1

    .line 327
    iget-object v3, p0, Lcom/narvii/widget/NVPagerTabLayout;->tabsContainer:Lcom/narvii/widget/TabContainerLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-boolean v4, p0, Lcom/narvii/widget/NVPagerTabLayout;->showSelectedStatus:Z

    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    goto :goto_1

    .line 329
    :cond_1
    iget-object v3, p0, Lcom/narvii/widget/NVPagerTabLayout;->tabsContainer:Lcom/narvii/widget/TabContainerLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setSelected(Z)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method
