.class Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LiveUserAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;


# direct methods
.method constructor <init>(Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;->this$0:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;->this$0:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->itemList:Ljava/util/List;

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;->this$0:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->itemList:Ljava/util/List;

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    instance-of v1, v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 15
    .line 16
    iget-object p1, v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 17
    .line 18
    iget p1, p1, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    .line 19
    const/4 v0, 0x1

    .line 20
    .line 21
    if-ne p1, v0, :cond_0

    .line 22
    return v0

    .line 23
    :cond_0
    const/4 p1, 0x2

    .line 24
    return p1

    .line 25
    .line 26
    :cond_1
    sget-object v1, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->DIVIDER:Ljava/lang/Object;

    .line 27
    .line 28
    if-ne v0, v1, :cond_2

    .line 29
    const/4 p1, 0x3

    .line 30
    return p1

    .line 31
    .line 32
    :cond_2
    sget-object v1, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->INVITE:Ljava/lang/Object;

    .line 33
    .line 34
    if-ne v0, v1, :cond_3

    .line 35
    const/4 p1, 0x4

    .line 36
    return p1

    .line 37
    .line 38
    .line 39
    :cond_3
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    .line 40
    move-result p1

    .line 41
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 8
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$PresenterHolder;

    .line 3
    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$PresenterHolder;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;->this$0:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->itemList:Ljava/util/List;

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    instance-of v0, p2, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 17
    .line 18
    if-eqz v0, :cond_9

    .line 19
    .line 20
    check-cast p2, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;->this$0:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getLocalMutedUserList()Ljava/util/Set;

    .line 28
    move-result-object v0

    .line 29
    const/4 v1, 0x0

    .line 30
    const/4 v2, 0x1

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    if-eqz p2, :cond_0

    .line 35
    .line 36
    iget-object v3, p2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 37
    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    .line 42
    move-result-object v3

    .line 43
    .line 44
    if-eqz v3, :cond_0

    .line 45
    .line 46
    iget-object v3, p2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    .line 50
    move-result-object v3

    .line 51
    .line 52
    .line 53
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 54
    move-result v0

    .line 55
    .line 56
    if-eqz v0, :cond_0

    .line 57
    move v6, v2

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    move v6, v1

    .line 60
    .line 61
    :goto_0
    if-eqz p2, :cond_1

    .line 62
    .line 63
    iget-object v0, p2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 64
    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    iget-boolean v0, v0, Lcom/narvii/chat/signalling/ChannelUser;->isHost:Z

    .line 68
    .line 69
    if-eqz v0, :cond_1

    .line 70
    move v4, v2

    .line 71
    goto :goto_1

    .line 72
    :cond_1
    move v4, v1

    .line 73
    .line 74
    :goto_1
    iget-object v0, p1, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$PresenterHolder;->presenterItemView:Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;

    .line 75
    .line 76
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;->this$0:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    .line 77
    .line 78
    .line 79
    invoke-static {v1}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->b(Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;)I

    .line 80
    move-result v1

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->setHostVolumeLevel(I)V

    .line 84
    .line 85
    iget-object v0, p1, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$PresenterHolder;->presenterItemView:Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;

    .line 86
    .line 87
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;->this$0:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    .line 88
    .line 89
    iget-object v1, v1, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->signallingChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 90
    .line 91
    iget v1, v1, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v1}, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->setLocalUid(I)V

    .line 95
    .line 96
    iget-object v0, p1, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$PresenterHolder;->presenterItemView:Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;

    .line 97
    .line 98
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;->this$0:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    .line 99
    .line 100
    .line 101
    invoke-static {v1}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->d(Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;)Z

    .line 102
    move-result v1

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v1}, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->setTextOnly(Z)V

    .line 106
    .line 107
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;->this$0:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    .line 108
    .line 109
    iget-object v0, v0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->chatThread:Lcom/narvii/model/ChatThread;

    .line 110
    .line 111
    .line 112
    invoke-static {v0}, Lcom/narvii/chat/util/ChatHelperKt;->isSingleChat(Lcom/narvii/model/ChatThread;)Z

    .line 113
    move-result v0

    .line 114
    .line 115
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;->this$0:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    .line 116
    .line 117
    iget-object v2, v1, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 118
    .line 119
    iget-object v1, v1, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->chatThread:Lcom/narvii/model/ChatThread;

    .line 120
    .line 121
    iget-object v3, p2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 122
    const/4 v5, 0x0

    .line 123
    .line 124
    if-nez v3, :cond_2

    .line 125
    move-object v3, v5

    .line 126
    goto :goto_2

    .line 127
    .line 128
    .line 129
    :cond_2
    invoke-virtual {v3}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    .line 130
    move-result-object v3

    .line 131
    .line 132
    .line 133
    :goto_2
    invoke-virtual {v2, v1, v3}, Lcom/narvii/chat/util/ChatHelper;->isHost(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Z

    .line 134
    move-result v1

    .line 135
    .line 136
    if-nez v0, :cond_3

    .line 137
    .line 138
    if-eqz v1, :cond_3

    .line 139
    .line 140
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;->this$0:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 144
    move-result-object v0

    .line 145
    .line 146
    .line 147
    const v1, 0x7f120817

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 151
    move-result-object v0

    .line 152
    move-object v7, v0

    .line 153
    goto :goto_3

    .line 154
    :cond_3
    move-object v7, v5

    .line 155
    .line 156
    :goto_3
    iget-object v1, p1, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$PresenterHolder;->presenterItemView:Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;

    .line 157
    .line 158
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;->this$0:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    .line 159
    .line 160
    iget-object v2, v0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->signallingChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 161
    const/4 v5, 0x0

    .line 162
    move-object v3, p2

    .line 163
    .line 164
    .line 165
    invoke-virtual/range {v1 .. v7}, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->updateView(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/rtc/ChannelUserWrapper;ZZZLjava/lang/String;)V

    .line 166
    .line 167
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 171
    .line 172
    goto/16 :goto_5

    .line 173
    .line 174
    :cond_4
    instance-of v0, p1, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$AudienceHolder;

    .line 175
    .line 176
    if-eqz v0, :cond_5

    .line 177
    .line 178
    check-cast p1, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$AudienceHolder;

    .line 179
    .line 180
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;->this$0:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    .line 181
    .line 182
    iget-object v0, v0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->itemList:Ljava/util/List;

    .line 183
    .line 184
    .line 185
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 186
    move-result-object p2

    .line 187
    .line 188
    instance-of v0, p2, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 189
    .line 190
    if-eqz v0, :cond_9

    .line 191
    .line 192
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 196
    .line 197
    iget-object p1, p1, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$AudienceHolder;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    .line 198
    .line 199
    check-cast p2, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 200
    .line 201
    iget-object p2, p2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 202
    .line 203
    iget-object p2, p2, Lcom/narvii/chat/signalling/ChannelUser;->userProfile:Lcom/narvii/model/User;

    .line 204
    .line 205
    .line 206
    invoke-virtual {p1, p2}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 207
    .line 208
    goto/16 :goto_5

    .line 209
    .line 210
    :cond_5
    instance-of p2, p1, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$DividerHolder;

    .line 211
    .line 212
    if-eqz p2, :cond_9

    .line 213
    .line 214
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 215
    .line 216
    .line 217
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 218
    move-result-object p2

    .line 219
    .line 220
    .line 221
    const v0, 0x7f0704d1

    .line 222
    .line 223
    if-eqz p2, :cond_7

    .line 224
    .line 225
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;->this$0:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 229
    move-result-object v1

    .line 230
    .line 231
    .line 232
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 233
    move-result-object v1

    .line 234
    .line 235
    .line 236
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 237
    move-result v1

    .line 238
    .line 239
    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;->this$0:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 243
    move-result-object v2

    .line 244
    .line 245
    .line 246
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 247
    move-result-object v2

    .line 248
    .line 249
    .line 250
    const v3, 0x7f0704d2

    .line 251
    .line 252
    .line 253
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 254
    move-result v2

    .line 255
    .line 256
    iget-object v3, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;->this$0:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    .line 257
    .line 258
    .line 259
    invoke-static {v3}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->c(Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;)Z

    .line 260
    move-result v3

    .line 261
    .line 262
    if-eqz v3, :cond_6

    .line 263
    .line 264
    iput v2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 265
    .line 266
    iput v1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 267
    goto :goto_4

    .line 268
    .line 269
    :cond_6
    iput v1, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 270
    .line 271
    iput v2, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 272
    .line 273
    :cond_7
    :goto_4
    check-cast p1, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$DividerHolder;

    .line 274
    .line 275
    iget-object p1, p1, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$DividerHolder;->line:Landroid/view/View;

    .line 276
    .line 277
    .line 278
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 279
    move-result-object p1

    .line 280
    .line 281
    if-eqz p1, :cond_9

    .line 282
    .line 283
    iget-object p2, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;->this$0:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    .line 284
    .line 285
    .line 286
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 287
    move-result-object p2

    .line 288
    .line 289
    .line 290
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 291
    move-result-object p2

    .line 292
    .line 293
    .line 294
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 295
    move-result p2

    .line 296
    .line 297
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;->this$0:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 301
    move-result-object v0

    .line 302
    .line 303
    .line 304
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 305
    move-result-object v0

    .line 306
    .line 307
    .line 308
    const v1, 0x7f0704d0

    .line 309
    .line 310
    .line 311
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 312
    move-result v0

    .line 313
    .line 314
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;->this$0:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    .line 315
    .line 316
    .line 317
    invoke-static {v1}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->c(Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;)Z

    .line 318
    move-result v1

    .line 319
    .line 320
    if-eqz v1, :cond_8

    .line 321
    .line 322
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 323
    .line 324
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 325
    goto :goto_5

    .line 326
    .line 327
    :cond_8
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 328
    .line 329
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 330
    :cond_9
    :goto_5
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    if-eq p2, v0, :cond_3

    .line 5
    const/4 v0, 0x2

    .line 6
    .line 7
    if-eq p2, v0, :cond_2

    .line 8
    const/4 v0, 0x3

    .line 9
    .line 10
    if-eq p2, v0, :cond_1

    .line 11
    const/4 v0, 0x4

    .line 12
    .line 13
    if-eq p2, v0, :cond_0

    .line 14
    const/4 p1, 0x0

    .line 15
    return-object p1

    .line 16
    .line 17
    :cond_0
    iget-object p2, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;->this$0:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 21
    move-result-object p2

    .line 22
    .line 23
    .line 24
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 25
    move-result-object p2

    .line 26
    .line 27
    .line 28
    const v0, 0x7f0d06f4

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    new-instance p2, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter$1;

    .line 35
    .line 36
    .line 37
    invoke-direct {p2, p0}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter$1;-><init>(Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    .line 42
    new-instance p2, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$InviteHolder;

    .line 43
    .line 44
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;->this$0:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    .line 45
    .line 46
    .line 47
    invoke-direct {p2, v0, p1}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$InviteHolder;-><init>(Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;Landroid/view/View;)V

    .line 48
    return-object p2

    .line 49
    .line 50
    :cond_1
    iget-object p2, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;->this$0:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 54
    move-result-object p2

    .line 55
    .line 56
    .line 57
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 58
    move-result-object p2

    .line 59
    .line 60
    .line 61
    const v0, 0x7f0d06f3

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    new-instance p2, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$DividerHolder;

    .line 68
    .line 69
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;->this$0:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    .line 70
    .line 71
    .line 72
    invoke-direct {p2, v0, p1}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$DividerHolder;-><init>(Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;Landroid/view/View;)V

    .line 73
    return-object p2

    .line 74
    .line 75
    :cond_2
    iget-object p2, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;->this$0:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 79
    move-result-object p2

    .line 80
    .line 81
    .line 82
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 83
    move-result-object p2

    .line 84
    .line 85
    .line 86
    const v0, 0x7f0d06f2

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 90
    move-result-object p1

    .line 91
    .line 92
    iget-object p2, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;->this$0:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    .line 93
    .line 94
    iget-object p2, p2, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->onClickListenerWrapper:Landroid/view/View$OnClickListener;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    .line 99
    new-instance p2, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$AudienceHolder;

    .line 100
    .line 101
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;->this$0:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    .line 102
    .line 103
    .line 104
    invoke-direct {p2, v0, p1}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$AudienceHolder;-><init>(Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;Landroid/view/View;)V

    .line 105
    return-object p2

    .line 106
    .line 107
    :cond_3
    iget-object p2, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;->this$0:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 111
    move-result-object p2

    .line 112
    .line 113
    .line 114
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 115
    move-result-object p2

    .line 116
    .line 117
    .line 118
    const v0, 0x7f0d06f5

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 122
    move-result-object p1

    .line 123
    .line 124
    iget-object p2, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;->this$0:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    .line 125
    .line 126
    iget-object p2, p2, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->onClickListenerWrapper:Landroid/view/View$OnClickListener;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    .line 131
    new-instance p2, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$PresenterHolder;

    .line 132
    .line 133
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;->this$0:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    .line 134
    .line 135
    .line 136
    invoke-direct {p2, v0, p1}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$PresenterHolder;-><init>(Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;Landroid/view/View;)V

    .line 137
    return-object p2
.end method
