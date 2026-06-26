.class Lcom/narvii/scene/quiz/SceneQuizView$2;
.super Ljava/lang/Object;
.source "SceneQuizView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/quiz/SceneQuizView;->startCountDownAnim(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/quiz/SceneQuizView;


# direct methods
.method constructor <init>(Lcom/narvii/scene/quiz/SceneQuizView;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizView$2;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 169
    iget-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizView$2;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    iget-object v0, p1, Lcom/narvii/scene/quiz/SceneQuizView;->alarmTV:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/narvii/scene/quiz/SceneQuizView;->alarmTVAnim:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizView$2;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    iget-object p1, p1, Lcom/narvii/scene/quiz/SceneQuizView;->alarmTV:Landroid/widget/TextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .line 161
    iget-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizView$2;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/narvii/mediaeditor/R$anim;->fade_out:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    const/4 v0, 0x1

    .line 162
    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    const-wide/16 v0, 0xfa

    .line 163
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 164
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView$2;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    iget-object v0, v0, Lcom/narvii/scene/quiz/SceneQuizView;->alarmTV:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
