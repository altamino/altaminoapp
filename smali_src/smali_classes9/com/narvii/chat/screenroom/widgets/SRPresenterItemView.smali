.class public Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


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
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    const/4 p2, -0x1

    .line 5
    .line 6
    iput p2, p0, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->localChannelUid:I

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const-string p2, "screenRoom"

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    check-cast p1, Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 23
    :cond_0
    return-void
.end method

.method private updateLoadingView(Landroid/widget/ImageView;ZZZZZ)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v0, v0, Lcom/narvii/widget/SpinDrawable;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/widget/SpinDrawable;

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    new-instance v0, Lcom/narvii/widget/SpinDrawable;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0}, Lcom/narvii/widget/SpinDrawable;-><init>()V

    .line 21
    const/4 v1, -0x1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/narvii/widget/SpinDrawable;->setLoadingColor(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 28
    .line 29
    :goto_0
    if-nez p2, :cond_3

    .line 30
    .line 31
    if-nez p3, :cond_3

    .line 32
    .line 33
    if-nez p4, :cond_3

    .line 34
    .line 35
    if-nez p5, :cond_3

    .line 36
    .line 37
    if-nez p6, :cond_1

    .line 38
    goto :goto_1

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/widget/SpinDrawable;->isRunning()Z

    .line 42
    move-result p2

    .line 43
    .line 44
    if-nez p2, :cond_2

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/narvii/widget/SpinDrawable;->start()V

    .line 48
    :cond_2
    const/4 p2, 0x0

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 52
    goto :goto_2

    .line 53
    .line 54
    .line 55
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/narvii/widget/SpinDrawable;->stop()V

    .line 56
    .line 57
    const/16 p2, 0x8

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 61
    :goto_2
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a0825

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->localMuteIndicator:Landroid/view/View;

    .line 13
    .line 14
    .line 15
    const v0, 0x7f0a01a3

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->badNetWorkIndicator:Landroid/view/View;

    .line 22
    .line 23
    .line 24
    const v0, 0x7f0a0fed

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    check-cast v0, Lcom/narvii/widget/VolumeIndicator;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->imgVolumeLevelMid:Lcom/narvii/widget/VolumeIndicator;

    .line 33
    .line 34
    .line 35
    const v0, 0x7f0a0fe0

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->voiceMute:Landroid/view/View;

    .line 42
    .line 43
    .line 44
    const v0, 0x7f0a0fe1

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->voiceMuteHost:Landroid/view/View;

    .line 51
    .line 52
    .line 53
    const v0, 0x7f0a0f36

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    .line 60
    .line 61
    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    .line 62
    .line 63
    .line 64
    const v0, 0x7f0a0f5b

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    check-cast v0, Lcom/narvii/chat/video/view/UserSpeakingView;

    .line 71
    .line 72
    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->speakingView:Lcom/narvii/chat/video/view/UserSpeakingView;

    .line 73
    .line 74
    .line 75
    const v0, 0x7f0a078f

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 79
    move-result-object v0

    .line 80
    .line 81
    check-cast v0, Landroid/widget/ImageView;

    .line 82
    .line 83
    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->imgJoinLoading:Landroid/widget/ImageView;

    .line 84
    .line 85
    .line 86
    const v0, 0x7f0a0681

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 90
    move-result-object v0

    .line 91
    .line 92
    check-cast v0, Landroid/widget/TextView;

    .line 93
    .line 94
    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->hostLabelView:Landroid/widget/TextView;

    .line 95
    .line 96
    .line 97
    const v0, 0x7f0a0a3e

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 101
    move-result-object v0

    .line 102
    .line 103
    check-cast v0, Landroid/widget/ImageView;

    .line 104
    .line 105
    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->offlineView:Landroid/widget/ImageView;

    .line 106
    return-void
.end method

.method public setHostVolumeLevel(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->hostVolumeLevel:I

    return-void
.end method

.method public setLocalUid(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->localChannelUid:I

    return-void
.end method

.method public setTextOnly(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->textOnly:Z

    return-void
.end method

.method public updateView(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/rtc/ChannelUserWrapper;ZZZLjava/lang/String;)V
    .locals 16

    .line 1
    .line 2
    move-object/from16 v7, p0

    .line 3
    .line 4
    move-object/from16 v0, p1

    .line 5
    .line 6
    move-object/from16 v1, p2

    .line 7
    .line 8
    move/from16 v2, p3

    .line 9
    .line 10
    move/from16 v3, p4

    .line 11
    .line 12
    move/from16 v4, p5

    .line 13
    .line 14
    if-eqz v1, :cond_1d

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto/16 :goto_16

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/narvii/chat/rtc/ChannelUserWrapper;->clone()Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 22
    move-result-object v5

    .line 23
    .line 24
    iput-object v5, v7, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->channelUserWrapper:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 25
    .line 26
    iput-boolean v2, v7, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->isHost:Z

    .line 27
    .line 28
    iput-boolean v3, v7, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->showVideo:Z

    .line 29
    .line 30
    iput-boolean v4, v7, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->isLocalMute:Z

    .line 31
    .line 32
    iget-object v5, v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    .line 33
    .line 34
    iget v6, v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->status:I

    .line 35
    const/4 v8, 0x1

    .line 36
    const/4 v9, 0x0

    .line 37
    .line 38
    if-ne v6, v8, :cond_1

    .line 39
    move v6, v8

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move v6, v9

    .line 42
    .line 43
    :goto_0
    if-eqz v5, :cond_2

    .line 44
    .line 45
    .line 46
    invoke-virtual {v5}, Lcom/narvii/video/ui/UserStatusData;->isVoiceMuted()Z

    .line 47
    move-result v10

    .line 48
    .line 49
    if-eqz v10, :cond_2

    .line 50
    move v10, v8

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    move v10, v9

    .line 53
    .line 54
    :goto_1
    if-eqz v5, :cond_3

    .line 55
    .line 56
    .line 57
    invoke-virtual {v5}, Lcom/narvii/video/ui/UserStatusData;->isBadNetwork()Z

    .line 58
    move-result v11

    .line 59
    .line 60
    if-eqz v11, :cond_3

    .line 61
    move v11, v8

    .line 62
    goto :goto_2

    .line 63
    :cond_3
    move v11, v9

    .line 64
    .line 65
    .line 66
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 67
    move-result-object v12

    .line 68
    .line 69
    .line 70
    invoke-static {v12}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 71
    move-result-object v12

    .line 72
    .line 73
    if-eqz v12, :cond_5

    .line 74
    .line 75
    const-string v14, "account"

    .line 76
    .line 77
    .line 78
    invoke-interface {v12, v14}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 79
    move-result-object v12

    .line 80
    .line 81
    check-cast v12, Lcom/narvii/account/AccountService;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v12}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 85
    move-result-object v12

    .line 86
    .line 87
    iget-object v14, v7, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->channelUserWrapper:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 88
    .line 89
    iget-object v14, v14, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 90
    .line 91
    if-eqz v14, :cond_4

    .line 92
    .line 93
    .line 94
    invoke-virtual {v14}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    .line 95
    move-result-object v14

    .line 96
    goto :goto_3

    .line 97
    :cond_4
    const/4 v14, 0x0

    .line 98
    .line 99
    .line 100
    :goto_3
    invoke-static {v12, v14}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 101
    move-result v12

    .line 102
    goto :goto_4

    .line 103
    :cond_5
    move v12, v9

    .line 104
    .line 105
    :goto_4
    iget-object v14, v7, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->channelUserWrapper:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 106
    .line 107
    iget v14, v14, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 108
    .line 109
    iget v15, v7, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->localChannelUid:I

    .line 110
    .line 111
    if-eq v14, v15, :cond_7

    .line 112
    .line 113
    if-eqz v12, :cond_6

    .line 114
    goto :goto_5

    .line 115
    :cond_6
    move v12, v9

    .line 116
    goto :goto_6

    .line 117
    :cond_7
    :goto_5
    move v12, v8

    .line 118
    .line 119
    :goto_6
    if-eqz v2, :cond_8

    .line 120
    .line 121
    if-nez v3, :cond_8

    .line 122
    move v3, v8

    .line 123
    goto :goto_7

    .line 124
    :cond_8
    move v3, v9

    .line 125
    .line 126
    .line 127
    :goto_7
    const v15, 0x7f0a0d77

    .line 128
    .line 129
    .line 130
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 131
    move-result-object v14

    .line 132
    .line 133
    .line 134
    invoke-virtual {v7, v15, v14}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 138
    move-result v14

    .line 139
    .line 140
    const/16 v15, 0x8

    .line 141
    .line 142
    if-eqz v14, :cond_9

    .line 143
    .line 144
    iget-object v14, v7, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->hostLabelView:Landroid/widget/TextView;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 148
    goto :goto_8

    .line 149
    .line 150
    :cond_9
    iget-object v14, v7, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->hostLabelView:Landroid/widget/TextView;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v14, v9}, Landroid/view/View;->setVisibility(I)V

    .line 154
    .line 155
    iget-object v14, v7, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->hostLabelView:Landroid/widget/TextView;

    .line 156
    .line 157
    move-object/from16 v13, p6

    .line 158
    .line 159
    .line 160
    invoke-virtual {v14, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    .line 162
    :goto_8
    iget-object v13, v7, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->channelUserWrapper:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 163
    .line 164
    iget-object v13, v13, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 165
    .line 166
    if-eqz v13, :cond_a

    .line 167
    .line 168
    iget-object v13, v13, Lcom/narvii/chat/signalling/ChannelUser;->userProfile:Lcom/narvii/model/User;

    .line 169
    goto :goto_9

    .line 170
    :cond_a
    const/4 v13, 0x0

    .line 171
    .line 172
    :goto_9
    if-nez v5, :cond_b

    .line 173
    move v5, v9

    .line 174
    goto :goto_a

    .line 175
    .line 176
    .line 177
    :cond_b
    invoke-virtual {v5}, Lcom/narvii/video/ui/UserStatusData;->getCurVolumeLevel()I

    .line 178
    move-result v5

    .line 179
    .line 180
    :goto_a
    if-eqz v3, :cond_f

    .line 181
    .line 182
    iget v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 183
    const/4 v3, 0x5

    .line 184
    .line 185
    if-ne v0, v3, :cond_f

    .line 186
    .line 187
    if-eqz v12, :cond_d

    .line 188
    .line 189
    iget-object v0, v7, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 190
    .line 191
    if-eqz v0, :cond_c

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->getLocalMicMuted()Z

    .line 195
    move-result v0

    .line 196
    .line 197
    if-eqz v0, :cond_c

    .line 198
    move v10, v8

    .line 199
    goto :goto_c

    .line 200
    :cond_c
    move v10, v9

    .line 201
    goto :goto_c

    .line 202
    .line 203
    :cond_d
    iget-object v0, v7, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 204
    .line 205
    if-eqz v0, :cond_e

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->isSrHostMuted()Z

    .line 209
    move-result v0

    .line 210
    .line 211
    if-eqz v0, :cond_e

    .line 212
    move v10, v8

    .line 213
    goto :goto_b

    .line 214
    :cond_e
    move v10, v9

    .line 215
    .line 216
    :goto_b
    iget v5, v7, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->hostVolumeLevel:I

    .line 217
    .line 218
    :cond_f
    :goto_c
    iget-object v0, v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 219
    .line 220
    if-eqz v0, :cond_10

    .line 221
    .line 222
    iget v0, v0, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    .line 223
    .line 224
    if-ne v0, v8, :cond_10

    .line 225
    move v14, v8

    .line 226
    goto :goto_d

    .line 227
    :cond_10
    move v14, v9

    .line 228
    .line 229
    :goto_d
    if-nez v14, :cond_11

    .line 230
    move v5, v9

    .line 231
    .line 232
    :cond_11
    iget-object v0, v7, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->voiceMute:Landroid/view/View;

    .line 233
    .line 234
    if-eqz v14, :cond_12

    .line 235
    .line 236
    if-nez v4, :cond_12

    .line 237
    .line 238
    if-eqz v10, :cond_12

    .line 239
    .line 240
    iget-boolean v3, v7, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->textOnly:Z

    .line 241
    .line 242
    if-nez v3, :cond_12

    .line 243
    .line 244
    iget-boolean v3, v7, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->isHostView:Z

    .line 245
    .line 246
    if-nez v3, :cond_12

    .line 247
    move v3, v9

    .line 248
    goto :goto_e

    .line 249
    :cond_12
    move v3, v15

    .line 250
    .line 251
    .line 252
    :goto_e
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 253
    .line 254
    iget-object v0, v7, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->voiceMuteHost:Landroid/view/View;

    .line 255
    .line 256
    if-eqz v14, :cond_13

    .line 257
    .line 258
    if-nez v4, :cond_13

    .line 259
    .line 260
    if-eqz v10, :cond_13

    .line 261
    .line 262
    iget-boolean v3, v7, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->textOnly:Z

    .line 263
    .line 264
    if-nez v3, :cond_13

    .line 265
    .line 266
    iget-boolean v3, v7, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->isHostView:Z

    .line 267
    .line 268
    if-eqz v3, :cond_13

    .line 269
    move v3, v9

    .line 270
    goto :goto_f

    .line 271
    :cond_13
    move v3, v15

    .line 272
    .line 273
    .line 274
    :goto_f
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 275
    .line 276
    iget-object v0, v7, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->badNetWorkIndicator:Landroid/view/View;

    .line 277
    .line 278
    if-eqz v11, :cond_14

    .line 279
    .line 280
    if-nez v10, :cond_14

    .line 281
    move v3, v9

    .line 282
    goto :goto_10

    .line 283
    :cond_14
    move v3, v15

    .line 284
    .line 285
    .line 286
    :goto_10
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 287
    .line 288
    iget-object v0, v7, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->imgVolumeLevelMid:Lcom/narvii/widget/VolumeIndicator;

    .line 289
    int-to-float v3, v5

    .line 290
    .line 291
    const/high16 v11, 0x40800000    # 4.0f

    .line 292
    div-float/2addr v3, v11

    .line 293
    .line 294
    xor-int/lit8 v11, v2, 0x1

    .line 295
    .line 296
    .line 297
    invoke-virtual {v0, v3, v11}, Lcom/narvii/widget/VolumeIndicator;->setValue(FZ)V

    .line 298
    .line 299
    iget-object v0, v7, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->imgVolumeLevelMid:Lcom/narvii/widget/VolumeIndicator;

    .line 300
    .line 301
    if-eqz v6, :cond_15

    .line 302
    .line 303
    if-nez v4, :cond_15

    .line 304
    .line 305
    if-nez v10, :cond_15

    .line 306
    .line 307
    iget-boolean v3, v7, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->textOnly:Z

    .line 308
    .line 309
    if-nez v3, :cond_15

    .line 310
    move v15, v9

    .line 311
    .line 312
    .line 313
    :cond_15
    invoke-virtual {v0, v15}, Landroid/view/View;->setVisibility(I)V

    .line 314
    .line 315
    iget-object v0, v7, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v0, v13}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 319
    .line 320
    if-nez v10, :cond_16

    .line 321
    .line 322
    if-nez v4, :cond_16

    .line 323
    goto :goto_11

    .line 324
    :cond_16
    move v5, v9

    .line 325
    .line 326
    :goto_11
    iget-object v0, v7, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    .line 327
    .line 328
    iget-boolean v3, v7, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->textOnly:Z

    .line 329
    .line 330
    if-nez v3, :cond_17

    .line 331
    .line 332
    if-lez v5, :cond_17

    .line 333
    move v3, v8

    .line 334
    goto :goto_12

    .line 335
    :cond_17
    move v3, v9

    .line 336
    .line 337
    .line 338
    :goto_12
    invoke-virtual {v0, v3}, Lcom/narvii/widget/UserAvatarLayout;->showAudioStroke(Z)V

    .line 339
    .line 340
    iget-object v0, v7, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->speakingView:Lcom/narvii/chat/video/view/UserSpeakingView;

    .line 341
    .line 342
    iget-boolean v3, v7, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->textOnly:Z

    .line 343
    .line 344
    if-eqz v3, :cond_18

    .line 345
    move v5, v9

    .line 346
    .line 347
    .line 348
    :cond_18
    invoke-virtual {v0, v5}, Lcom/narvii/chat/video/view/UserSpeakingView;->setVolumeLevel(I)V

    .line 349
    .line 350
    iget-object v0, v7, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->localMuteIndicator:Landroid/view/View;

    .line 351
    const/4 v10, 0x4

    .line 352
    .line 353
    if-eqz v4, :cond_19

    .line 354
    move v3, v9

    .line 355
    goto :goto_13

    .line 356
    :cond_19
    move v3, v10

    .line 357
    .line 358
    .line 359
    :goto_13
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 360
    .line 361
    iget-object v0, v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 362
    .line 363
    if-eqz v0, :cond_1a

    .line 364
    .line 365
    iget-boolean v0, v0, Lcom/narvii/chat/signalling/ChannelUser;->isOffline:Z

    .line 366
    .line 367
    if-eqz v0, :cond_1a

    .line 368
    move v11, v8

    .line 369
    goto :goto_14

    .line 370
    :cond_1a
    move v11, v9

    .line 371
    .line 372
    :goto_14
    iget-object v1, v7, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->imgJoinLoading:Landroid/widget/ImageView;

    .line 373
    .line 374
    if-eqz v12, :cond_1b

    .line 375
    .line 376
    if-eqz v2, :cond_1b

    .line 377
    move v5, v8

    .line 378
    goto :goto_15

    .line 379
    :cond_1b
    move v5, v9

    .line 380
    .line 381
    :goto_15
    move-object/from16 v0, p0

    .line 382
    move v2, v6

    .line 383
    .line 384
    move/from16 v3, p5

    .line 385
    move v4, v5

    .line 386
    move v5, v11

    .line 387
    move v6, v14

    .line 388
    .line 389
    .line 390
    invoke-direct/range {v0 .. v6}, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->updateLoadingView(Landroid/widget/ImageView;ZZZZZ)V

    .line 391
    .line 392
    if-eqz v11, :cond_1c

    .line 393
    .line 394
    iget-object v0, v7, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    .line 395
    .line 396
    .line 397
    const v1, 0x3ebd70a4    # 0.37f

    .line 398
    .line 399
    .line 400
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 401
    .line 402
    iget-object v0, v7, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    .line 403
    .line 404
    .line 405
    invoke-virtual {v0, v9}, Lcom/narvii/widget/UserAvatarLayout;->setHasOverlappingRendering(Z)V

    .line 406
    .line 407
    iget-object v0, v7, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->offlineView:Landroid/widget/ImageView;

    .line 408
    .line 409
    .line 410
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 411
    goto :goto_16

    .line 412
    .line 413
    :cond_1c
    iget-object v0, v7, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    .line 414
    .line 415
    const/high16 v1, 0x3f800000    # 1.0f

    .line 416
    .line 417
    .line 418
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 419
    .line 420
    iget-object v0, v7, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    .line 421
    .line 422
    .line 423
    invoke-virtual {v0, v8}, Lcom/narvii/widget/UserAvatarLayout;->setHasOverlappingRendering(Z)V

    .line 424
    .line 425
    iget-object v0, v7, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->offlineView:Landroid/widget/ImageView;

    .line 426
    .line 427
    .line 428
    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 429
    :cond_1d
    :goto_16
    return-void
.end method
