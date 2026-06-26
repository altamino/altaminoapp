.class public Lcom/narvii/livelayer/LiveLayerHelper;
.super Ljava/lang/Object;
.source "LiveLayerHelper.java"


# instance fields
.field cid:I

.field nvContext:Lcom/narvii/app/NVContext;

.field onlineHelper:Lcom/narvii/onlinestatus/OnlineHelper;

.field userIconsPreloadHelper:Lcom/narvii/livelayer/LiveLayerPreloadHelper;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;I)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 28
    iput p2, p0, Lcom/narvii/livelayer/LiveLayerHelper;->cid:I

    .line 29
    new-instance p2, Lcom/narvii/onlinestatus/OnlineHelper;

    invoke-direct {p2, p1}, Lcom/narvii/onlinestatus/OnlineHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p2, p0, Lcom/narvii/livelayer/LiveLayerHelper;->onlineHelper:Lcom/narvii/onlinestatus/OnlineHelper;

    return-void
.end method


# virtual methods
.method public getNdtopic(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 84
    :cond_0
    iget v0, p0, Lcom/narvii/livelayer/LiveLayerHelper;->cid:I

    if-nez v0, :cond_1

    const-string v0, "ndtopic:g:"

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ndtopic:x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/narvii/livelayer/LiveLayerHelper;->cid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

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

    .line 33
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v1, "api"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 34
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "live-layer"

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    iget v2, p0, Lcom/narvii/livelayer/LiveLayerHelper;->cid:I

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/narvii/livelayer/LiveLayerHelper;->getNdtopic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "topic"

    invoke-virtual {v1, v2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "start"

    invoke-virtual {p1, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "size"

    invoke-virtual {p1, v1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    .line 35
    new-instance p2, Lcom/narvii/livelayer/LiveLayerHelper$1;

    const-class v3, Lcom/narvii/model/api/UserListResponse;

    move-object v1, p2

    move-object v2, p0

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/narvii/livelayer/LiveLayerHelper$1;-><init>(Lcom/narvii/livelayer/LiveLayerHelper;Ljava/lang/Class;ZZLcom/narvii/util/Callback;)V

    invoke-virtual {v0, p1, p2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method
