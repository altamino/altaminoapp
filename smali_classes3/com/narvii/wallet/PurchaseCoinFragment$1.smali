.class Lcom/narvii/wallet/PurchaseCoinFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "PurchaseCoinFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/wallet/PurchaseCoinFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/wallet/PurchaseCoinFragment;


# direct methods
.method constructor <init>(Lcom/narvii/wallet/PurchaseCoinFragment;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/narvii/wallet/PurchaseCoinFragment$1;->this$0:Lcom/narvii/wallet/PurchaseCoinFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 75
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.narvii.action.WALLET_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 76
    iget-object p1, p0, Lcom/narvii/wallet/PurchaseCoinFragment$1;->this$0:Lcom/narvii/wallet/PurchaseCoinFragment;

    invoke-static {p1}, Lcom/narvii/wallet/PurchaseCoinFragment;->access$000(Lcom/narvii/wallet/PurchaseCoinFragment;)V

    :cond_0
    return-void
.end method
