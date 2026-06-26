.class Lcom/narvii/scene/quiz/SceneQuizView$7;
.super Ljava/lang/Object;
.source "SceneQuizView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/quiz/SceneQuizView;->playQuizQuestion(Ljava/lang/String;Lcom/narvii/model/QuizQuestion;Lcom/narvii/scene/ScenePlayRecord;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/quiz/SceneQuizView;

.field final synthetic val$sceneId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/scene/quiz/SceneQuizView;Ljava/lang/String;)V
    .locals 0

    .line 346
    iput-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizView$7;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    iput-object p2, p0, Lcom/narvii/scene/quiz/SceneQuizView$7;->val$sceneId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 349
    iget-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizView$7;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    invoke-static {p1}, Lcom/narvii/scene/quiz/SceneQuizView;->access$1100(Lcom/narvii/scene/quiz/SceneQuizView;)Lcom/narvii/scene/ScenePlayListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 350
    iget-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizView$7;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    invoke-static {p1}, Lcom/narvii/scene/quiz/SceneQuizView;->access$1200(Lcom/narvii/scene/quiz/SceneQuizView;)Lcom/narvii/scene/ScenePlayListener;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView$7;->val$sceneId:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/narvii/scene/ScenePlayListener;->onScenePlayEnd(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
