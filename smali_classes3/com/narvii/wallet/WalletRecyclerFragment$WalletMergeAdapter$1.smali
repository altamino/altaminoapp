.class Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter$1;
.super Landroid/os/CountDownTimer;
.source "WalletRecyclerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;->setResponse(Lcom/narvii/wallet/WalletResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;JJ)V
    .locals 0

    .line 1227
    iput-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter$1;->this$1:Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .line 1236
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter$1;->this$1:Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;

    iget-object v0, v0, Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/narvii/wallet/WalletRecyclerFragment;->access$2302(Lcom/narvii/wallet/WalletRecyclerFragment;Z)Z

    .line 1237
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter$1;->this$1:Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;

    iget-object v0, v0, Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    invoke-static {v0}, Lcom/narvii/wallet/WalletRecyclerFragment;->access$100(Lcom/narvii/wallet/WalletRecyclerFragment;)Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1238
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter$1;->this$1:Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;

    iget-object v0, v0, Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    invoke-static {v0}, Lcom/narvii/wallet/WalletRecyclerFragment;->access$100(Lcom/narvii/wallet/WalletRecyclerFragment;)Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;->refresh(ILcom/narvii/paging/source/PageRequestCallback;)V

    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 1

    .line 1230
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter$1;->this$1:Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;

    iget-object v0, v0, Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    invoke-static {v0, p1, p2}, Lcom/narvii/wallet/WalletRecyclerFragment;->access$1402(Lcom/narvii/wallet/WalletRecyclerFragment;J)J

    .line 1231
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter$1;->this$1:Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;

    iget-object v0, v0, Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    invoke-static {v0, p1, p2}, Lcom/narvii/wallet/WalletRecyclerFragment;->access$1500(Lcom/narvii/wallet/WalletRecyclerFragment;J)V

    return-void
.end method
