.class Lcom/narvii/wallet/PurchaseCoinFragment$4;
.super Ljava/lang/Object;
.source "PurchaseCoinFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/wallet/PurchaseCoinFragment;->clickRvButton(Z)V
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

    .line 301
    iput-object p1, p0, Lcom/narvii/wallet/PurchaseCoinFragment$4;->this$0:Lcom/narvii/wallet/PurchaseCoinFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 304
    iget-object p1, p0, Lcom/narvii/wallet/PurchaseCoinFragment$4;->this$0:Lcom/narvii/wallet/PurchaseCoinFragment;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/narvii/wallet/PurchaseCoinFragment;->pendingWatchRV:Z

    const/4 v0, 0x0

    .line 305
    iput-object v0, p1, Lcom/narvii/wallet/PurchaseCoinFragment;->requestingDialog:Landroid/app/Dialog;

    return-void
.end method
