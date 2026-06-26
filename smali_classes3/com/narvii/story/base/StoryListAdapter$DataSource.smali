.class public final Lcom/narvii/story/base/StoryListAdapter$DataSource;
.super Lcom/narvii/story/base/StoryDataSource;
.source "StoryListAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/story/base/StoryListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DataSource"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/story/base/StoryListAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/story/base/StoryListAdapter;Lcom/narvii/app/NVContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    .line 252
    iput-object p1, p0, Lcom/narvii/story/base/StoryListAdapter$DataSource;->this$0:Lcom/narvii/story/base/StoryListAdapter;

    const/4 p1, 0x0

    const/4 v0, 0x2

    invoke-direct {p0, p2, p1, v0, p1}, Lcom/narvii/story/base/StoryDataSource;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/paging/source/PagingConfiguration;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method protected createRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/narvii/story/base/StoryListAdapter$DataSource;->this$0:Lcom/narvii/story/base/StoryListAdapter;

    invoke-virtual {v0}, Lcom/narvii/story/base/StoryListAdapter;->createApiRequest()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public onDataSourceResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/BlogListResponse;)V
    .locals 1

    const-string v0, "req"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resp"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    invoke-super {p0, p1, p2}, Lcom/narvii/story/base/StoryDataSource;->onDataSourceResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/BlogListResponse;)V

    .line 266
    iget-object v0, p0, Lcom/narvii/story/base/StoryListAdapter$DataSource;->this$0:Lcom/narvii/story/base/StoryListAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/story/base/StoryListAdapter;->onDataSourceResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/BlogListResponse;)V

    .line 267
    iget-object p1, p0, Lcom/narvii/story/base/StoryListAdapter$DataSource;->this$0:Lcom/narvii/story/base/StoryListAdapter;

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

    .line 261
    const-class v0, Lcom/narvii/model/api/BlogListResponse;

    return-object v0
.end method

.method public setFirstPageRequestFinished()V
    .locals 1

    .line 271
    invoke-super {p0}, Lcom/narvii/paging/source/PageDataSource;->setFirstPageRequestFinished()V

    .line 272
    iget-object v0, p0, Lcom/narvii/story/base/StoryListAdapter$DataSource;->this$0:Lcom/narvii/story/base/StoryListAdapter;

    invoke-virtual {v0}, Lcom/narvii/story/base/StoryListAdapter;->setFirstPageRequestFinished()V

    return-void
.end method
