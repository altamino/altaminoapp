.class Lcom/narvii/wallet/EarnCoinToastHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/wallet/EarnCoinToastHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/wallet/EarnCoinToastHelper;


# direct methods
.method constructor <init>(Lcom/narvii/wallet/EarnCoinToastHelper;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/wallet/EarnCoinToastHelper$1;->this$0:Lcom/narvii/wallet/EarnCoinToastHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/EarnCoinToastHelper$1;->this$0:Lcom/narvii/wallet/EarnCoinToastHelper;

    .line 3
    .line 4
    iget-object v1, v0, Lcom/narvii/wallet/EarnCoinToastHelper;->currentView:Landroid/view/View;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    iput-object v2, v0, Lcom/narvii/wallet/EarnCoinToastHelper;->currentView:Landroid/view/View;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/narvii/wallet/EarnCoinToastHelper;->context:Lcom/narvii/app/NVContext;

    .line 12
    .line 13
    .line 14
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    new-instance v2, Lcom/narvii/wallet/EarnCoinToastHelper$1$1;

    .line 18
    .line 19
    .line 20
    invoke-direct {v2, p0, v0, v1}, Lcom/narvii/wallet/EarnCoinToastHelper$1$1;-><init>(Lcom/narvii/wallet/EarnCoinToastHelper$1;Landroid/content/Context;Landroid/view/View;)V

    .line 21
    .line 22
    .line 23
    const v3, 0x7f010068

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    new-instance v3, Lcom/narvii/wallet/EarnCoinToastHelper$1$2;

    .line 30
    .line 31
    .line 32
    invoke-direct {v3, p0, v2}, Lcom/narvii/wallet/EarnCoinToastHelper$1$2;-><init>(Lcom/narvii/wallet/EarnCoinToastHelper$1;Ljava/lang/Runnable;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 36
    .line 37
    .line 38
    const v3, 0x7f0a0ec1

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    move-result-object v1

    .line 43
    const/4 v3, 0x4

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    .line 53
    move-result-wide v0

    .line 54
    .line 55
    const-wide/16 v3, 0x14

    .line 56
    add-long/2addr v0, v3

    .line 57
    .line 58
    iget-object v3, p0, Lcom/narvii/wallet/EarnCoinToastHelper$1;->this$0:Lcom/narvii/wallet/EarnCoinToastHelper;

    .line 59
    .line 60
    iget-object v3, v3, Lcom/narvii/wallet/EarnCoinToastHelper;->handler:Landroid/os/Handler;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 64
    :cond_0
    return-void
.end method
