.class Lcom/narvii/chat/screenroom/ReputationEarningComposite$9;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$9;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    new-instance p1, Ljava/text/DecimalFormat;

    .line 8
    .line 9
    const-string v0, "0.0"

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$9;->decimalFormat:Ljava/text/DecimalFormat;

    .line 15
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$9;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->C(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/widget/TextView;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$9;->decimalFormat:Ljava/text/DecimalFormat;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    check-cast p1, Ljava/lang/Float;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 18
    move-result p1

    .line 19
    float-to-double v2, p1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    return-void
.end method
