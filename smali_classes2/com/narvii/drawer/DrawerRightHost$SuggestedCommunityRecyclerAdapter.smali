.class Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityRecyclerAdapter;
.super Lcom/narvii/community/CommunityRecycleAdapter;
.source "DrawerRightHost.java"


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

    .line 825
    iput-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityRecyclerAdapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    .line 826
    iget-object p1, p1, Lcom/narvii/drawer/DrawerRightHost;->context:Lcom/narvii/app/NVContext;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/narvii/community/CommunityRecycleAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/util/List;)V

    const/4 p1, 0x1

    .line 827
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    return-void
.end method


# virtual methods
.method protected itemLayoutId()I
    .locals 1

    const v0, 0x7f0b05ee

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 846
    invoke-super {p0, p1, p2}, Lcom/narvii/community/CommunityRecycleAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 847
    instance-of p2, p1, Lcom/narvii/community/CommunityRecycleAdapter$GalleryViewHolder;

    if-eqz p2, :cond_0

    .line 848
    check-cast p1, Lcom/narvii/community/CommunityRecycleAdapter$GalleryViewHolder;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f090b5b

    .line 849
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 850
    instance-of p2, p1, Landroid/widget/TextView;

    if-eqz p2, :cond_0

    .line 851
    check-cast p1, Landroid/widget/TextView;

    const/high16 p2, 0x41300000    # 11.0f

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_0
    return-void
.end method

.method protected onItemClick(Lcom/narvii/model/Community;)V
    .locals 2

    .line 837
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityRecyclerAdapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    iget-object v0, v0, Lcom/narvii/drawer/DrawerRightHost;->activity:Landroid/app/Activity;

    instance-of v1, v0, Lcom/narvii/app/NVContext;

    if-eqz v1, :cond_0

    .line 838
    new-instance v1, Lcom/narvii/master/CommunityHelper;

    check-cast v0, Lcom/narvii/app/NVContext;

    invoke-direct {v1, v0}, Lcom/narvii/master/CommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityRecyclerAdapter;->statisticsSource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/narvii/master/CommunityHelper;->source(Ljava/lang/String;)Lcom/narvii/master/CommunityHelper;

    move-result-object v0

    .line 839
    invoke-virtual {v0, p1}, Lcom/narvii/master/CommunityHelper;->communityDetail(Lcom/narvii/model/Community;)V

    .line 840
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityRecyclerAdapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, v0, v1}, Lcom/narvii/drawer/DrawerRightHost;->removeLaunchSplashAndCloseDrawer(J)V

    :cond_0
    return-void
.end method

.method protected statisticsSource()Ljava/lang/String;
    .locals 1

    const-string v0, "Right Side Panel"

    return-object v0
.end method
