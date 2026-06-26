.class Lcom/narvii/wallet/MembershipMainRecyclerFragment$Adapter;
.super Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;
.source "MembershipMainRecyclerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/wallet/MembershipMainRecyclerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/wallet/MembershipMainRecyclerFragment$Adapter$PrivilegeViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/paging/adapter/NVRecyclerViewAdapter<",
        "Lcom/narvii/wallet/MembershipMainRecyclerFragment$Privileges;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/wallet/MembershipMainRecyclerFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/wallet/MembershipMainRecyclerFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 540
    iput-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$Adapter;->this$0:Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    .line 541
    invoke-direct {p0, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public createDataSource(Lcom/narvii/app/NVContext;)Lcom/narvii/paging/source/DataSource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")",
            "Lcom/narvii/paging/source/DataSource<",
            "Lcom/narvii/wallet/MembershipMainRecyclerFragment$Privileges;",
            ">;"
        }
    .end annotation

    .line 546
    new-instance v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$PrivilegeDataSource;

    iget-object v1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$Adapter;->this$0:Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    invoke-direct {v0, v1, p1}, Lcom/narvii/wallet/MembershipMainRecyclerFragment$PrivilegeDataSource;-><init>(Lcom/narvii/wallet/MembershipMainRecyclerFragment;Lcom/narvii/app/NVContext;)V

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 565
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    invoke-virtual {v0}, Lcom/narvii/paging/source/DataSource;->getSize()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 557
    invoke-virtual {p0, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->getItem(I)Lcom/narvii/model/NVObject;

    move-result-object p2

    check-cast p2, Lcom/narvii/wallet/MembershipMainRecyclerFragment$Privileges;

    .line 558
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f090562

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget v1, p2, Lcom/narvii/wallet/MembershipMainRecyclerFragment$Privileges;->icon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 559
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f090b9a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p2, Lcom/narvii/wallet/MembershipMainRecyclerFragment$Privileges;->title:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 560
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f090b5b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget p2, p2, Lcom/narvii/wallet/MembershipMainRecyclerFragment$Privileges;->content:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    .line 552
    new-instance p2, Lcom/narvii/wallet/MembershipMainRecyclerFragment$Adapter$PrivilegeViewHolder;

    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0515

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/narvii/wallet/MembershipMainRecyclerFragment$Adapter$PrivilegeViewHolder;-><init>(Lcom/narvii/wallet/MembershipMainRecyclerFragment$Adapter;Landroid/view/View;)V

    return-object p2
.end method
