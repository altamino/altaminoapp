.class public final Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$2$2;
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
    iput-object p1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$2$2;->this$0:Lcom/narvii/topic/widgets/TopicSubscribeView;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$2$2;->$topic:Lcom/narvii/model/story/StoryTopic;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
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
    iget-object p1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$2$2;->this$0:Lcom/narvii/topic/widgets/TopicSubscribeView;

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/narvii/topic/widgets/TopicSubscribeView;->setCancelBookmark(Z)V

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$2$2;->this$0:Lcom/narvii/topic/widgets/TopicSubscribeView;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$2$2;->$topic:Lcom/narvii/model/story/StoryTopic;

    .line 16
    .line 17
    .line 18
    invoke-static {p1, v0}, Lcom/narvii/topic/widgets/TopicSubscribeView;->access$updateViews(Lcom/narvii/topic/widgets/TopicSubscribeView;Lcom/narvii/model/story/StoryTopic;)V

    .line 19
    return-void
.end method
