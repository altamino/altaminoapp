.class public final Lcom/narvii/chat/util/ChatRequestHelper$sendJoinChatThreadRequest$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/util/ChatRequestHelper;->sendJoinChatThreadRequest(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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
.field final synthetic $callback:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $chatThread:Lcom/narvii/model/ChatThread;

.field final synthetic $progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

.field final synthetic $threadId:Ljava/lang/String;

.field final synthetic $uid:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/chat/util/ChatRequestHelper;


# direct methods
.method constructor <init>(Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/model/ChatThread;Lcom/narvii/chat/util/ChatRequestHelper;Ljava/lang/String;Ljava/lang/String;Lcom/narvii/util/Callback;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/dialog/ProgressDialog;",
            "Lcom/narvii/model/ChatThread;",
            "Lcom/narvii/chat/util/ChatRequestHelper;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/api/ApiResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendJoinChatThreadRequest$1;->$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendJoinChatThreadRequest$1;->$chatThread:Lcom/narvii/model/ChatThread;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendJoinChatThreadRequest$1;->this$0:Lcom/narvii/chat/util/ChatRequestHelper;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendJoinChatThreadRequest$1;->$threadId:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendJoinChatThreadRequest$1;->$uid:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p6, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendJoinChatThreadRequest$1;->$callback:Lcom/narvii/util/Callback;

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p7}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 16
    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/model/api/ApiResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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
    iget-object p1, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendJoinChatThreadRequest$1;->this$0:Lcom/narvii/chat/util/ChatRequestHelper;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/narvii/chat/util/ChatRequestHelper;->getCtx()Lcom/narvii/app/NVContext;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 13
    move-result-object p1

    .line 14
    const/4 p2, 0x1

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
    .line 23
    iget-object p1, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendJoinChatThreadRequest$1;->$callback:Lcom/narvii/util/Callback;

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 28
    .line 29
    .line 30
    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 31
    .line 32
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendJoinChatThreadRequest$1;->$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 36
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 5
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/model/api/ApiResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendJoinChatThreadRequest$1;->$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendJoinChatThreadRequest$1;->$chatThread:Lcom/narvii/model/ChatThread;

    .line 11
    .line 12
    if-eqz p1, :cond_2

    .line 13
    .line 14
    iget-object p2, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendJoinChatThreadRequest$1;->this$0:Lcom/narvii/chat/util/ChatRequestHelper;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendJoinChatThreadRequest$1;->$threadId:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendJoinChatThreadRequest$1;->$uid:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendJoinChatThreadRequest$1;->$callback:Lcom/narvii/util/Callback;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Lcom/narvii/chat/util/ChatRequestHelper;->getCtx()Lcom/narvii/app/NVContext;

    .line 24
    move-result-object v3

    .line 25
    .line 26
    const-string v4, "chat"

    .line 27
    .line 28
    .line 29
    invoke-interface {v3, v4}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    move-result-object v3

    .line 31
    .line 32
    check-cast v3, Lcom/narvii/chat/core/ChatService;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v0}, Lcom/narvii/chat/core/ChatService;->removeGuestThreadId(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    const-string v0, "null cannot be cast to non-null type com.narvii.model.ChatThread"

    .line 42
    .line 43
    .line 44
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 47
    const/4 v0, 0x1

    .line 48
    .line 49
    iput v0, p1, Lcom/narvii/model/ChatThread;->membershipStatus:I

    .line 50
    .line 51
    iget-object v3, p1, Lcom/narvii/model/ChatThread;->uid:Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    invoke-static {v3, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    move-result v1

    .line 56
    .line 57
    if-eqz v1, :cond_0

    .line 58
    .line 59
    iput v0, p1, Lcom/narvii/model/ChatThread;->condition:I

    .line 60
    .line 61
    :cond_0
    new-instance v0, Lcom/narvii/notification/Notification;

    .line 62
    .line 63
    const-string v1, "update"

    .line 64
    .line 65
    .line 66
    invoke-direct {v0, v1, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2}, Lcom/narvii/chat/util/ChatRequestHelper;->getCtx()Lcom/narvii/app/NVContext;

    .line 70
    move-result-object p1

    .line 71
    .line 72
    const-string v1, "notification"

    .line 73
    .line 74
    .line 75
    invoke-interface {p1, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v0}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 82
    .line 83
    if-eqz v2, :cond_1

    .line 84
    .line 85
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 86
    .line 87
    .line 88
    invoke-interface {v2, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    :cond_1
    invoke-virtual {p2}, Lcom/narvii/chat/util/ChatRequestHelper;->getCtx()Lcom/narvii/app/NVContext;

    .line 92
    move-result-object p1

    .line 93
    .line 94
    sget-object v0, Lcom/narvii/logging/ActSemantic;->joinChat:Lcom/narvii/logging/ActSemantic;

    .line 95
    .line 96
    .line 97
    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 98
    move-result-object p1

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 102
    .line 103
    .line 104
    invoke-static {p2}, Lcom/narvii/chat/util/ChatRequestHelper;->access$getPushNotificationHelper$p(Lcom/narvii/chat/util/ChatRequestHelper;)Lcom/narvii/account/push/PushNotificationHelper;

    .line 105
    move-result-object p1

    .line 106
    .line 107
    const-string p2, "scenario_chat"

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, p2}, Lcom/narvii/account/push/PushNotificationHelper;->showRemindDialogIfNeeded(Ljava/lang/String;)Z

    .line 111
    :cond_2
    return-void
.end method
