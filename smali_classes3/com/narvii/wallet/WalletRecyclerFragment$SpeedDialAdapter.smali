.class Lcom/narvii/wallet/WalletRecyclerFragment$SpeedDialAdapter;
.super Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
.source "WalletRecyclerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/wallet/WalletRecyclerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SpeedDialAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/wallet/WalletRecyclerFragment$SpeedDialAdapter$SpeedDialViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/wallet/WalletRecyclerFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/wallet/WalletRecyclerFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 507
    iput-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$SpeedDialAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    .line 508
    invoke-direct {p0, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .line 519
    iget-object p2, p0, Lcom/narvii/wallet/WalletRecyclerFragment$SpeedDialAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    iget-object p2, p2, Lcom/narvii/wallet/WalletRecyclerFragment;->couponListResponse:Lcom/narvii/wallet/CouponListResponse;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/narvii/wallet/CouponListResponse;->getCouponList()Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/narvii/wallet/WalletRecyclerFragment$SpeedDialAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    iget-object p2, p2, Lcom/narvii/wallet/WalletRecyclerFragment;->couponListResponse:Lcom/narvii/wallet/CouponListResponse;

    invoke-virtual {p2}, Lcom/narvii/wallet/CouponListResponse;->getCouponList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 520
    :goto_0
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0902f7

    invoke-static {v0, v1, p2}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;IZ)V

    .line 521
    iget-object p2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment$SpeedDialAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    iget-boolean v0, v0, Lcom/narvii/wallet/WalletRecyclerFragment;->businessCoinsEnabled:Z

    const v2, 0x7f090184

    invoke-static {p2, v2, v0}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;IZ)V

    .line 522
    iget-object p2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f090516

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 523
    iget-object p2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f090b22

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 524
    iget-object p2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 525
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    .line 514
    new-instance p2, Lcom/narvii/wallet/WalletRecyclerFragment$SpeedDialAdapter$SpeedDialViewHolder;

    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b06fc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/narvii/wallet/WalletRecyclerFragment$SpeedDialAdapter$SpeedDialViewHolder;-><init>(Lcom/narvii/wallet/WalletRecyclerFragment$SpeedDialAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method protected onSubviewClick(Landroid/view/View;Z)Z
    .locals 4

    if-eqz p1, :cond_0

    .line 548
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "My Wallet"

    const-string v2, "Source"

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 566
    :sswitch_0
    const-class v0, Lcom/narvii/influencer/MySubscriptionListFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Wallet"

    .line 567
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 568
    invoke-virtual {p0, v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 563
    :sswitch_1
    const-class v0, Lcom/narvii/wallet/CoinHistoryFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 550
    :sswitch_2
    const-class v0, Lcom/narvii/monetization/coupons/CouponListFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 551
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 552
    invoke-virtual {p0, v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 556
    :sswitch_3
    const-class v0, Lcom/narvii/wallet/BusinessWalletFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 557
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 558
    iget-object v1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$SpeedDialAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    iget-wide v1, v1, Lcom/narvii/wallet/WalletRecyclerFragment;->totalBusinessCoinsFloat:D

    const-string v3, "totalBusinessBalance"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 559
    invoke-virtual {p0, v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->startActivity(Landroid/content/Intent;)V

    .line 573
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onSubviewClick(Landroid/view/View;Z)Z

    move-result p1

    return p1

    :sswitch_data_0
    .sparse-switch
        0x7f090184 -> :sswitch_3
        0x7f0902f7 -> :sswitch_2
        0x7f090516 -> :sswitch_1
        0x7f090b22 -> :sswitch_0
    .end sparse-switch
.end method
