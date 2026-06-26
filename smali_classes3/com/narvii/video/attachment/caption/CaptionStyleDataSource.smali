.class public Lcom/narvii/video/attachment/caption/CaptionStyleDataSource;
.super Lcom/narvii/paging/source/PageDataSource;
.source "CaptionStyleDataSource.java"


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 2

    .line 15
    sget-object v0, Lcom/narvii/paging/source/PagingConfiguration;->OFFSET_CONFIG:Lcom/narvii/paging/source/PagingConfiguration;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/narvii/paging/source/PageDataSource;-><init>(Lcom/narvii/app/NVContext;Ljava/util/List;Lcom/narvii/paging/source/PagingConfiguration;)V

    return-void
.end method


# virtual methods
.method protected createRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 21
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "/asset/text-animation"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1

    .line 28
    const-class v0, Lcom/narvii/media/online/audio/model/AssetListResponse;

    return-object v0
.end method
