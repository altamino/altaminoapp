.class public final Lcom/narvii/master/home/story/FavoriteStoryLisFragment$MyDataSource;
.super Lcom/narvii/story/base/StoryDataSource;
.source "FavoriteStoryLisFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/home/story/FavoriteStoryLisFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MyDataSource"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/story/FavoriteStoryLisFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/master/home/story/FavoriteStoryLisFragment;Lcom/narvii/app/NVContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/narvii/master/home/story/FavoriteStoryLisFragment$MyDataSource;->this$0:Lcom/narvii/master/home/story/FavoriteStoryLisFragment;

    const/4 p1, 0x0

    const/4 v0, 0x2

    invoke-direct {p0, p2, p1, v0, p1}, Lcom/narvii/story/base/StoryDataSource;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/paging/source/PagingConfiguration;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method protected createRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/narvii/master/home/story/FavoriteStoryLisFragment$MyDataSource;->this$0:Lcom/narvii/master/home/story/FavoriteStoryLisFragment;

    invoke-virtual {v0}, Lcom/narvii/story/SubTypeStoryBaseListFragment;->getAccountService()Lcom/narvii/account/AccountService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 56
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "/blog"

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string v1, "type"

    const-string v2, "user-liked"

    .line 58
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const/4 v1, 0x2

    .line 59
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "v"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 60
    iget-object v1, p0, Lcom/narvii/master/home/story/FavoriteStoryLisFragment$MyDataSource;->this$0:Lcom/narvii/master/home/story/FavoriteStoryLisFragment;

    invoke-virtual {v1}, Lcom/narvii/story/SubTypeStoryBaseListFragment;->getAccountService()Lcom/narvii/account/AccountService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "q"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const/16 v1, 0x9

    .line 61
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "blogType"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 62
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public filterResponseList(Ljava/util/List;)Ljava/util/List;
    .locals 2
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

    .line 66
    new-instance v0, Lcom/narvii/util/FilterHelper;

    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->getContext()Lcom/narvii/app/NVContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {v0}, Lcom/narvii/util/FilterHelper;->keepForLeaderAndCurator()Lcom/narvii/util/FilterHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
