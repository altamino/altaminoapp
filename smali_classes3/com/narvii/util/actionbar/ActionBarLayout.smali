.class public Lcom/narvii/util/actionbar/ActionBarLayout;
.super Landroid/widget/RelativeLayout;
.source "ActionBarLayout.java"


# instance fields
.field gestureDetector:Landroid/view/GestureDetector;

.field loc:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 18
    iput-object p1, p0, Lcom/narvii/util/actionbar/ActionBarLayout;->loc:[I

    return-void
.end method

.method private getScreenWidth()I
    .locals 2

    .line 67
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 69
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    return v0
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 2

    .line 27
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 29
    sget p1, Lcom/narvii/lib/R$id;->actionbar_left:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p3

    sub-int/2addr p2, p3

    .line 31
    :goto_0
    sget p3, Lcom/narvii/lib/R$id;->actionbar_title:I

    invoke-virtual {p0, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_6

    .line 33
    invoke-direct {p0}, Lcom/narvii/util/actionbar/ActionBarLayout;->getScreenWidth()I

    move-result p4

    .line 35
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result p5

    const/4 v0, 0x2

    .line 36
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eq v1, p1, :cond_1

    if-eq v1, p3, :cond_1

    .line 38
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result p1

    sub-int/2addr p5, p1

    .line 39
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 40
    instance-of v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_1

    .line 41
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, p1

    sub-int/2addr p5, v1

    .line 44
    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p1

    sub-int/2addr p4, p1

    .line 45
    div-int/2addr p4, v0

    add-int/2addr p1, p4

    if-le p1, p5, :cond_2

    sub-int/2addr p1, p5

    sub-int/2addr p4, p1

    move p1, p5

    :cond_2
    if-ge p4, p2, :cond_3

    move p1, p5

    goto :goto_1

    :cond_3
    move p2, p4

    .line 55
    :goto_1
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result p4

    if-ne p2, p4, :cond_4

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result p4

    if-eq p1, p4, :cond_6

    :cond_4
    sub-int p4, p1, p2

    const/high16 p5, 0x40000000    # 2.0f

    .line 56
    invoke-static {p4, p5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p4

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-static {v0, p5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p5

    invoke-virtual {p3, p4, p5}, Landroid/view/View;->measure(II)V

    .line 57
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result p4

    if-eqz p4, :cond_5

    .line 58
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result p4

    sub-int/2addr p4, p1

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result p5

    sub-int/2addr p5, p2

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result p2

    invoke-virtual {p3, p4, p1, p5, p2}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    .line 60
    :cond_5
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result p4

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result p5

    invoke-virtual {p3, p2, p4, p1, p5}, Landroid/view/View;->layout(IIII)V

    :cond_6
    :goto_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/narvii/util/actionbar/ActionBarLayout;->gestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1

    .line 85
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setOnGestureListener(Landroid/view/GestureDetector$OnGestureListener;)V
    .locals 2

    .line 76
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/narvii/util/actionbar/ActionBarLayout;->gestureDetector:Landroid/view/GestureDetector;

    return-void
.end method
