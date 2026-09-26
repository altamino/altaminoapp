.class public Lcom/narvii/chat/video/layout/VoicePresenterItemView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


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
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/narvii/chat/video/layout/VoicePresenterItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, -0x1

    iput p2, p0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->channelUid:I

    if-eqz p3, :cond_0

    const p2, 0x7f0d049d

    goto :goto_0

    :cond_0
    const p2, 0x7f0d049c

    .line 4
    :goto_0
    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    const p1, 0x7f0a04e1

    .line 6
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->emptyContainer:Landroid/view/View;

    const p1, 0x7f0a027f

    .line 7
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->userInfoContainer:Landroid/view/View;

    const p1, 0x7f0a0f5b

    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/video/view/UserSpeakingView;

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->userSpeakingView:Lcom/narvii/chat/video/view/UserSpeakingView;

    const p1, 0x7f0a0f36

    .line 9
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/UserAvatarLayout;

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    const p1, 0x7f0a0826

    .line 10
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->localMuteIndicator:Landroid/view/View;

    const p1, 0x7f0a01a4

    .line 11
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->badNetworkIndicator:Landroid/view/View;

    const p1, 0x7f0a09cd

    .line 12
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->muteIndicator:Landroid/view/View;

    const p1, 0x7f0a0fea

    .line 13
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/VolumeIndicator;

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->volumeIndicator:Lcom/narvii/widget/VolumeIndicator;

    const p1, 0x7f0a0821

    .line 14
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->loadingIndicator:Landroid/widget/ImageView;

    const p1, 0x7f0a09f9

    .line 15
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NicknameView;

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->tvNickname:Lcom/narvii/widget/NicknameView;

    const p1, 0x7f0a09fb

    .line 16
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->imgBadge:Landroid/widget/ImageView;

    const p1, 0x7f0a0a9f

    .line 17
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->organizerLabel:Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, p2}, Lcom/narvii/chat/video/layout/VoicePresenterItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    return-void
.end method


# virtual methods
.method public updatePresenter(Lcom/narvii/chat/rtc/ChannelUserWrapper;ZZZZ)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    .line 4
    move/from16 v2, p3

    .line 5
    const/4 v3, -0x1

    .line 6
    .line 7
    const/16 v4, 0x8

    .line 8
    const/4 v5, 0x0

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    iput v3, v0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->channelUid:I

    .line 13
    .line 14
    iget-object v1, v0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->emptyContainer:Landroid/view/View;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    iget-object v1, v0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->userInfoContainer:Landroid/view/View;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    iget-object v1, v0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->userSpeakingView:Lcom/narvii/chat/video/view/UserSpeakingView;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v5}, Lcom/narvii/chat/video/view/UserSpeakingView;->setVolumeLevel(I)V

    .line 28
    .line 29
    iget-object v1, v0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->volumeIndicator:Lcom/narvii/widget/VolumeIndicator;

    .line 30
    const/4 v2, 0x0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2, v5}, Lcom/narvii/widget/VolumeIndicator;->setValue(FZ)V

    .line 34
    return-void

    .line 35
    .line 36
    :cond_0
    iget-object v6, v0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->emptyContainer:Landroid/view/View;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    iget-object v6, v0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->userInfoContainer:Landroid/view/View;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    iget v6, v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 47
    .line 48
    iput v6, v0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->channelUid:I

    .line 49
    .line 50
    iget-object v6, v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    .line 51
    .line 52
    iget-object v7, v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 53
    .line 54
    if-nez v7, :cond_1

    .line 55
    const/4 v7, 0x0

    .line 56
    goto :goto_0

    .line 57
    .line 58
    :cond_1
    iget-object v7, v7, Lcom/narvii/chat/signalling/ChannelUser;->userProfile:Lcom/narvii/model/User;

    .line 59
    :goto_0
    const/4 v8, 0x1

    .line 60
    .line 61
    if-eqz v6, :cond_2

    .line 62
    .line 63
    .line 64
    invoke-virtual {v6}, Lcom/narvii/video/ui/UserStatusData;->isBadNetwork()Z

    .line 65
    move-result v9

    .line 66
    .line 67
    if-eqz v9, :cond_2

    .line 68
    move v9, v8

    .line 69
    goto :goto_1

    .line 70
    :cond_2
    move v9, v5

    .line 71
    .line 72
    :goto_1
    if-eqz v6, :cond_3

    .line 73
    .line 74
    .line 75
    invoke-virtual {v6}, Lcom/narvii/video/ui/UserStatusData;->isVoiceMuted()Z

    .line 76
    move-result v10

    .line 77
    .line 78
    if-eqz v10, :cond_3

    .line 79
    move v10, v8

    .line 80
    goto :goto_2

    .line 81
    :cond_3
    move v10, v5

    .line 82
    .line 83
    :goto_2
    iget v1, v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->status:I

    .line 84
    .line 85
    if-ne v1, v8, :cond_4

    .line 86
    move v1, v8

    .line 87
    goto :goto_3

    .line 88
    :cond_4
    move v1, v5

    .line 89
    .line 90
    :goto_3
    iget-object v11, v0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->tvNickname:Lcom/narvii/widget/NicknameView;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v11, v7}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 94
    .line 95
    if-eqz p2, :cond_5

    .line 96
    .line 97
    iget-object v11, v0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->tvNickname:Lcom/narvii/widget/NicknameView;

    .line 98
    .line 99
    .line 100
    const v12, 0x7f120c2a

    .line 101
    .line 102
    .line 103
    invoke-virtual {v11, v12}, Lcom/narvii/widget/NicknameView;->setText(I)V

    .line 104
    .line 105
    :cond_5
    iget-object v11, v0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->imgBadge:Landroid/widget/ImageView;

    .line 106
    .line 107
    if-eqz v2, :cond_6

    .line 108
    move v12, v5

    .line 109
    goto :goto_4

    .line 110
    :cond_6
    move v12, v4

    .line 111
    .line 112
    .line 113
    :goto_4
    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    .line 115
    iget-object v11, v0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->volumeIndicator:Lcom/narvii/widget/VolumeIndicator;

    .line 116
    .line 117
    if-eqz v1, :cond_7

    .line 118
    .line 119
    if-nez p4, :cond_7

    .line 120
    .line 121
    if-nez v10, :cond_7

    .line 122
    move v12, v5

    .line 123
    goto :goto_5

    .line 124
    :cond_7
    move v12, v4

    .line 125
    .line 126
    .line 127
    :goto_5
    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 128
    .line 129
    if-eqz v6, :cond_9

    .line 130
    .line 131
    if-nez v10, :cond_9

    .line 132
    .line 133
    if-eqz p4, :cond_8

    .line 134
    goto :goto_6

    .line 135
    .line 136
    .line 137
    :cond_8
    invoke-virtual {v6}, Lcom/narvii/video/ui/UserStatusData;->getCurVolumeLevel()I

    .line 138
    move-result v6

    .line 139
    goto :goto_7

    .line 140
    :cond_9
    :goto_6
    move v6, v5

    .line 141
    .line 142
    :goto_7
    iget-object v11, v0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->volumeIndicator:Lcom/narvii/widget/VolumeIndicator;

    .line 143
    int-to-float v12, v6

    .line 144
    .line 145
    const/high16 v13, 0x40800000    # 4.0f

    .line 146
    div-float/2addr v12, v13

    .line 147
    .line 148
    .line 149
    invoke-virtual {v11, v12, v8}, Lcom/narvii/widget/VolumeIndicator;->setValue(FZ)V

    .line 150
    .line 151
    if-nez p4, :cond_b

    .line 152
    .line 153
    if-eqz v10, :cond_a

    .line 154
    goto :goto_8

    .line 155
    .line 156
    :cond_a
    if-eqz p2, :cond_c

    .line 157
    .line 158
    if-nez v1, :cond_c

    .line 159
    move v6, v8

    .line 160
    goto :goto_9

    .line 161
    :cond_b
    :goto_8
    move v6, v5

    .line 162
    .line 163
    :cond_c
    :goto_9
    iget-object v11, v0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->userSpeakingView:Lcom/narvii/chat/video/view/UserSpeakingView;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v11, v6}, Lcom/narvii/chat/video/view/UserSpeakingView;->setVolumeLevel(I)V

    .line 167
    .line 168
    iget-object v11, v0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->userSpeakingView:Lcom/narvii/chat/video/view/UserSpeakingView;

    .line 169
    .line 170
    if-eqz p2, :cond_d

    .line 171
    .line 172
    if-nez v1, :cond_d

    .line 173
    move v12, v8

    .line 174
    goto :goto_a

    .line 175
    :cond_d
    move v12, v5

    .line 176
    .line 177
    .line 178
    :goto_a
    invoke-virtual {v11, v12}, Lcom/narvii/chat/video/view/UserSpeakingView;->setPendingSpeakingMode(Z)V

    .line 179
    .line 180
    iget-object v11, v0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v11, v7, v2}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;Z)V

    .line 184
    .line 185
    iget-object v2, v0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    .line 186
    .line 187
    if-eqz p2, :cond_e

    .line 188
    .line 189
    if-eqz v1, :cond_f

    .line 190
    .line 191
    :cond_e
    if-lez v6, :cond_f

    .line 192
    goto :goto_b

    .line 193
    :cond_f
    move v8, v5

    .line 194
    .line 195
    .line 196
    :goto_b
    invoke-virtual {v2, v8}, Lcom/narvii/widget/UserAvatarLayout;->showAudioStroke(Z)V

    .line 197
    .line 198
    iget-object v2, v0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->localMuteIndicator:Landroid/view/View;

    .line 199
    .line 200
    if-eqz p4, :cond_10

    .line 201
    move v6, v5

    .line 202
    goto :goto_c

    .line 203
    :cond_10
    move v6, v4

    .line 204
    .line 205
    .line 206
    :goto_c
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 207
    .line 208
    iget-object v2, v0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->muteIndicator:Landroid/view/View;

    .line 209
    .line 210
    if-nez p4, :cond_11

    .line 211
    .line 212
    if-eqz v10, :cond_11

    .line 213
    move v6, v5

    .line 214
    goto :goto_d

    .line 215
    :cond_11
    move v6, v4

    .line 216
    .line 217
    .line 218
    :goto_d
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 219
    .line 220
    iget-object v2, v0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->badNetworkIndicator:Landroid/view/View;

    .line 221
    .line 222
    if-eqz v9, :cond_12

    .line 223
    move v6, v5

    .line 224
    goto :goto_e

    .line 225
    :cond_12
    move v6, v4

    .line 226
    .line 227
    .line 228
    :goto_e
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 229
    .line 230
    iget-object v2, v0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->organizerLabel:Landroid/view/View;

    .line 231
    .line 232
    if-eqz p5, :cond_13

    .line 233
    move v6, v5

    .line 234
    goto :goto_f

    .line 235
    :cond_13
    const/4 v6, 0x4

    .line 236
    .line 237
    .line 238
    :goto_f
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 239
    .line 240
    iget-object v2, v0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->loadingIndicator:Landroid/widget/ImageView;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 244
    move-result-object v2

    .line 245
    .line 246
    instance-of v2, v2, Lcom/narvii/widget/SpinDrawable;

    .line 247
    .line 248
    if-eqz v2, :cond_14

    .line 249
    .line 250
    iget-object v2, v0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->loadingIndicator:Landroid/widget/ImageView;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 254
    move-result-object v2

    .line 255
    .line 256
    check-cast v2, Lcom/narvii/widget/SpinDrawable;

    .line 257
    goto :goto_10

    .line 258
    .line 259
    :cond_14
    new-instance v2, Lcom/narvii/widget/SpinDrawable;

    .line 260
    .line 261
    .line 262
    invoke-direct {v2}, Lcom/narvii/widget/SpinDrawable;-><init>()V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v2, v3}, Lcom/narvii/widget/SpinDrawable;->setLoadingColor(I)V

    .line 266
    .line 267
    iget-object v3, v0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->loadingIndicator:Landroid/widget/ImageView;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 271
    .line 272
    :goto_10
    if-nez v1, :cond_17

    .line 273
    .line 274
    if-nez p4, :cond_17

    .line 275
    .line 276
    if-eqz p2, :cond_15

    .line 277
    goto :goto_11

    .line 278
    .line 279
    .line 280
    :cond_15
    invoke-virtual {v2}, Lcom/narvii/widget/SpinDrawable;->isRunning()Z

    .line 281
    move-result v1

    .line 282
    .line 283
    if-nez v1, :cond_16

    .line 284
    .line 285
    .line 286
    invoke-virtual {v2}, Lcom/narvii/widget/SpinDrawable;->start()V

    .line 287
    .line 288
    :cond_16
    iget-object v1, v0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->loadingIndicator:Landroid/widget/ImageView;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 292
    goto :goto_12

    .line 293
    .line 294
    .line 295
    :cond_17
    :goto_11
    invoke-virtual {v2}, Lcom/narvii/widget/SpinDrawable;->stop()V

    .line 296
    .line 297
    iget-object v1, v0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->loadingIndicator:Landroid/widget/ImageView;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 301
    :goto_12
    return-void
.end method
