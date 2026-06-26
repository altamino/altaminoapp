.class Lcom/narvii/wallet/WalletRecyclerFragment$4;
.super Landroid/content/BroadcastReceiver;
.source "WalletRecyclerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/wallet/WalletRecyclerFragment;
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

    .line 376
    iput-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$4;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 379
    iget-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$4;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    invoke-virtual {p1}, Lcom/narvii/wallet/WalletRecyclerFragment;->updateHeader()V

    .line 380
    iget-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$4;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    invoke-static {p1}, Lcom/narvii/wallet/WalletRecyclerFragment;->access$100(Lcom/narvii/wallet/WalletRecyclerFragment;)Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
