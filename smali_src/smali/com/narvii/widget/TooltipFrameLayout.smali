.class public Lcom/narvii/widget/TooltipFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


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
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    new-instance p1, Lcom/narvii/widget/TooltipFrameLayout$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/narvii/widget/TooltipFrameLayout$1;-><init>(Lcom/narvii/widget/TooltipFrameLayout;)V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/widget/TooltipFrameLayout;->runnable:Ljava/lang/Runnable;

    .line 11
    .line 12
    new-instance p1, Lcom/narvii/widget/TooltipFrameLayout$TouchListener;

    .line 13
    const/4 p2, 0x0

    .line 14
    .line 15
    .line 16
    invoke-direct {p1, p0, p2}, Lcom/narvii/widget/TooltipFrameLayout$TouchListener;-><init>(Lcom/narvii/widget/TooltipFrameLayout;Lcom/narvii/widget/m;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 20
    const/4 p1, 0x0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 27
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v0, "tooltip"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/widget/TooltipFrameLayout;->toolTip:Landroid/view/View;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 18
    move-result v0

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/widget/TooltipFrameLayout;->toolTip:Landroid/view/View;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 29
    .line 30
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 31
    .line 32
    if-gez v1, :cond_1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 36
    move-result v1

    .line 37
    .line 38
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 39
    .line 40
    .line 41
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 42
    move-result v2

    .line 43
    .line 44
    if-eq v1, v2, :cond_0

    .line 45
    .line 46
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 47
    .line 48
    .line 49
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 50
    move-result v0

    .line 51
    const/4 v1, 0x0

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v1, v0, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 55
    .line 56
    .line 57
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 58
    :cond_0
    return-void

    .line 59
    .line 60
    .line 61
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 62
    move-result p1

    .line 63
    .line 64
    if-eqz p1, :cond_2

    .line 65
    .line 66
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 67
    .line 68
    iget-object p2, p0, Lcom/narvii/widget/TooltipFrameLayout;->runnable:Ljava/lang/Runnable;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 72
    .line 73
    iget-object p2, p0, Lcom/narvii/widget/TooltipFrameLayout;->runnable:Ljava/lang/Runnable;

    .line 74
    .line 75
    const-wide/16 v0, 0xc8

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 79
    :cond_2
    return-void
.end method
