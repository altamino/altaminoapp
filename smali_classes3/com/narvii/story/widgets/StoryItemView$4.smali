.class Lcom/narvii/story/widgets/StoryItemView$4;
.super Ljava/lang/Object;
.source "StoryItemView.java"

# interfaces
.implements Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$QuizResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/widgets/StoryItemView;->showQuizResult(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/story/widgets/StoryItemView;


# direct methods
.method constructor <init>(Lcom/narvii/story/widgets/StoryItemView;)V
    .locals 0

    .line 457
    iput-object p1, p0, Lcom/narvii/story/widgets/StoryItemView$4;->this$0:Lcom/narvii/story/widgets/StoryItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public playNextStory(Z)V
    .locals 4

    .line 460
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView$4;->this$0:Lcom/narvii/story/widgets/StoryItemView;

    invoke-static {v0}, Lcom/narvii/story/widgets/StoryItemView;->access$700(Lcom/narvii/story/widgets/StoryItemView;)Lcom/narvii/story/widgets/StoryItemPlayControlListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView$4;->this$0:Lcom/narvii/story/widgets/StoryItemView;

    invoke-static {v0}, Lcom/narvii/story/widgets/StoryItemView;->access$700(Lcom/narvii/story/widgets/StoryItemView;)Lcom/narvii/story/widgets/StoryItemPlayControlListener;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/story/widgets/StoryItemView$4;->this$0:Lcom/narvii/story/widgets/StoryItemView;

    invoke-static {v1}, Lcom/narvii/story/widgets/StoryItemView;->access$100(Lcom/narvii/story/widgets/StoryItemView;)I

    move-result v1

    iget-object v2, p0, Lcom/narvii/story/widgets/StoryItemView$4;->this$0:Lcom/narvii/story/widgets/StoryItemView;

    invoke-static {v2}, Lcom/narvii/story/widgets/StoryItemView;->access$200(Lcom/narvii/story/widgets/StoryItemView;)Lcom/narvii/model/Blog;

    move-result-object v2

    const-string v3, "Score"

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/narvii/story/widgets/StoryItemPlayControlListener;->onPlayNextStory(ILcom/narvii/model/Blog;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public replayStory()V
    .locals 3

    .line 467
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView$4;->this$0:Lcom/narvii/story/widgets/StoryItemView;

    invoke-virtual {v0}, Lcom/narvii/story/widgets/StoryItemView;->hidePollQuiz()V

    .line 468
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView$4;->this$0:Lcom/narvii/story/widgets/StoryItemView;

    invoke-static {v0}, Lcom/narvii/story/widgets/StoryItemView;->access$700(Lcom/narvii/story/widgets/StoryItemView;)Lcom/narvii/story/widgets/StoryItemPlayControlListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView$4;->this$0:Lcom/narvii/story/widgets/StoryItemView;

    invoke-static {v0}, Lcom/narvii/story/widgets/StoryItemView;->access$700(Lcom/narvii/story/widgets/StoryItemView;)Lcom/narvii/story/widgets/StoryItemPlayControlListener;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/story/widgets/StoryItemView$4;->this$0:Lcom/narvii/story/widgets/StoryItemView;

    invoke-static {v1}, Lcom/narvii/story/widgets/StoryItemView;->access$100(Lcom/narvii/story/widgets/StoryItemView;)I

    move-result v1

    iget-object v2, p0, Lcom/narvii/story/widgets/StoryItemView$4;->this$0:Lcom/narvii/story/widgets/StoryItemView;

    invoke-static {v2}, Lcom/narvii/story/widgets/StoryItemView;->access$200(Lcom/narvii/story/widgets/StoryItemView;)Lcom/narvii/model/Blog;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/narvii/story/widgets/StoryItemPlayControlListener;->onReplayStory(ILcom/narvii/model/Blog;)V

    :cond_0
    return-void
.end method
