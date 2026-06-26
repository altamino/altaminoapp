.class public Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;
.super Landroid/widget/FrameLayout;
.source "SRPresenterItemView.java"


# instance fields
.field private badNetWorkIndicator:Landroid/view/View;

.field private channelUserWrapper:Lcom/narvii/chat/rtc/ChannelUserWrapper;

.field private hostLabelView:Landroid/widget/TextView;

.field private hostVolumeLevel:I

.field private imgJoinLoading:Landroid/widget/ImageView;

.field private imgVolumeLevelMid:Lcom/narvii/widget/VolumeIndicator;

.field private isHost:Z

.field public isHostView:Z

.field private isLocalMute:Z

.field private localChannelUid:I

.field private localMuteIndicator:Landroid/view/View;

.field private offlineView:Landroid/widget/ImageView;

.field screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

.field private showVideo:Z

.field private speakingView:Lcom/narvii/chat/video/view/UserSpeakingView;

.field private textOnly:Z

.field private userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

.field private voiceMute:Landroid/view/View;

.field private voiceMuteHost:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, -0x1

    .line 38
    iput p2, p0, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->localChannelUid:I

    .line 60
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "screenRoom"

    .line 62
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/screenroom/ScreenRoomService;

    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    :cond_0
    return-void
.end method

.method private updateLoadingView(Landroid/widget/ImageView;ZZZZZ)V
    .locals 2

    .line 182
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/widget/SpinDrawable;

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/SpinDrawable;

    goto :goto_0

    .line 185
    :cond_0
    new-instance v0, Lcom/narvii/widget/SpinDrawable;

    invoke-direct {v0}, Lcom/narvii/widget/SpinDrawable;-><init>()V

    const/4 v1, -0x1

    .line 186
    invoke-virtual {v0, v1}, Lcom/narvii/widget/SpinDrawable;->setLoadingColor(I)V

    .line 187
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    if-nez p2, :cond_3

    if-nez p3, :cond_3

    if-nez p4, :cond_3

    if-nez p5, :cond_3

    if-nez p6, :cond_1

    goto :goto_1

    .line 193
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/widget/SpinDrawable;->isRunning()Z

    move-result p2

    if-nez p2, :cond_2

    .line 194
    invoke-virtual {v0}, Lcom/narvii/widget/SpinDrawable;->start()V

    :cond_2
    const/4 p2, 0x0

    .line 196
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 190
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/narvii/widget/SpinDrawable;->stop()V

    const/16 p2, 0x8

    .line 191
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 68
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f09069b

    .line 69
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->localMuteIndicator:Landroid/view/View;

    const v0, 0x7f090111

    .line 70
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->badNetWorkIndicator:Landroid/view/View;

    const v0, 0x7f090cc7

    .line 71
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/VolumeIndicator;

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->imgVolumeLevelMid:Lcom/narvii/widget/VolumeIndicator;

    const v0, 0x7f090cba

    .line 72
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->voiceMute:Landroid/view/View;

    const v0, 0x7f090cbb

    .line 73
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->voiceMuteHost:Landroid/view/View;

    const v0, 0x7f090c10

    .line 74
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    const v0, 0x7f090c39

    .line 75
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/video/view/UserSpeakingView;

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->speakingView:Lcom/narvii/chat/video/view/UserSpeakingView;

    const v0, 0x7f090611

    .line 76
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->imgJoinLoading:Landroid/widget/ImageView;

    const v0, 0x7f090525

    .line 77
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->hostLabelView:Landroid/widget/TextView;

    const v0, 0x7f0907a5

    .line 78
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->offlineView:Landroid/widget/ImageView;

    return-void
.end method

.method public setHostVolumeLevel(I)V
    .locals 0

    .line 201
    iput p1, p0, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->hostVolumeLevel:I

    return-void
.end method

.method public setLocalUid(I)V
    .locals 0

    .line 82
    iput p1, p0, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->localChannelUid:I

    return-void
.end method

.method public setTextOnly(Z)V
    .locals 0

    .line 86
    iput-boolean p1, p0, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->textOnly:Z

    return-void
.end method

.method public updateView(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/rtc/ChannelUserWrapper;ZZZLjava/lang/String;)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    if-eqz v1, :cond_1d

    if-nez v0, :cond_0

    goto/16 :goto_16

    .line 107
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/narvii/chat/rtc/ChannelUserWrapper;->clone()Lcom/narvii/chat/rtc/ChannelUserWrapper;

    move-result-object v5

    iput-object v5, v7, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->channelUserWrapper:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 108
    iput-boolean v2, v7, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->isHost:Z

    .line 109
    iput-boolean v3, v7, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->showVideo:Z

    .line 110
    iput-boolean v4, v7, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->isLocalMute:Z

    .line 113
    iget-object v5, v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    .line 114
    iget v6, v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->status:I

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-ne v6, v8, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    if-eqz v5, :cond_2

    .line 115
    invoke-virtual {v5}, Lcom/narvii/video/ui/UserStatusData;->isVoiceMuted()Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v10, 0x1

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    :goto_1
    if-eqz v5, :cond_3

    .line 116
    invoke-virtual {v5}, Lcom/narvii/video/ui/UserStatusData;->isBadNetwork()Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v11, 0x1

    goto :goto_2

    :cond_3
    const/4 v11, 0x0

    .line 117
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v12

    if-eqz v12, :cond_5

    const-string v14, "account"

    .line 120
    invoke-interface {v12, v14}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/narvii/account/AccountService;

    .line 121
    invoke-virtual {v12}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v12

    iget-object v14, v7, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->channelUserWrapper:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    iget-object v14, v14, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-eqz v14, :cond_4

    invoke-virtual {v14}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    move-result-object v14

    goto :goto_3

    :cond_4
    const/4 v14, 0x0

    :goto_3
    invoke-static {v12, v14}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    goto :goto_4

    :cond_5
    const/4 v12, 0x0

    .line 123
    :goto_4
    iget-object v14, v7, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->channelUserWrapper:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    iget v14, v14, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    iget v15, v7, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->localChannelUid:I

    if-eq v14, v15, :cond_7

    if-eqz v12, :cond_6

    goto :goto_5

    :cond_6
    const/4 v12, 0x0

    goto :goto_6

    :cond_7
    :goto_5
    const/4 v12, 0x1

    :goto_6
    if-eqz v2, :cond_8

    if-nez v3, :cond_8

    const/4 v3, 0x1

    goto :goto_7

    :cond_8
    const/4 v3, 0x0

    :goto_7
    const v14, 0x7f090a83

    .line 126
    iget-object v15, v7, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->channelUserWrapper:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    iget v15, v15, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v14, v15}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 128
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    const/16 v15, 0x8

    if-eqz v14, :cond_9

    .line 129
    iget-object v14, v7, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->hostLabelView:Landroid/widget/TextView;

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8

    .line 131
    :cond_9
    iget-object v14, v7, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->hostLabelView:Landroid/widget/TextView;

    invoke-virtual {v14, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    iget-object v14, v7, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->hostLabelView:Landroid/widget/TextView;

    move-object/from16 v13, p6

    invoke-virtual {v14, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    :goto_8
    iget-object v13, v7, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->channelUserWrapper:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    iget-object v13, v13, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-eqz v13, :cond_a

    iget-object v13, v13, Lcom/narvii/chat/signalling/ChannelUser;->userProfile:Lcom/narvii/model/User;

    goto :goto_9

    :cond_a
    const/4 v13, 0x0

    :goto_9
    if-nez v5, :cond_b

    const/4 v5, 0x0

    goto :goto_a

    .line 136
    :cond_b
    invoke-virtual {v5}, Lcom/narvii/video/ui/UserStatusData;->getCurVolumeLevel()I

    move-result v5

    :goto_a
    if-eqz v3, :cond_f

    .line 137
    iget v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    const/4 v3, 0x5

    if-ne v0, v3, :cond_f

    if-eqz v12, :cond_d

    .line 139
    iget-object v0, v7, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->getLocalMicMuted()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v10, 0x1

    goto :goto_c

    :cond_c
    const/4 v10, 0x0

    goto :goto_c

    .line 141
    :cond_d
    iget-object v0, v7, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->isSrHostMuted()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v10, 0x1

    goto :goto_b

    :cond_e
    const/4 v10, 0x0

    .line 142
    :goto_b
    iget v0, v7, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->hostVolumeLevel:I

    move v5, v0

    .line 147
    :cond_f
    :goto_c
    iget-object v0, v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-eqz v0, :cond_10

    iget v0, v0, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    if-ne v0, v8, :cond_10

    const/4 v14, 0x1

    goto :goto_d

    :cond_10
    const/4 v14, 0x0

    :goto_d
    if-nez v14, :cond_11

    const/4 v5, 0x0

    .line 151
    :cond_11
    iget-object v0, v7, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->voiceMute:Landroid/view/View;

    if-eqz v14, :cond_12

    if-nez v4, :cond_12

    if-eqz v10, :cond_12

    iget-boolean v3, v7, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->textOnly:Z

    if-nez v3, :cond_12

    iget-boolean v3, v7, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->isHostView:Z

    if-nez v3, :cond_12

    const/4 v3, 0x0

    goto :goto_e

    :cond_12
    const/16 v3, 0x8

    :goto_e
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 152
    iget-object v0, v7, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->voiceMuteHost:Landroid/view/View;

    if-eqz v14, :cond_13

    if-nez v4, :cond_13

    if-eqz v10, :cond_13

    iget-boolean v3, v7, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->textOnly:Z

    if-nez v3, :cond_13

    iget-boolean v3, v7, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->isHostView:Z

    if-eqz v3, :cond_13

    const/4 v3, 0x0

    goto :goto_f

    :cond_13
    const/16 v3, 0x8

    :goto_f
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 153
    iget-object v0, v7, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->badNetWorkIndicator:Landroid/view/View;

    if-eqz v11, :cond_14

    if-nez v10, :cond_14

    const/4 v3, 0x0

    goto :goto_10

    :cond_14
    const/16 v3, 0x8

    :goto_10
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 156
    iget-object v0, v7, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->imgVolumeLevelMid:Lcom/narvii/widget/VolumeIndicator;

    int-to-float v3, v5

    const/high16 v11, 0x40800000    # 4.0f

    div-float/2addr v3, v11

    xor-int/lit8 v11, v2, 0x1

    invoke-virtual {v0, v3, v11}, Lcom/narvii/widget/VolumeIndicator;->setValue(FZ)V

    .line 157
    iget-object v0, v7, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->imgVolumeLevelMid:Lcom/narvii/widget/VolumeIndicator;

    if-eqz v6, :cond_15

    if-nez v4, :cond_15

    if-nez v10, :cond_15

    iget-boolean v3, v7, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->textOnly:Z

    if-nez v3, :cond_15

    const/4 v15, 0x0

    :cond_15
    invoke-virtual {v0, v15}, Landroid/view/View;->setVisibility(I)V

    .line 160
    iget-object v0, v7, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    invoke-virtual {v0, v13}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    if-nez v10, :cond_16

    if-nez v4, :cond_16

    goto :goto_11

    :cond_16
    const/4 v5, 0x0

    .line 162
    :goto_11
    iget-object v0, v7, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    iget-boolean v3, v7, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->textOnly:Z

    if-nez v3, :cond_17

    if-lez v5, :cond_17

    const/4 v3, 0x1

    goto :goto_12

    :cond_17
    const/4 v3, 0x0

    :goto_12
    invoke-virtual {v0, v3}, Lcom/narvii/widget/UserAvatarLayout;->showAudioStroke(Z)V

    .line 163
    iget-object v0, v7, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->speakingView:Lcom/narvii/chat/video/view/UserSpeakingView;

    iget-boolean v3, v7, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->textOnly:Z

    if-eqz v3, :cond_18

    const/4 v5, 0x0

    :cond_18
    invoke-virtual {v0, v5}, Lcom/narvii/chat/video/view/UserSpeakingView;->setVolumeLevel(I)V

    .line 164
    iget-object v0, v7, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->localMuteIndicator:Landroid/view/View;

    const/4 v10, 0x4

    if-eqz v4, :cond_19

    const/4 v3, 0x0

    goto :goto_13

    :cond_19
    const/4 v3, 0x4

    :goto_13
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 165
    iget-object v0, v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-eqz v0, :cond_1a

    iget-boolean v0, v0, Lcom/narvii/chat/signalling/ChannelUser;->isOffline:Z

    if-eqz v0, :cond_1a

    const/4 v11, 0x1

    goto :goto_14

    :cond_1a
    const/4 v11, 0x0

    .line 166
    :goto_14
    iget-object v1, v7, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->imgJoinLoading:Landroid/widget/ImageView;

    if-eqz v12, :cond_1b

    if-eqz v2, :cond_1b

    const/4 v5, 0x1

    goto :goto_15

    :cond_1b
    const/4 v5, 0x0

    :goto_15
    move-object/from16 v0, p0

    move v2, v6

    move/from16 v3, p5

    move v4, v5

    move v5, v11

    move v6, v14

    invoke-direct/range {v0 .. v6}, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->updateLoadingView(Landroid/widget/ImageView;ZZZZZ)V

    if-eqz v11, :cond_1c

    .line 169
    iget-object v0, v7, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    const v1, 0x3ebd70a4    # 0.37f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 170
    iget-object v0, v7, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    invoke-virtual {v0, v9}, Lcom/narvii/widget/UserAvatarLayout;->setHasOverlappingRendering(Z)V

    .line 171
    iget-object v0, v7, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->offlineView:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_16

    .line 173
    :cond_1c
    iget-object v0, v7, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 174
    iget-object v0, v7, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    invoke-virtual {v0, v8}, Lcom/narvii/widget/UserAvatarLayout;->setHasOverlappingRendering(Z)V

    .line 175
    iget-object v0, v7, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->offlineView:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1d
    :goto_16
    return-void
.end method
