.class Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter$1;
.super Ljava/lang/Object;
.source "ParticipantsListFragment.java"

# interfaces
.implements Lcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->checkCommunityAvailability(Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;

.field final synthetic val$item:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;Ljava/lang/Object;)V
    .locals 0

    .line 605
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter$1;->this$1:Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;

    iput-object p2, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter$1;->val$item:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public followingChatToJoin()Lcom/narvii/model/ChatThread;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getActionRTCType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCheckLoginFailed()V
    .locals 3

    .line 613
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter$1;->this$1:Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "joinChannel"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/narvii/list/NVAdapter;->ensureLogin(Landroid/content/Intent;)V

    return-void
.end method

.method public onPostJoinCommunity(IZ)V
    .locals 3

    if-eqz p2, :cond_0

    .line 629
    iget-object p2, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter$1;->this$1:Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;

    iget-object p2, p2, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    invoke-static {p2}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->access$900(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)Lcom/narvii/chat/rtc/RtcService;

    move-result-object p2

    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter$1;->this$1:Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;

    iget-object v0, v0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    invoke-static {v0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->access$1200(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/narvii/chat/rtc/RtcService;->getMappedSignallingChannel(Ljava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 630
    iget p2, p2, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 631
    iget-object p2, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter$1;->this$1:Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;

    iget-object p2, p2, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    invoke-static {p2}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->access$900(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)Lcom/narvii/chat/rtc/RtcService;

    move-result-object p2

    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter$1;->this$1:Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;

    iget-object v0, v0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    invoke-static {v0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->access$1200(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-instance v2, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter$1$1;

    invoke-direct {v2, p0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter$1$1;-><init>(Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter$1;)V

    invoke-virtual {p2, p1, v0, v1, v2}, Lcom/narvii/chat/rtc/RtcService;->updateJoinRole(ILjava/lang/String;ILcom/narvii/util/Callback;)V

    :cond_0
    return-void
.end method

.method public onPreJoinCommunity(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
