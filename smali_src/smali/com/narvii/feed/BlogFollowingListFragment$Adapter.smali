.class Lcom/narvii/feed/BlogFollowingListFragment$Adapter;
.super Lcom/narvii/feed/FeedListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/feed/BlogFollowingListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Adapter"
.end annotation


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
    const-string p1, "Following Feed"

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter;->source:Ljava/lang/String;

    .line 11
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
    const-string v0, "/feed/blog-following"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 10
    move-result-object p1

    .line 11
    const/4 v0, 0x2

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    const-string/jumbo v1, "v"

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method

.method public onAttach()V
    .locals 1

    .line 1
    .line 2
    const-string v0, "account"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-super {p0}, Lcom/narvii/feed/BaseFeedListAdapter;->onAttach()V

    .line 20
    :cond_0
    return-void
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
