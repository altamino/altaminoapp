.class Lcom/narvii/wallet/WalletRecyclerFragment$OfferVideoAdapter$OfferVideoViewHolder;
.super Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder;
.source "WalletRecyclerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/wallet/WalletRecyclerFragment$OfferVideoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OfferVideoViewHolder"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/wallet/WalletRecyclerFragment$OfferVideoAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/wallet/WalletRecyclerFragment$OfferVideoAdapter;Landroid/view/View;)V
    .locals 0

    .line 651
    iput-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$OfferVideoAdapter$OfferVideoViewHolder;->this$1:Lcom/narvii/wallet/WalletRecyclerFragment$OfferVideoAdapter;

    .line 652
    invoke-direct {p0, p2}, Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 653
    iget-object p1, p1, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
