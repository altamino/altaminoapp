.class public Lcom/narvii/comment/CommentListFooterAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "CommentListFooterAdapter.java"


# static fields
.field public static final TYPE_COMMENT:I = 0x2


# instance fields
.field private affiliationsService:Lcom/narvii/community/AffiliationsService;

.field private blog:Lcom/narvii/model/Feed;

.field protected community:Lcom/narvii/model/Community;

.field private communityService:Lcom/narvii/community/CommunityService;

.field private dark:Z

.field private nvContext:Lcom/narvii/app/NVContext;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;ZLcom/narvii/model/Community;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 39
    iput-object p4, p0, Lcom/narvii/comment/CommentListFooterAdapter;->community:Lcom/narvii/model/Community;

    .line 40
    iput-object p1, p0, Lcom/narvii/comment/CommentListFooterAdapter;->nvContext:Lcom/narvii/app/NVContext;

    .line 41
    iput-object p2, p0, Lcom/narvii/comment/CommentListFooterAdapter;->blog:Lcom/narvii/model/Feed;

    const-string p1, "affiliations"

    .line 42
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/AffiliationsService;

    iput-object p1, p0, Lcom/narvii/comment/CommentListFooterAdapter;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    if-nez p4, :cond_0

    const-string p1, "community"

    .line 44
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/CommunityService;

    iput-object p1, p0, Lcom/narvii/comment/CommentListFooterAdapter;->communityService:Lcom/narvii/community/CommunityService;

    .line 45
    iget-object p1, p0, Lcom/narvii/comment/CommentListFooterAdapter;->communityService:Lcom/narvii/community/CommunityService;

    invoke-direct {p0}, Lcom/narvii/comment/CommentListFooterAdapter;->getPublishNdcId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/comment/CommentListFooterAdapter;->community:Lcom/narvii/model/Community;

    .line 47
    :cond_0
    iput-boolean p3, p0, Lcom/narvii/comment/CommentListFooterAdapter;->dark:Z

    return-void
.end method

.method private getCommentCommunityFeed()Lcom/narvii/model/Feed;
    .locals 3

    .line 154
    iget-object v0, p0, Lcom/narvii/comment/CommentListFooterAdapter;->blog:Lcom/narvii/model/Feed;

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

    .line 155
    check-cast v0, Lcom/narvii/model/Blog;

    iget-object v0, v0, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    return-object v0

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/narvii/comment/CommentListFooterAdapter;->blog:Lcom/narvii/model/Feed;

    return-object v0
.end method

.method private getPublishNdcId()I
    .locals 3

    .line 143
    iget-object v0, p0, Lcom/narvii/comment/CommentListFooterAdapter;->blog:Lcom/narvii/model/Feed;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 146
    :cond_0
    iget v1, v0, Lcom/narvii/model/Feed;->ndcId:I

    .line 147
    instance-of v2, v0, Lcom/narvii/model/Blog;

    if-eqz v2, :cond_1

    .line 148
    check-cast v0, Lcom/narvii/model/Blog;

    invoke-virtual {v0}, Lcom/narvii/model/Blog;->getPublishNdcId()I

    move-result v1

    :cond_1
    return v1
.end method

.method private isCommunityJoined()Z
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/narvii/comment/CommentListFooterAdapter;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    invoke-direct {p0}, Lcom/narvii/comment/CommentListFooterAdapter;->getPublishNdcId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    move-result v0

    return v0
.end method

.method private openDetailList()V
    .locals 4

    .line 124
    sget-object v0, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CommunityCommentsBar"

    goto :goto_0

    :cond_0
    const-string v1, "GuestCommentsBar"

    :goto_0
    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 125
    invoke-direct {p0}, Lcom/narvii/comment/CommentListFooterAdapter;->getCommentCommunityFeed()Lcom/narvii/model/Feed;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1}, Lcom/narvii/comment/CommentHelper;->getCommentIntent(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;ZZ)Landroid/content/Intent;

    move-result-object v0

    .line 126
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    const-string v3, "__interactionScope"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 127
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    const-string v3, "__model"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 128
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/narvii/comment/CommentListFooterAdapter;->getPublishNdcId()I

    move-result v1

    :cond_1
    const-string v2, "__communityId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 129
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private tryJoinCommunity()V
    .locals 3

    .line 133
    const-class v0, Lcom/narvii/master/CommunityDetailFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 134
    invoke-direct {p0}, Lcom/narvii/comment/CommentListFooterAdapter;->getPublishNdcId()I

    move-result v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 135
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/narvii/comment/CommentListFooterAdapter;->blog:Lcom/narvii/model/Feed;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 56
    invoke-direct {p0}, Lcom/narvii/comment/CommentListFooterAdapter;->getPublishNdcId()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/comment/CommentListFooterAdapter;->blog:Lcom/narvii/model/Feed;

    invoke-virtual {v0, v1}, Lcom/narvii/model/Feed;->getCommentsCount(Z)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 58
    :cond_2
    iget-object v0, p0, Lcom/narvii/comment/CommentListFooterAdapter;->blog:Lcom/narvii/model/Feed;

    invoke-virtual {v0, v2}, Lcom/narvii/model/Feed;->getCommentsCount(Z)I

    move-result v0

    if-lez v0, :cond_3

    const/4 v1, 0x1

    :cond_3
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
    .locals 4

    .line 74
    iget-boolean p1, p0, Lcom/narvii/comment/CommentListFooterAdapter;->dark:Z

    if-eqz p1, :cond_0

    const p1, 0x7f0b02f9

    goto :goto_0

    :cond_0
    const p1, 0x7f0b02f8

    :goto_0
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 75
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    move-result p2

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    .line 76
    iget-object p2, p0, Lcom/narvii/comment/CommentListFooterAdapter;->community:Lcom/narvii/model/Community;

    if-eqz p2, :cond_4

    const p2, 0x7f090bd3

    .line 77
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 78
    iget-object v1, p0, Lcom/narvii/comment/CommentListFooterAdapter;->blog:Lcom/narvii/model/Feed;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    move-result v2

    xor-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/narvii/model/Feed;->getCommentsCount(Z)I

    move-result v1

    if-le v1, v0, :cond_1

    .line 80
    iget-object v2, p0, Lcom/narvii/comment/CommentListFooterAdapter;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f1044

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p3

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 82
    :cond_1
    iget-object v2, p0, Lcom/narvii/comment/CommentListFooterAdapter;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f104a

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p3

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const p2, 0x7f0902a3

    .line 84
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/CommunityIconView;

    .line 85
    iget-object p3, p0, Lcom/narvii/comment/CommentListFooterAdapter;->community:Lcom/narvii/model/Community;

    iget-object p3, p3, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    const p2, 0x7f0902b6

    .line 86
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 87
    iget-object p3, p0, Lcom/narvii/comment/CommentListFooterAdapter;->community:Lcom/narvii/model/Community;

    iget-object p3, p3, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p3

    const/high16 v0, 0x42b40000    # 90.0f

    invoke-static {p3, v0}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 89
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_2
    const p2, 0x7f0904eb

    .line 92
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    const p2, 0x7f0904ec

    .line 93
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 94
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    iget-object v1, p0, Lcom/narvii/comment/CommentListFooterAdapter;->blog:Lcom/narvii/model/Feed;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    move-result v2

    xor-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/narvii/model/Feed;->getCommentsCount(Z)I

    move-result v1

    if-le v1, v0, :cond_3

    .line 97
    iget-object v2, p0, Lcom/narvii/comment/CommentListFooterAdapter;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f0746

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p3

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 99
    :cond_3
    iget-object p3, p0, Lcom/narvii/comment/CommentListFooterAdapter;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {p3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p3

    const v0, 0x7f0f0747

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    :cond_4
    :goto_2
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public synthetic lambda$onItemClick$0$CommentListFooterAdapter(Landroid/view/View;)V
    .locals 0

    .line 113
    invoke-direct {p0}, Lcom/narvii/comment/CommentListFooterAdapter;->tryJoinCommunity()V

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    if-eqz p5, :cond_1

    .line 108
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0904b5

    if-ne v0, v1, :cond_1

    .line 109
    invoke-direct {p0}, Lcom/narvii/comment/CommentListFooterAdapter;->isCommunityJoined()Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 110
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p1, p3}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const p3, 0x7f0f075b

    .line 111
    invoke-virtual {p1, p3}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    const p3, 0x7f0f0193

    const/4 p4, 0x0

    .line 112
    invoke-virtual {p1, p3, p4}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const p3, 0x7f0f0aa0

    .line 113
    new-instance p4, Lcom/narvii/comment/-$$Lambda$CommentListFooterAdapter$Bxy59uC2KtGyPBjJtYjkk0RhDOU;

    invoke-direct {p4, p0}, Lcom/narvii/comment/-$$Lambda$CommentListFooterAdapter$Bxy59uC2KtGyPBjJtYjkk0RhDOU;-><init>(Lcom/narvii/comment/CommentListFooterAdapter;)V

    invoke-virtual {p1, p3, p4}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 114
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    return p2

    .line 117
    :cond_0
    invoke-direct {p0}, Lcom/narvii/comment/CommentListFooterAdapter;->openDetailList()V

    return p2

    .line 120
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
