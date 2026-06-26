.class Lcom/narvii/scene/ScenePollQuizHelper$1;
.super Ljava/lang/Object;
.source "ScenePollQuizHelper.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/ScenePollQuizHelper;->showPollQuiz(Lcom/narvii/model/story/ScenePollOrQuizHost;Lcom/narvii/scene/ScenePlayRecord;Lcom/narvii/scene/ScenePlayListener;ZLcom/narvii/model/Blog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/ScenePollQuizHelper;

.field final synthetic val$scene:Lcom/narvii/model/story/ScenePollOrQuizHost;

.field final synthetic val$scenePlayRecord:Lcom/narvii/scene/ScenePlayRecord;

.field final synthetic val$sceneQuizView:Lcom/narvii/scene/quiz/SceneQuizView;


# direct methods
.method constructor <init>(Lcom/narvii/scene/ScenePollQuizHelper;Lcom/narvii/scene/quiz/SceneQuizView;Lcom/narvii/model/story/ScenePollOrQuizHost;Lcom/narvii/scene/ScenePlayRecord;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/narvii/scene/ScenePollQuizHelper$1;->this$0:Lcom/narvii/scene/ScenePollQuizHelper;

    iput-object p2, p0, Lcom/narvii/scene/ScenePollQuizHelper$1;->val$sceneQuizView:Lcom/narvii/scene/quiz/SceneQuizView;

    iput-object p3, p0, Lcom/narvii/scene/ScenePollQuizHelper$1;->val$scene:Lcom/narvii/model/story/ScenePollOrQuizHost;

    iput-object p4, p0, Lcom/narvii/scene/ScenePollQuizHelper$1;->val$scenePlayRecord:Lcom/narvii/scene/ScenePlayRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .line 48
    iget-object p1, p0, Lcom/narvii/scene/ScenePollQuizHelper$1;->val$sceneQuizView:Lcom/narvii/scene/quiz/SceneQuizView;

    iget-object v0, p0, Lcom/narvii/scene/ScenePollQuizHelper$1;->val$scene:Lcom/narvii/model/story/ScenePollOrQuizHost;

    invoke-interface {v0}, Lcom/narvii/model/story/ScenePollOrQuizHost;->id()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/scene/ScenePollQuizHelper$1;->val$scene:Lcom/narvii/model/story/ScenePollOrQuizHost;

    invoke-interface {v1}, Lcom/narvii/model/story/ScenePollOrQuizHost;->getQuizQuestion()Lcom/narvii/model/QuizQuestion;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/scene/ScenePollQuizHelper$1;->val$scenePlayRecord:Lcom/narvii/scene/ScenePlayRecord;

    invoke-virtual {p1, v0, v1, v2}, Lcom/narvii/scene/quiz/SceneQuizView;->playQuizQuestion(Ljava/lang/String;Lcom/narvii/model/QuizQuestion;Lcom/narvii/scene/ScenePlayRecord;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
