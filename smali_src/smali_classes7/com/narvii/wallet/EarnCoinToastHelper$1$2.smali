.class Lcom/narvii/wallet/EarnCoinToastHelper$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/wallet/EarnCoinToastHelper$1$2;->this$1:Lcom/narvii/wallet/EarnCoinToastHelper$1;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/wallet/EarnCoinToastHelper$1$2;->val$r:Ljava/lang/Runnable;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/wallet/EarnCoinToastHelper$1$2;->val$r:Ljava/lang/Runnable;

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/wallet/EarnCoinToastHelper$1$2;->this$1:Lcom/narvii/wallet/EarnCoinToastHelper$1;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/narvii/wallet/EarnCoinToastHelper$1;->this$0:Lcom/narvii/wallet/EarnCoinToastHelper;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/narvii/wallet/EarnCoinToastHelper;->handler:Landroid/os/Handler;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/wallet/EarnCoinToastHelper$1$2;->val$r:Ljava/lang/Runnable;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 17
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
