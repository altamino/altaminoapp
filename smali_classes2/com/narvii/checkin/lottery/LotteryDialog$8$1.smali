.class Lcom/narvii/checkin/lottery/LotteryDialog$8$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LotteryDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/checkin/lottery/LotteryDialog$8;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/checkin/lottery/LotteryDialog$8;

.field final synthetic val$added:Landroid/widget/TextView;

.field final synthetic val$anim:Landroid/view/ViewPropertyAnimator;

.field final synthetic val$duration:I


# direct methods
.method constructor <init>(Lcom/narvii/checkin/lottery/LotteryDialog$8;Landroid/view/ViewPropertyAnimator;Landroid/widget/TextView;I)V
    .locals 0

    .line 450
    iput-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$8$1;->this$1:Lcom/narvii/checkin/lottery/LotteryDialog$8;

    iput-object p2, p0, Lcom/narvii/checkin/lottery/LotteryDialog$8$1;->val$anim:Landroid/view/ViewPropertyAnimator;

    iput-object p3, p0, Lcom/narvii/checkin/lottery/LotteryDialog$8$1;->val$added:Landroid/widget/TextView;

    iput p4, p0, Lcom/narvii/checkin/lottery/LotteryDialog$8$1;->val$duration:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 453
    iget-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$8$1;->val$anim:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 454
    iget-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$8$1;->val$added:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog$8$1;->this$1:Lcom/narvii/checkin/lottery/LotteryDialog$8;

    iget-object v0, v0, Lcom/narvii/checkin/lottery/LotteryDialog$8;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42a00000    # 80.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog$8$1;->val$duration:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Landroid/view/animation/AnticipateInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Landroid/view/animation/AnticipateInterpolator;-><init>(F)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
