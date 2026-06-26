.class Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$2;
.super Ljava/lang/Object;
.source "StoryQuizResultLayoutNew.java"

# interfaces
.implements Lcom/narvii/story/widgets/StoryReplayNextView$IStoryReplayNextClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->onViewCreated(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;


# direct methods
.method constructor <init>(Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$2;->this$0:Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNext(Z)V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$2;->this$0:Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;

    const-string v1, "next"

    invoke-static {v0, v1}, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->access$100(Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$2;->this$0:Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;

    invoke-static {v0}, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->access$200(Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;)Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$QuizResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$2;->this$0:Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;

    invoke-static {v0}, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->access$200(Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;)Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$QuizResultListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$QuizResultListener;->playNextStory(Z)V

    :cond_0
    return-void
.end method

.method public onReplay()V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$2;->this$0:Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;

    const-string v1, "replay"

    invoke-static {v0, v1}, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->access$100(Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$2;->this$0:Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;

    invoke-static {v0}, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->access$200(Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;)Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$QuizResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$2;->this$0:Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;

    invoke-static {v0}, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->access$200(Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;)Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$QuizResultListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$QuizResultListener;->replayStory()V

    :cond_0
    return-void
.end method
