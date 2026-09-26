.class public final Lcom/narvii/topic/discover/CommunityListModuleAdapter$DataSource;
.super Lcom/narvii/paging/source/PageDataSource;
.source "SourceFile"


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
    .param p1    # Lcom/narvii/topic/discover/CommunityListModuleAdapter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/topic/discover/CommunityListModuleAdapter$DataSource;->this$0:Lcom/narvii/topic/discover/CommunityListModuleAdapter;

    .line 3
    const/4 p1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p2, p1}, Lcom/narvii/paging/source/PageDataSource;-><init>(Lcom/narvii/app/NVContext;Ljava/util/List;)V

    .line 7
    return-void
.end method


# virtual methods
.method protected createRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/discover/CommunityListModuleAdapter$DataSource;->this$0:Lcom/narvii/topic/discover/CommunityListModuleAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/topic/discover/CommunityListModuleAdapter;->isReadyToRequest()Z

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
    iget-object v0, p0, Lcom/narvii/topic/discover/CommunityListModuleAdapter$DataSource;->this$0:Lcom/narvii/topic/discover/CommunityListModuleAdapter;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/topic/discover/CommunityListModuleAdapter;->getContentModule()Lcom/narvii/topic/model/discover/ContentModule;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    iget-object v0, v0, Lcom/narvii/topic/model/discover/ContentModule;->dataUrl:Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/topic/discover/CommunityListModuleAdapter$DataSource;->this$0:Lcom/narvii/topic/discover/CommunityListModuleAdapter;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/narvii/topic/discover/CommunityListModuleAdapter;->getChildHelper()Lcom/narvii/topic/model/discover/SerialRequestHelper;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    iget-object v2, p0, Lcom/narvii/topic/discover/CommunityListModuleAdapter$DataSource;->this$0:Lcom/narvii/topic/discover/CommunityListModuleAdapter;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/narvii/topic/discover/CommunityListModuleAdapter;->getContentModule()Lcom/narvii/topic/model/discover/ContentModule;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v2}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->setRequestFinished(Lcom/narvii/topic/model/discover/ContentModule;)V

    .line 40
    return-object v1

    .line 41
    .line 42
    :cond_1
    iget-object v0, p0, Lcom/narvii/topic/discover/CommunityListModuleAdapter$DataSource;->this$0:Lcom/narvii/topic/discover/CommunityListModuleAdapter;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/narvii/topic/discover/CommunityListModuleAdapter;->getContentModule()Lcom/narvii/topic/model/discover/ContentModule;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/ContentModule;->getRequestFromModule()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 56
    move-result-object v1

    .line 57
    :cond_2
    return-object v1
.end method

.method public onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;I)V
    .locals 0
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

    return-void
.end method

.method public onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/community/search/SearchCommunityListResponse;I)V
    .locals 1
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/community/search/SearchCommunityListResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "req"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resp"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/paging/source/PageDataSource;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    iget-object p1, p0, Lcom/narvii/topic/discover/CommunityListModuleAdapter$DataSource;->this$0:Lcom/narvii/topic/discover/CommunityListModuleAdapter;

    .line 3
    iget p2, p2, Lcom/narvii/community/search/SearchCommunityListResponse;->allItemCount:I

    invoke-static {p1, p2}, Lcom/narvii/topic/discover/CommunityListModuleAdapter;->access$setAllItemCount$p(Lcom/narvii/topic/discover/CommunityListModuleAdapter;I)V

    return-void
.end method

.method public bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 1
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-class v0, Lcom/narvii/community/search/SearchCommunityListResponse;

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
    iget-object v0, p0, Lcom/narvii/topic/discover/CommunityListModuleAdapter$DataSource;->this$0:Lcom/narvii/topic/discover/CommunityListModuleAdapter;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/narvii/topic/discover/CommunityListModuleAdapter;->getChildHelper()Lcom/narvii/topic/model/discover/SerialRequestHelper;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/topic/discover/CommunityListModuleAdapter$DataSource;->this$0:Lcom/narvii/topic/discover/CommunityListModuleAdapter;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/narvii/topic/discover/CommunityListModuleAdapter;->getContentModule()Lcom/narvii/topic/model/discover/ContentModule;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->setRequestFinished(Lcom/narvii/topic/model/discover/ContentModule;)V

    .line 19
    return-void
.end method
