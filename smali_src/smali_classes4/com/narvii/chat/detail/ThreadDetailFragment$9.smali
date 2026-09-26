.class Lcom/narvii/chat/detail/ThreadDetailFragment$9;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$9;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$9;->val$uidList:Ljava/util/List;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$9;->val$userList:Ljava/util/List;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$9;->val$thread:Lcom/narvii/model/ChatThread;

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

    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$9;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 2
    iget-object p1, p1, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->memberList:Ljava/util/List;

    if-eqz p1, :cond_2

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 4
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/User;

    iget-object v2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$9;->val$uidList:Ljava/util/List;

    .line 6
    iget-object v1, v1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$9;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 8
    iget-object p1, p1, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->memberList:Ljava/util/List;

    iget-object v1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$9;->val$userList:Ljava/util/List;

    invoke-interface {p1, v0, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$9;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 9
    iget-object p1, p1, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$9;->val$thread:Lcom/narvii/model/ChatThread;

    .line 10
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 11
    iget-object v1, p1, Lcom/narvii/model/ChatThread;->membersSummary:Ljava/util/List;

    if-eqz v1, :cond_5

    .line 12
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 13
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/User;

    iget-object v3, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$9;->val$uidList:Ljava/util/List;

    .line 15
    iget-object v2, v2, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 17
    :cond_4
    iget-object v1, p1, Lcom/narvii/model/ChatThread;->membersSummary:Ljava/util/List;

    iget-object v2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$9;->val$userList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5
    iget-object v1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$9;->val$userList:Ljava/util/List;

    .line 18
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

    .line 19
    iget v2, v2, Lcom/narvii/model/User;->membershipStatus:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 20
    :cond_7
    iget v1, p1, Lcom/narvii/model/ChatThread;->membersCount:I

    add-int/2addr v1, v0

    iput v1, p1, Lcom/narvii/model/ChatThread;->membersCount:I

    .line 21
    new-instance v0, Lcom/narvii/notification/Notification;

    const-string v1, "update"

    invoke-direct {v0, v1, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$9;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 22
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->sendNotification(Lcom/narvii/notification/Notification;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/detail/ThreadDetailFragment$9;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
