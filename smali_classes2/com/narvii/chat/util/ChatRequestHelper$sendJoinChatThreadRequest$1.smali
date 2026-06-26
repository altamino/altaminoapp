.class public final Lcom/narvii/chat/util/ChatRequestHelper$sendJoinChatThreadRequest$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "ChatRequestHelper.kt"


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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatRequestHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatRequestHelper.kt\ncom/narvii/chat/util/ChatRequestHelper$sendJoinChatThreadRequest$1\n*L\n1#1,461:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $callback:Lcom/narvii/util/Callback;

.field final synthetic $chatThread:Lcom/narvii/model/ChatThread;

.field final synthetic $progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

.field final synthetic $threadId:Ljava/lang/String;

.field final synthetic $uid:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/chat/util/ChatRequestHelper;


# direct methods
.method constructor <init>(Lcom/narvii/chat/util/ChatRequestHelper;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/model/ChatThread;Ljava/lang/String;Ljava/lang/String;Lcom/narvii/util/Callback;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/dialog/ProgressDialog;",
            "Lcom/narvii/model/ChatThread;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/narvii/util/Callback;",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendJoinChatThreadRequest$1;->this$0:Lcom/narvii/chat/util/ChatRequestHelper;

    iput-object p2, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendJoinChatThreadRequest$1;->$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    iput-object p3, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendJoinChatThreadRequest$1;->$chatThread:Lcom/narvii/model/ChatThread;

    iput-object p4, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendJoinChatThreadRequest$1;->$threadId:Ljava/lang/String;

    iput-object p5, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendJoinChatThreadRequest$1;->$uid:Ljava/lang/String;

    iput-object p6, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendJoinChatThreadRequest$1;->$callback:Lcom/narvii/util/Callback;

    invoke-direct {p0, p7}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

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

    .line 95
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 96
    iget-object p1, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendJoinChatThreadRequest$1;->this$0:Lcom/narvii/chat/util/ChatRequestHelper;

    invoke-virtual {p1}, Lcom/narvii/chat/util/ChatRequestHelper;->getCtx()Lcom/narvii/app/NVContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 97
    iget-object p1, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendJoinChatThreadRequest$1;->$callback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 98
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendJoinChatThreadRequest$1;->$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    .line 75
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 76
    iget-object p1, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendJoinChatThreadRequest$1;->$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 77
    iget-object p1, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendJoinChatThreadRequest$1;->$chatThread:Lcom/narvii/model/ChatThread;

    if-eqz p1, :cond_3

    .line 78
    iget-object p1, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendJoinChatThreadRequest$1;->this$0:Lcom/narvii/chat/util/ChatRequestHelper;

    invoke-virtual {p1}, Lcom/narvii/chat/util/ChatRequestHelper;->getCtx()Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string p2, "chat"

    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/core/ChatService;

    .line 79
    iget-object p2, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendJoinChatThreadRequest$1;->$threadId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/narvii/chat/core/ChatService;->removeGuestThreadId(Ljava/lang/String;)V

    .line 80
    iget-object p1, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendJoinChatThreadRequest$1;->$chatThread:Lcom/narvii/model/ChatThread;

    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Lcom/narvii/model/ChatThread;

    const/4 p2, 0x1

    .line 81
    iput p2, p1, Lcom/narvii/model/ChatThread;->membershipStatus:I

    .line 82
    iget-object v0, p1, Lcom/narvii/model/ChatThread;->uid:Ljava/lang/String;

    iget-object v1, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendJoinChatThreadRequest$1;->$uid:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iput p2, p1, Lcom/narvii/model/ChatThread;->condition:I

    .line 85
    :cond_0
    new-instance v0, Lcom/narvii/notification/Notification;

    const-string/jumbo v1, "update"

    invoke-direct {v0, v1, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 86
    iget-object p1, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendJoinChatThreadRequest$1;->this$0:Lcom/narvii/chat/util/ChatRequestHelper;

    invoke-virtual {p1}, Lcom/narvii/chat/util/ChatRequestHelper;->getCtx()Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string v1, "notification"

    invoke-interface {p1, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    .line 87
    invoke-virtual {p1, v0}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 88
    iget-object p1, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendJoinChatThreadRequest$1;->$callback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 89
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendJoinChatThreadRequest$1;->this$0:Lcom/narvii/chat/util/ChatRequestHelper;

    invoke-virtual {p1}, Lcom/narvii/chat/util/ChatRequestHelper;->getCtx()Lcom/narvii/app/NVContext;

    move-result-object p1

    sget-object p2, Lcom/narvii/logging/ActSemantic;->joinChat:Lcom/narvii/logging/ActSemantic;

    invoke-static {p1, p2}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 90
    iget-object p1, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendJoinChatThreadRequest$1;->this$0:Lcom/narvii/chat/util/ChatRequestHelper;

    invoke-static {p1}, Lcom/narvii/chat/util/ChatRequestHelper;->access$getPushNotificationHelper$p(Lcom/narvii/chat/util/ChatRequestHelper;)Lcom/narvii/account/push/PushNotificationHelper;

    move-result-object p1

    const-string p2, "scenario_chat"

    invoke-virtual {p1, p2}, Lcom/narvii/account/push/PushNotificationHelper;->showRemindDialogIfNeeded(Ljava/lang/String;)Z

    goto :goto_0

    .line 80
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.narvii.model.ChatThread"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    return-void
.end method
