.class Lcom/narvii/wallet/EarnCoinToastHelper$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/wallet/EarnCoinToastHelper$1$1;->this$1:Lcom/narvii/wallet/EarnCoinToastHelper$1;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/wallet/EarnCoinToastHelper$1$1;->val$ctx:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/wallet/EarnCoinToastHelper$1$1;->val$view:Landroid/view/View;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/narvii/wallet/EarnCoinToastHelper$1$1;->val$ctx:Landroid/content/Context;

    .line 3
    .line 4
    .line 5
    const-string/jumbo v1, "window"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Landroid/view/WindowManager;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/narvii/wallet/EarnCoinToastHelper$1$1;->val$view:Landroid/view/View;

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    :catch_0
    return-void
.end method
