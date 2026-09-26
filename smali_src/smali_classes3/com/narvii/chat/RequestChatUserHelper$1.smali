.class Lcom/narvii/chat/RequestChatUserHelper$1;
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
        "Lcom/narvii/chat/ThreadResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/RequestChatUserHelper;

.field final synthetic val$callback:Lcom/narvii/util/Callback;

.field final synthetic val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$nvObject:Lcom/narvii/model/NVObject;

.field final synthetic val$objectType:I


# direct methods
.method constructor <init>(Lcom/narvii/chat/RequestChatUserHelper;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/model/NVObject;Ljava/lang/String;ILcom/narvii/util/Callback;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/RequestChatUserHelper$1;->this$0:Lcom/narvii/chat/RequestChatUserHelper;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/chat/RequestChatUserHelper$1;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/narvii/chat/RequestChatUserHelper$1;->val$nvObject:Lcom/narvii/model/NVObject;

    .line 7
    .line 8
    iput-object p5, p0, Lcom/narvii/chat/RequestChatUserHelper$1;->val$message:Ljava/lang/String;

    .line 9
    .line 10
    iput p6, p0, Lcom/narvii/chat/RequestChatUserHelper$1;->val$objectType:I

    .line 11
    .line 12
    iput-object p7, p0, Lcom/narvii/chat/RequestChatUserHelper$1;->val$callback:Lcom/narvii/util/Callback;

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 16
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
    iget-object p1, p0, Lcom/narvii/chat/RequestChatUserHelper$1;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/chat/RequestChatUserHelper$1;->this$0:Lcom/narvii/chat/RequestChatUserHelper;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/narvii/chat/RequestChatUserHelper;->context:Lcom/narvii/app/NVContext;

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 13
    move-result-object p1

    .line 14
    const/4 p2, 0x0

    .line 15
    .line 16
    .line 17
    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 22
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/ThreadResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p1, p0, Lcom/narvii/chat/RequestChatUserHelper$1;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 2
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/chat/RequestChatUserHelper$1;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    const-class p1, Lcom/narvii/chat/ChatFragment;

    .line 4
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 5
    iget-object v0, p2, Lcom/narvii/chat/ThreadResponse;->thread:Lcom/narvii/model/ChatThread;

    iget-object v0, v0, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    const-string v1, "id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "justCreated"

    const/4 v1, 0x1

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 7
    iget-object p2, p2, Lcom/narvii/chat/ThreadResponse;->thread:Lcom/narvii/model/ChatThread;

    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "thread"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/narvii/chat/RequestChatUserHelper$1;->val$nvObject:Lcom/narvii/model/NVObject;

    .line 8
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "attachObj"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "attachMessage"

    iget-object v0, p0, Lcom/narvii/chat/RequestChatUserHelper$1;->val$message:Ljava/lang/String;

    .line 9
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "attachObjType"

    iget v0, p0, Lcom/narvii/chat/RequestChatUserHelper$1;->val$objectType:I

    .line 10
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p2, p0, Lcom/narvii/chat/RequestChatUserHelper$1;->val$callback:Lcom/narvii/util/Callback;

    .line 11
    invoke-interface {p2, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

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
    check-cast p2, Lcom/narvii/chat/ThreadResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/RequestChatUserHelper$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/ThreadResponse;)V

    return-void
.end method
