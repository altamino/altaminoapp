.class Lcom/narvii/tipping/TippingThanksView$1;
.super Ljava/lang/Object;
.source "TippingThanksView.java"

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

    .line 125
    iput-object p1, p0, Lcom/narvii/tipping/TippingThanksView$1;->this$0:Lcom/narvii/tipping/TippingThanksView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 144
    iget-object p1, p0, Lcom/narvii/tipping/TippingThanksView$1;->this$0:Lcom/narvii/tipping/TippingThanksView;

    invoke-static {p1}, Lcom/narvii/tipping/TippingThanksView;->access$000(Lcom/narvii/tipping/TippingThanksView;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 133
    iget-object p1, p0, Lcom/narvii/tipping/TippingThanksView$1;->this$0:Lcom/narvii/tipping/TippingThanksView;

    iget-object p1, p1, Lcom/narvii/tipping/TippingThanksView;->baseView:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    iget-object p1, p0, Lcom/narvii/tipping/TippingThanksView$1;->this$0:Lcom/narvii/tipping/TippingThanksView;

    iget-object p1, p1, Lcom/narvii/tipping/TippingThanksView;->heartView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 135
    iget-object p1, p0, Lcom/narvii/tipping/TippingThanksView$1;->this$0:Lcom/narvii/tipping/TippingThanksView;

    iget-boolean v0, p1, Lcom/narvii/tipping/TippingThanksView;->isSupportChat:Z

    if-eqz v0, :cond_0

    .line 136
    iget-object p1, p1, Lcom/narvii/tipping/TippingThanksView;->chatView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    iget-object p1, p0, Lcom/narvii/tipping/TippingThanksView$1;->this$0:Lcom/narvii/tipping/TippingThanksView;

    iget-object p1, p1, Lcom/narvii/tipping/TippingThanksView;->chatViewScaleX:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 138
    iget-object p1, p0, Lcom/narvii/tipping/TippingThanksView$1;->this$0:Lcom/narvii/tipping/TippingThanksView;

    iget-object p1, p1, Lcom/narvii/tipping/TippingThanksView;->chatViewScaleY:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

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
