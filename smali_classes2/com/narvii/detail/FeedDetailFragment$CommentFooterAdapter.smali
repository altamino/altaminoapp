.class public Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "FeedDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/detail/FeedDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CommentFooterAdapter"
.end annotation


# instance fields
.field communityService:Lcom/narvii/community/CommunityService;

.field final synthetic this$0:Lcom/narvii/detail/FeedDetailFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/detail/FeedDetailFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1663
    iput-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 1664
    invoke-direct {p0, p2}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const-string p1, "community"

    .line 1661
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/CommunityService;

    iput-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter;->communityService:Lcom/narvii/community/CommunityService;

    return-void
.end method

.method static synthetic access$1000(Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter;)V
    .locals 0

    .line 1659
    invoke-direct {p0}, Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter;->openDetailList()V

    return-void
.end method

.method private openDetailList()V
    .locals 5

    .line 1751
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-virtual {v0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1}, Lcom/narvii/comment/CommentHelper;->getCommentIntent(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;ZZ)Landroid/content/Intent;

    move-result-object v0

    .line 1752
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const-string v3, "__interactionScope"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "community"

    .line 1753
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/community/CommunityService;

    .line 1754
    iget-object v4, p0, Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-virtual {v4}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v4

    iget v4, v4, Lcom/narvii/model/Feed;->ndcId:I

    invoke-virtual {v3, v4}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object v3

    .line 1755
    invoke-static {v3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1756
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "__model"

    .line 1757
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1759
    :cond_0
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private tryJoinCommunity()V
    .locals 4

    .line 1734
    new-instance v0, Lcom/narvii/master/CommunityHelper;

    invoke-direct {v0, p0}, Lcom/narvii/master/CommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 1735
    iget-object v1, p0, Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-virtual {v1}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v1

    iget v1, v1, Lcom/narvii/model/Feed;->ndcId:I

    new-instance v2, Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter$1;

    invoke-direct {v2, p0}, Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter$1;-><init>(Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/narvii/master/CommunityHelper;->joinCommunity(ILjava/lang/String;Lcom/narvii/util/Callback;)V

    .line 1743
    const-class v0, Lcom/narvii/master/CommunityDetailFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1744
    iget-object v1, p0, Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-virtual {v1}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v1

    iget v1, v1, Lcom/narvii/model/Feed;->ndcId:I

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1745
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-virtual {v1}, Lcom/narvii/detail/FeedDetailFragment;->getPublishNdcId()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "__communityId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1746
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "__model"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1747
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .line 1669
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-virtual {v0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-virtual {v0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v0

    iget-object v2, p0, Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-virtual {v2}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    move-result v2

    xor-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/narvii/model/Feed;->getCommentsCount(Z)I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 1684
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-virtual {p1}, Lcom/narvii/detail/DetailFragment;->hasBackground()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f0b02f8

    goto :goto_0

    :cond_0
    const p1, 0x7f0b02f9

    :goto_0
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 1685
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    move-result p2

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_3

    .line 1686
    iget-object p2, p0, Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter;->communityService:Lcom/narvii/community/CommunityService;

    iget-object v1, p0, Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-virtual {v1}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v1

    iget v1, v1, Lcom/narvii/model/Feed;->ndcId:I

    invoke-virtual {p2, v1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object p2

    if-nez p2, :cond_1

    .line 1688
    iget-object p2, p0, Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    const-string v1, "__community"

    invoke-virtual {p2, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-class v1, Lcom/narvii/model/Community;

    invoke-static {p2, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/Community;

    :cond_1
    if-eqz p2, :cond_4

    const v1, 0x7f090bd3

    .line 1691
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1692
    iget-object v2, p0, Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-virtual {v2}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v2

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    move-result v3

    xor-int/2addr v3, v0

    invoke-virtual {v2, v3}, Lcom/narvii/model/Feed;->getCommentsCount(Z)I

    move-result v2

    if-le v2, v0, :cond_2

    .line 1694
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0f1044

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, p3

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1696
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0f104a

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, p3

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const p3, 0x7f0902a3

    .line 1698
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/CommunityIconView;

    .line 1699
    iget-object v0, p2, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    const p3, 0x7f0902b6

    .line 1700
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 1701
    iget-object p2, p2, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1702
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_3
    const p2, 0x7f0904eb

    .line 1705
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    const p2, 0x7f0904ec

    .line 1706
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 1707
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1708
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0746

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-virtual {v4}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v4

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    move-result v5

    xor-int/2addr v0, v5

    invoke-virtual {v4, v0}, Lcom/narvii/model/Feed;->getCommentsCount(Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, p3

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1710
    :cond_4
    :goto_2
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public synthetic lambda$onItemClick$0$FeedDetailFragment$CommentFooterAdapter(Landroid/view/View;)V
    .locals 0

    .line 1723
    invoke-direct {p0}, Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter;->tryJoinCommunity()V

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    if-eqz p5, :cond_2

    .line 1716
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result p1

    const p2, 0x7f0904b5

    if-ne p1, p2, :cond_2

    .line 1717
    sget-object p1, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "CommunityCommentsBar"

    goto :goto_0

    :cond_0
    const-string p2, "GuestCommentsBar"

    :goto_0
    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    const-string p1, "affiliations"

    .line 1718
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/AffiliationsService;

    .line 1719
    iget-object p2, p0, Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-virtual {p2}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object p2

    iget p2, p2, Lcom/narvii/model/Feed;->ndcId:I

    invoke-virtual {p1, p2}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_1

    .line 1720
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p1, p3}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const p3, 0x7f0f075b

    .line 1721
    invoke-virtual {p1, p3}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    const p3, 0x7f0f0193

    const/4 p4, 0x0

    .line 1722
    invoke-virtual {p1, p3, p4}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const p3, 0x7f0f0aa0

    .line 1723
    new-instance p4, Lcom/narvii/detail/-$$Lambda$FeedDetailFragment$CommentFooterAdapter$KwKzc_xnhpZq8KHl3txoTQXm1cw;

    invoke-direct {p4, p0}, Lcom/narvii/detail/-$$Lambda$FeedDetailFragment$CommentFooterAdapter$KwKzc_xnhpZq8KHl3txoTQXm1cw;-><init>(Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter;)V

    invoke-virtual {p1, p3, p4}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 1724
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    return p2

    .line 1727
    :cond_1
    invoke-direct {p0}, Lcom/narvii/detail/FeedDetailFragment$CommentFooterAdapter;->openDetailList()V

    return p2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
