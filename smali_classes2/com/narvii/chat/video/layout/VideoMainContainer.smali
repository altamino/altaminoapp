.class public Lcom/narvii/chat/video/layout/VideoMainContainer;
.super Landroid/widget/FrameLayout;
.source "VideoMainContainer.java"

# interfaces
.implements Lcom/narvii/chat/video/layout/VideoParticipantLayout$ItemClickListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final FLOATING_MODE_RATIO:F = 0.2f


# instance fields
.field private curChannelUid:I

.field private enterFocusAnimation:Landroid/animation/AnimatorSet;

.field focusContainer:Landroid/widget/FrameLayout;

.field rtcService:Lcom/narvii/chat/rtc/RtcService;

.field private screenHeight:I

.field private screenWidth:I

.field videoParticipantLayout:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

.field private viewHeight:I

.field private viewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/video/layout/VideoMainContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, -0x1

    .line 33
    iput p2, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->curChannelUid:I

    .line 50
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string/jumbo v0, "window"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    .line 51
    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    .line 52
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 53
    invoke-virtual {p2, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 54
    iget p2, v0, Landroid/graphics/Point;->x:I

    iput p2, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->screenWidth:I

    .line 55
    iget p2, v0, Landroid/graphics/Point;->y:I

    iput p2, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->screenHeight:I

    .line 56
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string p2, "rtc"

    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/rtc/RtcService;

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    return-void
.end method

.method private enterFocusMode()V
    .locals 5

    .line 147
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07015b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 148
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/Utils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    add-int/2addr v0, v1

    .line 149
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07015a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 150
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 151
    iget-object v2, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->videoParticipantLayout:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/narvii/chat/video/layout/RtcBaseLayout;->setFloatingMode(Z)V

    .line 157
    iget-object v2, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->videoParticipantLayout:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 158
    iget v3, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->screenWidth:I

    int-to-float v3, v3

    const v4, 0x3e4ccccd    # 0.2f

    mul-float v3, v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 159
    iget v3, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->screenHeight:I

    int-to-float v3, v3

    mul-float v3, v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 160
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 161
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const v0, 0x800005

    .line 162
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 163
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->videoParticipantLayout:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private resetFocusId()V
    .locals 2

    const/4 v0, -0x1

    .line 183
    iput v0, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->curChannelUid:I

    .line 184
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->focusContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 185
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->videoParticipantLayout:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    iget v1, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->curChannelUid:I

    invoke-virtual {v0, v1}, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->setUnFocusId(I)V

    return-void
.end method

.method private restoreMainLayout()V
    .locals 4

    .line 168
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->videoParticipantLayout:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/chat/video/layout/RtcBaseLayout;->setFloatingMode(Z)V

    .line 170
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->videoParticipantLayout:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 171
    iget-object v2, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->videoParticipantLayout:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 172
    iget-object v2, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->videoParticipantLayout:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 173
    iget v2, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->screenWidth:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 174
    iget v2, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->screenHeight:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 175
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 176
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const/16 v1, 0x11

    .line 177
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 178
    iget-object v1, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->videoParticipantLayout:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    invoke-direct {p0}, Lcom/narvii/chat/video/layout/VideoMainContainer;->resetFocusId()V

    return-void
.end method


# virtual methods
.method public enterBeautyMode()V
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->videoParticipantLayout:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    if-eqz v0, :cond_4

    iget v1, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->curChannelUid:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 115
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    :cond_0
    iget v0, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->curChannelUid:I

    iget-object v1, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->videoParticipantLayout:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    iget v1, v1, Lcom/narvii/chat/video/layout/RtcBaseLayout;->localChannelUid:I

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    if-eq v0, v2, :cond_2

    .line 120
    invoke-direct {p0}, Lcom/narvii/chat/video/layout/VideoMainContainer;->restoreMainLayout()V

    .line 122
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->videoParticipantLayout:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    iget v1, v0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->localChannelUid:I

    iput v1, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->curChannelUid:I

    .line 123
    invoke-virtual {v0, v1}, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->setFocusedId(I)V

    .line 124
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->videoParticipantLayout:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    iget-object v0, v0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->focusedView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 125
    invoke-virtual {p0, v0}, Lcom/narvii/chat/video/layout/VideoMainContainer;->stripView(Landroid/view/View;)V

    .line 126
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->videoParticipantLayout:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    iget-object v0, v0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->focusedView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 127
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 128
    iget-object v1, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->focusContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->videoParticipantLayout:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    iget-object v2, v2, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->focusedView:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    :cond_3
    invoke-direct {p0}, Lcom/narvii/chat/video/layout/VideoMainContainer;->enterFocusMode()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 142
    invoke-direct {p0}, Lcom/narvii/chat/video/layout/VideoMainContainer;->restoreMainLayout()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    .line 68
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f09049f

    .line 69
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->focusContainer:Landroid/widget/FrameLayout;

    const v0, 0x7f090c5d

    .line 70
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    iput-object v0, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->videoParticipantLayout:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    .line 71
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->focusContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->videoParticipantLayout:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    invoke-virtual {v0, p0}, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->setItemClickListener(Lcom/narvii/chat/video/layout/VideoParticipantLayout$ItemClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->videoParticipantLayout:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "scaleX"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 74
    iget-object v2, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->videoParticipantLayout:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    new-array v3, v1, [F

    fill-array-data v3, :array_1

    const-string v4, "scaleY"

    invoke-static {v2, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 75
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->enterFocusAnimation:Landroid/animation/AnimatorSet;

    .line 76
    iget-object v3, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->enterFocusAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 77
    iget-object v3, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->enterFocusAnimation:Landroid/animation/AnimatorSet;

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v0, v1, v4

    const/4 v0, 0x1

    aput-object v2, v1, v0

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3e4ccccd    # 0.2f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3e4ccccd    # 0.2f
    .end array-data
.end method

.method public onItemClicked(I)V
    .locals 5

    .line 82
    iget v0, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->curChannelUid:I

    if-eq v0, p1, :cond_5

    const/4 v0, -0x1

    if-eq p1, v0, :cond_5

    iget-object v1, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->enterFocusAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 86
    :cond_0
    iget v1, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->curChannelUid:I

    if-eq v1, v0, :cond_1

    .line 87
    invoke-direct {p0}, Lcom/narvii/chat/video/layout/VideoMainContainer;->restoreMainLayout()V

    return-void

    .line 91
    :cond_1
    iput p1, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->curChannelUid:I

    .line 92
    iget-object v1, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->videoParticipantLayout:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    invoke-virtual {v1, p1}, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->setFocusedId(I)V

    .line 93
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->videoParticipantLayout:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    iget-object p1, p1, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->focusedView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 94
    invoke-virtual {p0, p1}, Lcom/narvii/chat/video/layout/VideoMainContainer;->stripView(Landroid/view/View;)V

    .line 95
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->videoParticipantLayout:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    iget-object p1, p1, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->focusedView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    .line 96
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 97
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->focusContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->videoParticipantLayout:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    iget-object v2, v2, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->focusedView:Landroid/view/View;

    invoke-virtual {v0, v2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->videoParticipantLayout:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    invoke-virtual {p1}, Lcom/narvii/chat/video/layout/RtcBaseLayout;->getUserList()Landroid/util/SparseArray;

    move-result-object p1

    .line 102
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 103
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    if-eqz v0, :cond_3

    .line 105
    iget-object v2, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v2}, Lcom/narvii/chat/rtc/RtcService;->getRtcManager()Lcom/narvii/chat/video/RtcChatManager;

    move-result-object v2

    iget v0, v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 106
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->curChannelUid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 105
    invoke-virtual {v2, v0, v3}, Lcom/narvii/chat/video/RtcChatManager;->setLowerStreamMode(IZ)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    :cond_4
    invoke-direct {p0}, Lcom/narvii/chat/video/layout/VideoMainContainer;->enterFocusMode()V

    :cond_5
    :goto_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 61
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 62
    iput p1, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->viewWidth:I

    .line 63
    iput p2, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->viewHeight:I

    return-void
.end method

.method public stripView(Landroid/view/View;)V
    .locals 1

    .line 134
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
