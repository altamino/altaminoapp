.class Lcom/narvii/wallet/WalletRecyclerFragment$10;
.super Ljava/lang/Object;
.source "WalletRecyclerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/wallet/WalletRecyclerFragment;->notifyAdapter()V
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

    .line 1037
    iput-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$10;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1040
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment$10;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    invoke-static {v0}, Lcom/narvii/wallet/WalletRecyclerFragment;->access$2100(Lcom/narvii/wallet/WalletRecyclerFragment;)Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1041
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment$10;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    invoke-static {v0}, Lcom/narvii/wallet/WalletRecyclerFragment;->access$100(Lcom/narvii/wallet/WalletRecyclerFragment;)Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
