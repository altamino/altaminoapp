.class Lcom/narvii/wallet/EarnCoinToastHelper$1$1;
.super Ljava/lang/Object;
.source "EarnCoinToastHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/narvii/wallet/EarnCoinToastHelper$1;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/narvii/wallet/EarnCoinToastHelper$1$1;->this$1:Lcom/narvii/wallet/EarnCoinToastHelper$1;

    iput-object p2, p0, Lcom/narvii/wallet/EarnCoinToastHelper$1$1;->val$ctx:Landroid/content/Context;

    iput-object p3, p0, Lcom/narvii/wallet/EarnCoinToastHelper$1$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/narvii/wallet/EarnCoinToastHelper$1$1;->val$ctx:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 175
    iget-object v1, p0, Lcom/narvii/wallet/EarnCoinToastHelper$1$1;->val$view:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
