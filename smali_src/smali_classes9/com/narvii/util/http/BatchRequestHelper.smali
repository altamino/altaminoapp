.class public Lcom/narvii/util/http/BatchRequestHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final batchListener:Lcom/narvii/util/http/ApiResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/http/ApiResponseListener<",
            "Lcom/narvii/model/api/ApiResponse;",
            ">;"
        }
    .end annotation
.end field

.field private failCount:I

.field private failMessage:Ljava/lang/String;

.field private failRequest:Lcom/narvii/util/http/ApiRequest;

.field private failResponse:Lcom/narvii/model/api/ApiResponse;

.field private listener:Lcom/narvii/util/http/ApiResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/http/ApiResponseListener<",
            "Lcom/narvii/model/api/ApiResponse;",
            ">;"
        }
    .end annotation
.end field

.field private requestList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/util/http/ApiRequest;",
            ">;"
        }
    .end annotation
.end field

.field private started:Z

.field private successCount:I

.field private successResponse:Lcom/narvii/model/api/ApiResponse;


# direct methods
.method public constructor <init>(Lcom/narvii/util/http/ApiResponseListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiResponseListener<",
            "Lcom/narvii/model/api/ApiResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/util/http/BatchRequestHelper;->requestList:Ljava/util/ArrayList;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/util/http/BatchRequestHelper$1;

    .line 13
    .line 14
    const-class v1, Lcom/narvii/model/api/ApiResponse;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, p0, v1}, Lcom/narvii/util/http/BatchRequestHelper$1;-><init>(Lcom/narvii/util/http/BatchRequestHelper;Ljava/lang/Class;)V

    .line 18
    .line 19
    iput-object v0, p0, Lcom/narvii/util/http/BatchRequestHelper;->batchListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/narvii/util/http/BatchRequestHelper;->listener:Lcom/narvii/util/http/ApiResponseListener;

    .line 22
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/util/http/BatchRequestHelper;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/util/http/BatchRequestHelper;->failCount:I

    return p0
.end method

.method static bridge synthetic b(Lcom/narvii/util/http/BatchRequestHelper;)Lcom/narvii/util/http/ApiRequest;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/util/http/BatchRequestHelper;->failRequest:Lcom/narvii/util/http/ApiRequest;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/narvii/util/http/BatchRequestHelper;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/util/http/BatchRequestHelper;->successCount:I

    return p0
.end method

.method private check()V
    .locals 10

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/util/http/BatchRequestHelper;->started:Z

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/util/http/BatchRequestHelper;->hasFinished()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    :try_start_0
    iget v0, p0, Lcom/narvii/util/http/BatchRequestHelper;->successCount:I

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/util/http/BatchRequestHelper;->requestList:Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 18
    move-result v1

    .line 19
    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/util/http/BatchRequestHelper;->listener:Lcom/narvii/util/http/ApiResponseListener;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/narvii/util/http/BatchRequestHelper;->requestList:Ljava/util/ArrayList;

    .line 25
    const/4 v2, 0x0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    check-cast v1, Lcom/narvii/util/http/ApiRequest;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/narvii/util/http/BatchRequestHelper;->successResponse:Lcom/narvii/model/api/ApiResponse;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :cond_0
    iget-object v3, p0, Lcom/narvii/util/http/BatchRequestHelper;->listener:Lcom/narvii/util/http/ApiResponseListener;

    .line 40
    .line 41
    iget-object v4, p0, Lcom/narvii/util/http/BatchRequestHelper;->failRequest:Lcom/narvii/util/http/ApiRequest;

    .line 42
    const/4 v5, 0x0

    .line 43
    const/4 v6, 0x0

    .line 44
    .line 45
    iget-object v7, p0, Lcom/narvii/util/http/BatchRequestHelper;->failMessage:Ljava/lang/String;

    .line 46
    .line 47
    iget-object v8, p0, Lcom/narvii/util/http/BatchRequestHelper;->failResponse:Lcom/narvii/model/api/ApiResponse;

    .line 48
    const/4 v9, 0x0

    .line 49
    .line 50
    .line 51
    invoke-virtual/range {v3 .. v9}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method static bridge synthetic d(Lcom/narvii/util/http/BatchRequestHelper;)Lcom/narvii/model/api/ApiResponse;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/util/http/BatchRequestHelper;->successResponse:Lcom/narvii/model/api/ApiResponse;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/narvii/util/http/BatchRequestHelper;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/util/http/BatchRequestHelper;->failCount:I

    return-void
.end method

.method static bridge synthetic f(Lcom/narvii/util/http/BatchRequestHelper;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/util/http/BatchRequestHelper;->failMessage:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic g(Lcom/narvii/util/http/BatchRequestHelper;Lcom/narvii/util/http/ApiRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/util/http/BatchRequestHelper;->failRequest:Lcom/narvii/util/http/ApiRequest;

    return-void
.end method

.method static bridge synthetic h(Lcom/narvii/util/http/BatchRequestHelper;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/util/http/BatchRequestHelper;->failResponse:Lcom/narvii/model/api/ApiResponse;

    return-void
.end method

.method static bridge synthetic i(Lcom/narvii/util/http/BatchRequestHelper;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/util/http/BatchRequestHelper;->successCount:I

    return-void
.end method

.method static bridge synthetic j(Lcom/narvii/util/http/BatchRequestHelper;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/util/http/BatchRequestHelper;->successResponse:Lcom/narvii/model/api/ApiResponse;

    return-void
.end method

.method static bridge synthetic k(Lcom/narvii/util/http/BatchRequestHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/util/http/BatchRequestHelper;->check()V

    return-void
.end method


# virtual methods
.method public abort(Lcom/narvii/util/http/ApiService;)V
    .locals 3

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/util/http/BatchRequestHelper;->started:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/narvii/util/http/BatchRequestHelper;->started:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/util/http/BatchRequestHelper;->requestList:Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    check-cast v1, Lcom/narvii/util/http/ApiRequest;

    .line 26
    .line 27
    iget-object v2, p0, Lcom/narvii/util/http/BatchRequestHelper;->batchListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v1, v2}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public add(Lcom/narvii/util/http/ApiRequest;)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/util/http/BatchRequestHelper;->started:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/util/http/BatchRequestHelper;->requestList:Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    return-void

    .line 11
    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    const-string v0, "cannot add request after starts"

    .line 15
    .line 16
    .line 17
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 18
    throw p1
.end method

.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/http/BatchRequestHelper;->requestList:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getFailCount()I
    .locals 1

    iget v0, p0, Lcom/narvii/util/http/BatchRequestHelper;->failCount:I

    return v0
.end method

.method public getResponsed()I
    .locals 2

    iget v0, p0, Lcom/narvii/util/http/BatchRequestHelper;->successCount:I

    iget v1, p0, Lcom/narvii/util/http/BatchRequestHelper;->failCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method public hasFinished()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/util/http/BatchRequestHelper;->getResponsed()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/util/http/BatchRequestHelper;->getCount()I

    .line 8
    move-result v1

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public start(Lcom/narvii/util/http/ApiService;)V
    .locals 3

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/util/http/BatchRequestHelper;->started:Z

    .line 3
    .line 4
    if-nez v0, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/util/http/BatchRequestHelper;->requestList:Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    const/4 v0, 0x0

    .line 14
    .line 15
    iput v0, p0, Lcom/narvii/util/http/BatchRequestHelper;->successCount:I

    .line 16
    .line 17
    iput v0, p0, Lcom/narvii/util/http/BatchRequestHelper;->failCount:I

    .line 18
    const/4 v0, 0x0

    .line 19
    .line 20
    iput-object v0, p0, Lcom/narvii/util/http/BatchRequestHelper;->successResponse:Lcom/narvii/model/api/ApiResponse;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/narvii/util/http/BatchRequestHelper;->failRequest:Lcom/narvii/util/http/ApiRequest;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/narvii/util/http/BatchRequestHelper;->failMessage:Ljava/lang/String;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/narvii/util/http/BatchRequestHelper;->failResponse:Lcom/narvii/model/api/ApiResponse;

    .line 27
    const/4 v0, 0x1

    .line 28
    .line 29
    iput-boolean v0, p0, Lcom/narvii/util/http/BatchRequestHelper;->started:Z

    .line 30
    .line 31
    iget-object v0, p0, Lcom/narvii/util/http/BatchRequestHelper;->requestList:Ljava/util/ArrayList;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    move-result v1

    .line 40
    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    check-cast v1, Lcom/narvii/util/http/ApiRequest;

    .line 48
    .line 49
    iget-object v2, p0, Lcom/narvii/util/http/BatchRequestHelper;->batchListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    return-void

    .line 55
    .line 56
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 57
    .line 58
    const-string v0, "no request to send"

    .line 59
    .line 60
    .line 61
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 62
    throw p1

    .line 63
    .line 64
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 65
    .line 66
    const-string v0, "cannot start, already started"

    .line 67
    .line 68
    .line 69
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 70
    throw p1
.end method
