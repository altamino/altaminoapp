.class Lcom/narvii/chat/ChatMessageItemDetailFragment$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/ChatMessageItemDetailFragment;->sellAllConversation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/chat/ThreadResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/ChatMessageItemDetailFragment;

.field final synthetic val$apiService:Lcom/narvii/util/http/ApiService;

.field final synthetic val$dlg:Lcom/narvii/util/dialog/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/narvii/chat/ChatMessageItemDetailFragment;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/util/http/ApiService;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment$1;->this$0:Lcom/narvii/chat/ChatMessageItemDetailFragment;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment$1;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment$1;->val$apiService:Lcom/narvii/util/http/ApiService;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 10
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
    iget-object p1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment$1;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment$1;->this$0:Lcom/narvii/chat/ChatMessageItemDetailFragment;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 14
    move-result-object p1

    .line 15
    const/4 p2, 0x1

    .line 16
    .line 17
    .line 18
    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 23
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/ThreadResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    iget-object p1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment$1;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 4
    iget-object p1, p2, Lcom/narvii/chat/ThreadResponse;->thread:Lcom/narvii/model/ChatThread;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/narvii/model/ChatThread;->membersSummary:Ljava/util/List;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment$1;->this$0:Lcom/narvii/chat/ChatMessageItemDetailFragment;

    invoke-static {v0}, Lcom/narvii/chat/ChatMessageItemDetailFragment;->n(Lcom/narvii/chat/ChatMessageItemDetailFragment;)Lcom/narvii/account/AccountService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->containsId(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    :goto_0
    iget-object p2, p2, Lcom/narvii/chat/ThreadResponse;->thread:Lcom/narvii/model/ChatThread;

    iget p2, p2, Lcom/narvii/model/ChatThread;->type:I

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    new-instance p1, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {p1}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "/chat/thread/"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment$1;->this$0:Lcom/narvii/chat/ChatMessageItemDetailFragment;

    iget-object v0, v0, Lcom/narvii/chat/ChatMessageItemDetailFragment;->threadId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/member?start=0&size=100&type=default"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment$1;->val$apiService:Lcom/narvii/util/http/ApiService;

    .line 7
    new-instance v0, Lcom/narvii/chat/ChatMessageItemDetailFragment$1$1;

    const-class v1, Lcom/narvii/chat/detail/MemberListResponse;

    invoke-direct {v0, p0, v1}, Lcom/narvii/chat/ChatMessageItemDetailFragment$1$1;-><init>(Lcom/narvii/chat/ChatMessageItemDetailFragment$1;Ljava/lang/Class;)V

    invoke-virtual {p2, p1, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    goto :goto_2

    :cond_2
    :goto_1
    const-class p1, Lcom/narvii/chat/ChatFragment;

    .line 8
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment$1;->this$0:Lcom/narvii/chat/ChatMessageItemDetailFragment;

    .line 9
    iget-object p2, p2, Lcom/narvii/chat/ChatMessageItemDetailFragment;->threadId:Ljava/lang/String;

    const-string v0, "id"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment$1;->this$0:Lcom/narvii/chat/ChatMessageItemDetailFragment;

    .line 10
    invoke-static {p2, p1}, Lcom/narvii/chat/ChatMessageItemDetailFragment$1;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    :goto_2
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
    check-cast p2, Lcom/narvii/chat/ThreadResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/ChatMessageItemDetailFragment$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/ThreadResponse;)V

    return-void
.end method
