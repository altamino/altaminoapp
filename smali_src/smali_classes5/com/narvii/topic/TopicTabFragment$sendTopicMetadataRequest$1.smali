.class public final Lcom/narvii/topic/TopicTabFragment$sendTopicMetadataRequest$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/topic/TopicTabFragment;->sendTopicMetadataRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/model/story/StoryTopicMetaResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/topic/TopicTabFragment;


# direct methods
.method constructor <init>(Lcom/narvii/topic/TopicTabFragment;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/topic/TopicTabFragment;",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/story/StoryTopicMetaResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/topic/TopicTabFragment$sendTopicMetadataRequest$1;->this$0:Lcom/narvii/topic/TopicTabFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/narvii/topic/TopicTabFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/topic/TopicTabFragment$sendTopicMetadataRequest$1;->onFinish$lambda$1(Lcom/narvii/topic/TopicTabFragment;)V

    return-void
.end method

.method private static final onFinish$lambda$1(Lcom/narvii/topic/TopicTabFragment;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/topic/TopicTabFragment;->logSubTopicImpression()V

    .line 10
    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/model/api/ApiResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "I",
            "Ljava/util/List<",
            "Lcom/narvii/util/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/narvii/model/api/ApiResponse;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/topic/TopicTabFragment$sendTopicMetadataRequest$1;->this$0:Lcom/narvii/topic/TopicTabFragment;

    .line 6
    const/4 p2, 0x2

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/narvii/topic/TopicTabFragment;->setStatus(I)V

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/topic/TopicTabFragment$sendTopicMetadataRequest$1;->this$0:Lcom/narvii/topic/TopicTabFragment;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p4}, Lcom/narvii/topic/TopicTabFragment;->setErrorMessage(Ljava/lang/String;)V

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/topic/TopicTabFragment$sendTopicMetadataRequest$1;->this$0:Lcom/narvii/topic/TopicTabFragment;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/topic/TopicTabFragment;->updateViews()V

    .line 20
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/model/story/StoryTopicMetaResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/topic/TopicTabFragment$sendTopicMetadataRequest$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/story/StoryTopicMetaResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/story/StoryTopicMetaResponse;)V
    .locals 4
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/model/story/StoryTopicMetaResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    iget-object p1, p0, Lcom/narvii/topic/TopicTabFragment$sendTopicMetadataRequest$1;->this$0:Lcom/narvii/topic/TopicTabFragment;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 3
    iget-object v1, p2, Lcom/narvii/model/story/StoryTopicMetaResponse;->topic:Lcom/narvii/model/story/StoryTopic;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-virtual {p1, v1}, Lcom/narvii/topic/TopicTabFragment;->setTopic(Lcom/narvii/model/story/StoryTopic;)V

    if-eqz p2, :cond_1

    .line 4
    iget-object p1, p2, Lcom/narvii/model/story/StoryTopicMetaResponse;->topic:Lcom/narvii/model/story/StoryTopic;

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_1
    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/narvii/topic/TopicTabFragment$sendTopicMetadataRequest$1;->this$0:Lcom/narvii/topic/TopicTabFragment;

    .line 5
    iget-object p2, p2, Lcom/narvii/model/story/StoryTopicMetaResponse;->topic:Lcom/narvii/model/story/StoryTopic;

    iget p2, p2, Lcom/narvii/model/story/StoryTopic;->topicId:I

    invoke-virtual {p1, p2}, Lcom/narvii/topic/TopicTabFragment;->setTopicId(I)V

    :cond_2
    iget-object p1, p0, Lcom/narvii/topic/TopicTabFragment$sendTopicMetadataRequest$1;->this$0:Lcom/narvii/topic/TopicTabFragment;

    .line 6
    invoke-virtual {p1}, Lcom/narvii/topic/TopicTabFragment;->getTabList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/narvii/topic/TopicTabFragment$sendTopicMetadataRequest$1;->this$0:Lcom/narvii/topic/TopicTabFragment;

    .line 7
    invoke-virtual {p1}, Lcom/narvii/topic/TopicTabFragment;->getTopic()Lcom/narvii/model/story/StoryTopic;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcom/narvii/model/story/StoryTopic;->tabList:Ljava/util/List;

    if-eqz p1, :cond_5

    iget-object p2, p0, Lcom/narvii/topic/TopicTabFragment$sendTopicMetadataRequest$1;->this$0:Lcom/narvii/topic/TopicTabFragment;

    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/story/StoryTopicTab;

    if-eqz v1, :cond_4

    .line 9
    iget-object v2, v1, Lcom/narvii/model/story/StoryTopicTab;->tabKey:Ljava/lang/String;

    goto :goto_3

    :cond_4
    move-object v2, v0

    :goto_3
    invoke-static {v2}, Lcom/narvii/topic/model/TopicTabHelper;->containsTab(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 10
    invoke-virtual {p2}, Lcom/narvii/topic/TopicTabFragment;->getTabList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/narvii/topic/TopicTabFragment$sendTopicMetadataRequest$1;->this$0:Lcom/narvii/topic/TopicTabFragment;

    .line 11
    invoke-virtual {p1}, Lcom/narvii/topic/TopicTabFragment;->getTopicBookmarkView()Lcom/narvii/topic/widgets/TopicSubscribeView;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    iget-object p1, p0, Lcom/narvii/topic/TopicTabFragment$sendTopicMetadataRequest$1;->this$0:Lcom/narvii/topic/TopicTabFragment;

    .line 12
    invoke-static {p1}, Lcom/narvii/topic/TopicTabFragment;->access$updateHeaderViews(Lcom/narvii/topic/TopicTabFragment;)V

    iget-object p1, p0, Lcom/narvii/topic/TopicTabFragment$sendTopicMetadataRequest$1;->this$0:Lcom/narvii/topic/TopicTabFragment;

    .line 13
    invoke-virtual {p1}, Lcom/narvii/topic/TopicTabFragment;->getTabList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/narvii/topic/TopicTabFragment$sendTopicMetadataRequest$1;->this$0:Lcom/narvii/topic/TopicTabFragment;

    const/4 v1, 0x3

    .line 14
    invoke-virtual {p1, v1}, Lcom/narvii/topic/TopicTabFragment;->setStatus(I)V

    goto :goto_5

    :cond_7
    iget-object p1, p0, Lcom/narvii/topic/TopicTabFragment$sendTopicMetadataRequest$1;->this$0:Lcom/narvii/topic/TopicTabFragment;

    .line 15
    invoke-virtual {p1, p2}, Lcom/narvii/topic/TopicTabFragment;->setStatus(I)V

    :goto_5
    iget-object p1, p0, Lcom/narvii/topic/TopicTabFragment$sendTopicMetadataRequest$1;->this$0:Lcom/narvii/topic/TopicTabFragment;

    .line 16
    new-instance v1, Lcom/narvii/topic/k;

    invoke-direct {v1, p1}, Lcom/narvii/topic/k;-><init>(Lcom/narvii/topic/TopicTabFragment;)V

    invoke-static {v1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/narvii/topic/TopicTabFragment$sendTopicMetadataRequest$1;->this$0:Lcom/narvii/topic/TopicTabFragment;

    .line 17
    invoke-virtual {p1}, Lcom/narvii/topic/TopicTabFragment;->updateViews()V

    iget-object p1, p0, Lcom/narvii/topic/TopicTabFragment$sendTopicMetadataRequest$1;->this$0:Lcom/narvii/topic/TopicTabFragment;

    .line 18
    invoke-virtual {p1}, Lcom/narvii/topic/TopicTabFragment;->getTabList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    add-int/lit8 v1, p2, 0x1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/story/StoryTopicTab;

    iget-object v3, p0, Lcom/narvii/topic/TopicTabFragment$sendTopicMetadataRequest$1;->this$0:Lcom/narvii/topic/TopicTabFragment;

    .line 19
    invoke-virtual {v3}, Lcom/narvii/topic/TopicTabFragment;->getTopic()Lcom/narvii/model/story/StoryTopic;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v3, v3, Lcom/narvii/model/story/StoryTopic;->landingTab:Ljava/lang/String;

    goto :goto_7

    :cond_8
    move-object v3, v0

    :goto_7
    iget-object v2, v2, Lcom/narvii/model/story/StoryTopicTab;->tabKey:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object p1, p0, Lcom/narvii/topic/TopicTabFragment$sendTopicMetadataRequest$1;->this$0:Lcom/narvii/topic/TopicTabFragment;

    .line 20
    invoke-virtual {p1, p2}, Lcom/narvii/nested/CoordinateTabFragment;->resetAdapter(I)V

    return-void

    :cond_9
    move p2, v1

    goto :goto_6

    :cond_a
    iget-object p1, p0, Lcom/narvii/topic/TopicTabFragment$sendTopicMetadataRequest$1;->this$0:Lcom/narvii/topic/TopicTabFragment;

    .line 21
    invoke-virtual {p1}, Lcom/narvii/nested/CoordinateTabFragment;->resetAdapter()V

    return-void
.end method
