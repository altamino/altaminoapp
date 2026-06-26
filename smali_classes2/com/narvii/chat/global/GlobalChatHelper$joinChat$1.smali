.class public final Lcom/narvii/chat/global/GlobalChatHelper$joinChat$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "GlobalChatHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/global/GlobalChatHelper;->joinChat(Lcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;)V
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

.field final synthetic $chatThread:Lcom/narvii/model/ChatThread;

.field final synthetic this$0:Lcom/narvii/chat/global/GlobalChatHelper;


# direct methods
.method constructor <init>(Lcom/narvii/chat/global/GlobalChatHelper;Lcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/model/ChatThread;",
            "Lcom/narvii/util/Callback;",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .line 111
    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatHelper$joinChat$1;->this$0:Lcom/narvii/chat/global/GlobalChatHelper;

    iput-object p2, p0, Lcom/narvii/chat/global/GlobalChatHelper$joinChat$1;->$chatThread:Lcom/narvii/model/ChatThread;

    iput-object p3, p0, Lcom/narvii/chat/global/GlobalChatHelper$joinChat$1;->$callback:Lcom/narvii/util/Callback;

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

    .line 124
    iget-object p1, p0, Lcom/narvii/chat/global/GlobalChatHelper$joinChat$1;->this$0:Lcom/narvii/chat/global/GlobalChatHelper;

    invoke-virtual {p1}, Lcom/narvii/chat/global/GlobalChatHelper;->getContext()Lcom/narvii/app/NVContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 125
    iget-object p1, p0, Lcom/narvii/chat/global/GlobalChatHelper$joinChat$1;->$callback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "req"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "resp"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    iget-object p1, p0, Lcom/narvii/chat/global/GlobalChatHelper$joinChat$1;->$chatThread:Lcom/narvii/model/ChatThread;

    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Lcom/narvii/model/ChatThread;

    const/4 p2, 0x1

    .line 115
    iput p2, p1, Lcom/narvii/model/ChatThread;->membershipStatus:I

    .line 116
    new-instance v0, Lcom/narvii/notification/Notification;

    const-string/jumbo v1, "update"

    invoke-direct {v0, v1, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 117
    iget-object p1, p0, Lcom/narvii/chat/global/GlobalChatHelper$joinChat$1;->this$0:Lcom/narvii/chat/global/GlobalChatHelper;

    invoke-static {p1}, Lcom/narvii/chat/global/GlobalChatHelper;->access$getNotificationService$p(Lcom/narvii/chat/global/GlobalChatHelper;)Lcom/narvii/notification/NotificationCenter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 118
    iget-object p1, p0, Lcom/narvii/chat/global/GlobalChatHelper$joinChat$1;->$callback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 120
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/global/GlobalChatHelper$joinChat$1;->this$0:Lcom/narvii/chat/global/GlobalChatHelper;

    invoke-virtual {p1}, Lcom/narvii/chat/global/GlobalChatHelper;->getContext()Lcom/narvii/app/NVContext;

    move-result-object p1

    sget-object p2, Lcom/narvii/logging/ActSemantic;->joinChat:Lcom/narvii/logging/ActSemantic;

    invoke-static {p1, p2}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    return-void

    .line 114
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.narvii.model.ChatThread"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
