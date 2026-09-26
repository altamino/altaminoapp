.class Lcom/narvii/chat/input/ChatThreadCheckFragment$6;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment$6;->this$0:Lcom/narvii/chat/input/ChatThreadCheckFragment;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment$6;->val$chatThread:Lcom/narvii/model/ChatThread;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment$6;->val$callback:Lcom/narvii/util/Callback;

    .line 7
    .line 8
    iput-object p5, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment$6;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 12
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
    iget-object p1, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment$6;->this$0:Lcom/narvii/chat/input/ChatThreadCheckFragment;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 9
    move-result-object p1

    .line 10
    const/4 p2, 0x1

    .line 11
    .line 12
    .line 13
    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 18
    .line 19
    iget-object p1, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment$6;->val$callback:Lcom/narvii/util/Callback;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 27
    .line 28
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment$6;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 32
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment$6;->this$0:Lcom/narvii/chat/input/ChatThreadCheckFragment;

    .line 6
    .line 7
    sget-object p2, Lcom/narvii/logging/ActSemantic;->joinChat:Lcom/narvii/logging/ActSemantic;

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p2}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment$6;->val$chatThread:Lcom/narvii/model/ChatThread;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 23
    const/4 p2, 0x1

    .line 24
    .line 25
    iput p2, p1, Lcom/narvii/model/ChatThread;->membershipStatus:I

    .line 26
    .line 27
    new-instance p2, Lcom/narvii/notification/Notification;

    .line 28
    .line 29
    const-string v0, "update"

    .line 30
    .line 31
    .line 32
    invoke-direct {p2, v0, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 33
    .line 34
    iget-object p1, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment$6;->this$0:Lcom/narvii/chat/input/ChatThreadCheckFragment;

    .line 35
    .line 36
    const-string v0, "notification"

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    .line 43
    .line 44
    .line 45
    invoke-static {p1, p2}, Lcom/narvii/util/NotificationUtils;->sendNotificationIncludeGlobal(Lcom/narvii/notification/NotificationCenter;Lcom/narvii/notification/Notification;)V

    .line 46
    .line 47
    iget-object p1, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment$6;->val$callback:Lcom/narvii/util/Callback;

    .line 48
    .line 49
    if-eqz p1, :cond_0

    .line 50
    .line 51
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 52
    .line 53
    .line 54
    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 55
    .line 56
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment$6;->this$0:Lcom/narvii/chat/input/ChatThreadCheckFragment;

    .line 57
    .line 58
    .line 59
    invoke-static {p1}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->t(Lcom/narvii/chat/input/ChatThreadCheckFragment;)Lcom/narvii/account/push/PushNotificationHelper;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    const-string p2, "scenario_chat"

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, p2}, Lcom/narvii/account/push/PushNotificationHelper;->showRemindDialogIfNeeded(Ljava/lang/String;)Z

    .line 66
    .line 67
    iget-object p1, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment$6;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 71
    .line 72
    iget-object p1, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment$6;->this$0:Lcom/narvii/chat/input/ChatThreadCheckFragment;

    .line 73
    .line 74
    .line 75
    invoke-static {p1}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->s(Lcom/narvii/chat/input/ChatThreadCheckFragment;)Lcom/narvii/chat/input/ChatInputMessageSenderHelper;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->recordChatActivity()V

    .line 80
    return-void
.end method
