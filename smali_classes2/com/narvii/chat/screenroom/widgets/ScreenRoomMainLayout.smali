.class public Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;
.super Landroid/widget/FrameLayout;
.source "ScreenRoomMainLayout.java"


# instance fields
.field private activingContainer:Landroid/view/View;

.field channelOverlay:Landroid/view/View;

.field chatPanelLayout:Landroid/view/ViewGroup;

.field public hostItem:Lcom/narvii/chat/screenroom/widgets/VideoWatchView;

.field private hostItemContainer:Lcom/narvii/widget/RoundFrameLayout;

.field isKeyboardVisible:Z

.field private isLandscape:Z

.field itemClickListener:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$ParticipantItemClickListener;

.field public liveUserContainer:Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;

.field loading:Landroid/view/View;

.field public miniIndicatorView:Landroid/view/View;

.field public repEarningCompositeView:Landroid/view/View;

.field private roleSet:Z

.field private roomPermissionType:I

.field private roomRole:I

.field private seekBarContainer:Landroid/view/View;

.field private seekBarPlaceHolder:Landroid/view/View;

.field private thread:Lcom/narvii/model/ChatThread;

.field videoController:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

.field private videoPlayView:Lcom/narvii/chat/screenroom/widgets/VideoPlayView;

.field viewerVideoController:Lcom/narvii/chat/screenroom/widgets/SRVideoController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 36
    iput p1, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->roomRole:I

    return-void
.end method

.method private isAllPanelHidden()Z
    .locals 3

    .line 308
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->chatPanelLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 312
    :goto_0
    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->chatPanelLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 313
    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->chatPanelLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 314
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private updateMiniIndicatorView()V
    .locals 5

    .line 251
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->miniIndicatorView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->thread:Lcom/narvii/model/ChatThread;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/narvii/model/ChatThread;->type:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 255
    :goto_0
    iget-object v3, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->miniIndicatorView:Landroid/view/View;

    iget v4, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->roomRole:I

    if-eq v4, v1, :cond_2

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->isLandscape:Z

    if-eqz v0, :cond_3

    :cond_2
    const/16 v2, 0x8

    :cond_3
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public configScreenRoomLayout(ZI)V
    .locals 0

    .line 235
    invoke-virtual {p0, p1}, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->setupRoomRole(I)V

    .line 236
    invoke-virtual {p0, p2}, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->setupRoomPermission(I)V

    return-void
.end method

.method public getVideoPlayView()Lcom/narvii/chat/screenroom/widgets/VideoPlayView;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->videoPlayView:Lcom/narvii/chat/screenroom/widgets/VideoPlayView;

    return-object v0
.end method

.method public synthetic lambda$onFinishInflate$0$ScreenRoomMainLayout(Lcom/narvii/chat/rtc/ChannelUserWrapper;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->hostItem:Lcom/narvii/chat/screenroom/widgets/VideoWatchView;

    invoke-virtual {v0, p1}, Lcom/narvii/chat/screenroom/widgets/VideoWatchView;->updateView(Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 68
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f090c94

    .line 69
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/screenroom/widgets/VideoWatchView;

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->hostItem:Lcom/narvii/chat/screenroom/widgets/VideoWatchView;

    const v0, 0x7f090960

    .line 70
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->repEarningCompositeView:Landroid/view/View;

    const v0, 0x7f090c71

    .line 71
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->videoPlayView:Lcom/narvii/chat/screenroom/widgets/VideoPlayView;

    const v0, 0x7f09005a

    .line 72
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->activingContainer:Landroid/view/View;

    const v0, 0x7f090524

    .line 73
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/RoundFrameLayout;

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->hostItemContainer:Lcom/narvii/widget/RoundFrameLayout;

    const v0, 0x7f090c55

    .line 74
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->videoController:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 75
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->videoController:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    const v1, 0x7f090ccd

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->seekBarPlaceHolder:Landroid/view/View;

    const v0, 0x7f090ccc

    .line 76
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->seekBarContainer:Landroid/view/View;

    .line 77
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->videoController:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->seekBarContainer:Landroid/view/View;

    const v2, 0x7f090cc3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->setVolumeWrapper(Landroid/view/View;)V

    const v0, 0x7f090ca7

    .line 78
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->viewerVideoController:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    const v0, 0x7f09068b

    .line 79
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->liveUserContainer:Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;

    .line 80
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->liveUserContainer:Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;

    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->itemClickListener:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$ParticipantItemClickListener;

    invoke-virtual {v0, v1}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->setItemClickListener(Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$ParticipantItemClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->liveUserContainer:Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;

    new-instance v1, Lcom/narvii/chat/screenroom/widgets/-$$Lambda$ScreenRoomMainLayout$5wCIJIXtEE0lEowuxMk4UkymaKE;

    invoke-direct {v1, p0}, Lcom/narvii/chat/screenroom/widgets/-$$Lambda$ScreenRoomMainLayout$5wCIJIXtEE0lEowuxMk4UkymaKE;-><init>(Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;)V

    invoke-virtual {v0, v1}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->setHostUpdateListener(Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout$HostUpdateListener;)V

    const v0, 0x7f090717

    .line 82
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->miniIndicatorView:Landroid/view/View;

    const v0, 0x7f090a85

    .line 84
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->loading:Landroid/view/View;

    const v0, 0x7f0901c7

    .line 85
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->channelOverlay:Landroid/view/View;

    .line 86
    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->isLandscape:Z

    invoke-virtual {p0, v0}, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->setLandscape(Z)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 273
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 275
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->seekBarPlaceHolder:Landroid/view/View;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->seekBarContainer:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    new-array p3, p1, [I

    .line 277
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    new-array p1, p1, [I

    .line 280
    iget-object p4, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->seekBarPlaceHolder:Landroid/view/View;

    invoke-virtual {p4, p1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 282
    aget p4, p1, p2

    aget p5, p3, p2

    sub-int/2addr p4, p5

    const/4 p5, 0x1

    .line 283
    aget p1, p1, p5

    aget p3, p3, p5

    sub-int/2addr p1, p3

    .line 285
    iget-object p3, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->seekBarContainer:Landroid/view/View;

    iget-object p5, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->seekBarPlaceHolder:Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getWidth()I

    move-result p5

    add-int/2addr p5, p4

    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->seekBarPlaceHolder:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p3, p4, p1, p5, v0}, Landroid/view/View;->layout(IIII)V

    .line 288
    :cond_0
    iget-boolean p1, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->isLandscape:Z

    if-eqz p1, :cond_4

    .line 289
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/narvii/util/AndroidBug5497Workaround;->getKeyboardHeight(Landroid/app/Activity;)I

    move-result p1

    .line 290
    iget-boolean p3, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->isKeyboardVisible:Z

    if-eqz p3, :cond_2

    if-nez p1, :cond_1

    .line 292
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    instance-of p3, p3, Landroid/view/View;

    if-eqz p3, :cond_1

    .line 293
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 294
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    sub-int p1, p3, p1

    .line 296
    :cond_1
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 297
    iget-object p2, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->channelOverlay:Landroid/view/View;

    invoke-static {p2, p1}, Lcom/narvii/util/ViewUtils;->setMarginBottom(Landroid/view/View;I)V

    goto :goto_0

    .line 298
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->chatPanelLayout:Landroid/view/ViewGroup;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isShown()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->isAllPanelHidden()Z

    move-result p1

    if-nez p1, :cond_3

    .line 299
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->channelOverlay:Landroid/view/View;

    iget-object p2, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->chatPanelLayout:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result p2

    invoke-static {p1, p2}, Lcom/narvii/util/ViewUtils;->setMarginBottom(Landroid/view/View;I)V

    goto :goto_0

    .line 301
    :cond_3
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->channelOverlay:Landroid/view/View;

    invoke-static {p1, p2}, Lcom/narvii/util/ViewUtils;->setMarginBottom(Landroid/view/View;I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onThreadChanged(Lcom/narvii/model/ChatThread;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->thread:Lcom/narvii/model/ChatThread;

    return-void
.end method

.method public setChatPanelLayout(Landroid/view/ViewGroup;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->chatPanelLayout:Landroid/view/ViewGroup;

    return-void
.end method

.method public setKeyboardVisible(Z)V
    .locals 0

    .line 97
    iput-boolean p1, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->isKeyboardVisible:Z

    .line 98
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public setLandscape(Z)V
    .locals 13

    .line 121
    iput-boolean p1, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->isLandscape:Z

    const/16 v0, 0x8

    const v1, 0x800005

    const v2, 0x7f070298

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    .line 123
    iget-object v5, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->activingContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 124
    iput v3, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 125
    iput v3, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 126
    iget-object v6, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->activingContainer:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    iget-object v5, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->videoPlayView:Lcom/narvii/chat/screenroom/widgets/VideoPlayView;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 129
    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 130
    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 131
    invoke-virtual {v5, v4, v4, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 132
    iget-object v6, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->videoPlayView:Lcom/narvii/chat/screenroom/widgets/VideoPlayView;

    invoke-virtual {v6, v5}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    iget-object v5, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->videoPlayView:Lcom/narvii/chat/screenroom/widgets/VideoPlayView;

    invoke-virtual {v5, v4}, Lcom/narvii/widget/RoundFrameLayout;->setShouldClip(Z)V

    .line 135
    iget-object v5, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->hostItemContainer:Lcom/narvii/widget/RoundFrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 136
    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 137
    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 138
    invoke-virtual {v5, v4, v4, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 139
    iget-object v6, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->hostItemContainer:Lcom/narvii/widget/RoundFrameLayout;

    invoke-virtual {v6, v5}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    iget-object v5, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->hostItemContainer:Lcom/narvii/widget/RoundFrameLayout;

    invoke-virtual {v5, v4}, Lcom/narvii/widget/RoundFrameLayout;->setShouldClip(Z)V

    .line 142
    iget-object v5, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->liveUserContainer:Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 143
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/narvii/util/Utils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v6

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 144
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0702a2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 145
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v8, 0x40c00000    # 6.0f

    invoke-static {v6, v8}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 146
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v8}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 147
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 148
    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 149
    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 150
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->liveUserContainer:Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->repEarningCompositeView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 154
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {v3, v5}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v3, v2

    .line 155
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 157
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    .line 159
    :cond_0
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 160
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 162
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const v2, 0x800055

    .line 163
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 164
    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->repEarningCompositeView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->repEarningCompositeView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 167
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->updateMiniIndicatorView()V

    goto/16 :goto_1

    .line 170
    :cond_1
    iget-object v5, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->activingContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 171
    iput v3, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v6, -0x2

    .line 172
    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 173
    iget-object v6, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->activingContainer:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0702a8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 176
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0702aa

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    mul-int/lit8 v8, v5, 0x2

    .line 177
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    add-int/2addr v8, v9

    .line 178
    iget-object v9, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->videoPlayView:Lcom/narvii/chat/screenroom/widgets/VideoPlayView;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 179
    iput v3, v9, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 180
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f070314

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, v9, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 181
    invoke-virtual {v9, v4, v8, v4, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 182
    iget-object v10, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->videoPlayView:Lcom/narvii/chat/screenroom/widgets/VideoPlayView;

    invoke-virtual {v10, v9}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    iget-object v9, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->videoPlayView:Lcom/narvii/chat/screenroom/widgets/VideoPlayView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/narvii/widget/RoundFrameLayout;->setShouldClip(Z)V

    .line 185
    iget-object v9, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->hostItemContainer:Lcom/narvii/widget/RoundFrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 186
    iput v3, v9, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 187
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, v9, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 188
    invoke-virtual {v9, v4, v8, v4, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 189
    iget-object v4, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->hostItemContainer:Lcom/narvii/widget/RoundFrameLayout;

    invoke-virtual {v4, v9}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    iget-object v4, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->hostItemContainer:Lcom/narvii/widget/RoundFrameLayout;

    invoke-virtual {v4, v10}, Lcom/narvii/widget/RoundFrameLayout;->setShouldClip(Z)V

    .line 192
    iget-object v4, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->liveUserContainer:Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 193
    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 194
    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 197
    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 198
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 199
    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->liveUserContainer:Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->repEarningCompositeView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 204
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v3, v8

    add-int/2addr v3, v7

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 205
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 206
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 207
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 208
    iget-object v3, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->repEarningCompositeView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->repEarningCompositeView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->miniIndicatorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 212
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v8, v2

    add-int/2addr v8, v7

    iput v8, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 213
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 214
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 215
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 216
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->miniIndicatorView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->updateMiniIndicatorView()V

    .line 218
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->videoController:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    invoke-virtual {v0, v10}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->updateStatusBar(Z)V

    .line 219
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->viewerVideoController:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    invoke-virtual {v0, v10}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->updateStatusBar(Z)V

    .line 221
    :goto_1
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->videoController:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    invoke-virtual {v0, p1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->setLandScape(Z)V

    .line 222
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->viewerVideoController:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    invoke-virtual {v0, p1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->setLandScape(Z)V

    .line 223
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->liveUserContainer:Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;

    invoke-virtual {v0, p1}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->setLandscape(Z)V

    return-void
.end method

.method public setLiveUserItemClickListener(Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$ParticipantItemClickListener;)V
    .locals 1

    .line 90
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->itemClickListener:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$ParticipantItemClickListener;

    .line 91
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->liveUserContainer:Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0, p1}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->setItemClickListener(Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$ParticipantItemClickListener;)V

    :cond_0
    return-void
.end method

.method public setUpVideoPlayListener(Lcom/narvii/chat/screenroom/ScreenRoomService;)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->videoPlayView:Lcom/narvii/chat/screenroom/widgets/VideoPlayView;

    invoke-virtual {p1, v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->addVideoPlayListener(Lcom/narvii/chat/screenroom/VideoPlayListener;)V

    .line 113
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->videoController:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    invoke-virtual {p1, v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->addVideoPlayListener(Lcom/narvii/chat/screenroom/VideoPlayListener;)V

    return-void
.end method

.method public setVideoButtonClickListener(Lcom/narvii/chat/screenroom/VideoButtonClickListener;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->videoController:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    invoke-virtual {v0, p1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->setVideoButtonClickListener(Lcom/narvii/chat/screenroom/VideoButtonClickListener;)V

    .line 108
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->videoPlayView:Lcom/narvii/chat/screenroom/widgets/VideoPlayView;

    invoke-virtual {v0, p1}, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->setVideoButtonClickListener(Lcom/narvii/chat/screenroom/VideoButtonClickListener;)V

    return-void
.end method

.method public setupRoomPermission(I)V
    .locals 1

    .line 259
    iget v0, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->roomPermissionType:I

    if-ne v0, p1, :cond_0

    return-void

    .line 262
    :cond_0
    iput p1, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->roomPermissionType:I

    .line 263
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->liveUserContainer:Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;

    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->roleSet:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 264
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->videoController:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    invoke-virtual {p1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->updateViews()V

    return-void
.end method

.method public setupRoomRole(I)V
    .locals 5

    const/4 v0, 0x1

    .line 240
    iput-boolean v0, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->roleSet:Z

    .line 241
    iput p1, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->roomRole:I

    .line 242
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->liveUserContainer:Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 243
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->updateMiniIndicatorView()V

    .line 244
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->loading:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 245
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->seekBarContainer:Landroid/view/View;

    if-ne p1, v0, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/16 v4, 0x8

    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 246
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->videoPlayView:Lcom/narvii/chat/screenroom/widgets/VideoPlayView;

    if-ne p1, v0, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    const/16 v4, 0x8

    :goto_1
    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 247
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->hostItemContainer:Lcom/narvii/widget/RoundFrameLayout;

    if-ne p1, v0, :cond_2

    const/16 v2, 0x8

    :cond_2
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public updateHosMuteStatus(Z)V
    .locals 0

    .line 322
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->liveUserContainer:Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;

    if-eqz p1, :cond_0

    .line 323
    invoke-virtual {p1}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->updateHostItem()V

    :cond_0
    return-void
.end method

.method public updateHostVolumeLevel(I)V
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->liveUserContainer:Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;

    invoke-virtual {v0, p1}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->updateHostVolume(I)V

    return-void
.end method
