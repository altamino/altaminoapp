.class public Lcom/narvii/util/VerticalDisallowInterceptDelegate;
.super Ljava/lang/Object;
.source "VerticalDisallowInterceptDelegate.java"


# instance fields
.field private confirmed:Z

.field private initialMotionX:F

.field private initialMotionY:F

.field private touchSlop:F

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/narvii/util/VerticalDisallowInterceptDelegate;->view:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/narvii/util/VerticalDisallowInterceptDelegate;->touchSlop:F

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 5

    .line 24
    iget-object v0, p0, Lcom/narvii/util/VerticalDisallowInterceptDelegate;->view:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 27
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_4

    goto :goto_0

    .line 38
    :cond_1
    iget-boolean v0, p0, Lcom/narvii/util/VerticalDisallowInterceptDelegate;->confirmed:Z

    if-nez v0, :cond_6

    .line 39
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/narvii/util/VerticalDisallowInterceptDelegate;->initialMotionX:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 40
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v3, p0, Lcom/narvii/util/VerticalDisallowInterceptDelegate;->initialMotionY:F

    sub-float/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 41
    iget v3, p0, Lcom/narvii/util/VerticalDisallowInterceptDelegate;->touchSlop:F

    cmpl-float v4, v0, v3

    if-gez v4, :cond_2

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_6

    .line 42
    :cond_2
    iput-boolean v2, p0, Lcom/narvii/util/VerticalDisallowInterceptDelegate;->confirmed:Z

    .line 43
    iget-object v3, p0, Lcom/narvii/util/VerticalDisallowInterceptDelegate;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-interface {v3, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 49
    :cond_4
    iget-object p1, p0, Lcom/narvii/util/VerticalDisallowInterceptDelegate;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 50
    iget-object p1, p0, Lcom/narvii/util/VerticalDisallowInterceptDelegate;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 30
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/narvii/util/VerticalDisallowInterceptDelegate;->initialMotionX:F

    .line 31
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/narvii/util/VerticalDisallowInterceptDelegate;->initialMotionY:F

    .line 32
    iput-boolean v1, p0, Lcom/narvii/util/VerticalDisallowInterceptDelegate;->confirmed:Z

    .line 33
    iget-object p1, p0, Lcom/narvii/util/VerticalDisallowInterceptDelegate;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 34
    iget-object p1, p0, Lcom/narvii/util/VerticalDisallowInterceptDelegate;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_6
    :goto_0
    return-void
.end method
