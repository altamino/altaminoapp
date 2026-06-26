.class Lcom/narvii/wallet/WalletRecyclerFragment$8;
.super Ljava/lang/Object;
.source "WalletRecyclerFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/wallet/WalletRecyclerFragment;->showPendingDlg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/wallet/WalletRecyclerFragment;


# direct methods
.method constructor <init>(Lcom/narvii/wallet/WalletRecyclerFragment;)V
    .locals 0

    .line 988
    iput-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$8;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 991
    iget-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$8;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/narvii/wallet/WalletRecyclerFragment;->pendingAction:Ljava/lang/Object;

    .line 992
    iput-object v0, p1, Lcom/narvii/wallet/WalletRecyclerFragment;->pendingDlg:Lcom/narvii/util/dialog/ProgressDialog;

    return-void
.end method
