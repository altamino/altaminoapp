.class Lcom/narvii/tipping/TippingThanksView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/tipping/TippingThanksView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/tipping/TippingThanksView;


# direct methods
.method constructor <init>(Lcom/narvii/tipping/TippingThanksView;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/tipping/TippingThanksView$1;->this$0:Lcom/narvii/tipping/TippingThanksView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/tipping/TippingThanksView$1;->this$0:Lcom/narvii/tipping/TippingThanksView;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/tipping/TippingThanksView;->a(Lcom/narvii/tipping/TippingThanksView;)V

    .line 6
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/tipping/TippingThanksView$1;->this$0:Lcom/narvii/tipping/TippingThanksView;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/tipping/TippingThanksView;->baseView:Landroid/widget/ImageView;

    .line 5
    .line 6
    const/16 v0, 0x8

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/tipping/TippingThanksView$1;->this$0:Lcom/narvii/tipping/TippingThanksView;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/narvii/tipping/TippingThanksView;->heartView:Landroid/widget/ImageView;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 17
    .line 18
    iget-object p1, p0, Lcom/narvii/tipping/TippingThanksView$1;->this$0:Lcom/narvii/tipping/TippingThanksView;

    .line 19
    .line 20
    iget-boolean v0, p1, Lcom/narvii/tipping/TippingThanksView;->isSupportChat:Z

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object p1, p1, Lcom/narvii/tipping/TippingThanksView;->chatView:Landroid/widget/TextView;

    .line 25
    const/4 v0, 0x0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    iget-object p1, p0, Lcom/narvii/tipping/TippingThanksView$1;->this$0:Lcom/narvii/tipping/TippingThanksView;

    .line 31
    .line 32
    iget-object p1, p1, Lcom/narvii/tipping/TippingThanksView;->chatViewScaleX:Landroid/animation/ObjectAnimator;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 36
    .line 37
    iget-object p1, p0, Lcom/narvii/tipping/TippingThanksView$1;->this$0:Lcom/narvii/tipping/TippingThanksView;

    .line 38
    .line 39
    iget-object p1, p1, Lcom/narvii/tipping/TippingThanksView;->chatViewScaleY:Landroid/animation/ObjectAnimator;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 43
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
