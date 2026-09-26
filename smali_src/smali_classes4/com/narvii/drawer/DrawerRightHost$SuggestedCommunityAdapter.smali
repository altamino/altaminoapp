.class Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


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

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field shuffleSeed:J

.field final synthetic this$0:Lcom/narvii/drawer/DrawerRightHost;


# direct methods
.method public constructor <init>(Lcom/narvii/drawer/DrawerRightHost;)V
    .locals 2

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/drawer/DrawerRightHost;->context:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    move-result-wide v0

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->shuffleSeed:J

    .line 14
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->suggestList()Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->suggestList()Ljava/util/List;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 22
    move-result v0

    .line 23
    .line 24
    if-lez v0, :cond_0

    .line 25
    const/4 v0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 4
    move-result p1

    .line 5
    int-to-long v0, p1

    .line 6
    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->cell:Landroid/view/View;

    .line 3
    .line 4
    if-nez p1, :cond_1

    .line 5
    .line 6
    .line 7
    const p1, 0x7f0d01ff

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    iput-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->cell:Landroid/view/View;

    .line 14
    .line 15
    .line 16
    const p2, 0x7f0a0bfa

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 25
    .line 26
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->recyclerAdapter:Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityRecyclerAdapter;

    .line 27
    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    new-instance p1, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityRecyclerAdapter;

    .line 31
    .line 32
    iget-object p2, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    .line 33
    .line 34
    .line 35
    invoke-direct {p1, p2}, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityRecyclerAdapter;-><init>(Lcom/narvii/drawer/DrawerRightHost;)V

    .line 36
    .line 37
    iput-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->recyclerAdapter:Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityRecyclerAdapter;

    .line 38
    .line 39
    :cond_0
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 40
    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    new-instance p2, Lcom/narvii/widget/LinearLayoutManagerWithSmoothScroller;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 47
    move-result-object p3

    .line 48
    const/4 v0, 0x0

    .line 49
    .line 50
    .line 51
    invoke-direct {p2, p3, v0, v0}, Lcom/narvii/widget/LinearLayoutManagerWithSmoothScroller;-><init>(Landroid/content/Context;IZ)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 55
    .line 56
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 57
    .line 58
    iget-object p2, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->recyclerAdapter:Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityRecyclerAdapter;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 62
    .line 63
    :cond_1
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->cell:Landroid/view/View;

    .line 64
    .line 65
    iget-object p2, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->updateCell(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 69
    .line 70
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->cell:Landroid/view/View;

    .line 71
    return-object p1
.end method

.method prepare()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->suggestList()Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->refreshSuggestCommunityRequest()V

    .line 18
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

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/narvii/community/MyCommunityListService;->refreshSuggestCommunityRequest()V

    .line 8
    return-void
.end method

.method reset()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->cell:Landroid/view/View;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    const/4 v2, 0x0

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    :catch_0
    :cond_0
    iput-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 14
    .line 15
    iget-wide v0, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->shuffleSeed:J

    .line 16
    .line 17
    const-wide/16 v2, 0x1

    .line 18
    add-long/2addr v0, v2

    .line 19
    .line 20
    iput-wide v0, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->shuffleSeed:J

    .line 21
    return-void
.end method

.method resumed()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->suggestList()Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->suggestList()Ljava/util/List;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 22
    move-result v0

    .line 23
    .line 24
    if-lez v0, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->getSuggestRequestTime()J

    .line 32
    move-result-wide v0

    .line 33
    .line 34
    .line 35
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 36
    move-result-wide v2

    .line 37
    .line 38
    sget-wide v4, Lcom/narvii/drawer/DrawerRightHost;->REFRESH_SUGGEST_LIST_DURATION:J

    .line 39
    sub-long/2addr v2, v4

    .line 40
    .line 41
    cmp-long v0, v0, v2

    .line 42
    .line 43
    if-gez v0, :cond_0

    .line 44
    .line 45
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->refreshSuggestCommunityRequest()V

    .line 51
    :cond_0
    return-void
.end method

.method update()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->cell:Landroid/view/View;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 8
    goto :goto_0

    .line 9
    .line 10
    :cond_0
    iget-object v1, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0, v1}, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->updateCell(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 14
    :goto_0
    return-void
.end method

.method updateCell(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/narvii/community/MyCommunityListService;->suggestList()Ljava/util/List;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    .line 18
    .line 19
    iget-object v1, v1, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/narvii/community/MyCommunityListService;->suggestList()Ljava/util/List;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 27
    .line 28
    new-instance v1, Ljava/util/Random;

    .line 29
    .line 30
    iget-wide v2, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->shuffleSeed:J

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    .line 37
    .line 38
    :cond_0
    if-nez p2, :cond_1

    .line 39
    return-void

    .line 40
    .line 41
    :cond_1
    iget-object v1, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    .line 42
    .line 43
    iget-object v1, v1, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/narvii/community/MyCommunityListService;->suggestErrorMessage()Ljava/lang/String;

    .line 47
    move-result-object v1

    .line 48
    const/4 v2, 0x0

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 52
    .line 53
    .line 54
    const p2, 0x7f0a0b8a

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    move-result-object p2

    .line 59
    const/4 v2, 0x4

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 63
    .line 64
    .line 65
    const p2, 0x7f0a04fd

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 69
    move-result-object v3

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    check-cast p1, Landroid/widget/TextView;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    .line 83
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityAdapter;->recyclerAdapter:Lcom/narvii/drawer/DrawerRightHost$SuggestedCommunityRecyclerAdapter;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v0}, Lcom/narvii/community/CommunityRecycleAdapter;->setCommunityListData(Ljava/util/List;)V

    .line 87
    return-void
.end method
