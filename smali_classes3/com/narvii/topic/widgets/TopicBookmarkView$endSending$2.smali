.class public final Lcom/narvii/topic/widgets/TopicBookmarkView$endSending$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TopicBookmarkView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/topic/widgets/TopicBookmarkView;->endSending()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/topic/widgets/TopicBookmarkView;


# direct methods
.method constructor <init>(Lcom/narvii/topic/widgets/TopicBookmarkView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 143
    iput-object p1, p0, Lcom/narvii/topic/widgets/TopicBookmarkView$endSending$2;->this$0:Lcom/narvii/topic/widgets/TopicBookmarkView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    iget-object p1, p0, Lcom/narvii/topic/widgets/TopicBookmarkView$endSending$2;->this$0:Lcom/narvii/topic/widgets/TopicBookmarkView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/topic/widgets/TopicBookmarkView;->setSending(Z)V

    .line 154
    iget-object p1, p0, Lcom/narvii/topic/widgets/TopicBookmarkView$endSending$2;->this$0:Lcom/narvii/topic/widgets/TopicBookmarkView;

    invoke-virtual {p1}, Lcom/narvii/topic/widgets/TopicBookmarkView;->getTopic()Lcom/narvii/model/story/StoryTopic;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/narvii/topic/widgets/TopicBookmarkView;->access$updateViews(Lcom/narvii/topic/widgets/TopicBookmarkView;Lcom/narvii/model/story/StoryTopic;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    iget-object p1, p0, Lcom/narvii/topic/widgets/TopicBookmarkView$endSending$2;->this$0:Lcom/narvii/topic/widgets/TopicBookmarkView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/topic/widgets/TopicBookmarkView;->setSending(Z)V

    .line 149
    iget-object p1, p0, Lcom/narvii/topic/widgets/TopicBookmarkView$endSending$2;->this$0:Lcom/narvii/topic/widgets/TopicBookmarkView;

    invoke-virtual {p1}, Lcom/narvii/topic/widgets/TopicBookmarkView;->getTopic()Lcom/narvii/model/story/StoryTopic;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/narvii/topic/widgets/TopicBookmarkView;->access$updateViews(Lcom/narvii/topic/widgets/TopicBookmarkView;Lcom/narvii/model/story/StoryTopic;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
