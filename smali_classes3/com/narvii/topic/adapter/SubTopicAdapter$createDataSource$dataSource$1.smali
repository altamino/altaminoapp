.class public final Lcom/narvii/topic/adapter/SubTopicAdapter$createDataSource$dataSource$1;
.super Lcom/narvii/paging/source/SinglePageDataSource;
.source "SubTopicAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/topic/adapter/SubTopicAdapter;->createDataSource(Lcom/narvii/app/NVContext;)Lcom/narvii/paging/source/DataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/paging/source/SinglePageDataSource<",
        "Lcom/narvii/model/story/StoryTopic;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $context:Lcom/narvii/app/NVContext;

.field final synthetic this$0:Lcom/narvii/topic/adapter/SubTopicAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/topic/adapter/SubTopicAdapter;Lcom/narvii/app/NVContext;Lcom/narvii/app/NVContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/narvii/topic/adapter/SubTopicAdapter$createDataSource$dataSource$1;->this$0:Lcom/narvii/topic/adapter/SubTopicAdapter;

    iput-object p2, p0, Lcom/narvii/topic/adapter/SubTopicAdapter$createDataSource$dataSource$1;->$context:Lcom/narvii/app/NVContext;

    invoke-direct {p0, p3}, Lcom/narvii/paging/source/SinglePageDataSource;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public pageData()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/model/story/StoryTopic;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/narvii/topic/adapter/SubTopicAdapter$createDataSource$dataSource$1;->this$0:Lcom/narvii/topic/adapter/SubTopicAdapter;

    invoke-static {v0}, Lcom/narvii/topic/adapter/SubTopicAdapter;->access$getStoryTopic$p(Lcom/narvii/topic/adapter/SubTopicAdapter;)Lcom/narvii/model/story/StoryTopic;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v1, v0, Lcom/narvii/model/story/StoryTopic;->subTopicList:Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, v0, Lcom/narvii/model/story/StoryTopic;->subTopicList:Ljava/util/List;

    const-string v1, "s.subTopicList"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object v0
.end method
