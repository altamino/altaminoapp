.class Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "DrawerRightHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/drawer/DrawerRightHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SuggestedCommunityAdapter"
.end annotation


# instance fields
.field cell:Landroid/view/View;

.field recyclerAdapter:Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityRecyclerAdapter;

.field recyclerView:Landroid/support/v7/widget/RecyclerView;

.field shuffleSeed:J

.field final synthetic this$0:Lcom/narvii/drawer/DrawerRightHost;


# direct methods
.method public constructor <init>(Lcom/narvii/drawer/DrawerRightHost;)V
    .locals 2

    .line 728
    iput-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    .line 729
    iget-object p1, p1, Lcom/narvii/drawer/DrawerRightHost;->context:Lcom/narvii/app/NVContext;

    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 730
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->shuffleSeed:J

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 768
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    iget-object v0, v0, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->suggestList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    iget-object v0, v0, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->suggestList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 2

    .line 778
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 783
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->cell:Landroid/view/View;

    if-nez p1, :cond_1

    const p1, 0x7f0b01e0

    .line 784
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->cell:Landroid/view/View;

    .line 785
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->cell:Landroid/view/View;

    const p2, 0x7f09093c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 786
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->recyclerAdapter:Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityRecyclerAdapter;

    if-nez p1, :cond_0

    .line 787
    new-instance p1, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityRecyclerAdapter;

    iget-object p2, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    invoke-direct {p1, p2}, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityRecyclerAdapter;-><init>(Lcom/narvii/drawer/DrawerRightHost;)V

    iput-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->recyclerAdapter:Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityRecyclerAdapter;

    .line 789
    :cond_0
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz p1, :cond_1

    .line 790
    new-instance p2, Lcom/narvii/widget/LinearLayoutManagerWithSmoothScroller;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    const/4 v0, 0x0

    invoke-direct {p2, p3, v0, v0}, Lcom/narvii/widget/LinearLayoutManagerWithSmoothScroller;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 791
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object p2, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->recyclerAdapter:Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityRecyclerAdapter;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 795
    :cond_1
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->cell:Landroid/view/View;

    iget-object p2, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->updateCell(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;)V

    .line 797
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->cell:Landroid/view/View;

    return-object p1
.end method

.method prepare()V
    .locals 1

    .line 734
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    iget-object v0, v0, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->suggestList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    iget-object v0, v0, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->refreshSuggestCommunityRequest()V

    :cond_0
    return-void
.end method

.method public refresh(ILcom/narvii/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 820
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    iget-object p1, p1, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {p1}, Lcom/narvii/community/MyCommunityListService;->refreshSuggestCommunityRequest()V

    return-void
.end method

.method reset()V
    .locals 4

    const/4 v0, 0x0

    .line 747
    iput-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->cell:Landroid/view/View;

    .line 748
    iget-object v1, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 750
    :try_start_0
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 754
    :catch_0
    :cond_0
    iput-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 755
    iget-wide v0, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->shuffleSeed:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->shuffleSeed:J

    return-void
.end method

.method resumed()V
    .locals 6

    .line 740
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    iget-object v0, v0, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->suggestList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    iget-object v0, v0, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->suggestList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    iget-object v0, v0, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 741
    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->getSuggestRequestTime()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-wide v4, Lcom/narvii/drawer/DrawerRightHost;->REFRESH_SUGGEST_LIST_DURATION:J

    sub-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 742
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    iget-object v0, v0, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->refreshSuggestCommunityRequest()V

    :cond_0
    return-void
.end method

.method update()V
    .locals 2

    .line 759
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->cell:Landroid/view/View;

    if-nez v0, :cond_0

    .line 760
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 762
    :cond_0
    iget-object v1, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0, v0, v1}, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->updateCell(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;)V

    :goto_0
    return-void
.end method

.method updateCell(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;)V
    .locals 4

    .line 801
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 802
    iget-object v1, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    iget-object v1, v1, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {v1}, Lcom/narvii/community/MyCommunityListService;->suggestList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 803
    iget-object v1, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    iget-object v1, v1, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {v1}, Lcom/narvii/community/MyCommunityListService;->suggestList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 804
    new-instance v1, Ljava/util/Random;

    iget-wide v2, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->shuffleSeed:J

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    invoke-static {v0, v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    :cond_0
    if-nez p2, :cond_1

    return-void

    .line 809
    :cond_1
    iget-object v1, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    iget-object v1, v1, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {v1}, Lcom/narvii/community/MyCommunityListService;->suggestErrorMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 810
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    const p2, 0x7f0908cb

    .line 811
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/4 v2, 0x4

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    const p2, 0x7f0903fb

    .line 812
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 813
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 815
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->recyclerAdapter:Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityRecyclerAdapter;

    invoke-virtual {p1, v0}, Lcom/narvii/community/CommunityRecycleAdapter;->setCommunityListData(Ljava/util/List;)V

    return-void
.end method
