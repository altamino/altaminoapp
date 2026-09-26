.class Lcom/narvii/wallet/WalletRecyclerFragment$3;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$3;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$3;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/wallet/WalletRecyclerFragment;->updateHeader()V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$3;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lcom/narvii/wallet/WalletRecyclerFragment;->C(Lcom/narvii/wallet/WalletRecyclerFragment;)Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 15
    return-void
.end method
