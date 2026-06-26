.class public final Lcom/narvii/master/home/discover/FollowingFeedListFragment$DataSource;
.super Lcom/narvii/story/base/StoryDataSource;
.source "FollowingFeedListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/home/discover/FollowingFeedListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DataSource"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFollowingFeedListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FollowingFeedListFragment.kt\ncom/narvii/master/home/discover/FollowingFeedListFragment$DataSource\n*L\n1#1,173:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/discover/FollowingFeedListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/master/home/discover/FollowingFeedListFragment;Lcom/narvii/app/NVContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    .line 115
    iput-object p1, p0, Lcom/narvii/master/home/discover/FollowingFeedListFragment$DataSource;->this$0:Lcom/narvii/master/home/discover/FollowingFeedListFragment;

    const/4 p1, 0x0

    const/4 v0, 0x2

    invoke-direct {p0, p2, p1, v0, p1}, Lcom/narvii/story/base/StoryDataSource;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/paging/source/PagingConfiguration;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method protected createRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/narvii/master/home/discover/FollowingFeedListFragment$DataSource;->this$0:Lcom/narvii/master/home/discover/FollowingFeedListFragment;

    invoke-virtual {v0}, Lcom/narvii/master/home/discover/FollowingFeedListFragment;->getAccountService()Lcom/narvii/account/AccountService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 120
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "/feed/blog-following"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "v"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public filterResponseList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/model/Blog;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/narvii/model/Blog;",
            ">;"
        }
    .end annotation

    .line 125
    invoke-super {p0, p1}, Lcom/narvii/paging/source/PageDataSource;->filterResponseList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 128
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Blog;

    .line 129
    iget v2, v1, Lcom/narvii/model/Blog;->type:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_0

    .line 130
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method
