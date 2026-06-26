.class Lcom/narvii/chat/RequestChatUserHelper$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "RequestChatUserHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/RequestChatUserHelper;->request(Lcom/narvii/model/NVObject;ILjava/lang/String;Lcom/narvii/util/Callback;)V
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
.field final synthetic this$0:Lcom/narvii/chat/RequestChatUserHelper;

.field final synthetic val$api:Lcom/narvii/util/http/ApiService;

.field final synthetic val$callback:Lcom/narvii/util/Callback;

.field final synthetic val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

.field final synthetic val$l2:Lcom/narvii/util/http/ApiResponseListener;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$nvObject:Lcom/narvii/model/NVObject;

.field final synthetic val$objectType:I


# direct methods
.method constructor <init>(Lcom/narvii/chat/RequestChatUserHelper;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/model/NVObject;Ljava/lang/String;ILcom/narvii/util/Callback;Lcom/narvii/util/http/ApiService;Lcom/narvii/util/http/ApiResponseListener;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/narvii/chat/RequestChatUserHelper$2;->this$0:Lcom/narvii/chat/RequestChatUserHelper;

    iput-object p3, p0, Lcom/narvii/chat/RequestChatUserHelper$2;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    iput-object p4, p0, Lcom/narvii/chat/RequestChatUserHelper$2;->val$nvObject:Lcom/narvii/model/NVObject;

    iput-object p5, p0, Lcom/narvii/chat/RequestChatUserHelper$2;->val$message:Ljava/lang/String;

    iput p6, p0, Lcom/narvii/chat/RequestChatUserHelper$2;->val$objectType:I

    iput-object p7, p0, Lcom/narvii/chat/RequestChatUserHelper$2;->val$callback:Lcom/narvii/util/Callback;

    iput-object p8, p0, Lcom/narvii/chat/RequestChatUserHelper$2;->val$api:Lcom/narvii/util/http/ApiService;

    iput-object p9, p0, Lcom/narvii/chat/RequestChatUserHelper$2;->val$l2:Lcom/narvii/util/http/ApiResponseListener;

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

    const/4 p1, 0x0

    const/16 p3, 0x640

    if-ne p2, p3, :cond_0

    .line 91
    iget-object p2, p0, Lcom/narvii/chat/RequestChatUserHelper$2;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 92
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    .line 93
    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p3

    invoke-virtual {p3}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    const-string p3, "/chat/thread"

    .line 94
    invoke-virtual {p2, p3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 95
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo p3, "type"

    invoke-virtual {p2, p3, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 96
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object p1

    .line 97
    iget-object p3, p0, Lcom/narvii/chat/RequestChatUserHelper$2;->val$nvObject:Lcom/narvii/model/NVObject;

    invoke-virtual {p3}, Lcom/narvii/model/NVObject;->uid()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    const-string p3, "inviteeUids"

    .line 98
    invoke-virtual {p2, p3, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 99
    iget-object p1, p0, Lcom/narvii/chat/RequestChatUserHelper$2;->val$api:Lcom/narvii/util/http/ApiService;

    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p2

    iget-object p3, p0, Lcom/narvii/chat/RequestChatUserHelper$2;->val$l2:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {p1, p2, p3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    goto :goto_0

    .line 102
    :cond_0
    iget-object p2, p0, Lcom/narvii/chat/RequestChatUserHelper$2;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p2}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 103
    iget-object p2, p0, Lcom/narvii/chat/RequestChatUserHelper$2;->this$0:Lcom/narvii/chat/RequestChatUserHelper;

    iget-object p2, p2, Lcom/narvii/chat/RequestChatUserHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p4, p1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/thread/ThreadListResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 73
    iget-object p1, p2, Lcom/narvii/chat/thread/ThreadListResponse;->threadList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/narvii/chat/RequestChatUserHelper$2;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 74
    iget-object p1, p0, Lcom/narvii/chat/RequestChatUserHelper$2;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 75
    iget-object p1, p2, Lcom/narvii/chat/thread/ThreadListResponse;->threadList:Ljava/util/List;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 76
    const-class p2, Lcom/narvii/chat/ChatFragment;

    invoke-static {p2}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p2

    .line 77
    iget-object v0, p1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    const-string v1, "id"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "thread"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    iget-object p1, p0, Lcom/narvii/chat/RequestChatUserHelper$2;->val$nvObject:Lcom/narvii/model/NVObject;

    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "attachObj"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    iget-object p1, p0, Lcom/narvii/chat/RequestChatUserHelper$2;->val$message:Ljava/lang/String;

    const-string v0, "attachMessage"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    iget p1, p0, Lcom/narvii/chat/RequestChatUserHelper$2;->val$objectType:I

    const-string v0, "attachObjType"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 82
    iget-object p1, p0, Lcom/narvii/chat/RequestChatUserHelper$2;->val$callback:Lcom/narvii/util/Callback;

    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 69
    check-cast p2, Lcom/narvii/chat/thread/ThreadListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/RequestChatUserHelper$2;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/thread/ThreadListResponse;)V

    return-void
.end method
