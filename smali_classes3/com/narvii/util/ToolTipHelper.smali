.class public Lcom/narvii/util/ToolTipHelper;
.super Ljava/lang/Object;
.source "ToolTipHelper.java"


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

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/narvii/util/-$$Lambda$MN6BLuYMEetWn3XvQTBltk0CZks;

    invoke-direct {v0, p0}, Lcom/narvii/util/-$$Lambda$MN6BLuYMEetWn3XvQTBltk0CZks;-><init>(Lcom/narvii/util/ToolTipHelper;)V

    iput-object v0, p0, Lcom/narvii/util/ToolTipHelper;->hideToolTipRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/util/ToolTipHelper;)Landroid/view/animation/TranslateAnimation;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/narvii/util/ToolTipHelper;->translateAnimation:Landroid/view/animation/TranslateAnimation;

    return-object p0
.end method

.method static synthetic access$002(Lcom/narvii/util/ToolTipHelper;Landroid/view/animation/TranslateAnimation;)Landroid/view/animation/TranslateAnimation;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/narvii/util/ToolTipHelper;->translateAnimation:Landroid/view/animation/TranslateAnimation;

    return-object p1
.end method

.method public static getTranslateAnimation(Landroid/content/Context;Z)Landroid/view/animation/TranslateAnimation;
    .locals 1

    .line 287
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/narvii/lib/R$dimen;->tooltip_offset_v:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 288
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    neg-int p0, p0

    :goto_0
    int-to-float p0, p0

    const/4 p1, 0x0

    invoke-direct {v0, p1, p1, p1, p0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const/4 p0, -0x1

    .line 289
    invoke-virtual {v0, p0}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    const/4 p0, 0x2

    .line 290
    invoke-virtual {v0, p0}, Landroid/view/animation/TranslateAnimation;->setRepeatMode(I)V

    const-wide/16 p0, 0x3e8

    .line 291
    invoke-virtual {v0, p0, p1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

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

    .line 42
    iget-object v0, p0, Lcom/narvii/util/ToolTipHelper;->bubble:Lcom/narvii/widget/PopupBubble;

    if-nez v0, :cond_0

    return-void

    .line 45
    :cond_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/narvii/util/ToolTipHelper;->bubble:Lcom/narvii/widget/PopupBubble;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 49
    iget-object v0, p0, Lcom/narvii/util/ToolTipHelper;->bubble:Lcom/narvii/widget/PopupBubble;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 50
    iget-object v0, p0, Lcom/narvii/util/ToolTipHelper;->bubble:Lcom/narvii/widget/PopupBubble;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$anim;->fade_out_fast:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/narvii/util/ToolTipHelper;->bubble:Lcom/narvii/widget/PopupBubble;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public isTooltipShowing()Z
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/narvii/util/ToolTipHelper;->bubble:Lcom/narvii/widget/PopupBubble;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 58
    :cond_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v0

    return v0
.end method

.method public resumeTooltipAnimation()V
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/narvii/util/ToolTipHelper;->bubble:Lcom/narvii/widget/PopupBubble;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/util/ToolTipHelper;->bubble:Lcom/narvii/widget/PopupBubble;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/util/ToolTipHelper;->translateAnimation:Landroid/view/animation/TranslateAnimation;

    if-eqz v0, :cond_0

    .line 281
    iget-object v1, p0, Lcom/narvii/util/ToolTipHelper;->bubble:Lcom/narvii/widget/PopupBubble;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public showToolTip(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    .line 297
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

    .line 298
    invoke-virtual {p0, p1}, Lcom/narvii/util/ToolTipHelper;->showToolTip(Lcom/narvii/util/Tooltip;)V

    return-void
.end method

.method public showToolTip(Landroid/view/View;Landroid/view/View;IZ)V
    .locals 1

    .line 275
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

    .line 276
    invoke-virtual {p0, p1}, Lcom/narvii/util/ToolTipHelper;->showToolTip(Lcom/narvii/util/Tooltip;)V

    return-void
.end method

.method public showToolTip(Lcom/narvii/util/Tooltip;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 62
    invoke-static {}, Lcom/narvii/util/ToolTipHelper;->isToolTipEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    if-nez v1, :cond_1

    return-void

    .line 68
    :cond_1
    iget-object v2, v1, Lcom/narvii/util/Tooltip;->anchorView:Landroid/view/View;

    .line 69
    iget-object v3, v1, Lcom/narvii/util/Tooltip;->rootView:Landroid/view/View;

    .line 70
    iget-object v4, v1, Lcom/narvii/util/Tooltip;->indicatorUp:Ljava/lang/Boolean;

    if-nez v2, :cond_2

    return-void

    :cond_2
    if-nez v3, :cond_3

    .line 77
    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 78
    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    const v5, 0x1020002

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    :cond_3
    if-nez v3, :cond_4

    return-void

    .line 85
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_5

    return-void

    .line 89
    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    if-eqz v5, :cond_1f

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v5

    if-nez v5, :cond_6

    goto/16 :goto_b

    .line 93
    :cond_6
    iget-object v5, v0, Lcom/narvii/util/ToolTipHelper;->bubble:Lcom/narvii/widget/PopupBubble;

    if-eqz v5, :cond_9

    .line 94
    iget-boolean v6, v1, Lcom/narvii/util/Tooltip;->showOnlyOnce:Z

    if-eqz v6, :cond_7

    return-void

    :cond_7
    const/16 v6, 0x8

    .line 98
    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 99
    iget-object v5, v0, Lcom/narvii/util/ToolTipHelper;->bubble:Lcom/narvii/widget/PopupBubble;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 100
    iget-object v5, v0, Lcom/narvii/util/ToolTipHelper;->handler:Landroid/os/Handler;

    if-eqz v5, :cond_8

    .line 101
    iget-object v6, v0, Lcom/narvii/util/ToolTipHelper;->hideToolTipRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 103
    :cond_8
    iget-object v5, v0, Lcom/narvii/util/ToolTipHelper;->currentTooltipView:Landroid/view/View;

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_9

    .line 104
    iget-object v5, v0, Lcom/narvii/util/ToolTipHelper;->currentTooltipView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 105
    iget-object v6, v0, Lcom/narvii/util/ToolTipHelper;->currentTooltipView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_9
    const/4 v5, 0x2

    new-array v6, v5, [I

    .line 111
    invoke-virtual {v2, v6}, Landroid/view/View;->getLocationInWindow([I)V

    new-array v7, v5, [I

    .line 114
    invoke-virtual {v3, v7}, Landroid/view/View;->getLocationInWindow([I)V

    .line 116
    instance-of v8, v3, Landroid/view/ViewGroup;

    if-nez v8, :cond_a

    return-void

    .line 120
    :cond_a
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    const/4 v9, 0x0

    .line 121
    aget v10, v6, v9

    aget v11, v7, v9

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

    const/4 v10, 0x1

    .line 122
    aget v6, v6, v10

    aget v7, v7, v10

    sub-int/2addr v6, v7

    iput v6, v8, Landroid/graphics/Rect;->top:I

    .line 123
    iget v6, v8, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, v8, Landroid/graphics/Rect;->right:I

    .line 124
    iget v6, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, v8, Landroid/graphics/Rect;->bottom:I

    .line 127
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    iget v7, v1, Lcom/narvii/util/Tooltip;->customTooltipBubbleLayout:I

    if-nez v7, :cond_b

    sget v7, Lcom/narvii/lib/R$layout;->tooltip_layout:I

    :cond_b
    move-object v11, v3

    check-cast v11, Landroid/view/ViewGroup;

    invoke-virtual {v6, v7, v11, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 128
    iput-object v6, v0, Lcom/narvii/util/ToolTipHelper;->currentTooltipView:Landroid/view/View;

    .line 129
    invoke-virtual {v11, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 131
    iget-object v7, v1, Lcom/narvii/util/Tooltip;->onCustomViewListener:Lcom/narvii/util/Callback;

    const/4 v11, 0x0

    if-nez v7, :cond_f

    .line 132
    sget v7, Lcom/narvii/lib/R$id;->hint_text:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 133
    iget v12, v1, Lcom/narvii/util/Tooltip;->textId:I

    if-eqz v12, :cond_c

    .line 134
    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 136
    :cond_c
    iget-object v12, v1, Lcom/narvii/util/Tooltip;->text:Ljava/lang/String;

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    :goto_0
    iget v12, v1, Lcom/narvii/util/Tooltip;->textSize:F

    cmpl-float v13, v12, v11

    if-lez v13, :cond_d

    .line 139
    invoke-virtual {v7, v9, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 141
    :cond_d
    iget-boolean v12, v1, Lcom/narvii/util/Tooltip;->isRightAlign:Z

    if-eqz v12, :cond_e

    const v12, 0x800005

    goto :goto_1

    :cond_e
    const v12, 0x800003

    :goto_1
    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_2

    .line 143
    :cond_f
    invoke-interface {v7, v6}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 146
    :goto_2
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/narvii/lib/R$dimen;->tooltip_margin_h:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    mul-int/lit8 v12, v12, 0x2

    sub-int/2addr v7, v12

    .line 147
    iget-object v12, v1, Lcom/narvii/util/Tooltip;->maxWidth:Ljava/lang/Integer;

    if-eqz v12, :cond_10

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12, v7}, Ljava/lang/Math;->min(II)I

    move-result v12

    goto :goto_3

    :cond_10
    move v12, v7

    .line 148
    :goto_3
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 149
    sget v13, Lcom/narvii/lib/R$id;->popup_bubble:I

    invoke-virtual {v6, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/narvii/widget/PopupBubble;

    iput-object v6, v0, Lcom/narvii/util/ToolTipHelper;->bubble:Lcom/narvii/widget/PopupBubble;

    const/4 v6, 0x0

    .line 152
    iget v13, v1, Lcom/narvii/util/Tooltip;->finger:I

    if-eq v13, v10, :cond_12

    if-eq v13, v5, :cond_11

    goto :goto_4

    .line 157
    :cond_11
    iget-object v5, v0, Lcom/narvii/util/ToolTipHelper;->bubble:Lcom/narvii/widget/PopupBubble;

    sget v6, Lcom/narvii/lib/R$id;->finger_end:I

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Landroid/widget/ImageView;

    goto :goto_4

    .line 154
    :cond_12
    iget-object v5, v0, Lcom/narvii/util/ToolTipHelper;->bubble:Lcom/narvii/widget/PopupBubble;

    sget v6, Lcom/narvii/lib/R$id;->finger_start:I

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Landroid/widget/ImageView;

    :goto_4
    if-eqz v6, :cond_13

    .line 162
    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 165
    :cond_13
    iget-object v5, v0, Lcom/narvii/util/ToolTipHelper;->bubble:Lcom/narvii/widget/PopupBubble;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 166
    iget-object v13, v0, Lcom/narvii/util/ToolTipHelper;->bubble:Lcom/narvii/widget/PopupBubble;

    const/high16 v14, -0x80000000

    invoke-static {v12, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 167
    invoke-static {v3, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 166
    invoke-virtual {v13, v12, v14}, Landroid/widget/FrameLayout;->measure(II)V

    .line 169
    iget-object v12, v0, Lcom/narvii/util/ToolTipHelper;->bubble:Lcom/narvii/widget/PopupBubble;

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v12

    .line 170
    iget-object v13, v0, Lcom/narvii/util/ToolTipHelper;->bubble:Lcom/narvii/widget/PopupBubble;

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v13

    .line 172
    iget v14, v8, Landroid/graphics/Rect;->top:I

    div-int/lit8 v15, v12, 0x2

    sub-int/2addr v14, v15

    .line 173
    iget v10, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v15

    int-to-float v3, v3

    const v15, 0x3ecccccd    # 0.4f

    mul-float v3, v3, v15

    float-to-int v3, v3

    sub-int v14, v3, v14

    .line 176
    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    sub-int/2addr v3, v10

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v14, v3, :cond_14

    const/16 v16, 0x1

    goto :goto_5

    :cond_14
    const/16 v16, 0x0

    :goto_5
    if-eqz v4, :cond_15

    .line 178
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    :cond_15
    move/from16 v3, v16

    if-eqz v6, :cond_17

    if-nez v3, :cond_16

    .line 182
    sget v4, Lcom/narvii/lib/R$drawable;->ic_finger_up:I

    goto :goto_6

    :cond_16
    sget v4, Lcom/narvii/lib/R$drawable;->ic_finger_down:I

    .line 183
    :goto_6
    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 186
    :cond_17
    iget-object v4, v0, Lcom/narvii/util/ToolTipHelper;->bubble:Lcom/narvii/widget/PopupBubble;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/narvii/lib/R$dimen;->tooltip_offset_v:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    if-eqz v3, :cond_18

    .line 187
    iget v6, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v12

    sub-int/2addr v6, v4

    goto :goto_7

    :cond_18
    iget v6, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v4

    .line 190
    :goto_7
    iget-object v4, v0, Lcom/narvii/util/ToolTipHelper;->bubble:Lcom/narvii/widget/PopupBubble;

    instance-of v10, v4, Lcom/narvii/util/ToolTipHelper$CustomTooltipBubble;

    if-eqz v10, :cond_19

    .line 191
    check-cast v4, Lcom/narvii/util/ToolTipHelper$CustomTooltipBubble;

    invoke-interface {v4, v8, v7}, Lcom/narvii/util/ToolTipHelper$CustomTooltipBubble;->getLayoutMarginLeft(Landroid/graphics/Rect;I)I

    move-result v4

    goto :goto_8

    .line 193
    :cond_19
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    div-int/lit8 v10, v13, 0x2

    sub-int/2addr v4, v10

    .line 194
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    div-int/lit8 v12, v7, 0x2

    if-ge v10, v12, :cond_1a

    .line 195
    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 197
    :cond_1a
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    if-le v10, v12, :cond_1b

    sub-int v10, v7, v13

    .line 198
    invoke-static {v4, v10}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 202
    :cond_1b
    :goto_8
    iget v10, v1, Lcom/narvii/util/Tooltip;->backgroundColor:I

    const/4 v12, -0x1

    if-eq v10, v12, :cond_1c

    .line 203
    iget-object v12, v0, Lcom/narvii/util/ToolTipHelper;->bubble:Lcom/narvii/widget/PopupBubble;

    invoke-virtual {v12, v10}, Lcom/narvii/widget/PopupBubble;->setBubbleBackgroundColor(I)V

    .line 206
    :cond_1c
    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 207
    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr v7, v4

    sub-int/2addr v7, v13

    .line 208
    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 209
    iget-object v6, v0, Lcom/narvii/util/ToolTipHelper;->bubble:Lcom/narvii/widget/PopupBubble;

    invoke-virtual {v6, v5}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    iget-object v5, v0, Lcom/narvii/util/ToolTipHelper;->bubble:Lcom/narvii/widget/PopupBubble;

    invoke-virtual {v5, v9}, Lcom/narvii/widget/PopupBubble;->setAutoRtl(Z)V

    .line 211
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    sub-int/2addr v5, v4

    .line 212
    iget-object v4, v0, Lcom/narvii/util/ToolTipHelper;->bubble:Lcom/narvii/widget/PopupBubble;

    xor-int/lit8 v6, v3, 0x1

    invoke-virtual {v4, v6, v5}, Lcom/narvii/widget/PopupBubble;->setIndicator(ZI)V

    .line 213
    iget-object v4, v0, Lcom/narvii/util/ToolTipHelper;->bubble:Lcom/narvii/widget/PopupBubble;

    new-instance v6, Lcom/narvii/util/ToolTipHelper$1;

    invoke-direct {v6, v0, v1, v2}, Lcom/narvii/util/ToolTipHelper$1;-><init>(Lcom/narvii/util/ToolTipHelper;Lcom/narvii/util/Tooltip;Landroid/view/View;)V

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget-object v2, v0, Lcom/narvii/util/ToolTipHelper;->bubble:Lcom/narvii/widget/PopupBubble;

    invoke-virtual {v2, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 233
    iget-boolean v2, v1, Lcom/narvii/util/Tooltip;->isVibrate:Z

    if-eqz v2, :cond_1d

    .line 235
    :try_start_0
    iget-object v2, v0, Lcom/narvii/util/ToolTipHelper;->bubble:Lcom/narvii/widget/PopupBubble;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "vibrator"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    const-wide/16 v6, 0x12c

    .line 236
    invoke-virtual {v2, v6, v7}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    nop

    .line 241
    :cond_1d
    :goto_9
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    int-to-float v4, v5

    const/16 v19, 0x1

    if-eqz v3, :cond_1e

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v20, 0x3f800000    # 1.0f

    goto :goto_a

    :cond_1e
    const/16 v20, 0x0

    :goto_a
    move-object v12, v2

    move/from16 v18, v4

    invoke-direct/range {v12 .. v20}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v4, 0x190

    .line 243
    invoke-virtual {v2, v4, v5}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 244
    new-instance v4, Landroid/view/animation/OvershootInterpolator;

    const v5, 0x3f99999a    # 1.2f

    invoke-direct {v4, v5}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    .line 245
    invoke-virtual {v2, v4}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 246
    new-instance v4, Lcom/narvii/util/ToolTipHelper$2;

    invoke-direct {v4, v0, v3}, Lcom/narvii/util/ToolTipHelper$2;-><init>(Lcom/narvii/util/ToolTipHelper;Z)V

    invoke-virtual {v2, v4}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 266
    iget-object v3, v0, Lcom/narvii/util/ToolTipHelper;->bubble:Lcom/narvii/widget/PopupBubble;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 268
    iget-boolean v2, v1, Lcom/narvii/util/Tooltip;->autoHide:Z

    if-eqz v2, :cond_1f

    .line 269
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, v0, Lcom/narvii/util/ToolTipHelper;->handler:Landroid/os/Handler;

    .line 270
    iget-object v2, v0, Lcom/narvii/util/ToolTipHelper;->handler:Landroid/os/Handler;

    iget-object v3, v0, Lcom/narvii/util/ToolTipHelper;->hideToolTipRunnable:Ljava/lang/Runnable;

    iget v1, v1, Lcom/narvii/util/Tooltip;->autoHideDuration:I

    int-to-long v4, v1

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1f
    :goto_b
    return-void
.end method
