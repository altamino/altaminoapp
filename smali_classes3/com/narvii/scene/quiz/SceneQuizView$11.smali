.class Lcom/narvii/scene/quiz/SceneQuizView$11;
.super Ljava/lang/Object;
.source "SceneQuizView.java"

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

    .line 565
    iput-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizView$11;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    iput-object p2, p0, Lcom/narvii/scene/quiz/SceneQuizView$11;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .line 572
    iget-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizView$11;->val$view:Landroid/view/View;

    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView$11;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/narvii/mediaeditor/R$anim;->bounce2:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

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
