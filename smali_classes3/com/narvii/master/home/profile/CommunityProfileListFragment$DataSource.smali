.class public final Lcom/narvii/master/home/profile/CommunityProfileListFragment$DataSource;
.super Lcom/narvii/paging/source/PageDataSource;
.source "CommunityProfileListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/home/profile/CommunityProfileListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DataSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/paging/source/PageDataSource<",
        "Lcom/narvii/model/Community;",
        "Lcom/narvii/community/MyCommunityListResponse;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCommunityProfileListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommunityProfileListFragment.kt\ncom/narvii/master/home/profile/CommunityProfileListFragment$DataSource\n*L\n1#1,195:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/profile/CommunityProfileListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/master/home/profile/CommunityProfileListFragment;Lcom/narvii/app/NVContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    .line 77
    iput-object p1, p0, Lcom/narvii/master/home/profile/CommunityProfileListFragment$DataSource;->this$0:Lcom/narvii/master/home/profile/CommunityProfileListFragment;

    sget-object p1, Lcom/narvii/paging/source/PagingConfiguration;->OFFSET_CONFIG:Lcom/narvii/paging/source/PagingConfiguration;

    const-string v0, "PagingConfiguration.OFFSET_CONFIG"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p1}, Lcom/narvii/paging/source/PageDataSource;-><init>(Lcom/narvii/app/NVContext;Ljava/util/List;Lcom/narvii/paging/source/PagingConfiguration;)V

    return-void
.end method


# virtual methods
.method protected createRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 79
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "/community/joined"

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 81
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/community/MyCommunityListResponse;I)V
    .locals 2

    const-string v0, "req"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resp"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/paging/source/PageDataSource;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    .line 90
    iget-object p1, p2, Lcom/narvii/community/MyCommunityListResponse;->userInfoInCommunities:Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 91
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/community/CommunityUserInfo;

    .line 92
    iget-object v0, p0, Lcom/narvii/master/home/profile/CommunityProfileListFragment$DataSource;->this$0:Lcom/narvii/master/home/profile/CommunityProfileListFragment;

    invoke-virtual {v0}, Lcom/narvii/master/home/profile/CommunityProfileListFragment;->getUserProfiles()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "key"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p2, Lcom/narvii/community/CommunityUserInfo;->userProfile:Lcom/narvii/model/User;

    const-string v1, "value.userProfile"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 77
    check-cast p2, Lcom/narvii/community/MyCommunityListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/master/home/profile/CommunityProfileListFragment$DataSource;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/community/MyCommunityListResponse;I)V

    return-void
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/community/MyCommunityListResponse;",
            ">;"
        }
    .end annotation

    .line 85
    const-class v0, Lcom/narvii/community/MyCommunityListResponse;

    return-object v0
.end method
