.class Lcom/narvii/wallet/PurchaseCoinFragment$3$1;
.super Ljava/lang/Object;
.source "PurchaseCoinFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/wallet/PurchaseCoinFragment$3;->onWalletResponse(Lcom/narvii/wallet/WalletResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/wallet/PurchaseCoinFragment$3;


# direct methods
.method constructor <init>(Lcom/narvii/wallet/PurchaseCoinFragment$3;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/narvii/wallet/PurchaseCoinFragment$3$1;->this$1:Lcom/narvii/wallet/PurchaseCoinFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/narvii/wallet/PurchaseCoinFragment$3$1;->this$1:Lcom/narvii/wallet/PurchaseCoinFragment$3;

    iget-object v0, v0, Lcom/narvii/wallet/PurchaseCoinFragment$3;->this$0:Lcom/narvii/wallet/PurchaseCoinFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVDialogFragment;->dismiss()V

    return-void
.end method
