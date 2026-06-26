.class Lcom/narvii/tipping/TippingBoxView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TippingBoxView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/tipping/TippingBoxView;->startTipSuccessAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/tipping/TippingBoxView;


# direct methods
.method constructor <init>(Lcom/narvii/tipping/TippingBoxView;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/narvii/tipping/TippingBoxView$4;->this$0:Lcom/narvii/tipping/TippingBoxView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 206
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 207
    iget-object p1, p0, Lcom/narvii/tipping/TippingBoxView$4;->this$0:Lcom/narvii/tipping/TippingBoxView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/narvii/tipping/TippingBoxView;->access$302(Lcom/narvii/tipping/TippingBoxView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 208
    iget-object p1, p0, Lcom/narvii/tipping/TippingBoxView$4;->this$0:Lcom/narvii/tipping/TippingBoxView;

    invoke-static {p1}, Lcom/narvii/tipping/TippingBoxView;->access$400(Lcom/narvii/tipping/TippingBoxView;)Ljava/lang/Runnable;

    move-result-object p1

    if-nez p1, :cond_0

    .line 209
    iget-object p1, p0, Lcom/narvii/tipping/TippingBoxView$4;->this$0:Lcom/narvii/tipping/TippingBoxView;

    new-instance v0, Lcom/narvii/tipping/TippingBoxView$4$1;

    invoke-direct {v0, p0}, Lcom/narvii/tipping/TippingBoxView$4$1;-><init>(Lcom/narvii/tipping/TippingBoxView$4;)V

    invoke-static {p1, v0}, Lcom/narvii/tipping/TippingBoxView;->access$402(Lcom/narvii/tipping/TippingBoxView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 217
    :cond_0
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/narvii/tipping/TippingBoxView$4;->this$0:Lcom/narvii/tipping/TippingBoxView;

    invoke-static {v0}, Lcom/narvii/tipping/TippingBoxView;->access$400(Lcom/narvii/tipping/TippingBoxView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 218
    iget-object p1, p0, Lcom/narvii/tipping/TippingBoxView$4;->this$0:Lcom/narvii/tipping/TippingBoxView;

    invoke-static {p1}, Lcom/narvii/tipping/TippingBoxView;->access$400(Lcom/narvii/tipping/TippingBoxView;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method
