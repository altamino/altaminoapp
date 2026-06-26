.class Lcom/narvii/wallet/WalletRecyclerFragment$ProductAdapter;
.super Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;
.source "WalletRecyclerFragment.java"


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

    .line 1054
    iput-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$ProductAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    .line 1055
    invoke-direct {p0, p2}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;-><init>(Lcom/narvii/app/NVContext;)V

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

    .line 1103
    new-instance v0, Lcom/narvii/wallet/WalletRecyclerFragment$ProductAdapter$ProductDataSource;

    invoke-direct {v0, p0, p1}, Lcom/narvii/wallet/WalletRecyclerFragment$ProductAdapter$ProductDataSource;-><init>(Lcom/narvii/wallet/WalletRecyclerFragment$ProductAdapter;Lcom/narvii/app/NVContext;)V

    return-object v0
.end method

.method protected onBindItemViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .line 1065
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1066
    invoke-virtual {p0, p2}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItem(I)Lcom/narvii/model/NVObject;

    move-result-object p2

    check-cast p2, Lcom/narvii/wallet/Product;

    .line 1068
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f090562

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    iget-object v1, p2, Lcom/narvii/wallet/Product;->icon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 1069
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f090b9a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1070
    iget-object v1, p2, Lcom/narvii/wallet/Product;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1072
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f090b5b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1073
    iget-object v1, p2, Lcom/narvii/wallet/Product;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1075
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment$ProductAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    iget-object v0, v0, Lcom/narvii/wallet/WalletRecyclerFragment;->iabPurchaseManager:Lcom/narvii/wallet/IabPurchaseManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p2, p2, Lcom/narvii/wallet/Product;->skuList:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object p2, p2, v2

    invoke-virtual {v0, p2}, Lcom/narvii/wallet/IabPurchaseManager;->getSkuDetail(Ljava/lang/String;)Lcom/narvii/wallet/util/SkuDetails;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v1

    .line 1076
    :goto_0
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f0908e2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1078
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f0908c6

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez p2, :cond_1

    .line 1079
    iget-object p2, p0, Lcom/narvii/wallet/WalletRecyclerFragment$ProductAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    const v2, 0x7f0f0b7b

    invoke-virtual {p2, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/narvii/wallet/util/SkuDetails;->getPrice()Ljava/lang/String;

    move-result-object p2

    :goto_1
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1081
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0908e4

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/ThumbImageView;

    .line 1082
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f080826

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p1, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 1083
    invoke-virtual {p1, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    return-void
.end method

.method protected onCreateItemViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    .line 1060
    new-instance p2, Lcom/narvii/wallet/WalletRecyclerFragment$ProductAdapter$ProductViewHolder;

    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b06fb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/narvii/wallet/WalletRecyclerFragment$ProductAdapter$ProductViewHolder;-><init>(Lcom/narvii/wallet/WalletRecyclerFragment$ProductAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 1088
    instance-of v0, p3, Lcom/narvii/wallet/Product;

    if-eqz v0, :cond_1

    if-eqz p5, :cond_1

    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0908e2

    if-ne v0, v1, :cond_1

    .line 1089
    sget p1, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 p2, 0x65

    if-ne p1, p2, :cond_0

    .line 1090
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "wallet"

    invoke-static {p1, p2}, Lcom/narvii/wallet/GuidePurchaseToMasterDialog;->show(Landroid/content/Context;Ljava/lang/String;)Lcom/narvii/wallet/GuidePurchaseToMasterDialog;

    goto :goto_0

    .line 1092
    :cond_0
    check-cast p3, Lcom/narvii/wallet/Product;

    .line 1093
    iget-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$ProductAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    iget-object p1, p1, Lcom/narvii/wallet/WalletRecyclerFragment;->iabPurchaseManager:Lcom/narvii/wallet/IabPurchaseManager;

    invoke-virtual {p1, p3}, Lcom/narvii/wallet/IabPurchaseManager;->purchase(Lcom/narvii/wallet/Product;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    .line 1097
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
