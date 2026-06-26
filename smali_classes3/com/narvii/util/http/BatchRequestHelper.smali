.class public Lcom/narvii/util/http/BatchRequestHelper;
.super Ljava/lang/Object;
.source "BatchRequestHelper.java"


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

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/util/http/BatchRequestHelper;->requestList:Ljava/util/ArrayList;

    .line 85
    new-instance v0, Lcom/narvii/util/http/BatchRequestHelper$1;

    const-class v1, Lcom/narvii/model/api/ApiResponse;

    invoke-direct {v0, p0, v1}, Lcom/narvii/util/http/BatchRequestHelper$1;-><init>(Lcom/narvii/util/http/BatchRequestHelper;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/narvii/util/http/BatchRequestHelper;->batchListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 31
    iput-object p1, p0, Lcom/narvii/util/http/BatchRequestHelper;->listener:Lcom/narvii/util/http/ApiResponseListener;

    return-void
.end method

.method static synthetic access$008(Lcom/narvii/util/http/BatchRequestHelper;)I
    .locals 2

    .line 17
    iget v0, p0, Lcom/narvii/util/http/BatchRequestHelper;->successCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/narvii/util/http/BatchRequestHelper;->successCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/narvii/util/http/BatchRequestHelper;)Lcom/narvii/model/api/ApiResponse;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/narvii/util/http/BatchRequestHelper;->successResponse:Lcom/narvii/model/api/ApiResponse;

    return-object p0
.end method

.method static synthetic access$102(Lcom/narvii/util/http/BatchRequestHelper;Lcom/narvii/model/api/ApiResponse;)Lcom/narvii/model/api/ApiResponse;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/narvii/util/http/BatchRequestHelper;->successResponse:Lcom/narvii/model/api/ApiResponse;

    return-object p1
.end method

.method static synthetic access$200(Lcom/narvii/util/http/BatchRequestHelper;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/narvii/util/http/BatchRequestHelper;->check()V

    return-void
.end method

.method static synthetic access$308(Lcom/narvii/util/http/BatchRequestHelper;)I
    .locals 2

    .line 17
    iget v0, p0, Lcom/narvii/util/http/BatchRequestHelper;->failCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/narvii/util/http/BatchRequestHelper;->failCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/narvii/util/http/BatchRequestHelper;)Lcom/narvii/util/http/ApiRequest;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/narvii/util/http/BatchRequestHelper;->failRequest:Lcom/narvii/util/http/ApiRequest;

    return-object p0
.end method

.method static synthetic access$402(Lcom/narvii/util/http/BatchRequestHelper;Lcom/narvii/util/http/ApiRequest;)Lcom/narvii/util/http/ApiRequest;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/narvii/util/http/BatchRequestHelper;->failRequest:Lcom/narvii/util/http/ApiRequest;

    return-object p1
.end method

.method static synthetic access$502(Lcom/narvii/util/http/BatchRequestHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/narvii/util/http/BatchRequestHelper;->failMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/narvii/util/http/BatchRequestHelper;Lcom/narvii/model/api/ApiResponse;)Lcom/narvii/model/api/ApiResponse;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/narvii/util/http/BatchRequestHelper;->failResponse:Lcom/narvii/model/api/ApiResponse;

    return-object p1
.end method

.method private check()V
    .locals 10

    .line 112
    iget-boolean v0, p0, Lcom/narvii/util/http/BatchRequestHelper;->started:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/narvii/util/http/BatchRequestHelper;->hasFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    :try_start_0
    iget v0, p0, Lcom/narvii/util/http/BatchRequestHelper;->successCount:I

    iget-object v1, p0, Lcom/narvii/util/http/BatchRequestHelper;->requestList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 115
    iget-object v0, p0, Lcom/narvii/util/http/BatchRequestHelper;->listener:Lcom/narvii/util/http/ApiResponseListener;

    iget-object v1, p0, Lcom/narvii/util/http/BatchRequestHelper;->requestList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiRequest;

    iget-object v2, p0, Lcom/narvii/util/http/BatchRequestHelper;->successResponse:Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    goto :goto_0

    .line 117
    :cond_0
    iget-object v3, p0, Lcom/narvii/util/http/BatchRequestHelper;->listener:Lcom/narvii/util/http/ApiResponseListener;

    iget-object v4, p0, Lcom/narvii/util/http/BatchRequestHelper;->failRequest:Lcom/narvii/util/http/ApiRequest;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/narvii/util/http/BatchRequestHelper;->failMessage:Ljava/lang/String;

    iget-object v8, p0, Lcom/narvii/util/http/BatchRequestHelper;->failResponse:Lcom/narvii/model/api/ApiResponse;

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public abort(Lcom/narvii/util/http/ApiService;)V
    .locals 3

    .line 60
    iget-boolean v0, p0, Lcom/narvii/util/http/BatchRequestHelper;->started:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/narvii/util/http/BatchRequestHelper;->started:Z

    .line 63
    iget-object v0, p0, Lcom/narvii/util/http/BatchRequestHelper;->requestList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiRequest;

    .line 64
    iget-object v2, p0, Lcom/narvii/util/http/BatchRequestHelper;->batchListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {p1, v1, v2}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public add(Lcom/narvii/util/http/ApiRequest;)V
    .locals 1

    .line 35
    iget-boolean v0, p0, Lcom/narvii/util/http/BatchRequestHelper;->started:Z

    if-nez v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/narvii/util/http/BatchRequestHelper;->requestList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 36
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "cannot add request after starts"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCount()I
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/narvii/util/http/BatchRequestHelper;->requestList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getFailCount()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/narvii/util/http/BatchRequestHelper;->failCount:I

    return v0
.end method

.method public getResponsed()I
    .locals 2

    .line 74
    iget v0, p0, Lcom/narvii/util/http/BatchRequestHelper;->successCount:I

    iget v1, p0, Lcom/narvii/util/http/BatchRequestHelper;->failCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method public hasFinished()Z
    .locals 2

    .line 78
    invoke-virtual {p0}, Lcom/narvii/util/http/BatchRequestHelper;->getResponsed()I

    move-result v0

    invoke-virtual {p0}, Lcom/narvii/util/http/BatchRequestHelper;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public start(Lcom/narvii/util/http/ApiService;)V
    .locals 3

    .line 41
    iget-boolean v0, p0, Lcom/narvii/util/http/BatchRequestHelper;->started:Z

    if-nez v0, :cond_2

    .line 43
    iget-object v0, p0, Lcom/narvii/util/http/BatchRequestHelper;->requestList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lcom/narvii/util/http/BatchRequestHelper;->successCount:I

    .line 47
    iput v0, p0, Lcom/narvii/util/http/BatchRequestHelper;->failCount:I

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/narvii/util/http/BatchRequestHelper;->successResponse:Lcom/narvii/model/api/ApiResponse;

    .line 49
    iput-object v0, p0, Lcom/narvii/util/http/BatchRequestHelper;->failRequest:Lcom/narvii/util/http/ApiRequest;

    .line 50
    iput-object v0, p0, Lcom/narvii/util/http/BatchRequestHelper;->failMessage:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/narvii/util/http/BatchRequestHelper;->failResponse:Lcom/narvii/model/api/ApiResponse;

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcom/narvii/util/http/BatchRequestHelper;->started:Z

    .line 54
    iget-object v0, p0, Lcom/narvii/util/http/BatchRequestHelper;->requestList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiRequest;

    .line 55
    iget-object v2, p0, Lcom/narvii/util/http/BatchRequestHelper;->batchListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {p1, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    goto :goto_0

    :cond_0
    return-void

    .line 44
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no request to send"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 42
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "cannot start, already started"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
