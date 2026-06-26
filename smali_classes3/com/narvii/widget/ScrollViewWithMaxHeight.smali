.class public Lcom/narvii/widget/ScrollViewWithMaxHeight;
.super Landroid/widget/ScrollView;
.source "ScrollViewWithMaxHeight.java"


# instance fields
.field private interceptParent:Z

.field protected maxHeight:I

.field private verticalDisallowInterceptDelegate:Lcom/narvii/util/VerticalDisallowInterceptDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 18
    iput p1, p0, Lcom/narvii/widget/ScrollViewWithMaxHeight;->maxHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 18
    iput v0, p0, Lcom/narvii/widget/ScrollViewWithMaxHeight;->maxHeight:I

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/narvii/lib/R$styleable;->ScrollViewWithMaxHeight:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 31
    sget p2, Lcom/narvii/lib/R$styleable;->ScrollViewWithMaxHeight_maxHeight:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    .line 32
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    float-to-int p1, p2

    .line 33
    iput p1, p0, Lcom/narvii/widget/ScrollViewWithMaxHeight;->maxHeight:I

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcom/narvii/widget/ScrollViewWithMaxHeight;->interceptParent:Z

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/narvii/widget/ScrollViewWithMaxHeight;->verticalDisallowInterceptDelegate:Lcom/narvii/util/VerticalDisallowInterceptDelegate;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/narvii/util/VerticalDisallowInterceptDelegate;

    invoke-direct {v0, p0}, Lcom/narvii/util/VerticalDisallowInterceptDelegate;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/narvii/widget/ScrollViewWithMaxHeight;->verticalDisallowInterceptDelegate:Lcom/narvii/util/VerticalDisallowInterceptDelegate;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/ScrollViewWithMaxHeight;->verticalDisallowInterceptDelegate:Lcom/narvii/util/VerticalDisallowInterceptDelegate;

    invoke-virtual {v0, p1}, Lcom/narvii/util/VerticalDisallowInterceptDelegate;->dispatchTouchEvent(Landroid/view/MotionEvent;)V

    .line 65
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 50
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/narvii/widget/ScrollViewWithMaxHeight;->maxHeight:I

    if-le v0, v1, :cond_0

    const/high16 p2, -0x80000000

    .line 51
    invoke-static {v1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 53
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onMeasure(II)V

    return-void
.end method

.method public setInterceptParent(Z)V
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/narvii/widget/ScrollViewWithMaxHeight;->interceptParent:Z

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1

    .line 37
    iget v0, p0, Lcom/narvii/widget/ScrollViewWithMaxHeight;->maxHeight:I

    if-ne v0, p1, :cond_0

    return-void

    .line 40
    :cond_0
    iput p1, p0, Lcom/narvii/widget/ScrollViewWithMaxHeight;->maxHeight:I

    .line 41
    invoke-virtual {p0}, Landroid/widget/ScrollView;->requestLayout()V

    return-void
.end method
