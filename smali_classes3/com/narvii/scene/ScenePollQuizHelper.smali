.class public Lcom/narvii/scene/ScenePollQuizHelper;
.super Ljava/lang/Object;
.source "ScenePollQuizHelper.java"


# instance fields
.field context:Landroid/content/Context;

.field pollQuizContainer:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/narvii/scene/ScenePollQuizHelper;->pollQuizContainer:Landroid/view/ViewGroup;

    .line 23
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/scene/ScenePollQuizHelper;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public hidePollQuiz()V
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/narvii/scene/ScenePollQuizHelper;->pollQuizContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Lcom/narvii/scene/ScenePollQuizHelper;->pollQuizContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/narvii/scene/ScenePollQuizHelper;->context:Landroid/content/Context;

    sget v2, Lcom/narvii/lib/R$anim;->fade_out_fast:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 69
    iget-object v0, p0, Lcom/narvii/scene/ScenePollQuizHelper;->pollQuizContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method public showPollQuiz(Lcom/narvii/model/story/ScenePollOrQuizHost;Lcom/narvii/scene/ScenePlayRecord;Lcom/narvii/scene/ScenePlayListener;ZLcom/narvii/model/Blog;)V
    .locals 4

    .line 27
    iget-object v0, p0, Lcom/narvii/scene/ScenePollQuizHelper;->pollQuizContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 28
    iget-object v0, p0, Lcom/narvii/scene/ScenePollQuizHelper;->pollQuizContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 30
    iget-object v0, p0, Lcom/narvii/scene/ScenePollQuizHelper;->context:Landroid/content/Context;

    sget v1, Lcom/narvii/lib/R$anim;->fade_in:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 31
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 32
    invoke-interface {p1}, Lcom/narvii/model/story/ScenePollOrQuizHost;->getQuizQuestion()Lcom/narvii/model/QuizQuestion;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    .line 33
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 34
    new-instance v2, Lcom/narvii/scene/quiz/SceneQuizView;

    iget-object v3, p0, Lcom/narvii/scene/ScenePollQuizHelper;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/narvii/scene/quiz/SceneQuizView;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    .line 36
    invoke-virtual {v2}, Lcom/narvii/scene/quiz/SceneQuizView;->setQuizAnswerParentForceCenter()V

    .line 38
    :cond_0
    invoke-virtual {v2, p5, p4, p3}, Lcom/narvii/scene/ScenePlayBaseView;->setStory(Lcom/narvii/model/Blog;ZLcom/narvii/scene/ScenePlayListener;)V

    .line 39
    iget-object p3, p0, Lcom/narvii/scene/ScenePollQuizHelper;->pollQuizContainer:Landroid/view/ViewGroup;

    invoke-virtual {p3, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    new-instance p3, Lcom/narvii/scene/ScenePollQuizHelper$1;

    invoke-direct {p3, p0, v2, p1, p2}, Lcom/narvii/scene/ScenePollQuizHelper$1;-><init>(Lcom/narvii/scene/ScenePollQuizHelper;Lcom/narvii/scene/quiz/SceneQuizView;Lcom/narvii/model/story/ScenePollOrQuizHost;Lcom/narvii/scene/ScenePlayRecord;)V

    invoke-virtual {v0, p3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    .line 56
    :cond_1
    invoke-interface {p1}, Lcom/narvii/model/story/ScenePollOrQuizHost;->getPoll()Lcom/narvii/model/PollAttach;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 57
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 58
    new-instance v2, Lcom/narvii/scene/poll/ScenePollPlayView;

    iget-object v3, p0, Lcom/narvii/scene/ScenePollQuizHelper;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/narvii/scene/poll/ScenePollPlayView;-><init>(Landroid/content/Context;)V

    .line 59
    invoke-virtual {v2, p5, p4, p3}, Lcom/narvii/scene/ScenePlayBaseView;->setStory(Lcom/narvii/model/Blog;ZLcom/narvii/scene/ScenePlayListener;)V

    .line 60
    iget-object p3, p0, Lcom/narvii/scene/ScenePollQuizHelper;->pollQuizContainer:Landroid/view/ViewGroup;

    invoke-virtual {p3, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    invoke-interface {p1}, Lcom/narvii/model/story/ScenePollOrQuizHost;->id()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1}, Lcom/narvii/model/story/ScenePollOrQuizHost;->getPoll()Lcom/narvii/model/PollAttach;

    move-result-object p1

    invoke-virtual {v2, p3, p1, p2}, Lcom/narvii/scene/poll/ScenePollPlayView;->playPoll(Ljava/lang/String;Lcom/narvii/model/PollAttach;Lcom/narvii/scene/ScenePlayRecord;)V

    .line 63
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/narvii/scene/ScenePollQuizHelper;->pollQuizContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
