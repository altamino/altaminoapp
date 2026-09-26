.class Lcom/narvii/checkin/lottery/LotteryDialog$4;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$4;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/checkin/lottery/LotteryDialog$4;->val$finalBalance:I

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/checkin/lottery/LotteryDialog$4;->val$tv:Landroid/widget/TextView;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public static synthetic a(Landroid/widget/TextView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/checkin/lottery/LotteryDialog$4;->lambda$onAnimationEnd$0(Landroid/widget/TextView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private static synthetic lambda$onAnimationEnd$0(Landroid/widget/TextView;Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/util/text/TextUtils;->numberFormat:Ljava/text/NumberFormat;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 12
    move-result p1

    .line 13
    int-to-long v1, p1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 6

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$4;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    .line 3
    .line 4
    .line 5
    const v0, 0x7f0a00a7

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    check-cast p1, Landroid/widget/TextView;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog$4;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/narvii/checkin/lottery/LotteryDialog;->lotteryResponse:Lcom/narvii/checkin/lottery/LotteryResponse;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/narvii/checkin/lottery/LotteryResponse;->lotteryLog:Lcom/narvii/checkin/lottery/LotteryLog;

    .line 18
    .line 19
    iget v0, v0, Lcom/narvii/checkin/lottery/LotteryLog;->awardValue:I

    .line 20
    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    const-string v2, "+"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    const/4 v1, 0x0

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    mul-int/lit8 v1, v0, 0x32

    .line 46
    .line 47
    const/16 v2, 0x190

    .line 48
    .line 49
    .line 50
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    .line 51
    move-result v1

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 55
    move-result-object v2

    .line 56
    .line 57
    iget-object v3, p0, Lcom/narvii/checkin/lottery/LotteryDialog$4;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 61
    move-result-object v3

    .line 62
    .line 63
    const/high16 v4, 0x41a00000    # 20.0f

    .line 64
    .line 65
    .line 66
    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 67
    move-result v3

    .line 68
    neg-float v3, v3

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 72
    move-result-object v2

    .line 73
    .line 74
    const-wide/16 v3, 0x190

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 78
    move-result-object v2

    .line 79
    .line 80
    new-instance v5, Lcom/narvii/checkin/lottery/LotteryDialog$4$1;

    .line 81
    .line 82
    .line 83
    invoke-direct {v5, p0, v2, p1, v1}, Lcom/narvii/checkin/lottery/LotteryDialog$4$1;-><init>(Lcom/narvii/checkin/lottery/LotteryDialog$4;Landroid/view/ViewPropertyAnimator;Landroid/widget/TextView;I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 90
    .line 91
    iget p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$4;->val$finalBalance:I

    .line 92
    add-int/2addr v0, p1

    .line 93
    .line 94
    .line 95
    filled-new-array {p1, v0}, [I

    .line 96
    move-result-object p1

    .line 97
    .line 98
    .line 99
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 100
    move-result-object p1

    .line 101
    int-to-long v0, v1

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 105
    .line 106
    iget-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog$4;->val$tv:Landroid/widget/TextView;

    .line 107
    .line 108
    new-instance v1, Lcom/narvii/checkin/lottery/g;

    .line 109
    .line 110
    .line 111
    invoke-direct {v1, v0}, Lcom/narvii/checkin/lottery/g;-><init>(Landroid/widget/TextView;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 121
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
