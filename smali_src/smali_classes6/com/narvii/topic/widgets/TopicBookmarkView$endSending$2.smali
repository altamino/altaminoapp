.class public final Lcom/narvii/topic/widgets/TopicBookmarkView$endSending$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/topic/widgets/TopicBookmarkView$endSending$2;->this$0:Lcom/narvii/topic/widgets/TopicBookmarkView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
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
    iget-object p1, p0, Lcom/narvii/topic/widgets/TopicBookmarkView$endSending$2;->this$0:Lcom/narvii/topic/widgets/TopicBookmarkView;

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/narvii/topic/widgets/TopicBookmarkView;->setSending(Z)V

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/topic/widgets/TopicBookmarkView$endSending$2;->this$0:Lcom/narvii/topic/widgets/TopicBookmarkView;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/narvii/topic/widgets/TopicBookmarkView;->getTopic()Lcom/narvii/model/story/StoryTopic;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v0}, Lcom/narvii/topic/widgets/TopicBookmarkView;->access$updateViews(Lcom/narvii/topic/widgets/TopicBookmarkView;Lcom/narvii/model/story/StoryTopic;)V

    .line 21
    return-void
.end method

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
    iget-object p1, p0, Lcom/narvii/topic/widgets/TopicBookmarkView$endSending$2;->this$0:Lcom/narvii/topic/widgets/TopicBookmarkView;

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/narvii/topic/widgets/TopicBookmarkView;->setSending(Z)V

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/topic/widgets/TopicBookmarkView$endSending$2;->this$0:Lcom/narvii/topic/widgets/TopicBookmarkView;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/narvii/topic/widgets/TopicBookmarkView;->getTopic()Lcom/narvii/model/story/StoryTopic;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v0}, Lcom/narvii/topic/widgets/TopicBookmarkView;->access$updateViews(Lcom/narvii/topic/widgets/TopicBookmarkView;Lcom/narvii/model/story/StoryTopic;)V

    .line 21
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
