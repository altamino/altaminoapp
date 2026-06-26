.class public final Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$$inlined$apply$lambda$2;
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

    iput-object p1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$$inlined$apply$lambda$2;->this$0:Lcom/narvii/topic/widgets/TopicSubscribeView;

    iput-object p2, p0, Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$$inlined$apply$lambda$2;->$topic$inlined:Lcom/narvii/model/story/StoryTopic;

    .line 155
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 157
    iget-object p1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$$inlined$apply$lambda$2;->this$0:Lcom/narvii/topic/widgets/TopicSubscribeView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/topic/widgets/TopicSubscribeView;->setFinishBookmark(Z)V

    .line 158
    iget-object p1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$$inlined$apply$lambda$2;->this$0:Lcom/narvii/topic/widgets/TopicSubscribeView;

    iget-object v1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$$inlined$apply$lambda$2;->$topic$inlined:Lcom/narvii/model/story/StoryTopic;

    invoke-static {p1, v1}, Lcom/narvii/topic/widgets/TopicSubscribeView;->access$updateViews(Lcom/narvii/topic/widgets/TopicSubscribeView;Lcom/narvii/model/story/StoryTopic;)V

    .line 159
    iget-object p1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$$inlined$apply$lambda$2;->$topic$inlined:Lcom/narvii/model/story/StoryTopic;

    invoke-virtual {p1}, Lcom/narvii/model/story/StoryTopic;->isNotified()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 160
    iget-object p1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$$inlined$apply$lambda$2;->this$0:Lcom/narvii/topic/widgets/TopicSubscribeView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/narvii/topic/widgets/TopicSubscribeView;->setNotifying(Z)V

    .line 161
    iget-object p1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$$inlined$apply$lambda$2;->$topic$inlined:Lcom/narvii/model/story/StoryTopic;

    iput v0, p1, Lcom/narvii/model/story/StoryTopic;->subscriptionStatus:I

    .line 162
    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$$inlined$apply$lambda$2;->this$0:Lcom/narvii/topic/widgets/TopicSubscribeView;

    invoke-static {v0, p1}, Lcom/narvii/topic/widgets/TopicSubscribeView;->access$updateViews(Lcom/narvii/topic/widgets/TopicSubscribeView;Lcom/narvii/model/story/StoryTopic;)V

    .line 163
    new-instance p1, Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$$inlined$apply$lambda$2$1;

    invoke-direct {p1, p0}, Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$$inlined$apply$lambda$2$1;-><init>(Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$$inlined$apply$lambda$2;)V

    const-wide/16 v0, 0x1f4

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 170
    :cond_0
    iget-object p1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$$inlined$apply$lambda$2;->this$0:Lcom/narvii/topic/widgets/TopicSubscribeView;

    invoke-static {p1}, Lcom/narvii/topic/widgets/TopicSubscribeView;->access$showTip(Lcom/narvii/topic/widgets/TopicSubscribeView;)V

    :goto_0
    return-void
.end method
