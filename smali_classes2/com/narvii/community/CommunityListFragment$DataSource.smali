.class public final Lcom/narvii/community/CommunityListFragment$DataSource;
.super Lcom/narvii/paging/source/PageDataSource;
.source "CommunityListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/community/CommunityListFragment;
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
.field private firstResponse:Z

.field final synthetic this$0:Lcom/narvii/community/CommunityListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/community/CommunityListFragment;Lcom/narvii/app/NVContext;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/Community;",
            ">;)V"
        }
    .end annotation

    .line 161
    iput-object p1, p0, Lcom/narvii/community/CommunityListFragment$DataSource;->this$0:Lcom/narvii/community/CommunityListFragment;

    invoke-virtual {p1}, Lcom/narvii/community/CommunityListFragment;->pagingConfig()Lcom/narvii/paging/source/PagingConfiguration;

    move-result-object p1

    invoke-direct {p0, p2, p3, p1}, Lcom/narvii/paging/source/PageDataSource;-><init>(Lcom/narvii/app/NVContext;Ljava/util/List;Lcom/narvii/paging/source/PagingConfiguration;)V

    const/4 p1, 0x1

    .line 162
    iput-boolean p1, p0, Lcom/narvii/community/CommunityListFragment$DataSource;->firstResponse:Z

    return-void
.end method


# virtual methods
.method protected createRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 165
    iget-object v0, p0, Lcom/narvii/community/CommunityListFragment$DataSource;->this$0:Lcom/narvii/community/CommunityListFragment;

    const-string v1, "KEY_PATH"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/narvii/community/CommunityListFragment$DataSource;->this$0:Lcom/narvii/community/CommunityListFragment;

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getApiRequestFromPath(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    return-object v0

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/narvii/community/CommunityListFragment$DataSource;->this$0:Lcom/narvii/community/CommunityListFragment;

    invoke-virtual {v0}, Lcom/narvii/community/CommunityListFragment;->createRequest()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 175
    :cond_1
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "/community/search"

    .line 176
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 177
    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->getContext()Lcom/narvii/app/NVContext;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "content_language"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/language/ContentLanguageService;

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 178
    invoke-virtual {v1}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const-string v1, "en"

    :goto_1
    const-string v2, "language"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 180
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public filterResponseList(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/model/Community;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation

    .line 188
    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->getInitPage()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/narvii/community/CommunityListFragment$DataSource;->firstResponse:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 189
    iput-boolean v0, p0, Lcom/narvii/community/CommunityListFragment$DataSource;->firstResponse:Z

    .line 190
    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->getInitPage()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->filterDuplicated(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-super {p0, p1}, Lcom/narvii/paging/source/PageDataSource;->filterResponseList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.collections.List<com.narvii.model.Community>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 192
    :cond_1
    invoke-super {p0, p1}, Lcom/narvii/paging/source/PageDataSource;->filterResponseList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final getFirstResponse()Z
    .locals 1

    .line 162
    iget-boolean v0, p0, Lcom/narvii/community/CommunityListFragment$DataSource;->firstResponse:Z

    return v0
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

    .line 184
    const-class v0, Lcom/narvii/community/search/SearchCommunityListResponse;

    return-object v0
.end method

.method public final setFirstResponse(Z)V
    .locals 0

    .line 162
    iput-boolean p1, p0, Lcom/narvii/community/CommunityListFragment$DataSource;->firstResponse:Z

    return-void
.end method
