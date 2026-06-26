.class Lcom/narvii/wallet/EarnCoinToastHelper$1$2;
.super Ljava/lang/Object;
.source "EarnCoinToastHelper.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/wallet/EarnCoinToastHelper$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/wallet/EarnCoinToastHelper$1;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/narvii/wallet/EarnCoinToastHelper$1;Ljava/lang/Runnable;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/narvii/wallet/EarnCoinToastHelper$1$2;->this$1:Lcom/narvii/wallet/EarnCoinToastHelper$1;

    iput-object p2, p0, Lcom/narvii/wallet/EarnCoinToastHelper$1$2;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 188
    iget-object p1, p0, Lcom/narvii/wallet/EarnCoinToastHelper$1$2;->val$r:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 189
    iget-object p1, p0, Lcom/narvii/wallet/EarnCoinToastHelper$1$2;->this$1:Lcom/narvii/wallet/EarnCoinToastHelper$1;

    iget-object p1, p1, Lcom/narvii/wallet/EarnCoinToastHelper$1;->this$0:Lcom/narvii/wallet/EarnCoinToastHelper;

    iget-object p1, p1, Lcom/narvii/wallet/EarnCoinToastHelper;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/narvii/wallet/EarnCoinToastHelper$1$2;->val$r:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

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
