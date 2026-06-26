.class public Lcom/narvii/feed/vote/VoterListFooterAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "VoterListFooterAdapter.java"


# instance fields
.field private affiliationsService:Lcom/narvii/community/AffiliationsService;

.field protected community:Lcom/narvii/model/Community;

.field private communityService:Lcom/narvii/community/CommunityService;

.field private dark:Z

.field private feed:Lcom/narvii/model/Feed;

.field private nvContext:Lcom/narvii/app/NVContext;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;ZLcom/narvii/model/Community;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 37
    iput-object p4, p0, Lcom/narvii/feed/vote/VoterListFooterAdapter;->community:Lcom/narvii/model/Community;

    .line 38
    iput-object p1, p0, Lcom/narvii/feed/vote/VoterListFooterAdapter;->nvContext:Lcom/narvii/app/NVContext;

    .line 39
    iput-object p2, p0, Lcom/narvii/feed/vote/VoterListFooterAdapter;->feed:Lcom/narvii/model/Feed;

    const-string p1, "affiliations"

    .line 40
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/AffiliationsService;

    iput-object p1, p0, Lcom/narvii/feed/vote/VoterListFooterAdapter;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    if-nez p4, :cond_0

    const-string p1, "community"

    .line 42
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/CommunityService;

    iput-object p1, p0, Lcom/narvii/feed/vote/VoterListFooterAdapter;->communityService:Lcom/narvii/community/CommunityService;

    .line 43
    iget-object p1, p0, Lcom/narvii/feed/vote/VoterListFooterAdapter;->communityService:Lcom/narvii/community/CommunityService;

    invoke-direct {p0}, Lcom/narvii/feed/vote/VoterListFooterAdapter;->getPublishNdcId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/feed/vote/VoterListFooterAdapter;->community:Lcom/narvii/model/Community;

    .line 45
    :cond_0
    iput-boolean p3, p0, Lcom/narvii/feed/vote/VoterListFooterAdapter;->dark:Z

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/feed/vote/VoterListFooterAdapter;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/narvii/feed/vote/VoterListFooterAdapter;->tryJoinCommunity()V

    return-void
.end method

.method private getPublishNdcId()I
    .locals 3

    .line 152
    iget-object v0, p0, Lcom/narvii/feed/vote/VoterListFooterAdapter;->feed:Lcom/narvii/model/Feed;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 155
    :cond_0
    iget v1, v0, Lcom/narvii/model/Feed;->ndcId:I

    .line 156
    instance-of v2, v0, Lcom/narvii/model/Blog;

    if-eqz v2, :cond_1

    .line 157
    check-cast v0, Lcom/narvii/model/Blog;

    invoke-virtual {v0}, Lcom/narvii/model/Blog;->getPublishNdcId()I

    move-result v1

    :cond_1
    return v1
.end method

.method private getVoteCommunityFeed()Lcom/narvii/model/Feed;
    .locals 3

    .line 163
    iget-object v0, p0, Lcom/narvii/feed/vote/VoterListFooterAdapter;->feed:Lcom/narvii/model/Feed;

    instance-of v1, v0, Lcom/narvii/model/Blog;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/narvii/model/Blog;

    iget v1, v1, Lcom/narvii/model/Blog;->type:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/narvii/model/Blog;

    iget-object v1, v1, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    if-eqz v1, :cond_0

    .line 164
    check-cast v0, Lcom/narvii/model/Blog;

    iget-object v0, v0, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    return-object v0

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/narvii/feed/vote/VoterListFooterAdapter;->feed:Lcom/narvii/model/Feed;

    return-object v0
.end method

.method private isCommunityJoined()Z
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/narvii/feed/vote/VoterListFooterAdapter;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    invoke-direct {p0}, Lcom/narvii/feed/vote/VoterListFooterAdapter;->getPublishNdcId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    move-result v0

    return v0
.end method

.method private openDetailList()V
    .locals 4

    .line 117
    sget-object v0, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CommunityLikesBar"

    goto :goto_0

    :cond_0
    const-string v1, "GuestLikesBar"

    :goto_0
    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 118
    const-class v0, Lcom/narvii/feed/vote/VoterListFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 119
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const-string v3, "__interactionScope"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "followingEnabled"

    .line 120
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 121
    invoke-direct {p0}, Lcom/narvii/feed/vote/VoterListFooterAdapter;->getVoteCommunityFeed()Lcom/narvii/model/Feed;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "nvObject"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/narvii/feed/vote/VoterListFooterAdapter;->getPublishNdcId()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-string v3, "__communityId"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 123
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    move-result v1

    xor-int/2addr v1, v2

    const-string v2, "__model"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 124
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private tryJoinCommunity()V
    .locals 3

    .line 142
    const-class v0, Lcom/narvii/master/CommunityDetailFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/narvii/feed/vote/VoterListFooterAdapter;->community:Lcom/narvii/model/Community;

    iget v1, v1, Lcom/narvii/model/Community;->id:I

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 144
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .line 50
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 51
    invoke-direct {p0}, Lcom/narvii/feed/vote/VoterListFooterAdapter;->getPublishNdcId()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/feed/vote/VoterListFooterAdapter;->feed:Lcom/narvii/model/Feed;

    invoke-virtual {v0, v1}, Lcom/narvii/model/Feed;->getVoteCount(Z)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/narvii/feed/vote/VoterListFooterAdapter;->feed:Lcom/narvii/model/Feed;

    invoke-virtual {v0, v2}, Lcom/narvii/model/Feed;->getVoteCount(Z)I

    move-result v0

    if-lez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
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

    .line 69
    iget-boolean p1, p0, Lcom/narvii/feed/vote/VoterListFooterAdapter;->dark:Z

    if-eqz p1, :cond_0

    const p1, 0x7f0b02f9

    goto :goto_0

    :cond_0
    const p1, 0x7f0b02f8

    :goto_0
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 70
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    move-result p2

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    .line 71
    iget-object p2, p0, Lcom/narvii/feed/vote/VoterListFooterAdapter;->community:Lcom/narvii/model/Community;

    if-eqz p2, :cond_3

    const p2, 0x7f090bd3

    .line 72
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 73
    iget-object v1, p0, Lcom/narvii/feed/vote/VoterListFooterAdapter;->feed:Lcom/narvii/model/Feed;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    move-result v2

    xor-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/narvii/model/Feed;->getVoteCount(Z)I

    move-result v1

    if-le v1, v0, :cond_1

    .line 75
    iget-object v2, p0, Lcom/narvii/feed/vote/VoterListFooterAdapter;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f1047

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p3

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 77
    :cond_1
    iget-object v2, p0, Lcom/narvii/feed/vote/VoterListFooterAdapter;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f1052

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p3

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const p2, 0x7f0902a3

    .line 79
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/CommunityIconView;

    .line 80
    iget-object p3, p0, Lcom/narvii/feed/vote/VoterListFooterAdapter;->community:Lcom/narvii/model/Community;

    iget-object p3, p3, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    const p2, 0x7f0902b6

    .line 81
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 82
    iget-object p3, p0, Lcom/narvii/feed/vote/VoterListFooterAdapter;->community:Lcom/narvii/model/Community;

    iget-object p3, p3, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    const p2, 0x7f0904eb

    .line 85
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    const p2, 0x7f0904ec

    .line 86
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 87
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    iget-object v1, p0, Lcom/narvii/feed/vote/VoterListFooterAdapter;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0748

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/narvii/feed/vote/VoterListFooterAdapter;->feed:Lcom/narvii/model/Feed;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    move-result v5

    xor-int/2addr v0, v5

    invoke-virtual {v4, v0}, Lcom/narvii/model/Feed;->getVoteCount(Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, p3

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    :cond_3
    :goto_2
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    if-eqz p5, :cond_1

    .line 96
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0904b5

    if-ne v0, v1, :cond_1

    .line 97
    invoke-direct {p0}, Lcom/narvii/feed/vote/VoterListFooterAdapter;->isCommunityJoined()Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 98
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p1, p3}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const p3, 0x7f0f075b

    .line 99
    invoke-virtual {p1, p3}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    const p3, 0x7f0f0193

    const/4 p4, 0x0

    .line 100
    invoke-virtual {p1, p3, p4}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const p3, 0x7f0f0aa0

    .line 101
    new-instance p4, Lcom/narvii/feed/vote/VoterListFooterAdapter$1;

    invoke-direct {p4, p0}, Lcom/narvii/feed/vote/VoterListFooterAdapter$1;-><init>(Lcom/narvii/feed/vote/VoterListFooterAdapter;)V

    invoke-virtual {p1, p3, p4}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 107
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    return p2

    .line 110
    :cond_0
    invoke-direct {p0}, Lcom/narvii/feed/vote/VoterListFooterAdapter;->openDetailList()V

    return p2

    .line 113
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
