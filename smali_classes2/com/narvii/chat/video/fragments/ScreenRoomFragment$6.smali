.class Lcom/narvii/chat/video/fragments/ScreenRoomFragment$6;
.super Ljava/lang/Object;
.source "ScreenRoomFragment.java"

# interfaces
.implements Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$ParticipantItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/video/fragments/ScreenRoomFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/fragments/ScreenRoomFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/fragments/ScreenRoomFragment;)V
    .locals 0

    .line 511
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment$6;->this$0:Lcom/narvii/chat/video/fragments/ScreenRoomFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInviteButtonClicked()V
    .locals 4

    .line 531
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment$6;->this$0:Lcom/narvii/chat/video/fragments/ScreenRoomFragment;

    new-instance v1, Lcom/narvii/chat/video/utils/VVChatInviteHelper;

    invoke-virtual {v0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v2

    iget-object v3, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment$6;->this$0:Lcom/narvii/chat/video/fragments/ScreenRoomFragment;

    iget v3, v3, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->channelType:I

    invoke-direct {v1, v0, v2, v3}, Lcom/narvii/chat/video/utils/VVChatInviteHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/ChatThread;I)V

    invoke-static {v0, v1}, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->access$602(Lcom/narvii/chat/video/fragments/ScreenRoomFragment;Lcom/narvii/chat/video/utils/VVChatInviteHelper;)Lcom/narvii/chat/video/utils/VVChatInviteHelper;

    .line 532
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment$6;->this$0:Lcom/narvii/chat/video/fragments/ScreenRoomFragment;

    invoke-static {v0}, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->access$600(Lcom/narvii/chat/video/fragments/ScreenRoomFragment;)Lcom/narvii/chat/video/utils/VVChatInviteHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->onInviteButtonClicked()V

    return-void
.end method

.method public onParticipantItemClicked(Lcom/narvii/chat/rtc/ChannelUserWrapper;)V
    .locals 5

    .line 515
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment$6;->this$0:Lcom/narvii/chat/video/fragments/ScreenRoomFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->checkCommunityAvailability()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 519
    iget-object v0, p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/narvii/chat/signalling/ChannelUser;->isHost:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 520
    :goto_0
    new-instance v2, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;

    iget-object v3, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment$6;->this$0:Lcom/narvii/chat/video/fragments/ScreenRoomFragment;

    invoke-direct {v2, v3, p1}, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    .line 521
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment$6;->this$0:Lcom/narvii/chat/video/fragments/ScreenRoomFragment;

    invoke-virtual {p1}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThreadId()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment$6;->this$0:Lcom/narvii/chat/video/fragments/ScreenRoomFragment;

    iget v4, v3, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->channelType:I

    iget-object v3, v3, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->chatThread:Lcom/narvii/model/ChatThread;

    invoke-virtual {v2, p1, v4, v3}, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->configUserDialog(Ljava/lang/String;ILcom/narvii/model/ChatThread;)Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;

    .line 522
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment$6;->this$0:Lcom/narvii/chat/video/fragments/ScreenRoomFragment;

    iget-object p1, p1, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->VVProfileClickListener:Lcom/narvii/chat/dialog/VVChatUserDialog$VVProfileClickListener;

    invoke-virtual {v2, p1}, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->clickListener(Lcom/narvii/chat/dialog/VVChatUserDialog$VVProfileClickListener;)Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;

    move-result-object p1

    xor-int/2addr v0, v1

    .line 523
    invoke-virtual {p1, v0}, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->muteVideoWhenBlockUser(Z)Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;

    .line 524
    invoke-virtual {v2}, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->build()Lcom/narvii/chat/dialog/VVChatUserDialog;

    move-result-object p1

    .line 525
    invoke-virtual {p1}, Lcom/narvii/chat/dialog/VVChatUserDialog;->show()V

    :cond_2
    return-void
.end method
