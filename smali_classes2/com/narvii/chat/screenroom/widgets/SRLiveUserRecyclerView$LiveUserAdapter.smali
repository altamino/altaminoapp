.class Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SRLiveUserRecyclerView.java"


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
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;


# direct methods
.method constructor <init>(Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;->this$0:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;->this$0:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    iget-object v0, v0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->itemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 315
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;->this$0:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    iget-object v0, v0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->itemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 316
    instance-of v1, v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    if-eqz v1, :cond_1

    .line 317
    check-cast v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    iget-object p1, v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    iget p1, p1, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x2

    return p1

    .line 322
    :cond_1
    sget-object v1, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->DIVIDER:Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    const/4 p1, 0x3

    return p1

    .line 324
    :cond_2
    sget-object v1, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->INVITE:Ljava/lang/Object;

    if-ne v0, v1, :cond_3

    const/4 p1, 0x4

    return p1

    .line 327
    :cond_3
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 8

    .line 258
    instance-of v0, p1, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$PresenterHolder;

    if-eqz v0, :cond_4

    .line 259
    check-cast p1, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$PresenterHolder;

    .line 260
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;->this$0:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    iget-object v0, v0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->itemList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    .line 261
    instance-of v0, p2, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    if-eqz v0, :cond_9

    .line 262
    check-cast p2, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 263
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;->this$0:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    iget-object v0, v0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getLocalMutedUserList()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 264
    iget-object v3, p2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-eqz v3, :cond_0

    .line 265
    invoke-virtual {v3}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    invoke-virtual {v3}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 266
    iget-object v0, p2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/narvii/chat/signalling/ChannelUser;->isHost:Z

    if-eqz v0, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 267
    :goto_1
    iget-object v0, p1, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$PresenterHolder;->presenterItemView:Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;

    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;->this$0:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    invoke-static {v1}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->access$000(Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->setHostVolumeLevel(I)V

    .line 268
    iget-object v0, p1, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$PresenterHolder;->presenterItemView:Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;

    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;->this$0:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    iget-object v1, v1, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->signallingChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    iget v1, v1, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    invoke-virtual {v0, v1}, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->setLocalUid(I)V

    .line 269
    iget-object v0, p1, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$PresenterHolder;->presenterItemView:Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;

    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;->this$0:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    invoke-static {v1}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->access$100(Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->setTextOnly(Z)V

    .line 270
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;->this$0:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    iget-object v0, v0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->chatThread:Lcom/narvii/model/ChatThread;

    invoke-static {v0}, Lcom/narvii/chat/util/ChatHelperKt;->isSingleChat(Lcom/narvii/model/ChatThread;)Z

    move-result v0

    .line 271
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;->this$0:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    iget-object v2, v1, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    iget-object v1, v1, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->chatThread:Lcom/narvii/model/ChatThread;

    iget-object v3, p2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    const/4 v5, 0x0

    if-nez v3, :cond_2

    move-object v3, v5

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v2, v1, v3}, Lcom/narvii/chat/util/ChatHelper;->isHost(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Z

    move-result v1

    if-nez v0, :cond_3

    if-eqz v1, :cond_3

    .line 272
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;->this$0:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0768

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_3

    :cond_3
    move-object v7, v5

    .line 273
    :goto_3
    iget-object v1, p1, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$PresenterHolder;->presenterItemView:Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;

    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;->this$0:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    iget-object v2, v0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->signallingChannel:Lcom/narvii/chat/signalling/SignallingChannel;

    const/4 v5, 0x0

    move-object v3, p2

    invoke-virtual/range {v1 .. v7}, Lcom/narvii/chat/screenroom/widgets/SRPresenterItemView;->updateView(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/rtc/ChannelUserWrapper;ZZZLjava/lang/String;)V

    .line 274
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 276
    :cond_4
    instance-of v0, p1, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$AudienceHolder;

    if-eqz v0, :cond_5

    .line 277
    check-cast p1, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$AudienceHolder;

    .line 278
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;->this$0:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    iget-object v0, v0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->itemList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    .line 279
    instance-of v0, p2, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    if-eqz v0, :cond_9

    .line 280
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 281
    iget-object p1, p1, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$AudienceHolder;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    check-cast p2, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    iget-object p2, p2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    iget-object p2, p2, Lcom/narvii/chat/signalling/ChannelUser;->userProfile:Lcom/narvii/model/User;

    invoke-virtual {p1, p2}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    goto/16 :goto_5

    .line 283
    :cond_5
    instance-of p2, p1, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$DividerHolder;

    if-eqz p2, :cond_9

    .line 284
    iget-object p2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    const v0, 0x7f07029d

    if-eqz p2, :cond_7

    .line 286
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;->this$0:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 287
    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;->this$0:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07029e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 288
    iget-object v3, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;->this$0:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    invoke-static {v3}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->access$200(Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 289
    iput v2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 290
    iput v1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_4

    .line 292
    :cond_6
    iput v1, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 293
    iput v2, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 297
    :cond_7
    :goto_4
    check-cast p1, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$DividerHolder;

    iget-object p1, p1, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$DividerHolder;->line:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 299
    iget-object p2, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;->this$0:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 300
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;->this$0:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07029c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 301
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;->this$0:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    invoke-static {v1}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->access$200(Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 302
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 303
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_5

    .line 305
    :cond_8
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 306
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_9
    :goto_5
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 239
    :cond_0
    iget-object p2, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;->this$0:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b063c

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 240
    new-instance p2, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter$1;

    invoke-direct {p2, p0}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter$1;-><init>(Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    new-instance p2, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$InviteHolder;

    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;->this$0:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    invoke-direct {p2, v0, p1}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$InviteHolder;-><init>(Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;Landroid/view/View;)V

    return-object p2

    .line 236
    :cond_1
    iget-object p2, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;->this$0:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b063b

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 237
    new-instance p2, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$DividerHolder;

    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;->this$0:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    invoke-direct {p2, v0, p1}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$DividerHolder;-><init>(Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;Landroid/view/View;)V

    return-object p2

    .line 232
    :cond_2
    iget-object p2, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;->this$0:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b063a

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 233
    iget-object p2, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;->this$0:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    iget-object p2, p2, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->onClickListenerWrapper:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    new-instance p2, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$AudienceHolder;

    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;->this$0:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    invoke-direct {p2, v0, p1}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$AudienceHolder;-><init>(Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;Landroid/view/View;)V

    return-object p2

    .line 228
    :cond_3
    iget-object p2, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;->this$0:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b063d

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 229
    iget-object p2, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;->this$0:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    iget-object p2, p2, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->onClickListenerWrapper:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    new-instance p2, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$PresenterHolder;

    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;->this$0:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    invoke-direct {p2, v0, p1}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$PresenterHolder;-><init>(Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;Landroid/view/View;)V

    return-object p2
.end method
