.class Lcom/narvii/scene/quiz/SceneQuizView$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/quiz/SceneQuizView;->startBounceAnimation(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/quiz/SceneQuizView;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/narvii/scene/quiz/SceneQuizView;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizView$11;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/scene/quiz/SceneQuizView$11;->val$view:Landroid/view/View;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizView$11;->val$view:Landroid/view/View;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView$11;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    sget v1, Lcom/narvii/mediaeditor/R$anim;->bounce2:I

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 18
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
