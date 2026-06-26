.class Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;
.super Lcom/narvii/list/NVArrayAdapter;
.source "ParticipantsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/video/overlay/ParticipantsListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChannelUserListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVArrayAdapter<",
        "Lcom/narvii/model/User;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;Lcom/narvii/app/NVContext;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/User;",
            ">;)V"
        }
    .end annotation

    .line 499
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    .line 500
    invoke-direct {p0, p2, p3}, Lcom/narvii/list/NVArrayAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;Ljava/lang/Object;)V
    .locals 0

    .line 491
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->showVVChatUserDialog(Ljava/lang/Object;)V

    return-void
.end method

.method private getHostLabel(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 563
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    iget-object v0, v0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/chat/util/ChatHelper;->isHost(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 564
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    const p2, 0x7f0f0768

    invoke-virtual {p1, p2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 565
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    iget-object v0, v0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/chat/util/ChatHelper;->isCoHost(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 566
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    const p2, 0x7f0f0279

    invoke-virtual {p1, p2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method private showVVChatUserDialog(Ljava/lang/Object;)V
    .locals 6

    .line 588
    sget-object v0, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 589
    check-cast p1, Lcom/narvii/model/User;

    .line 590
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    invoke-static {v0, p1}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->access$1100(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;Lcom/narvii/model/User;)Lcom/narvii/chat/rtc/ChannelUserWrapper;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 591
    iget-object v2, p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-eqz v2, :cond_0

    iget-boolean v2, v2, Lcom/narvii/chat/signalling/ChannelUser;->isHost:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 592
    :goto_0
    new-instance v3, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;

    iget-object v4, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    invoke-direct {v3, v4, p1}, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    .line 593
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    const-string v4, "id"

    invoke-virtual {p1, v4}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v4, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    invoke-static {v4}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->access$000(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)I

    move-result v4

    iget-object v5, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    invoke-virtual {v5}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v5

    invoke-virtual {v3, p1, v4, v5}, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->configUserDialog(Ljava/lang/String;ILcom/narvii/model/ChatThread;)Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;

    .line 594
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    iget-object p1, p1, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->VVProfileClickListener:Lcom/narvii/chat/dialog/VVChatUserDialog$VVProfileClickListener;

    invoke-virtual {v3, p1}, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->clickListener(Lcom/narvii/chat/dialog/VVChatUserDialog$VVProfileClickListener;)Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;

    move-result-object p1

    const/4 v4, 0x5

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    .line 595
    invoke-static {v2}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->access$000(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)I

    move-result v2

    if-eq v2, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v2, 0x1

    :goto_2
    invoke-virtual {p1, v2}, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->muteVideoWhenBlockUser(Z)Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;

    move-result-object p1

    iget-object v2, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    .line 596
    invoke-static {v2}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->access$000(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)I

    move-result v2

    if-eq v2, v4, :cond_3

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p1, v0}, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->needVideoFrameWhenFlag(Z)Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;

    .line 597
    invoke-virtual {v3}, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->build()Lcom/narvii/chat/dialog/VVChatUserDialog;

    move-result-object p1

    .line 598
    invoke-virtual {p1}, Lcom/narvii/chat/dialog/VVChatUserDialog;->show()V

    return-void
.end method


# virtual methods
.method public checkCommunityAvailability(Ljava/lang/Object;)Z
    .locals 3

    const-string v0, "config"

    .line 602
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 603
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    .line 604
    new-instance v1, Lcom/narvii/chat/global/GlobalChatHelper;

    invoke-direct {v1, p0}, Lcom/narvii/chat/global/GlobalChatHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 605
    new-instance v2, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter$1;

    invoke-direct {v2, p0, p1}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter$1;-><init>(Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {v1, v0, p1, v2}, Lcom/narvii/chat/global/GlobalChatHelper;->tryJoinCommunity(IZLcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    const v0, 0x7f0b03a0

    .line 505
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    .line 506
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/User;

    if-nez p1, :cond_0

    return-object p2

    .line 512
    :cond_0
    iget-object p3, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    invoke-static {p3}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->access$700(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)Ljava/util/HashMap;

    move-result-object p3

    invoke-virtual {p1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    const v0, 0x7f090c10

    .line 513
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    const v0, 0x7f0906f9

    .line 514
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/video/VVChatMembershipNameLayout;

    .line 515
    invoke-virtual {v0, p1}, Lcom/narvii/chat/video/VVChatMembershipNameLayout;->setUser(Lcom/narvii/model/User;)V

    if-eqz p3, :cond_1

    .line 516
    iget v1, p3, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    iget-object v2, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    invoke-static {v2}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->access$800(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 517
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    const v2, 0x7f0f0b28

    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/chat/video/VVChatMembershipNameLayout;->setText(Ljava/lang/String;)V

    .line 519
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    .line 520
    invoke-virtual {v0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    iget v0, v0, Lcom/narvii/model/ChatThread;->type:I

    const/4 v1, 0x2

    .line 521
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->owner()Lcom/narvii/model/User;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 522
    invoke-virtual {p1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    invoke-virtual {v1}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/model/ChatThread;->owner()Lcom/narvii/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 523
    :cond_3
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    invoke-static {v0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->access$900(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)Lcom/narvii/chat/rtc/RtcService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    invoke-static {v0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->access$900(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)Lcom/narvii/chat/rtc/RtcService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    iget v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .line 524
    :goto_0
    iget-object v4, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    iget-object v5, v4, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    invoke-virtual {v4}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v4

    invoke-virtual {p1}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/narvii/chat/util/ChatHelper;->isHostOrCoHost(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    invoke-virtual {v4}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v4

    invoke-static {v4}, Lcom/narvii/chat/util/ChatHelperKt;->isPublicChat(Lcom/narvii/model/ChatThread;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    invoke-virtual {v4}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v4

    invoke-static {v4}, Lcom/narvii/chat/util/ChatHelperKt;->isGroupChat(Lcom/narvii/model/ChatThread;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    const/4 v4, 0x1

    goto :goto_1

    :cond_6
    const/4 v4, 0x0

    :goto_1
    const v5, 0x7f0907fb

    .line 525
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/16 v6, 0x8

    if-eqz v4, :cond_7

    const/4 v4, 0x0

    goto :goto_2

    :cond_7
    const/16 v4, 0x8

    .line 526
    :goto_2
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 527
    iget-object v4, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    invoke-virtual {v4}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v4

    invoke-virtual {p1}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v4, p1}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->getHostLabel(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    if-nez p3, :cond_8

    move-object v4, p1

    goto :goto_3

    .line 529
    :cond_8
    iget v4, p3, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_3
    iget-object v5, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    invoke-static {v5}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->access$900(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)Lcom/narvii/chat/rtc/RtcService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v5

    if-nez v5, :cond_9

    move-object v5, p1

    goto :goto_4

    :cond_9
    iget-object v5, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    invoke-static {v5}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->access$900(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)Lcom/narvii/chat/rtc/RtcService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v5

    iget v5, v5, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_4
    invoke-static {v4, v5}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    .line 530
    iget-object v5, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    invoke-static {v5}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->access$000(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)I

    move-result v5

    const/4 v7, 0x4

    if-eq v5, v7, :cond_b

    iget-object v5, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    invoke-static {v5}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->access$000(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)I

    move-result v5

    const/4 v7, 0x3

    if-eq v5, v7, :cond_b

    iget-object v5, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    invoke-static {v5}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->access$000(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)I

    move-result v5

    if-ne v5, v1, :cond_a

    goto :goto_5

    :cond_a
    const/4 v1, 0x0

    goto :goto_6

    :cond_b
    :goto_5
    const/4 v1, 0x1

    .line 531
    :goto_6
    iget-object v5, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    iget-object v5, v5, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->localMutedUserList:Ljava/util/Set;

    if-eqz p3, :cond_d

    iget-object v7, p3, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-nez v7, :cond_c

    goto :goto_7

    :cond_c
    invoke-virtual {v7}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    move-result-object p1

    :cond_d
    :goto_7
    invoke-interface {v5, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p3, :cond_e

    .line 532
    iget-object v5, p3, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-eqz v5, :cond_e

    iget-boolean v5, v5, Lcom/narvii/chat/signalling/ChannelUser;->isHost:Z

    if-eqz v5, :cond_e

    const/4 v5, 0x1

    goto :goto_8

    :cond_e
    const/4 v5, 0x0

    :goto_8
    if-eqz p3, :cond_f

    .line 533
    iget-object v7, p3, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    if-eqz v7, :cond_f

    invoke-virtual {v7}, Lcom/narvii/video/ui/UserStatusData;->isVoiceMuted()Z

    move-result v7

    if-eqz v7, :cond_f

    const/4 v7, 0x1

    goto :goto_9

    :cond_f
    const/4 v7, 0x0

    :goto_9
    if-eqz v5, :cond_11

    if-eqz v0, :cond_11

    if-eqz v4, :cond_10

    .line 535
    iget-object v4, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    invoke-static {v4}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->access$1000(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)Lcom/narvii/chat/screenroom/ScreenRoomService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/narvii/chat/screenroom/ScreenRoomService;->getLocalMicMuted()Z

    move-result v4

    goto :goto_a

    :cond_10
    iget-object v4, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    invoke-static {v4}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->access$1000(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)Lcom/narvii/chat/screenroom/ScreenRoomService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/narvii/chat/screenroom/ScreenRoomService;->isSrHostMuted()Z

    move-result v4

    :goto_a
    move v7, v4

    :cond_11
    if-eqz p3, :cond_12

    .line 537
    iget-object p3, p3, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    if-eqz p3, :cond_12

    invoke-virtual {p3}, Lcom/narvii/video/ui/UserStatusData;->isVideoMuted()Z

    move-result p3

    if-eqz p3, :cond_12

    goto :goto_b

    :cond_12
    const/4 v2, 0x0

    :goto_b
    const p3, 0x7f09069c

    .line 539
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz p1, :cond_13

    .line 540
    invoke-virtual {p0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->showIndicator()Z

    move-result v4

    if-eqz v4, :cond_13

    const/4 v4, 0x0

    goto :goto_c

    :cond_13
    const/16 v4, 0x8

    :goto_c
    invoke-virtual {p3, v4}, Landroid/view/View;->setVisibility(I)V

    const p3, 0x7f090525

    .line 542
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 543
    invoke-virtual {p3, v6}, Landroid/view/View;->setVisibility(I)V

    const p3, 0x7f090aa2

    .line 544
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    const-string v4, "screenRoom"

    .line 546
    invoke-virtual {p0, v4}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/chat/screenroom/ScreenRoomService;

    const v4, 0x7f080556

    const v8, 0x7f080554

    if-eqz v1, :cond_17

    if-eqz v0, :cond_14

    if-eqz v5, :cond_14

    goto :goto_e

    :cond_14
    if-eqz v2, :cond_15

    if-eqz v7, :cond_18

    :goto_d
    const v4, 0x7f080554

    goto :goto_f

    :cond_15
    if-eqz v7, :cond_16

    goto :goto_d

    :cond_16
    const v8, 0x7f080549

    const v4, 0x7f080549

    goto :goto_f

    :cond_17
    :goto_e
    if-eqz v7, :cond_18

    goto :goto_d

    .line 557
    :cond_18
    :goto_f
    invoke-virtual {p3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 558
    invoke-virtual {p0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->showIndicator()Z

    move-result v0

    if-eqz v0, :cond_19

    if-nez p1, :cond_19

    goto :goto_10

    :cond_19
    const/16 v3, 0x8

    :goto_10
    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    return-object p2
.end method

.method public onAttach()V
    .locals 2

    .line 495
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 496
    new-instance v0, Lcom/narvii/logging/Impression/DivideColumnImpressionCollector;

    const-class v1, Lcom/narvii/model/User;

    invoke-direct {v0, v1}, Lcom/narvii/logging/Impression/DivideColumnImpressionCollector;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 577
    instance-of v0, p3, Lcom/narvii/model/User;

    if-eqz v0, :cond_0

    .line 581
    invoke-direct {p0, p3}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->showVVChatUserDialog(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    .line 584
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method protected showIndicator()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
