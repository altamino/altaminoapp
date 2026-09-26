.class Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter$1;->this$1:Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter$1;->val$item:Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter$1;->this$1:Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;

    .line 3
    .line 4
    new-instance v1, Landroid/content/Intent;

    .line 5
    .line 6
    const-string v2, "joinChannel"

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/narvii/list/NVAdapter;->ensureLogin(Landroid/content/Intent;)V

    .line 13
    return-void
.end method

.method public onPostJoinCommunity(IZ)V
    .locals 3

    .line 1
    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    iget-object p2, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter$1;->this$1:Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;

    .line 5
    .line 6
    iget-object p2, p2, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    .line 7
    .line 8
    .line 9
    invoke-static {p2}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->z(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)Lcom/narvii/chat/rtc/RtcService;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter$1;->this$1:Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->J(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, v0}, Lcom/narvii/chat/rtc/RtcService;->getMappedSignallingChannel(Ljava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    .line 22
    move-result-object p2

    .line 23
    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    iget p2, p2, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    .line 27
    const/4 v0, 0x3

    .line 28
    .line 29
    if-ne p2, v0, :cond_0

    .line 30
    .line 31
    iget-object p2, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter$1;->this$1:Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;

    .line 32
    .line 33
    iget-object p2, p2, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    .line 34
    .line 35
    .line 36
    invoke-static {p2}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->z(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)Lcom/narvii/chat/rtc/RtcService;

    .line 37
    move-result-object p2

    .line 38
    .line 39
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter$1;->this$1:Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->J(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    new-instance v1, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter$1$1;

    .line 48
    .line 49
    .line 50
    invoke-direct {v1, p0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter$1$1;-><init>(Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter$1;)V

    .line 51
    const/4 v2, 0x2

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, p1, v0, v2, v1}, Lcom/narvii/chat/rtc/RtcService;->updateJoinRole(ILjava/lang/String;ILcom/narvii/util/Callback;)V

    .line 55
    :cond_0
    return-void
.end method

.method public onPreJoinCommunity(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
