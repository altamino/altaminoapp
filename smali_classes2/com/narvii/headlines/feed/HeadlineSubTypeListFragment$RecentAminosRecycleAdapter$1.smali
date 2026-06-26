.class Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$RecentAminosRecycleAdapter$1;
.super Ljava/lang/Object;
.source "HeadlineSubTypeListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$RecentAminosRecycleAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$RecentAminosRecycleAdapter;

.field final synthetic val$community:Lcom/narvii/model/Community;

.field final synthetic val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;


# direct methods
.method constructor <init>(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$RecentAminosRecycleAdapter;Lcom/narvii/model/Community;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 744
    iput-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$RecentAminosRecycleAdapter$1;->this$1:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$RecentAminosRecycleAdapter;

    iput-object p2, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$RecentAminosRecycleAdapter$1;->val$community:Lcom/narvii/model/Community;

    iput-object p3, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$RecentAminosRecycleAdapter$1;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 747
    iget-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$RecentAminosRecycleAdapter$1;->this$1:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$RecentAminosRecycleAdapter;

    iget-object p1, p1, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$RecentAminosRecycleAdapter;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    new-instance v0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$MyLaunchHelper;

    invoke-direct {v0, p1, p1}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$MyLaunchHelper;-><init>(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;Lcom/narvii/app/NVContext;)V

    invoke-static {p1, v0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->access$2502(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$MyLaunchHelper;)Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$MyLaunchHelper;

    .line 748
    iget-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$RecentAminosRecycleAdapter$1;->this$1:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$RecentAminosRecycleAdapter;

    iget-object p1, p1, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$RecentAminosRecycleAdapter;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    invoke-static {p1}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->access$2500(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$MyLaunchHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$RecentAminosRecycleAdapter$1;->val$community:Lcom/narvii/model/Community;

    iget-object v1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$RecentAminosRecycleAdapter$1;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    check-cast v1, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$RecentAminosRecycleAdapter$RecentAminoViewHolder;

    iget-object v1, v1, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$RecentAminosRecycleAdapter$RecentAminoViewHolder;->communityIconView:Lcom/narvii/widget/CommunityIconView;

    invoke-virtual {p1, v0, v1}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$MyLaunchHelper;->launchRecent(Lcom/narvii/model/Community;Lcom/narvii/widget/NVImageView;)V

    return-void
.end method
