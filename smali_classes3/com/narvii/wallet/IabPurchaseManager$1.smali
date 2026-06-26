.class Lcom/narvii/wallet/IabPurchaseManager$1;
.super Ljava/lang/Object;
.source "IabPurchaseManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/wallet/IabPurchaseManager;->showPendingDlg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/wallet/IabPurchaseManager;


# direct methods
.method constructor <init>(Lcom/narvii/wallet/IabPurchaseManager;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/narvii/wallet/IabPurchaseManager$1;->this$0:Lcom/narvii/wallet/IabPurchaseManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 127
    iget-object p1, p0, Lcom/narvii/wallet/IabPurchaseManager$1;->this$0:Lcom/narvii/wallet/IabPurchaseManager;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/narvii/wallet/IabPurchaseManager;->pendingAction:Ljava/lang/Object;

    .line 128
    iput-object v0, p1, Lcom/narvii/wallet/IabPurchaseManager;->pendingDlg:Lcom/narvii/util/dialog/ProgressDialog;

    return-void
.end method
