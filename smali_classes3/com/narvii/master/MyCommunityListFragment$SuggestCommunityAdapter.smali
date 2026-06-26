.class Lcom/narvii/master/MyCommunityListFragment$SuggestCommunityAdapter;
.super Lcom/narvii/list/NVArrayAdapter;
.source "MyCommunityListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/MyCommunityListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SuggestCommunityAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVArrayAdapter<",
        "Lcom/narvii/model/Community;",
        ">;"
    }
.end annotation


# static fields
.field private static final SUGGEST_COMMUNITY_COUNT:I = 0x6


# instance fields
.field final synthetic this$0:Lcom/narvii/master/MyCommunityListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/master/MyCommunityListFragment;)V
    .locals 1

    .line 649
    iput-object p1, p0, Lcom/narvii/master/MyCommunityListFragment$SuggestCommunityAdapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 650
    const-class v0, Lcom/narvii/model/Community;

    invoke-direct {p0, p1, v0}, Lcom/narvii/list/NVArrayAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/Class;)V

    .line 651
    invoke-direct {p0}, Lcom/narvii/master/MyCommunityListFragment$SuggestCommunityAdapter;->updateSuggestedList()V

    .line 652
    new-instance p1, Lcom/narvii/logging/Impression/DivideColumnImpressionCollector;

    const-class v0, Lcom/narvii/model/Community;

    invoke-direct {p1, v0}, Lcom/narvii/logging/Impression/DivideColumnImpressionCollector;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    return-void
.end method

.method private updateSuggestedList()V
    .locals 4

    .line 671
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 672
    iget-object v1, p0, Lcom/narvii/master/MyCommunityListFragment$SuggestCommunityAdapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    iget-object v1, v1, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {v1}, Lcom/narvii/community/MyCommunityListService;->suggestList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 674
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x6

    if-le v2, v3, :cond_0

    const/4 v2, 0x0

    .line 675
    invoke-interface {v1, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 677
    :cond_0
    iget-object v1, p0, Lcom/narvii/master/MyCommunityListFragment$SuggestCommunityAdapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    iget-object v1, v1, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {v1}, Lcom/narvii/community/MyCommunityListService;->suggestList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 680
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVArrayAdapter;->setList(Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "AminoRecommendList"

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 693
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Community;

    const v0, 0x7f0b03b2

    .line 694
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f090571

    .line 695
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/PromotionalImageView;

    const v0, 0x7f0902b6

    .line 696
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0902a3

    .line 697
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/NVImageView;

    .line 698
    instance-of v2, v1, Lcom/narvii/widget/CommunityIconView;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 699
    invoke-virtual {p1}, Lcom/narvii/model/Community;->themeColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/narvii/widget/NVImageView;->setStrokeColor(I)V

    .line 701
    :cond_0
    invoke-virtual {p3, p1}, Lcom/narvii/widget/PromotionalImageView;->setCommunity(Lcom/narvii/model/Community;)V

    .line 702
    iget-object p3, p1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 703
    iget-object p3, p1, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    invoke-virtual {v1, p3}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 704
    invoke-virtual {p0, p2, p1}, Lcom/narvii/list/NVAdapter;->tagCellForLog(Landroid/view/View;Ljava/lang/Object;)V

    return-object p2
.end method

.method public notifyDataChange()V
    .locals 1

    .line 684
    iget-object v0, p0, Lcom/narvii/master/MyCommunityListFragment$SuggestCommunityAdapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 687
    :cond_0
    invoke-direct {p0}, Lcom/narvii/master/MyCommunityListFragment$SuggestCommunityAdapter;->updateSuggestedList()V

    .line 688
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 710
    instance-of v0, p3, Lcom/narvii/model/Community;

    if-eqz v0, :cond_0

    .line 711
    sget-object p1, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    const/4 p2, 0x1

    invoke-virtual {p0, p3, p1, p2}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;Z)V

    .line 712
    new-instance p1, Lcom/narvii/master/CommunityHelper;

    iget-object p4, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-direct {p1, p4}, Lcom/narvii/master/CommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 713
    check-cast p3, Lcom/narvii/model/Community;

    invoke-virtual {p1, p3}, Lcom/narvii/master/CommunityHelper;->communityDetail(Lcom/narvii/model/Community;)V

    return p2

    .line 716
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public setFragmentResume(Z)V
    .locals 6

    if-eqz p1, :cond_1

    .line 657
    iget-object p1, p0, Lcom/narvii/master/MyCommunityListFragment$SuggestCommunityAdapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    iget-object p1, p1, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {p1}, Lcom/narvii/community/MyCommunityListService;->suggestList()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    .line 658
    iget-object p1, p0, Lcom/narvii/master/MyCommunityListFragment$SuggestCommunityAdapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    iget-object p1, p1, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {p1}, Lcom/narvii/community/MyCommunityListService;->refreshSuggestCommunityRequest()V

    goto :goto_0

    .line 659
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/MyCommunityListFragment$SuggestCommunityAdapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    iget-object p1, p1, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {p1}, Lcom/narvii/community/MyCommunityListService;->getSuggestRequestTime()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-wide v4, Lcom/narvii/master/MyCommunityListFragment;->REFRESH_SUGGEST_LIST_DURATION:J

    sub-long/2addr v2, v4

    cmp-long p1, v0, v2

    if-gez p1, :cond_1

    .line 660
    iget-object p1, p0, Lcom/narvii/master/MyCommunityListFragment$SuggestCommunityAdapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    iget-object p1, p1, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {p1}, Lcom/narvii/community/MyCommunityListService;->refreshSuggestCommunityRequest()V

    :cond_1
    :goto_0
    return-void
.end method
