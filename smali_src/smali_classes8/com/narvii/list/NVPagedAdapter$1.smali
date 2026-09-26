.class Lcom/narvii/list/NVPagedAdapter$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/list/NVPagedAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/list/NVPagedAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/list/NVPagedAdapter;Ljava/lang/Class;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/list/NVPagedAdapter$1;->this$0:Lcom/narvii/list/NVPagedAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 6
    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 2
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

    .line 1
    .line 2
    iget-object p2, p0, Lcom/narvii/list/NVPagedAdapter$1;->this$0:Lcom/narvii/list/NVPagedAdapter;

    .line 3
    .line 4
    .line 5
    invoke-static {p2}, Lcom/narvii/list/NVPagedAdapter;->f(Lcom/narvii/list/NVPagedAdapter;)I

    .line 6
    move-result p2

    .line 7
    .line 8
    iget-object p3, p0, Lcom/narvii/list/NVPagedAdapter$1;->this$0:Lcom/narvii/list/NVPagedAdapter;

    .line 9
    .line 10
    .line 11
    invoke-static {p3}, Lcom/narvii/list/NVPagedAdapter;->g(Lcom/narvii/list/NVPagedAdapter;)Lcom/narvii/util/Callback;

    .line 12
    move-result-object p3

    .line 13
    .line 14
    iget-object p6, p0, Lcom/narvii/list/NVPagedAdapter$1;->this$0:Lcom/narvii/list/NVPagedAdapter;

    .line 15
    const/4 v0, 0x0

    .line 16
    .line 17
    .line 18
    invoke-static {p6, v0}, Lcom/narvii/list/NVPagedAdapter;->k(Lcom/narvii/list/NVPagedAdapter;Lcom/narvii/util/http/ApiRequest;)V

    .line 19
    .line 20
    iget-object p6, p0, Lcom/narvii/list/NVPagedAdapter$1;->this$0:Lcom/narvii/list/NVPagedAdapter;

    .line 21
    const/4 v1, 0x0

    .line 22
    .line 23
    .line 24
    invoke-static {p6, v1}, Lcom/narvii/list/NVPagedAdapter;->j(Lcom/narvii/list/NVPagedAdapter;I)V

    .line 25
    .line 26
    iget-object p6, p0, Lcom/narvii/list/NVPagedAdapter$1;->this$0:Lcom/narvii/list/NVPagedAdapter;

    .line 27
    .line 28
    .line 29
    invoke-static {p6, v0}, Lcom/narvii/list/NVPagedAdapter;->l(Lcom/narvii/list/NVPagedAdapter;Lcom/narvii/util/Callback;)V

    .line 30
    .line 31
    iget-object p6, p0, Lcom/narvii/list/NVPagedAdapter$1;->this$0:Lcom/narvii/list/NVPagedAdapter;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p6, p1, p4, p5, p2}, Lcom/narvii/list/NVPagedAdapter;->onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;I)V

    .line 35
    .line 36
    iget-object p1, p0, Lcom/narvii/list/NVPagedAdapter$1;->this$0:Lcom/narvii/list/NVPagedAdapter;

    .line 37
    .line 38
    iput v1, p1, Lcom/narvii/list/NVPagedAdapter;->refreshFlag:I

    .line 39
    .line 40
    if-eqz p3, :cond_0

    .line 41
    const/4 p1, 0x1

    .line 42
    .line 43
    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    .line 48
    invoke-interface {p3, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 49
    :cond_0
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/narvii/model/api/ListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/list/NVPagedAdapter$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/list/NVPagedAdapter$1;->this$0:Lcom/narvii/list/NVPagedAdapter;

    .line 2
    invoke-static {v0}, Lcom/narvii/list/NVPagedAdapter;->f(Lcom/narvii/list/NVPagedAdapter;)I

    move-result v0

    iget-object v1, p0, Lcom/narvii/list/NVPagedAdapter$1;->this$0:Lcom/narvii/list/NVPagedAdapter;

    .line 3
    invoke-static {v1}, Lcom/narvii/list/NVPagedAdapter;->g(Lcom/narvii/list/NVPagedAdapter;)Lcom/narvii/util/Callback;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/list/NVPagedAdapter$1;->this$0:Lcom/narvii/list/NVPagedAdapter;

    const/4 v3, 0x0

    .line 4
    invoke-static {v2, v3}, Lcom/narvii/list/NVPagedAdapter;->k(Lcom/narvii/list/NVPagedAdapter;Lcom/narvii/util/http/ApiRequest;)V

    iget-object v2, p0, Lcom/narvii/list/NVPagedAdapter$1;->this$0:Lcom/narvii/list/NVPagedAdapter;

    const/4 v4, 0x0

    .line 5
    invoke-static {v2, v4}, Lcom/narvii/list/NVPagedAdapter;->j(Lcom/narvii/list/NVPagedAdapter;I)V

    iget-object v2, p0, Lcom/narvii/list/NVPagedAdapter$1;->this$0:Lcom/narvii/list/NVPagedAdapter;

    .line 6
    invoke-static {v2, v3}, Lcom/narvii/list/NVPagedAdapter;->l(Lcom/narvii/list/NVPagedAdapter;Lcom/narvii/util/Callback;)V

    iget-object v2, p0, Lcom/narvii/list/NVPagedAdapter$1;->this$0:Lcom/narvii/list/NVPagedAdapter;

    .line 7
    iget-object v3, v2, Lcom/narvii/list/NVAdapter;->mainIpc:Lcom/narvii/logging/Impression/ImpressionCollector;

    if-eqz v3, :cond_0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_0

    .line 8
    iget-object v2, v2, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-static {v3, v2}, Lcom/narvii/logging/Impression/ImpressionUtils;->clearImpression(Lcom/narvii/logging/Impression/ImpressionCollector;Lcom/narvii/app/NVContext;)V

    :cond_0
    iget-object v2, p0, Lcom/narvii/list/NVPagedAdapter$1;->this$0:Lcom/narvii/list/NVPagedAdapter;

    .line 9
    invoke-virtual {v2, p1, p2, v0}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    iget-object p1, p0, Lcom/narvii/list/NVPagedAdapter$1;->this$0:Lcom/narvii/list/NVPagedAdapter;

    .line 10
    iput v4, p1, Lcom/narvii/list/NVPagedAdapter;->refreshFlag:I

    if-eqz v1, :cond_1

    .line 11
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic parseResponse(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;[B)Lcom/narvii/model/api/ApiResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/narvii/list/NVPagedAdapter$1;->parseResponse(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;[B)Lcom/narvii/model/api/ListResponse;

    move-result-object p1

    return-object p1
.end method

.method public parseResponse(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;[B)Lcom/narvii/model/api/ListResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "I",
            "Ljava/util/List<",
            "Lcom/narvii/util/http/NameValuePair;",
            ">;[B)TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/list/NVPagedAdapter$1;->this$0:Lcom/narvii/list/NVPagedAdapter;

    .line 2
    invoke-static {v0}, Lcom/narvii/list/NVPagedAdapter;->i(Lcom/narvii/list/NVPagedAdapter;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v4, p0, Lcom/narvii/list/NVPagedAdapter$1;->this$0:Lcom/narvii/list/NVPagedAdapter;

    invoke-static {v4}, Lcom/narvii/list/NVPagedAdapter;->h(Lcom/narvii/list/NVPagedAdapter;)J

    move-result-wide v4

    sub-long/2addr v0, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-object v4, p0, Lcom/narvii/list/NVPagedAdapter$1;->this$0:Lcom/narvii/list/NVPagedAdapter;

    .line 4
    invoke-static {v4}, Lcom/narvii/list/NVPagedAdapter;->i(Lcom/narvii/list/NVPagedAdapter;)J

    move-result-wide v4

    sub-long/2addr v4, v0

    cmp-long v0, v4, v2

    if-lez v0, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refresh wait for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    .line 6
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 7
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/util/http/ApiResponseListener;->parseResponse(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;[B)Lcom/narvii/model/api/ApiResponse;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/api/ListResponse;

    return-object p1
.end method
