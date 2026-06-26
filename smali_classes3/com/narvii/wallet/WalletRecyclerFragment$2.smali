.class Lcom/narvii/wallet/WalletRecyclerFragment$2;
.super Ljava/lang/Object;
.source "WalletRecyclerFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/wallet/WalletRecyclerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    .line 231
    iput-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$2;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 234
    iget-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$2;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    invoke-static {p1}, Lcom/narvii/wallet/WalletRecyclerFragment;->access$200(Lcom/narvii/wallet/WalletRecyclerFragment;)Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 235
    iget-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$2;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    invoke-static {p1}, Lcom/narvii/wallet/WalletRecyclerFragment;->access$300(Lcom/narvii/wallet/WalletRecyclerFragment;)V

    :cond_0
    return-void
.end method
