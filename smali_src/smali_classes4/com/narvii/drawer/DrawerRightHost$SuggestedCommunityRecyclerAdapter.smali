.class Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityRecyclerAdapter;
.super Lcom/narvii/community/CommunityRecycleAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/drawer/DrawerRightHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SuggestedCommunityRecyclerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/drawer/DrawerRightHost;


# direct methods
.method public constructor <init>(Lcom/narvii/drawer/DrawerRightHost;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityRecyclerAdapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/drawer/DrawerRightHost;->context:Lcom/narvii/app/NVContext;

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1, v0}, Lcom/narvii/community/CommunityRecycleAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/util/List;)V

    .line 9
    const/4 p1, 0x1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 13
    return-void
.end method


# virtual methods
.method protected itemLayoutId()I
    .locals 1

    const v0, 0x7f0d06a2

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/community/CommunityRecycleAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 4
    .line 5
    instance-of p2, p1, Lcom/narvii/community/CommunityRecycleAdapter$GalleryViewHolder;

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    check-cast p1, Lcom/narvii/community/CommunityRecycleAdapter$GalleryViewHolder;

    .line 10
    .line 11
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 12
    .line 13
    .line 14
    const p2, 0x7f0a0e51

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    instance-of p2, p1, Landroid/widget/TextView;

    .line 21
    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    check-cast p1, Landroid/widget/TextView;

    .line 25
    .line 26
    const/high16 p2, 0x41300000    # 11.0f

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 30
    :cond_0
    return-void
.end method

.method protected onItemClick(Lcom/narvii/model/Community;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityRecyclerAdapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/drawer/DrawerRightHost;->activity:Landroid/app/Activity;

    .line 5
    .line 6
    instance-of v1, v0, Lcom/narvii/app/NVContext;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    new-instance v1, Lcom/narvii/master/CommunityHelper;

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/app/NVContext;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v0}, Lcom/narvii/master/CommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityRecyclerAdapter;->statisticsSource()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v0}, Lcom/narvii/master/CommunityHelper;->source(Ljava/lang/String;)Lcom/narvii/master/CommunityHelper;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/narvii/master/CommunityHelper;->communityDetail(Lcom/narvii/model/Community;)V

    .line 27
    .line 28
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityRecyclerAdapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    .line 29
    .line 30
    const-wide/16 v0, 0x1388

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0, v1}, Lcom/narvii/drawer/DrawerRightHost;->removeLaunchSplashAndCloseDrawer(J)V

    .line 34
    :cond_0
    return-void
.end method

.method protected statisticsSource()Ljava/lang/String;
    .locals 1

    const-string v0, "Right Side Panel"

    return-object v0
.end method
