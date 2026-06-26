.class Lcom/narvii/chat/screenroom/ReputationEarningComposite$9;
.super Ljava/lang/Object;
.source "ReputationEarningComposite.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/screenroom/ReputationEarningComposite;->initAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field decimalFormat:Ljava/text/DecimalFormat;

.field final synthetic this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;


# direct methods
.method constructor <init>(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)V
    .locals 1

    .line 348
    iput-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$9;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    new-instance p1, Ljava/text/DecimalFormat;

    const-string v0, "0.0"

    invoke-direct {p1, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$9;->decimalFormat:Ljava/text/DecimalFormat;

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 353
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$9;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {v0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$200(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$9;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
