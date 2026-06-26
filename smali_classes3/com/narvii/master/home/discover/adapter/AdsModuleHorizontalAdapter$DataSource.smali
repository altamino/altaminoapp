.class public final Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$DataSource;
.super Lcom/narvii/paging/source/PageDataSource;
.source "AdsModuleHorizontalAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DataSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/paging/source/PageDataSource<",
        "Lcom/narvii/ad/AdsModuleItem;",
        "Lcom/narvii/ad/AdsModuleListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;Lcom/narvii/app/NVContext;Lcom/narvii/paging/source/PagingConfiguration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Lcom/narvii/paging/source/PagingConfiguration;",
            ")V"
        }
    .end annotation

    const-string v0, "pagingConfiguration"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$DataSource;->this$0:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1, p3}, Lcom/narvii/paging/source/PageDataSource;-><init>(Lcom/narvii/app/NVContext;Ljava/util/List;Lcom/narvii/paging/source/PagingConfiguration;)V

    return-void
.end method


# virtual methods
.method protected createRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$DataSource;->this$0:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;

    invoke-virtual {v0}, Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;->isReadyToRequest()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$DataSource;->this$0:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;

    invoke-virtual {v0}, Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;->getContentModule()Lcom/narvii/topic/model/discover/ContentModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/ContentModule;->getRequestFromModule()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 237
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public loadNextPage(Lcom/narvii/paging/source/PageRequestCallback;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;I)V
    .locals 1

    .line 263
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/paging/source/PageDataSource;->onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;I)V

    .line 264
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$DataSource;->this$0:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;

    invoke-virtual {v0}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->getOnPageResponseListener()Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$OnPageResponseListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$OnPageResponseListener;->onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;I)V

    :cond_0
    return-void
.end method

.method public onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/ad/AdsModuleListResponse;I)V
    .locals 2

    const-string v0, "req"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resp"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/paging/source/PageDataSource;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    .line 253
    iget-object v0, p2, Lcom/narvii/ad/AdsModuleListResponse;->itemList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 254
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$DataSource;->this$0:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;

    iget-object v1, p2, Lcom/narvii/ad/AdsModuleListResponse;->itemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->access$setAllItemCount$p(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;I)V

    goto :goto_0

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$DataSource;->this$0:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->access$setAllItemCount$p(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;I)V

    .line 258
    :goto_0
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$DataSource;->this$0:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;

    invoke-static {v0}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->access$updateListAndIndicator(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;)V

    .line 259
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$DataSource;->this$0:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;

    invoke-virtual {v0}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->getOnPageResponseListener()Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$OnPageResponseListener;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2, p3}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$OnPageResponseListener;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/ad/AdsModuleListResponse;I)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 230
    check-cast p2, Lcom/narvii/ad/AdsModuleListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$DataSource;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/ad/AdsModuleListResponse;I)V

    return-void
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/ad/AdsModuleListResponse;",
            ">;"
        }
    .end annotation

    .line 240
    const-class v0, Lcom/narvii/ad/AdsModuleListResponse;

    return-object v0
.end method

.method public setFirstPageRequestFinished()V
    .locals 2

    .line 243
    invoke-super {p0}, Lcom/narvii/paging/source/PageDataSource;->setFirstPageRequestFinished()V

    .line 244
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$DataSource;->this$0:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;

    invoke-virtual {v0}, Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;->getChildHelper()Lcom/narvii/topic/model/discover/SerialRequestHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$DataSource;->this$0:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;

    invoke-virtual {v1}, Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;->getContentModule()Lcom/narvii/topic/model/discover/ContentModule;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->setRequestFinished(Lcom/narvii/topic/model/discover/ContentModule;)V

    return-void
.end method
