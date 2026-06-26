.class public Lcom/narvii/util/http/SequenceRequestHelper;
.super Ljava/lang/Object;
.source "SequenceRequestHelper.java"


# instance fields
.field private api:Lcom/narvii/util/http/ApiService;

.field private final batchListener:Lcom/narvii/util/http/ApiResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/http/ApiResponseListener<",
            "Lcom/narvii/model/api/ApiResponse;",
            ">;"
        }
    .end annotation
.end field

.field private index:I

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

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/util/http/SequenceRequestHelper;->requestList:Ljava/util/ArrayList;

    .line 70
    new-instance v0, Lcom/narvii/util/http/SequenceRequestHelper$1;

    const-class v1, Lcom/narvii/model/api/ApiResponse;

    invoke-direct {v0, p0, v1}, Lcom/narvii/util/http/SequenceRequestHelper$1;-><init>(Lcom/narvii/util/http/SequenceRequestHelper;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/narvii/util/http/SequenceRequestHelper;->batchListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 27
    iput-object p1, p0, Lcom/narvii/util/http/SequenceRequestHelper;->listener:Lcom/narvii/util/http/ApiResponseListener;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/util/http/SequenceRequestHelper;)Z
    .locals 0

    .line 17
    iget-boolean p0, p0, Lcom/narvii/util/http/SequenceRequestHelper;->started:Z

    return p0
.end method

.method static synthetic access$100(Lcom/narvii/util/http/SequenceRequestHelper;)I
    .locals 0

    .line 17
    iget p0, p0, Lcom/narvii/util/http/SequenceRequestHelper;->index:I

    return p0
.end method

.method static synthetic access$108(Lcom/narvii/util/http/SequenceRequestHelper;)I
    .locals 2

    .line 17
    iget v0, p0, Lcom/narvii/util/http/SequenceRequestHelper;->index:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/narvii/util/http/SequenceRequestHelper;->index:I

    return v0
.end method

.method static synthetic access$200(Lcom/narvii/util/http/SequenceRequestHelper;)Ljava/util/ArrayList;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/narvii/util/http/SequenceRequestHelper;->requestList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/util/http/SequenceRequestHelper;)Lcom/narvii/util/http/ApiResponseListener;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/narvii/util/http/SequenceRequestHelper;->listener:Lcom/narvii/util/http/ApiResponseListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/util/http/SequenceRequestHelper;)Lcom/narvii/util/http/ApiService;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/narvii/util/http/SequenceRequestHelper;->api:Lcom/narvii/util/http/ApiService;

    return-object p0
.end method


# virtual methods
.method public abort(Lcom/narvii/util/http/ApiService;)V
    .locals 2

    .line 49
    iget-boolean v0, p0, Lcom/narvii/util/http/SequenceRequestHelper;->started:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/narvii/util/http/SequenceRequestHelper;->started:Z

    .line 52
    iget v0, p0, Lcom/narvii/util/http/SequenceRequestHelper;->index:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/narvii/util/http/SequenceRequestHelper;->requestList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 53
    iget-object v0, p0, Lcom/narvii/util/http/SequenceRequestHelper;->requestList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/narvii/util/http/SequenceRequestHelper;->index:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiRequest;

    iget-object v1, p0, Lcom/narvii/util/http/SequenceRequestHelper;->batchListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    :cond_0
    return-void
.end method

.method public add(Lcom/narvii/util/http/ApiRequest;)V
    .locals 1

    .line 31
    iget-boolean v0, p0, Lcom/narvii/util/http/SequenceRequestHelper;->started:Z

    if-nez v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/narvii/util/http/SequenceRequestHelper;->requestList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 32
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "cannot add request after starts"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCount()I
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/narvii/util/http/SequenceRequestHelper;->requestList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getResponsed()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/narvii/util/http/SequenceRequestHelper;->index:I

    return v0
.end method

.method public hasFinished()Z
    .locals 2

    .line 67
    invoke-virtual {p0}, Lcom/narvii/util/http/SequenceRequestHelper;->getResponsed()I

    move-result v0

    invoke-virtual {p0}, Lcom/narvii/util/http/SequenceRequestHelper;->getCount()I

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
    .locals 2

    .line 37
    iget-boolean v0, p0, Lcom/narvii/util/http/SequenceRequestHelper;->started:Z

    if-nez v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/narvii/util/http/SequenceRequestHelper;->requestList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    iput-object p1, p0, Lcom/narvii/util/http/SequenceRequestHelper;->api:Lcom/narvii/util/http/ApiService;

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/narvii/util/http/SequenceRequestHelper;->started:Z

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/narvii/util/http/SequenceRequestHelper;->index:I

    .line 45
    iget-object v1, p0, Lcom/narvii/util/http/SequenceRequestHelper;->requestList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiRequest;

    iget-object v1, p0, Lcom/narvii/util/http/SequenceRequestHelper;->batchListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void

    .line 40
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no request to send"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 38
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "cannot start, already started"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
