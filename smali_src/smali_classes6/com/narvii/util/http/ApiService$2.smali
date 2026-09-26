.class Lcom/narvii/util/http/ApiService$2;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/http/ApiService$2;->this$0:Lcom/narvii/util/http/ApiService;

    .line 3
    .line 4
    iput-boolean p2, p0, Lcom/narvii/util/http/ApiService$2;->val$force:Z

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
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
    iget-object v0, p0, Lcom/narvii/util/http/ApiService$2;->this$0:Lcom/narvii/util/http/ApiService;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/narvii/util/http/ApiService;->sessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 13
    .line 14
    iget-object v2, p1, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_3

    .line 21
    .line 22
    iget-boolean v0, p0, Lcom/narvii/util/http/ApiService$2;->val$force:Z

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p1, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    sget-object v2, Lcom/narvii/util/http/ApiService;->ASYNC_CALL_TAG:Ljava/lang/Object;

    .line 33
    .line 34
    if-ne v0, v2, :cond_1

    .line 35
    return v1

    .line 36
    .line 37
    :cond_1
    iget-object v0, p0, Lcom/narvii/util/http/ApiService$2;->this$0:Lcom/narvii/util/http/ApiService;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiService;->sessionMonitors()Ljava/util/List;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    .line 50
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    move-result v1

    .line 52
    .line 53
    if-eqz v1, :cond_2

    .line 54
    .line 55
    .line 56
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    check-cast v1, Lcom/narvii/util/http/ApiSessionMonitor;

    .line 60
    .line 61
    iget-object v2, p1, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    .line 62
    .line 63
    .line 64
    invoke-interface {v1, v2}, Lcom/narvii/util/http/ApiSessionMonitor;->onAbortRequest(Lcom/narvii/util/http/ApiRequest;)V

    .line 65
    goto :goto_0

    .line 66
    .line 67
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    const-string v1, "recycle "

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    iget-object p1, p1, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object p1

    .line 85
    .line 86
    const-string v0, "api"

    .line 87
    .line 88
    .line 89
    invoke-static {v0, p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const/4 p1, 0x1

    .line 91
    return p1

    .line 92
    :cond_3
    return v1
.end method
