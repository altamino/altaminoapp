.class Lcom/narvii/feed/BlogRecommendedListFragment$Adapter;
.super Lcom/narvii/feed/FeedListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/feed/BlogRecommendedListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Adapter"
.end annotation


# instance fields
.field private communityService:Lcom/narvii/community/CommunityService;

.field private config:Lcom/narvii/config/ConfigService;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/feed/FeedListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    const/4 p1, 0x1

    .line 5
    .line 6
    iput p1, p0, Lcom/narvii/list/NVPagedAdapter;->paginationType:I

    .line 7
    .line 8
    const-string p1, "config"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/narvii/feed/BlogRecommendedListFragment$Adapter;->config:Lcom/narvii/config/ConfigService;

    .line 17
    .line 18
    const-string p1, "community"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    check-cast p1, Lcom/narvii/community/CommunityService;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/narvii/feed/BlogRecommendedListFragment$Adapter;->communityService:Lcom/narvii/community/CommunityService;

    .line 27
    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    const-string v0, "/feed/blog"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    const-string v0, "type"

    .line 13
    .line 14
    const-string v1, "community"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 18
    .line 19
    const-string v0, "categoryKey"

    .line 20
    .line 21
    const-string v1, "recommendation"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/feed/BlogRecommendedListFragment$Adapter;->communityService:Lcom/narvii/community/CommunityService;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/narvii/feed/BlogRecommendedListFragment$Adapter;->config:Lcom/narvii/config/ConfigService;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 32
    move-result v1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    const-string v1, "language"

    .line 41
    .line 42
    iget-object v0, v0, Lcom/narvii/model/Community;->primaryLanguage:Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 49
    move-result-object p1

    .line 50
    return-object p1
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/api/BlogListResponse;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/model/api/BlogListResponse;

    return-object v0
.end method
