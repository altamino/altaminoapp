.class public final Lcom/narvii/chat/util/ChatRequestHelper$sendDeleteThreadRequest$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "ChatRequestHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/util/ChatRequestHelper;->sendDeleteThreadRequest(ILjava/lang/String;Ljava/lang/String;Lcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;)V
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

.field final synthetic $chatType:Ljava/lang/String;

.field final synthetic $targetUid:Ljava/lang/String;

.field final synthetic $threadId:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/chat/util/ChatRequestHelper;


# direct methods
.method constructor <init>(Lcom/narvii/chat/util/ChatRequestHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/narvii/model/ChatThread;",
            "Lcom/narvii/util/Callback;",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .line 330
    iput-object p1, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendDeleteThreadRequest$1;->this$0:Lcom/narvii/chat/util/ChatRequestHelper;

    iput-object p2, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendDeleteThreadRequest$1;->$chatType:Ljava/lang/String;

    iput-object p3, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendDeleteThreadRequest$1;->$targetUid:Ljava/lang/String;

    iput-object p4, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendDeleteThreadRequest$1;->$threadId:Ljava/lang/String;

    iput-object p5, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendDeleteThreadRequest$1;->$chatThread:Lcom/narvii/model/ChatThread;

    iput-object p6, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendDeleteThreadRequest$1;->$callback:Lcom/narvii/util/Callback;

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

    .line 339
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 340
    iget-object p1, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendDeleteThreadRequest$1;->$callback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_0

    invoke-interface {p1, p4}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    .line 332
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 333
    iget-object p1, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendDeleteThreadRequest$1;->this$0:Lcom/narvii/chat/util/ChatRequestHelper;

    invoke-virtual {p1}, Lcom/narvii/chat/util/ChatRequestHelper;->getCtx()Lcom/narvii/app/NVContext;

    move-result-object p1

    sget-object p2, Lcom/narvii/logging/ActSemantic;->leaveChat:Lcom/narvii/logging/ActSemantic;

    invoke-static {p1, p2}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendDeleteThreadRequest$1;->$chatType:Ljava/lang/String;

    const-string v0, "chatType"

    invoke-virtual {p1, v0, p2}, Lcom/narvii/logging/LogEvent$Builder;->extraParamIfNotNull(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 334
    iget-object p1, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendDeleteThreadRequest$1;->this$0:Lcom/narvii/chat/util/ChatRequestHelper;

    iget-object p2, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendDeleteThreadRequest$1;->$targetUid:Ljava/lang/String;

    iget-object v0, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendDeleteThreadRequest$1;->$threadId:Ljava/lang/String;

    iget-object v1, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendDeleteThreadRequest$1;->$chatThread:Lcom/narvii/model/ChatThread;

    invoke-virtual {p1, p2, v0, v1}, Lcom/narvii/chat/util/ChatRequestHelper;->handleDeleteUserResponse(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/model/ChatThread;)V

    .line 335
    iget-object p1, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendDeleteThreadRequest$1;->$callback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
