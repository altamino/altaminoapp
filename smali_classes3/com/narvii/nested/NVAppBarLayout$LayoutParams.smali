.class public Lcom/narvii/nested/NVAppBarLayout$LayoutParams;
.super Landroid/widget/LinearLayout$LayoutParams;
.source "NVAppBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/nested/NVAppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/nested/NVAppBarLayout$LayoutParams$ScrollFlags;
    }
.end annotation


# static fields
.field public static final COLLAPSIBLE_FLAGS:I = 0xa

.field public static final FLAG_QUICK_RETURN:I = 0x5

.field public static final FLAG_SNAP:I = 0x11

.field public static final SCROLL_FLAG_ENTER_ALWAYS:I = 0x4

.field public static final SCROLL_FLAG_ENTER_ALWAYS_COLLAPSED:I = 0x8

.field public static final SCROLL_FLAG_EXIT_UNTIL_COLLAPSED:I = 0x2

.field public static final SCROLL_FLAG_SCROLL:I = 0x1

.field public static final SCROLL_FLAG_SNAP:I = 0x10


# instance fields
.field mScrollFlags:I

.field mScrollInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 618
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 p1, 0x1

    .line 602
    iput p1, p0, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;->mScrollFlags:I

    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 0

    .line 622
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/4 p1, 0x1

    .line 602
    iput p1, p0, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;->mScrollFlags:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 606
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 602
    iput v0, p0, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;->mScrollFlags:I

    .line 607
    sget-object v1, Lcom/narvii/lib/R$styleable;->NVAppBarLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 608
    sget v1, Lcom/narvii/lib/R$styleable;->NVAppBarLayout_layout_nvscrollFlags:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;->mScrollFlags:I

    .line 609
    sget v0, Lcom/narvii/lib/R$styleable;->NVAppBarLayout_layout_scrollInterpolator:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 610
    sget v0, Lcom/narvii/lib/R$styleable;->NVAppBarLayout_layout_scrollInterpolator:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 611
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    .line 614
    :cond_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 626
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    .line 602
    iput p1, p0, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;->mScrollFlags:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    .line 630
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 p1, 0x1

    .line 602
    iput p1, p0, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;->mScrollFlags:I

    return-void
.end method

.method public constructor <init>(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 0

    .line 636
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    const/4 p1, 0x1

    .line 602
    iput p1, p0, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;->mScrollFlags:I

    return-void
.end method

.method public constructor <init>(Lcom/narvii/nested/NVAppBarLayout$LayoutParams;)V
    .locals 1

    .line 642
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    const/4 v0, 0x1

    .line 602
    iput v0, p0, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;->mScrollFlags:I

    .line 643
    iget v0, p1, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;->mScrollFlags:I

    iput v0, p0, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;->mScrollFlags:I

    .line 644
    iget-object p1, p1, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    iput-object p1, p0, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public getScrollFlags()I
    .locals 1

    .line 668
    iget v0, p0, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;->mScrollFlags:I

    return v0
.end method

.method public getScrollInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .line 691
    iget-object v0, p0, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method isCollapsible()Z
    .locals 3

    .line 698
    iget v0, p0, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;->mScrollFlags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    and-int/lit8 v0, v0, 0xa

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public setScrollFlags(I)V
    .locals 0

    .line 657
    iput p1, p0, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;->mScrollFlags:I

    return-void
.end method

.method public setScrollInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 680
    iput-object p1, p0, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method
