.class public final Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$DataSource;
.super Lcom/narvii/paging/source/PageDataSource;
.source "TopicModuleHorizontalAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
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
.field final synthetic this$0:Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;Lcom/narvii/app/NVContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    .line 133
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$DataSource;->this$0:Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;

    .line 134
    new-instance p1, Lcom/narvii/paging/source/PagingConfiguration;

    const/4 v0, 0x0

    const/16 v1, 0x19

    invoke-direct {p1, v0, v1}, Lcom/narvii/paging/source/PagingConfiguration;-><init>(II)V

    const/4 v0, 0x0

    .line 133
    invoke-direct {p0, p2, v0, p1}, Lcom/narvii/paging/source/PageDataSource;-><init>(Lcom/narvii/app/NVContext;Ljava/util/List;Lcom/narvii/paging/source/PagingConfiguration;)V

    return-void
.end method


# virtual methods
.method protected createRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$DataSource;->this$0:Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;

    invoke-virtual {v0}, Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;->isReadyToRequest()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$DataSource;->this$0:Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;

    invoke-virtual {v0}, Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;->getContentModule()Lcom/narvii/topic/model/discover/ContentModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/ContentModule;->getRequestFromModule()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 141
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    :cond_1
    return-object v1
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

    .line 144
    const-class v0, Lcom/narvii/model/story/StoryTopicListResponse;

    return-object v0
.end method

.method public setFirstPageRequestFinished()V
    .locals 2

    .line 147
    invoke-super {p0}, Lcom/narvii/paging/source/PageDataSource;->setFirstPageRequestFinished()V

    .line 148
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$DataSource;->this$0:Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;

    invoke-virtual {v0}, Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;->getChildHelper()Lcom/narvii/topic/model/discover/SerialRequestHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$DataSource;->this$0:Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;

    invoke-virtual {v1}, Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;->getContentModule()Lcom/narvii/topic/model/discover/ContentModule;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->setRequestFinished(Lcom/narvii/topic/model/discover/ContentModule;)V

    return-void
.end method
