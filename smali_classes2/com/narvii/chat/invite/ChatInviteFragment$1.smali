.class Lcom/narvii/chat/invite/ChatInviteFragment$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "ChatInviteFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/invite/ChatInviteFragment;->startChat(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/chat/thread/ThreadListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/invite/ChatInviteFragment;

.field final synthetic val$autoShowKeyboard:Z

.field final synthetic val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

.field final synthetic val$uid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/chat/invite/ChatInviteFragment;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;ZLjava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/narvii/chat/invite/ChatInviteFragment$1;->this$0:Lcom/narvii/chat/invite/ChatInviteFragment;

    iput-object p3, p0, Lcom/narvii/chat/invite/ChatInviteFragment$1;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    iput-boolean p4, p0, Lcom/narvii/chat/invite/ChatInviteFragment$1;->val$autoShowKeyboard:Z

    iput-object p5, p0, Lcom/narvii/chat/invite/ChatInviteFragment$1;->val$uid:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "I",
            "Ljava/util/List<",
            "Lcom/narvii/util/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/narvii/model/api/ApiResponse;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 110
    iget-object p1, p0, Lcom/narvii/chat/invite/ChatInviteFragment$1;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    const/4 p1, 0x0

    const/16 p3, 0x640

    if-ne p2, p3, :cond_0

    .line 113
    iget-object p2, p0, Lcom/narvii/chat/invite/ChatInviteFragment$1;->this$0:Lcom/narvii/chat/invite/ChatInviteFragment;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/String;

    iget-object p4, p0, Lcom/narvii/chat/invite/ChatInviteFragment$1;->val$uid:Ljava/lang/String;

    aput-object p4, p3, p1

    iget-boolean p1, p0, Lcom/narvii/chat/invite/ChatInviteFragment$1;->val$autoShowKeyboard:Z

    invoke-virtual {p2, p3, p1}, Lcom/narvii/chat/invite/ChatInviteFragment;->askInvite([Ljava/lang/String;Z)V

    goto :goto_0

    .line 115
    :cond_0
    iget-object p2, p0, Lcom/narvii/chat/invite/ChatInviteFragment$1;->this$0:Lcom/narvii/chat/invite/ChatInviteFragment;

    invoke-virtual {p2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p4, p1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    :goto_0
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/thread/ThreadListResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 78
    iget-object p1, p0, Lcom/narvii/chat/invite/ChatInviteFragment$1;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 80
    iget-object p1, p2, Lcom/narvii/chat/thread/ThreadListResponse;->threadList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 81
    iget-object p1, p2, Lcom/narvii/chat/thread/ThreadListResponse;->threadList:Ljava/util/List;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 82
    iget-object p2, p0, Lcom/narvii/chat/invite/ChatInviteFragment$1;->this$0:Lcom/narvii/chat/invite/ChatInviteFragment;

    invoke-static {p2}, Lcom/narvii/chat/invite/ChatInviteFragment;->access$100(Lcom/narvii/chat/invite/ChatInviteFragment;)Lcom/narvii/chat/util/GlobalChatService;

    move-result-object p2

    iget-object v0, p0, Lcom/narvii/chat/invite/ChatInviteFragment$1;->this$0:Lcom/narvii/chat/invite/ChatInviteFragment;

    .line 83
    invoke-static {v0}, Lcom/narvii/chat/invite/ChatInviteFragment;->access$000(Lcom/narvii/chat/invite/ChatInviteFragment;)Lcom/narvii/config/ConfigService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    iget-object v1, p0, Lcom/narvii/chat/invite/ChatInviteFragment$1;->this$0:Lcom/narvii/chat/invite/ChatInviteFragment;

    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 82
    invoke-static {p1, v0, v1}, Lcom/narvii/chat/global/GlobalChatThread;->newGlobalChatThread(Lcom/narvii/model/ChatThread;ILandroid/content/Context;)Lcom/narvii/chat/global/GlobalChatThread;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/narvii/chat/util/GlobalChatService;->addRecentChat(Lcom/narvii/chat/global/GlobalChatThread;)V

    .line 84
    const-class p2, Lcom/narvii/chat/ChatFragment;

    invoke-static {p2}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p2

    .line 85
    iget-object v0, p1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    const-string v1, "id"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "thread"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    iget-boolean v0, p0, Lcom/narvii/chat/invite/ChatInviteFragment$1;->val$autoShowKeyboard:Z

    const-string v1, "showKeyboard"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 88
    iget-object v0, p0, Lcom/narvii/chat/invite/ChatInviteFragment$1;->this$0:Lcom/narvii/chat/invite/ChatInviteFragment;

    iget-object v1, v0, Lcom/narvii/chat/invite/ChatInviteFragment;->source:Ljava/lang/String;

    const-string v2, "Source"

    if-nez v1, :cond_0

    .line 89
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/narvii/chat/invite/ChatInviteFragment$1;->this$0:Lcom/narvii/chat/invite/ChatInviteFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/narvii/chat/invite/ChatInviteFragment$1;->this$0:Lcom/narvii/chat/invite/ChatInviteFragment;

    const-string v1, "stickerCollectionId"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 97
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/invite/ChatInviteFragment$1;->this$0:Lcom/narvii/chat/invite/ChatInviteFragment;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 100
    iget-object p2, p0, Lcom/narvii/chat/invite/ChatInviteFragment$1;->this$0:Lcom/narvii/chat/invite/ChatInviteFragment;

    iget-object p2, p2, Lcom/narvii/chat/invite/ChatInviteFragment;->onStartListener:Lcom/narvii/util/Callback;

    if-eqz p2, :cond_3

    .line 101
    invoke-interface {p2, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 74
    check-cast p2, Lcom/narvii/chat/thread/ThreadListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/invite/ChatInviteFragment$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/thread/ThreadListResponse;)V

    return-void
.end method
