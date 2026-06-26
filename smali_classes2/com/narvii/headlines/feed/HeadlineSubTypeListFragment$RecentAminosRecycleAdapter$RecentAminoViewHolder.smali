.class Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$RecentAminosRecycleAdapter$RecentAminoViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "HeadlineSubTypeListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$RecentAminosRecycleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecentAminoViewHolder"
.end annotation


# instance fields
.field communityIconView:Lcom/narvii/widget/CommunityIconView;

.field final synthetic this$1:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$RecentAminosRecycleAdapter;

.field tvBadge:Landroid/widget/TextView;

.field tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$RecentAminosRecycleAdapter;Landroid/view/View;)V
    .locals 0

    .line 766
    iput-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$RecentAminosRecycleAdapter$RecentAminoViewHolder;->this$1:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$RecentAminosRecycleAdapter;

    .line 767
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090562

    .line 768
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/CommunityIconView;

    iput-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$RecentAminosRecycleAdapter$RecentAminoViewHolder;->communityIconView:Lcom/narvii/widget/CommunityIconView;

    const p1, 0x7f090115

    .line 769
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$RecentAminosRecycleAdapter$RecentAminoViewHolder;->tvBadge:Landroid/widget/TextView;

    const p1, 0x7f090b9a

    .line 770
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$RecentAminosRecycleAdapter$RecentAminoViewHolder;->tvTitle:Landroid/widget/TextView;

    return-void
.end method
