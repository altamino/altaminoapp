.class public final Lcom/narvii/topic/widgets/TopicSubscribeView$1;
.super Ljava/lang/Object;
.source "TopicSubscribeView.kt"

# interfaces
.implements Lcom/narvii/topic/widgets/TopicBookmarkView$TopicBookmarkResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/topic/widgets/TopicSubscribeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/topic/widgets/TopicSubscribeView;


# direct methods
.method constructor <init>(Lcom/narvii/topic/widgets/TopicSubscribeView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView$1;->this$0:Lcom/narvii/topic/widgets/TopicSubscribeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBookmarkResult(Lcom/narvii/model/story/StoryTopic;Lcom/narvii/util/RequestResult;)V
    .locals 4

    const-string v0, "topic"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object p2, p0, Lcom/narvii/topic/widgets/TopicSubscribeView$1;->this$0:Lcom/narvii/topic/widgets/TopicSubscribeView;

    invoke-virtual {p2}, Lcom/narvii/topic/widgets/TopicSubscribeView;->isBookmark()Z

    move-result v0

    iget-boolean v1, p1, Lcom/narvii/model/story/StoryTopic;->isBookmarked:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0}, Lcom/narvii/topic/widgets/TopicSubscribeView;->setFinishBookmark(Z)V

    .line 67
    iget-object p2, p0, Lcom/narvii/topic/widgets/TopicSubscribeView$1;->this$0:Lcom/narvii/topic/widgets/TopicSubscribeView;

    invoke-virtual {p2}, Lcom/narvii/topic/widgets/TopicSubscribeView;->isBookmark()Z

    move-result v0

    iget-boolean v1, p1, Lcom/narvii/model/story/StoryTopic;->isBookmarked:Z

    if-eq v0, v1, :cond_1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p2, v2}, Lcom/narvii/topic/widgets/TopicSubscribeView;->setCancelBookmark(Z)V

    .line 68
    iget-object p2, p0, Lcom/narvii/topic/widgets/TopicSubscribeView$1;->this$0:Lcom/narvii/topic/widgets/TopicSubscribeView;

    invoke-static {p2, p1}, Lcom/narvii/topic/widgets/TopicSubscribeView;->access$updateViews(Lcom/narvii/topic/widgets/TopicSubscribeView;Lcom/narvii/model/story/StoryTopic;)V

    return-void
.end method
