.class public Lcom/narvii/util/dialog/PopupBubbleDialog;
.super Lcom/narvii/app/NVDialog;
.source "SourceFile"


# instance fields
.field protected bubble:Lcom/narvii/widget/PopupBubble;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    .line 2
    sget v0, Lcom/narvii/lib/R$style;->CustomDialog:I

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, v0}, Lcom/narvii/app/NVDialog;-><init>(Landroid/content/Context;I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/util/dialog/PopupBubbleDialog;->popupBubbleLayout()I

    .line 9
    move-result p1

    .line 10
    .line 11
    .line 12
    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 13
    .line 14
    sget p1, Lcom/narvii/lib/R$id;->popup_bubble:I

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    check-cast p1, Lcom/narvii/widget/PopupBubble;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/narvii/util/dialog/PopupBubbleDialog;->bubble:Lcom/narvii/widget/PopupBubble;

    .line 23
    .line 24
    sget p1, Lcom/narvii/lib/R$id;->popup_bubble_bg:I

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    new-instance v0, Lcom/narvii/util/dialog/PopupBubbleDialog$1;

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, p0}, Lcom/narvii/util/dialog/PopupBubbleDialog$1;-><init>(Lcom/narvii/util/dialog/PopupBubbleDialog;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    return-void
.end method


# virtual methods
.method public clearView()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/dialog/PopupBubbleDialog;->bubble:Lcom/narvii/widget/PopupBubble;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 6
    return-void
.end method

.method protected popupBubbleLayout()I
    .locals 1

    sget v0, Lcom/narvii/lib/R$layout;->dialog_popup_bubble:I

    return v0
.end method

.method public setContentView(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/narvii/util/dialog/PopupBubbleDialog;->clearView()V

    .line 2
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

    .line 3
    invoke-virtual {p0}, Lcom/narvii/util/dialog/PopupBubbleDialog;->clearView()V

    iget-object v0, p0, Lcom/narvii/util/dialog/PopupBubbleDialog;->bubble:Lcom/narvii/widget/PopupBubble;

    .line 4
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/narvii/util/dialog/PopupBubbleDialog;->clearView()V

    iget-object v0, p0, Lcom/narvii/util/dialog/PopupBubbleDialog;->bubble:Lcom/narvii/widget/PopupBubble;

    .line 6
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setPosition(Landroid/graphics/Rect;)V
    .locals 11

    iget-object v0, p0, Lcom/narvii/util/dialog/PopupBubbleDialog;->bubble:Lcom/narvii/widget/PopupBubble;

    .line 1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 2
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/narvii/util/dialog/PopupBubbleDialog;->bubble:Lcom/narvii/widget/PopupBubble;

    .line 3
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/narvii/util/dialog/PopupBubbleDialog;->bubble:Lcom/narvii/widget/PopupBubble;

    .line 4
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    const/high16 v4, -0x80000000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 5
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 6
    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    iget-object v2, p0, Lcom/narvii/util/dialog/PopupBubbleDialog;->bubble:Lcom/narvii/widget/PopupBubble;

    .line 7
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 8
    iget v3, p1, Landroid/graphics/Rect;->top:I

    div-int/lit8 v4, v2, 0x2

    sub-int/2addr v3, v4

    .line 9
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v4

    .line 10
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    const v6, 0x3ecccccd    # 0.4f

    mul-float/2addr v4, v6

    float-to-int v4, v4

    sub-int v3, v4, v3

    .line 11
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ge v3, v4, :cond_0

    move v3, v6

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    if-eqz v3, :cond_1

    .line 12
    iget v4, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v2

    goto :goto_1

    :cond_1
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    :goto_1
    iget-object v2, p0, Lcom/narvii/util/dialog/PopupBubbleDialog;->bubble:Lcom/narvii/widget/PopupBubble;

    .line 13
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 14
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    div-int/lit8 v8, v2, 0x2

    sub-int/2addr v7, v8

    .line 15
    iget v8, p1, Landroid/graphics/Rect;->left:I

    .line 16
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    if-ge v9, v10, :cond_2

    if-lez v8, :cond_2

    .line 17
    div-int/lit8 v8, v8, 0x4

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 18
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v8

    iget v9, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    .line 19
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    if-le v9, v10, :cond_3

    if-lez v8, :cond_3

    .line 20
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v8, v8, 0x4

    sub-int/2addr v1, v8

    sub-int/2addr v1, v2

    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 21
    :cond_3
    iput v7, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 22
    iput v4, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    iget-object v1, p0, Lcom/narvii/util/dialog/PopupBubbleDialog;->bubble:Lcom/narvii/widget/PopupBubble;

    .line 23
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/narvii/util/dialog/PopupBubbleDialog;->bubble:Lcom/narvii/widget/PopupBubble;

    .line 24
    invoke-virtual {v0, v5}, Lcom/narvii/widget/PopupBubble;->setAutoRtl(Z)V

    iget-object v0, p0, Lcom/narvii/util/dialog/PopupBubbleDialog;->bubble:Lcom/narvii/widget/PopupBubble;

    xor-int/lit8 v1, v3, 0x1

    .line 25
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    sub-int/2addr p1, v7

    invoke-virtual {v0, v1, p1}, Lcom/narvii/widget/PopupBubble;->setIndicator(ZI)V

    return-void
.end method

.method public setPosition(Landroid/view/View;)V
    .locals 6

    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 27
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 28
    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    new-array v2, v2, [I

    .line 29
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationInWindow([I)V

    aget v0, v3, v5

    aget v5, v2, v5

    sub-int/2addr v0, v5

    iput v0, v1, Landroid/graphics/Rect;->left:I

    aget v0, v3, v4

    aget v2, v2, v4

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v0, v1, Landroid/graphics/Rect;->top:I

    aget v2, v3, v5

    iput v2, v1, Landroid/graphics/Rect;->left:I

    aget v2, v3, v4

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->top:I

    :goto_0
    iget v0, v1, Landroid/graphics/Rect;->left:I

    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->right:I

    iget v0, v1, Landroid/graphics/Rect;->top:I

    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 33
    invoke-virtual {p0, v1}, Lcom/narvii/util/dialog/PopupBubbleDialog;->setPosition(Landroid/graphics/Rect;)V

    return-void
.end method
