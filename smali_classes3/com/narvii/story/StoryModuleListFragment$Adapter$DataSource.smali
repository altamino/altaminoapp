.class public final Lcom/narvii/story/StoryModuleListFragment$Adapter$DataSource;
.super Lcom/narvii/story/base/StoryDataSource;
.source "StoryModuleListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/story/StoryModuleListFragment$Adapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DataSource"
.end annotation


# instance fields
.field private firstResponse:Z

.field final synthetic this$0:Lcom/narvii/story/StoryModuleListFragment$Adapter;


# direct methods
.method public constructor <init>(Lcom/narvii/story/StoryModuleListFragment$Adapter;Lcom/narvii/app/NVContext;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/model/Blog;",
            ">;)V"
        }
    .end annotation

    .line 163
    iput-object p1, p0, Lcom/narvii/story/StoryModuleListFragment$Adapter$DataSource;->this$0:Lcom/narvii/story/StoryModuleListFragment$Adapter;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/narvii/story/base/StoryDataSource;-><init>(Lcom/narvii/app/NVContext;Ljava/util/List;Lcom/narvii/paging/source/PagingConfiguration;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 p1, 0x1

    .line 165
    iput-boolean p1, p0, Lcom/narvii/story/StoryModuleListFragment$Adapter$DataSource;->firstResponse:Z

    return-void
.end method


# virtual methods
.method protected createRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/narvii/story/StoryModuleListFragment$Adapter$DataSource;->this$0:Lcom/narvii/story/StoryModuleListFragment$Adapter;

    invoke-virtual {v0}, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;->createApiRequest()Lcom/narvii/util/http/ApiRequest;

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
            "Lcom/narvii/model/Blog;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/narvii/model/Blog;",
            ">;"
        }
    .end annotation

    .line 188
    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->getInitPage()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/narvii/story/StoryModuleListFragment$Adapter$DataSource;->firstResponse:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 189
    iput-boolean v0, p0, Lcom/narvii/story/StoryModuleListFragment$Adapter$DataSource;->firstResponse:Z

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

    const-string v0, "null cannot be cast to non-null type kotlin.collections.List<com.narvii.model.Blog>"

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

    .line 165
    iget-boolean v0, p0, Lcom/narvii/story/StoryModuleListFragment$Adapter$DataSource;->firstResponse:Z

    return v0
.end method

.method public onDataSourceResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/BlogListResponse;)V
    .locals 1

    const-string v0, "req"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resp"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    invoke-super {p0, p1, p2}, Lcom/narvii/story/base/StoryDataSource;->onDataSourceResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/BlogListResponse;)V

    .line 178
    iget-object v0, p0, Lcom/narvii/story/StoryModuleListFragment$Adapter$DataSource;->this$0:Lcom/narvii/story/StoryModuleListFragment$Adapter;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/story/base/StoryListAdapter;->onDataSourceResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/BlogListResponse;)V

    .line 179
    iget-object p1, p0, Lcom/narvii/story/StoryModuleListFragment$Adapter$DataSource;->this$0:Lcom/narvii/story/StoryModuleListFragment$Adapter;

    iget p2, p2, Lcom/narvii/model/api/BlogListResponse;->allItemCount:I

    invoke-virtual {p1, p2}, Lcom/narvii/story/base/StoryListAdapter;->setAllItemCount(I)V

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

    .line 173
    const-class v0, Lcom/narvii/model/api/BlogListResponse;

    return-object v0
.end method

.method public setFirstPageRequestFinished()V
    .locals 1

    .line 183
    invoke-super {p0}, Lcom/narvii/paging/source/PageDataSource;->setFirstPageRequestFinished()V

    .line 184
    iget-object v0, p0, Lcom/narvii/story/StoryModuleListFragment$Adapter$DataSource;->this$0:Lcom/narvii/story/StoryModuleListFragment$Adapter;

    invoke-virtual {v0}, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;->setFirstPageRequestFinished()V

    return-void
.end method

.method public final setFirstResponse(Z)V
    .locals 0

    .line 165
    iput-boolean p1, p0, Lcom/narvii/story/StoryModuleListFragment$Adapter$DataSource;->firstResponse:Z

    return-void
.end method
