.class Lcom/narvii/wallet/WalletRecyclerFragment$SpeedDialAdapter;
.super Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$SpeedDialAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method

.method public static safedk_NVRecyclerViewBaseAdapter_startActivity_bb7b074de95a221f82540c32a0a969c2(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->startActivity(Landroid/content/Intent;)V

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

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object p2, p0, Lcom/narvii/wallet/WalletRecyclerFragment$SpeedDialAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    .line 3
    .line 4
    iget-object p2, p2, Lcom/narvii/wallet/WalletRecyclerFragment;->couponListResponse:Lcom/narvii/wallet/CouponListResponse;

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/narvii/wallet/CouponListResponse;->getCouponList()Ljava/util/ArrayList;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    iget-object p2, p0, Lcom/narvii/wallet/WalletRecyclerFragment$SpeedDialAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    .line 15
    .line 16
    iget-object p2, p2, Lcom/narvii/wallet/WalletRecyclerFragment;->couponListResponse:Lcom/narvii/wallet/CouponListResponse;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Lcom/narvii/wallet/CouponListResponse;->getCouponList()Ljava/util/ArrayList;

    .line 20
    move-result-object p2

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 24
    move-result p2

    .line 25
    .line 26
    if-nez p2, :cond_0

    .line 27
    const/4 p2, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p2, 0x0

    .line 30
    .line 31
    :goto_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 32
    .line 33
    .line 34
    const v1, 0x7f0a03ca

    .line 35
    .line 36
    .line 37
    invoke-static {v0, v1, p2}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;IZ)V

    .line 38
    .line 39
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 40
    .line 41
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment$SpeedDialAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    .line 42
    .line 43
    iget-boolean v0, v0, Lcom/narvii/wallet/WalletRecyclerFragment;->businessCoinsEnabled:Z

    .line 44
    .line 45
    .line 46
    const v2, 0x7f0a022e

    .line 47
    .line 48
    .line 49
    invoke-static {p2, v2, v0}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;IZ)V

    .line 50
    .line 51
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 52
    .line 53
    .line 54
    const v0, 0x7f0a0672

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    move-result-object p2

    .line 59
    .line 60
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    .line 65
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 66
    .line 67
    .line 68
    const v0, 0x7f0a0e07

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    move-result-object p2

    .line 73
    .line 74
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    .line 79
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 83
    move-result-object p2

    .line 84
    .line 85
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    .line 90
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 94
    move-result-object p1

    .line 95
    .line 96
    iget-object p2, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    new-instance p2, Lcom/narvii/wallet/WalletRecyclerFragment$SpeedDialAdapter$SpeedDialViewHolder;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    const v1, 0x7f0d07ad

    .line 16
    const/4 v2, 0x0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-direct {p2, p0, p1}, Lcom/narvii/wallet/WalletRecyclerFragment$SpeedDialAdapter$SpeedDialViewHolder;-><init>(Lcom/narvii/wallet/WalletRecyclerFragment$SpeedDialAdapter;Landroid/view/View;)V

    .line 24
    return-object p2
.end method

.method protected onSubviewClick(Landroid/view/View;Z)Z
    .locals 4

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 6
    move-result v0

    .line 7
    .line 8
    const-string v1, "My Wallet"

    .line 9
    .line 10
    const-string v2, "Source"

    .line 11
    .line 12
    .line 13
    sparse-switch v0, :sswitch_data_0

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :sswitch_0
    const-class v0, Lcom/narvii/influencer/MySubscriptionListFragment;

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    const-string v1, "Wallet"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    invoke-static {p0, v0}, Lcom/narvii/wallet/WalletRecyclerFragment$SpeedDialAdapter;->safedk_NVRecyclerViewBaseAdapter_startActivity_bb7b074de95a221f82540c32a0a969c2(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;Landroid/content/Intent;)V

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :sswitch_1
    const-class v0, Lcom/narvii/wallet/CoinHistoryFragment;

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-static {p0, v0}, Lcom/narvii/wallet/WalletRecyclerFragment$SpeedDialAdapter;->safedk_NVRecyclerViewBaseAdapter_startActivity_bb7b074de95a221f82540c32a0a969c2(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;Landroid/content/Intent;)V

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :sswitch_2
    const-class v0, Lcom/narvii/monetization/coupons/CouponListFragment;

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    invoke-static {p0, v0}, Lcom/narvii/wallet/WalletRecyclerFragment$SpeedDialAdapter;->safedk_NVRecyclerViewBaseAdapter_startActivity_bb7b074de95a221f82540c32a0a969c2(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;Landroid/content/Intent;)V

    .line 52
    goto :goto_0

    .line 53
    .line 54
    :sswitch_3
    const-class v0, Lcom/narvii/wallet/BusinessWalletFragment;

    .line 55
    .line 56
    .line 57
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    .line 63
    iget-object v1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$SpeedDialAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    .line 64
    .line 65
    iget-wide v1, v1, Lcom/narvii/wallet/WalletRecyclerFragment;->totalBusinessCoinsFloat:D

    .line 66
    .line 67
    .line 68
    const-string/jumbo v3, "totalBusinessBalance"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 72
    .line 73
    .line 74
    invoke-static {p0, v0}, Lcom/narvii/wallet/WalletRecyclerFragment$SpeedDialAdapter;->safedk_NVRecyclerViewBaseAdapter_startActivity_bb7b074de95a221f82540c32a0a969c2(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;Landroid/content/Intent;)V

    .line 75
    .line 76
    .line 77
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onSubviewClick(Landroid/view/View;Z)Z

    .line 78
    move-result p1

    .line 79
    return p1

    .line 80
    nop

    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    :sswitch_data_0
    .sparse-switch
        0x7f0a022e -> :sswitch_3
        0x7f0a03ca -> :sswitch_2
        0x7f0a0672 -> :sswitch_1
        0x7f0a0e07 -> :sswitch_0
    .end sparse-switch
.end method
