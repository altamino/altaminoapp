.class public Lcom/narvii/livelayer/LiveLayerHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field cid:I

.field nvContext:Lcom/narvii/app/NVContext;

.field onlineHelper:Lcom/narvii/onlinestatus/OnlineHelper;

.field userIconsPreloadHelper:Lcom/narvii/livelayer/LiveLayerPreloadHelper;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 6
    .line 7
    iput p2, p0, Lcom/narvii/livelayer/LiveLayerHelper;->cid:I

    .line 8
    .line 9
    new-instance p2, Lcom/narvii/onlinestatus/OnlineHelper;

    .line 10
    .line 11
    .line 12
    invoke-direct {p2, p1}, Lcom/narvii/onlinestatus/OnlineHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 13
    .line 14
    iput-object p2, p0, Lcom/narvii/livelayer/LiveLayerHelper;->onlineHelper:Lcom/narvii/onlinestatus/OnlineHelper;

    .line 15
    return-void
.end method


# virtual methods
.method public getNdtopic(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    .line 6
    :cond_0
    iget v0, p0, Lcom/narvii/livelayer/LiveLayerHelper;->cid:I

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    const-string v0, "ndtopic:g:"

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    const-string v1, "ndtopic:x"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    iget v1, p0, Lcom/narvii/livelayer/LiveLayerHelper;->cid:I

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v1, ":"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 51
    return-object p1
.end method

.method public requestOnlineMembers(Ljava/lang/String;IZZLcom/narvii/util/Callback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZZ",
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/model/api/UserListResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v1, "api"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    const-string v2, "live-layer"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    iget v2, p0, Lcom/narvii/livelayer/LiveLayerHelper;->cid:I

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    const-string v2, "topic"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lcom/narvii/livelayer/LiveLayerHelper;->getNdtopic(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 36
    move-result-object p1

    .line 37
    const/4 v1, 0x0

    .line 38
    .line 39
    .line 40
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    const-string v2, "start"

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    const-string v1, "size"

    .line 50
    .line 51
    .line 52
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    move-result-object p2

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    new-instance p2, Lcom/narvii/livelayer/LiveLayerHelper$1;

    .line 64
    .line 65
    const-class v3, Lcom/narvii/model/api/UserListResponse;

    .line 66
    move-object v1, p2

    .line 67
    move-object v2, p0

    .line 68
    move v4, p3

    .line 69
    move v5, p4

    .line 70
    move-object v6, p5

    .line 71
    .line 72
    .line 73
    invoke-direct/range {v1 .. v6}, Lcom/narvii/livelayer/LiveLayerHelper$1;-><init>(Lcom/narvii/livelayer/LiveLayerHelper;Ljava/lang/Class;ZZLcom/narvii/util/Callback;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, p1, p2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 77
    return-void
.end method
