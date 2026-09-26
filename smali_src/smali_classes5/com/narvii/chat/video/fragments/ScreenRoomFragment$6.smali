.class Lcom/narvii/chat/video/fragments/ScreenRoomFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment$6;->this$0:Lcom/narvii/chat/video/fragments/ScreenRoomFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onInviteButtonClicked()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment$6;->this$0:Lcom/narvii/chat/video/fragments/ScreenRoomFragment;

    .line 3
    .line 4
    new-instance v1, Lcom/narvii/chat/video/utils/VVChatInviteHelper;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 8
    move-result-object v2

    .line 9
    .line 10
    iget-object v3, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment$6;->this$0:Lcom/narvii/chat/video/fragments/ScreenRoomFragment;

    .line 11
    .line 12
    iget v3, v3, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->channelType:I

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v0, v2, v3}, Lcom/narvii/chat/video/utils/VVChatInviteHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/ChatThread;I)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->y(Lcom/narvii/chat/video/fragments/ScreenRoomFragment;Lcom/narvii/chat/video/utils/VVChatInviteHelper;)V

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment$6;->this$0:Lcom/narvii/chat/video/fragments/ScreenRoomFragment;

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->u(Lcom/narvii/chat/video/fragments/ScreenRoomFragment;)Lcom/narvii/chat/video/utils/VVChatInviteHelper;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/narvii/chat/video/utils/VVChatInviteHelper;->onInviteButtonClicked()V

    .line 28
    return-void
.end method

.method public onParticipantItemClicked(Lcom/narvii/chat/rtc/ChannelUserWrapper;)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment$6;->this$0:Lcom/narvii/chat/video/fragments/ScreenRoomFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->checkCommunityAvailability()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    if-eqz p1, :cond_2

    .line 12
    .line 13
    iget-object v0, p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 14
    const/4 v1, 0x1

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-boolean v0, v0, Lcom/narvii/chat/signalling/ChannelUser;->isHost:Z

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    move v0, v1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    .line 25
    :goto_0
    new-instance v2, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;

    .line 26
    .line 27
    iget-object v3, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment$6;->this$0:Lcom/narvii/chat/video/fragments/ScreenRoomFragment;

    .line 28
    .line 29
    .line 30
    invoke-direct {v2, v3, p1}, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    .line 31
    .line 32
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment$6;->this$0:Lcom/narvii/chat/video/fragments/ScreenRoomFragment;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThreadId()Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    iget-object v3, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment$6;->this$0:Lcom/narvii/chat/video/fragments/ScreenRoomFragment;

    .line 39
    .line 40
    iget v4, v3, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->channelType:I

    .line 41
    .line 42
    iget-object v3, v3, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, p1, v4, v3}, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->configUserDialog(Ljava/lang/String;ILcom/narvii/model/ChatThread;)Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;

    .line 46
    .line 47
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment$6;->this$0:Lcom/narvii/chat/video/fragments/ScreenRoomFragment;

    .line 48
    .line 49
    iget-object p1, p1, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->VVProfileClickListener:Lcom/narvii/chat/dialog/VVChatUserDialog$VVProfileClickListener;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, p1}, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->clickListener(Lcom/narvii/chat/dialog/VVChatUserDialog$VVProfileClickListener;)Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;

    .line 53
    move-result-object p1

    .line 54
    xor-int/2addr v0, v1

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0}, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->muteVideoWhenBlockUser(Z)Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->build()Lcom/narvii/chat/dialog/VVChatUserDialog;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/narvii/chat/dialog/VVChatUserDialog;->show()V

    .line 65
    :cond_2
    return-void
.end method
