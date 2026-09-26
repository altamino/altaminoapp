.class Lcom/narvii/tipping/TippingBoxView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/tipping/TippingBoxView$4;->this$0:Lcom/narvii/tipping/TippingBoxView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/tipping/TippingBoxView$4;->this$0:Lcom/narvii/tipping/TippingBoxView;

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/narvii/tipping/TippingBoxView;->e(Lcom/narvii/tipping/TippingBoxView;Landroid/animation/AnimatorSet;)V

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/tipping/TippingBoxView$4;->this$0:Lcom/narvii/tipping/TippingBoxView;

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lcom/narvii/tipping/TippingBoxView;->b(Lcom/narvii/tipping/TippingBoxView;)Ljava/lang/Runnable;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lcom/narvii/tipping/TippingBoxView$4;->this$0:Lcom/narvii/tipping/TippingBoxView;

    .line 20
    .line 21
    new-instance v0, Lcom/narvii/tipping/TippingBoxView$4$1;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0}, Lcom/narvii/tipping/TippingBoxView$4$1;-><init>(Lcom/narvii/tipping/TippingBoxView$4;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1, v0}, Lcom/narvii/tipping/TippingBoxView;->f(Lcom/narvii/tipping/TippingBoxView;Ljava/lang/Runnable;)V

    .line 28
    .line 29
    :cond_0
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 30
    .line 31
    iget-object v0, p0, Lcom/narvii/tipping/TippingBoxView$4;->this$0:Lcom/narvii/tipping/TippingBoxView;

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lcom/narvii/tipping/TippingBoxView;->b(Lcom/narvii/tipping/TippingBoxView;)Ljava/lang/Runnable;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 39
    .line 40
    iget-object p1, p0, Lcom/narvii/tipping/TippingBoxView$4;->this$0:Lcom/narvii/tipping/TippingBoxView;

    .line 41
    .line 42
    .line 43
    invoke-static {p1}, Lcom/narvii/tipping/TippingBoxView;->b(Lcom/narvii/tipping/TippingBoxView;)Ljava/lang/Runnable;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    const-wide/16 v0, 0xc8

    .line 47
    .line 48
    .line 49
    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 50
    return-void
.end method
