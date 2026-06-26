.class Lcom/narvii/wallet/WalletRecyclerFragment$OfferWallAdapter;
.super Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
.source "WalletRecyclerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/wallet/WalletRecyclerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OfferWallAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/wallet/WalletRecyclerFragment$OfferWallAdapter$OfferWallViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/wallet/WalletRecyclerFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/wallet/WalletRecyclerFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 662
    iput-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$OfferWallAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    .line 663
    invoke-direct {p0, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .line 674
    iget-object p2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 675
    iget-object p2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f090b5b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v0, 0x7f0f0715

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 678
    iget-object p2, p0, Lcom/narvii/wallet/WalletRecyclerFragment$OfferWallAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f090562

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVDrawableAnimatedView;

    const v1, 0x7f080167

    const v2, 0x7f080168

    invoke-static {p2, v0, v1, v2}, Lcom/narvii/wallet/WalletRecyclerFragment;->access$1700(Lcom/narvii/wallet/WalletRecyclerFragment;Lcom/narvii/widget/NVDrawableAnimatedView;II)V

    .line 681
    iget-object p2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0908cb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 682
    iget-object p2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f090232

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 683
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f090270

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    .line 669
    new-instance p2, Lcom/narvii/wallet/WalletRecyclerFragment$OfferWallAdapter$OfferWallViewHolder;

    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b06ed

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/narvii/wallet/WalletRecyclerFragment$OfferWallAdapter$OfferWallViewHolder;-><init>(Lcom/narvii/wallet/WalletRecyclerFragment$OfferWallAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method protected onSubviewClick(Landroid/view/View;Z)Z
    .locals 0

    .line 695
    iget-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$OfferWallAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    invoke-static {}, Lcom/narvii/wallet/WalletRecyclerFragment;->access$1800()Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p1, Lcom/narvii/wallet/WalletRecyclerFragment;->pendingAction:Ljava/lang/Object;

    .line 696
    iget-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$OfferWallAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    invoke-static {p1}, Lcom/narvii/wallet/WalletRecyclerFragment;->access$1600(Lcom/narvii/wallet/WalletRecyclerFragment;)V

    const/4 p1, 0x1

    return p1
.end method
