.class public Lcom/narvii/story/detail/StoryRightButtonContainer;
.super Landroid/widget/LinearLayout;
.source "StoryRightButtonContainer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private accountService:Lcom/narvii/account/AccountService;

.field private bottomSheetListener:Lcom/narvii/story/IStoryBottomSheetListener;

.field private configService:Lcom/narvii/config/ConfigService;

.field private isBookMarketd:Ljava/lang/Boolean;

.field private isPreview:Z

.field private nvContext:Lcom/narvii/app/NVContext;

.field private story:Lcom/narvii/model/Blog;

.field private storyShareListener:Lcom/narvii/story/IStoryShareListener;

.field private final tippingHelper:Lcom/narvii/tipping/TippingHelper;

.field voteListener:Lcom/narvii/story/detail/VoteHelper$OnVoteListener;

.field private voting:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 148
    new-instance p2, Lcom/narvii/story/detail/StoryRightButtonContainer$1;

    invoke-direct {p2, p0}, Lcom/narvii/story/detail/StoryRightButtonContainer$1;-><init>(Lcom/narvii/story/detail/StoryRightButtonContainer;)V

    iput-object p2, p0, Lcom/narvii/story/detail/StoryRightButtonContainer;->voteListener:Lcom/narvii/story/detail/VoteHelper$OnVoteListener;

    .line 65
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/story/detail/StoryRightButtonContainer;->nvContext:Lcom/narvii/app/NVContext;

    .line 66
    invoke-direct {p0, p1}, Lcom/narvii/story/detail/StoryRightButtonContainer;->init(Landroid/content/Context;)V

    .line 67
    iget-object p1, p0, Lcom/narvii/story/detail/StoryRightButtonContainer;->nvContext:Lcom/narvii/app/NVContext;

    const-string p2, "config"

    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/config/ConfigService;

    iput-object p1, p0, Lcom/narvii/story/detail/StoryRightButtonContainer;->configService:Lcom/narvii/config/ConfigService;

    .line 68
    iget-object p1, p0, Lcom/narvii/story/detail/StoryRightButtonContainer;->nvContext:Lcom/narvii/app/NVContext;

    const-string p2, "account"

    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    iput-object p1, p0, Lcom/narvii/story/detail/StoryRightButtonContainer;->accountService:Lcom/narvii/account/AccountService;

    .line 69
    new-instance p1, Lcom/narvii/tipping/TippingHelper;

    iget-object p2, p0, Lcom/narvii/story/detail/StoryRightButtonContainer;->nvContext:Lcom/narvii/app/NVContext;

    invoke-direct {p1, p2}, Lcom/narvii/tipping/TippingHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/story/detail/StoryRightButtonContainer;->tippingHelper:Lcom/narvii/tipping/TippingHelper;

    return-void
.end method

.method static synthetic access$002(Lcom/narvii/story/detail/StoryRightButtonContainer;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/narvii/story/detail/StoryRightButtonContainer;->voting:Z

    return p1
.end method

.method static synthetic access$100(Lcom/narvii/story/detail/StoryRightButtonContainer;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/narvii/story/detail/StoryRightButtonContainer;->updateView()V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/story/detail/StoryRightButtonContainer;)Lcom/narvii/model/Blog;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/narvii/story/detail/StoryRightButtonContainer;->story:Lcom/narvii/model/Blog;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/story/detail/StoryRightButtonContainer;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/narvii/story/detail/StoryRightButtonContainer;->getLogEventClickBuilder()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/story/detail/StoryRightButtonContainer;)Lcom/narvii/story/IStoryShareListener;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/narvii/story/detail/StoryRightButtonContainer;->storyShareListener:Lcom/narvii/story/IStoryShareListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/narvii/story/detail/StoryRightButtonContainer;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/narvii/story/detail/StoryRightButtonContainer;->nvContext:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method private checkFansOnly()Z
    .locals 5

    .line 376
    iget-object v0, p0, Lcom/narvii/story/detail/StoryRightButtonContainer;->story:Lcom/narvii/model/Blog;

    if-eqz v0, :cond_5

    iget-boolean v0, v0, Lcom/narvii/model/Feed;->needHidden:Z

    if-nez v0, :cond_0

    goto :goto_2

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/narvii/story/detail/StoryRightButtonContainer;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/story/detail/StoryRightButtonContainer;->story:Lcom/narvii/model/Blog;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/narvii/model/Blog;->uid()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    goto :goto_1

    .line 382
    :cond_2
    iget-object v0, p0, Lcom/narvii/story/detail/StoryRightButtonContainer;->story:Lcom/narvii/model/Blog;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/narvii/model/User;->isInfluencer()Z

    move-result v0

    if-nez v0, :cond_3

    .line 384
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0f10b0

    invoke-static {v0, v2, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    goto :goto_1

    .line 385
    :cond_3
    iget-object v0, p0, Lcom/narvii/story/detail/StoryRightButtonContainer;->story:Lcom/narvii/model/Blog;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/narvii/model/Blog;->uid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 386
    iget-object v0, p0, Lcom/narvii/story/detail/StoryRightButtonContainer;->nvContext:Lcom/narvii/app/NVContext;

    iget-object v3, p0, Lcom/narvii/story/detail/StoryRightButtonContainer;->story:Lcom/narvii/model/Blog;

    invoke-virtual {v3}, Lcom/narvii/model/Blog;->uid()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/narvii/story/detail/StoryRightButtonContainer;->story:Lcom/narvii/model/Blog;

    iget v4, v4, Lcom/narvii/model/Feed;->ndcId:I

    invoke-static {v0, v3, v4, v2}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->showSubscriptionDialog(Lcom/narvii/app/NVContext;Ljava/lang/String;ILjava/lang/String;)V

    :cond_4
    :goto_1
    return v1

    :cond_5
    :goto_2
    const/4 v0, 0x0

    return v0
.end method

.method private getCountText(I)Ljava/lang/String;
    .locals 0

    if-gtz p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 143
    :cond_0
    invoke-static {p1}, Lcom/narvii/util/text/TextUtils;->getLiteCountWithCeil2(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getLogEventClickBuilder()Lcom/narvii/logging/LogEvent$Builder;
    .locals 2

    .line 350
    iget-object v0, p0, Lcom/narvii/story/detail/StoryRightButtonContainer;->story:Lcom/narvii/model/Blog;

    iget-boolean v1, p0, Lcom/narvii/story/detail/StoryRightButtonContainer;->isPreview:Z

    invoke-static {p0, v0, v1}, Lcom/narvii/util/StoryUtils;->getLogEventClickBuilder(Landroid/view/View;Lcom/narvii/model/Blog;Z)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v1, "MoreArea"

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    const/16 v0, 0x11

    .line 73
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v0, 0x1

    .line 74
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v0, 0x0

    .line 75
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    const v1, 0x7f0b0661

    .line 76
    invoke-static {p1, v1, p0}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 77
    invoke-direct {p0}, Lcom/narvii/story/detail/StoryRightButtonContainer;->updateView()V

    const p1, 0x7f090b84

    .line 78
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090cd5

    .line 79
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09028d

    .line 80
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090726

    .line 81
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090a22

    .line 82
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090cdc

    .line 84
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/story/detail/StoryVoteIcon;

    .line 85
    invoke-virtual {p1, v0}, Lcom/narvii/widget/VoteIcon;->setVotedValue(I)V

    return-void
.end method

.method private openBottomSheetView()Z
    .locals 4

    .line 392
    iget-object v0, p0, Lcom/narvii/story/detail/StoryRightButtonContainer;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/narvii/story/detail/StoryRightButtonContainer;->story:Lcom/narvii/model/Blog;

    iget-object v2, p0, Lcom/narvii/story/detail/StoryRightButtonContainer;->nvContext:Lcom/narvii/app/NVContext;

    invoke-static {v2}, Lcom/narvii/util/Utils;->isGlobalInteractionScope(Lcom/narvii/app/NVContext;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/narvii/model/Feed;->getVotedValue(Z)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 397
    iget-object v0, p0, Lcom/narvii/story/detail/StoryRightButtonContainer;->bottomSheetListener:Lcom/narvii/story/IStoryBottomSheetListener;

    if-eqz v0, :cond_2

    .line 398
    invoke-direct {p0}, Lcom/narvii/story/detail/StoryRightButtonContainer;->getLogEventClickBuilder()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v3, "LikesIcon"

    invoke-virtual {v0, v3}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    sget-object v3, Lcom/narvii/logging/ActSemantic;->checkAllLikes:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {v0, v3}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 399
    iget-object v0, p0, Lcom/narvii/story/detail/StoryRightButtonContainer;->bottomSheetListener:Lcom/narvii/story/IStoryBottomSheetListener;

    invoke-interface {v0, v1}, Lcom/narvii/story/IStoryBottomSheetListener;->onBottomSheetShow(I)V

    return v2

    :cond_2
    return v1
.end method

.method private startActivity(Landroid/content/Intent;)V
    .locals 1

    .line 367
    invoke-static {p0}, Lcom/narvii/paging/PageViewUtils;->getPageViewParent(Landroid/view/View;)Lcom/narvii/paging/PageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 369
    invoke-virtual {v0, p1}, Lcom/narvii/paging/PageView;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/narvii/story/detail/StoryRightButtonContainer;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v0, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private updateView()V
    .locals 6

    .line 104
    iget-object v0, p0, Lcom/narvii/story/detail/StoryRightButtonContainer;->story:Lcom/narvii/model/Blog;

    if-nez v0, :cond_0

    return-void

    .line 108
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/model/Feed;->getTippingInfo()Lcom/narvii/model/TippingInfo;

    move-result-object v0

    const v1, 0x7f090b84

    .line 109
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 110
    iget-boolean v4, v0, Lcom/narvii/model/TippingInfo;->tippable:Z

    if-eqz v4, :cond_1

    .line 111
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f090b8a

    .line 112
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget v0, v0, Lcom/narvii/model/TippingInfo;->tippedCoins:I

    invoke-direct {p0, v0}, Lcom/narvii/story/detail/StoryRightButtonContainer;->getCountText(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 114
    :cond_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const v0, 0x7f090292

    .line 117
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/TintButton;

    const/4 v1, -0x1

    .line 118
    invoke-virtual {v0, v1}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 120
    iget-object v0, p0, Lcom/narvii/story/detail/StoryRightButtonContainer;->story:Lcom/narvii/model/Blog;

    invoke-virtual {v0}, Lcom/narvii/model/Blog;->getTotalCommentsCount()I

    move-result v0

    const v4, 0x7f090290

    .line 121
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/narvii/story/detail/StoryRightButtonContainer;->getCountText(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090cdc

    .line 124
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/story/detail/StoryVoteIcon;

    .line 125
    iget-object v4, p0, Lcom/narvii/story/detail/StoryRightButtonContainer;->story:Lcom/narvii/model/Blog;

    iget-object v5, p0, Lcom/narvii/story/detail/StoryRightButtonContainer;->nvContext:Lcom/narvii/app/NVContext;

    invoke-static {v5}, Lcom/narvii/util/Utils;->isGlobalInteractionScope(Lcom/narvii/app/NVContext;)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/narvii/model/Feed;->getVotedValue(Z)I

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x4

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v0, v4}, Lcom/narvii/widget/VoteIcon;->setVotedValue(I)V

    .line 126
    invoke-virtual {v0, v1}, Lcom/narvii/widget/VoteIcon;->setNoneColor(I)V

    .line 127
    iget-boolean v1, p0, Lcom/narvii/story/detail/StoryRightButtonContainer;->voting:Z

    if-eqz v1, :cond_3

    const/16 v1, 0x8

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x7f090ce0

    .line 129
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/SpinningView;

    if-eqz v0, :cond_5

    .line 131
    iget-boolean v1, p0, Lcom/narvii/story/detail/StoryRightButtonContainer;->voting:Z

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    :cond_4
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 135
    :cond_5
    iget-object v0, p0, Lcom/narvii/story/detail/StoryRightButtonContainer;->story:Lcom/narvii/model/Blog;

    invoke-virtual {v0}, Lcom/narvii/model/Blog;->getTotalVotesCount()I

    move-result v0

    const v1, 0x7f090cd7

    .line 136
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/narvii/story/detail/StoryRightButtonContainer;->getCountText(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected bookmark(Ljava/lang/String;)V
    .locals 2

    .line 343
    iget-object v0, p0, Lcom/narvii/story/detail/StoryRightButtonContainer;->story:Lcom/narvii/model/Blog;

    if-nez v0, :cond_0

    return-void

    .line 346
    :cond_0
    new-instance v0, Lcom/narvii/feed/FeedHelper;

    iget-object v1, p0, Lcom/narvii/story/detail/StoryRightButtonContainer;->nvContext:Lcom/narvii/app/NVContext;

    invoke-direct {v0, v1}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {v0, p1}, Lcom/narvii/feed/FeedHelper;->source(Ljava/lang/String;)Lcom/narvii/feed/FeedHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/story/detail/StoryRightButtonContainer;->story:Lcom/narvii/model/Blog;

    new-instance v1, Lcom/narvii/story/detail/-$$Lambda$StoryRightButtonContainer$GKHABgSfxs3AY-AywST9MWtElfg;

    invoke-direct {v1, p0}, Lcom/narvii/story/detail/-$$Lambda$StoryRightButtonContainer$GKHABgSfxs3AY-AywST9MWtElfg;-><init>(Lcom/narvii/story/detail/StoryRightButtonContainer;)V

    invoke-virtual {p1, v0, v1}, Lcom/narvii/feed/FeedHelper;->bookmark(Lcom/narvii/model/Feed;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public doVote()V
    .locals 4

    .line 354
    iget-object v0, p0, Lcom/narvii/story/detail/StoryRightButtonContainer;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-nez v0, :cond_0

    .line 355
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/narvii/story/detail/StoryRightButtonContainer;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/narvii/account/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 356
    invoke-direct {p0, v0}, Lcom/narvii/story/detail/StoryRightButtonContainer;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 360
    :cond_0
    new-instance v0, Lcom/narvii/story/detail/VoteHelper;

    iget-object v1, p0, Lcom/narvii/story/detail/StoryRightButtonContainer;->nvContext:Lcom/narvii/app/NVContext;

    invoke-direct {v0, v1}, Lcom/narvii/story/detail/VoteHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 361
    iget-object v1, p0, Lcom/narvii/story/detail/StoryRightButtonContainer;->story:Lcom/narvii/model/Blog;

    iget v1, v1, Lcom/narvii/model/Feed;->ndcId:I

    invoke-virtual {v0, v1}, Lcom/narvii/story/detail/VoteHelper;->setCommunityId(I)V

    .line 362
    iget-object v1, p0, Lcom/narvii/story/detail/StoryRightButtonContainer;->story:Lcom/narvii/model/Blog;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/narvii/story/detail/StoryRightButtonContainer;->voteListener:Lcom/narvii/story/detail/VoteHelper$OnVoteListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/story/detail/VoteHelper;->vote(Lcom/narvii/model/Feed;Ljava/lang/Integer;Lcom/narvii/story/detail/VoteHelper$OnVoteListener;)V

    return-void
.end method

.method public synthetic lambda$bookmark$0$StoryRightButtonContainer(Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    .line 346
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f0174

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 164
    iget-boolean v0, p0, Lcom/narvii/story/detail/StoryRightButtonContainer;->isPreview:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f10b1

    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    return-void

    .line 168
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_6

    .line 189
    :sswitch_0
    invoke-direct {p0}, Lcom/narvii/story/detail/StoryRightButtonContainer;->checkFansOnly()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 193
    :cond_1
    invoke-direct {p0}, Lcom/narvii/story/detail/StoryRightButtonContainer;->openBottomSheetView()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 196
    :cond_2
    invoke-direct {p0}, Lcom/narvii/story/detail/StoryRightButtonContainer;->getLogEventClickBuilder()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "LikesIcon"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    sget-object v0, Lcom/narvii/logging/ActSemantic;->like:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 197
    invoke-virtual {p0}, Lcom/narvii/story/detail/StoryRightButtonContainer;->doVote()V

    goto/16 :goto_6

    .line 170
    :sswitch_1
    invoke-direct {p0}, Lcom/narvii/story/detail/StoryRightButtonContainer;->getLogEventClickBuilder()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v1, "PropIcon"

    invoke-virtual {p1, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    sget-object v1, Lcom/narvii/logging/ActSemantic;->prop:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p1, v1}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 172
    iget-object p1, p0, Lcom/narvii/story/detail/StoryRightButtonContainer;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result p1

    if-nez p1, :cond_3

    .line 173
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/narvii/story/detail/StoryRightButtonContainer;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/narvii/account/LoginActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 174
    invoke-direct {p0, p1}, Lcom/narvii/story/detail/StoryRightButtonContainer;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 178
    :cond_3
    invoke-direct {p0}, Lcom/narvii/story/detail/StoryRightButtonContainer;->checkFansOnly()Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    .line 182
    :cond_4
    iget-object p1, p0, Lcom/narvii/story/detail/StoryRightButtonContainer;->tippingHelper:Lcom/narvii/tipping/TippingHelper;

    iget-object v1, p0, Lcom/narvii/story/detail/StoryRightButtonContainer;->story:Lcom/narvii/model/Blog;

    invoke-virtual {p1, v1}, Lcom/narvii/tipping/TippingHelper;->isTipAuthor(Lcom/narvii/model/Tippable;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 183
    iget-object p1, p0, Lcom/narvii/story/detail/StoryRightButtonContainer;->tippingHelper:Lcom/narvii/tipping/TippingHelper;

    iget-object v1, p0, Lcom/narvii/story/detail/StoryRightButtonContainer;->story:Lcom/narvii/model/Blog;

    invoke-virtual {p1, v1, v0}, Lcom/narvii/tipping/TippingHelper;->openTippingList(Lcom/narvii/model/Tippable;Lcom/narvii/model/Community;)V

    goto/16 :goto_6

    .line 185
    :cond_5
    iget-object p1, p0, Lcom/narvii/story/detail/StoryRightButtonContainer;->tippingHelper:Lcom/narvii/tipping/TippingHelper;

    iget-object v1, p0, Lcom/narvii/story/detail/StoryRightButtonContainer;->story:Lcom/narvii/model/Blog;

    invoke-virtual {p1, v1, v0}, Lcom/narvii/tipping/TippingHelper;->openTipDialog(Lcom/narvii/model/Tippable;Lcom/narvii/monetization/store/TippingConfirmDialog$TipSuccessListener;)Lcom/narvii/monetization/store/TippingConfirmDialog;

    goto/16 :goto_6

    .line 213
    :sswitch_2
    invoke-direct {p0}, Lcom/narvii/story/detail/StoryRightButtonContainer;->getLogEventClickBuilder()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "ShareIcon"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    sget-object v0, Lcom/narvii/logging/ActSemantic;->share:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->toThirdParty()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 214
    iget-object p1, p0, Lcom/narvii/story/detail/StoryRightButtonContainer;->storyShareListener:Lcom/narvii/story/IStoryShareListener;

    if-eqz p1, :cond_11

    .line 215
    iget-object v0, p0, Lcom/narvii/story/detail/StoryRightButtonContainer;->story:Lcom/narvii/model/Blog;

    invoke-interface {p1, v0}, Lcom/narvii/story/IStoryShareListener;->onShareStory(Lcom/narvii/model/Blog;)V

    goto/16 :goto_6

    .line 219
    :sswitch_3
    iget-object p1, p0, Lcom/narvii/story/detail/StoryRightButtonContainer;->accountService:Lcom/narvii/account/AccountService;

    if-nez p1, :cond_6

    move-object p1, v0

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v3, p0, Lcom/narvii/story/detail/StoryRightButtonContainer;->story:Lcom/narvii/model/Blog;

    if-nez v3, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {v3}, Lcom/narvii/model/Blog;->uid()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    .line 220
    iget-object v0, p0, Lcom/narvii/story/detail/StoryRightButtonContainer;->story:Lcom/narvii/model/Blog;

    if-eqz v0, :cond_8

    iget v0, v0, Lcom/narvii/model/Feed;->status:I

    const/16 v3, 0x9

    if-eq v0, v3, :cond_8

    const/4 v0, 0x1

    goto :goto_2

    :cond_8
    const/4 v0, 0x0

    .line 221
    :goto_2
    iget-object v3, p0, Lcom/narvii/story/detail/StoryRightButtonContainer;->story:Lcom/narvii/model/Blog;

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lcom/narvii/model/Feed;->isGlobalFeed()Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x1

    goto :goto_3

    :cond_9
    const/4 v3, 0x0

    :goto_3
    const/16 v4, 0x10

    new-array v4, v4, [I

    .line 225
    new-instance v5, Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    if-eqz v0, :cond_a

    const v6, 0x7f0f02f5

    .line 228
    invoke-virtual {v5, v6, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    aput v6, v4, v1

    const v6, 0x7f0f0fa2

    .line 230
    invoke-virtual {v5, v6, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    const/4 v7, 0x2

    aput v6, v4, v2

    goto :goto_4

    :cond_a
    const/4 v7, 0x0

    :goto_4
    if-nez v3, :cond_b

    .line 234
    iget-object v6, p0, Lcom/narvii/story/detail/StoryRightButtonContainer;->nvContext:Lcom/narvii/app/NVContext;

    invoke-static {v6}, Lcom/narvii/util/Utils;->isGlobalInteractionScope(Lcom/narvii/app/NVContext;)Z

    move-result v6

    if-nez v6, :cond_b

    const v6, 0x7f0f0170

    .line 235
    invoke-virtual {v5, v6, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    add-int/lit8 v8, v7, 0x1

    .line 236
    aput v6, v4, v7

    move v7, v8

    :cond_b
    if-eqz p1, :cond_c

    const v6, 0x7f0f03cd

    .line 240
    invoke-virtual {v5, v6, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    add-int/lit8 v8, v7, 0x1

    .line 241
    aput v6, v4, v7

    const v6, 0x7f0f0348

    .line 242
    invoke-virtual {v5, v6, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    add-int/lit8 v7, v8, 0x1

    .line 243
    aput v6, v4, v8

    :cond_c
    if-eqz v0, :cond_e

    if-nez p1, :cond_e

    if-nez v3, :cond_d

    .line 247
    iget-object p1, p0, Lcom/narvii/story/detail/StoryRightButtonContainer;->nvContext:Lcom/narvii/app/NVContext;

    invoke-static {p1}, Lcom/narvii/util/Utils;->isGlobalInteractionScope(Lcom/narvii/app/NVContext;)Z

    move-result p1

    if-nez p1, :cond_d

    const p1, 0x7f0f0ee0

    .line 248
    invoke-virtual {v5, p1, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    add-int/lit8 v0, v7, 0x1

    .line 249
    aput p1, v4, v7

    goto :goto_5

    :cond_d
    move v0, v7

    :goto_5
    const p1, 0x7f0f06d5

    .line 252
    invoke-virtual {v5, p1, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    add-int/lit8 v7, v0, 0x1

    .line 253
    aput p1, v4, v0

    .line 257
    :cond_e
    iget-object p1, p0, Lcom/narvii/story/detail/StoryRightButtonContainer;->story:Lcom/narvii/model/Blog;

    if-eqz p1, :cond_f

    iget p1, p1, Lcom/narvii/model/Feed;->ndcId:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_f

    iget-object p1, p0, Lcom/narvii/story/detail/StoryRightButtonContainer;->nvContext:Lcom/narvii/app/NVContext;

    invoke-static {p1}, Lcom/narvii/util/Utils;->isGlobalInteractionScope(Lcom/narvii/app/NVContext;)Z

    move-result p1

    if-nez p1, :cond_f

    .line 258
    iget-object p1, p0, Lcom/narvii/story/detail/StoryRightButtonContainer;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 259
    invoke-virtual {p1}, Lcom/narvii/model/User;->isCurator()Z

    move-result p1

    if-eqz p1, :cond_f

    const p1, 0x7f0f0094

    .line 260
    invoke-virtual {v5, p1, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 261
    aput p1, v4, v7

    .line 274
    :cond_f
    new-instance p1, Lcom/narvii/story/detail/StoryRightButtonContainer$2;

    invoke-direct {p1, p0, v4}, Lcom/narvii/story/detail/StoryRightButtonContainer$2;-><init>(Lcom/narvii/story/detail/StoryRightButtonContainer;[I)V

    invoke-virtual {v5, p1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 336
    invoke-virtual {v5}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    goto :goto_6

    .line 201
    :sswitch_4
    invoke-direct {p0}, Lcom/narvii/story/detail/StoryRightButtonContainer;->checkFansOnly()Z

    move-result p1

    if-eqz p1, :cond_10

    return-void

    .line 205
    :cond_10
    iget-object p1, p0, Lcom/narvii/story/detail/StoryRightButtonContainer;->story:Lcom/narvii/model/Blog;

    if-eqz p1, :cond_11

    .line 206
    invoke-direct {p0}, Lcom/narvii/story/detail/StoryRightButtonContainer;->getLogEventClickBuilder()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "VideoArea"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    sget-object v0, Lcom/narvii/logging/ActSemantic;->checkComment:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->toThirdParty()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 207
    iget-object p1, p0, Lcom/narvii/story/detail/StoryRightButtonContainer;->bottomSheetListener:Lcom/narvii/story/IStoryBottomSheetListener;

    if-eqz p1, :cond_11

    .line 208
    invoke-interface {p1, v2}, Lcom/narvii/story/IStoryBottomSheetListener;->onBottomSheetShow(I)V

    :cond_11
    :goto_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09028d -> :sswitch_4
        0x7f090726 -> :sswitch_3
        0x7f090a22 -> :sswitch_2
        0x7f090b84 -> :sswitch_1
        0x7f090cd5 -> :sswitch_0
    .end sparse-switch
.end method

.method public setBottomSheetListener(Lcom/narvii/story/IStoryBottomSheetListener;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/narvii/story/detail/StoryRightButtonContainer;->bottomSheetListener:Lcom/narvii/story/IStoryBottomSheetListener;

    return-void
.end method

.method public setStoryInfo(Lcom/narvii/model/Blog;Z)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/narvii/story/detail/StoryRightButtonContainer;->story:Lcom/narvii/model/Blog;

    .line 91
    iput-boolean p2, p0, Lcom/narvii/story/detail/StoryRightButtonContainer;->isPreview:Z

    .line 92
    invoke-direct {p0}, Lcom/narvii/story/detail/StoryRightButtonContainer;->updateView()V

    return-void
.end method

.method public setStoryShareListener(Lcom/narvii/story/IStoryShareListener;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/narvii/story/detail/StoryRightButtonContainer;->storyShareListener:Lcom/narvii/story/IStoryShareListener;

    return-void
.end method
