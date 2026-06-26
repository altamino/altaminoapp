.class Lcom/narvii/chat/util/GlobalChatService$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "GlobalChatService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/util/GlobalChatService;->updateChatThreadUnread()V
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


# direct methods
.method constructor <init>(Lcom/narvii/chat/util/GlobalChatService;Ljava/lang/Class;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/narvii/chat/util/GlobalChatService$2;->this$0:Lcom/narvii/chat/util/GlobalChatService;

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/thread/ThreadListResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 336
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    if-eqz p2, :cond_2

    .line 337
    iget-object p1, p2, Lcom/narvii/chat/thread/ThreadListResponse;->threadList:Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 338
    new-instance p1, Lcom/narvii/chat/util/ChatHelper;

    iget-object v0, p0, Lcom/narvii/chat/util/GlobalChatService$2;->this$0:Lcom/narvii/chat/util/GlobalChatService;

    invoke-static {v0}, Lcom/narvii/chat/util/GlobalChatService;->access$400(Lcom/narvii/chat/util/GlobalChatService;)Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    .line 339
    iget-object p2, p2, Lcom/narvii/chat/thread/ThreadListResponse;->threadList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/ChatThread;

    if-nez v0, :cond_0

    goto :goto_0

    .line 343
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/util/GlobalChatService$2;->this$0:Lcom/narvii/chat/util/GlobalChatService;

    invoke-static {v1}, Lcom/narvii/chat/util/GlobalChatService;->access$500(Lcom/narvii/chat/util/GlobalChatService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0}, Lcom/narvii/chat/util/ChatHelper;->isThreadUnread(Lcom/narvii/model/ChatThread;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 345
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/util/GlobalChatService$2;->this$0:Lcom/narvii/chat/util/GlobalChatService;

    invoke-static {p1}, Lcom/narvii/chat/util/GlobalChatService;->access$200(Lcom/narvii/chat/util/GlobalChatService;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 333
    check-cast p2, Lcom/narvii/chat/thread/ThreadListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/util/GlobalChatService$2;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/thread/ThreadListResponse;)V

    return-void
.end method
