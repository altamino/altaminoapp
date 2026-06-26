.class Lcom/narvii/chat/util/GlobalChatService$3;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "GlobalChatService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/util/GlobalChatService;->getRecentChatList(Lcom/narvii/util/Callback;)V
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
.field final synthetic this$0:Lcom/narvii/chat/util/GlobalChatService;

.field final synthetic val$callback:Lcom/narvii/util/Callback;


# direct methods
.method constructor <init>(Lcom/narvii/chat/util/GlobalChatService;Ljava/lang/Class;Lcom/narvii/util/Callback;)V
    .locals 0

    .line 377
    iput-object p1, p0, Lcom/narvii/chat/util/GlobalChatService$3;->this$0:Lcom/narvii/chat/util/GlobalChatService;

    iput-object p3, p0, Lcom/narvii/chat/util/GlobalChatService$3;->val$callback:Lcom/narvii/util/Callback;

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

    .line 403
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 404
    new-instance p1, Lcom/narvii/chat/util/GlobalChatService$RecentChatResult;

    invoke-direct {p1}, Lcom/narvii/chat/util/GlobalChatService$RecentChatResult;-><init>()V

    .line 405
    iput-object p4, p1, Lcom/narvii/chat/util/GlobalChatService$RecentChatResult;->errorMessage:Ljava/lang/String;

    .line 406
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, Lcom/narvii/chat/util/GlobalChatService$RecentChatResult;->chatThreads:Ljava/util/ArrayList;

    .line 407
    iget-object p2, p0, Lcom/narvii/chat/util/GlobalChatService$3;->val$callback:Lcom/narvii/util/Callback;

    invoke-interface {p2, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/thread/ThreadListResponse;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 380
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    if-eqz p2, :cond_2

    .line 381
    iget-object p1, p2, Lcom/narvii/chat/thread/ThreadListResponse;->threadList:Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 382
    new-instance p1, Lcom/narvii/chat/util/ChatHelper;

    iget-object v0, p0, Lcom/narvii/chat/util/GlobalChatService$3;->this$0:Lcom/narvii/chat/util/GlobalChatService;

    invoke-static {v0}, Lcom/narvii/chat/util/GlobalChatService;->access$400(Lcom/narvii/chat/util/GlobalChatService;)Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    .line 383
    iget-object v0, p2, Lcom/narvii/chat/thread/ThreadListResponse;->threadList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/ChatThread;

    if-nez v1, :cond_0

    goto :goto_0

    .line 387
    :cond_0
    iget-object v2, p0, Lcom/narvii/chat/util/GlobalChatService$3;->this$0:Lcom/narvii/chat/util/GlobalChatService;

    invoke-static {v2}, Lcom/narvii/chat/util/GlobalChatService;->access$500(Lcom/narvii/chat/util/GlobalChatService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v1}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1}, Lcom/narvii/chat/util/ChatHelper;->isThreadUnread(Lcom/narvii/model/ChatThread;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 389
    :cond_1
    new-instance p1, Lcom/narvii/chat/util/GlobalChatService$RecentChatResult;

    invoke-direct {p1}, Lcom/narvii/chat/util/GlobalChatService$RecentChatResult;-><init>()V

    .line 390
    new-instance v0, Ljava/util/ArrayList;

    iget-object p2, p2, Lcom/narvii/chat/thread/ThreadListResponse;->threadList:Ljava/util/List;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p1, Lcom/narvii/chat/util/GlobalChatService$RecentChatResult;->chatThreads:Ljava/util/ArrayList;

    .line 391
    iget-object p2, p0, Lcom/narvii/chat/util/GlobalChatService$3;->val$callback:Lcom/narvii/util/Callback;

    invoke-interface {p2, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 392
    iget-object p1, p0, Lcom/narvii/chat/util/GlobalChatService$3;->this$0:Lcom/narvii/chat/util/GlobalChatService;

    invoke-static {p1}, Lcom/narvii/chat/util/GlobalChatService;->access$600(Lcom/narvii/chat/util/GlobalChatService;)V

    goto :goto_1

    .line 394
    :cond_2
    new-instance p1, Lcom/narvii/chat/util/GlobalChatService$RecentChatResult;

    invoke-direct {p1}, Lcom/narvii/chat/util/GlobalChatService$RecentChatResult;-><init>()V

    .line 395
    new-instance v0, Ljava/util/ArrayList;

    iget-object p2, p2, Lcom/narvii/chat/thread/ThreadListResponse;->threadList:Ljava/util/List;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p1, Lcom/narvii/chat/util/GlobalChatService$RecentChatResult;->chatThreads:Ljava/util/ArrayList;

    .line 396
    iget-object p2, p0, Lcom/narvii/chat/util/GlobalChatService$3;->val$callback:Lcom/narvii/util/Callback;

    invoke-interface {p2, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 397
    iget-object p1, p0, Lcom/narvii/chat/util/GlobalChatService$3;->this$0:Lcom/narvii/chat/util/GlobalChatService;

    invoke-static {p1}, Lcom/narvii/chat/util/GlobalChatService;->access$600(Lcom/narvii/chat/util/GlobalChatService;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 377
    check-cast p2, Lcom/narvii/chat/thread/ThreadListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/util/GlobalChatService$3;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/thread/ThreadListResponse;)V

    return-void
.end method
