.class Lcom/narvii/master/MyCommunityListFragment$SuggestCommunityAdapter;
.super Lcom/narvii/list/NVArrayAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/MyCommunityListFragment$SuggestCommunityAdapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 3
    .line 4
    const-class v0, Lcom/narvii/model/Community;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, v0}, Lcom/narvii/list/NVArrayAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/narvii/master/MyCommunityListFragment$SuggestCommunityAdapter;->updateSuggestedList()V

    .line 11
    .line 12
    new-instance p1, Lcom/narvii/logging/Impression/DivideColumnImpressionCollector;

    .line 13
    .line 14
    .line 15
    invoke-direct {p1, v0}, Lcom/narvii/logging/Impression/DivideColumnImpressionCollector;-><init>(Ljava/lang/Class;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    .line 19
    return-void
.end method

.method private updateSuggestedList()V
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
    iget-object v1, p0, Lcom/narvii/master/MyCommunityListFragment$SuggestCommunityAdapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/narvii/community/MyCommunityListService;->suggestList()Ljava/util/List;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 19
    move-result v2

    .line 20
    const/4 v3, 0x6

    .line 21
    .line 22
    if-le v2, v3, :cond_0

    .line 23
    const/4 v2, 0x0

    .line 24
    .line 25
    .line 26
    invoke-interface {v1, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_0
    iget-object v1, p0, Lcom/narvii/master/MyCommunityListFragment$SuggestCommunityAdapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 34
    .line 35
    iget-object v1, v1, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/narvii/community/MyCommunityListService;->suggestList()Ljava/util/List;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 43
    .line 44
    .line 45
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVArrayAdapter;->setList(Ljava/util/ArrayList;)V

    .line 46
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

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/model/Community;

    .line 7
    .line 8
    .line 9
    const v0, 0x7f0d03e9

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 13
    move-result-object p2

    .line 14
    .line 15
    .line 16
    const p3, 0x7f0a06eb

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    move-result-object p3

    .line 21
    .line 22
    check-cast p3, Lcom/narvii/widget/PromotionalImageView;

    .line 23
    .line 24
    .line 25
    const v0, 0x7f0a037c

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    check-cast v0, Landroid/widget/TextView;

    .line 32
    .line 33
    .line 34
    const v1, 0x7f0a036b

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    check-cast v1, Lcom/narvii/widget/NVImageView;

    .line 41
    .line 42
    instance-of v2, v1, Lcom/narvii/widget/CommunityIconView;

    .line 43
    .line 44
    if-eqz v2, :cond_0

    .line 45
    .line 46
    if-eqz p1, :cond_0

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/narvii/model/Community;->themeColor()I

    .line 50
    move-result v2

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v2}, Lcom/narvii/widget/NVImageView;->setStrokeColor(I)V

    .line 54
    .line 55
    .line 56
    :cond_0
    invoke-virtual {p3, p1}, Lcom/narvii/widget/PromotionalImageView;->setCommunity(Lcom/narvii/model/Community;)V

    .line 57
    .line 58
    iget-object p3, p1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    iget-object p3, p1, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, p3}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, p2, p1}, Lcom/narvii/list/NVAdapter;->tagCellForLog(Landroid/view/View;Ljava/lang/Object;)V

    .line 70
    return-object p2
.end method

.method public notifyDataChange()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/MyCommunityListFragment$SuggestCommunityAdapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-direct {p0}, Lcom/narvii/master/MyCommunityListFragment$SuggestCommunityAdapter;->updateSuggestedList()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 16
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/model/Community;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    sget-object p1, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    .line 7
    const/4 p2, 0x1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p3, p1, p2}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;Z)V

    .line 11
    .line 12
    new-instance p1, Lcom/narvii/master/CommunityHelper;

    .line 13
    .line 14
    iget-object p4, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 15
    .line 16
    .line 17
    invoke-direct {p1, p4}, Lcom/narvii/master/CommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 18
    .line 19
    check-cast p3, Lcom/narvii/model/Community;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p3}, Lcom/narvii/master/CommunityHelper;->communityDetail(Lcom/narvii/model/Community;)V

    .line 23
    return p2

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 27
    move-result p1

    .line 28
    return p1
.end method

.method public setFragmentResume(Z)V
    .locals 6

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/master/MyCommunityListFragment$SuggestCommunityAdapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/narvii/community/MyCommunityListService;->suggestList()Ljava/util/List;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/master/MyCommunityListFragment$SuggestCommunityAdapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/community/MyCommunityListService;->refreshSuggestCommunityRequest()V

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/MyCommunityListFragment$SuggestCommunityAdapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 23
    .line 24
    iget-object p1, p1, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/narvii/community/MyCommunityListService;->getSuggestRequestTime()J

    .line 28
    move-result-wide v0

    .line 29
    .line 30
    .line 31
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 32
    move-result-wide v2

    .line 33
    .line 34
    sget-wide v4, Lcom/narvii/master/MyCommunityListFragment;->REFRESH_SUGGEST_LIST_DURATION:J

    .line 35
    sub-long/2addr v2, v4

    .line 36
    .line 37
    cmp-long p1, v0, v2

    .line 38
    .line 39
    if-gez p1, :cond_1

    .line 40
    .line 41
    iget-object p1, p0, Lcom/narvii/master/MyCommunityListFragment$SuggestCommunityAdapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 42
    .line 43
    iget-object p1, p1, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/narvii/community/MyCommunityListService;->refreshSuggestCommunityRequest()V

    .line 47
    :cond_1
    :goto_0
    return-void
.end method
