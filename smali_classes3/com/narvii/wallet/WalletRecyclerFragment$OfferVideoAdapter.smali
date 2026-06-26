.class Lcom/narvii/wallet/WalletRecyclerFragment$OfferVideoAdapter;
.super Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
.source "WalletRecyclerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/wallet/WalletRecyclerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OfferVideoAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/wallet/WalletRecyclerFragment$OfferVideoAdapter$OfferVideoViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/wallet/WalletRecyclerFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/wallet/WalletRecyclerFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 584
    iput-object p1, p0, Lcom/narvii/wallet/WalletRecyclerFragment$OfferVideoAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    .line 585
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
    .locals 6

    .line 596
    iget-object p2, p0, Lcom/narvii/wallet/WalletRecyclerFragment$OfferVideoAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2, v0}, Lcom/narvii/wallet/WalletRecyclerFragment;->access$1202(Lcom/narvii/wallet/WalletRecyclerFragment;Landroid/view/View;)Landroid/view/View;

    .line 597
    iget-object p2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f090329

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 598
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment$OfferVideoAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    invoke-static {v0}, Lcom/narvii/wallet/WalletRecyclerFragment;->access$800(Lcom/narvii/wallet/WalletRecyclerFragment;)Lcom/narvii/wallet/AdsVideoStats;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment$OfferVideoAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    invoke-static {v0}, Lcom/narvii/wallet/WalletRecyclerFragment;->access$800(Lcom/narvii/wallet/WalletRecyclerFragment;)Lcom/narvii/wallet/AdsVideoStats;

    move-result-object v0

    iget v0, v0, Lcom/narvii/wallet/AdsVideoStats;->watchVideoMaxCount:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment$OfferVideoAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    invoke-static {v0}, Lcom/narvii/wallet/WalletRecyclerFragment;->access$800(Lcom/narvii/wallet/WalletRecyclerFragment;)Lcom/narvii/wallet/AdsVideoStats;

    move-result-object v0

    iget v0, v0, Lcom/narvii/wallet/AdsVideoStats;->watchedVideoCount:I

    if-eq v0, v2, :cond_0

    .line 599
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment$OfferVideoAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    const v2, 0x7f0f032a

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Lcom/narvii/wallet/WalletRecyclerFragment;->access$800(Lcom/narvii/wallet/WalletRecyclerFragment;)Lcom/narvii/wallet/AdsVideoStats;

    move-result-object v5

    iget v5, v5, Lcom/narvii/wallet/AdsVideoStats;->watchedVideoCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    iget-object v4, p0, Lcom/narvii/wallet/WalletRecyclerFragment$OfferVideoAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    invoke-static {v4}, Lcom/narvii/wallet/WalletRecyclerFragment;->access$800(Lcom/narvii/wallet/WalletRecyclerFragment;)Lcom/narvii/wallet/AdsVideoStats;

    move-result-object v4

    iget v4, v4, Lcom/narvii/wallet/AdsVideoStats;->watchVideoMaxCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const v0, 0x7f0f0329

    .line 601
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 603
    :goto_0
    iget-object p2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0904cb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 604
    iget-object v0, p0, Lcom/narvii/wallet/WalletRecyclerFragment$OfferVideoAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    invoke-static {v0}, Lcom/narvii/wallet/WalletRecyclerFragment;->access$1300(Lcom/narvii/wallet/WalletRecyclerFragment;)Z

    move-result v0

    invoke-static {p2, v0}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 605
    iget-object p2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f090773

    iget-object v2, p0, Lcom/narvii/wallet/WalletRecyclerFragment$OfferVideoAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    invoke-static {v2}, Lcom/narvii/wallet/WalletRecyclerFragment;->access$1300(Lcom/narvii/wallet/WalletRecyclerFragment;)Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-static {p2, v0, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;IZ)V

    .line 606
    iget-object p2, p0, Lcom/narvii/wallet/WalletRecyclerFragment$OfferVideoAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    invoke-static {p2}, Lcom/narvii/wallet/WalletRecyclerFragment;->access$1300(Lcom/narvii/wallet/WalletRecyclerFragment;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 607
    iget-object p2, p0, Lcom/narvii/wallet/WalletRecyclerFragment$OfferVideoAdapter;->this$0:Lcom/narvii/wallet/WalletRecyclerFragment;

    invoke-static {p2}, Lcom/narvii/wallet/WalletRecyclerFragment;->access$1400(Lcom/narvii/wallet/WalletRecyclerFragment;)J

    move-result-wide v0

    invoke-static {p2, v0, v1}, Lcom/narvii/wallet/WalletRecyclerFragment;->access$1500(Lcom/narvii/wallet/WalletRecyclerFragment;J)V

    .line 609
    :cond_1
    iget-object p2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    const v1, 0x7f090330

    invoke-static {p2, v1, v0}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;IZ)V

    .line 610
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    .line 591
    new-instance p2, Lcom/narvii/wallet/WalletRecyclerFragment$OfferVideoAdapter$OfferVideoViewHolder;

    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b06f7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/narvii/wallet/WalletRecyclerFragment$OfferVideoAdapter$OfferVideoViewHolder;-><init>(Lcom/narvii/wallet/WalletRecyclerFragment$OfferVideoAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method protected onSubviewClick(Landroid/view/View;Z)Z
    .locals 0

    const/4 p2, 0x1

    return p2
.end method
