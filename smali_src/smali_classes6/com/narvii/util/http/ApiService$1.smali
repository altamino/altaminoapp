.class Lcom/narvii/util/http/ApiService$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/http/ApiService$1;->this$0:Lcom/narvii/util/http/ApiService;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/util/http/ApiService$1;->val$request:Lcom/narvii/util/http/ApiRequest;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/util/http/ApiService$1;->val$listener:Lcom/narvii/util/http/ApiResponseListener;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
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

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/util/http/ApiService$WrappedRequest;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    :cond_0
    check-cast p1, Lcom/narvii/util/http/ApiService$WrappedRequest;

    .line 9
    .line 10
    iget-object v0, p1, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/narvii/util/http/ApiService$1;->val$request:Lcom/narvii/util/http/ApiRequest;

    .line 13
    .line 14
    if-ne v0, v2, :cond_3

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/util/http/ApiService$1;->val$listener:Lcom/narvii/util/http/ApiResponseListener;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object p1, p1, Lcom/narvii/util/http/ApiService$WrappedRequest;->listener:Lcom/narvii/util/http/ApiResponseListener;

    .line 21
    .line 22
    if-ne p1, v0, :cond_3

    .line 23
    .line 24
    :cond_1
    iget-object p1, p0, Lcom/narvii/util/http/ApiService$1;->this$0:Lcom/narvii/util/http/ApiService;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/narvii/util/http/ApiService;->sessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    iget-object p1, p0, Lcom/narvii/util/http/ApiService$1;->this$0:Lcom/narvii/util/http/ApiService;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiService;->sessionMonitors()Ljava/util/List;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    .line 40
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    .line 44
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    move-result v0

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    .line 50
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    check-cast v0, Lcom/narvii/util/http/ApiSessionMonitor;

    .line 54
    .line 55
    iget-object v1, p0, Lcom/narvii/util/http/ApiService$1;->val$request:Lcom/narvii/util/http/ApiRequest;

    .line 56
    .line 57
    .line 58
    invoke-interface {v0, v1}, Lcom/narvii/util/http/ApiSessionMonitor;->onAbortRequest(Lcom/narvii/util/http/ApiRequest;)V

    .line 59
    goto :goto_0

    .line 60
    .line 61
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    const-string v0, "abort "

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    iget-object v0, p0, Lcom/narvii/util/http/ApiService$1;->val$request:Lcom/narvii/util/http/ApiRequest;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    const-string v0, "api"

    .line 81
    .line 82
    .line 83
    invoke-static {v0, p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const/4 p1, 0x1

    .line 85
    return p1

    .line 86
    :cond_3
    return v1
.end method
