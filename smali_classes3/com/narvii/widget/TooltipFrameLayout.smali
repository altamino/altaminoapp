.class public Lcom/narvii/widget/TooltipFrameLayout;
.super Landroid/widget/FrameLayout;
.source "TooltipFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/TooltipFrameLayout$TouchListener;
    }
.end annotation


# instance fields
.field runnable:Ljava/lang/Runnable;

.field toolTip:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    new-instance p1, Lcom/narvii/widget/TooltipFrameLayout$1;

    invoke-direct {p1, p0}, Lcom/narvii/widget/TooltipFrameLayout$1;-><init>(Lcom/narvii/widget/TooltipFrameLayout;)V

    iput-object p1, p0, Lcom/narvii/widget/TooltipFrameLayout;->runnable:Ljava/lang/Runnable;

    .line 31
    new-instance p1, Lcom/narvii/widget/TooltipFrameLayout$TouchListener;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/narvii/widget/TooltipFrameLayout$TouchListener;-><init>(Lcom/narvii/widget/TooltipFrameLayout;Lcom/narvii/widget/TooltipFrameLayout$1;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 p1, 0x0

    .line 32
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 33
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3

    .line 38
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    const-string v0, "tooltip"

    .line 39
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/TooltipFrameLayout;->toolTip:Landroid/view/View;

    .line 40
    iget-object v0, p0, Lcom/narvii/widget/TooltipFrameLayout;->toolTip:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/narvii/widget/TooltipFrameLayout;->toolTip:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 42
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-gez v1, :cond_1

    .line 43
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 44
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v1, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 45
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :cond_0
    return-void

    .line 50
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p1

    if-eqz p1, :cond_2

    .line 51
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/narvii/widget/TooltipFrameLayout;->runnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 52
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/narvii/widget/TooltipFrameLayout;->runnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method
