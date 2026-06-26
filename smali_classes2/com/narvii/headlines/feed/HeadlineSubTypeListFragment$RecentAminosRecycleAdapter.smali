.class Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$RecentAminosRecycleAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "HeadlineSubTypeListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecentAminosRecycleAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$RecentAminosRecycleAdapter$RecentAminoViewHolder;
    }
.end annotation


# instance fields
.field recentCommunities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Community;",
            ">;)V"
        }
    .end annotation

    .line 712
    iput-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$RecentAminosRecycleAdapter;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 713
    iput-object p2, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$RecentAminosRecycleAdapter;->recentCommunities:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 756
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$RecentAminosRecycleAdapter;->recentCommunities:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 723
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 6

    .line 734
    instance-of v0, p1, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$RecentAminosRecycleAdapter$RecentAminoViewHolder;

    if-eqz v0, :cond_6

    .line 735
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$RecentAminosRecycleAdapter;->recentCommunities:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/Community;

    .line 736
    move-object v0, p1

    check-cast v0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$RecentAminosRecycleAdapter$RecentAminoViewHolder;

    iget-object v1, v0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$RecentAminosRecycleAdapter$RecentAminoViewHolder;->communityIconView:Lcom/narvii/widget/CommunityIconView;

    iget-object v2, p2, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move-object v2, v1

    goto :goto_0

    .line 737
    :cond_0
    iget-object v2, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$RecentAminosRecycleAdapter;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    invoke-static {v2}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->access$2400(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/community/MyCommunityListService;

    move-result-object v2

    iget v3, p2, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v2, v3}, Lcom/narvii/community/MyCommunityListService;->getReminder(I)Lcom/narvii/community/ReminderCheck;

    move-result-object v2

    :goto_0
    const/4 v3, 0x0

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    .line 738
    :cond_1
    iget v4, v2, Lcom/narvii/community/ReminderCheck;->notificationsCount:I

    iget v2, v2, Lcom/narvii/community/ReminderCheck;->noticesCount:I

    add-int/2addr v2, v4

    .line 739
    :goto_1
    iget-object v4, v0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$RecentAminosRecycleAdapter$RecentAminoViewHolder;->tvBadge:Landroid/widget/TextView;

    if-lez v2, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    const/4 v5, 0x4

    :goto_2
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 740
    iget-object v4, v0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$RecentAminosRecycleAdapter$RecentAminoViewHolder;->tvBadge:Landroid/widget/TextView;

    const/16 v5, 0x9

    if-le v2, v5, :cond_3

    const-string v2, "9+"

    goto :goto_3

    :cond_3
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 741
    iget-object v2, v0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$RecentAminosRecycleAdapter$RecentAminoViewHolder;->tvTitle:Landroid/widget/TextView;

    if-nez p2, :cond_4

    goto :goto_4

    :cond_4
    iget-object v1, p2, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    :goto_4
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 742
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-nez p2, :cond_5

    const/16 v3, 0x8

    :cond_5
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 743
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 744
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$RecentAminosRecycleAdapter$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$RecentAminosRecycleAdapter$1;-><init>(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$RecentAminosRecycleAdapter;Lcom/narvii/model/Community;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 728
    iget-object p2, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$RecentAminosRecycleAdapter;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    invoke-virtual {p2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b032f

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 729
    new-instance p2, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$RecentAminosRecycleAdapter$RecentAminoViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$RecentAminosRecycleAdapter$RecentAminoViewHolder;-><init>(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$RecentAminosRecycleAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setRecentCommunities(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Community;",
            ">;)V"
        }
    .end annotation

    .line 717
    iput-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$RecentAminosRecycleAdapter;->recentCommunities:Ljava/util/List;

    .line 718
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
