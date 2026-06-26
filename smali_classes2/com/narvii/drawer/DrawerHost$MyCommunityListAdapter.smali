.class Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "DrawerHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/drawer/DrawerHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyCommunityListAdapter"
.end annotation


# instance fields
.field private fakeCommunityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation
.end field

.field private isFirstSetPosition:Z

.field final synthetic this$0:Lcom/narvii/drawer/DrawerHost;


# direct methods
.method public constructor <init>(Lcom/narvii/drawer/DrawerHost;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 2431
    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 2432
    invoke-direct {p0, p2}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 2428
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->fakeCommunityList:Ljava/util/List;

    const/4 p2, 0x1

    .line 2429
    iput-boolean p2, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->isFirstSetPosition:Z

    .line 2433
    iget-object p2, p1, Lcom/narvii/drawer/DrawerHost;->community:Lcom/narvii/community/CommunityService;

    iget p1, p1, Lcom/narvii/drawer/DrawerHost;->myCommunityId:I

    invoke-virtual {p2, p1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2435
    iget-object p2, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->fakeCommunityList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public errorMessage()Ljava/lang/String;
    .locals 1

    .line 2480
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->errorMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .line 2469
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-static {v0}, Lcom/narvii/drawer/DrawerHost;->access$1800(Lcom/narvii/drawer/DrawerHost;)Lcom/narvii/community/MyCommunityListService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->list()Ljava/util/List;

    move-result-object v0

    .line 2470
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-static {v1}, Lcom/narvii/drawer/DrawerHost;->access$1800(Lcom/narvii/drawer/DrawerHost;)Lcom/narvii/community/MyCommunityListService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/community/MyCommunityListService;->isEnd()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->fakeCommunityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_1
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    .line 2493
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-static {v0}, Lcom/narvii/drawer/DrawerHost;->access$1800(Lcom/narvii/drawer/DrawerHost;)Lcom/narvii/community/MyCommunityListService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->isEnd()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 2494
    invoke-static {v0}, Lcom/narvii/drawer/DrawerHost;->access$1800(Lcom/narvii/drawer/DrawerHost;)Lcom/narvii/community/MyCommunityListService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->fakeCommunityList:Ljava/util/List;

    .line 2495
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2496
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->fakeCommunityList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2498
    :cond_0
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-static {v0}, Lcom/narvii/drawer/DrawerHost;->access$1800(Lcom/narvii/drawer/DrawerHost;)Lcom/narvii/community/MyCommunityListService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->list()Ljava/util/List;

    move-result-object v0

    .line 2499
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 2500
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2502
    :cond_1
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-static {p1}, Lcom/narvii/drawer/DrawerHost;->access$1800(Lcom/narvii/drawer/DrawerHost;)Lcom/narvii/community/MyCommunityListService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/community/MyCommunityListService;->isEnd()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2503
    sget-object p1, Lcom/narvii/list/NVPagedAdapter;->LIST_END:Lcom/narvii/util/Tag;

    return-object p1

    .line 2504
    :cond_2
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-static {p1}, Lcom/narvii/drawer/DrawerHost;->access$1800(Lcom/narvii/drawer/DrawerHost;)Lcom/narvii/community/MyCommunityListService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/community/MyCommunityListService;->errorMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    .line 2505
    sget-object p1, Lcom/narvii/list/NVPagedAdapter;->LOADING:Lcom/narvii/util/Tag;

    return-object p1

    .line 2507
    :cond_3
    sget-object p1, Lcom/narvii/list/NVPagedAdapter;->ERROR:Lcom/narvii/util/Tag;

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 2544
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 2514
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    .line 2515
    instance-of v0, p1, Lcom/narvii/model/Community;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2517
    :cond_0
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->LIST_END:Lcom/narvii/util/Tag;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 2519
    :cond_1
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->LOADING:Lcom/narvii/util/Tag;

    if-ne p1, v0, :cond_2

    const/4 p1, 0x2

    return p1

    .line 2521
    :cond_2
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->ERROR:Lcom/narvii/util/Tag;

    if-ne p1, v0, :cond_3

    const/4 p1, 0x3

    return p1

    :cond_3
    const/4 p1, -0x1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 2554
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    .line 2555
    instance-of v0, p1, Lcom/narvii/model/Community;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 2556
    check-cast p1, Lcom/narvii/model/Community;

    const v0, 0x7f0b01dd

    .line 2557
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f090562

    .line 2558
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 2559
    instance-of v0, p3, Lcom/narvii/widget/CommunityIconView;

    if-eqz v0, :cond_0

    .line 2560
    check-cast p3, Lcom/narvii/widget/CommunityIconView;

    invoke-virtual {p3, p1}, Lcom/narvii/widget/CommunityIconView;->setCommunity(Lcom/narvii/model/Community;)V

    goto :goto_0

    .line 2561
    :cond_0
    instance-of v0, p3, Lcom/narvii/widget/NVImageView;

    if-eqz v0, :cond_1

    .line 2562
    check-cast p3, Lcom/narvii/widget/NVImageView;

    iget-object v0, p1, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 2564
    :cond_1
    :goto_0
    invoke-virtual {p0, p2, p1, v1}, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->updateRemindersInCell(Landroid/view/View;Lcom/narvii/model/Community;Z)V

    const p3, 0x7f090314

    .line 2565
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 2566
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget v0, v0, Lcom/narvii/drawer/DrawerHost;->myCommunityId:I

    iget p1, p1, Lcom/narvii/model/Community;->id:I

    const/4 v2, 0x0

    if-ne v0, p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    const/16 v2, 0x8

    .line 2567
    :goto_2
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2568
    iget-object p1, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2

    .line 2570
    :cond_4
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->LIST_END:Lcom/narvii/util/Tag;

    if-ne p1, v0, :cond_5

    const p1, 0x7f0b01de

    .line 2571
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 2572
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1

    .line 2574
    :cond_5
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->LOADING:Lcom/narvii/util/Tag;

    if-ne p1, v0, :cond_6

    const p1, 0x7f0b0359

    .line 2575
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 2576
    iget-object p2, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-static {p2}, Lcom/narvii/drawer/DrawerHost;->access$1800(Lcom/narvii/drawer/DrawerHost;)Lcom/narvii/community/MyCommunityListService;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/narvii/community/MyCommunityListService;->loadNextPage(Z)V

    return-object p1

    .line 2579
    :cond_6
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-static {p1}, Lcom/narvii/drawer/DrawerHost;->access$1800(Lcom/narvii/drawer/DrawerHost;)Lcom/narvii/community/MyCommunityListService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/community/MyCommunityListService;->errorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p2, p1}, Lcom/narvii/list/NVAdapter;->createErrorItem(Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 2475
    invoke-super {p0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2

    .line 2530
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 2531
    sget-object v1, Lcom/narvii/list/NVPagedAdapter;->LOADING:Lcom/narvii/util/Tag;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2533
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result p1

    return p1
.end method

.method public isListShown()Z
    .locals 1

    .line 2486
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-static {v0}, Lcom/narvii/drawer/DrawerHost;->access$1800(Lcom/narvii/drawer/DrawerHost;)Lcom/narvii/community/MyCommunityListService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->isEnd()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 2487
    invoke-static {v0}, Lcom/narvii/drawer/DrawerHost;->access$1800(Lcom/narvii/drawer/DrawerHost;)Lcom/narvii/community/MyCommunityListService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->fakeCommunityList:Ljava/util/List;

    .line 2488
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .line 2585
    instance-of v0, p3, Lcom/narvii/model/Community;

    if-eqz v0, :cond_3

    .line 2586
    check-cast p3, Lcom/narvii/model/Community;

    .line 2587
    iget p1, p3, Lcom/narvii/model/Community;->id:I

    iget-object p2, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget p5, p2, Lcom/narvii/drawer/DrawerHost;->myCommunityId:I

    const/4 v0, 0x1

    if-ne p1, p5, :cond_1

    .line 2588
    iget-object p1, p2, Lcom/narvii/drawer/DrawerHost;->activity:Landroid/app/Activity;

    instance-of p2, p1, Lcom/narvii/app/DrawerActivity;

    if-eqz p2, :cond_0

    .line 2589
    check-cast p1, Lcom/narvii/app/DrawerActivity;

    invoke-virtual {p1}, Lcom/narvii/app/DrawerActivity;->closeDrawers()V

    :cond_0
    return v0

    .line 2593
    :cond_1
    iget p1, p3, Lcom/narvii/model/Community;->status:I

    const/16 p5, 0x9

    if-ne p1, p5, :cond_2

    .line 2594
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    iget-object p2, p2, Lcom/narvii/drawer/DrawerHost;->activity:Landroid/app/Activity;

    invoke-direct {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const p2, 0x7f0f0108

    .line 2595
    invoke-virtual {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    const p2, 0x7f0f073e

    const/4 p3, 0x0

    .line 2596
    invoke-virtual {p1, p2, p3}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 2597
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    return v0

    .line 2600
    :cond_2
    new-instance p1, Lcom/narvii/drawer/DrawerHost$MyLaunchHelper;

    iget-object p5, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-direct {p1, p2, p5}, Lcom/narvii/drawer/DrawerHost$MyLaunchHelper;-><init>(Lcom/narvii/drawer/DrawerHost;Lcom/narvii/app/NVContext;)V

    iput-object p1, p2, Lcom/narvii/drawer/DrawerHost;->launchHelper:Lcom/narvii/drawer/DrawerHost$MyLaunchHelper;

    .line 2601
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget-object p1, p1, Lcom/narvii/drawer/DrawerHost;->launchHelper:Lcom/narvii/drawer/DrawerHost$MyLaunchHelper;

    const p2, 0x7f090562

    invoke-virtual {p4, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/NVImageView;

    const p5, 0x7f0908cb

    invoke-virtual {p4, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Lcom/narvii/widget/SmoothProgressBar;

    invoke-virtual {p1, p3, p2, p4}, Lcom/narvii/drawer/DrawerHost$MyLaunchHelper;->launchCommunity(Lcom/narvii/model/Community;Lcom/narvii/widget/NVImageView;Lcom/narvii/widget/SmoothProgressBar;)V

    return v0

    .line 2603
    :cond_3
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->LIST_END:Lcom/narvii/util/Tag;

    if-ne p3, v0, :cond_6

    .line 2605
    sget v0, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_4

    .line 2606
    const-class v0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 2608
    :cond_4
    const-class v0, Lcom/narvii/master/home/discover/DiscoverTabFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "__communityId"

    .line 2609
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2611
    :goto_0
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget-object v1, v1, Lcom/narvii/drawer/DrawerHost;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_5

    .line 2612
    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_5
    const/high16 v1, 0x10000000

    .line 2614
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2615
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    .line 2620
    :cond_6
    :goto_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method onResume()V
    .locals 6

    .line 2440
    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->isListShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2441
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-static {v0}, Lcom/narvii/drawer/DrawerHost;->access$1800(Lcom/narvii/drawer/DrawerHost;)Lcom/narvii/community/MyCommunityListService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/narvii/community/MyCommunityListService;->loadNextPage(Z)V

    goto :goto_0

    .line 2442
    :cond_0
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-static {v0}, Lcom/narvii/drawer/DrawerHost;->access$1800(Lcom/narvii/drawer/DrawerHost;)Lcom/narvii/community/MyCommunityListService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->getCommunityRequestTime()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-wide v4, Lcom/narvii/drawer/DrawerRightHost;->REFRESH_COMMUNITY_LIST_DURATION:J

    sub-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 2443
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-static {v0}, Lcom/narvii/drawer/DrawerHost;->access$1800(Lcom/narvii/drawer/DrawerHost;)Lcom/narvii/community/MyCommunityListService;

    move-result-object v0

    const/16 v1, 0x100

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/narvii/community/MyCommunityListService;->refresh(ILcom/narvii/util/Callback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public scrollToPosition()V
    .locals 5

    .line 2448
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget-object v1, v0, Lcom/narvii/drawer/DrawerHost;->communityListView:Lcom/narvii/widget/NVListView;

    if-eqz v1, :cond_5

    sget v1, Lcom/narvii/drawer/DrawerHost;->curCommunitySelectedPosition:I

    if-nez v1, :cond_5

    sget v1, Lcom/narvii/drawer/DrawerHost;->curCommunitySelectedOffset:I

    if-eqz v1, :cond_0

    goto :goto_2

    .line 2451
    :cond_0
    invoke-static {v0}, Lcom/narvii/drawer/DrawerHost;->access$1800(Lcom/narvii/drawer/DrawerHost;)Lcom/narvii/community/MyCommunityListService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->list()Ljava/util/List;

    move-result-object v0

    .line 2452
    iget-boolean v1, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->isFirstSetPosition:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    const/4 v1, 0x0

    .line 2454
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 2455
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/Community;

    .line 2456
    iget v3, v3, Lcom/narvii/model/Community;->id:I

    iget-object v4, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget v4, v4, Lcom/narvii/drawer/DrawerHost;->myCommunityId:I

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 2461
    :goto_1
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost;->communityListView:Lcom/narvii/widget/NVListView;

    add-int/lit8 v3, v1, -0x3

    if-lez v3, :cond_3

    move v1, v3

    :cond_3
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 2462
    iput-boolean v2, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->isFirstSetPosition:Z

    .line 2464
    :cond_4
    iput-boolean v2, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->isFirstSetPosition:Z

    :cond_5
    :goto_2
    return-void
.end method

.method updateRemindersInCell(Landroid/view/View;Lcom/narvii/model/Community;Z)V
    .locals 6

    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2624
    :cond_0
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-static {v0}, Lcom/narvii/drawer/DrawerHost;->access$1800(Lcom/narvii/drawer/DrawerHost;)Lcom/narvii/community/MyCommunityListService;

    move-result-object v0

    iget v1, p2, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v0, v1}, Lcom/narvii/community/MyCommunityListService;->getReminder(I)Lcom/narvii/community/ReminderCheck;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    if-nez p2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    .line 2625
    :cond_1
    iget-object v2, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-static {v2}, Lcom/narvii/drawer/DrawerHost;->access$1900(Lcom/narvii/drawer/DrawerHost;)Lcom/narvii/chat/core/ChatService;

    move-result-object v2

    iget v3, p2, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v2, v3}, Lcom/narvii/chat/core/ChatService;->getUnreadChatCountInCurCommunity(I)I

    move-result v2

    :goto_1
    if-nez v0, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    .line 2626
    :cond_2
    iget v3, v0, Lcom/narvii/community/ReminderCheck;->notificationsCount:I

    iget v4, v0, Lcom/narvii/community/ReminderCheck;->noticesCount:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 2628
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const v4, 0x7f09078e

    .line 2629
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 2631
    instance-of v4, p1, Landroid/widget/TextView;

    if-eqz v4, :cond_4

    .line 2632
    move-object v4, p1

    check-cast v4, Landroid/widget/TextView;

    const/16 v5, 0x9

    if-le v2, v5, :cond_3

    const-string v5, "9+"

    goto :goto_3

    :cond_3
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    :goto_3
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    if-nez v3, :cond_5

    .line 2635
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    :cond_5
    if-lez v2, :cond_7

    if-eqz v3, :cond_6

    .line 2638
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_6

    .line 2639
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f010029

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2641
    :cond_6
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_7
    if-eqz v3, :cond_8

    .line 2643
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_8

    .line 2644
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f01002b

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_8
    const/16 v1, 0x8

    .line 2646
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    :goto_4
    if-eqz p3, :cond_b

    if-eqz p2, :cond_b

    if-eqz v0, :cond_a

    .line 2649
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-static {p1}, Lcom/narvii/drawer/DrawerHost;->access$1800(Lcom/narvii/drawer/DrawerHost;)Lcom/narvii/community/MyCommunityListService;

    move-result-object p1

    iget p3, p2, Lcom/narvii/model/Community;->id:I

    invoke-virtual {p1, p3}, Lcom/narvii/community/MyCommunityListService;->getReminderRequestTime(I)J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-wide v4, Lcom/narvii/drawer/DrawerRightHost;->REMINDER_CHECK_DURATION:J

    sub-long/2addr v2, v4

    cmp-long p1, v0, v2

    if-gez p1, :cond_b

    .line 2650
    :cond_a
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-static {p1}, Lcom/narvii/drawer/DrawerHost;->access$1800(Lcom/narvii/drawer/DrawerHost;)Lcom/narvii/community/MyCommunityListService;

    move-result-object p1

    iget p3, p2, Lcom/narvii/model/Community;->id:I

    invoke-virtual {p1, p3}, Lcom/narvii/community/MyCommunityListService;->addReminderRequestQueue(I)V

    :cond_b
    if-eqz p2, :cond_c

    .line 2652
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget-object p1, p1, Lcom/narvii/drawer/DrawerHost;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 2653
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$MyCommunityListAdapter;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-static {p1}, Lcom/narvii/drawer/DrawerHost;->access$1900(Lcom/narvii/drawer/DrawerHost;)Lcom/narvii/chat/core/ChatService;

    move-result-object p1

    iget p2, p2, Lcom/narvii/model/Community;->id:I

    invoke-virtual {p1, p2}, Lcom/narvii/chat/core/ChatService;->addThreadCheckQueue(I)V

    :cond_c
    return-void
.end method
