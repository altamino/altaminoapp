.class public final Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$1$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/topic/widgets/TopicSubscribeView;->updateViews(Lcom/narvii/model/story/StoryTopic;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $topic:Lcom/narvii/model/story/StoryTopic;

.field final synthetic this$0:Lcom/narvii/topic/widgets/TopicSubscribeView;


# direct methods
.method constructor <init>(Lcom/narvii/topic/widgets/TopicSubscribeView;Lcom/narvii/model/story/StoryTopic;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$1$2;->this$0:Lcom/narvii/topic/widgets/TopicSubscribeView;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$1$2;->$topic:Lcom/narvii/model/story/StoryTopic;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 8
    return-void
.end method

.method public static synthetic a(Lcom/narvii/topic/widgets/TopicSubscribeView;Lcom/narvii/model/story/StoryTopic;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$1$2;->onAnimationEnd$lambda$0(Lcom/narvii/topic/widgets/TopicSubscribeView;Lcom/narvii/model/story/StoryTopic;)V

    return-void
.end method

.method private static final onAnimationEnd$lambda$0(Lcom/narvii/topic/widgets/TopicSubscribeView;Lcom/narvii/model/story/StoryTopic;)V
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
    const/4 v0, 0x0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/narvii/topic/widgets/TopicSubscribeView;->setNotifying(Z)V

    .line 11
    const/4 v0, 0x1

    .line 12
    .line 13
    iput v0, p1, Lcom/narvii/model/story/StoryTopic;->subscriptionStatus:I

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/topic/widgets/TopicSubscribeView;->vibrate()V

    .line 17
    .line 18
    .line 19
    invoke-static {p0, p1}, Lcom/narvii/topic/widgets/TopicSubscribeView;->access$updateViews(Lcom/narvii/topic/widgets/TopicSubscribeView;Lcom/narvii/model/story/StoryTopic;)V

    .line 20
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "animation"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$1$2;->this$0:Lcom/narvii/topic/widgets/TopicSubscribeView;

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/narvii/topic/widgets/TopicSubscribeView;->setFinishBookmark(Z)V

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$1$2;->this$0:Lcom/narvii/topic/widgets/TopicSubscribeView;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$1$2;->$topic:Lcom/narvii/model/story/StoryTopic;

    .line 16
    .line 17
    .line 18
    invoke-static {p1, v1}, Lcom/narvii/topic/widgets/TopicSubscribeView;->access$updateViews(Lcom/narvii/topic/widgets/TopicSubscribeView;Lcom/narvii/model/story/StoryTopic;)V

    .line 19
    .line 20
    iget-object p1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$1$2;->$topic:Lcom/narvii/model/story/StoryTopic;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/narvii/model/story/StoryTopic;->isNotified()Z

    .line 24
    move-result p1

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    iget-object p1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$1$2;->this$0:Lcom/narvii/topic/widgets/TopicSubscribeView;

    .line 29
    const/4 v1, 0x1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v1}, Lcom/narvii/topic/widgets/TopicSubscribeView;->setNotifying(Z)V

    .line 33
    .line 34
    iget-object p1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$1$2;->$topic:Lcom/narvii/model/story/StoryTopic;

    .line 35
    .line 36
    iput v0, p1, Lcom/narvii/model/story/StoryTopic;->subscriptionStatus:I

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$1$2;->this$0:Lcom/narvii/topic/widgets/TopicSubscribeView;

    .line 39
    .line 40
    .line 41
    invoke-static {v0, p1}, Lcom/narvii/topic/widgets/TopicSubscribeView;->access$updateViews(Lcom/narvii/topic/widgets/TopicSubscribeView;Lcom/narvii/model/story/StoryTopic;)V

    .line 42
    .line 43
    iget-object p1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$1$2;->this$0:Lcom/narvii/topic/widgets/TopicSubscribeView;

    .line 44
    .line 45
    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$1$2;->$topic:Lcom/narvii/model/story/StoryTopic;

    .line 46
    .line 47
    new-instance v1, Lcom/narvii/topic/widgets/h;

    .line 48
    .line 49
    .line 50
    invoke-direct {v1, p1, v0}, Lcom/narvii/topic/widgets/h;-><init>(Lcom/narvii/topic/widgets/TopicSubscribeView;Lcom/narvii/model/story/StoryTopic;)V

    .line 51
    .line 52
    const-wide/16 v2, 0x1f4

    .line 53
    .line 54
    .line 55
    invoke-static {v1, v2, v3}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 56
    goto :goto_0

    .line 57
    .line 58
    :cond_0
    iget-object p1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$1$2;->this$0:Lcom/narvii/topic/widgets/TopicSubscribeView;

    .line 59
    .line 60
    .line 61
    invoke-static {p1}, Lcom/narvii/topic/widgets/TopicSubscribeView;->access$showTip(Lcom/narvii/topic/widgets/TopicSubscribeView;)V

    .line 62
    :goto_0
    return-void
.end method
