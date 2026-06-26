.class Lcom/narvii/chat/invite/ChatInviteFragment$4;
.super Ljava/lang/Object;
.source "ChatInviteFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/invite/ChatInviteFragment;->sendInvite([Ljava/lang/String;Ljava/lang/String;Z)V
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
.field final synthetic this$0:Lcom/narvii/chat/invite/ChatInviteFragment;

.field final synthetic val$autoShowKeyboard:Z

.field final synthetic val$uids:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/chat/invite/ChatInviteFragment;Z[Ljava/lang/String;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/narvii/chat/invite/ChatInviteFragment$4;->this$0:Lcom/narvii/chat/invite/ChatInviteFragment;

    iput-boolean p2, p0, Lcom/narvii/chat/invite/ChatInviteFragment$4;->val$autoShowKeyboard:Z

    iput-object p3, p0, Lcom/narvii/chat/invite/ChatInviteFragment$4;->val$uids:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 7

    .line 155
    iget-object v0, p0, Lcom/narvii/chat/invite/ChatInviteFragment$4;->this$0:Lcom/narvii/chat/invite/ChatInviteFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/narvii/chat/invite/ChatInviteFragment;->access$302(Lcom/narvii/chat/invite/ChatInviteFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 156
    check-cast p1, Lcom/narvii/chat/ThreadResponse;

    .line 157
    iget-object p1, p1, Lcom/narvii/chat/ThreadResponse;->thread:Lcom/narvii/model/ChatThread;

    .line 159
    new-instance v0, Lcom/narvii/notification/Notification;

    const-string v2, "new"

    invoke-direct {v0, v2, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 160
    iget-object v2, p0, Lcom/narvii/chat/invite/ChatInviteFragment$4;->this$0:Lcom/narvii/chat/invite/ChatInviteFragment;

    invoke-virtual {v2, v0}, Lcom/narvii/app/NVFragment;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 163
    iget-object v0, p0, Lcom/narvii/chat/invite/ChatInviteFragment$4;->this$0:Lcom/narvii/chat/invite/ChatInviteFragment;

    iget-object v2, v0, Lcom/narvii/chat/invite/ChatInviteFragment;->source:Ljava/lang/String;

    const-string v3, "Source"

    if-nez v2, :cond_1

    .line 164
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/invite/ChatInviteFragment$4;->this$0:Lcom/narvii/chat/invite/ChatInviteFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 169
    :cond_1
    :goto_0
    const-class v0, Lcom/narvii/chat/ChatFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 170
    iget-object v4, p1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    const-string v5, "id"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v4, 0x1

    const-string v5, "justCreated"

    .line 171
    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 172
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "thread"

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    iget-object v3, p0, Lcom/narvii/chat/invite/ChatInviteFragment$4;->this$0:Lcom/narvii/chat/invite/ChatInviteFragment;

    const-string v5, "stickerCollectionId"

    invoke-virtual {v3, v5}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 176
    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    :cond_2
    iget-boolean v3, p0, Lcom/narvii/chat/invite/ChatInviteFragment$4;->val$autoShowKeyboard:Z

    const-string v5, "showKeyboard"

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 179
    iget-object v3, p0, Lcom/narvii/chat/invite/ChatInviteFragment$4;->this$0:Lcom/narvii/chat/invite/ChatInviteFragment;

    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/narvii/chat/invite/ChatInviteFragment$4;->this$0:Lcom/narvii/chat/invite/ChatInviteFragment;

    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 180
    iget-object v3, p0, Lcom/narvii/chat/invite/ChatInviteFragment$4;->this$0:Lcom/narvii/chat/invite/ChatInviteFragment;

    invoke-virtual {v3, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 182
    :cond_3
    iget-object v0, p0, Lcom/narvii/chat/invite/ChatInviteFragment$4;->this$0:Lcom/narvii/chat/invite/ChatInviteFragment;

    iget-object v0, v0, Lcom/narvii/chat/invite/ChatInviteFragment;->onStartListener:Lcom/narvii/util/Callback;

    if-eqz v0, :cond_4

    .line 183
    invoke-interface {v0, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 186
    :cond_4
    iget-object v0, p0, Lcom/narvii/chat/invite/ChatInviteFragment$4;->this$0:Lcom/narvii/chat/invite/ChatInviteFragment;

    invoke-static {v0}, Lcom/narvii/chat/invite/ChatInviteFragment;->access$100(Lcom/narvii/chat/invite/ChatInviteFragment;)Lcom/narvii/chat/util/GlobalChatService;

    move-result-object v0

    iget-object v3, p0, Lcom/narvii/chat/invite/ChatInviteFragment$4;->this$0:Lcom/narvii/chat/invite/ChatInviteFragment;

    invoke-static {v3}, Lcom/narvii/chat/invite/ChatInviteFragment;->access$000(Lcom/narvii/chat/invite/ChatInviteFragment;)Lcom/narvii/config/ConfigService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v3

    iget-object v5, p0, Lcom/narvii/chat/invite/ChatInviteFragment$4;->this$0:Lcom/narvii/chat/invite/ChatInviteFragment;

    invoke-virtual {v5}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {p1, v3, v5}, Lcom/narvii/chat/global/GlobalChatThread;->newGlobalChatThread(Lcom/narvii/model/ChatThread;ILandroid/content/Context;)Lcom/narvii/chat/global/GlobalChatThread;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/chat/util/GlobalChatService;->addRecentChat(Lcom/narvii/chat/global/GlobalChatThread;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 152
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/invite/ChatInviteFragment$4;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
