.class public Lcom/narvii/util/http/SequenceRequestHelper;
.super Ljava/lang/Object;
.source "SourceFile"


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
    iput-object v0, p0, Lcom/narvii/util/http/SequenceRequestHelper;->requestList:Ljava/util/ArrayList;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/util/http/SequenceRequestHelper$1;

    .line 13
    .line 14
    const-class v1, Lcom/narvii/model/api/ApiResponse;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, p0, v1}, Lcom/narvii/util/http/SequenceRequestHelper$1;-><init>(Lcom/narvii/util/http/SequenceRequestHelper;Ljava/lang/Class;)V

    .line 18
    .line 19
    iput-object v0, p0, Lcom/narvii/util/http/SequenceRequestHelper;->batchListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/narvii/util/http/SequenceRequestHelper;->listener:Lcom/narvii/util/http/ApiResponseListener;

    .line 22
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/util/http/SequenceRequestHelper;)Lcom/narvii/util/http/ApiService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/util/http/SequenceRequestHelper;->api:Lcom/narvii/util/http/ApiService;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/narvii/util/http/SequenceRequestHelper;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/util/http/SequenceRequestHelper;->index:I

    return p0
.end method

.method static bridge synthetic c(Lcom/narvii/util/http/SequenceRequestHelper;)Lcom/narvii/util/http/ApiResponseListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/util/http/SequenceRequestHelper;->listener:Lcom/narvii/util/http/ApiResponseListener;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/narvii/util/http/SequenceRequestHelper;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/util/http/SequenceRequestHelper;->requestList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/narvii/util/http/SequenceRequestHelper;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/util/http/SequenceRequestHelper;->started:Z

    return p0
.end method

.method static bridge synthetic f(Lcom/narvii/util/http/SequenceRequestHelper;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/util/http/SequenceRequestHelper;->index:I

    return-void
.end method


# virtual methods
.method public abort(Lcom/narvii/util/http/ApiService;)V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/util/http/SequenceRequestHelper;->started:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/narvii/util/http/SequenceRequestHelper;->started:Z

    .line 8
    .line 9
    iget v0, p0, Lcom/narvii/util/http/SequenceRequestHelper;->index:I

    .line 10
    .line 11
    if-ltz v0, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/narvii/util/http/SequenceRequestHelper;->requestList:Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 17
    move-result v1

    .line 18
    .line 19
    if-ge v0, v1, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/util/http/SequenceRequestHelper;->requestList:Ljava/util/ArrayList;

    .line 22
    .line 23
    iget v1, p0, Lcom/narvii/util/http/SequenceRequestHelper;->index:I

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    check-cast v0, Lcom/narvii/util/http/ApiRequest;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/narvii/util/http/SequenceRequestHelper;->batchListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 35
    :cond_0
    return-void
.end method

.method public add(Lcom/narvii/util/http/ApiRequest;)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/util/http/SequenceRequestHelper;->started:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/util/http/SequenceRequestHelper;->requestList:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lcom/narvii/util/http/SequenceRequestHelper;->requestList:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getResponsed()I
    .locals 1

    iget v0, p0, Lcom/narvii/util/http/SequenceRequestHelper;->index:I

    return v0
.end method

.method public hasFinished()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/util/http/SequenceRequestHelper;->getResponsed()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/util/http/SequenceRequestHelper;->getCount()I

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
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/util/http/SequenceRequestHelper;->started:Z

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/util/http/SequenceRequestHelper;->requestList:Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/util/http/SequenceRequestHelper;->api:Lcom/narvii/util/http/ApiService;

    .line 15
    const/4 v0, 0x1

    .line 16
    .line 17
    iput-boolean v0, p0, Lcom/narvii/util/http/SequenceRequestHelper;->started:Z

    .line 18
    const/4 v0, 0x0

    .line 19
    .line 20
    iput v0, p0, Lcom/narvii/util/http/SequenceRequestHelper;->index:I

    .line 21
    .line 22
    iget-object v1, p0, Lcom/narvii/util/http/SequenceRequestHelper;->requestList:Ljava/util/ArrayList;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    check-cast v0, Lcom/narvii/util/http/ApiRequest;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/narvii/util/http/SequenceRequestHelper;->batchListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 34
    return-void

    .line 35
    .line 36
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 37
    .line 38
    const-string v0, "no request to send"

    .line 39
    .line 40
    .line 41
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 42
    throw p1

    .line 43
    .line 44
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    const-string v0, "cannot start, already started"

    .line 47
    .line 48
    .line 49
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    throw p1
.end method
