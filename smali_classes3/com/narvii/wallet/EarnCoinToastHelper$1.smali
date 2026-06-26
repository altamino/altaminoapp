.class Lcom/narvii/wallet/EarnCoinToastHelper$1;
.super Ljava/lang/Object;
.source "EarnCoinToastHelper.java"

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

    .line 163
    iput-object p1, p0, Lcom/narvii/wallet/EarnCoinToastHelper$1;->this$0:Lcom/narvii/wallet/EarnCoinToastHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 166
    iget-object v0, p0, Lcom/narvii/wallet/EarnCoinToastHelper$1;->this$0:Lcom/narvii/wallet/EarnCoinToastHelper;

    iget-object v1, v0, Lcom/narvii/wallet/EarnCoinToastHelper;->currentView:Landroid/view/View;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 168
    iput-object v2, v0, Lcom/narvii/wallet/EarnCoinToastHelper;->currentView:Landroid/view/View;

    .line 169
    iget-object v0, v0, Lcom/narvii/wallet/EarnCoinToastHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 170
    new-instance v2, Lcom/narvii/wallet/EarnCoinToastHelper$1$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/narvii/wallet/EarnCoinToastHelper$1$1;-><init>(Lcom/narvii/wallet/EarnCoinToastHelper$1;Landroid/content/Context;Landroid/view/View;)V

    const v3, 0x7f01004a

    .line 180
    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 181
    new-instance v3, Lcom/narvii/wallet/EarnCoinToastHelper$1$2;

    invoke-direct {v3, p0, v2}, Lcom/narvii/wallet/EarnCoinToastHelper$1$2;-><init>(Lcom/narvii/wallet/EarnCoinToastHelper$1;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const v3, 0x7f090baa

    .line 196
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x4

    .line 197
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 198
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 201
    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    const-wide/16 v3, 0x14

    add-long/2addr v0, v3

    .line 202
    iget-object v3, p0, Lcom/narvii/wallet/EarnCoinToastHelper$1;->this$0:Lcom/narvii/wallet/EarnCoinToastHelper;

    iget-object v3, v3, Lcom/narvii/wallet/EarnCoinToastHelper;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
