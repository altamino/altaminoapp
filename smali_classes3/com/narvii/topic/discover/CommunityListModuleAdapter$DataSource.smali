.class public final Lcom/narvii/topic/discover/CommunityListModuleAdapter$DataSource;
.super Lcom/narvii/paging/source/PageDataSource;
.source "CommunityListModuleAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/topic/discover/CommunityListModuleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DataSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/paging/source/PageDataSource<",
        "Lcom/narvii/model/Community;",
        "Lcom/narvii/community/search/SearchCommunityListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/topic/discover/CommunityListModuleAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/topic/discover/CommunityListModuleAdapter;Lcom/narvii/app/NVContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    .line 78
    iput-object p1, p0, Lcom/narvii/topic/discover/CommunityListModuleAdapter$DataSource;->this$0:Lcom/narvii/topic/discover/CommunityListModuleAdapter;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/narvii/paging/source/PageDataSource;-><init>(Lcom/narvii/app/NVContext;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected createRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/narvii/topic/discover/CommunityListModuleAdapter$DataSource;->this$0:Lcom/narvii/topic/discover/CommunityListModuleAdapter;

    invoke-virtual {v0}, Lcom/narvii/topic/discover/CommunityListModuleAdapter;->isReadyToRequest()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/narvii/topic/discover/CommunityListModuleAdapter$DataSource;->this$0:Lcom/narvii/topic/discover/CommunityListModuleAdapter;

    invoke-virtual {v0}, Lcom/narvii/topic/discover/CommunityListModuleAdapter;->getContentModule()Lcom/narvii/topic/model/discover/ContentModule;

    move-result-object v0

    iget-object v0, v0, Lcom/narvii/topic/model/discover/ContentModule;->dataUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/narvii/topic/discover/CommunityListModuleAdapter$DataSource;->this$0:Lcom/narvii/topic/discover/CommunityListModuleAdapter;

    invoke-virtual {v0}, Lcom/narvii/topic/discover/CommunityListModuleAdapter;->getChildHelper()Lcom/narvii/topic/model/discover/SerialRequestHelper;

    move-result-object v0

    iget-object v2, p0, Lcom/narvii/topic/discover/CommunityListModuleAdapter$DataSource;->this$0:Lcom/narvii/topic/discover/CommunityListModuleAdapter;

    invoke-virtual {v2}, Lcom/narvii/topic/discover/CommunityListModuleAdapter;->getContentModule()Lcom/narvii/topic/model/discover/ContentModule;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->setRequestFinished(Lcom/narvii/topic/model/discover/ContentModule;)V

    return-object v1

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/narvii/topic/discover/CommunityListModuleAdapter$DataSource;->this$0:Lcom/narvii/topic/discover/CommunityListModuleAdapter;

    invoke-virtual {v0}, Lcom/narvii/topic/discover/CommunityListModuleAdapter;->getContentModule()Lcom/narvii/topic/model/discover/ContentModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/ContentModule;->getRequestFromModule()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 88
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method public onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;I)V
    .locals 0

    return-void
.end method

.method public onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/community/search/SearchCommunityListResponse;I)V
    .locals 1

    const-string v0, "req"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resp"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/paging/source/PageDataSource;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    .line 97
    iget-object p1, p0, Lcom/narvii/topic/discover/CommunityListModuleAdapter$DataSource;->this$0:Lcom/narvii/topic/discover/CommunityListModuleAdapter;

    iget p2, p2, Lcom/narvii/community/search/SearchCommunityListResponse;->allItemCount:I

    invoke-static {p1, p2}, Lcom/narvii/topic/discover/CommunityListModuleAdapter;->access$setAllItemCount$p(Lcom/narvii/topic/discover/CommunityListModuleAdapter;I)V

    return-void
.end method

.method public bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 78
    check-cast p2, Lcom/narvii/community/search/SearchCommunityListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/topic/discover/CommunityListModuleAdapter$DataSource;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/community/search/SearchCommunityListResponse;I)V

    return-void
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/community/search/SearchCommunityListResponse;",
            ">;"
        }
    .end annotation

    .line 92
    const-class v0, Lcom/narvii/community/search/SearchCommunityListResponse;

    return-object v0
.end method

.method public setFirstPageRequestFinished()V
    .locals 2

    .line 102
    invoke-super {p0}, Lcom/narvii/paging/source/PageDataSource;->setFirstPageRequestFinished()V

    .line 103
    iget-object v0, p0, Lcom/narvii/topic/discover/CommunityListModuleAdapter$DataSource;->this$0:Lcom/narvii/topic/discover/CommunityListModuleAdapter;

    invoke-virtual {v0}, Lcom/narvii/topic/discover/CommunityListModuleAdapter;->getChildHelper()Lcom/narvii/topic/model/discover/SerialRequestHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/topic/discover/CommunityListModuleAdapter$DataSource;->this$0:Lcom/narvii/topic/discover/CommunityListModuleAdapter;

    invoke-virtual {v1}, Lcom/narvii/topic/discover/CommunityListModuleAdapter;->getContentModule()Lcom/narvii/topic/model/discover/ContentModule;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->setRequestFinished(Lcom/narvii/topic/model/discover/ContentModule;)V

    return-void
.end method
