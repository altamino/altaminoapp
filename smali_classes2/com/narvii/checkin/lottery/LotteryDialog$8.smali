.class Lcom/narvii/checkin/lottery/LotteryDialog$8;
.super Ljava/lang/Object;
.source "LotteryDialog.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/checkin/lottery/LotteryDialog;->onFlipEnded(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

.field final synthetic val$finalBalance:I

.field final synthetic val$tv:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/narvii/checkin/lottery/LotteryDialog;ILandroid/widget/TextView;)V
    .locals 0

    .line 434
    iput-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$8;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    iput p2, p0, Lcom/narvii/checkin/lottery/LotteryDialog$8;->val$finalBalance:I

    iput-object p3, p0, Lcom/narvii/checkin/lottery/LotteryDialog$8;->val$tv:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 7

    .line 442
    iget-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$8;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    const v0, 0x7f09006e

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 443
    iget-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog$8;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    iget-object v0, v0, Lcom/narvii/checkin/lottery/LotteryDialog;->lotteryResponse:Lcom/narvii/checkin/lottery/LotteryResponse;

    iget-object v0, v0, Lcom/narvii/checkin/lottery/LotteryResponse;->lotteryLog:Lcom/narvii/checkin/lottery/LotteryLog;

    iget v0, v0, Lcom/narvii/checkin/lottery/LotteryLog;->awardValue:I

    .line 444
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 445
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    mul-int/lit8 v2, v0, 0x32

    const/16 v3, 0x190

    .line 447
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 449
    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget-object v4, p0, Lcom/narvii/checkin/lottery/LotteryDialog$8;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v4, v5}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v4

    neg-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0x190

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 450
    new-instance v6, Lcom/narvii/checkin/lottery/LotteryDialog$8$1;

    invoke-direct {v6, p0, v3, p1, v2}, Lcom/narvii/checkin/lottery/LotteryDialog$8$1;-><init>(Lcom/narvii/checkin/lottery/LotteryDialog$8;Landroid/view/ViewPropertyAnimator;Landroid/widget/TextView;I)V

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 457
    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 459
    iget v3, p0, Lcom/narvii/checkin/lottery/LotteryDialog$8;->val$finalBalance:I

    aput v3, p1, v1

    add-int/2addr v3, v0

    const/4 v0, 0x1

    aput v3, p1, v0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    int-to-long v0, v2

    .line 460
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 461
    new-instance v0, Lcom/narvii/checkin/lottery/LotteryDialog$8$2;

    invoke-direct {v0, p0}, Lcom/narvii/checkin/lottery/LotteryDialog$8$2;-><init>(Lcom/narvii/checkin/lottery/LotteryDialog$8;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 467
    invoke-virtual {p1, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 468
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

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
