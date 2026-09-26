.class Lcom/narvii/checkin/lottery/LotteryDialog$4$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/checkin/lottery/LotteryDialog$4;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/checkin/lottery/LotteryDialog$4;

.field final synthetic val$added:Landroid/widget/TextView;

.field final synthetic val$anim:Landroid/view/ViewPropertyAnimator;

.field final synthetic val$duration:I


# direct methods
.method constructor <init>(Lcom/narvii/checkin/lottery/LotteryDialog$4;Landroid/view/ViewPropertyAnimator;Landroid/widget/TextView;I)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$4$1;->this$1:Lcom/narvii/checkin/lottery/LotteryDialog$4;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/checkin/lottery/LotteryDialog$4$1;->val$anim:Landroid/view/ViewPropertyAnimator;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/checkin/lottery/LotteryDialog$4$1;->val$added:Landroid/widget/TextView;

    .line 7
    .line 8
    iput p4, p0, Lcom/narvii/checkin/lottery/LotteryDialog$4$1;->val$duration:I

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$4$1;->val$anim:Landroid/view/ViewPropertyAnimator;

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$4$1;->val$added:Landroid/widget/TextView;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog$4$1;->this$1:Lcom/narvii/checkin/lottery/LotteryDialog$4;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/narvii/checkin/lottery/LotteryDialog$4;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    const/high16 v1, 0x42a00000    # 80.0f

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 26
    move-result v0

    .line 27
    neg-float v0, v0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    iget v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog$4$1;->val$duration:I

    .line 34
    int-to-long v0, v0

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    new-instance v0, Landroid/view/animation/AnticipateInterpolator;

    .line 41
    .line 42
    const/high16 v1, 0x3f800000    # 1.0f

    .line 43
    .line 44
    .line 45
    invoke-direct {v0, v1}, Landroid/view/animation/AnticipateInterpolator;-><init>(F)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    const-wide/16 v0, 0x12c

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 59
    return-void
.end method
