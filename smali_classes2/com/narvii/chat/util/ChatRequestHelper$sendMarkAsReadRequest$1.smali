.class public final Lcom/narvii/chat/util/ChatRequestHelper$sendMarkAsReadRequest$1;
.super Lcom/narvii/util/http/ApiJsonResponseListener;
.source "ChatRequestHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/util/ChatRequestHelper;->sendMarkAsReadRequest(ILjava/lang/String;Lcom/narvii/model/ChatMessage;Lcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiJsonResponseListener<",
        "Lcom/narvii/chat/core/MarkAsReadResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $callback:Lcom/narvii/util/Callback;

.field final synthetic $chatMessage:Lcom/narvii/model/ChatMessage;

.field final synthetic $chatService:Lcom/narvii/chat/core/ChatService;

.field final synthetic $ndcId:I

.field final synthetic $tId:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/chat/util/ChatRequestHelper;


# direct methods
.method constructor <init>(Lcom/narvii/chat/util/ChatRequestHelper;Lcom/narvii/model/ChatMessage;Lcom/narvii/chat/core/ChatService;ILjava/lang/String;Lcom/narvii/util/Callback;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/model/ChatMessage;",
            "Lcom/narvii/chat/core/ChatService;",
            "I",
            "Ljava/lang/String;",
            "Lcom/narvii/util/Callback;",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .line 151
    iput-object p1, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendMarkAsReadRequest$1;->this$0:Lcom/narvii/chat/util/ChatRequestHelper;

    iput-object p2, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendMarkAsReadRequest$1;->$chatMessage:Lcom/narvii/model/ChatMessage;

    iput-object p3, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendMarkAsReadRequest$1;->$chatService:Lcom/narvii/chat/core/ChatService;

    iput p4, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendMarkAsReadRequest$1;->$ndcId:I

    iput-object p5, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendMarkAsReadRequest$1;->$tId:Ljava/lang/String;

    iput-object p6, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendMarkAsReadRequest$1;->$callback:Lcom/narvii/util/Callback;

    invoke-direct {p0, p7}, Lcom/narvii/util/http/ApiJsonResponseListener;-><init>(Ljava/lang/Class;)V

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

    .line 175
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 176
    iget-object p1, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendMarkAsReadRequest$1;->$callback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_0

    invoke-interface {p1, p4}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/core/MarkAsReadResponse;)V
    .locals 8

    .line 153
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    if-nez p2, :cond_0

    return-void

    .line 157
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendMarkAsReadRequest$1;->$chatMessage:Lcom/narvii/model/ChatMessage;

    iget-object p1, p1, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    invoke-virtual {p2}, Lcom/narvii/chat/core/MarkAsReadResponse;->getLastReadTime()Ljava/util/Date;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/narvii/chat/util/ChatHelperKt;->isNewer(Ljava/util/Date;Ljava/util/Date;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendMarkAsReadRequest$1;->$chatMessage:Lcom/narvii/model/ChatMessage;

    iget-object p1, p1, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/narvii/chat/core/MarkAsReadResponse;->getLastReadTime()Ljava/util/Date;

    move-result-object p1

    .line 158
    :goto_0
    iget-object v0, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendMarkAsReadRequest$1;->$chatService:Lcom/narvii/chat/core/ChatService;

    iget v1, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendMarkAsReadRequest$1;->$ndcId:I

    iget-object v2, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendMarkAsReadRequest$1;->$tId:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x18

    const/4 v7, 0x0

    move-object v3, p1

    invoke-static/range {v0 .. v7}, Lcom/narvii/chat/core/ChatService;->updateReadTime$default(Lcom/narvii/chat/core/ChatService;ILjava/lang/String;Ljava/util/Date;ZLcom/narvii/model/ChatThread;ILjava/lang/Object;)V

    .line 159
    iget-object p2, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendMarkAsReadRequest$1;->this$0:Lcom/narvii/chat/util/ChatRequestHelper;

    invoke-virtual {p2}, Lcom/narvii/chat/util/ChatRequestHelper;->getCtx()Lcom/narvii/app/NVContext;

    move-result-object p2

    const-string v0, "notification"

    invoke-interface {p2, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/notification/NotificationCenter;

    .line 160
    new-instance v0, Lcom/narvii/chat/core/ThreadUpdateObject;

    invoke-direct {v0}, Lcom/narvii/chat/core/ThreadUpdateObject;-><init>()V

    .line 161
    new-instance v1, Lcom/narvii/model/ChatThread;

    invoke-direct {v1}, Lcom/narvii/model/ChatThread;-><init>()V

    .line 162
    iget-object v2, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendMarkAsReadRequest$1;->$tId:Ljava/lang/String;

    iput-object v2, v1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 163
    iput-object p1, v1, Lcom/narvii/model/ChatThread;->lastReadTime:Ljava/util/Date;

    .line 164
    iput-object v1, v0, Lcom/narvii/chat/core/ThreadUpdateObject;->chatThread:Lcom/narvii/model/ChatThread;

    const/4 p1, 0x0

    .line 165
    iput p1, v0, Lcom/narvii/chat/core/ThreadUpdateObject;->action:I

    .line 166
    iget p1, v1, Lcom/narvii/model/ChatThread;->ndcId:I

    if-nez p1, :cond_2

    .line 167
    iget p1, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendMarkAsReadRequest$1;->$ndcId:I

    iput p1, v1, Lcom/narvii/model/ChatThread;->ndcId:I

    .line 169
    :cond_2
    new-instance p1, Lcom/narvii/notification/Notification;

    const-string/jumbo v1, "update"

    invoke-direct {p1, v1, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 170
    invoke-static {p2, p1}, Lcom/narvii/util/NotificationUtils;->sendNotificationIncludeGlobal(Lcom/narvii/notification/NotificationCenter;Lcom/narvii/notification/Notification;)V

    .line 171
    iget-object p1, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendMarkAsReadRequest$1;->$callback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 151
    check-cast p2, Lcom/narvii/chat/core/MarkAsReadResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/util/ChatRequestHelper$sendMarkAsReadRequest$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/core/MarkAsReadResponse;)V

    return-void
.end method
