.class Lcom/narvii/chat/input/ChatThreadCheckFragment$6;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "ChatThreadCheckFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/input/ChatThreadCheckFragment;->sendRequestToJoinThreadRequest(Lcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/input/ChatThreadCheckFragment;

.field final synthetic val$callback:Lcom/narvii/util/Callback;

.field final synthetic val$chatThread:Lcom/narvii/model/ChatThread;

.field final synthetic val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/narvii/chat/input/ChatThreadCheckFragment;Ljava/lang/Class;Lcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;Lcom/narvii/util/dialog/ProgressDialog;)V
    .locals 0

    .line 392
    iput-object p1, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment$6;->this$0:Lcom/narvii/chat/input/ChatThreadCheckFragment;

    iput-object p3, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment$6;->val$chatThread:Lcom/narvii/model/ChatThread;

    iput-object p4, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment$6;->val$callback:Lcom/narvii/util/Callback;

    iput-object p5, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment$6;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

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

    .line 414
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 415
    iget-object p1, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment$6;->this$0:Lcom/narvii/chat/input/ChatThreadCheckFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 416
    iget-object p1, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment$6;->val$callback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 417
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 419
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment$6;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 395
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 397
    iget-object p1, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment$6;->this$0:Lcom/narvii/chat/input/ChatThreadCheckFragment;

    sget-object p2, Lcom/narvii/logging/ActSemantic;->joinChat:Lcom/narvii/logging/ActSemantic;

    invoke-static {p1, p2}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 399
    iget-object p1, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment$6;->val$chatThread:Lcom/narvii/model/ChatThread;

    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/ChatThread;

    const/4 p2, 0x1

    .line 400
    iput p2, p1, Lcom/narvii/model/ChatThread;->membershipStatus:I

    .line 401
    new-instance v0, Lcom/narvii/notification/Notification;

    const-string/jumbo v1, "update"

    invoke-direct {v0, v1, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 402
    iget-object p1, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment$6;->this$0:Lcom/narvii/chat/input/ChatThreadCheckFragment;

    const-string v1, "notification"

    invoke-virtual {p1, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    .line 403
    invoke-static {p1, v0}, Lcom/narvii/util/NotificationUtils;->sendNotificationIncludeGlobal(Lcom/narvii/notification/NotificationCenter;Lcom/narvii/notification/Notification;)V

    .line 404
    iget-object p1, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment$6;->val$callback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_0

    .line 405
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 407
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment$6;->this$0:Lcom/narvii/chat/input/ChatThreadCheckFragment;

    invoke-static {p1}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->access$200(Lcom/narvii/chat/input/ChatThreadCheckFragment;)Lcom/narvii/account/push/PushNotificationHelper;

    move-result-object p1

    const-string p2, "scenario_chat"

    invoke-virtual {p1, p2}, Lcom/narvii/account/push/PushNotificationHelper;->showRemindDialogIfNeeded(Ljava/lang/String;)Z

    .line 408
    iget-object p1, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment$6;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 409
    iget-object p1, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment$6;->this$0:Lcom/narvii/chat/input/ChatThreadCheckFragment;

    invoke-static {p1}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->access$000(Lcom/narvii/chat/input/ChatThreadCheckFragment;)Lcom/narvii/chat/input/ChatInputMessageSenderHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->recordChatActivity()V

    return-void
.end method
