.class public Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


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
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

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

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->roomRole:I

    return-void
.end method

.method public static synthetic a(Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->lambda$onFinishInflate$0(Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    return-void
.end method

.method private isAllPanelHidden()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->chatPanelLayout:Landroid/view/ViewGroup;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    move v0, v1

    .line 8
    .line 9
    :goto_0
    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->chatPanelLayout:Landroid/view/ViewGroup;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 13
    move-result v2

    .line 14
    .line 15
    if-ge v0, v2, :cond_2

    .line 16
    .line 17
    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->chatPanelLayout:Landroid/view/ViewGroup;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 25
    move-result v2

    .line 26
    .line 27
    if-nez v2, :cond_1

    .line 28
    return v1

    .line 29
    .line 30
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_2
    const/4 v0, 0x1

    .line 33
    return v0
.end method

.method private synthetic lambda$onFinishInflate$0(Lcom/narvii/chat/rtc/ChannelUserWrapper;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->hostItem:Lcom/narvii/chat/screenroom/widgets/VideoWatchView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/chat/screenroom/widgets/VideoWatchView;->updateView(Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    .line 6
    return-void
.end method

.method private updateMiniIndicatorView()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->miniIndicatorView:Landroid/view/View;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->thread:Lcom/narvii/model/ChatThread;

    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x1

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    iget v1, v1, Lcom/narvii/model/ChatThread;->type:I

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    move v1, v3

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    move v1, v2

    .line 19
    .line 20
    :goto_0
    iget v4, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->roomRole:I

    .line 21
    .line 22
    if-eq v4, v3, :cond_2

    .line 23
    .line 24
    if-nez v1, :cond_2

    .line 25
    .line 26
    iget-boolean v1, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->isLandscape:Z

    .line 27
    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    :cond_2
    const/16 v2, 0x8

    .line 31
    .line 32
    .line 33
    :cond_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 34
    return-void
.end method


# virtual methods
.method public configScreenRoomLayout(ZI)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->setupRoomRole(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2}, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->setupRoomPermission(I)V

    .line 7
    return-void
.end method

.method public getVideoPlayView()Lcom/narvii/chat/screenroom/widgets/VideoPlayView;
    .locals 1

    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->videoPlayView:Lcom/narvii/chat/screenroom/widgets/VideoPlayView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a0fb9

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/chat/screenroom/widgets/VideoWatchView;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->hostItem:Lcom/narvii/chat/screenroom/widgets/VideoWatchView;

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0a0c1e

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->repEarningCompositeView:Landroid/view/View;

    .line 24
    .line 25
    .line 26
    const v0, 0x7f0a0f96

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    check-cast v0, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->videoPlayView:Lcom/narvii/chat/screenroom/widgets/VideoPlayView;

    .line 35
    .line 36
    .line 37
    const v0, 0x7f0a008b

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->activingContainer:Landroid/view/View;

    .line 44
    .line 45
    .line 46
    const v0, 0x7f0a0680

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    check-cast v0, Lcom/narvii/widget/RoundFrameLayout;

    .line 53
    .line 54
    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->hostItemContainer:Lcom/narvii/widget/RoundFrameLayout;

    .line 55
    .line 56
    .line 57
    const v0, 0x7f0a0f7b

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    check-cast v0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 64
    .line 65
    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->videoController:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 66
    .line 67
    .line 68
    const v1, 0x7f0a0ff3

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    move-result-object v0

    .line 73
    .line 74
    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->seekBarPlaceHolder:Landroid/view/View;

    .line 75
    .line 76
    .line 77
    const v0, 0x7f0a0ff2

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 81
    move-result-object v0

    .line 82
    .line 83
    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->seekBarContainer:Landroid/view/View;

    .line 84
    .line 85
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->videoController:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 86
    .line 87
    .line 88
    const v2, 0x7f0a0fe9

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 92
    move-result-object v0

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->setVolumeWrapper(Landroid/view/View;)V

    .line 96
    .line 97
    .line 98
    const v0, 0x7f0a0fd2

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 102
    move-result-object v0

    .line 103
    .line 104
    check-cast v0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 105
    .line 106
    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->viewerVideoController:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 107
    .line 108
    .line 109
    const v0, 0x7f0a0814

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 113
    move-result-object v0

    .line 114
    .line 115
    check-cast v0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;

    .line 116
    .line 117
    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->liveUserContainer:Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;

    .line 118
    .line 119
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->itemClickListener:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$ParticipantItemClickListener;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v1}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->setItemClickListener(Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$ParticipantItemClickListener;)V

    .line 123
    .line 124
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->liveUserContainer:Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;

    .line 125
    .line 126
    new-instance v1, Lcom/narvii/chat/screenroom/widgets/c;

    .line 127
    .line 128
    .line 129
    invoke-direct {v1, p0}, Lcom/narvii/chat/screenroom/widgets/c;-><init>(Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v1}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->setHostUpdateListener(Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout$HostUpdateListener;)V

    .line 133
    .line 134
    .line 135
    const v0, 0x7f0a0979

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 139
    move-result-object v0

    .line 140
    .line 141
    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->miniIndicatorView:Landroid/view/View;

    .line 142
    .line 143
    .line 144
    const v0, 0x7f0a0d79

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 148
    move-result-object v0

    .line 149
    .line 150
    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->loading:Landroid/view/View;

    .line 151
    .line 152
    .line 153
    const v0, 0x7f0a027e

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 157
    move-result-object v0

    .line 158
    .line 159
    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->channelOverlay:Landroid/view/View;

    .line 160
    .line 161
    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->isLandscape:Z

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0, v0}, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->setLandscape(Z)V

    .line 165
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->seekBarPlaceHolder:Landroid/view/View;

    .line 6
    const/4 p2, 0x0

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->seekBarContainer:Landroid/view/View;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    const/4 p1, 0x2

    .line 14
    .line 15
    new-array p3, p1, [I

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 19
    .line 20
    new-array p1, p1, [I

    .line 21
    .line 22
    iget-object p4, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->seekBarPlaceHolder:Landroid/view/View;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p4, p1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 26
    .line 27
    aget p4, p1, p2

    .line 28
    .line 29
    aget p5, p3, p2

    .line 30
    sub-int/2addr p4, p5

    .line 31
    const/4 p5, 0x1

    .line 32
    .line 33
    aget p1, p1, p5

    .line 34
    .line 35
    aget p3, p3, p5

    .line 36
    sub-int/2addr p1, p3

    .line 37
    .line 38
    iget-object p3, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->seekBarContainer:Landroid/view/View;

    .line 39
    .line 40
    iget-object p5, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->seekBarPlaceHolder:Landroid/view/View;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p5}, Landroid/view/View;->getWidth()I

    .line 44
    move-result p5

    .line 45
    add-int/2addr p5, p4

    .line 46
    .line 47
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->seekBarPlaceHolder:Landroid/view/View;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 51
    move-result v0

    .line 52
    add-int/2addr v0, p1

    .line 53
    .line 54
    .line 55
    invoke-virtual {p3, p4, p1, p5, v0}, Landroid/view/View;->layout(IIII)V

    .line 56
    .line 57
    :cond_0
    iget-boolean p1, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->isLandscape:Z

    .line 58
    .line 59
    if-eqz p1, :cond_4

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    check-cast p1, Landroid/app/Activity;

    .line 66
    .line 67
    .line 68
    invoke-static {p1}, Lcom/narvii/util/AndroidBug5497Workaround;->getKeyboardHeight(Landroid/app/Activity;)I

    .line 69
    move-result p1

    .line 70
    .line 71
    iget-boolean p3, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->isKeyboardVisible:Z

    .line 72
    .line 73
    if-eqz p3, :cond_2

    .line 74
    .line 75
    if-nez p1, :cond_1

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 79
    move-result-object p3

    .line 80
    .line 81
    instance-of p3, p3, Landroid/view/View;

    .line 82
    .line 83
    if-eqz p3, :cond_1

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 87
    move-result-object p1

    .line 88
    .line 89
    check-cast p1, Landroid/view/View;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 93
    move-result p3

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 97
    move-result p1

    .line 98
    .line 99
    sub-int p1, p3, p1

    .line 100
    .line 101
    .line 102
    :cond_1
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    .line 103
    move-result p1

    .line 104
    .line 105
    iget-object p2, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->channelOverlay:Landroid/view/View;

    .line 106
    .line 107
    .line 108
    invoke-static {p2, p1}, Lcom/narvii/util/ViewUtils;->setMarginBottom(Landroid/view/View;I)V

    .line 109
    goto :goto_0

    .line 110
    .line 111
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->chatPanelLayout:Landroid/view/ViewGroup;

    .line 112
    .line 113
    if-eqz p1, :cond_3

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    .line 117
    move-result p1

    .line 118
    .line 119
    if-eqz p1, :cond_3

    .line 120
    .line 121
    .line 122
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->isAllPanelHidden()Z

    .line 123
    move-result p1

    .line 124
    .line 125
    if-nez p1, :cond_3

    .line 126
    .line 127
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->channelOverlay:Landroid/view/View;

    .line 128
    .line 129
    iget-object p2, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->chatPanelLayout:Landroid/view/ViewGroup;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 133
    move-result p2

    .line 134
    .line 135
    .line 136
    invoke-static {p1, p2}, Lcom/narvii/util/ViewUtils;->setMarginBottom(Landroid/view/View;I)V

    .line 137
    goto :goto_0

    .line 138
    .line 139
    :cond_3
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->channelOverlay:Landroid/view/View;

    .line 140
    .line 141
    .line 142
    invoke-static {p1, p2}, Lcom/narvii/util/ViewUtils;->setMarginBottom(Landroid/view/View;I)V

    .line 143
    :cond_4
    :goto_0
    return-void
.end method

.method public onThreadChanged(Lcom/narvii/model/ChatThread;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->thread:Lcom/narvii/model/ChatThread;

    return-void
.end method

.method public setChatPanelLayout(Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->chatPanelLayout:Landroid/view/ViewGroup;

    return-void
.end method

.method public setKeyboardVisible(Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->isKeyboardVisible:Z

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    return-void
.end method

.method public setLandscape(Z)V
    .locals 13

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->isLandscape:Z

    .line 3
    .line 4
    const/16 v0, 0x8

    .line 5
    .line 6
    .line 7
    const v1, 0x800005

    .line 8
    .line 9
    .line 10
    const v2, 0x7f0704cc

    .line 11
    const/4 v3, -0x1

    .line 12
    const/4 v4, 0x0

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    iget-object v5, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->activingContainer:Landroid/view/View;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 20
    move-result-object v5

    .line 21
    .line 22
    iput v3, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 23
    .line 24
    iput v3, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 25
    .line 26
    iget-object v6, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->activingContainer:Landroid/view/View;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v6, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    .line 31
    iget-object v5, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->videoPlayView:Lcom/narvii/chat/screenroom/widgets/VideoPlayView;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 35
    move-result-object v5

    .line 36
    .line 37
    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 38
    .line 39
    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 40
    .line 41
    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 42
    .line 43
    .line 44
    invoke-virtual {v5, v4, v4, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 45
    .line 46
    iget-object v6, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->videoPlayView:Lcom/narvii/chat/screenroom/widgets/VideoPlayView;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v6, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    .line 51
    iget-object v5, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->videoPlayView:Lcom/narvii/chat/screenroom/widgets/VideoPlayView;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5, v4}, Lcom/narvii/widget/RoundFrameLayout;->setShouldClip(Z)V

    .line 55
    .line 56
    iget-object v5, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->hostItemContainer:Lcom/narvii/widget/RoundFrameLayout;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 60
    move-result-object v5

    .line 61
    .line 62
    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 63
    .line 64
    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 65
    .line 66
    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 67
    .line 68
    .line 69
    invoke-virtual {v5, v4, v4, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 70
    .line 71
    iget-object v6, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->hostItemContainer:Lcom/narvii/widget/RoundFrameLayout;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v6, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    .line 76
    iget-object v5, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->hostItemContainer:Lcom/narvii/widget/RoundFrameLayout;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v5, v4}, Lcom/narvii/widget/RoundFrameLayout;->setShouldClip(Z)V

    .line 80
    .line 81
    iget-object v5, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->liveUserContainer:Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 85
    move-result-object v5

    .line 86
    .line 87
    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 91
    move-result-object v6

    .line 92
    .line 93
    .line 94
    invoke-static {v6}, Lcom/narvii/util/Utils;->getStatusBarHeight(Landroid/content/Context;)I

    .line 95
    move-result v6

    .line 96
    .line 97
    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 101
    move-result-object v6

    .line 102
    .line 103
    .line 104
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 105
    move-result-object v6

    .line 106
    .line 107
    .line 108
    const v7, 0x7f0704d6

    .line 109
    .line 110
    .line 111
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 112
    move-result v6

    .line 113
    .line 114
    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 118
    move-result-object v6

    .line 119
    .line 120
    const/high16 v8, 0x40c00000    # 6.0f

    .line 121
    .line 122
    .line 123
    invoke-static {v6, v8}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 124
    move-result v6

    .line 125
    .line 126
    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 130
    move-result-object v6

    .line 131
    .line 132
    .line 133
    invoke-static {v6, v8}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 134
    move-result v6

    .line 135
    .line 136
    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 140
    move-result-object v6

    .line 141
    .line 142
    .line 143
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 144
    move-result-object v6

    .line 145
    .line 146
    .line 147
    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 148
    move-result v6

    .line 149
    .line 150
    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 151
    .line 152
    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 153
    .line 154
    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 155
    .line 156
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->liveUserContainer:Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    .line 161
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->repEarningCompositeView:Landroid/view/View;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 165
    move-result-object v1

    .line 166
    .line 167
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 171
    move-result-object v3

    .line 172
    .line 173
    const/high16 v5, 0x41400000    # 12.0f

    .line 174
    .line 175
    .line 176
    invoke-static {v3, v5}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 177
    move-result v3

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 181
    move-result-object v5

    .line 182
    .line 183
    .line 184
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 185
    move-result-object v5

    .line 186
    .line 187
    .line 188
    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 189
    move-result v2

    .line 190
    add-int/2addr v3, v2

    .line 191
    .line 192
    .line 193
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 194
    move-result v2

    .line 195
    .line 196
    if-eqz v2, :cond_0

    .line 197
    .line 198
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 199
    .line 200
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 201
    goto :goto_0

    .line 202
    .line 203
    :cond_0
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 204
    .line 205
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 206
    .line 207
    .line 208
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 209
    move-result-object v2

    .line 210
    .line 211
    .line 212
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 213
    move-result-object v2

    .line 214
    .line 215
    .line 216
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 217
    move-result v2

    .line 218
    .line 219
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 220
    .line 221
    .line 222
    const v2, 0x800055

    .line 223
    .line 224
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 225
    .line 226
    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->repEarningCompositeView:Landroid/view/View;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    .line 231
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->repEarningCompositeView:Landroid/view/View;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 235
    .line 236
    .line 237
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->updateMiniIndicatorView()V

    .line 238
    .line 239
    goto/16 :goto_1

    .line 240
    .line 241
    :cond_1
    iget-object v5, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->activingContainer:Landroid/view/View;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 245
    move-result-object v5

    .line 246
    .line 247
    iput v3, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 248
    const/4 v6, -0x2

    .line 249
    .line 250
    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 251
    .line 252
    iget-object v6, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->activingContainer:Landroid/view/View;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v6, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 259
    move-result-object v5

    .line 260
    .line 261
    .line 262
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 263
    move-result-object v5

    .line 264
    .line 265
    .line 266
    const v6, 0x7f0704dc

    .line 267
    .line 268
    .line 269
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 270
    move-result v5

    .line 271
    .line 272
    .line 273
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 274
    move-result-object v7

    .line 275
    .line 276
    .line 277
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 278
    move-result-object v7

    .line 279
    .line 280
    .line 281
    const v8, 0x7f0704de

    .line 282
    .line 283
    .line 284
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 285
    move-result v7

    .line 286
    .line 287
    mul-int/lit8 v8, v5, 0x2

    .line 288
    .line 289
    .line 290
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 291
    move-result-object v9

    .line 292
    .line 293
    .line 294
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 295
    move-result-object v9

    .line 296
    .line 297
    .line 298
    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 299
    move-result v9

    .line 300
    add-int/2addr v8, v9

    .line 301
    .line 302
    iget-object v9, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->videoPlayView:Lcom/narvii/chat/screenroom/widgets/VideoPlayView;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 306
    move-result-object v9

    .line 307
    .line 308
    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 309
    .line 310
    iput v3, v9, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 311
    .line 312
    .line 313
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 314
    move-result-object v10

    .line 315
    .line 316
    .line 317
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 318
    move-result-object v10

    .line 319
    .line 320
    .line 321
    const v11, 0x7f07054c

    .line 322
    .line 323
    .line 324
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 325
    move-result v10

    .line 326
    .line 327
    iput v10, v9, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 328
    .line 329
    .line 330
    invoke-virtual {v9, v4, v8, v4, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 331
    .line 332
    iget-object v10, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->videoPlayView:Lcom/narvii/chat/screenroom/widgets/VideoPlayView;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v10, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 336
    .line 337
    iget-object v9, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->videoPlayView:Lcom/narvii/chat/screenroom/widgets/VideoPlayView;

    .line 338
    const/4 v10, 0x1

    .line 339
    .line 340
    .line 341
    invoke-virtual {v9, v10}, Lcom/narvii/widget/RoundFrameLayout;->setShouldClip(Z)V

    .line 342
    .line 343
    iget-object v9, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->hostItemContainer:Lcom/narvii/widget/RoundFrameLayout;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 347
    move-result-object v9

    .line 348
    .line 349
    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 350
    .line 351
    iput v3, v9, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 352
    .line 353
    .line 354
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 355
    move-result-object v12

    .line 356
    .line 357
    .line 358
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 359
    move-result-object v12

    .line 360
    .line 361
    .line 362
    invoke-virtual {v12, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 363
    move-result v12

    .line 364
    .line 365
    iput v12, v9, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 366
    .line 367
    .line 368
    invoke-virtual {v9, v4, v8, v4, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 369
    .line 370
    iget-object v4, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->hostItemContainer:Lcom/narvii/widget/RoundFrameLayout;

    .line 371
    .line 372
    .line 373
    invoke-virtual {v4, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 374
    .line 375
    iget-object v4, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->hostItemContainer:Lcom/narvii/widget/RoundFrameLayout;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v4, v10}, Lcom/narvii/widget/RoundFrameLayout;->setShouldClip(Z)V

    .line 379
    .line 380
    iget-object v4, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->liveUserContainer:Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;

    .line 381
    .line 382
    .line 383
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 384
    move-result-object v4

    .line 385
    .line 386
    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 387
    .line 388
    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 389
    .line 390
    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 391
    .line 392
    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 393
    .line 394
    .line 395
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 396
    move-result-object v3

    .line 397
    .line 398
    .line 399
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 400
    move-result-object v3

    .line 401
    .line 402
    .line 403
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 404
    move-result v2

    .line 405
    .line 406
    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 407
    .line 408
    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->liveUserContainer:Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;

    .line 409
    .line 410
    .line 411
    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 412
    .line 413
    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->repEarningCompositeView:Landroid/view/View;

    .line 414
    .line 415
    .line 416
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 417
    move-result-object v2

    .line 418
    .line 419
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 420
    .line 421
    .line 422
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 423
    move-result-object v3

    .line 424
    .line 425
    .line 426
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 427
    move-result-object v3

    .line 428
    .line 429
    .line 430
    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 431
    move-result v3

    .line 432
    add-int/2addr v3, v8

    .line 433
    add-int/2addr v3, v7

    .line 434
    .line 435
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 436
    .line 437
    .line 438
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 439
    move-result-object v3

    .line 440
    .line 441
    .line 442
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 443
    move-result-object v3

    .line 444
    .line 445
    .line 446
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 447
    move-result v3

    .line 448
    .line 449
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 450
    .line 451
    .line 452
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 453
    move-result-object v3

    .line 454
    .line 455
    .line 456
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 457
    move-result-object v3

    .line 458
    .line 459
    .line 460
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 461
    move-result v3

    .line 462
    .line 463
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 464
    .line 465
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 466
    .line 467
    iget-object v3, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->repEarningCompositeView:Landroid/view/View;

    .line 468
    .line 469
    .line 470
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 471
    .line 472
    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->repEarningCompositeView:Landroid/view/View;

    .line 473
    .line 474
    .line 475
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 476
    .line 477
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->miniIndicatorView:Landroid/view/View;

    .line 478
    .line 479
    .line 480
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 481
    move-result-object v0

    .line 482
    .line 483
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 484
    .line 485
    .line 486
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 487
    move-result-object v2

    .line 488
    .line 489
    .line 490
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 491
    move-result-object v2

    .line 492
    .line 493
    .line 494
    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 495
    move-result v2

    .line 496
    add-int/2addr v8, v2

    .line 497
    add-int/2addr v8, v7

    .line 498
    .line 499
    iput v8, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 500
    .line 501
    .line 502
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 503
    move-result-object v2

    .line 504
    .line 505
    .line 506
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 507
    move-result-object v2

    .line 508
    .line 509
    .line 510
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 511
    move-result v2

    .line 512
    .line 513
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 514
    .line 515
    .line 516
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 517
    move-result-object v2

    .line 518
    .line 519
    .line 520
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 521
    move-result-object v2

    .line 522
    .line 523
    .line 524
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 525
    move-result v2

    .line 526
    .line 527
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 528
    .line 529
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 530
    .line 531
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->miniIndicatorView:Landroid/view/View;

    .line 532
    .line 533
    .line 534
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 535
    .line 536
    .line 537
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->updateMiniIndicatorView()V

    .line 538
    .line 539
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->videoController:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 540
    .line 541
    .line 542
    invoke-virtual {v0, v10}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->updateStatusBar(Z)V

    .line 543
    .line 544
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->viewerVideoController:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 545
    .line 546
    .line 547
    invoke-virtual {v0, v10}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->updateStatusBar(Z)V

    .line 548
    .line 549
    :goto_1
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->videoController:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 550
    .line 551
    .line 552
    invoke-virtual {v0, p1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->setLandScape(Z)V

    .line 553
    .line 554
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->viewerVideoController:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 555
    .line 556
    .line 557
    invoke-virtual {v0, p1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->setLandScape(Z)V

    .line 558
    .line 559
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->liveUserContainer:Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;

    .line 560
    .line 561
    .line 562
    invoke-virtual {v0, p1}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->setLandscape(Z)V

    .line 563
    return-void
.end method

.method public setLiveUserItemClickListener(Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$ParticipantItemClickListener;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->itemClickListener:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$ParticipantItemClickListener;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->liveUserContainer:Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->setItemClickListener(Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$ParticipantItemClickListener;)V

    .line 10
    :cond_0
    return-void
.end method

.method public setUpVideoPlayListener(Lcom/narvii/chat/screenroom/ScreenRoomService;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->videoPlayView:Lcom/narvii/chat/screenroom/widgets/VideoPlayView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->addVideoPlayListener(Lcom/narvii/chat/screenroom/VideoPlayListener;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->videoController:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->addVideoPlayListener(Lcom/narvii/chat/screenroom/VideoPlayListener;)V

    .line 11
    return-void
.end method

.method public setVideoButtonClickListener(Lcom/narvii/chat/screenroom/VideoButtonClickListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->videoController:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->setVideoButtonClickListener(Lcom/narvii/chat/screenroom/VideoButtonClickListener;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->videoPlayView:Lcom/narvii/chat/screenroom/widgets/VideoPlayView;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/narvii/chat/screenroom/widgets/VideoPlayView;->setVideoButtonClickListener(Lcom/narvii/chat/screenroom/VideoButtonClickListener;)V

    .line 11
    return-void
.end method

.method public setupRoomPermission(I)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->roomPermissionType:I

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iput p1, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->roomPermissionType:I

    .line 8
    .line 9
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->liveUserContainer:Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;

    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->roleSet:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    const/4 v0, 0x0

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 v0, 0x4

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->videoController:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->updateViews()V

    .line 25
    return-void
.end method

.method public setupRoomRole(I)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->roleSet:Z

    .line 4
    .line 5
    iput p1, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->roomRole:I

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->liveUserContainer:Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;

    .line 8
    const/4 v2, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->updateMiniIndicatorView()V

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->loading:Landroid/view/View;

    .line 17
    .line 18
    const/16 v3, 0x8

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->seekBarContainer:Landroid/view/View;

    .line 24
    .line 25
    if-ne p1, v0, :cond_0

    .line 26
    move v4, v2

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v4, v3

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->videoPlayView:Lcom/narvii/chat/screenroom/widgets/VideoPlayView;

    .line 34
    .line 35
    if-ne p1, v0, :cond_1

    .line 36
    move v4, v2

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move v4, v3

    .line 39
    .line 40
    .line 41
    :goto_1
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->hostItemContainer:Lcom/narvii/widget/RoundFrameLayout;

    .line 44
    .line 45
    if-ne p1, v0, :cond_2

    .line 46
    move v2, v3

    .line 47
    .line 48
    .line 49
    :cond_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 50
    return-void
.end method

.method public updateHosMuteStatus(Z)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->liveUserContainer:Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->updateHostItem()V

    .line 8
    :cond_0
    return-void
.end method

.method public updateHostVolumeLevel(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->liveUserContainer:Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout;->updateHostVolume(I)V

    .line 6
    return-void
.end method
