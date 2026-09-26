.class final Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter$DataSource;
.super Lcom/narvii/paging/source/PageDataSource;
.source "SourceFile"


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
    .param p1    # Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;
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
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter$DataSource;->this$0:Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/paging/source/PageDataSource;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method


# virtual methods
.method protected createRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter$DataSource;->this$0:Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;->access$getChildHelper$p(Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;)Lcom/narvii/topic/model/discover/SerialRequestHelper;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isReadyToRequest()Z

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    return-object v1

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter$DataSource;->this$0:Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;->getModule()Lcom/narvii/topic/model/discover/ContentModule;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/ContentModule;->getRequestFromModule()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 30
    move-result-object v1

    .line 31
    :cond_1
    return-object v1
.end method

.method public bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/model/story/StoryTopicListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter$DataSource;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/story/StoryTopicListResponse;I)V

    return-void
.end method

.method public onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/story/StoryTopicListResponse;I)V
    .locals 1
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/model/story/StoryTopicListResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "req"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resp"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/paging/source/PageDataSource;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    iget-object p1, p0, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter$DataSource;->this$0:Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;

    .line 3
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-class v0, Lcom/narvii/model/story/StoryTopicListResponse;

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
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter$DataSource;->this$0:Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;->access$getChildHelper$p(Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;)Lcom/narvii/topic/model/discover/SerialRequestHelper;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter$DataSource;->this$0:Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;->getModule()Lcom/narvii/topic/model/discover/ContentModule;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->setRequestFinished(Lcom/narvii/topic/model/discover/ContentModule;)V

    .line 19
    return-void
.end method
