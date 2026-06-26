.class public final Lcom/narvii/chat/util/ChatRequestHelper$sendMarkAsUnreadRequest$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "ChatRequestHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/util/ChatRequestHelper;->sendMarkAsUnreadRequest(ILcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;)V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatRequestHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatRequestHelper.kt\ncom/narvii/chat/util/ChatRequestHelper$sendMarkAsUnreadRequest$1\n*L\n1#1,461:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $callback:Lcom/narvii/util/Callback;

.field final synthetic $ndcId:I

.field final synthetic $thread:Lcom/narvii/model/ChatThread;

.field final synthetic this$0:Lcom/narvii/chat/util/ChatRequestHelper;


# direct methods
.method constructor <init>(Lcom/narvii/chat/util/ChatRequestHelper;ILcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/model/ChatThread;",
            "Lcom/narvii/util/Callback;",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .line 223
    iput-object p1, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendMarkAsUnreadRequest$1;->this$0:Lcom/narvii/chat/util/ChatRequestHelper;

    iput p2, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendMarkAsUnreadRequest$1;->$ndcId:I

    iput-object p3, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendMarkAsUnreadRequest$1;->$thread:Lcom/narvii/model/ChatThread;

    iput-object p4, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendMarkAsUnreadRequest$1;->$callback:Lcom/narvii/util/Callback;

    invoke-direct {p0, p5}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

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

    .line 239
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 240
    iget-object p1, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendMarkAsUnreadRequest$1;->$callback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_0

    invoke-interface {p1, p4}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/ThreadResponse;)V
    .locals 6

    .line 225
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    if-eqz p2, :cond_0

    .line 227
    iget-object p1, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendMarkAsUnreadRequest$1;->this$0:Lcom/narvii/chat/util/ChatRequestHelper;

    invoke-virtual {p1}, Lcom/narvii/chat/util/ChatRequestHelper;->getCtx()Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string v0, "chat"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/narvii/chat/core/ChatService;

    .line 228
    iget v1, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendMarkAsUnreadRequest$1;->$ndcId:I

    iget-object p1, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendMarkAsUnreadRequest$1;->$thread:Lcom/narvii/model/ChatThread;

    iget-object v2, p1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 229
    iget-object v5, p2, Lcom/narvii/chat/ThreadResponse;->thread:Lcom/narvii/model/ChatThread;

    iget-object v3, v5, Lcom/narvii/model/ChatThread;->lastReadTime:Ljava/util/Date;

    const/4 v4, 0x1

    .line 228
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/chat/core/ChatService;->updateReadTime(ILjava/lang/String;Ljava/util/Date;ZLcom/narvii/model/ChatThread;)V

    .line 230
    iget-object p1, p2, Lcom/narvii/chat/ThreadResponse;->thread:Lcom/narvii/model/ChatThread;

    .line 231
    new-instance p2, Lcom/narvii/notification/Notification;

    const-string/jumbo v0, "update"

    invoke-direct {p2, v0, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 232
    iget-object p1, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendMarkAsUnreadRequest$1;->this$0:Lcom/narvii/chat/util/ChatRequestHelper;

    invoke-virtual {p1}, Lcom/narvii/chat/util/ChatRequestHelper;->getCtx()Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string v0, "notification"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    .line 233
    invoke-static {p1, p2}, Lcom/narvii/util/NotificationUtils;->sendNotificationIncludeGlobal(Lcom/narvii/notification/NotificationCenter;Lcom/narvii/notification/Notification;)V

    .line 235
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendMarkAsUnreadRequest$1;->$callback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 223
    check-cast p2, Lcom/narvii/chat/ThreadResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/util/ChatRequestHelper$sendMarkAsUnreadRequest$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/ThreadResponse;)V

    return-void
.end method
