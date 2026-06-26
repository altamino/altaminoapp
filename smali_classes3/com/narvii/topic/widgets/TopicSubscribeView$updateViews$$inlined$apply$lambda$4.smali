.class public final Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$$inlined$apply$lambda$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TopicSubscribeView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/topic/widgets/TopicSubscribeView;->updateViews(Lcom/narvii/model/story/StoryTopic;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $topic$inlined:Lcom/narvii/model/story/StoryTopic;

.field final synthetic this$0:Lcom/narvii/topic/widgets/TopicSubscribeView;


# direct methods
.method constructor <init>(Lcom/narvii/topic/widgets/TopicSubscribeView;Lcom/narvii/model/story/StoryTopic;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$$inlined$apply$lambda$4;->this$0:Lcom/narvii/topic/widgets/TopicSubscribeView;

    iput-object p2, p0, Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$$inlined$apply$lambda$4;->$topic$inlined:Lcom/narvii/model/story/StoryTopic;

    .line 186
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 188
    iget-object p1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$$inlined$apply$lambda$4;->this$0:Lcom/narvii/topic/widgets/TopicSubscribeView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/topic/widgets/TopicSubscribeView;->setCancelBookmark(Z)V

    .line 189
    iget-object p1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$$inlined$apply$lambda$4;->this$0:Lcom/narvii/topic/widgets/TopicSubscribeView;

    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$$inlined$apply$lambda$4;->$topic$inlined:Lcom/narvii/model/story/StoryTopic;

    invoke-static {p1, v0}, Lcom/narvii/topic/widgets/TopicSubscribeView;->access$updateViews(Lcom/narvii/topic/widgets/TopicSubscribeView;Lcom/narvii/model/story/StoryTopic;)V

    return-void
.end method
