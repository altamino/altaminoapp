.class Lcom/narvii/story/TopicStoryListFragment$TopperAdapter$4;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "TopicStoryListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/TopicStoryListFragment$TopperAdapter;->sendRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic this$1:Lcom/narvii/story/TopicStoryListFragment$TopperAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/story/TopicStoryListFragment$TopperAdapter;Ljava/lang/Class;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/narvii/story/TopicStoryListFragment$TopperAdapter$4;->this$1:Lcom/narvii/story/TopicStoryListFragment$TopperAdapter;

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

    .line 262
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 250
    check-cast p2, Lcom/narvii/model/story/StoryTopicMetaResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/story/TopicStoryListFragment$TopperAdapter$4;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/story/StoryTopicMetaResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/story/StoryTopicMetaResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 253
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 254
    iget-object p1, p2, Lcom/narvii/model/story/StoryTopicMetaResponse;->topic:Lcom/narvii/model/story/StoryTopic;

    if-eqz p1, :cond_0

    .line 255
    iget-object p2, p0, Lcom/narvii/story/TopicStoryListFragment$TopperAdapter$4;->this$1:Lcom/narvii/story/TopicStoryListFragment$TopperAdapter;

    iget-object p2, p2, Lcom/narvii/story/TopicStoryListFragment$TopperAdapter;->this$0:Lcom/narvii/story/TopicStoryListFragment;

    invoke-static {p2, p1}, Lcom/narvii/story/TopicStoryListFragment;->access$002(Lcom/narvii/story/TopicStoryListFragment;Lcom/narvii/model/story/StoryTopic;)Lcom/narvii/model/story/StoryTopic;

    .line 256
    iget-object p1, p0, Lcom/narvii/story/TopicStoryListFragment$TopperAdapter$4;->this$1:Lcom/narvii/story/TopicStoryListFragment$TopperAdapter;

    iget-object p1, p1, Lcom/narvii/story/TopicStoryListFragment$TopperAdapter;->this$0:Lcom/narvii/story/TopicStoryListFragment;

    invoke-static {p1}, Lcom/narvii/story/TopicStoryListFragment;->access$100(Lcom/narvii/story/TopicStoryListFragment;)V

    :cond_0
    return-void
.end method
