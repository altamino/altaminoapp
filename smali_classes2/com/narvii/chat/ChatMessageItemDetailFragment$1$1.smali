.class Lcom/narvii/chat/ChatMessageItemDetailFragment$1$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "ChatMessageItemDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/ChatMessageItemDetailFragment$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/ThreadResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/chat/detail/MemberListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/chat/ChatMessageItemDetailFragment$1;


# direct methods
.method constructor <init>(Lcom/narvii/chat/ChatMessageItemDetailFragment$1;Ljava/lang/Class;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment$1$1;->this$1:Lcom/narvii/chat/ChatMessageItemDetailFragment$1;

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

    .line 335
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 336
    iget-object p1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment$1$1;->this$1:Lcom/narvii/chat/ChatMessageItemDetailFragment$1;

    iget-object p1, p1, Lcom/narvii/chat/ChatMessageItemDetailFragment$1;->this$0:Lcom/narvii/chat/ChatMessageItemDetailFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0f02f1

    invoke-static {p1, p2}, Lcom/narvii/flag/resolve/FlagModeHelper;->showNotAvailableDialog(Landroid/content/Context;I)V

    .line 337
    iget-object p1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment$1$1;->this$1:Lcom/narvii/chat/ChatMessageItemDetailFragment$1;

    iget-object p1, p1, Lcom/narvii/chat/ChatMessageItemDetailFragment$1;->this$0:Lcom/narvii/chat/ChatMessageItemDetailFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/narvii/chat/ChatMessageItemDetailFragment;->access$100(Lcom/narvii/chat/ChatMessageItemDetailFragment;Z)V

    .line 338
    iget-object p1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment$1$1;->this$1:Lcom/narvii/chat/ChatMessageItemDetailFragment$1;

    iget-object p1, p1, Lcom/narvii/chat/ChatMessageItemDetailFragment$1;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/detail/MemberListResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 321
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 322
    iget-object p1, p2, Lcom/narvii/chat/detail/MemberListResponse;->memberList:Ljava/util/List;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment$1$1;->this$1:Lcom/narvii/chat/ChatMessageItemDetailFragment$1;

    iget-object p2, p2, Lcom/narvii/chat/ChatMessageItemDetailFragment$1;->this$0:Lcom/narvii/chat/ChatMessageItemDetailFragment;

    invoke-static {p2}, Lcom/narvii/chat/ChatMessageItemDetailFragment;->access$000(Lcom/narvii/chat/ChatMessageItemDetailFragment;)Lcom/narvii/account/AccountService;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->containsId(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 323
    const-class p1, Lcom/narvii/chat/ChatFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 324
    iget-object p2, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment$1$1;->this$1:Lcom/narvii/chat/ChatMessageItemDetailFragment$1;

    iget-object p2, p2, Lcom/narvii/chat/ChatMessageItemDetailFragment$1;->this$0:Lcom/narvii/chat/ChatMessageItemDetailFragment;

    iget-object p2, p2, Lcom/narvii/chat/ChatMessageItemDetailFragment;->threadId:Ljava/lang/String;

    const-string v0, "id"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    iget-object p2, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment$1$1;->this$1:Lcom/narvii/chat/ChatMessageItemDetailFragment$1;

    iget-object p2, p2, Lcom/narvii/chat/ChatMessageItemDetailFragment$1;->this$0:Lcom/narvii/chat/ChatMessageItemDetailFragment;

    invoke-virtual {p2, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 327
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment$1$1;->this$1:Lcom/narvii/chat/ChatMessageItemDetailFragment$1;

    iget-object p1, p1, Lcom/narvii/chat/ChatMessageItemDetailFragment$1;->this$0:Lcom/narvii/chat/ChatMessageItemDetailFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0f02f1

    invoke-static {p1, p2}, Lcom/narvii/flag/resolve/FlagModeHelper;->showNotAvailableDialog(Landroid/content/Context;I)V

    .line 328
    iget-object p1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment$1$1;->this$1:Lcom/narvii/chat/ChatMessageItemDetailFragment$1;

    iget-object p1, p1, Lcom/narvii/chat/ChatMessageItemDetailFragment$1;->this$0:Lcom/narvii/chat/ChatMessageItemDetailFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/narvii/chat/ChatMessageItemDetailFragment;->access$100(Lcom/narvii/chat/ChatMessageItemDetailFragment;Z)V

    .line 330
    :goto_0
    iget-object p1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment$1$1;->this$1:Lcom/narvii/chat/ChatMessageItemDetailFragment$1;

    iget-object p1, p1, Lcom/narvii/chat/ChatMessageItemDetailFragment$1;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 318
    check-cast p2, Lcom/narvii/chat/detail/MemberListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/ChatMessageItemDetailFragment$1$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/detail/MemberListResponse;)V

    return-void
.end method
