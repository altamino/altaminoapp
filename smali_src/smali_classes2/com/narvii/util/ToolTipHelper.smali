.class public Lcom/narvii/util/ToolTipHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/util/ToolTipHelper$CustomTooltipBubble;
    }
.end annotation


# instance fields
.field public bubble:Lcom/narvii/widget/PopupBubble;

.field private currentTooltipView:Landroid/view/View;

.field private handler:Landroid/os/Handler;

.field private hideToolTipRunnable:Ljava/lang/Runnable;

.field private translateAnimation:Landroid/view/animation/TranslateAnimation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/util/e;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/util/e;-><init>(Lcom/narvii/util/ToolTipHelper;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/util/ToolTipHelper;->hideToolTipRunnable:Ljava/lang/Runnable;

    .line 11
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/util/ToolTipHelper;)Landroid/view/animation/TranslateAnimation;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/util/ToolTipHelper;->translateAnimation:Landroid/view/animation/TranslateAnimation;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/narvii/util/ToolTipHelper;Landroid/view/animation/TranslateAnimation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/util/ToolTipHelper;->translateAnimation:Landroid/view/animation/TranslateAnimation;

    return-void
.end method

.method public static getTranslateAnimation(Landroid/content/Context;Z)Landroid/view/animation/TranslateAnimation;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    sget v0, Lcom/narvii/lib/R$dimen;->tooltip_offset_v:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 10
    move-result p0

    .line 11
    .line 12
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    :goto_0
    int-to-float p0, p0

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    neg-int p0, p0

    .line 18
    goto :goto_0

    .line 19
    :goto_1
    const/4 p1, 0x0

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p1, p1, p1, p0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 23
    const/4 p0, -0x1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 27
    const/4 p0, 0x2

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 31
    .line 32
    const-wide/16 p0, 0x3e8

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p0, p1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 36
    return-object v0
.end method

.method public static isToolTipEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public hideToolTip()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/ToolTipHelper;->bubble:Lcom/narvii/widget/PopupBubble;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    return-void

    .line 13
    .line 14
    :cond_1
    iget-object v0, p0, Lcom/narvii/util/ToolTipHelper;->bubble:Lcom/narvii/widget/PopupBubble;

    .line 15
    .line 16
    const/16 v1, 0x8

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/util/ToolTipHelper;->bubble:Lcom/narvii/widget/PopupBubble;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/util/ToolTipHelper;->bubble:Lcom/narvii/widget/PopupBubble;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    sget v1, Lcom/narvii/lib/R$anim;->fade_out_fast:I

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    iget-object v1, p0, Lcom/narvii/util/ToolTipHelper;->bubble:Lcom/narvii/widget/PopupBubble;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 42
    return-void
.end method

.method public isTooltipShowing()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/ToolTipHelper;->bubble:Lcom/narvii/widget/PopupBubble;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public resumeTooltipAnimation()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/ToolTipHelper;->bubble:Lcom/narvii/widget/PopupBubble;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/util/ToolTipHelper;->bubble:Lcom/narvii/widget/PopupBubble;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/util/ToolTipHelper;->translateAnimation:Landroid/view/animation/TranslateAnimation;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v1, p0, Lcom/narvii/util/ToolTipHelper;->bubble:Lcom/narvii/widget/PopupBubble;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 28
    :cond_0
    return-void
.end method

.method public showToolTip(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    .line 87
    invoke-static {}, Lcom/narvii/util/Tooltip;->builder()Lcom/narvii/util/Tooltip$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/narvii/util/Tooltip$Builder;->anchorView(Landroid/view/View;)Lcom/narvii/util/Tooltip$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/narvii/util/Tooltip$Builder;->rootView(Landroid/view/View;)Lcom/narvii/util/Tooltip$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/Tooltip$Builder;->autoHide()Lcom/narvii/util/Tooltip$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/narvii/util/Tooltip$Builder;->textId(I)Lcom/narvii/util/Tooltip$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/Tooltip$Builder;->build()Lcom/narvii/util/Tooltip;

    move-result-object p1

    .line 88
    invoke-virtual {p0, p1}, Lcom/narvii/util/ToolTipHelper;->showToolTip(Lcom/narvii/util/Tooltip;)V

    return-void
.end method

.method public showToolTip(Landroid/view/View;Landroid/view/View;IZ)V
    .locals 1

    .line 85
    invoke-static {}, Lcom/narvii/util/Tooltip;->builder()Lcom/narvii/util/Tooltip$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/narvii/util/Tooltip$Builder;->anchorView(Landroid/view/View;)Lcom/narvii/util/Tooltip$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/narvii/util/Tooltip$Builder;->rootView(Landroid/view/View;)Lcom/narvii/util/Tooltip$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/narvii/util/Tooltip$Builder;->textId(I)Lcom/narvii/util/Tooltip$Builder;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/narvii/util/Tooltip$Builder;->indicatorUp(Z)Lcom/narvii/util/Tooltip$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/Tooltip$Builder;->autoHide()Lcom/narvii/util/Tooltip$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/Tooltip$Builder;->build()Lcom/narvii/util/Tooltip;

    move-result-object p1

    .line 86
    invoke-virtual {p0, p1}, Lcom/narvii/util/ToolTipHelper;->showToolTip(Lcom/narvii/util/Tooltip;)V

    return-void
.end method

.method public showToolTip(Lcom/narvii/util/Tooltip;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-static {}, Lcom/narvii/util/ToolTipHelper;->isToolTipEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    if-nez v1, :cond_1

    return-void

    .line 2
    :cond_1
    iget-object v2, v1, Lcom/narvii/util/Tooltip;->anchorView:Landroid/view/View;

    .line 3
    iget-object v3, v1, Lcom/narvii/util/Tooltip;->rootView:Landroid/view/View;

    .line 4
    iget-object v4, v1, Lcom/narvii/util/Tooltip;->indicatorUp:Ljava/lang/Boolean;

    if-nez v2, :cond_2

    return-void

    :cond_2
    if-nez v3, :cond_3

    .line 5
    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 6
    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    const v5, 0x1020002

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    :cond_3
    if-nez v3, :cond_4

    return-void

    .line 7
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_5

    return-void

    .line 8
    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    if-eqz v5, :cond_20

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v5

    if-nez v5, :cond_6

    goto/16 :goto_9

    :cond_6
    iget-object v5, v0, Lcom/narvii/util/ToolTipHelper;->bubble:Lcom/narvii/widget/PopupBubble;

    if-eqz v5, :cond_9

    .line 9
    iget-boolean v6, v1, Lcom/narvii/util/Tooltip;->showOnlyOnce:Z

    if-eqz v6, :cond_7

    return-void

    :cond_7
    const/16 v6, 0x8

    .line 10
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, v0, Lcom/narvii/util/ToolTipHelper;->bubble:Lcom/narvii/widget/PopupBubble;

    .line 11
    invoke-virtual {v5}, Landroid/view/View;->clearAnimation()V

    iget-object v5, v0, Lcom/narvii/util/ToolTipHelper;->handler:Landroid/os/Handler;

    if-eqz v5, :cond_8

    iget-object v6, v0, Lcom/narvii/util/ToolTipHelper;->hideToolTipRunnable:Ljava/lang/Runnable;

    .line 12
    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_8
    iget-object v5, v0, Lcom/narvii/util/ToolTipHelper;->currentTooltipView:Landroid/view/View;

    if-eqz v5, :cond_9

    .line 13
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_9

    iget-object v5, v0, Lcom/narvii/util/ToolTipHelper;->currentTooltipView:Landroid/view/View;

    .line 14
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iget-object v6, v0, Lcom/narvii/util/ToolTipHelper;->currentTooltipView:Landroid/view/View;

    .line 15
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_9
    const/4 v5, 0x2

    new-array v6, v5, [I

    .line 16
    invoke-virtual {v2, v6}, Landroid/view/View;->getLocationInWindow([I)V

    new-array v7, v5, [I

    .line 17
    invoke-virtual {v3, v7}, Landroid/view/View;->getLocationInWindow([I)V

    .line 18
    instance-of v8, v3, Landroid/view/ViewGroup;

    if-nez v8, :cond_a

    return-void

    .line 19
    :cond_a
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    const/4 v9, 0x0

    aget v10, v6, v9

    aget v11, v7, v9

    .line 20
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/narvii/lib/R$dimen;->tooltip_margin_h:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    add-int/2addr v11, v12

    sub-int/2addr v10, v11

    iput v10, v8, Landroid/graphics/Rect;->left:I

    const/4 v11, 0x1

    aget v6, v6, v11

    aget v7, v7, v11

    sub-int/2addr v6, v7

    iput v6, v8, Landroid/graphics/Rect;->top:I

    .line 21
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v10, v6

    iput v10, v8, Landroid/graphics/Rect;->right:I

    iget v6, v8, Landroid/graphics/Rect;->top:I

    .line 22
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, v8, Landroid/graphics/Rect;->bottom:I

    .line 23
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    iget v7, v1, Lcom/narvii/util/Tooltip;->customTooltipBubbleLayout:I

    if-nez v7, :cond_b

    sget v7, Lcom/narvii/lib/R$layout;->tooltip_layout:I

    :cond_b
    move-object v10, v3

    check-cast v10, Landroid/view/ViewGroup;

    invoke-virtual {v6, v7, v10, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    iput-object v6, v0, Lcom/narvii/util/ToolTipHelper;->currentTooltipView:Landroid/view/View;

    .line 24
    invoke-virtual {v10, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 25
    iget-object v7, v1, Lcom/narvii/util/Tooltip;->onCustomViewListener:Lcom/narvii/util/Callback;

    const/4 v10, -0x1

    const/4 v12, 0x0

    if-nez v7, :cond_10

    sget v7, Lcom/narvii/lib/R$id;->hint_text:I

    .line 26
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 27
    iget v14, v1, Lcom/narvii/util/Tooltip;->textId:I

    if-eqz v14, :cond_c

    .line 28
    invoke-virtual {v7, v14}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 29
    :cond_c
    iget-object v14, v1, Lcom/narvii/util/Tooltip;->text:Ljava/lang/String;

    invoke-virtual {v7, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    :goto_0
    iget v14, v1, Lcom/narvii/util/Tooltip;->textSize:F

    cmpl-float v15, v14, v12

    if-lez v15, :cond_d

    .line 31
    invoke-virtual {v7, v9, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 32
    :cond_d
    iget v14, v1, Lcom/narvii/util/Tooltip;->textColor:I

    if-eq v14, v10, :cond_e

    .line 33
    invoke-virtual {v7, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 34
    :cond_e
    iget-boolean v14, v1, Lcom/narvii/util/Tooltip;->isRightAlign:Z

    if-eqz v14, :cond_f

    const v14, 0x800005

    goto :goto_1

    :cond_f
    const v14, 0x800003

    :goto_1
    invoke-virtual {v7, v14}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_2

    .line 35
    :cond_10
    invoke-interface {v7, v6}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 36
    :goto_2
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    mul-int/2addr v13, v5

    sub-int/2addr v7, v13

    .line 37
    iget-object v13, v1, Lcom/narvii/util/Tooltip;->maxWidth:Ljava/lang/Integer;

    if-eqz v13, :cond_11

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13, v7}, Ljava/lang/Math;->min(II)I

    move-result v13

    goto :goto_3

    :cond_11
    move v13, v7

    .line 38
    :goto_3
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sget v14, Lcom/narvii/lib/R$id;->popup_bubble:I

    .line 39
    invoke-virtual {v6, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/narvii/widget/PopupBubble;

    iput-object v6, v0, Lcom/narvii/util/ToolTipHelper;->bubble:Lcom/narvii/widget/PopupBubble;

    .line 40
    iget v14, v1, Lcom/narvii/util/Tooltip;->finger:I

    if-eq v14, v11, :cond_13

    if-eq v14, v5, :cond_12

    const/4 v5, 0x0

    goto :goto_4

    :cond_12
    sget v5, Lcom/narvii/lib/R$id;->finger_end:I

    .line 41
    invoke-virtual {v6, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    goto :goto_4

    :cond_13
    sget v5, Lcom/narvii/lib/R$id;->finger_start:I

    .line 42
    invoke-virtual {v6, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    :goto_4
    if-eqz v5, :cond_14

    .line 43
    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_14
    iget-object v6, v0, Lcom/narvii/util/ToolTipHelper;->bubble:Lcom/narvii/widget/PopupBubble;

    .line 44
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v14, v0, Lcom/narvii/util/ToolTipHelper;->bubble:Lcom/narvii/widget/PopupBubble;

    const/high16 v15, -0x80000000

    .line 45
    invoke-static {v13, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 46
    invoke-static {v3, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 47
    invoke-virtual {v14, v13, v15}, Landroid/view/View;->measure(II)V

    iget-object v13, v0, Lcom/narvii/util/ToolTipHelper;->bubble:Lcom/narvii/widget/PopupBubble;

    .line 48
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    iget-object v14, v0, Lcom/narvii/util/ToolTipHelper;->bubble:Lcom/narvii/widget/PopupBubble;

    .line 49
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    iget v15, v8, Landroid/graphics/Rect;->top:I

    .line 50
    div-int/lit8 v16, v13, 0x2

    sub-int v15, v15, v16

    iget v11, v8, Landroid/graphics/Rect;->bottom:I

    add-int v11, v11, v16

    int-to-float v3, v3

    const v16, 0x3ecccccd    # 0.4f

    mul-float v3, v3, v16

    float-to-int v3, v3

    sub-int v15, v3, v15

    .line 51
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v15

    sub-int/2addr v3, v11

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v15, v3, :cond_15

    const/4 v11, 0x1

    goto :goto_5

    :cond_15
    move v11, v9

    :goto_5
    if-eqz v4, :cond_16

    .line 52
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    :cond_16
    if-eqz v5, :cond_18

    if-nez v11, :cond_17

    sget v3, Lcom/narvii/lib/R$drawable;->ic_finger_up:I

    goto :goto_6

    :cond_17
    sget v3, Lcom/narvii/lib/R$drawable;->ic_finger_down:I

    .line 53
    :goto_6
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_18
    iget-object v3, v0, Lcom/narvii/util/ToolTipHelper;->bubble:Lcom/narvii/widget/PopupBubble;

    .line 54
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/narvii/lib/R$dimen;->tooltip_offset_v:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    if-eqz v11, :cond_19

    iget v4, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v13

    sub-int/2addr v4, v3

    goto :goto_7

    :cond_19
    iget v4, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v3

    :goto_7
    iget-object v3, v0, Lcom/narvii/util/ToolTipHelper;->bubble:Lcom/narvii/widget/PopupBubble;

    .line 55
    instance-of v5, v3, Lcom/narvii/util/ToolTipHelper$CustomTooltipBubble;

    if-eqz v5, :cond_1a

    .line 56
    check-cast v3, Lcom/narvii/util/ToolTipHelper$CustomTooltipBubble;

    invoke-interface {v3, v8, v7}, Lcom/narvii/util/ToolTipHelper$CustomTooltipBubble;->getLayoutMarginLeft(Landroid/graphics/Rect;I)I

    move-result v3

    goto :goto_8

    .line 57
    :cond_1a
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    div-int/lit8 v5, v14, 0x2

    sub-int/2addr v3, v5

    .line 58
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    div-int/lit8 v13, v7, 0x2

    if-ge v5, v13, :cond_1b

    .line 59
    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 60
    :cond_1b
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    if-le v5, v13, :cond_1c

    sub-int v5, v7, v14

    .line 61
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 62
    :cond_1c
    :goto_8
    iget v5, v1, Lcom/narvii/util/Tooltip;->backgroundColor:I

    if-eq v5, v10, :cond_1d

    iget-object v10, v0, Lcom/narvii/util/ToolTipHelper;->bubble:Lcom/narvii/widget/PopupBubble;

    .line 63
    invoke-virtual {v10, v5}, Lcom/narvii/widget/PopupBubble;->setBubbleBackgroundColor(I)V

    .line 64
    :cond_1d
    iput v3, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 65
    iput v4, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr v7, v3

    sub-int/2addr v7, v14

    .line 66
    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object v4, v0, Lcom/narvii/util/ToolTipHelper;->bubble:Lcom/narvii/widget/PopupBubble;

    .line 67
    invoke-virtual {v4, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, v0, Lcom/narvii/util/ToolTipHelper;->bubble:Lcom/narvii/widget/PopupBubble;

    .line 68
    invoke-virtual {v4, v9}, Lcom/narvii/widget/PopupBubble;->setAutoRtl(Z)V

    .line 69
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    sub-int/2addr v4, v3

    iget-object v3, v0, Lcom/narvii/util/ToolTipHelper;->bubble:Lcom/narvii/widget/PopupBubble;

    xor-int/lit8 v5, v11, 0x1

    .line 70
    invoke-virtual {v3, v5, v4}, Lcom/narvii/widget/PopupBubble;->setIndicator(ZI)V

    iget-object v3, v0, Lcom/narvii/util/ToolTipHelper;->bubble:Lcom/narvii/widget/PopupBubble;

    .line 71
    new-instance v5, Lcom/narvii/util/ToolTipHelper$1;

    invoke-direct {v5, v0, v1, v2}, Lcom/narvii/util/ToolTipHelper$1;-><init>(Lcom/narvii/util/ToolTipHelper;Lcom/narvii/util/Tooltip;Landroid/view/View;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v0, Lcom/narvii/util/ToolTipHelper;->bubble:Lcom/narvii/widget/PopupBubble;

    .line 72
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 73
    iget-boolean v2, v1, Lcom/narvii/util/Tooltip;->isVibrate:Z

    if-eqz v2, :cond_1e

    :try_start_0
    iget-object v2, v0, Lcom/narvii/util/ToolTipHelper;->bubble:Lcom/narvii/widget/PopupBubble;

    .line 74
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    const-wide/16 v5, 0x12c

    .line 75
    invoke-virtual {v2, v5, v6}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :catch_0
    :cond_1e
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    int-to-float v3, v4

    const/16 v20, 0x1

    if-eqz v11, :cond_1f

    const/high16 v12, 0x3f800000    # 1.0f

    :cond_1f
    move/from16 v21, v12

    move-object v13, v2

    move/from16 v19, v3

    invoke-direct/range {v13 .. v21}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v3, 0x190

    .line 77
    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 78
    new-instance v3, Landroid/view/animation/OvershootInterpolator;

    const v4, 0x3f99999a    # 1.2f

    invoke-direct {v3, v4}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    .line 79
    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 80
    new-instance v3, Lcom/narvii/util/ToolTipHelper$2;

    invoke-direct {v3, v0, v11}, Lcom/narvii/util/ToolTipHelper$2;-><init>(Lcom/narvii/util/ToolTipHelper;Z)V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v3, v0, Lcom/narvii/util/ToolTipHelper;->bubble:Lcom/narvii/widget/PopupBubble;

    .line 81
    invoke-virtual {v3, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 82
    iget-boolean v2, v1, Lcom/narvii/util/Tooltip;->autoHide:Z

    if-eqz v2, :cond_20

    .line 83
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, v0, Lcom/narvii/util/ToolTipHelper;->handler:Landroid/os/Handler;

    iget-object v3, v0, Lcom/narvii/util/ToolTipHelper;->hideToolTipRunnable:Ljava/lang/Runnable;

    .line 84
    iget v1, v1, Lcom/narvii/util/Tooltip;->autoHideDuration:I

    int-to-long v4, v1

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_20
    :goto_9
    return-void
.end method
