.class public Lcom/narvii/util/dialog/PopupBubbleDialog;
.super Lcom/narvii/app/NVDialog;
.source "PopupBubbleDialog.java"


# instance fields
.field protected bubble:Lcom/narvii/widget/PopupBubble;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 21
    sget v0, Lcom/narvii/lib/R$style;->CustomDialog:I

    invoke-direct {p0, p1, v0}, Lcom/narvii/app/NVDialog;-><init>(Landroid/content/Context;I)V

    .line 22
    invoke-virtual {p0}, Lcom/narvii/util/dialog/PopupBubbleDialog;->popupBubbleLayout()I

    move-result p1

    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 23
    sget p1, Lcom/narvii/lib/R$id;->popup_bubble:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/PopupBubble;

    iput-object p1, p0, Lcom/narvii/util/dialog/PopupBubbleDialog;->bubble:Lcom/narvii/widget/PopupBubble;

    .line 24
    sget p1, Lcom/narvii/lib/R$id;->popup_bubble_bg:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/narvii/util/dialog/PopupBubbleDialog$1;

    invoke-direct {v0, p0}, Lcom/narvii/util/dialog/PopupBubbleDialog$1;-><init>(Lcom/narvii/util/dialog/PopupBubbleDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public clearView()V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/narvii/util/dialog/PopupBubbleDialog;->bubble:Lcom/narvii/widget/PopupBubble;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    return-void
.end method

.method protected popupBubbleLayout()I
    .locals 1

    .line 43
    sget v0, Lcom/narvii/lib/R$layout;->dialog_popup_bubble:I

    return v0
.end method

.method public setContentView(I)V
    .locals 3

    .line 38
    invoke-virtual {p0}, Lcom/narvii/util/dialog/PopupBubbleDialog;->clearView()V

    .line 39
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/util/dialog/PopupBubbleDialog;->bubble:Lcom/narvii/widget/PopupBubble;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .line 48
    invoke-virtual {p0}, Lcom/narvii/util/dialog/PopupBubbleDialog;->clearView()V

    .line 49
    iget-object v0, p0, Lcom/narvii/util/dialog/PopupBubbleDialog;->bubble:Lcom/narvii/widget/PopupBubble;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 54
    invoke-virtual {p0}, Lcom/narvii/util/dialog/PopupBubbleDialog;->clearView()V

    .line 55
    iget-object v0, p0, Lcom/narvii/util/dialog/PopupBubbleDialog;->bubble:Lcom/narvii/widget/PopupBubble;

    invoke-virtual {v0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setPosition(Landroid/graphics/Rect;)V
    .locals 11

    .line 59
    iget-object v0, p0, Lcom/narvii/util/dialog/PopupBubbleDialog;->bubble:Lcom/narvii/widget/PopupBubble;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 61
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 62
    iget-object v2, p0, Lcom/narvii/util/dialog/PopupBubbleDialog;->bubble:Lcom/narvii/widget/PopupBubble;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 64
    iget-object v2, p0, Lcom/narvii/util/dialog/PopupBubbleDialog;->bubble:Lcom/narvii/widget/PopupBubble;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    const/high16 v4, -0x80000000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 65
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 64
    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->measure(II)V

    .line 67
    iget-object v2, p0, Lcom/narvii/util/dialog/PopupBubbleDialog;->bubble:Lcom/narvii/widget/PopupBubble;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    .line 68
    iget v3, p1, Landroid/graphics/Rect;->top:I

    div-int/lit8 v4, v2, 0x2

    sub-int/2addr v3, v4

    .line 69
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v4

    .line 70
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    const v6, 0x3ecccccd    # 0.4f

    mul-float v4, v4, v6

    float-to-int v4, v4

    sub-int v3, v4, v3

    .line 71
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ge v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 72
    iget v4, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v2

    goto :goto_1

    :cond_1
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 74
    :goto_1
    iget-object v2, p0, Lcom/narvii/util/dialog/PopupBubbleDialog;->bubble:Lcom/narvii/widget/PopupBubble;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    .line 75
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    div-int/lit8 v8, v2, 0x2

    sub-int/2addr v7, v8

    .line 76
    iget v8, p1, Landroid/graphics/Rect;->left:I

    .line 77
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    if-ge v9, v10, :cond_2

    if-lez v8, :cond_2

    .line 78
    div-int/lit8 v8, v8, 0x4

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 80
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v8

    iget v9, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    .line 81
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    if-le v9, v10, :cond_3

    if-lez v8, :cond_3

    .line 82
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v8, v8, 0x4

    sub-int/2addr v1, v8

    sub-int/2addr v1, v2

    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 85
    :cond_3
    iput v7, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 86
    iput v4, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 87
    iget-object v1, p0, Lcom/narvii/util/dialog/PopupBubbleDialog;->bubble:Lcom/narvii/widget/PopupBubble;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    iget-object v0, p0, Lcom/narvii/util/dialog/PopupBubbleDialog;->bubble:Lcom/narvii/widget/PopupBubble;

    invoke-virtual {v0, v6}, Lcom/narvii/widget/PopupBubble;->setAutoRtl(Z)V

    .line 89
    iget-object v0, p0, Lcom/narvii/util/dialog/PopupBubbleDialog;->bubble:Lcom/narvii/widget/PopupBubble;

    xor-int/lit8 v1, v3, 0x1

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    sub-int/2addr p1, v7

    invoke-virtual {v0, v1, p1}, Lcom/narvii/widget/PopupBubble;->setIndicator(ZI)V

    return-void
.end method

.method public setPosition(Landroid/view/View;)V
    .locals 6

    .line 93
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 94
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 96
    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    new-array v2, v2, [I

    .line 99
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 100
    aget v0, v3, v5

    aget v5, v2, v5

    sub-int/2addr v0, v5

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 101
    aget v0, v3, v4

    aget v2, v2, v4

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 104
    iget v0, v1, Landroid/graphics/Rect;->top:I

    .line 105
    aget v2, v3, v5

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 106
    aget v2, v3, v4

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 108
    :goto_0
    iget v0, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 109
    iget v0, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 110
    invoke-virtual {p0, v1}, Lcom/narvii/util/dialog/PopupBubbleDialog;->setPosition(Landroid/graphics/Rect;)V

    return-void
.end method
