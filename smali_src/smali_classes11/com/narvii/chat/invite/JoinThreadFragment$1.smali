.class Lcom/narvii/chat/invite/JoinThreadFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/invite/JoinThreadFragment;->joinConversation(Lcom/narvii/util/Callback;)V
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
.field final synthetic this$0:Lcom/narvii/chat/invite/JoinThreadFragment;

.field final synthetic val$callback:Lcom/narvii/util/Callback;

.field final synthetic val$me:Lcom/narvii/model/User;

.field final synthetic val$myUid:Ljava/lang/String;

.field final synthetic val$thread:Lcom/narvii/model/ChatThread;


# direct methods
.method constructor <init>(Lcom/narvii/chat/invite/JoinThreadFragment;Lcom/narvii/model/ChatThread;Ljava/lang/String;Lcom/narvii/model/User;Lcom/narvii/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/invite/JoinThreadFragment$1;->this$0:Lcom/narvii/chat/invite/JoinThreadFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/invite/JoinThreadFragment$1;->val$thread:Lcom/narvii/model/ChatThread;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/chat/invite/JoinThreadFragment$1;->val$myUid:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/narvii/chat/invite/JoinThreadFragment$1;->val$me:Lcom/narvii/model/User;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/narvii/chat/invite/JoinThreadFragment$1;->val$callback:Lcom/narvii/util/Callback;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 7

    iget-object p1, p0, Lcom/narvii/chat/invite/JoinThreadFragment$1;->this$0:Lcom/narvii/chat/invite/JoinThreadFragment;

    .line 2
    sget-object v0, Lcom/narvii/logging/ActSemantic;->joinChat:Lcom/narvii/logging/ActSemantic;

    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    iget-object p1, p0, Lcom/narvii/chat/invite/JoinThreadFragment$1;->val$thread:Lcom/narvii/model/ChatThread;

    .line 3
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/ChatThread;

    const/4 v0, 0x1

    .line 4
    iput v0, p1, Lcom/narvii/model/ChatThread;->membershipStatus:I

    .line 5
    iget v1, p1, Lcom/narvii/model/ChatThread;->membersCount:I

    add-int/2addr v1, v0

    iput v1, p1, Lcom/narvii/model/ChatThread;->membersCount:I

    .line 6
    iget-object v1, p1, Lcom/narvii/model/ChatThread;->membersSummary:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v2

    .line 8
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 9
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/User;

    iget-object v5, p0, Lcom/narvii/chat/invite/JoinThreadFragment$1;->val$myUid:Ljava/lang/String;

    .line 10
    iget-object v6, v4, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 11
    iput v0, v4, Lcom/narvii/model/User;->membershipStatus:I

    move v3, v0

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    iget-object v1, p0, Lcom/narvii/chat/invite/JoinThreadFragment$1;->val$me:Lcom/narvii/model/User;

    .line 12
    invoke-virtual {v1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/User;

    .line 13
    iput v0, v1, Lcom/narvii/model/User;->membershipStatus:I

    .line 14
    iget-object v0, p1, Lcom/narvii/model/ChatThread;->membersSummary:Ljava/util/List;

    iget-object v1, p0, Lcom/narvii/chat/invite/JoinThreadFragment$1;->val$me:Lcom/narvii/model/User;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/invite/JoinThreadFragment$1;->val$callback:Lcom/narvii/util/Callback;

    if-eqz v0, :cond_3

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 15
    invoke-interface {v0, v1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Lcom/narvii/chat/invite/JoinThreadFragment$1;->val$myUid:Ljava/lang/String;

    iget-object v1, p0, Lcom/narvii/chat/invite/JoinThreadFragment$1;->val$thread:Lcom/narvii/model/ChatThread;

    .line 16
    invoke-virtual {v1}, Lcom/narvii/model/ChatThread;->uid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 17
    iput v2, p1, Lcom/narvii/model/ChatThread;->condition:I

    :cond_4
    iget-object v0, p0, Lcom/narvii/chat/invite/JoinThreadFragment$1;->this$0:Lcom/narvii/chat/invite/JoinThreadFragment;

    const-string v1, "chat"

    .line 18
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/core/ChatService;

    iget-object v1, p0, Lcom/narvii/chat/invite/JoinThreadFragment$1;->this$0:Lcom/narvii/chat/invite/JoinThreadFragment;

    .line 19
    invoke-virtual {v1}, Lcom/narvii/chat/invite/JoinThreadFragment;->getThreadId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/chat/core/ChatService;->removeGuestThreadId(Ljava/lang/String;)V

    .line 20
    new-instance v0, Lcom/narvii/notification/Notification;

    const-string v1, "update"

    invoke-direct {v0, v1, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    iget-object v1, p0, Lcom/narvii/chat/invite/JoinThreadFragment$1;->this$0:Lcom/narvii/chat/invite/JoinThreadFragment;

    const-string v2, "notification"

    .line 21
    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/notification/NotificationCenter;

    .line 22
    invoke-static {v1, v0}, Lcom/narvii/util/NotificationUtils;->sendNotificationIncludeGlobal(Lcom/narvii/notification/NotificationCenter;Lcom/narvii/notification/Notification;)V

    iget-object v0, p0, Lcom/narvii/chat/invite/JoinThreadFragment$1;->this$0:Lcom/narvii/chat/invite/JoinThreadFragment;

    const-string v1, "globalChat"

    .line 23
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/util/GlobalChatService;

    iget-object v1, p0, Lcom/narvii/chat/invite/JoinThreadFragment$1;->this$0:Lcom/narvii/chat/invite/JoinThreadFragment;

    const-string v2, "config"

    .line 24
    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 25
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v1

    iget-object v2, p0, Lcom/narvii/chat/invite/JoinThreadFragment$1;->this$0:Lcom/narvii/chat/invite/JoinThreadFragment;

    invoke-virtual {v2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 26
    invoke-static {p1, v1, v2}, Lcom/narvii/chat/global/GlobalChatThread;->newGlobalChatThread(Lcom/narvii/model/ChatThread;ILandroid/content/Context;)Lcom/narvii/chat/global/GlobalChatThread;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/chat/util/GlobalChatService;->addRecentChat(Lcom/narvii/chat/global/GlobalChatThread;)V

    iget-object p1, p0, Lcom/narvii/chat/invite/JoinThreadFragment$1;->this$0:Lcom/narvii/chat/invite/JoinThreadFragment;

    .line 27
    invoke-static {p1}, Lcom/narvii/chat/invite/JoinThreadFragment;->o(Lcom/narvii/chat/invite/JoinThreadFragment;)Lcom/narvii/account/push/PushNotificationHelper;

    move-result-object p1

    const-string v0, "scenario_chat"

    invoke-virtual {p1, v0}, Lcom/narvii/account/push/PushNotificationHelper;->showRemindDialogIfNeeded(Ljava/lang/String;)Z

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/invite/JoinThreadFragment$1;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
