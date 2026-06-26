.class public final Lcom/narvii/chat/util/ChatRequestHelper$sendInviteMemberToExistedChatRequest$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "ChatRequestHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/util/ChatRequestHelper;->sendInviteMemberToExistedChatRequest(Ljava/lang/String;Lcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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
.field final synthetic $callback:Lcom/narvii/util/Callback;

.field final synthetic $progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

.field final synthetic this$0:Lcom/narvii/chat/util/ChatRequestHelper;


# direct methods
.method constructor <init>(Lcom/narvii/chat/util/ChatRequestHelper;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/util/Callback;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/dialog/ProgressDialog;",
            "Lcom/narvii/util/Callback;",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .line 397
    iput-object p1, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendInviteMemberToExistedChatRequest$1;->this$0:Lcom/narvii/chat/util/ChatRequestHelper;

    iput-object p2, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendInviteMemberToExistedChatRequest$1;->$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    iput-object p3, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendInviteMemberToExistedChatRequest$1;->$callback:Lcom/narvii/util/Callback;

    invoke-direct {p0, p4}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

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

    .line 413
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 414
    iget-object p1, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendInviteMemberToExistedChatRequest$1;->$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 415
    iget-object p1, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendInviteMemberToExistedChatRequest$1;->this$0:Lcom/narvii/chat/util/ChatRequestHelper;

    invoke-virtual {p1}, Lcom/narvii/chat/util/ChatRequestHelper;->getCtx()Lcom/narvii/app/NVContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 416
    iget-object p1, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendInviteMemberToExistedChatRequest$1;->$callback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_0

    invoke-interface {p1, p4}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/ThreadResponse;)V
    .locals 2

    .line 399
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 400
    iget-object p1, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendInviteMemberToExistedChatRequest$1;->$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    if-eqz p2, :cond_0

    .line 401
    iget-object p1, p2, Lcom/narvii/chat/ThreadResponse;->thread:Lcom/narvii/model/ChatThread;

    if-eqz p1, :cond_0

    .line 402
    iget-object p2, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendInviteMemberToExistedChatRequest$1;->this$0:Lcom/narvii/chat/util/ChatRequestHelper;

    invoke-virtual {p2}, Lcom/narvii/chat/util/ChatRequestHelper;->getCtx()Lcom/narvii/app/NVContext;

    move-result-object p2

    const-string v0, "globalChat"

    invoke-interface {p2, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/chat/util/GlobalChatService;

    .line 403
    iget-object v0, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendInviteMemberToExistedChatRequest$1;->this$0:Lcom/narvii/chat/util/ChatRequestHelper;

    invoke-virtual {v0}, Lcom/narvii/chat/util/ChatRequestHelper;->getCtx()Lcom/narvii/app/NVContext;

    move-result-object v0

    const-string v1, "config"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    const-string v1, "configService"

    .line 404
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    iget-object v1, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendInviteMemberToExistedChatRequest$1;->this$0:Lcom/narvii/chat/util/ChatRequestHelper;

    invoke-virtual {v1}, Lcom/narvii/chat/util/ChatRequestHelper;->getCtx()Lcom/narvii/app/NVContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/narvii/chat/global/GlobalChatThread;->newGlobalChatThread(Lcom/narvii/model/ChatThread;ILandroid/content/Context;)Lcom/narvii/chat/global/GlobalChatThread;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/narvii/chat/util/GlobalChatService;->addRecentChat(Lcom/narvii/chat/global/GlobalChatThread;)V

    .line 405
    const-class p2, Lcom/narvii/chat/ChatFragment;

    invoke-static {p2}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p2

    .line 406
    iget-object v0, p1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    const-string v1, "id"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 407
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "thread"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 408
    iget-object p1, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendInviteMemberToExistedChatRequest$1;->this$0:Lcom/narvii/chat/util/ChatRequestHelper;

    invoke-virtual {p1}, Lcom/narvii/chat/util/ChatRequestHelper;->getCtx()Lcom/narvii/app/NVContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 409
    iget-object p1, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendInviteMemberToExistedChatRequest$1;->$callback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 397
    check-cast p2, Lcom/narvii/chat/ThreadResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/util/ChatRequestHelper$sendInviteMemberToExistedChatRequest$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/ThreadResponse;)V

    return-void
.end method
