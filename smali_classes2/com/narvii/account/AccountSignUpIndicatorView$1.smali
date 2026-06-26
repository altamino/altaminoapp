.class Lcom/narvii/account/AccountSignUpIndicatorView$1;
.super Ljava/lang/Object;
.source "AccountSignUpIndicatorView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/account/AccountSignUpIndicatorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/AccountSignUpIndicatorView;


# direct methods
.method constructor <init>(Lcom/narvii/account/AccountSignUpIndicatorView;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/narvii/account/AccountSignUpIndicatorView$1;->this$0:Lcom/narvii/account/AccountSignUpIndicatorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 55
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_0

    .line 56
    iget-object p1, p0, Lcom/narvii/account/AccountSignUpIndicatorView$1;->this$0:Lcom/narvii/account/AccountSignUpIndicatorView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/narvii/account/AccountSignUpIndicatorView;->access$002(Lcom/narvii/account/AccountSignUpIndicatorView;Z)Z

    .line 57
    iget-object p1, p0, Lcom/narvii/account/AccountSignUpIndicatorView$1;->this$0:Lcom/narvii/account/AccountSignUpIndicatorView;

    invoke-static {p1}, Lcom/narvii/account/AccountSignUpIndicatorView;->access$100(Lcom/narvii/account/AccountSignUpIndicatorView;)Lcom/narvii/account/AccountSignUpIndicatorView$IndicatorSuccessFinishedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 58
    iget-object p1, p0, Lcom/narvii/account/AccountSignUpIndicatorView$1;->this$0:Lcom/narvii/account/AccountSignUpIndicatorView;

    invoke-static {p1}, Lcom/narvii/account/AccountSignUpIndicatorView;->access$100(Lcom/narvii/account/AccountSignUpIndicatorView;)Lcom/narvii/account/AccountSignUpIndicatorView$IndicatorSuccessFinishedListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/account/AccountSignUpIndicatorView$IndicatorSuccessFinishedListener;->onTotallySuccess()V

    :cond_0
    return-void
.end method
