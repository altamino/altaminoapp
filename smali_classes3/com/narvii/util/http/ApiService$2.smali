.class Lcom/narvii/util/http/ApiService$2;
.super Ljava/lang/Object;
.source "ApiService.java"

# interfaces
.implements Lcom/android/volley/RequestQueue$RequestFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/http/ApiService;->abortAll(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/util/http/ApiService;

.field final synthetic val$force:Z


# direct methods
.method constructor <init>(Lcom/narvii/util/http/ApiService;Z)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/narvii/util/http/ApiService$2;->this$0:Lcom/narvii/util/http/ApiService;

    iput-boolean p2, p0, Lcom/narvii/util/http/ApiService$2;->val$force:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/volley/Request;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;)Z"
        }
    .end annotation

    .line 253
    instance-of v0, p1, Lcom/narvii/util/http/ApiService$WrappedRequest;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 255
    :cond_0
    check-cast p1, Lcom/narvii/util/http/ApiService$WrappedRequest;

    .line 256
    iget-object v0, p0, Lcom/narvii/util/http/ApiService$2;->this$0:Lcom/narvii/util/http/ApiService;

    iget-object v0, v0, Lcom/narvii/util/http/ApiService;->sessions:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p1, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 257
    iget-boolean v0, p0, Lcom/narvii/util/http/ApiService$2;->val$force:Z

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/narvii/util/http/ApiService;->ASYNC_CALL_TAG:Ljava/lang/Object;

    if-ne v0, v2, :cond_1

    return v1

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/narvii/util/http/ApiService$2;->this$0:Lcom/narvii/util/http/ApiService;

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiService;->sessionMonitors()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 262
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiSessionMonitor;

    .line 263
    iget-object v2, p1, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    invoke-interface {v1, v2}, Lcom/narvii/util/http/ApiSessionMonitor;->onAbortRequest(Lcom/narvii/util/http/ApiRequest;)V

    goto :goto_0

    .line 266
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recycle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "api"

    invoke-static {v0, p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method
