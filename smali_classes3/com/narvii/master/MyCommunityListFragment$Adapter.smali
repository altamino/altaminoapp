.class Lcom/narvii/master/MyCommunityListFragment$Adapter;
.super Lcom/narvii/list/NVAdapter;
.source "MyCommunityListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/MyCommunityListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/MyCommunityListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/master/MyCommunityListFragment;)V
    .locals 1

    .line 723
    iput-object p1, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 724
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 725
    new-instance p1, Lcom/narvii/logging/Impression/DivideColumnImpressionCollector;

    const-class v0, Lcom/narvii/model/Community;

    invoke-direct {p1, v0}, Lcom/narvii/logging/Impression/DivideColumnImpressionCollector;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public errorMessage()Ljava/lang/String;
    .locals 1

    .line 759
    iget-object v0, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    iget-object v0, v0, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->errorMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "MyAminos"

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .line 748
    iget-object v0, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    iget-object v0, v0, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->rawList()Ljava/util/List;

    move-result-object v0

    .line 749
    iget-object v1, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    invoke-static {v1}, Lcom/narvii/master/MyCommunityListFragment;->access$200(Lcom/narvii/master/MyCommunityListFragment;)Lcom/narvii/account/AccountService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    .line 776
    iget-object v0, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    iget-object v0, v0, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->rawList()Ljava/util/List;

    move-result-object v0

    .line 777
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 778
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 780
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    iget-object p1, p1, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {p1}, Lcom/narvii/community/MyCommunityListService;->isEnd()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 781
    sget-object p1, Lcom/narvii/list/NVPagedAdapter;->LIST_END:Lcom/narvii/util/Tag;

    return-object p1

    .line 782
    :cond_1
    iget-object p1, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    iget-object p1, p1, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {p1}, Lcom/narvii/community/MyCommunityListService;->errorMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    .line 783
    sget-object p1, Lcom/narvii/list/NVPagedAdapter;->LOADING:Lcom/narvii/util/Tag;

    return-object p1

    .line 785
    :cond_2
    sget-object p1, Lcom/narvii/list/NVPagedAdapter;->ERROR:Lcom/narvii/util/Tag;

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 792
    invoke-virtual {p0, p1}, Lcom/narvii/master/MyCommunityListFragment$Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 810
    invoke-virtual {p0, p1}, Lcom/narvii/master/MyCommunityListFragment$Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    .line 811
    instance-of v0, p1, Lcom/narvii/model/Community;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 813
    :cond_0
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->LIST_END:Lcom/narvii/util/Tag;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 815
    :cond_1
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->LOADING:Lcom/narvii/util/Tag;

    if-ne p1, v0, :cond_2

    const/4 p1, 0x2

    return p1

    .line 817
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
    .locals 5

    .line 836
    invoke-virtual {p0, p1}, Lcom/narvii/master/MyCommunityListFragment$Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    .line 837
    instance-of v0, p1, Lcom/narvii/model/Community;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 838
    check-cast p1, Lcom/narvii/model/Community;

    const v0, 0x7f0b0356

    .line 839
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f090571

    .line 840
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/PromotionalImageView;

    .line 841
    iput-boolean v1, p3, Lcom/narvii/widget/PromotionalImageView;->showLaunchPage:Z

    .line 842
    iput-boolean v1, p3, Lcom/narvii/widget/PromotionalImageView;->preloadCachedImage:Z

    .line 843
    invoke-virtual {p3, p1}, Lcom/narvii/widget/PromotionalImageView;->setCommunity(Lcom/narvii/model/Community;)V

    const p3, 0x7f090562

    .line 844
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/CommunityIconView;

    .line 845
    iget-object v0, p1, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 846
    invoke-virtual {p1}, Lcom/narvii/model/Community;->themeColor()I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/narvii/widget/NVImageView;->setStrokeColor(I)V

    const p3, 0x7f090b9a

    .line 847
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 848
    iget-object v0, p1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 849
    invoke-static {p3}, Lcom/narvii/util/ViewUtils;->setMontserratExtraBoldTypeface(Landroid/widget/TextView;)V

    .line 851
    iget-object p3, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    iget-object p3, p3, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    iget v0, p1, Lcom/narvii/model/Community;->id:I

    invoke-virtual {p3, v0}, Lcom/narvii/community/MyCommunityListService;->getUserProfile(I)Lcom/narvii/model/User;

    move-result-object p3

    .line 853
    iget v0, p1, Lcom/narvii/model/Community;->status:I

    const/16 v2, 0x9

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 854
    :goto_0
    iget v2, p1, Lcom/narvii/model/Community;->probationStatus:I

    if-ne v2, v1, :cond_1

    if-eqz p3, :cond_1

    .line 855
    invoke-virtual {p3}, Lcom/narvii/model/User;->isLeader()Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p3, 0x1

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    :goto_1
    const v2, 0x7f0908c9

    .line 856
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x8

    if-nez v0, :cond_2

    if-eqz p3, :cond_2

    const/4 p3, 0x0

    goto :goto_2

    :cond_2
    const/16 p3, 0x8

    :goto_2
    invoke-virtual {v2, p3}, Landroid/view/View;->setVisibility(I)V

    const p3, 0x7f090359

    .line 857
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz v0, :cond_3

    const/4 v4, 0x0

    :cond_3
    invoke-virtual {p3, v4}, Landroid/view/View;->setVisibility(I)V

    const p3, 0x7f0908cb

    .line 859
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 860
    iget-object v0, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    iget-object v2, v0, Lcom/narvii/master/MyCommunityListFragment;->launchProgress:Lcom/narvii/widget/SmoothProgressBar;

    const/4 v4, 0x4

    if-ne p3, v2, :cond_5

    .line 861
    iget-object v0, v0, Lcom/narvii/master/MyCommunityListFragment;->launchCommunity:Lcom/narvii/model/Community;

    if-eqz v0, :cond_4

    iget v0, v0, Lcom/narvii/model/Community;->id:I

    iget v2, p1, Lcom/narvii/model/Community;->id:I

    if-eq v0, v2, :cond_4

    .line 862
    invoke-virtual {p3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 863
    iget-object p3, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    invoke-virtual {p3}, Lcom/narvii/master/MyCommunityListFragment;->cancelLaunch()V

    goto :goto_3

    .line 865
    :cond_4
    invoke-virtual {p3, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 868
    :cond_5
    invoke-virtual {p3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 871
    :goto_3
    iget-object p3, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    invoke-virtual {p3, p2, p1, v1}, Lcom/narvii/master/MyCommunityListFragment;->updateRemindersInCell(Landroid/view/View;Lcom/narvii/model/Community;Z)V

    .line 873
    iget-object p3, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    invoke-virtual {p3, p2, p1}, Lcom/narvii/master/MyCommunityListFragment;->updateThemeProgressInCell(Landroid/view/View;Lcom/narvii/model/Community;)V

    .line 875
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 877
    invoke-virtual {p0, p2, p1}, Lcom/narvii/list/NVAdapter;->tagCellForLog(Landroid/view/View;Ljava/lang/Object;)V

    return-object p2

    .line 879
    :cond_6
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->LIST_END:Lcom/narvii/util/Tag;

    if-ne p1, v0, :cond_7

    const p1, 0x7f0b0358

    .line 880
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 882
    :cond_7
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->LOADING:Lcom/narvii/util/Tag;

    if-ne p1, v0, :cond_8

    const p1, 0x7f0b0359

    .line 883
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 884
    iget-object p2, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    iget-object p2, p2, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {p2, v1}, Lcom/narvii/community/MyCommunityListService;->loadNextPage(Z)V

    return-object p1

    .line 887
    :cond_8
    iget-object p1, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    iget-object p1, p1, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

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

    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2

    .line 802
    invoke-virtual {p0, p1}, Lcom/narvii/master/MyCommunityListFragment$Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 803
    sget-object v1, Lcom/narvii/list/NVPagedAdapter;->LOADING:Lcom/narvii/util/Tag;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 805
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result p1

    return p1
.end method

.method public isListShown()Z
    .locals 1

    .line 770
    iget-object v0, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    iget-object v0, v0, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->isEnd()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    iget-object v0, v0, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->rawList()Ljava/util/List;

    move-result-object v0

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

.method public onErrorRetry()V
    .locals 1

    .line 764
    iget-object v0, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    iget-object v0, v0, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->retryRetry()V

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    .line 894
    instance-of v3, v1, Lcom/narvii/model/Community;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_5

    .line 895
    move-object v8, v1

    check-cast v8, Lcom/narvii/model/Community;

    .line 896
    iget-object v3, v0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    iget-object v6, v3, Lcom/narvii/master/MyCommunityListFragment;->launchCommunity:Lcom/narvii/model/Community;

    if-eqz v6, :cond_1

    .line 897
    iget v6, v6, Lcom/narvii/model/Community;->id:I

    iget v7, v8, Lcom/narvii/model/Community;->id:I

    if-ne v6, v7, :cond_0

    return v5

    .line 900
    :cond_0
    invoke-virtual {v3}, Lcom/narvii/master/MyCommunityListFragment;->cancelLaunch()V

    .line 903
    :cond_1
    iget v3, v8, Lcom/narvii/model/Community;->status:I

    const/16 v6, 0x9

    if-ne v3, v6, :cond_2

    .line 904
    new-instance v1, Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f0352

    .line 905
    invoke-virtual {v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    const v2, 0x7f0f0193

    const/4 v3, 0x0

    .line 906
    invoke-virtual {v1, v2, v3}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0f0acd

    .line 907
    new-instance v3, Lcom/narvii/master/MyCommunityListFragment$Adapter$1;

    invoke-direct {v3, v0, v8}, Lcom/narvii/master/MyCommunityListFragment$Adapter$1;-><init>(Lcom/narvii/master/MyCommunityListFragment$Adapter;Lcom/narvii/model/Community;)V

    invoke-virtual {v1, v2, v3}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 913
    invoke-virtual {v1}, Lcom/narvii/app/NVDialog;->show()V

    return v5

    .line 916
    :cond_2
    iget-object v3, v0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    const v6, 0x7f0908cb

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/narvii/widget/SmoothProgressBar;

    iput-object v6, v3, Lcom/narvii/master/MyCommunityListFragment;->launchProgress:Lcom/narvii/widget/SmoothProgressBar;

    .line 917
    iget-object v3, v0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    iget-object v3, v3, Lcom/narvii/master/MyCommunityListFragment;->launchProgress:Lcom/narvii/widget/SmoothProgressBar;

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 918
    iget-object v3, v0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    iget-object v3, v3, Lcom/narvii/master/MyCommunityListFragment;->launchProgress:Lcom/narvii/widget/SmoothProgressBar;

    const/16 v6, 0x64

    invoke-virtual {v3, v6}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 919
    iget-object v3, v0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    iget-object v3, v3, Lcom/narvii/master/MyCommunityListFragment;->launchProgress:Lcom/narvii/widget/SmoothProgressBar;

    invoke-virtual {v3, v4}, Lcom/narvii/widget/SmoothProgressBar;->setProgress(I)V

    .line 921
    sget-object v3, Lcom/narvii/logging/ActSemantic;->aminoEnter:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {v0, v1, v3}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 923
    iget-object v1, v0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    const v3, 0x7f090571

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/narvii/widget/NVImageView;

    iput-object v2, v1, Lcom/narvii/master/MyCommunityListFragment;->launchImageView:Lcom/narvii/widget/NVImageView;

    .line 924
    iget-object v1, v0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    iput-object v8, v1, Lcom/narvii/master/MyCommunityListFragment;->launchCommunity:Lcom/narvii/model/Community;

    .line 925
    iget-object v1, v1, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    iget v2, v8, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v1, v2}, Lcom/narvii/community/MyCommunityListService;->getCommunityTimestamp(I)Ljava/lang/String;

    move-result-object v9

    .line 926
    iget-object v1, v0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    iget-object v1, v1, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    iget v2, v8, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v1, v2}, Lcom/narvii/community/MyCommunityListService;->getUserProfile(I)Lcom/narvii/model/User;

    move-result-object v10

    .line 927
    iget-object v1, v0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    iget-object v1, v1, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    iget v2, v8, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v1, v2}, Lcom/narvii/community/MyCommunityListService;->getUserInfoTimestamp(I)Ljava/lang/String;

    move-result-object v11

    .line 928
    iget-object v1, v0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    iget-object v1, v1, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    iget v2, v8, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v1, v2}, Lcom/narvii/community/MyCommunityListService;->getReminder(I)Lcom/narvii/community/ReminderCheck;

    move-result-object v12

    .line 929
    iget-object v1, v0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    iget-object v1, v1, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    iget v2, v8, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v1, v2}, Lcom/narvii/community/MyCommunityListService;->getReminderTimestamp(I)Ljava/lang/String;

    move-result-object v13

    const-string v1, "community"

    .line 931
    invoke-virtual {v0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/community/CommunityService;

    .line 932
    iget v2, v8, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v1, v2}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 933
    iget-object v1, v1, Lcom/narvii/model/Community;->configuration:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->size()I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v14, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v14, 0x1

    .line 934
    :goto_1
    iget-object v1, v0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    iget-object v6, v1, Lcom/narvii/master/MyCommunityListFragment;->launchHelper:Lcom/narvii/master/MyCommunityListFragment$MyLaunchHelper;

    iget v7, v8, Lcom/narvii/model/Community;->id:I

    const/4 v15, 0x1

    iget-object v1, v1, Lcom/narvii/master/MyCommunityListFragment;->launchImageView:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v16

    invoke-virtual/range {v6 .. v16}, Lcom/narvii/master/MyCommunityListFragment$MyLaunchHelper;->launch(ILcom/narvii/model/Community;Ljava/lang/String;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/community/ReminderCheck;Ljava/lang/String;ZILandroid/graphics/drawable/Drawable;)V

    return v5

    .line 937
    :cond_5
    sget-object v3, Lcom/narvii/list/NVPagedAdapter;->LIST_END:Lcom/narvii/util/Tag;

    if-ne v1, v3, :cond_6

    .line 938
    sget-object v1, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {v0, v1, v5}, Lcom/narvii/list/NVAdapter;->logClickEvent(Lcom/narvii/logging/ActSemantic;Z)V

    .line 939
    iget-object v1, v0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    const-string v2, "Join an Amino"

    invoke-static {v1, v2}, Lcom/narvii/master/MyCommunityListFragment;->access$500(Lcom/narvii/master/MyCommunityListFragment;Ljava/lang/String;)V

    return v5

    .line 941
    :cond_6
    sget-object v3, Lcom/narvii/list/NVPagedAdapter;->ERROR:Lcom/narvii/util/Tag;

    if-ne v1, v3, :cond_7

    .line 942
    iget-object v1, v0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    iget-object v1, v1, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {v1, v4}, Lcom/narvii/community/MyCommunityListService;->loadNextPage(Z)V

    return v5

    .line 945
    :cond_7
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    return v1
.end method

.method public onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 7

    .line 950
    instance-of v0, p3, Lcom/narvii/model/Community;

    if-eqz v0, :cond_2

    .line 951
    check-cast p3, Lcom/narvii/model/Community;

    .line 952
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x5

    new-array p2, p2, [I

    .line 955
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 956
    iget-object p5, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    const v0, 0x7f0f02c6

    invoke-virtual {p5, v0}, Landroid/support/v4/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p5, 0x0

    aput v0, p2, p5

    .line 958
    iget-object v0, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    iget-object v0, v0, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->rawList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 959
    iget-object v0, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    const v2, 0x7f0f0ed5

    invoke-virtual {v0, v2}, Landroid/support/v4/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x2

    aput v2, p2, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 962
    :goto_0
    sget v2, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v3, 0x64

    if-ne v2, v3, :cond_1

    iget-object v2, p3, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 963
    iget-object v2, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    const v3, 0x7f0f02c4

    invoke-virtual {v2, v3}, Landroid/support/v4/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v0, 0x1

    .line 964
    aput v3, p2, v0

    move v0, v2

    .line 967
    :cond_1
    new-instance v2, Lcom/narvii/util/text/NVText;

    iget-object v3, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    const v4, 0x7f0f0e18

    invoke-virtual {v3, v4}, Landroid/support/v4/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/narvii/util/text/NVText;-><init>(Ljava/lang/CharSequence;)V

    .line 968
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const v5, -0x40fff2

    invoke-direct {v3, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 969
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/16 v6, 0x22

    invoke-virtual {v2, v3, p5, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 970
    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 971
    aput v4, p2, v0

    new-array p5, p5, [Ljava/lang/CharSequence;

    .line 973
    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Ljava/lang/CharSequence;

    new-instance p5, Lcom/narvii/master/MyCommunityListFragment$Adapter$2;

    invoke-direct {p5, p0, p2, p3}, Lcom/narvii/master/MyCommunityListFragment$Adapter$2;-><init>(Lcom/narvii/master/MyCommunityListFragment$Adapter;[ILcom/narvii/model/Community;)V

    invoke-virtual {p1, p4, p5}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 992
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return v1

    .line 995
    :cond_2
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method onResume()V
    .locals 6

    .line 734
    invoke-virtual {p0}, Lcom/narvii/master/MyCommunityListFragment$Adapter;->isListShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    iget-object v0, v0, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/narvii/community/MyCommunityListService;->loadNextPage(Z)V

    goto :goto_0

    .line 736
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    iget-object v0, v0, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->getCommunityRequestTime()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-wide v4, Lcom/narvii/master/MyCommunityListFragment;->REFRESH_COMMUNITY_LIST_DURATION:J

    sub-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 737
    iget-object v0, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    iget-object v0, v0, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    const/16 v1, 0x100

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/narvii/community/MyCommunityListService;->refresh(ILcom/narvii/util/Callback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public refresh(ILcom/narvii/util/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 743
    iget-object v0, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    iget-object v0, v0, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/community/MyCommunityListService;->refresh(ILcom/narvii/util/Callback;)V

    return-void
.end method
