.class Lcom/narvii/wallet/WalletRecyclerFragment$ProductAdapter;
.super Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/wallet/WalletRecyclerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProductAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/wallet/WalletRecyclerFragment$ProductAdapter$ProductViewHolder;,
        Lcom/narvii/wallet/WalletRecyclerFragment$ProductAdapter$ProductDataSource;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter<",
        "Lcom/narvii/wallet/Product;",
        "Lcom/narvii/wallet/ProductListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/wallet/WalletRecyclerFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/wallet/WalletRecyclerFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$ProductAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method


# virtual methods
.method public createPageDataSource(Lcom/narvii/app/NVContext;)Lcom/narvii/paging/source/PageDataSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")",
            "Lcom/narvii/paging/source/PageDataSource<",
            "Lcom/narvii/wallet/Product;",
            "Lcom/narvii/wallet/ProductListResponse;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/wallet/WalletRecyclerFragment$ProductAdapter$ProductDataSource;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p1}, Lcom/narvii/wallet/WalletRecyclerFragment$ProductAdapter$ProductDataSource;-><init>(Lcom/narvii/wallet/WalletRecyclerFragment$ProductAdapter;Lcom/narvii/app/NVContext;)V

    .line 6
    return-object v0
.end method

.method protected onBindItemViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p2}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItem(I)Lcom/narvii/model/NVObject;

    .line 11
    move-result-object p2

    .line 12
    .line 13
    check-cast p2, Lcom/narvii/wallet/Product;

    .line 14
    .line 15
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 16
    .line 17
    .line 18
    const v1, 0x7f0a06d5

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 25
    .line 26
    iget-object v1, p2, Lcom/narvii/wallet/Product;->icon:Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 30
    .line 31
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 32
    .line 33
    .line 34
    const v1, 0x7f0a0e9e

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    check-cast v0, Landroid/widget/TextView;

    .line 41
    .line 42
    iget-object v1, p2, Lcom/narvii/wallet/Product;->title:Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    .line 47
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 48
    .line 49
    .line 50
    const v1, 0x7f0a0e51

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    check-cast v0, Landroid/widget/TextView;

    .line 57
    .line 58
    iget-object v1, p2, Lcom/narvii/wallet/Product;->description:Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 64
    .line 65
    .line 66
    const v1, 0x7f0a0ba1

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    iget-object v1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    .line 77
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 78
    .line 79
    .line 80
    const v1, 0x7f0a0b85

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 84
    move-result-object v0

    .line 85
    .line 86
    check-cast v0, Landroid/widget/TextView;

    .line 87
    .line 88
    iget-object v1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$ProductAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    .line 89
    .line 90
    .line 91
    invoke-static {v1}, Lcom/narvii/wallet/WalletRecyclerFragment;->y(Lcom/narvii/wallet/WalletRecyclerFragment;)Lcom/narvii/wallet/CoinBillingManager;

    .line 92
    move-result-object v1

    .line 93
    .line 94
    iget-object p2, p2, Lcom/narvii/wallet/Product;->skuList:[Ljava/lang/String;

    .line 95
    const/4 v2, 0x0

    .line 96
    .line 97
    aget-object p2, p2, v2

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, p2}, Lcom/narvii/wallet/CoinBillingManager;->getSkuDetails(Ljava/lang/String;)Lcom/android/billingclient/api/SkuDetails;

    .line 101
    move-result-object p2

    .line 102
    .line 103
    if-nez p2, :cond_0

    .line 104
    .line 105
    iget-object p2, p0, Lcom/narvii/wallet/WalletRecyclerFragment$ProductAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    .line 106
    .line 107
    .line 108
    const v1, 0x7f120c7f

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 112
    move-result-object p2

    .line 113
    goto :goto_0

    .line 114
    .line 115
    .line 116
    :cond_0
    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->a()Ljava/lang/String;

    .line 117
    move-result-object p2

    .line 118
    .line 119
    .line 120
    :goto_0
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    .line 122
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 123
    .line 124
    .line 125
    const p2, 0x7f0a0ba3

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 129
    move-result-object p1

    .line 130
    .line 131
    check-cast p1, Lcom/narvii/widget/ThumbImageView;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    .line 135
    move-result-object p2

    .line 136
    .line 137
    .line 138
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 139
    move-result-object p2

    .line 140
    .line 141
    .line 142
    const v0, 0x7f080a3d

    .line 143
    .line 144
    .line 145
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 146
    move-result-object p2

    .line 147
    .line 148
    iput-object p2, p1, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 149
    const/4 p2, 0x0

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 153
    return-void
.end method

.method protected onCreateItemViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    new-instance p2, Lcom/narvii/wallet/WalletRecyclerFragment$ProductAdapter$ProductViewHolder;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    const v1, 0x7f0d07ac

    .line 14
    const/4 v2, 0x0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-direct {p2, p0, p1}, Lcom/narvii/wallet/WalletRecyclerFragment$ProductAdapter$ProductViewHolder;-><init>(Lcom/narvii/wallet/WalletRecyclerFragment$ProductAdapter;Landroid/view/View;)V

    .line 22
    return-object p2
.end method

.method public onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/wallet/Product;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    if-eqz p5, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 10
    move-result v0

    .line 11
    .line 12
    .line 13
    const v1, 0x7f0a0ba1

    .line 14
    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$ProductAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Lcom/narvii/wallet/WalletRecyclerFragment;->y(Lcom/narvii/wallet/WalletRecyclerFragment;)Lcom/narvii/wallet/CoinBillingManager;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    iget-object p2, p0, Lcom/narvii/wallet/WalletRecyclerFragment$ProductAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 27
    move-result-object p2

    .line 28
    .line 29
    check-cast p3, Lcom/narvii/wallet/Product;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2, p3}, Lcom/narvii/wallet/CoinBillingManager;->purchaseInAppProduct(Landroid/app/Activity;Lcom/narvii/wallet/Product;)V

    .line 33
    const/4 p1, 0x1

    .line 34
    return p1

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 38
    move-result p1

    .line 39
    return p1
.end method
