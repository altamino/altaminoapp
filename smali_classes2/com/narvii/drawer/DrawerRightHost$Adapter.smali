.class Lcom/narvii/drawer/DrawerRightHost$Adapter;
.super Lcom/narvii/list/NVAdapter;
.source "DrawerRightHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/drawer/DrawerRightHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation


# instance fields
.field hasAccount:Z

.field final synthetic this$0:Lcom/narvii/drawer/DrawerRightHost;


# direct methods
.method public constructor <init>(Lcom/narvii/drawer/DrawerRightHost;)V
    .locals 0

    .line 866
    iput-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$Adapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    .line 867
    iget-object p1, p1, Lcom/narvii/drawer/DrawerRightHost;->context:Lcom/narvii/app/NVContext;

    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 p1, 0x1

    .line 868
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

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

    .line 922
    iget-boolean v0, p0, Lcom/narvii/drawer/DrawerRightHost$Adapter;->hasAccount:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$Adapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    iget-object v0, v0, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->errorMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCount()I
    .locals 2

    .line 907
    iget-boolean v0, p0, Lcom/narvii/drawer/DrawerRightHost$Adapter;->hasAccount:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 908
    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerRightHost$Adapter;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_1
    return v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    .line 939
    iget-boolean v0, p0, Lcom/narvii/drawer/DrawerRightHost$Adapter;->hasAccount:Z

    if-eqz v0, :cond_3

    .line 940
    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerRightHost$Adapter;->list()Ljava/util/List;

    move-result-object v0

    .line 941
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 942
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 944
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerRightHost$Adapter;->isEnd()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 945
    sget-object p1, Lcom/narvii/list/NVPagedAdapter;->LIST_END:Lcom/narvii/util/Tag;

    return-object p1

    .line 946
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerRightHost$Adapter;->errorMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    .line 947
    sget-object p1, Lcom/narvii/list/NVPagedAdapter;->LOADING:Lcom/narvii/util/Tag;

    return-object p1

    .line 949
    :cond_2
    sget-object p1, Lcom/narvii/list/NVPagedAdapter;->ERROR:Lcom/narvii/util/Tag;

    return-object p1

    .line 953
    :cond_3
    sget-object p1, Lcom/narvii/list/NVPagedAdapter;->LIST_END:Lcom/narvii/util/Tag;

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 959
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerRightHost$Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 977
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerRightHost$Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    .line 978
    instance-of v0, p1, Lcom/narvii/model/Community;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 980
    :cond_0
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->LIST_END:Lcom/narvii/util/Tag;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 982
    :cond_1
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->LOADING:Lcom/narvii/util/Tag;

    if-ne p1, v0, :cond_2

    const/4 p1, 0x2

    return p1

    .line 984
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

    .line 1003
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerRightHost$Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    .line 1004
    instance-of v0, p1, Lcom/narvii/model/Community;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 1005
    check-cast p1, Lcom/narvii/model/Community;

    const v0, 0x7f0b0356

    .line 1006
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f090571

    .line 1007
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/PromotionalImageView;

    .line 1008
    iput-boolean v1, p3, Lcom/narvii/widget/PromotionalImageView;->showLaunchPage:Z

    .line 1009
    iput-boolean v1, p3, Lcom/narvii/widget/PromotionalImageView;->preloadCachedImage:Z

    .line 1010
    invoke-virtual {p3, p1}, Lcom/narvii/widget/PromotionalImageView;->setCommunity(Lcom/narvii/model/Community;)V

    const p3, 0x7f090562

    .line 1011
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/NVImageView;

    .line 1012
    iget-object v0, p1, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 1013
    invoke-virtual {p1}, Lcom/narvii/model/Community;->themeColor()I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/narvii/widget/NVImageView;->setStrokeColor(I)V

    const p3, 0x7f090b9a

    .line 1014
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 1015
    iget-object v0, p1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1016
    invoke-static {p3}, Lcom/narvii/util/ViewUtils;->setMontserratExtraBoldTypeface(Landroid/widget/TextView;)V

    .line 1018
    iget-object p3, p0, Lcom/narvii/drawer/DrawerRightHost$Adapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    iget-object p3, p3, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    iget v0, p1, Lcom/narvii/model/Community;->id:I

    invoke-virtual {p3, v0}, Lcom/narvii/community/MyCommunityListService;->getUserProfile(I)Lcom/narvii/model/User;

    move-result-object p3

    .line 1020
    iget v0, p1, Lcom/narvii/model/Community;->probationStatus:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    if-eqz p3, :cond_0

    .line 1021
    invoke-virtual {p3}, Lcom/narvii/model/User;->isLeader()Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    const v0, 0x7f0908c9

    .line 1022
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p3, :cond_1

    const/4 p3, 0x0

    goto :goto_1

    :cond_1
    const/16 p3, 0x8

    :goto_1
    invoke-virtual {v0, p3}, Landroid/view/View;->setVisibility(I)V

    const p3, 0x7f0908cb

    .line 1024
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 1025
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$Adapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    iget-object v0, v0, Lcom/narvii/drawer/DrawerRightHost;->launchHelper:Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;

    const/4 v3, 0x4

    if-eqz v0, :cond_3

    iget-object v4, v0, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;->progressBar:Lcom/narvii/widget/SmoothProgressBar;

    if-ne v4, p3, :cond_3

    .line 1026
    iget-object v0, v0, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;->community:Lcom/narvii/model/Community;

    if-eqz v0, :cond_2

    iget v0, v0, Lcom/narvii/model/Community;->id:I

    iget v4, p1, Lcom/narvii/model/Community;->id:I

    if-eq v0, v4, :cond_2

    .line 1027
    invoke-virtual {p3, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1028
    iget-object p3, p0, Lcom/narvii/drawer/DrawerRightHost$Adapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    invoke-virtual {p3}, Lcom/narvii/drawer/DrawerRightHost;->cancelLaunch()V

    goto :goto_2

    .line 1030
    :cond_2
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 1033
    :cond_3
    invoke-virtual {p3, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1036
    :goto_2
    iget-object p3, p0, Lcom/narvii/drawer/DrawerRightHost$Adapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    invoke-virtual {p3, p2, p1, v1}, Lcom/narvii/drawer/DrawerRightHost;->updateRemindersInCell(Landroid/view/View;Lcom/narvii/model/Community;Z)V

    .line 1038
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p2

    .line 1041
    :cond_4
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->LIST_END:Lcom/narvii/util/Tag;

    if-ne p1, v0, :cond_5

    const p1, 0x7f0b0358

    .line 1042
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09050e

    .line 1043
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const/high16 p3, 0x41600000    # 14.0f

    .line 1044
    invoke-virtual {p2, v1, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    return-object p1

    .line 1046
    :cond_5
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->LOADING:Lcom/narvii/util/Tag;

    if-ne p1, v0, :cond_6

    const p1, 0x7f0b0359

    .line 1047
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 1048
    iget-object p2, p0, Lcom/narvii/drawer/DrawerRightHost$Adapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    iget-object p2, p2, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {p2, v1}, Lcom/narvii/community/MyCommunityListService;->loadNextPage(Z)V

    return-object p1

    .line 1051
    :cond_6
    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerRightHost$Adapter;->errorMessage()Ljava/lang/String;

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

    .line 917
    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerRightHost$Adapter;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2

    .line 969
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerRightHost$Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 970
    sget-object v1, Lcom/narvii/list/NVPagedAdapter;->LOADING:Lcom/narvii/util/Tag;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 972
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result p1

    return p1
.end method

.method public isEnd()Z
    .locals 1

    .line 902
    iget-boolean v0, p0, Lcom/narvii/drawer/DrawerRightHost$Adapter;->hasAccount:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$Adapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    iget-object v0, v0, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->isEnd()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public isListShown()Z
    .locals 1

    .line 934
    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerRightHost$Adapter;->isEnd()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerRightHost$Adapter;->list()Ljava/util/List;

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

.method public list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation

    .line 894
    iget-boolean v0, p0, Lcom/narvii/drawer/DrawerRightHost$Adapter;->hasAccount:Z

    if-eqz v0, :cond_0

    .line 895
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$Adapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    iget-object v0, v0, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->list()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 897
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onErrorRetry()V
    .locals 1

    .line 927
    iget-boolean v0, p0, Lcom/narvii/drawer/DrawerRightHost$Adapter;->hasAccount:Z

    if-eqz v0, :cond_0

    .line 928
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$Adapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    iget-object v0, v0, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->retryRetry()V

    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .line 1057
    instance-of v0, p3, Lcom/narvii/model/Community;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$Adapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    iget-object v0, v0, Lcom/narvii/drawer/DrawerRightHost;->activity:Landroid/app/Activity;

    instance-of v2, v0, Lcom/narvii/app/NVContext;

    if-eqz v2, :cond_4

    .line 1058
    check-cast p3, Lcom/narvii/model/Community;

    .line 1061
    check-cast v0, Lcom/narvii/app/NVContext;

    const-string p1, "config"

    invoke-interface {v0, p1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 1062
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p1

    .line 1064
    iget p2, p3, Lcom/narvii/model/Community;->id:I

    if-ne p1, p2, :cond_0

    .line 1066
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$Adapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    iget-object p1, p1, Lcom/narvii/drawer/DrawerRightHost;->activity:Landroid/app/Activity;

    const p2, 0x7f0f0100

    invoke-static {p1, p2, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 1067
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$Adapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    const p2, 0xfa0001

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/narvii/widget/ProxyViewHost;->sendEvent(ILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 1069
    :cond_0
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$Adapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    iget-boolean p2, p1, Lcom/narvii/drawer/DrawerRightHost;->isMaster:Z

    if-eqz p2, :cond_1

    const p1, 0x7f0908cb

    .line 1071
    invoke-virtual {p4, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/SmoothProgressBar;

    const p2, 0x7f090571

    .line 1072
    invoke-virtual {p4, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/NVImageView;

    .line 1073
    iget-object p4, p0, Lcom/narvii/drawer/DrawerRightHost$Adapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    new-instance p5, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;

    iget-object v0, p4, Lcom/narvii/drawer/DrawerRightHost;->activity:Landroid/app/Activity;

    check-cast v0, Lcom/narvii/app/NVContext;

    invoke-direct {p5, p4, v0}, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;-><init>(Lcom/narvii/drawer/DrawerRightHost;Lcom/narvii/app/NVContext;)V

    iput-object p5, p4, Lcom/narvii/drawer/DrawerRightHost;->launchHelper:Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;

    .line 1074
    iget-object p4, p0, Lcom/narvii/drawer/DrawerRightHost$Adapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    iget-object p4, p4, Lcom/narvii/drawer/DrawerRightHost;->launchHelper:Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;

    invoke-virtual {p4, p3, p2, p1}, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;->launchCommunity(Lcom/narvii/model/Community;Lcom/narvii/widget/NVImageView;Lcom/narvii/widget/SmoothProgressBar;)V

    goto :goto_0

    .line 1077
    :cond_1
    new-instance p2, Lcom/narvii/util/PackageUtils;

    iget-object p1, p1, Lcom/narvii/drawer/DrawerRightHost;->activity:Landroid/app/Activity;

    invoke-direct {p2, p1}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 1078
    invoke-virtual {p2}, Lcom/narvii/util/PackageUtils;->getMasterPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/narvii/util/PackageUtils;->isPackageInstalled(Ljava/lang/String;)Z

    move-result p1

    const-string p4, "/description"

    if-eqz p1, :cond_2

    .line 1080
    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/narvii/util/PackageUtils;->getMasterScheme()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "://x"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p3, Lcom/narvii/model/Community;->id:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1081
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p1, "clearTask"

    .line 1082
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1083
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$Adapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    invoke-virtual {p1, p2, v1}, Lcom/narvii/drawer/DrawerRightHost;->startActivity(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1087
    :cond_2
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$Adapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    iget-object p1, p1, Lcom/narvii/drawer/DrawerRightHost;->activity:Landroid/app/Activity;

    instance-of p2, p1, Lcom/narvii/app/NVContext;

    if-eqz p2, :cond_3

    .line 1088
    new-instance p2, Lcom/narvii/master/MasterHelper;

    check-cast p1, Lcom/narvii/app/NVContext;

    invoke-direct {p2, p1}, Lcom/narvii/master/MasterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 1089
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "ndc://x"

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p3, Lcom/narvii/model/Community;->id:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1090
    invoke-virtual {p2, p1}, Lcom/narvii/master/MasterHelper;->showDownloadMaterDialog(Ljava/lang/String;)V

    :catch_0
    :cond_3
    :goto_0
    return v1

    .line 1096
    :cond_4
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->LIST_END:Lcom/narvii/util/Tag;

    if-ne p3, v0, :cond_5

    .line 1097
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$Adapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    invoke-virtual {p1}, Lcom/narvii/drawer/DrawerRightHost;->explore()V

    return v1

    .line 1099
    :cond_5
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->ERROR:Lcom/narvii/util/Tag;

    if-ne p3, v0, :cond_6

    .line 1100
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$Adapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    iget-object p1, p1, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/narvii/community/MyCommunityListService;->loadNextPage(Z)V

    return v1

    .line 1103
    :cond_6
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public prepare()V
    .locals 2

    .line 872
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$Adapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    iget-object v0, v0, Lcom/narvii/drawer/DrawerRightHost;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/drawer/DrawerRightHost$Adapter;->hasAccount:Z

    .line 873
    iget-boolean v0, p0, Lcom/narvii/drawer/DrawerRightHost$Adapter;->hasAccount:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerRightHost$Adapter;->isListShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 874
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$Adapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    iget-object v0, v0, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/narvii/community/MyCommunityListService;->loadNextPage(Z)V

    :cond_0
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

    .line 886
    iget-boolean v0, p0, Lcom/narvii/drawer/DrawerRightHost$Adapter;->hasAccount:Z

    if-eqz v0, :cond_0

    .line 887
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$Adapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    iget-object v0, v0, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/community/MyCommunityListService;->refresh(ILcom/narvii/util/Callback;)V

    goto :goto_0

    .line 889
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->refresh(ILcom/narvii/util/Callback;)V

    :goto_0
    return-void
.end method

.method public resumed()V
    .locals 6

    .line 879
    iget-boolean v0, p0, Lcom/narvii/drawer/DrawerRightHost$Adapter;->hasAccount:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerRightHost$Adapter;->isListShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$Adapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    iget-object v0, v0, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->getCommunityRequestTime()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-wide v4, Lcom/narvii/drawer/DrawerRightHost;->REFRESH_COMMUNITY_LIST_DURATION:J

    sub-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 880
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$Adapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    iget-object v0, v0, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    const/16 v1, 0x100

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/narvii/community/MyCommunityListService;->refresh(ILcom/narvii/util/Callback;)V

    :cond_0
    return-void
.end method
