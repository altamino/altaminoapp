.class Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;->addMembers(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;

.field final synthetic val$thread:Lcom/narvii/model/ChatThread;

.field final synthetic val$uidList:Ljava/util/List;

.field final synthetic val$userList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;Lcom/narvii/model/ChatThread;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$2;->this$0:Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$2;->val$thread:Lcom/narvii/model/ChatThread;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$2;->val$uidList:Ljava/util/List;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$2;->val$userList:Ljava/util/List;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 4

    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$2;->val$thread:Lcom/narvii/model/ChatThread;

    .line 2
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 3
    iget-object v0, p1, Lcom/narvii/model/ChatThread;->membersSummary:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 5
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/User;

    iget-object v2, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$2;->val$uidList:Ljava/util/List;

    .line 7
    iget-object v1, v1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p1, Lcom/narvii/model/ChatThread;->membersSummary:Ljava/util/List;

    iget-object v1, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$2;->val$userList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$2;->val$userList:Ljava/util/List;

    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/User;

    .line 11
    iget v2, v2, Lcom/narvii/model/User;->membershipStatus:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 12
    :cond_4
    iget v0, p1, Lcom/narvii/model/ChatThread;->membersCount:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/narvii/model/ChatThread;->membersCount:I

    .line 13
    new-instance v0, Lcom/narvii/notification/Notification;

    const-string v1, "update"

    invoke-direct {v0, v1, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$2;->this$0:Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;

    .line 14
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->sendNotification(Lcom/narvii/notification/Notification;)V

    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$2;->this$0:Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;

    .line 15
    invoke-static {p1}, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;->t(Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;)Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$InviteUserListAdapter;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$2;->this$0:Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;

    .line 16
    invoke-static {p1}, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;->t(Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;)Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$InviteUserListAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$2;->val$userList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/narvii/list/NVPagedAdapter;->addAllFirst(Ljava/util/List;)V

    :cond_5
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$2;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
