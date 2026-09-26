.class Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter$1;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter$1;->this$1:Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 6
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter$1;->this$1:Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/narvii/wallet/WalletRecyclerFragment;->N(Lcom/narvii/wallet/WalletRecyclerFragment;Z)V

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter$1;->this$1:Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/narvii/wallet/WalletRecyclerFragment;->C(Lcom/narvii/wallet/WalletRecyclerFragment;)Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter$1;->this$1:Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lcom/narvii/wallet/WalletRecyclerFragment;->C(Lcom/narvii/wallet/WalletRecyclerFragment;)Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;

    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x0

    .line 28
    const/4 v2, 0x0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;->refresh(ILcom/narvii/paging/source/PageRequestCallback;)V

    .line 32
    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter$1;->this$1:Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    .line 5
    .line 6
    .line 7
    invoke-static {v0, p1, p2}, Lcom/narvii/wallet/WalletRecyclerFragment;->K(Lcom/narvii/wallet/WalletRecyclerFragment;J)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter$1;->this$1:Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/narvii/wallet/WalletRecyclerFragment$WalletMergeAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    .line 12
    .line 13
    .line 14
    invoke-static {v0, p1, p2}, Lcom/narvii/wallet/WalletRecyclerFragment;->S(Lcom/narvii/wallet/WalletRecyclerFragment;J)V

    .line 15
    return-void
.end method
