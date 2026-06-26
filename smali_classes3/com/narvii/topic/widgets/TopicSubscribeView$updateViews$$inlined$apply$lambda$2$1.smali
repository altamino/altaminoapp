.class final Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$$inlined$apply$lambda$2$1;
.super Ljava/lang/Object;
.source "TopicSubscribeView.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$$inlined$apply$lambda$2;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$$inlined$apply$lambda$2;


# direct methods
.method constructor <init>(Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$$inlined$apply$lambda$2;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$$inlined$apply$lambda$2$1;->this$0:Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$$inlined$apply$lambda$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 164
    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$$inlined$apply$lambda$2$1;->this$0:Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$$inlined$apply$lambda$2;

    iget-object v0, v0, Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$$inlined$apply$lambda$2;->this$0:Lcom/narvii/topic/widgets/TopicSubscribeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/topic/widgets/TopicSubscribeView;->setNotifying(Z)V

    .line 165
    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$$inlined$apply$lambda$2$1;->this$0:Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$$inlined$apply$lambda$2;

    iget-object v1, v0, Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$$inlined$apply$lambda$2;->$topic$inlined:Lcom/narvii/model/story/StoryTopic;

    const/4 v2, 0x1

    iput v2, v1, Lcom/narvii/model/story/StoryTopic;->subscriptionStatus:I

    .line 166
    iget-object v0, v0, Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$$inlined$apply$lambda$2;->this$0:Lcom/narvii/topic/widgets/TopicSubscribeView;

    invoke-virtual {v0}, Lcom/narvii/topic/widgets/TopicSubscribeView;->vibrate()V

    .line 167
    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$$inlined$apply$lambda$2$1;->this$0:Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$$inlined$apply$lambda$2;

    iget-object v1, v0, Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$$inlined$apply$lambda$2;->this$0:Lcom/narvii/topic/widgets/TopicSubscribeView;

    iget-object v0, v0, Lcom/narvii/topic/widgets/TopicSubscribeView$updateViews$$inlined$apply$lambda$2;->$topic$inlined:Lcom/narvii/model/story/StoryTopic;

    invoke-static {v1, v0}, Lcom/narvii/topic/widgets/TopicSubscribeView;->access$updateViews(Lcom/narvii/topic/widgets/TopicSubscribeView;Lcom/narvii/model/story/StoryTopic;)V

    return-void
.end method
