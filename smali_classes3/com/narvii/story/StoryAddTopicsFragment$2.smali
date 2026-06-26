.class Lcom/narvii/story/StoryAddTopicsFragment$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "StoryAddTopicsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/StoryAddTopicsFragment;->matchTopic(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/model/api/TopicSuggestResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/story/StoryAddTopicsFragment;

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/story/StoryAddTopicsFragment;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment$2;->this$0:Lcom/narvii/story/StoryAddTopicsFragment;

    iput-object p3, p0, Lcom/narvii/story/StoryAddTopicsFragment$2;->val$query:Ljava/lang/String;

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

    .line 252
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 254
    iget-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment$2;->this$0:Lcom/narvii/story/StoryAddTopicsFragment;

    invoke-static {p1}, Lcom/narvii/story/StoryAddTopicsFragment;->access$400(Lcom/narvii/story/StoryAddTopicsFragment;)Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 255
    iget-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment$2;->this$0:Lcom/narvii/story/StoryAddTopicsFragment;

    invoke-static {p1}, Lcom/narvii/story/StoryAddTopicsFragment;->access$500(Lcom/narvii/story/StoryAddTopicsFragment;)Lcom/narvii/util/http/ApiService;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/story/StoryAddTopicsFragment$2;->this$0:Lcom/narvii/story/StoryAddTopicsFragment;

    invoke-static {p2}, Lcom/narvii/story/StoryAddTopicsFragment;->access$400(Lcom/narvii/story/StoryAddTopicsFragment;)Lcom/narvii/util/http/ApiRequest;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 258
    :cond_0
    iget-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment$2;->this$0:Lcom/narvii/story/StoryAddTopicsFragment;

    invoke-static {p1}, Lcom/narvii/story/StoryAddTopicsFragment;->access$100(Lcom/narvii/story/StoryAddTopicsFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 259
    iget-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment$2;->this$0:Lcom/narvii/story/StoryAddTopicsFragment;

    invoke-static {p1}, Lcom/narvii/story/StoryAddTopicsFragment;->access$300(Lcom/narvii/story/StoryAddTopicsFragment;)Lcom/narvii/list/MergeAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 229
    check-cast p2, Lcom/narvii/model/api/TopicSuggestResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/story/StoryAddTopicsFragment$2;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/TopicSuggestResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/TopicSuggestResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 233
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 235
    iget-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment$2;->this$0:Lcom/narvii/story/StoryAddTopicsFragment;

    invoke-static {p1}, Lcom/narvii/story/StoryAddTopicsFragment;->access$000(Lcom/narvii/story/StoryAddTopicsFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 238
    :cond_0
    iget-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment$2;->this$0:Lcom/narvii/story/StoryAddTopicsFragment;

    invoke-static {p1}, Lcom/narvii/story/StoryAddTopicsFragment;->access$100(Lcom/narvii/story/StoryAddTopicsFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 240
    iget-object p1, p2, Lcom/narvii/model/api/TopicSuggestResponse;->topicList:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 241
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/story/StoryTopic;

    .line 242
    iget-object v0, p0, Lcom/narvii/story/StoryAddTopicsFragment$2;->this$0:Lcom/narvii/story/StoryAddTopicsFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryAddTopicsFragment;->access$100(Lcom/narvii/story/StoryAddTopicsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-static {p2}, Lcom/narvii/model/TopicTag;->create(Lcom/narvii/model/story/StoryTopic;)Lcom/narvii/model/TopicTag;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 246
    :cond_1
    iget-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment$2;->this$0:Lcom/narvii/story/StoryAddTopicsFragment;

    invoke-static {p1}, Lcom/narvii/story/StoryAddTopicsFragment;->access$200(Lcom/narvii/story/StoryAddTopicsFragment;)Lcom/narvii/story/StoryAddTopicsFragment$TopicSuggestAdapter;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/story/StoryAddTopicsFragment$2;->val$query:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/narvii/story/StoryAddTopicsFragment$TopicSuggestAdapter;->setHighlightText(Ljava/lang/String;)V

    .line 247
    iget-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment$2;->this$0:Lcom/narvii/story/StoryAddTopicsFragment;

    invoke-static {p1}, Lcom/narvii/story/StoryAddTopicsFragment;->access$300(Lcom/narvii/story/StoryAddTopicsFragment;)Lcom/narvii/list/MergeAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
