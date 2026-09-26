.class Lcom/narvii/chat/ChatMessageItemDetailFragment$1$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment$1$1;->this$1:Lcom/narvii/chat/ChatMessageItemDetailFragment$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 6
    return-void
.end method

.method public static safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

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

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment$1$1;->this$1:Lcom/narvii/chat/ChatMessageItemDetailFragment$1;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/narvii/chat/ChatMessageItemDetailFragment$1;->this$0:Lcom/narvii/chat/ChatMessageItemDetailFragment;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    const p2, 0x7f120345

    .line 15
    .line 16
    .line 17
    invoke-static {p1, p2}, Lcom/narvii/flag/resolve/FlagModeHelper;->showNotAvailableDialog(Landroid/content/Context;I)V

    .line 18
    .line 19
    iget-object p1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment$1$1;->this$1:Lcom/narvii/chat/ChatMessageItemDetailFragment$1;

    .line 20
    .line 21
    iget-object p1, p1, Lcom/narvii/chat/ChatMessageItemDetailFragment$1;->this$0:Lcom/narvii/chat/ChatMessageItemDetailFragment;

    .line 22
    const/4 p2, 0x0

    .line 23
    .line 24
    .line 25
    invoke-static {p1, p2}, Lcom/narvii/chat/ChatMessageItemDetailFragment;->p(Lcom/narvii/chat/ChatMessageItemDetailFragment;Z)V

    .line 26
    .line 27
    iget-object p1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment$1$1;->this$1:Lcom/narvii/chat/ChatMessageItemDetailFragment$1;

    .line 28
    .line 29
    iget-object p1, p1, Lcom/narvii/chat/ChatMessageItemDetailFragment$1;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 33
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/detail/MemberListResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 3
    iget-object p1, p2, Lcom/narvii/chat/detail/MemberListResponse;->memberList:Ljava/util/List;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment$1$1;->this$1:Lcom/narvii/chat/ChatMessageItemDetailFragment$1;

    iget-object p2, p2, Lcom/narvii/chat/ChatMessageItemDetailFragment$1;->this$0:Lcom/narvii/chat/ChatMessageItemDetailFragment;

    invoke-static {p2}, Lcom/narvii/chat/ChatMessageItemDetailFragment;->n(Lcom/narvii/chat/ChatMessageItemDetailFragment;)Lcom/narvii/account/AccountService;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->containsId(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-class p1, Lcom/narvii/chat/ChatFragment;

    .line 4
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment$1$1;->this$1:Lcom/narvii/chat/ChatMessageItemDetailFragment$1;

    .line 5
    iget-object p2, p2, Lcom/narvii/chat/ChatMessageItemDetailFragment$1;->this$0:Lcom/narvii/chat/ChatMessageItemDetailFragment;

    iget-object p2, p2, Lcom/narvii/chat/ChatMessageItemDetailFragment;->threadId:Ljava/lang/String;

    const-string v0, "id"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment$1$1;->this$1:Lcom/narvii/chat/ChatMessageItemDetailFragment$1;

    .line 6
    iget-object p2, p2, Lcom/narvii/chat/ChatMessageItemDetailFragment$1;->this$0:Lcom/narvii/chat/ChatMessageItemDetailFragment;

    invoke-static {p2, p1}, Lcom/narvii/chat/ChatMessageItemDetailFragment$1$1;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment$1$1;->this$1:Lcom/narvii/chat/ChatMessageItemDetailFragment$1;

    .line 7
    iget-object p1, p1, Lcom/narvii/chat/ChatMessageItemDetailFragment$1;->this$0:Lcom/narvii/chat/ChatMessageItemDetailFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f120345

    invoke-static {p1, p2}, Lcom/narvii/flag/resolve/FlagModeHelper;->showNotAvailableDialog(Landroid/content/Context;I)V

    iget-object p1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment$1$1;->this$1:Lcom/narvii/chat/ChatMessageItemDetailFragment$1;

    .line 8
    iget-object p1, p1, Lcom/narvii/chat/ChatMessageItemDetailFragment$1;->this$0:Lcom/narvii/chat/ChatMessageItemDetailFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/narvii/chat/ChatMessageItemDetailFragment;->p(Lcom/narvii/chat/ChatMessageItemDetailFragment;Z)V

    :goto_0
    iget-object p1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment$1$1;->this$1:Lcom/narvii/chat/ChatMessageItemDetailFragment$1;

    .line 9
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

    .line 1
    check-cast p2, Lcom/narvii/chat/detail/MemberListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/ChatMessageItemDetailFragment$1$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/detail/MemberListResponse;)V

    return-void
.end method
