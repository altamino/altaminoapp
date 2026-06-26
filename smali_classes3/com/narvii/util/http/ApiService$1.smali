.class Lcom/narvii/util/http/ApiService$1;
.super Ljava/lang/Object;
.source "ApiService.java"

# interfaces
.implements Lcom/android/volley/RequestQueue$RequestFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/util/http/ApiService;

.field final synthetic val$listener:Lcom/narvii/util/http/ApiResponseListener;

.field final synthetic val$request:Lcom/narvii/util/http/ApiRequest;


# direct methods
.method constructor <init>(Lcom/narvii/util/http/ApiService;Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/narvii/util/http/ApiService$1;->this$0:Lcom/narvii/util/http/ApiService;

    iput-object p2, p0, Lcom/narvii/util/http/ApiService$1;->val$request:Lcom/narvii/util/http/ApiRequest;

    iput-object p3, p0, Lcom/narvii/util/http/ApiService$1;->val$listener:Lcom/narvii/util/http/ApiResponseListener;

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

    .line 214
    instance-of v0, p1, Lcom/narvii/util/http/ApiService$WrappedRequest;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 216
    :cond_0
    check-cast p1, Lcom/narvii/util/http/ApiService$WrappedRequest;

    .line 217
    iget-object v0, p1, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    iget-object v2, p0, Lcom/narvii/util/http/ApiService$1;->val$request:Lcom/narvii/util/http/ApiRequest;

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/narvii/util/http/ApiService$1;->val$listener:Lcom/narvii/util/http/ApiResponseListener;

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/narvii/util/http/ApiService$WrappedRequest;->listener:Lcom/narvii/util/http/ApiResponseListener;

    if-ne p1, v0, :cond_3

    .line 219
    :cond_1
    iget-object p1, p0, Lcom/narvii/util/http/ApiService$1;->this$0:Lcom/narvii/util/http/ApiService;

    iget-object p1, p1, Lcom/narvii/util/http/ApiService;->sessions:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v0, p0, Lcom/narvii/util/http/ApiService$1;->val$request:Lcom/narvii/util/http/ApiRequest;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object p1, p0, Lcom/narvii/util/http/ApiService$1;->this$0:Lcom/narvii/util/http/ApiService;

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiService;->sessionMonitors()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 222
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiSessionMonitor;

    .line 223
    iget-object v1, p0, Lcom/narvii/util/http/ApiService$1;->val$request:Lcom/narvii/util/http/ApiRequest;

    invoke-interface {v0, v1}, Lcom/narvii/util/http/ApiSessionMonitor;->onAbortRequest(Lcom/narvii/util/http/ApiRequest;)V

    goto :goto_0

    .line 226
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "abort "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/narvii/util/http/ApiService$1;->val$request:Lcom/narvii/util/http/ApiRequest;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "api"

    invoke-static {v0, p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method
