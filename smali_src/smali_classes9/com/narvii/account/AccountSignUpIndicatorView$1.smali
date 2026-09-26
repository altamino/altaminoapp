.class Lcom/narvii/account/AccountSignUpIndicatorView$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/account/AccountSignUpIndicatorView$1;->this$0:Lcom/narvii/account/AccountSignUpIndicatorView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    check-cast p1, Ljava/lang/Float;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 10
    move-result p1

    .line 11
    .line 12
    const/high16 v0, 0x3f800000    # 1.0f

    .line 13
    .line 14
    cmpl-float p1, p1, v0

    .line 15
    .line 16
    if-ltz p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/narvii/account/AccountSignUpIndicatorView$1;->this$0:Lcom/narvii/account/AccountSignUpIndicatorView;

    .line 19
    const/4 v0, 0x0

    .line 20
    .line 21
    .line 22
    invoke-static {p1, v0}, Lcom/narvii/account/AccountSignUpIndicatorView;->c(Lcom/narvii/account/AccountSignUpIndicatorView;Z)V

    .line 23
    .line 24
    iget-object p1, p0, Lcom/narvii/account/AccountSignUpIndicatorView$1;->this$0:Lcom/narvii/account/AccountSignUpIndicatorView;

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lcom/narvii/account/AccountSignUpIndicatorView;->b(Lcom/narvii/account/AccountSignUpIndicatorView;)Lcom/narvii/account/AccountSignUpIndicatorView$IndicatorSuccessFinishedListener;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    iget-object p1, p0, Lcom/narvii/account/AccountSignUpIndicatorView$1;->this$0:Lcom/narvii/account/AccountSignUpIndicatorView;

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Lcom/narvii/account/AccountSignUpIndicatorView;->b(Lcom/narvii/account/AccountSignUpIndicatorView;)Lcom/narvii/account/AccountSignUpIndicatorView$IndicatorSuccessFinishedListener;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    .line 39
    invoke-interface {p1}, Lcom/narvii/account/AccountSignUpIndicatorView$IndicatorSuccessFinishedListener;->onTotallySuccess()V

    .line 40
    :cond_0
    return-void
.end method
