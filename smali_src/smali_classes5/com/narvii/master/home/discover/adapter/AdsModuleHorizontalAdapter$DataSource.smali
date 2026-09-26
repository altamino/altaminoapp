.class public final Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$DataSource;
.super Lcom/narvii/paging/source/PageDataSource;
.source "SourceFile"


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
    .param p1    # Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Lcom/narvii/paging/source/PagingConfiguration;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "pagingConfiguration"

    .line 3
    .line 4
    .line 5
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$DataSource;->this$0:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;

    .line 8
    const/4 p1, 0x0

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p2, p1, p3}, Lcom/narvii/paging/source/PageDataSource;-><init>(Lcom/narvii/app/NVContext;Ljava/util/List;Lcom/narvii/paging/source/PagingConfiguration;)V

    .line 12
    return-void
.end method


# virtual methods
.method protected createRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$DataSource;->this$0:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;->isReadyToRequest()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    return-object v1

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$DataSource;->this$0:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;->getContentModule()Lcom/narvii/topic/model/discover/ContentModule;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/ContentModule;->getRequestFromModule()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 26
    move-result-object v1

    .line 27
    :cond_1
    return-object v1
.end method

.method public loadNextPage(Lcom/narvii/paging/source/PageRequestCallback;)Z
    .locals 0
    .param p1    # Lcom/narvii/paging/source/PageRequestCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method

.method public onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;I)V
    .locals 1
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/model/api/ApiResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/paging/source/PageDataSource;->onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;I)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$DataSource;->this$0:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->getOnPageResponseListener()Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$OnPageResponseListener;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$OnPageResponseListener;->onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;I)V

    .line 15
    :cond_0
    return-void
.end method

.method public onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/ad/AdsModuleListResponse;I)V
    .locals 2
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/ad/AdsModuleListResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "req"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resp"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/paging/source/PageDataSource;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    .line 3
    iget-object v0, p2, Lcom/narvii/ad/AdsModuleListResponse;->itemList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$DataSource;->this$0:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;

    .line 4
    iget-object v1, p2, Lcom/narvii/ad/AdsModuleListResponse;->itemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->access$setAllItemCount$p(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$DataSource;->this$0:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;

    const/4 v1, 0x0

    .line 5
    invoke-static {v0, v1}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->access$setAllItemCount$p(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;I)V

    :goto_0
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$DataSource;->this$0:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;

    .line 6
    invoke-static {v0}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->access$updateListAndIndicator(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;)V

    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$DataSource;->this$0:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;

    .line 7
    invoke-virtual {v0}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->getOnPageResponseListener()Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$OnPageResponseListener;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2, p3}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$OnPageResponseListener;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/ad/AdsModuleListResponse;I)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 1
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-class v0, Lcom/narvii/ad/AdsModuleListResponse;

    return-object v0
.end method

.method public setFirstPageRequestFinished()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/paging/source/PageDataSource;->setFirstPageRequestFinished()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$DataSource;->this$0:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;->getChildHelper()Lcom/narvii/topic/model/discover/SerialRequestHelper;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$DataSource;->this$0:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;->getContentModule()Lcom/narvii/topic/model/discover/ContentModule;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->setRequestFinished(Lcom/narvii/topic/model/discover/ContentModule;)V

    .line 19
    return-void
.end method
