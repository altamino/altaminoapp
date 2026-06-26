.class final Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter$DataSource;
.super Lcom/narvii/paging/source/PageDataSource;
.source "GridTopicCardAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DataSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/paging/source/PageDataSource<",
        "Lcom/narvii/model/story/StoryTopic;",
        "Lcom/narvii/model/story/StoryTopicListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;Lcom/narvii/app/NVContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    .line 104
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter$DataSource;->this$0:Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;

    invoke-direct {p0, p2}, Lcom/narvii/paging/source/PageDataSource;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method protected createRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter$DataSource;->this$0:Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;

    invoke-static {v0}, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;->access$getChildHelper$p(Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;)Lcom/narvii/topic/model/discover/SerialRequestHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isReadyToRequest()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter$DataSource;->this$0:Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;

    invoke-virtual {v0}, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;->getModule()Lcom/narvii/topic/model/discover/ContentModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/ContentModule;->getRequestFromModule()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 110
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 104
    check-cast p2, Lcom/narvii/model/story/StoryTopicListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter$DataSource;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/story/StoryTopicListResponse;I)V

    return-void
.end method

.method public onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/story/StoryTopicListResponse;I)V
    .locals 1

    const-string v0, "req"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resp"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/paging/source/PageDataSource;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    .line 117
    iget-object p1, p0, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter$DataSource;->this$0:Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;

    iget p2, p2, Lcom/narvii/model/story/StoryTopicListResponse;->allItemCount:I

    invoke-static {p1, p2}, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;->access$setAllItemCount$p(Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;I)V

    return-void
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/story/StoryTopicListResponse;",
            ">;"
        }
    .end annotation

    .line 113
    const-class v0, Lcom/narvii/model/story/StoryTopicListResponse;

    return-object v0
.end method

.method public setFirstPageRequestFinished()V
    .locals 2

    .line 121
    invoke-super {p0}, Lcom/narvii/paging/source/PageDataSource;->setFirstPageRequestFinished()V

    .line 122
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter$DataSource;->this$0:Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;

    invoke-static {v0}, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;->access$getChildHelper$p(Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;)Lcom/narvii/topic/model/discover/SerialRequestHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter$DataSource;->this$0:Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;

    invoke-virtual {v1}, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;->getModule()Lcom/narvii/topic/model/discover/ContentModule;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->setRequestFinished(Lcom/narvii/topic/model/discover/ContentModule;)V

    return-void
.end method
