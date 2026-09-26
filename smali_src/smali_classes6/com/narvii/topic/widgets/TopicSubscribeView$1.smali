.class public final Lcom/narvii/topic/widgets/TopicSubscribeView$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView$1;->this$0:Lcom/narvii/topic/widgets/TopicSubscribeView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onBookmarkResult(Lcom/narvii/model/story/StoryTopic;Lcom/narvii/util/RequestResult;)V
    .locals 4
    .param p1    # Lcom/narvii/model/story/StoryTopic;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/util/RequestResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "topic"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    const-string v0, "result"

    .line 9
    .line 10
    .line 11
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    iget-object p2, p0, Lcom/narvii/topic/widgets/TopicSubscribeView$1;->this$0:Lcom/narvii/topic/widgets/TopicSubscribeView;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/narvii/topic/widgets/TopicSubscribeView;->isBookmark()Z

    .line 17
    move-result v0

    .line 18
    .line 19
    iget-boolean v1, p1, Lcom/narvii/model/story/StoryTopic;->isBookmarked:Z

    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v3, 0x1

    .line 22
    .line 23
    if-eq v0, v1, :cond_0

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    move v0, v3

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v0, v2

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-virtual {p2, v0}, Lcom/narvii/topic/widgets/TopicSubscribeView;->setFinishBookmark(Z)V

    .line 32
    .line 33
    iget-object p2, p0, Lcom/narvii/topic/widgets/TopicSubscribeView$1;->this$0:Lcom/narvii/topic/widgets/TopicSubscribeView;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Lcom/narvii/topic/widgets/TopicSubscribeView;->isBookmark()Z

    .line 37
    move-result v0

    .line 38
    .line 39
    iget-boolean v1, p1, Lcom/narvii/model/story/StoryTopic;->isBookmarked:Z

    .line 40
    .line 41
    if-eq v0, v1, :cond_1

    .line 42
    .line 43
    if-nez v1, :cond_1

    .line 44
    move v2, v3

    .line 45
    .line 46
    .line 47
    :cond_1
    invoke-virtual {p2, v2}, Lcom/narvii/topic/widgets/TopicSubscribeView;->setCancelBookmark(Z)V

    .line 48
    .line 49
    iget-object p2, p0, Lcom/narvii/topic/widgets/TopicSubscribeView$1;->this$0:Lcom/narvii/topic/widgets/TopicSubscribeView;

    .line 50
    .line 51
    .line 52
    invoke-static {p2, p1}, Lcom/narvii/topic/widgets/TopicSubscribeView;->access$updateViews(Lcom/narvii/topic/widgets/TopicSubscribeView;Lcom/narvii/model/story/StoryTopic;)V

    .line 53
    return-void
.end method
