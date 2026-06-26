.class final Lcom/narvii/topic/widgets/TopicBookmarkView$sendBookMarkRequest$1;
.super Ljava/lang/Object;
.source "TopicBookmarkView.kt"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/topic/widgets/TopicBookmarkView;->sendBookMarkRequest(Lcom/narvii/model/story/StoryTopic;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/util/RequestResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $topic:Lcom/narvii/model/story/StoryTopic;

.field final synthetic this$0:Lcom/narvii/topic/widgets/TopicBookmarkView;


# direct methods
.method constructor <init>(Lcom/narvii/topic/widgets/TopicBookmarkView;Lcom/narvii/model/story/StoryTopic;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/topic/widgets/TopicBookmarkView$sendBookMarkRequest$1;->this$0:Lcom/narvii/topic/widgets/TopicBookmarkView;

    iput-object p2, p0, Lcom/narvii/topic/widgets/TopicBookmarkView$sendBookMarkRequest$1;->$topic:Lcom/narvii/model/story/StoryTopic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Lcom/narvii/util/RequestResult;)V
    .locals 3

    .line 172
    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicBookmarkView$sendBookMarkRequest$1;->this$0:Lcom/narvii/topic/widgets/TopicBookmarkView;

    invoke-virtual {v0}, Lcom/narvii/topic/widgets/TopicBookmarkView;->getTopicBookmarkResultListener()Lcom/narvii/topic/widgets/TopicBookmarkView$TopicBookmarkResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/narvii/topic/widgets/TopicBookmarkView$sendBookMarkRequest$1;->$topic:Lcom/narvii/model/story/StoryTopic;

    const-string v2, "result"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1, p1}, Lcom/narvii/topic/widgets/TopicBookmarkView$TopicBookmarkResultListener;->onBookmarkResult(Lcom/narvii/model/story/StoryTopic;Lcom/narvii/util/RequestResult;)V

    .line 173
    :cond_0
    iget-object p1, p0, Lcom/narvii/topic/widgets/TopicBookmarkView$sendBookMarkRequest$1;->this$0:Lcom/narvii/topic/widgets/TopicBookmarkView;

    invoke-static {p1}, Lcom/narvii/topic/widgets/TopicBookmarkView;->access$endSending(Lcom/narvii/topic/widgets/TopicBookmarkView;)V

    .line 174
    iget-object p1, p0, Lcom/narvii/topic/widgets/TopicBookmarkView$sendBookMarkRequest$1;->this$0:Lcom/narvii/topic/widgets/TopicBookmarkView;

    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicBookmarkView$sendBookMarkRequest$1;->$topic:Lcom/narvii/model/story/StoryTopic;

    invoke-static {p1, v0}, Lcom/narvii/topic/widgets/TopicBookmarkView;->access$updateViews(Lcom/narvii/topic/widgets/TopicBookmarkView;Lcom/narvii/model/story/StoryTopic;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p1, Lcom/narvii/util/RequestResult;

    invoke-virtual {p0, p1}, Lcom/narvii/topic/widgets/TopicBookmarkView$sendBookMarkRequest$1;->call(Lcom/narvii/util/RequestResult;)V

    return-void
.end method
