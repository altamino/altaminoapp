.class public Lcom/narvii/chat/video/layout/VideoPresenterItemView;
.super Landroid/widget/FrameLayout;
.source "VideoPresenterItemView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/video/layout/VideoPresenterItemView$SubViewClickListener;
    }
.end annotation


# instance fields
.field private attachContainer:Landroid/view/View;

.field private badNetworkIndicator:Landroid/view/View;

.field private badNetworkIndicatorVideoLayer:Landroid/view/View;

.field private cameraFlip:Lcom/narvii/chat/video/view/CheckableImageView;

.field private cameraMuted:Lcom/narvii/chat/video/view/CheckableImageView;

.field public channelUid:I

.field private controllerViewOverlay:Landroid/widget/LinearLayout;

.field private emptyContainer:Landroid/view/View;

.field private imgBadge:Landroid/widget/ImageView;

.field private imgBadgeInfo:Landroid/widget/ImageView;

.field private loadingIndicator:Landroid/widget/ImageView;

.field private localMuteIndicator:Landroid/view/View;

.field private muteIndicator:Landroid/widget/ImageView;

.field private muteIndicatorVideoLayer:Landroid/widget/ImageView;

.field private nicknameContainer:Landroid/view/View;

.field private nicknameInfoContainer:Landroid/view/View;

.field private organizerLabel:Landroid/view/View;

.field private sfContainer:Landroid/widget/FrameLayout;

.field public subViewClickListener:Lcom/narvii/chat/video/layout/VideoPresenterItemView$SubViewClickListener;

.field private tvNickname:Lcom/narvii/widget/NicknameView;

.field private tvNicknameInfo:Lcom/narvii/widget/NicknameView;

.field private userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

.field private userInfoContainer:Landroid/view/View;

.field private userInfoLayerBg:Lcom/narvii/widget/BlurImageView;

.field private userSpeakingView:Lcom/narvii/chat/video/view/UserSpeakingView;

.field private volumeIndicator:Lcom/narvii/widget/VolumeIndicator;

.field private volumeIndicatorVideoLayer:Lcom/narvii/widget/VolumeIndicator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/video/layout/VideoPresenterItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, -0x1

    .line 64
    iput p2, p0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->channelUid:I

    const p2, 0x7f0b046c

    .line 77
    invoke-static {p1, p2, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f090b29

    .line 78
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->sfContainer:Landroid/widget/FrameLayout;

    const p1, 0x7f0903e2

    .line 79
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->emptyContainer:Landroid/view/View;

    const p1, 0x7f090c26

    .line 80
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->userInfoContainer:Landroid/view/View;

    const p1, 0x7f0900c2

    .line 81
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->attachContainer:Landroid/view/View;

    const p1, 0x7f090c24

    .line 83
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/BlurImageView;

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->userInfoLayerBg:Lcom/narvii/widget/BlurImageView;

    const p1, 0x7f090c39

    .line 84
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/video/view/UserSpeakingView;

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->userSpeakingView:Lcom/narvii/chat/video/view/UserSpeakingView;

    const p1, 0x7f090c10

    .line 85
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/UserAvatarLayout;

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    const p1, 0x7f090cc4

    .line 86
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/VolumeIndicator;

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->volumeIndicator:Lcom/narvii/widget/VolumeIndicator;

    const p1, 0x7f09069c

    .line 87
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->localMuteIndicator:Landroid/view/View;

    const p1, 0x7f090112

    .line 88
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->badNetworkIndicator:Landroid/view/View;

    const p1, 0x7f090745

    .line 89
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->muteIndicator:Landroid/widget/ImageView;

    const p1, 0x7f090697

    .line 90
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->loadingIndicator:Landroid/widget/ImageView;

    const p1, 0x7f090cc8

    .line 92
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/VolumeIndicator;

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->volumeIndicatorVideoLayer:Lcom/narvii/widget/VolumeIndicator;

    const p1, 0x7f090746

    .line 93
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->muteIndicatorVideoLayer:Landroid/widget/ImageView;

    const p1, 0x7f090114

    .line 94
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->badNetworkIndicatorVideoLayer:Landroid/view/View;

    const p1, 0x7f090764

    .line 96
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NicknameView;

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->tvNickname:Lcom/narvii/widget/NicknameView;

    const p1, 0x7f090766

    .line 97
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->imgBadge:Landroid/widget/ImageView;

    const p1, 0x7f09076b

    .line 98
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NicknameView;

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->tvNicknameInfo:Lcom/narvii/widget/NicknameView;

    const p1, 0x7f090767

    .line 99
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->imgBadgeInfo:Landroid/widget/ImageView;

    const p1, 0x7f0907fd

    .line 100
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->organizerLabel:Landroid/view/View;

    const p1, 0x7f09076a

    .line 101
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->nicknameContainer:Landroid/view/View;

    const p1, 0x7f090768

    .line 102
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->nicknameInfoContainer:Landroid/view/View;

    const p1, 0x7f0902e3

    .line 105
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->controllerViewOverlay:Landroid/widget/LinearLayout;

    .line 106
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->controllerViewOverlay:Landroid/widget/LinearLayout;

    const p2, 0x7f090191

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/video/view/CheckableImageView;

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->cameraMuted:Lcom/narvii/chat/video/view/CheckableImageView;

    .line 107
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->cameraMuted:Lcom/narvii/chat/video/view/CheckableImageView;

    new-instance p2, Lcom/narvii/chat/video/layout/-$$Lambda$VideoPresenterItemView$9TnCxtf8HDDTW-7xVxy4f92u_OE;

    invoke-direct {p2, p0}, Lcom/narvii/chat/video/layout/-$$Lambda$VideoPresenterItemView$9TnCxtf8HDDTW-7xVxy4f92u_OE;-><init>(Lcom/narvii/chat/video/layout/VideoPresenterItemView;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->controllerViewOverlay:Landroid/widget/LinearLayout;

    const p2, 0x7f090190

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/video/view/CheckableImageView;

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->cameraFlip:Lcom/narvii/chat/video/view/CheckableImageView;

    .line 111
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->cameraFlip:Lcom/narvii/chat/video/view/CheckableImageView;

    new-instance p2, Lcom/narvii/chat/video/layout/-$$Lambda$VideoPresenterItemView$ojWD3vNInZkNUlz6aYvbTHA9aYM;

    invoke-direct {p2, p0}, Lcom/narvii/chat/video/layout/-$$Lambda$VideoPresenterItemView$ojWD3vNInZkNUlz6aYvbTHA9aYM;-><init>(Lcom/narvii/chat/video/layout/VideoPresenterItemView;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    new-instance p1, Lcom/narvii/chat/video/layout/-$$Lambda$VideoPresenterItemView$Uwj0pI-XBJNqsPHkEwtqGAsfo04;

    invoke-direct {p1, p0}, Lcom/narvii/chat/video/layout/-$$Lambda$VideoPresenterItemView$Uwj0pI-XBJNqsPHkEwtqGAsfo04;-><init>(Lcom/narvii/chat/video/layout/VideoPresenterItemView;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/chat/video/layout/VideoPresenterItemView;)Lcom/narvii/widget/BlurImageView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->userInfoLayerBg:Lcom/narvii/widget/BlurImageView;

    return-object p0
.end method

.method private subViewIsClicked(Landroid/view/View;)V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->subViewClickListener:Lcom/narvii/chat/video/layout/VideoPresenterItemView$SubViewClickListener;

    if-eqz v0, :cond_0

    .line 122
    invoke-interface {v0, p1}, Lcom/narvii/chat/video/layout/VideoPresenterItemView$SubViewClickListener;->onSubViewCliekedd(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$VideoPresenterItemView(Landroid/view/View;)V
    .locals 0

    .line 108
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->subViewIsClicked(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$new$1$VideoPresenterItemView(Landroid/view/View;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->subViewIsClicked(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$new$2$VideoPresenterItemView(Landroid/view/View;)V
    .locals 0

    .line 116
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->subViewClickListener:Lcom/narvii/chat/video/layout/VideoPresenterItemView$SubViewClickListener;

    invoke-interface {p1, p0}, Lcom/narvii/chat/video/layout/VideoPresenterItemView$SubViewClickListener;->onSubViewCliekedd(Landroid/view/View;)V

    return-void
.end method

.method public stripView(Landroid/view/View;)V
    .locals 1

    .line 231
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 233
    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public updatePresenter(Lcom/narvii/chat/rtc/ChannelUserWrapper;ZZZZZZ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    const/4 v3, -0x1

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-nez v1, :cond_0

    .line 129
    iput v3, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->channelUid:I

    .line 130
    iget-object v1, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->emptyContainer:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 131
    iget-object v1, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->sfContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 132
    iget-object v1, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->sfContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 133
    iget-object v1, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->userInfoContainer:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 134
    iget-object v1, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->attachContainer:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 135
    iget-object v1, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->controllerViewOverlay:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 136
    iget-object v1, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->userSpeakingView:Lcom/narvii/chat/video/view/UserSpeakingView;

    invoke-virtual {v1, v5}, Lcom/narvii/chat/video/view/UserSpeakingView;->setVolumeLevel(I)V

    .line 137
    iget-object v1, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->volumeIndicator:Lcom/narvii/widget/VolumeIndicator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v5}, Lcom/narvii/widget/VolumeIndicator;->setValue(FZ)V

    .line 138
    iget-object v1, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->volumeIndicatorVideoLayer:Lcom/narvii/widget/VolumeIndicator;

    invoke-virtual {v1, v2, v5}, Lcom/narvii/widget/VolumeIndicator;->setValue(FZ)V

    return-void

    .line 141
    :cond_0
    iget v6, v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    iput v6, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->channelUid:I

    .line 142
    iget-object v6, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->emptyContainer:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 143
    iget-object v6, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->sfContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 144
    iget-object v6, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->userInfoContainer:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 145
    iget-object v6, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->attachContainer:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 147
    iget-object v6, v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    .line 148
    iget-object v7, v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-nez v7, :cond_1

    const/4 v7, 0x0

    goto :goto_0

    :cond_1
    iget-object v7, v7, Lcom/narvii/chat/signalling/ChannelUser;->userProfile:Lcom/narvii/model/User;

    .line 150
    :goto_0
    iget v1, v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->status:I

    const/4 v8, 0x1

    if-ne v1, v8, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v6, :cond_3

    .line 151
    invoke-virtual {v6}, Lcom/narvii/video/ui/UserStatusData;->isBadNetwork()Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    :goto_2
    if-eqz v6, :cond_4

    .line 152
    invoke-virtual {v6}, Lcom/narvii/video/ui/UserStatusData;->isVoiceMuted()Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v10, 0x1

    goto :goto_3

    :cond_4
    const/4 v10, 0x0

    :goto_3
    if-eqz v6, :cond_5

    .line 153
    invoke-virtual {v6}, Lcom/narvii/video/ui/UserStatusData;->isVideoMuted()Z

    move-result v11

    if-eqz v11, :cond_5

    const/4 v11, 0x1

    goto :goto_4

    :cond_5
    const/4 v11, 0x0

    :goto_4
    if-eqz p2, :cond_6

    if-eqz p3, :cond_6

    const/4 v12, 0x1

    goto :goto_5

    :cond_6
    const/4 v12, 0x0

    :goto_5
    if-nez v11, :cond_8

    if-nez p5, :cond_8

    if-nez v1, :cond_7

    if-nez v12, :cond_7

    goto :goto_6

    :cond_7
    const/4 v12, 0x0

    goto :goto_7

    :cond_8
    :goto_6
    const/4 v12, 0x1

    .line 157
    :goto_7
    iget-object v13, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->userInfoContainer:Landroid/view/View;

    if-eqz v12, :cond_9

    const/4 v14, 0x0

    goto :goto_8

    :cond_9
    const/16 v14, 0x8

    :goto_8
    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    if-nez v11, :cond_b

    if-eqz v6, :cond_c

    .line 159
    iget-object v13, v6, Lcom/narvii/video/ui/UserStatusData;->mView:Landroid/view/SurfaceView;

    if-eqz v13, :cond_c

    iget-object v13, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->sfContainer:Landroid/widget/FrameLayout;

    .line 160
    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v13

    if-eqz v13, :cond_a

    iget-object v13, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->sfContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v13, v5}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    iget-object v14, v6, Lcom/narvii/video/ui/UserStatusData;->mView:Landroid/view/SurfaceView;

    if-eq v13, v14, :cond_c

    .line 161
    :cond_a
    iget-object v13, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->sfContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 162
    iget-object v13, v6, Lcom/narvii/video/ui/UserStatusData;->mView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v13}, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->stripView(Landroid/view/View;)V

    .line 163
    iget-object v13, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->sfContainer:Landroid/widget/FrameLayout;

    iget-object v14, v6, Lcom/narvii/video/ui/UserStatusData;->mView:Landroid/view/SurfaceView;

    invoke-virtual {v13, v14}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_9

    .line 166
    :cond_b
    iget-object v13, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->sfContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->removeAllViews()V

    :cond_c
    :goto_9
    if-eqz v6, :cond_e

    if-nez v10, :cond_e

    if-eqz p5, :cond_d

    goto :goto_a

    .line 169
    :cond_d
    invoke-virtual {v6}, Lcom/narvii/video/ui/UserStatusData;->getCurVolumeLevel()I

    move-result v6

    goto :goto_b

    :cond_e
    :goto_a
    const/4 v6, 0x0

    .line 170
    :goto_b
    iget-object v13, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->volumeIndicator:Lcom/narvii/widget/VolumeIndicator;

    if-eqz v1, :cond_f

    if-nez p5, :cond_f

    if-nez v10, :cond_f

    if-eqz v11, :cond_f

    const/4 v14, 0x0

    goto :goto_c

    :cond_f
    const/16 v14, 0x8

    :goto_c
    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 171
    iget-object v13, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->volumeIndicator:Lcom/narvii/widget/VolumeIndicator;

    int-to-float v14, v6

    const/high16 v15, 0x40800000    # 4.0f

    div-float/2addr v14, v15

    invoke-virtual {v13, v14, v8}, Lcom/narvii/widget/VolumeIndicator;->setValue(FZ)V

    .line 172
    iget-object v13, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->volumeIndicatorVideoLayer:Lcom/narvii/widget/VolumeIndicator;

    if-nez v12, :cond_10

    if-eqz v1, :cond_10

    if-nez v10, :cond_10

    const/4 v15, 0x0

    goto :goto_d

    :cond_10
    const/16 v15, 0x8

    :goto_d
    invoke-virtual {v13, v15}, Landroid/view/View;->setVisibility(I)V

    .line 173
    iget-object v13, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->volumeIndicatorVideoLayer:Lcom/narvii/widget/VolumeIndicator;

    invoke-virtual {v13, v14, v8}, Lcom/narvii/widget/VolumeIndicator;->setValue(FZ)V

    if-nez p5, :cond_11

    if-nez v10, :cond_11

    if-nez v12, :cond_12

    :cond_11
    const/4 v6, 0x0

    .line 176
    :cond_12
    iget-object v13, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->userSpeakingView:Lcom/narvii/chat/video/view/UserSpeakingView;

    invoke-virtual {v13, v6}, Lcom/narvii/chat/video/view/UserSpeakingView;->setVolumeLevel(I)V

    .line 177
    iget-object v13, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->userSpeakingView:Lcom/narvii/chat/video/view/UserSpeakingView;

    if-eqz p2, :cond_13

    if-nez v1, :cond_13

    const/4 v14, 0x1

    goto :goto_e

    :cond_13
    const/4 v14, 0x0

    :goto_e
    invoke-virtual {v13, v14}, Lcom/narvii/chat/video/view/UserSpeakingView;->setPendingSpeakingMode(Z)V

    const v13, 0x7f0900e4

    .line 179
    invoke-virtual {v0, v13}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/narvii/widget/NVImageView;

    new-instance v14, Lcom/narvii/chat/video/layout/VideoPresenterItemView$1;

    invoke-direct {v14, v0}, Lcom/narvii/chat/video/layout/VideoPresenterItemView$1;-><init>(Lcom/narvii/chat/video/layout/VideoPresenterItemView;)V

    invoke-virtual {v13, v14}, Lcom/narvii/widget/NVImageView;->setOnImageChangedListener(Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    .line 188
    iget-object v13, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    if-eqz p2, :cond_14

    if-eqz v1, :cond_15

    :cond_14
    if-lez v6, :cond_15

    goto :goto_f

    :cond_15
    const/4 v8, 0x0

    :goto_f
    invoke-virtual {v13, v8}, Lcom/narvii/widget/UserAvatarLayout;->showAudioStroke(Z)V

    .line 189
    iget-object v6, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    invoke-virtual {v6, v7, v2}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;Z)V

    .line 191
    iget-object v6, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->tvNickname:Lcom/narvii/widget/NicknameView;

    invoke-virtual {v6, v7}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 192
    iget-object v6, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->tvNicknameInfo:Lcom/narvii/widget/NicknameView;

    invoke-virtual {v6, v7}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    if-eqz p2, :cond_16

    .line 194
    iget-object v6, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->tvNickname:Lcom/narvii/widget/NicknameView;

    const v7, 0x7f0f0b28

    invoke-virtual {v6, v7}, Lcom/narvii/widget/NicknameView;->setText(I)V

    .line 195
    iget-object v6, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->tvNicknameInfo:Lcom/narvii/widget/NicknameView;

    invoke-virtual {v6, v7}, Lcom/narvii/widget/NicknameView;->setText(I)V

    .line 197
    :cond_16
    iget-object v6, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->nicknameContainer:Landroid/view/View;

    if-nez p7, :cond_18

    if-nez p2, :cond_18

    if-eqz v11, :cond_17

    goto :goto_10

    :cond_17
    const/4 v7, 0x0

    goto :goto_11

    :cond_18
    :goto_10
    const/16 v7, 0x8

    :goto_11
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 198
    iget-object v6, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->nicknameInfoContainer:Landroid/view/View;

    if-nez p2, :cond_1a

    if-eqz v11, :cond_1a

    if-eqz p7, :cond_19

    goto :goto_12

    :cond_19
    const/4 v7, 0x0

    goto :goto_13

    :cond_1a
    :goto_12
    const/16 v7, 0x8

    :goto_13
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 199
    iget-object v6, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->imgBadge:Landroid/widget/ImageView;

    if-eqz v2, :cond_1b

    const/4 v7, 0x0

    goto :goto_14

    :cond_1b
    const/16 v7, 0x8

    :goto_14
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 200
    iget-object v6, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->imgBadgeInfo:Landroid/widget/ImageView;

    if-eqz v2, :cond_1c

    const/4 v2, 0x0

    goto :goto_15

    :cond_1c
    const/16 v2, 0x8

    :goto_15
    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 201
    iget-object v2, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->localMuteIndicator:Landroid/view/View;

    if-eqz p5, :cond_1d

    const/4 v6, 0x0

    goto :goto_16

    :cond_1d
    const/16 v6, 0x8

    :goto_16
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 202
    iget-object v2, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->badNetworkIndicator:Landroid/view/View;

    if-eqz v12, :cond_1e

    if-nez p5, :cond_1e

    if-eqz v9, :cond_1e

    if-nez v10, :cond_1e

    const/4 v6, 0x0

    goto :goto_17

    :cond_1e
    const/16 v6, 0x8

    :goto_17
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 203
    iget-object v2, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->badNetworkIndicatorVideoLayer:Landroid/view/View;

    if-nez v12, :cond_1f

    if-eqz v9, :cond_1f

    if-nez v10, :cond_1f

    const/4 v6, 0x0

    goto :goto_18

    :cond_1f
    const/16 v6, 0x8

    :goto_18
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 204
    iget-object v2, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->muteIndicator:Landroid/widget/ImageView;

    if-nez p5, :cond_20

    if-eqz v10, :cond_20

    const/4 v6, 0x0

    goto :goto_19

    :cond_20
    const/16 v6, 0x8

    :goto_19
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 205
    iget-object v2, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->muteIndicatorVideoLayer:Landroid/widget/ImageView;

    if-nez v12, :cond_21

    if-eqz v10, :cond_21

    const/4 v6, 0x0

    goto :goto_1a

    :cond_21
    const/16 v6, 0x8

    :goto_1a
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 206
    iget-object v2, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->organizerLabel:Landroid/view/View;

    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 208
    iget-object v2, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->controllerViewOverlay:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_22

    const/4 v6, 0x0

    goto :goto_1b

    :cond_22
    const/16 v6, 0x8

    :goto_1b
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 209
    iget-object v2, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->cameraMuted:Lcom/narvii/chat/video/view/CheckableImageView;

    invoke-virtual {v2, v11}, Lcom/narvii/chat/video/view/CheckableImageView;->setChecked(Z)V

    .line 211
    iget-object v2, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->loadingIndicator:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v2, v2, Lcom/narvii/widget/SpinDrawable;

    if-eqz v2, :cond_23

    .line 212
    iget-object v2, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->loadingIndicator:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Lcom/narvii/widget/SpinDrawable;

    goto :goto_1c

    .line 214
    :cond_23
    new-instance v2, Lcom/narvii/widget/SpinDrawable;

    invoke-direct {v2}, Lcom/narvii/widget/SpinDrawable;-><init>()V

    .line 215
    invoke-virtual {v2, v3}, Lcom/narvii/widget/SpinDrawable;->setLoadingColor(I)V

    .line 216
    iget-object v3, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->loadingIndicator:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1c
    if-nez v1, :cond_26

    if-nez p5, :cond_26

    if-nez p2, :cond_26

    if-eqz v11, :cond_24

    goto :goto_1d

    .line 222
    :cond_24
    invoke-virtual {v2}, Lcom/narvii/widget/SpinDrawable;->isRunning()Z

    move-result v1

    if-nez v1, :cond_25

    .line 223
    invoke-virtual {v2}, Lcom/narvii/widget/SpinDrawable;->start()V

    .line 225
    :cond_25
    iget-object v1, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->loadingIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1e

    .line 219
    :cond_26
    :goto_1d
    invoke-virtual {v2}, Lcom/narvii/widget/SpinDrawable;->stop()V

    .line 220
    iget-object v1, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->loadingIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1e
    return-void
.end method
