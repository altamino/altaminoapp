.class Lcom/narvii/chat/detail/ThreadDetailFragment$9;
.super Ljava/lang/Object;
.source "ThreadDetailFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/detail/ThreadDetailFragment;->addMembers(Ljava/util/List;)V
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
.field final synthetic this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

.field final synthetic val$thread:Lcom/narvii/model/ChatThread;

.field final synthetic val$uidList:Ljava/util/List;

.field final synthetic val$userList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/narvii/chat/detail/ThreadDetailFragment;Ljava/util/List;Ljava/util/List;Lcom/narvii/model/ChatThread;)V
    .locals 0

    .line 1693
    iput-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$9;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    iput-object p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$9;->val$uidList:Ljava/util/List;

    iput-object p3, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$9;->val$userList:Ljava/util/List;

    iput-object p4, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$9;->val$thread:Lcom/narvii/model/ChatThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 4

    .line 1696
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$9;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    iget-object p1, p1, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->memberList:Ljava/util/List;

    if-eqz p1, :cond_2

    .line 1697
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 1698
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1699
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/User;

    .line 1700
    iget-object v2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$9;->val$uidList:Ljava/util/List;

    iget-object v1, v1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1701
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1704
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$9;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    iget-object p1, p1, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->memberList:Ljava/util/List;

    iget-object v1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$9;->val$userList:Ljava/util/List;

    invoke-interface {p1, v0, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 1705
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$9;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    iget-object p1, p1, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    .line 1708
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$9;->val$thread:Lcom/narvii/model/ChatThread;

    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 1709
    iget-object v1, p1, Lcom/narvii/model/ChatThread;->membersSummary:Ljava/util/List;

    if-eqz v1, :cond_5

    .line 1710
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1711
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1712
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/User;

    .line 1713
    iget-object v3, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$9;->val$uidList:Ljava/util/List;

    iget-object v2, v2, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1714
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 1717
    :cond_4
    iget-object v1, p1, Lcom/narvii/model/ChatThread;->membersSummary:Ljava/util/List;

    iget-object v2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$9;->val$userList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1721
    :cond_5
    iget-object v1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$9;->val$userList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/User;

    .line 1722
    iget v2, v2, Lcom/narvii/model/User;->membershipStatus:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1726
    :cond_7
    iget v1, p1, Lcom/narvii/model/ChatThread;->membersCount:I

    add-int/2addr v1, v0

    iput v1, p1, Lcom/narvii/model/ChatThread;->membersCount:I

    .line 1728
    new-instance v0, Lcom/narvii/notification/Notification;

    const-string/jumbo v1, "update"

    invoke-direct {v0, v1, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 1729
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$9;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->sendNotification(Lcom/narvii/notification/Notification;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1693
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/detail/ThreadDetailFragment$9;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
