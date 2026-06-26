.class public Lcom/narvii/chat/video/layout/VoicePresenterItemView;
.super Landroid/widget/FrameLayout;
.source "VoicePresenterItemView.java"


# instance fields
.field private badNetworkIndicator:Landroid/view/View;

.field public channelUid:I

.field private emptyContainer:Landroid/view/View;

.field private imgBadge:Landroid/widget/ImageView;

.field private loadingIndicator:Landroid/widget/ImageView;

.field private localMuteIndicator:Landroid/view/View;

.field private muteIndicator:Landroid/view/View;

.field private organizerLabel:Landroid/view/View;

.field private tvNickname:Lcom/narvii/widget/NicknameView;

.field private userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

.field private userInfoContainer:Landroid/view/View;

.field private userSpeakingView:Lcom/narvii/chat/video/view/UserSpeakingView;

.field private volumeIndicator:Lcom/narvii/widget/VolumeIndicator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 46
    invoke-direct {p0, p1, v0, v1}, Lcom/narvii/chat/video/layout/VoicePresenterItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, -0x1

    .line 42
    iput p2, p0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->channelUid:I

    if-eqz p3, :cond_0

    const p2, 0x7f0b046e

    goto :goto_0

    :cond_0
    const p2, 0x7f0b046d

    .line 59
    :goto_0
    invoke-static {p1, p2, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 p1, 0x0

    .line 60
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    const p1, 0x7f0903e2

    .line 61
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->emptyContainer:Landroid/view/View;

    const p1, 0x7f0901c8

    .line 62
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->userInfoContainer:Landroid/view/View;

    const p1, 0x7f090c39

    .line 64
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/video/view/UserSpeakingView;

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->userSpeakingView:Lcom/narvii/chat/video/view/UserSpeakingView;

    const p1, 0x7f090c10

    .line 65
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/UserAvatarLayout;

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    const p1, 0x7f09069c

    .line 67
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->localMuteIndicator:Landroid/view/View;

    const p1, 0x7f090112

    .line 68
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->badNetworkIndicator:Landroid/view/View;

    const p1, 0x7f090745

    .line 69
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->muteIndicator:Landroid/view/View;

    const p1, 0x7f090cc4

    .line 71
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/VolumeIndicator;

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->volumeIndicator:Lcom/narvii/widget/VolumeIndicator;

    const p1, 0x7f090697

    .line 72
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->loadingIndicator:Landroid/widget/ImageView;

    const p1, 0x7f090764

    .line 74
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NicknameView;

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->tvNickname:Lcom/narvii/widget/NicknameView;

    const p1, 0x7f090766

    .line 75
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->imgBadge:Landroid/widget/ImageView;

    const p1, 0x7f0907fb

    .line 76
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->organizerLabel:Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, v0, p2}, Lcom/narvii/chat/video/layout/VoicePresenterItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    return-void
.end method


# virtual methods
.method public updatePresenter(Lcom/narvii/chat/rtc/ChannelUserWrapper;ZZZZ)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p3

    const/4 v3, -0x1

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-nez v1, :cond_0

    .line 81
    iput v3, v0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->channelUid:I

    .line 82
    iget-object v1, v0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->emptyContainer:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 83
    iget-object v1, v0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->userInfoContainer:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 84
    iget-object v1, v0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->userSpeakingView:Lcom/narvii/chat/video/view/UserSpeakingView;

    invoke-virtual {v1, v5}, Lcom/narvii/chat/video/view/UserSpeakingView;->setVolumeLevel(I)V

    .line 85
    iget-object v1, v0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->volumeIndicator:Lcom/narvii/widget/VolumeIndicator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v5}, Lcom/narvii/widget/VolumeIndicator;->setValue(FZ)V

    return-void

    .line 88
    :cond_0
    iget-object v6, v0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->emptyContainer:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 89
    iget-object v6, v0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->userInfoContainer:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 90
    iget v6, v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    iput v6, v0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->channelUid:I

    .line 92
    iget-object v6, v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    .line 93
    iget-object v7, v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-nez v7, :cond_1

    const/4 v7, 0x0

    goto :goto_0

    :cond_1
    iget-object v7, v7, Lcom/narvii/chat/signalling/ChannelUser;->userProfile:Lcom/narvii/model/User;

    :goto_0
    const/4 v8, 0x1

    if-eqz v6, :cond_2

    .line 95
    invoke-virtual {v6}, Lcom/narvii/video/ui/UserStatusData;->isBadNetwork()Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    :goto_1
    if-eqz v6, :cond_3

    .line 96
    invoke-virtual {v6}, Lcom/narvii/video/ui/UserStatusData;->isVoiceMuted()Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    goto :goto_2

    :cond_3
    const/4 v10, 0x0

    .line 97
    :goto_2
    iget v1, v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->status:I

    if-ne v1, v8, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    .line 99
    :goto_3
    iget-object v11, v0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->tvNickname:Lcom/narvii/widget/NicknameView;

    invoke-virtual {v11, v7}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    if-eqz p2, :cond_5

    .line 101
    iget-object v11, v0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->tvNickname:Lcom/narvii/widget/NicknameView;

    const v12, 0x7f0f0b28

    invoke-virtual {v11, v12}, Lcom/narvii/widget/NicknameView;->setText(I)V

    .line 104
    :cond_5
    iget-object v11, v0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->imgBadge:Landroid/widget/ImageView;

    if-eqz v2, :cond_6

    const/4 v12, 0x0

    goto :goto_4

    :cond_6
    const/16 v12, 0x8

    :goto_4
    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 105
    iget-object v11, v0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->volumeIndicator:Lcom/narvii/widget/VolumeIndicator;

    if-eqz v1, :cond_7

    if-nez p4, :cond_7

    if-nez v10, :cond_7

    const/4 v12, 0x0

    goto :goto_5

    :cond_7
    const/16 v12, 0x8

    :goto_5
    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    if-eqz v6, :cond_9

    if-nez v10, :cond_9

    if-eqz p4, :cond_8

    goto :goto_6

    .line 106
    :cond_8
    invoke-virtual {v6}, Lcom/narvii/video/ui/UserStatusData;->getCurVolumeLevel()I

    move-result v6

    goto :goto_7

    :cond_9
    :goto_6
    const/4 v6, 0x0

    .line 107
    :goto_7
    iget-object v11, v0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->volumeIndicator:Lcom/narvii/widget/VolumeIndicator;

    int-to-float v12, v6

    const/high16 v13, 0x40800000    # 4.0f

    div-float/2addr v12, v13

    invoke-virtual {v11, v12, v8}, Lcom/narvii/widget/VolumeIndicator;->setValue(FZ)V

    if-nez p4, :cond_b

    if-eqz v10, :cond_a

    goto :goto_8

    :cond_a
    if-eqz p2, :cond_c

    if-nez v1, :cond_c

    const/4 v6, 0x1

    goto :goto_9

    :cond_b
    :goto_8
    const/4 v6, 0x0

    .line 110
    :cond_c
    :goto_9
    iget-object v11, v0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->userSpeakingView:Lcom/narvii/chat/video/view/UserSpeakingView;

    invoke-virtual {v11, v6}, Lcom/narvii/chat/video/view/UserSpeakingView;->setVolumeLevel(I)V

    .line 111
    iget-object v11, v0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->userSpeakingView:Lcom/narvii/chat/video/view/UserSpeakingView;

    if-eqz p2, :cond_d

    if-nez v1, :cond_d

    const/4 v12, 0x1

    goto :goto_a

    :cond_d
    const/4 v12, 0x0

    :goto_a
    invoke-virtual {v11, v12}, Lcom/narvii/chat/video/view/UserSpeakingView;->setPendingSpeakingMode(Z)V

    .line 113
    iget-object v11, v0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    invoke-virtual {v11, v7, v2}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;Z)V

    .line 114
    iget-object v2, v0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    if-eqz p2, :cond_e

    if-eqz v1, :cond_f

    :cond_e
    if-lez v6, :cond_f

    goto :goto_b

    :cond_f
    const/4 v8, 0x0

    :goto_b
    invoke-virtual {v2, v8}, Lcom/narvii/widget/UserAvatarLayout;->showAudioStroke(Z)V

    .line 116
    iget-object v2, v0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->localMuteIndicator:Landroid/view/View;

    if-eqz p4, :cond_10

    const/4 v6, 0x0

    goto :goto_c

    :cond_10
    const/16 v6, 0x8

    :goto_c
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 117
    iget-object v2, v0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->muteIndicator:Landroid/view/View;

    if-nez p4, :cond_11

    if-eqz v10, :cond_11

    const/4 v6, 0x0

    goto :goto_d

    :cond_11
    const/16 v6, 0x8

    :goto_d
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 118
    iget-object v2, v0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->badNetworkIndicator:Landroid/view/View;

    if-eqz v9, :cond_12

    const/4 v6, 0x0

    goto :goto_e

    :cond_12
    const/16 v6, 0x8

    :goto_e
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 119
    iget-object v2, v0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->organizerLabel:Landroid/view/View;

    if-eqz p5, :cond_13

    const/4 v6, 0x0

    goto :goto_f

    :cond_13
    const/4 v6, 0x4

    :goto_f
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 122
    iget-object v2, v0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->loadingIndicator:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v2, v2, Lcom/narvii/widget/SpinDrawable;

    if-eqz v2, :cond_14

    .line 123
    iget-object v2, v0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->loadingIndicator:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Lcom/narvii/widget/SpinDrawable;

    goto :goto_10

    .line 125
    :cond_14
    new-instance v2, Lcom/narvii/widget/SpinDrawable;

    invoke-direct {v2}, Lcom/narvii/widget/SpinDrawable;-><init>()V

    .line 126
    invoke-virtual {v2, v3}, Lcom/narvii/widget/SpinDrawable;->setLoadingColor(I)V

    .line 127
    iget-object v3, v0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->loadingIndicator:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_10
    if-nez v1, :cond_17

    if-nez p4, :cond_17

    if-eqz p2, :cond_15

    goto :goto_11

    .line 133
    :cond_15
    invoke-virtual {v2}, Lcom/narvii/widget/SpinDrawable;->isRunning()Z

    move-result v1

    if-nez v1, :cond_16

    .line 134
    invoke-virtual {v2}, Lcom/narvii/widget/SpinDrawable;->start()V

    .line 136
    :cond_16
    iget-object v1, v0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->loadingIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_12

    .line 130
    :cond_17
    :goto_11
    invoke-virtual {v2}, Lcom/narvii/widget/SpinDrawable;->stop()V

    .line 131
    iget-object v1, v0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->loadingIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_12
    return-void
.end method
