.class Lcom/narvii/checkin/lottery/LotteryDialog$8$2;
.super Ljava/lang/Object;
.source "LotteryDialog.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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


# direct methods
.method constructor <init>(Lcom/narvii/checkin/lottery/LotteryDialog$8;)V
    .locals 0

    .line 461
    iput-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$8$2;->this$1:Lcom/narvii/checkin/lottery/LotteryDialog$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 464
    iget-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog$8$2;->this$1:Lcom/narvii/checkin/lottery/LotteryDialog$8;

    iget-object v0, v0, Lcom/narvii/checkin/lottery/LotteryDialog$8;->val$tv:Landroid/widget/TextView;

    sget-object v1, Lcom/narvii/util/text/TextUtils;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
