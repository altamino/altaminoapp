.class public Lcom/narvii/widget/ScrollViewWithMaxHeight;
.super Landroid/widget/ScrollView;
.source "SourceFile"


# instance fields
.field private interceptParent:Z

.field protected maxHeight:I

.field private verticalDisallowInterceptDelegate:Lcom/narvii/util/VerticalDisallowInterceptDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/narvii/widget/ScrollViewWithMaxHeight;->maxHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/narvii/widget/ScrollViewWithMaxHeight;->maxHeight:I

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/narvii/lib/R$styleable;->ScrollViewWithMaxHeight:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 4
    sget p2, Lcom/narvii/lib/R$styleable;->ScrollViewWithMaxHeight_maxHeight:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    .line 5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    float-to-int p1, p2

    iput p1, p0, Lcom/narvii/widget/ScrollViewWithMaxHeight;->maxHeight:I

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/widget/ScrollViewWithMaxHeight;->interceptParent:Z

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/widget/ScrollViewWithMaxHeight;->verticalDisallowInterceptDelegate:Lcom/narvii/util/VerticalDisallowInterceptDelegate;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Lcom/narvii/util/VerticalDisallowInterceptDelegate;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/narvii/util/VerticalDisallowInterceptDelegate;-><init>(Landroid/view/View;)V

    .line 14
    .line 15
    iput-object v0, p0, Lcom/narvii/widget/ScrollViewWithMaxHeight;->verticalDisallowInterceptDelegate:Lcom/narvii/util/VerticalDisallowInterceptDelegate;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/ScrollViewWithMaxHeight;->verticalDisallowInterceptDelegate:Lcom/narvii/util/VerticalDisallowInterceptDelegate;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/narvii/util/VerticalDisallowInterceptDelegate;->dispatchTouchEvent(Landroid/view/MotionEvent;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 24
    move-result p1

    .line 25
    return p1
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget v1, p0, Lcom/narvii/widget/ScrollViewWithMaxHeight;->maxHeight:I

    .line 7
    .line 8
    if-le v0, v1, :cond_0

    .line 9
    .line 10
    const/high16 p2, -0x80000000

    .line 11
    .line 12
    .line 13
    invoke-static {v1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 14
    move-result p2

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onMeasure(II)V

    .line 18
    return-void
.end method

.method public setInterceptParent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/widget/ScrollViewWithMaxHeight;->interceptParent:Z

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/ScrollViewWithMaxHeight;->maxHeight:I

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iput p1, p0, Lcom/narvii/widget/ScrollViewWithMaxHeight;->maxHeight:I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 11
    return-void
.end method
