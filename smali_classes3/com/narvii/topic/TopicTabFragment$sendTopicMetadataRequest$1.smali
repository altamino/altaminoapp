.class public final Lcom/narvii/topic/TopicTabFragment$sendTopicMetadataRequest$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "TopicTabFragment.kt"


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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTopicTabFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TopicTabFragment.kt\ncom/narvii/topic/TopicTabFragment$sendTopicMetadataRequest$1\n*L\n1#1,424:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/topic/TopicTabFragment;


# direct methods
.method constructor <init>(Lcom/narvii/topic/TopicTabFragment;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .line 237
    iput-object p1, p0, Lcom/narvii/topic/TopicTabFragment$sendTopicMetadataRequest$1;->this$0:Lcom/narvii/topic/TopicTabFragment;

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0
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

    .line 278
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 279
    iget-object p1, p0, Lcom/narvii/topic/TopicTabFragment$sendTopicMetadataRequest$1;->this$0:Lcom/narvii/topic/TopicTabFragment;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/narvii/topic/TopicTabFragment;->setStatus(I)V

    .line 280
    iget-object p1, p0, Lcom/narvii/topic/TopicTabFragment$sendTopicMetadataRequest$1;->this$0:Lcom/narvii/topic/TopicTabFragment;

    invoke-virtual {p1, p4}, Lcom/narvii/topic/TopicTabFragment;->setErrorMessage(Ljava/lang/String;)V

    .line 281
    iget-object p1, p0, Lcom/narvii/topic/TopicTabFragment$sendTopicMetadataRequest$1;->this$0:Lcom/narvii/topic/TopicTabFragment;

    invoke-virtual {p1}, Lcom/narvii/topic/TopicTabFragment;->updateViews()V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 237
    check-cast p2, Lcom/narvii/model/story/StoryTopicMetaResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/topic/TopicTabFragment$sendTopicMetadataRequest$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/story/StoryTopicMetaResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/story/StoryTopicMetaResponse;)V
    .locals 3

    .line 239
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 240
    iget-object p1, p0, Lcom/narvii/topic/TopicTabFragment$sendTopicMetadataRequest$1;->this$0:Lcom/narvii/topic/TopicTabFragment;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object v1, p2, Lcom/narvii/model/story/StoryTopicMetaResponse;->topic:Lcom/narvii/model/story/StoryTopic;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-virtual {p1, v1}, Lcom/narvii/topic/TopicTabFragment;->setTopic(Lcom/narvii/model/story/StoryTopic;)V

    if-eqz p2, :cond_1

    .line 241
    iget-object p1, p2, Lcom/narvii/model/story/StoryTopicMetaResponse;->topic:Lcom/narvii/model/story/StoryTopic;

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_1
    if-eqz p1, :cond_2

    .line 242
    iget-object p1, p0, Lcom/narvii/topic/TopicTabFragment$sendTopicMetadataRequest$1;->this$0:Lcom/narvii/topic/TopicTabFragment;

    iget-object p2, p2, Lcom/narvii/model/story/StoryTopicMetaResponse;->topic:Lcom/narvii/model/story/StoryTopic;

    iget p2, p2, Lcom/narvii/model/story/StoryTopic;->topicId:I

    invoke-virtual {p1, p2}, Lcom/narvii/topic/TopicTabFragment;->setTopicId(I)V

    .line 244
    :cond_2
    iget-object p1, p0, Lcom/narvii/topic/TopicTabFragment$sendTopicMetadataRequest$1;->this$0:Lcom/narvii/topic/TopicTabFragment;

    invoke-virtual {p1}, Lcom/narvii/topic/TopicTabFragment;->getTabList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 245
    iget-object p1, p0, Lcom/narvii/topic/TopicTabFragment$sendTopicMetadataRequest$1;->this$0:Lcom/narvii/topic/TopicTabFragment;

    invoke-virtual {p1}, Lcom/narvii/topic/TopicTabFragment;->getTopic()Lcom/narvii/model/story/StoryTopic;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcom/narvii/model/story/StoryTopic;->tabList:Ljava/util/List;

    if-eqz p1, :cond_5

    .line 246
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/story/StoryTopicTab;

    if-eqz p2, :cond_4

    .line 247
    iget-object v1, p2, Lcom/narvii/model/story/StoryTopicTab;->tabKey:Ljava/lang/String;

    goto :goto_3

    :cond_4
    move-object v1, v0

    :goto_3
    invoke-static {v1}, Lcom/narvii/topic/model/TopicTabHelper;->containsTab(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 248
    iget-object v1, p0, Lcom/narvii/topic/TopicTabFragment$sendTopicMetadataRequest$1;->this$0:Lcom/narvii/topic/TopicTabFragment;

    invoke-virtual {v1}, Lcom/narvii/topic/TopicTabFragment;->getTabList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 253
    :cond_5
    iget-object p1, p0, Lcom/narvii/topic/TopicTabFragment$sendTopicMetadataRequest$1;->this$0:Lcom/narvii/topic/TopicTabFragment;

    invoke-virtual {p1}, Lcom/narvii/topic/TopicTabFragment;->getTopicBookmarkView()Lcom/narvii/topic/widgets/TopicSubscribeView;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 255
    :cond_6
    iget-object p1, p0, Lcom/narvii/topic/TopicTabFragment$sendTopicMetadataRequest$1;->this$0:Lcom/narvii/topic/TopicTabFragment;

    invoke-static {p1}, Lcom/narvii/topic/TopicTabFragment;->access$updateHeaderViews(Lcom/narvii/topic/TopicTabFragment;)V

    .line 257
    iget-object p1, p0, Lcom/narvii/topic/TopicTabFragment$sendTopicMetadataRequest$1;->this$0:Lcom/narvii/topic/TopicTabFragment;

    invoke-virtual {p1}, Lcom/narvii/topic/TopicTabFragment;->getTabList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 258
    iget-object p1, p0, Lcom/narvii/topic/TopicTabFragment$sendTopicMetadataRequest$1;->this$0:Lcom/narvii/topic/TopicTabFragment;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lcom/narvii/topic/TopicTabFragment;->setStatus(I)V

    goto :goto_4

    .line 260
    :cond_7
    iget-object p1, p0, Lcom/narvii/topic/TopicTabFragment$sendTopicMetadataRequest$1;->this$0:Lcom/narvii/topic/TopicTabFragment;

    invoke-virtual {p1, p2}, Lcom/narvii/topic/TopicTabFragment;->setStatus(I)V

    .line 263
    :goto_4
    iget-object p1, p0, Lcom/narvii/topic/TopicTabFragment$sendTopicMetadataRequest$1;->this$0:Lcom/narvii/topic/TopicTabFragment;

    invoke-virtual {p1}, Lcom/narvii/topic/TopicTabFragment;->getSubTopicAdapter()Lcom/narvii/topic/adapter/SubTopicAdapter;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object v1, p0, Lcom/narvii/topic/TopicTabFragment$sendTopicMetadataRequest$1;->this$0:Lcom/narvii/topic/TopicTabFragment;

    invoke-virtual {v1}, Lcom/narvii/topic/TopicTabFragment;->getTopic()Lcom/narvii/model/story/StoryTopic;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/narvii/topic/adapter/SubTopicAdapter;->setStoryTopic(Lcom/narvii/model/story/StoryTopic;)V

    .line 264
    :cond_8
    new-instance p1, Lcom/narvii/topic/TopicTabFragment$sendTopicMetadataRequest$1$onFinish$2;

    invoke-direct {p1, p0}, Lcom/narvii/topic/TopicTabFragment$sendTopicMetadataRequest$1$onFinish$2;-><init>(Lcom/narvii/topic/TopicTabFragment$sendTopicMetadataRequest$1;)V

    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 267
    iget-object p1, p0, Lcom/narvii/topic/TopicTabFragment$sendTopicMetadataRequest$1;->this$0:Lcom/narvii/topic/TopicTabFragment;

    invoke-virtual {p1}, Lcom/narvii/topic/TopicTabFragment;->updateViews()V

    .line 268
    iget-object p1, p0, Lcom/narvii/topic/TopicTabFragment$sendTopicMetadataRequest$1;->this$0:Lcom/narvii/topic/TopicTabFragment;

    invoke-virtual {p1}, Lcom/narvii/topic/TopicTabFragment;->getTabList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/story/StoryTopicTab;

    .line 269
    iget-object v2, p0, Lcom/narvii/topic/TopicTabFragment$sendTopicMetadataRequest$1;->this$0:Lcom/narvii/topic/TopicTabFragment;

    invoke-virtual {v2}, Lcom/narvii/topic/TopicTabFragment;->getTopic()Lcom/narvii/model/story/StoryTopic;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v2, v2, Lcom/narvii/model/story/StoryTopic;->landingTab:Ljava/lang/String;

    goto :goto_6

    :cond_9
    move-object v2, v0

    :goto_6
    iget-object v1, v1, Lcom/narvii/model/story/StoryTopicTab;->tabKey:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 270
    iget-object p1, p0, Lcom/narvii/topic/TopicTabFragment$sendTopicMetadataRequest$1;->this$0:Lcom/narvii/topic/TopicTabFragment;

    invoke-virtual {p1, p2}, Lcom/narvii/nested/CoordinateTabFragment;->resetAdapter(I)V

    return-void

    :cond_a
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    .line 274
    :cond_b
    iget-object p1, p0, Lcom/narvii/topic/TopicTabFragment$sendTopicMetadataRequest$1;->this$0:Lcom/narvii/topic/TopicTabFragment;

    invoke-virtual {p1}, Lcom/narvii/nested/CoordinateTabFragment;->resetAdapter()V

    return-void
.end method
