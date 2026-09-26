.class Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$RecentAminosRecycleAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$RecentAminosRecycleAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$RecentAminosRecycleAdapter;

.field final synthetic val$community:Lcom/narvii/model/Community;

.field final synthetic val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;


# direct methods
.method constructor <init>(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$RecentAminosRecycleAdapter;Lcom/narvii/model/Community;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$RecentAminosRecycleAdapter$1;->this$1:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$RecentAminosRecycleAdapter;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$RecentAminosRecycleAdapter$1;->val$community:Lcom/narvii/model/Community;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$RecentAminosRecycleAdapter$1;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$RecentAminosRecycleAdapter$1;->this$1:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$RecentAminosRecycleAdapter;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$RecentAminosRecycleAdapter;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    .line 5
    .line 6
    new-instance v0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$MyLaunchHelper;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p1, p1}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$MyLaunchHelper;-><init>(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;Lcom/narvii/app/NVContext;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1, v0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->I(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$MyLaunchHelper;)V

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$RecentAminosRecycleAdapter$1;->this$1:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$RecentAminosRecycleAdapter;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$RecentAminosRecycleAdapter;->this$0:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->y(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$MyLaunchHelper;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$RecentAminosRecycleAdapter$1;->val$community:Lcom/narvii/model/Community;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$RecentAminosRecycleAdapter$1;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 25
    .line 26
    check-cast v1, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$RecentAminosRecycleAdapter$RecentAminoViewHolder;

    .line 27
    .line 28
    iget-object v1, v1, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$RecentAminosRecycleAdapter$RecentAminoViewHolder;->communityIconView:Lcom/narvii/widget/CommunityIconView;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0, v1}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$MyLaunchHelper;->launchRecent(Lcom/narvii/model/Community;Lcom/narvii/widget/NVImageView;)V

    .line 32
    return-void
.end method
