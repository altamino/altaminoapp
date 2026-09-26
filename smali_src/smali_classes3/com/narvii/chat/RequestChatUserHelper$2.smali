.class Lcom/narvii/chat/RequestChatUserHelper$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/RequestChatUserHelper$2;->this$0:Lcom/narvii/chat/RequestChatUserHelper;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/chat/RequestChatUserHelper$2;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/narvii/chat/RequestChatUserHelper$2;->val$nvObject:Lcom/narvii/model/NVObject;

    .line 7
    .line 8
    iput-object p5, p0, Lcom/narvii/chat/RequestChatUserHelper$2;->val$message:Ljava/lang/String;

    .line 9
    .line 10
    iput p6, p0, Lcom/narvii/chat/RequestChatUserHelper$2;->val$objectType:I

    .line 11
    .line 12
    iput-object p7, p0, Lcom/narvii/chat/RequestChatUserHelper$2;->val$callback:Lcom/narvii/util/Callback;

    .line 13
    .line 14
    iput-object p8, p0, Lcom/narvii/chat/RequestChatUserHelper$2;->val$api:Lcom/narvii/util/http/ApiService;

    .line 15
    .line 16
    iput-object p9, p0, Lcom/narvii/chat/RequestChatUserHelper$2;->val$l2:Lcom/narvii/util/http/ApiResponseListener;

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 20
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
    const/16 p1, 0x640

    .line 3
    const/4 p3, 0x0

    .line 4
    .line 5
    if-ne p2, p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/chat/RequestChatUserHelper$2;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 11
    move-result p1

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 21
    move-result-object p2

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 25
    .line 26
    const-string p2, "/chat/thread"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 30
    .line 31
    const-string p2, "type"

    .line 32
    .line 33
    .line 34
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    move-result-object p3

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p2, p3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 39
    .line 40
    .line 41
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 42
    move-result-object p2

    .line 43
    .line 44
    iget-object p3, p0, Lcom/narvii/chat/RequestChatUserHelper$2;->val$nvObject:Lcom/narvii/model/NVObject;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p3}, Lcom/narvii/model/NVObject;->uid()Ljava/lang/String;

    .line 48
    move-result-object p3

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, p3}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 52
    .line 53
    const-string p3, "inviteeUids"

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p3, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 57
    .line 58
    iget-object p2, p0, Lcom/narvii/chat/RequestChatUserHelper$2;->val$api:Lcom/narvii/util/http/ApiService;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 62
    move-result-object p1

    .line 63
    .line 64
    iget-object p3, p0, Lcom/narvii/chat/RequestChatUserHelper$2;->val$l2:Lcom/narvii/util/http/ApiResponseListener;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2, p1, p3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 68
    goto :goto_0

    .line 69
    .line 70
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/RequestChatUserHelper$2;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 74
    .line 75
    iget-object p1, p0, Lcom/narvii/chat/RequestChatUserHelper$2;->this$0:Lcom/narvii/chat/RequestChatUserHelper;

    .line 76
    .line 77
    iget-object p1, p1, Lcom/narvii/chat/RequestChatUserHelper;->context:Lcom/narvii/app/NVContext;

    .line 78
    .line 79
    .line 80
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 81
    move-result-object p1

    .line 82
    .line 83
    .line 84
    invoke-static {p1, p4, p3}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 85
    move-result-object p1

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 89
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

    .line 2
    iget-object p1, p2, Lcom/narvii/chat/thread/ThreadListResponse;->threadList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/narvii/chat/RequestChatUserHelper$2;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/chat/RequestChatUserHelper$2;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 4
    iget-object p1, p2, Lcom/narvii/chat/thread/ThreadListResponse;->threadList:Ljava/util/List;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/ChatThread;

    const-class p2, Lcom/narvii/chat/ChatFragment;

    .line 5
    invoke-static {p2}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p2

    .line 6
    iget-object v0, p1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    const-string v1, "id"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "thread"

    .line 7
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/narvii/chat/RequestChatUserHelper$2;->val$nvObject:Lcom/narvii/model/NVObject;

    .line 8
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "attachObj"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "attachMessage"

    iget-object v0, p0, Lcom/narvii/chat/RequestChatUserHelper$2;->val$message:Ljava/lang/String;

    .line 9
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "attachObjType"

    iget v0, p0, Lcom/narvii/chat/RequestChatUserHelper$2;->val$objectType:I

    .line 10
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/narvii/chat/RequestChatUserHelper$2;->val$callback:Lcom/narvii/util/Callback;

    .line 11
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

    .line 1
    check-cast p2, Lcom/narvii/chat/thread/ThreadListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/RequestChatUserHelper$2;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/thread/ThreadListResponse;)V

    return-void
.end method
