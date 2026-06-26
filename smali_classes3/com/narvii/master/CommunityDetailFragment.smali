.class public Lcom/narvii/master/CommunityDetailFragment;
.super Lcom/narvii/list/NVListFragment;
.source "CommunityDetailFragment.java"

# interfaces
.implements Lcom/narvii/app/FragmentOnBackListener;
.implements Lcom/narvii/util/ws/WsService$WsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/CommunityDetailFragment$CommunityDetailDivideColumnAdapter;,
        Lcom/narvii/master/CommunityDetailFragment$EndorsedCommunityAdapter;,
        Lcom/narvii/master/CommunityDetailFragment$EndorsedCommunityTitleAdapter;,
        Lcom/narvii/master/CommunityDetailFragment$MainAdapter;
    }
.end annotation


# static fields
.field static final CONTENT_LOADING:Lcom/narvii/detail/DetailAdapter$CellType;

.field static final DESCRIPTION_ERROR:Lcom/narvii/detail/DetailAdapter$CellType;

.field static final DESCRIPTION_TITLE:Lcom/narvii/detail/DetailAdapter$CellType;

.field static final HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

.field static final INFLUENCER_CELL:Lcom/narvii/detail/DetailAdapter$CellType;

.field static final JOIN_COMMUNITY:Lcom/narvii/detail/DetailAdapter$CellType;

.field static final JOIN_COMMUNITY_MARGIN:Lcom/narvii/detail/DetailAdapter$CellType;

.field public static final KEY_AUTO_JOIN:Ljava/lang/String; = "autoJoin"

.field public static final KEY_BLOCKING_PRIVATE_COMMUNITY:Ljava/lang/String; = "blockPrivateCommunity"

.field public static final KEY_COMMUNITY:Ljava/lang/String; = "prefetch"

.field public static final KEY_COMMUNITY_INFO_REQUESTED:Ljava/lang/String; = "communityInfoRequested"

.field public static final KEY_COMMUNITY_USER_INFO_CHANGED:Ljava/lang/String; = "com.narvii.action.COMMUNITY_USER_INFO_CHANGED"

.field public static final KEY_CURRENT_USER_JOINED:Ljava/lang/String; = "isCurrentUserJoined"

.field public static final KEY_INVITATION_CODE:Ljava/lang/String; = "inviteCode"

.field public static final KEY_INVITATION_ID:Ljava/lang/String; = "invitationId"

.field public static final KEY_LOGIN_AHEAD:Ljava/lang/String; = "loginAhead"

.field static final NO_DESCRIPTION:Lcom/narvii/detail/DetailAdapter$CellType;

.field static final REQUEST_CODE_LIVE_LAYER:I = 0x12c

.field static final TAGLINE:Lcom/narvii/detail/DetailAdapter$CellType;

.field static final TOPIC_CELL:Lcom/narvii/detail/DetailAdapter$CellType;


# instance fields
.field private blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

.field private checkEligibleRequest:Lcom/narvii/util/http/ApiRequest;

.field cid:I

.field private communityCheckHelper:Lcom/narvii/master/invitation/PrivateCommunityCheckHelper;

.field communityDetailBg:Lcom/narvii/widget/PromotionalImageView;

.field private communityIconActionBarLayout:Landroid/view/View;

.field private communityInfoRequested:Z

.field detailFrame:Landroid/view/View;

.field endorsedCommunityAdapter:Lcom/narvii/master/CommunityDetailFragment$EndorsedCommunityAdapter;

.field endorsedCommunityTitleAdapter:Lcom/narvii/master/CommunityDetailFragment$EndorsedCommunityTitleAdapter;

.field private fakeActionBar:Landroid/view/View;

.field private getSubmittedRequest:Lcom/narvii/util/http/ApiRequest;

.field private hoverBtnJoin:Landroid/widget/TextView;

.field private hoverContainer:Landroid/view/View;

.field private hoverJoinCommunityProgress:Lcom/narvii/widget/JoinCommunityProgressLayout;

.field private hoverOffset:I

.field private hoverPrivateLock:Landroid/view/View;

.field intentAfterLaunch:Landroid/content/Intent;

.field private invitationId:Ljava/lang/String;

.field private inviteCode:Ljava/lang/String;

.field private inviteHelper:Lcom/narvii/master/invitation/InviteHelper;

.field private isCurrentUserJoined:Z

.field private isInProgress:Z

.field private isInviteCodeRequested:Z

.field private isRequested:Z

.field private isUserJoinedBeforeLaunch:Z

.field private joinCommunityButtonContainer:Landroid/view/View;

.field joinLogin:Landroid/content/Intent;

.field private joinProgress:I

.field liveLayerHelper:Lcom/narvii/livelayer/LiveLayerHelper;

.field liveLayerWsService:Lcom/narvii/livelayer/ws/LiveLayerWsService;

.field private mCommunity:Lcom/narvii/model/Community;

.field private mLaunchHelper:Lcom/narvii/community/CommunityLaunchHelper;

.field mainAdapter:Lcom/narvii/master/CommunityDetailFragment$MainAdapter;

.field offline:Z

.field onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field onUserClickListener:Lcom/narvii/widget/InfluencerRecyclerView$OnUserClickListener;

.field onlineMemberBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

.field onlineMemberListRequested:Z

.field private pendingAutoLogin:Z

.field final receiver:Landroid/content/BroadcastReceiver;

.field rootFrame:Landroid/view/View;

.field showMoreTopics:Z

.field topic:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 155
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const/4 v1, 0x0

    const-string v2, "detail.title"

    invoke-direct {v0, v2, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/narvii/master/CommunityDetailFragment;->HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 156
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v2, "detail.tagline"

    invoke-direct {v0, v2, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/narvii/master/CommunityDetailFragment;->TAGLINE:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 157
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v1, "detail.loading"

    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/master/CommunityDetailFragment;->CONTENT_LOADING:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 158
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v1, "detail.description"

    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/master/CommunityDetailFragment;->DESCRIPTION_TITLE:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 159
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v1, "detail.error"

    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/master/CommunityDetailFragment;->DESCRIPTION_ERROR:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 160
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v1, "detail.no.description"

    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/master/CommunityDetailFragment;->NO_DESCRIPTION:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 161
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v1, "detail.join.community"

    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/master/CommunityDetailFragment;->JOIN_COMMUNITY:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 162
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v1, "detail.join.community.margin"

    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/master/CommunityDetailFragment;->JOIN_COMMUNITY_MARGIN:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 163
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v1, "detail.influencer"

    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/master/CommunityDetailFragment;->INFLUENCER_CELL:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 164
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v1, "detail.topic"

    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/master/CommunityDetailFragment;->TOPIC_CELL:Lcom/narvii/detail/DetailAdapter$CellType;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 152
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    const/4 v0, 0x1

    .line 190
    iput-boolean v0, p0, Lcom/narvii/master/CommunityDetailFragment;->showMoreTopics:Z

    const-string v0, "online-members"

    .line 228
    iput-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->topic:Ljava/lang/String;

    .line 235
    new-instance v0, Lcom/narvii/master/CommunityDetailFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/master/CommunityDetailFragment$1;-><init>(Lcom/narvii/master/CommunityDetailFragment;)V

    iput-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 746
    new-instance v0, Lcom/narvii/master/CommunityDetailFragment$7;

    invoke-direct {v0, p0}, Lcom/narvii/master/CommunityDetailFragment$7;-><init>(Lcom/narvii/master/CommunityDetailFragment;)V

    iput-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/master/CommunityDetailFragment;)V
    .locals 0

    .line 152
    invoke-direct {p0}, Lcom/narvii/master/CommunityDetailFragment;->updateAccountRelatedViews()V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/master/CommunityDetailFragment;)Lcom/narvii/master/invitation/PrivateCommunityCheckHelper;
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/narvii/master/CommunityDetailFragment;->communityCheckHelper:Lcom/narvii/master/invitation/PrivateCommunityCheckHelper;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/narvii/master/CommunityDetailFragment;)V
    .locals 0

    .line 152
    invoke-direct {p0}, Lcom/narvii/master/CommunityDetailFragment;->updateHoverJoinButtonView()V

    return-void
.end method

.method static synthetic access$1100(Lcom/narvii/master/CommunityDetailFragment;Ljava/lang/String;)V
    .locals 0

    .line 152
    invoke-direct {p0, p1}, Lcom/narvii/master/CommunityDetailFragment;->shareCommunity(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/narvii/master/CommunityDetailFragment;)Lcom/narvii/model/Community;
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/narvii/master/CommunityDetailFragment;->mCommunity:Lcom/narvii/model/Community;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/narvii/master/CommunityDetailFragment;Lcom/narvii/model/Community;)Lcom/narvii/model/Community;
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment;->mCommunity:Lcom/narvii/model/Community;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/narvii/master/CommunityDetailFragment;)Ljava/lang/String;
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/narvii/master/CommunityDetailFragment;->inviteCode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/narvii/master/CommunityDetailFragment;)V
    .locals 0

    .line 152
    invoke-direct {p0}, Lcom/narvii/master/CommunityDetailFragment;->updateCommunityRelatedViews()V

    return-void
.end method

.method static synthetic access$1500(Lcom/narvii/master/CommunityDetailFragment;)V
    .locals 0

    .line 152
    invoke-direct {p0}, Lcom/narvii/master/CommunityDetailFragment;->updateHoverView()V

    return-void
.end method

.method static synthetic access$1600(Lcom/narvii/master/CommunityDetailFragment;)V
    .locals 0

    .line 152
    invoke-direct {p0}, Lcom/narvii/master/CommunityDetailFragment;->requestCommunityOnlineData()V

    return-void
.end method

.method static synthetic access$1700(Lcom/narvii/master/CommunityDetailFragment;)Z
    .locals 0

    .line 152
    iget-boolean p0, p0, Lcom/narvii/master/CommunityDetailFragment;->communityInfoRequested:Z

    return p0
.end method

.method static synthetic access$1702(Lcom/narvii/master/CommunityDetailFragment;Z)Z
    .locals 0

    .line 152
    iput-boolean p1, p0, Lcom/narvii/master/CommunityDetailFragment;->communityInfoRequested:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/narvii/master/CommunityDetailFragment;Landroid/content/Intent;)V
    .locals 0

    .line 152
    invoke-direct {p0, p1}, Lcom/narvii/master/CommunityDetailFragment;->joinCommunity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1902(Lcom/narvii/master/CommunityDetailFragment;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment;->joinCommunityButtonContainer:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$200(Lcom/narvii/master/CommunityDetailFragment;)V
    .locals 0

    .line 152
    invoke-direct {p0}, Lcom/narvii/master/CommunityDetailFragment;->joinCommunity()V

    return-void
.end method

.method static synthetic access$2000(Lcom/narvii/master/CommunityDetailFragment;Lcom/narvii/model/Community;Lcom/narvii/widget/JoinCommunityProgressLayout;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 0

    .line 152
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/narvii/master/CommunityDetailFragment;->updateJoinButton(Lcom/narvii/model/Community;Lcom/narvii/widget/JoinCommunityProgressLayout;Landroid/widget/TextView;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/narvii/master/CommunityDetailFragment;)Z
    .locals 0

    .line 152
    iget-boolean p0, p0, Lcom/narvii/master/CommunityDetailFragment;->isInProgress:Z

    return p0
.end method

.method static synthetic access$2102(Lcom/narvii/master/CommunityDetailFragment;Z)Z
    .locals 0

    .line 152
    iput-boolean p1, p0, Lcom/narvii/master/CommunityDetailFragment;->isInProgress:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/narvii/master/CommunityDetailFragment;)I
    .locals 0

    .line 152
    iget p0, p0, Lcom/narvii/master/CommunityDetailFragment;->joinProgress:I

    return p0
.end method

.method static synthetic access$2202(Lcom/narvii/master/CommunityDetailFragment;I)I
    .locals 0

    .line 152
    iput p1, p0, Lcom/narvii/master/CommunityDetailFragment;->joinProgress:I

    return p1
.end method

.method static synthetic access$2400(Lcom/narvii/master/CommunityDetailFragment;)V
    .locals 0

    .line 152
    invoke-direct {p0}, Lcom/narvii/master/CommunityDetailFragment;->updateJoinButtonStatus()V

    return-void
.end method

.method static synthetic access$300(Lcom/narvii/master/CommunityDetailFragment;)Z
    .locals 0

    .line 152
    iget-boolean p0, p0, Lcom/narvii/master/CommunityDetailFragment;->isInviteCodeRequested:Z

    return p0
.end method

.method static synthetic access$3000(Lcom/narvii/master/CommunityDetailFragment;)Lcom/narvii/community/CommunityLaunchHelper;
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/narvii/master/CommunityDetailFragment;->mLaunchHelper:Lcom/narvii/community/CommunityLaunchHelper;

    return-object p0
.end method

.method static synthetic access$302(Lcom/narvii/master/CommunityDetailFragment;Z)Z
    .locals 0

    .line 152
    iput-boolean p1, p0, Lcom/narvii/master/CommunityDetailFragment;->isInviteCodeRequested:Z

    return p1
.end method

.method static synthetic access$402(Lcom/narvii/master/CommunityDetailFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment;->invitationId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/narvii/master/CommunityDetailFragment;)Z
    .locals 0

    .line 152
    iget-boolean p0, p0, Lcom/narvii/master/CommunityDetailFragment;->isCurrentUserJoined:Z

    return p0
.end method

.method static synthetic access$502(Lcom/narvii/master/CommunityDetailFragment;Z)Z
    .locals 0

    .line 152
    iput-boolean p1, p0, Lcom/narvii/master/CommunityDetailFragment;->isCurrentUserJoined:Z

    return p1
.end method

.method static synthetic access$602(Lcom/narvii/master/CommunityDetailFragment;Z)Z
    .locals 0

    .line 152
    iput-boolean p1, p0, Lcom/narvii/master/CommunityDetailFragment;->isRequested:Z

    return p1
.end method

.method static synthetic access$700(Lcom/narvii/master/CommunityDetailFragment;)Lcom/github/mmin18/widget/RealtimeBlurView;
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/narvii/master/CommunityDetailFragment;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/narvii/master/CommunityDetailFragment;F)V
    .locals 0

    .line 152
    invoke-direct {p0, p1}, Lcom/narvii/master/CommunityDetailFragment;->updateActionBarHeader(F)V

    return-void
.end method

.method static synthetic access$900(Lcom/narvii/master/CommunityDetailFragment;)Landroid/view/View;
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/narvii/master/CommunityDetailFragment;->fakeActionBar:Landroid/view/View;

    return-object p0
.end method

.method private initBgViews(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0902bb

    .line 896
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/PromotionalImageView;

    iput-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->communityDetailBg:Lcom/narvii/widget/PromotionalImageView;

    const v0, 0x7f09013c

    .line 897
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/github/mmin18/widget/RealtimeBlurView;

    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 898
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment;->communityDetailBg:Lcom/narvii/widget/PromotionalImageView;

    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->mCommunity:Lcom/narvii/model/Community;

    invoke-virtual {p1, v0}, Lcom/narvii/widget/PromotionalImageView;->setCommunity(Lcom/narvii/model/Community;)V

    return-void
.end method

.method private initLaunchHelper()V
    .locals 2

    .line 1553
    new-instance v0, Lcom/narvii/master/CommunityDetailFragment$11;

    const-string v1, "Community Detail"

    invoke-direct {v0, p0, p0, v1}, Lcom/narvii/master/CommunityDetailFragment$11;-><init>(Lcom/narvii/master/CommunityDetailFragment;Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->mLaunchHelper:Lcom/narvii/community/CommunityLaunchHelper;

    return-void
.end method

.method private joinCommunity()V
    .locals 1

    const/4 v0, 0x0

    .line 587
    invoke-direct {p0, v0}, Lcom/narvii/master/CommunityDetailFragment;->joinCommunity(Landroid/content/Intent;)V

    return-void
.end method

.method private joinCommunity(Landroid/content/Intent;)V
    .locals 7

    .line 591
    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment;->intentAfterLaunch:Landroid/content/Intent;

    .line 592
    iget-boolean p1, p0, Lcom/narvii/master/CommunityDetailFragment;->isCurrentUserJoined:Z

    const-string v0, "config"

    const-string v1, "JoinButton"

    const-string v2, "Source"

    if-nez p1, :cond_6

    const-string p1, "logging"

    .line 593
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/logging/LoggingService;

    .line 595
    iget-object v3, p0, Lcom/narvii/master/CommunityDetailFragment;->mCommunity:Lcom/narvii/model/Community;

    if-nez v3, :cond_0

    .line 596
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/config/ConfigService;

    .line 597
    invoke-virtual {v3}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v3

    goto :goto_0

    .line 599
    :cond_0
    iget v3, v3, Lcom/narvii/model/Community;->id:I

    .line 601
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "loggingObjectId"

    .line 602
    invoke-virtual {p0, v5}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    const-string v6, "referralObjectId"

    .line 603
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 604
    invoke-virtual {p0, v5}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v5, "ndcId"

    .line 606
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 607
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "eventOrigin"

    .line 608
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 609
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 610
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v3, "eventSource"

    .line 613
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 614
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 615
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 616
    :cond_3
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Link"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 617
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 618
    sget-object v3, Lcom/narvii/util/logging/LoggingSource;->Link:Lcom/narvii/util/logging/LoggingSource;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 620
    :cond_4
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 621
    sget-object v3, Lcom/narvii/util/logging/LoggingSource;->AminoDetailViewJoinBarButton:Lcom/narvii/util/logging/LoggingSource;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    const-string v3, "tags"

    .line 624
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 625
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 626
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 628
    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v3

    const-string v4, "JoinAminoStarting"

    invoke-interface {p1, v4, v3}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 630
    sget-object p1, Lcom/narvii/logging/ActSemantic;->aminoJoin:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    iget v1, p0, Lcom/narvii/master/CommunityDetailFragment;->cid:I

    invoke-virtual {p1, v1}, Lcom/narvii/logging/LogEvent$Builder;->objectId(I)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    sget-object v1, Lcom/narvii/logging/ObjectType;->community:Lcom/narvii/logging/ObjectType;

    invoke-virtual {p1, v1}, Lcom/narvii/logging/LogEvent$Builder;->objectType(Lcom/narvii/logging/ObjectType;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/narvii/master/CommunityDetailFragment;->mCommunity:Lcom/narvii/model/Community;

    invoke-virtual {p1, v1}, Lcom/narvii/logging/LogEvent$Builder;->objectIfNotNull(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    goto :goto_2

    .line 632
    :cond_6
    sget-object p1, Lcom/narvii/logging/ActSemantic;->aminoEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    iget v1, p0, Lcom/narvii/master/CommunityDetailFragment;->cid:I

    invoke-virtual {p1, v1}, Lcom/narvii/logging/LogEvent$Builder;->objectId(I)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    sget-object v1, Lcom/narvii/logging/ObjectType;->community:Lcom/narvii/logging/ObjectType;

    invoke-virtual {p1, v1}, Lcom/narvii/logging/LogEvent$Builder;->objectType(Lcom/narvii/logging/ObjectType;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/narvii/master/CommunityDetailFragment;->mCommunity:Lcom/narvii/model/Community;

    invoke-virtual {p1, v1}, Lcom/narvii/logging/LogEvent$Builder;->objectIfNotNull(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    :goto_2
    const-string p1, "account"

    .line 635
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 636
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result p1

    const/16 v1, 0x65

    if-nez p1, :cond_9

    .line 637
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 638
    sget v0, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    if-ne v0, v1, :cond_8

    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p1

    iget v0, p0, Lcom/narvii/master/CommunityDetailFragment;->cid:I

    if-ne p1, v0, :cond_8

    .line 639
    sget-object p1, Lcom/narvii/account/LoginActivity;->instance:Ljava/lang/ref/WeakReference;

    if-nez p1, :cond_7

    const/4 p1, 0x0

    goto :goto_3

    :cond_7
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/LoginActivity;

    :goto_3
    if-eqz p1, :cond_8

    .line 641
    invoke-virtual {p1}, Lcom/narvii/account/LoginActivity;->finish()V

    .line 644
    :cond_8
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment;->joinLogin:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    return-void

    .line 648
    :cond_9
    sget p1, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const-string v0, "Join Community Button"

    if-ne p1, v1, :cond_f

    .line 649
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment;->mCommunity:Lcom/narvii/model/Community;

    if-eqz p1, :cond_e

    .line 650
    new-instance p1, Lcom/narvii/util/PackageUtils;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 651
    invoke-virtual {p1}, Lcom/narvii/util/PackageUtils;->getCommunityIdFromPackageName()I

    move-result p1

    .line 652
    iget-object v1, p0, Lcom/narvii/master/CommunityDetailFragment;->mCommunity:Lcom/narvii/model/Community;

    iget v1, v1, Lcom/narvii/model/Community;->id:I

    if-ne v1, p1, :cond_d

    .line 653
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment;->mainAdapter:Lcom/narvii/master/CommunityDetailFragment$MainAdapter;

    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->getResponse()Lcom/narvii/model/api/ObjectResponse;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/FullCommunityResponse;

    if-eqz p1, :cond_a

    .line 654
    iget-boolean p1, p1, Lcom/narvii/community/FullCommunityResponse;->isCurrentUserJoined:Z

    if-eqz p1, :cond_a

    .line 656
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/narvii/amino/MainActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x4000000

    .line 657
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 658
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    const-string p1, "affiliations"

    .line 659
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/AffiliationsService;

    .line 660
    iget v0, p0, Lcom/narvii/master/CommunityDetailFragment;->cid:I

    invoke-virtual {p1, v0}, Lcom/narvii/community/AffiliationsService;->opAdd(I)V

    goto :goto_5

    .line 662
    :cond_a
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment;->invitationId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment;->mCommunity:Lcom/narvii/model/Community;

    iget p1, p1, Lcom/narvii/model/Community;->joinType:I

    if-nez p1, :cond_b

    goto :goto_4

    .line 665
    :cond_b
    new-instance p1, Lcom/narvii/master/CommunityDetailFragment$5;

    invoke-direct {p1, p0}, Lcom/narvii/master/CommunityDetailFragment$5;-><init>(Lcom/narvii/master/CommunityDetailFragment;)V

    invoke-direct {p0, p1}, Lcom/narvii/master/CommunityDetailFragment;->openJoinRequest(Lcom/narvii/community/request/RequestJoinCommunityDialog$CallBack;)V

    goto :goto_5

    .line 663
    :cond_c
    :goto_4
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment;->joinLogin:Landroid/content/Intent;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_5

    .line 677
    :cond_d
    new-instance p1, Lcom/narvii/master/JoinCommunityHelper;

    invoke-direct {p1, p0}, Lcom/narvii/master/JoinCommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 678
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->mCommunity:Lcom/narvii/model/Community;

    iget v0, v0, Lcom/narvii/model/Community;->id:I

    invoke-virtual {p1, v0}, Lcom/narvii/master/JoinCommunityHelper;->joinAnotherCommunityInStandalone(I)V

    :cond_e
    :goto_5
    return-void

    .line 684
    :cond_f
    iget-boolean p1, p0, Lcom/narvii/master/CommunityDetailFragment;->isCurrentUserJoined:Z

    if-eqz p1, :cond_10

    .line 685
    iput-boolean p1, p0, Lcom/narvii/master/CommunityDetailFragment;->isUserJoinedBeforeLaunch:Z

    .line 686
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment;->mainAdapter:Lcom/narvii/master/CommunityDetailFragment$MainAdapter;

    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->getResponse()Lcom/narvii/model/api/ObjectResponse;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/FullCommunityResponse;

    .line 687
    invoke-direct {p0, p1}, Lcom/narvii/master/CommunityDetailFragment;->launchCommunity(Lcom/narvii/community/FullCommunityResponse;)V

    return-void

    :cond_10
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment;->mCommunity:Lcom/narvii/model/Community;

    iget p1, p1, Lcom/narvii/model/Community;->joinType:I

    if-nez p1, :cond_private

    :goto_ensure_join
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment;->joinLogin:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    return-void

    :cond_private
    const/4 v0, 0x1

    if-ne p1, v0, :cond_closed

    const/4 v1, 0x1

    goto :goto_z2

    :cond_closed
    const/4 v1, 0x0

    :goto_z2
    iget-object v2, p0, Lcom/narvii/master/CommunityDetailFragment;->invitationId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_dialog

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_dialog

    goto :goto_ensure_join

    :cond_dialog
    new-instance v2, Lcom/narvii/master/CommunityDetailFragment$6;

    invoke-direct {v2, p0, v1}, Lcom/narvii/master/CommunityDetailFragment$6;-><init>(Lcom/narvii/master/CommunityDetailFragment;Z)V

    invoke-direct {p0, v2}, Lcom/narvii/master/CommunityDetailFragment;->openJoinRequest(Lcom/narvii/community/request/RequestJoinCommunityDialog$CallBack;)V

    return-void
.end method

.method private launchCommunity(Lcom/narvii/community/FullCommunityResponse;)V
    .locals 11

    const-string v0, "joinOnly"

    .line 1693
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    .line 1694
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setResult(I)V

    .line 1695
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1702
    iget-object v1, p1, Lcom/narvii/model/api/CommunityResponse;->community:Lcom/narvii/model/Community;

    .line 1703
    iget-object v2, p1, Lcom/narvii/community/FullCommunityResponse;->currentUserInfo:Lcom/narvii/community/CommunityUserInfo;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, v2, Lcom/narvii/community/CommunityUserInfo;->userProfile:Lcom/narvii/model/User;

    .line 1704
    :goto_0
    iget-object p1, p1, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    move-object v9, p1

    move-object v6, v0

    move-object v4, v1

    goto :goto_1

    :cond_2
    move-object v4, v0

    move-object v6, v4

    move-object v9, v6

    .line 1706
    :goto_1
    iget-object v2, p0, Lcom/narvii/master/CommunityDetailFragment;->mLaunchHelper:Lcom/narvii/community/CommunityLaunchHelper;

    iget v3, p0, Lcom/narvii/master/CommunityDetailFragment;->cid:I

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v5, v9

    move-object v7, v9

    invoke-virtual/range {v2 .. v10}, Lcom/narvii/community/CommunityLaunchHelper;->launch(ILcom/narvii/model/Community;Ljava/lang/String;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/community/ReminderCheck;Ljava/lang/String;Z)V

    return-void
.end method

.method private openJoinRequest(Lcom/narvii/community/request/RequestJoinCommunityDialog$CallBack;)V
    .locals 7

    .line 741
    new-instance v6, Lcom/narvii/community/request/RequestJoinCommunityDialog;

    iget-object v3, p0, Lcom/narvii/master/CommunityDetailFragment;->mCommunity:Lcom/narvii/model/Community;

    iget v2, v3, Lcom/narvii/model/Community;->joinType:I

    iget-boolean v5, p0, Lcom/narvii/master/CommunityDetailFragment;->isRequested:Z

    move-object v0, v6

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/narvii/community/request/RequestJoinCommunityDialog;-><init>(Lcom/narvii/app/NVContext;ILcom/narvii/model/Community;Lcom/narvii/community/request/RequestJoinCommunityDialog$CallBack;Z)V

    .line 743
    invoke-virtual {v6}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method

.method private requestCommunityOnlineData()V
    .locals 8

    .line 393
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->mCommunity:Lcom/narvii/model/Community;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/narvii/model/Community;->joinType:I

    if-nez v0, :cond_0

    .line 394
    new-instance v0, Lcom/narvii/livelayer/LiveLayerHelper;

    iget v1, p0, Lcom/narvii/master/CommunityDetailFragment;->cid:I

    invoke-direct {v0, p0, v1}, Lcom/narvii/livelayer/LiveLayerHelper;-><init>(Lcom/narvii/app/NVContext;I)V

    iput-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->liveLayerHelper:Lcom/narvii/livelayer/LiveLayerHelper;

    .line 395
    iget-object v2, p0, Lcom/narvii/master/CommunityDetailFragment;->liveLayerHelper:Lcom/narvii/livelayer/LiveLayerHelper;

    iget-object v3, p0, Lcom/narvii/master/CommunityDetailFragment;->topic:Ljava/lang/String;

    const/16 v4, 0xa

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-instance v7, Lcom/narvii/master/CommunityDetailFragment$3;

    invoke-direct {v7, p0}, Lcom/narvii/master/CommunityDetailFragment$3;-><init>(Lcom/narvii/master/CommunityDetailFragment;)V

    invoke-virtual/range {v2 .. v7}, Lcom/narvii/livelayer/LiveLayerHelper;->requestOnlineMembers(Ljava/lang/String;IZZLcom/narvii/util/Callback;)V

    :cond_0
    return-void
.end method

.method private sendInviteCodeRequest()V
    .locals 4

    .line 538
    sget-object v0, Lcom/narvii/master/invitation/PasteBoardService;->SKIP:Lcom/narvii/util/statistics/TmpValue;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;J)V

    const-string v0, "pasteBoard"

    .line 539
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/master/invitation/PasteBoardService;

    if-eqz v0, :cond_0

    .line 541
    iget-object v1, p0, Lcom/narvii/master/CommunityDetailFragment;->inviteCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/narvii/master/invitation/PasteBoardService;->updateUrl(Ljava/lang/String;)V

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->inviteHelper:Lcom/narvii/master/invitation/InviteHelper;

    iget-object v1, p0, Lcom/narvii/master/CommunityDetailFragment;->inviteCode:Ljava/lang/String;

    new-instance v2, Lcom/narvii/master/CommunityDetailFragment$4;

    invoke-direct {v2, p0}, Lcom/narvii/master/CommunityDetailFragment$4;-><init>(Lcom/narvii/master/CommunityDetailFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/master/invitation/InviteHelper;->requestInviteIdentify(Ljava/lang/String;Lcom/narvii/master/invitation/InviteHelper$LinkIdentifyInterface;)V

    return-void
.end method

.method private shareCommunity(Ljava/lang/String;)V
    .locals 3

    .line 833
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->mainAdapter:Lcom/narvii/master/CommunityDetailFragment$MainAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 834
    :cond_0
    new-instance v0, Lcom/narvii/share/ShareDarkRoomHelper;

    invoke-direct {v0, p0}, Lcom/narvii/share/ShareDarkRoomHelper;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/share/ShareDarkRoomHelper;->saveDynamicThemeBg(Landroid/app/Activity;)V

    .line 835
    const-class v0, Lcom/narvii/community/CommunityShareFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 836
    sget-object v1, Lcom/narvii/share/ShareDarkRoomFragment;->KEY_SHARE_OBJECT:Ljava/lang/String;

    iget-object v2, p0, Lcom/narvii/master/CommunityDetailFragment;->mCommunity:Lcom/narvii/model/Community;

    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 837
    sget-object v1, Lcom/narvii/share/ShareDarkRoomFragment;->KEY_STATISTIC_SOURCE:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 838
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private showMoreOptions()V
    .locals 3

    .line 842
    new-instance v0, Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    const v2, 0x7f0f0fa9

    .line 843
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    const v2, 0x7f0f0fb0

    .line 844
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    const v1, 0x7f0f06cb

    const/4 v2, 0x1

    .line 845
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 846
    new-instance v1, Lcom/narvii/master/CommunityDetailFragment$8;

    invoke-direct {v1, p0}, Lcom/narvii/master/CommunityDetailFragment$8;-><init>(Lcom/narvii/master/CommunityDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 868
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    return-void
.end method

.method private updateAccountRelatedViews()V
    .locals 2

    const-string v0, "blockPrivateCommunity"

    .line 955
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "account"

    .line 956
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 957
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 958
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/NVActivity;

    const v1, 0x7f0f0046

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVActivity;->setActionBarLeftTextView(I)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/narvii/master/CommunityDetailFragment$9;

    invoke-direct {v1, p0}, Lcom/narvii/master/CommunityDetailFragment$9;-><init>(Lcom/narvii/master/CommunityDetailFragment;)V

    .line 959
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 973
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/NVActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVActivity;->setActionBarLeftView(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateActionBarHeader(F)V
    .locals 2

    .line 902
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->communityIconActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_1

    const v1, 0x7f090049

    .line 903
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/ThumbImageView;

    if-eqz v0, :cond_1

    .line 905
    iget-object v1, p0, Lcom/narvii/master/CommunityDetailFragment;->mCommunity:Lcom/narvii/model/Community;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 906
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method private updateCommunityRelatedViews()V
    .locals 2

    .line 946
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->mCommunity:Lcom/narvii/model/Community;

    if-nez v0, :cond_0

    return-void

    .line 949
    :cond_0
    iget-object v1, p0, Lcom/narvii/master/CommunityDetailFragment;->communityDetailBg:Lcom/narvii/widget/PromotionalImageView;

    if-eqz v1, :cond_1

    .line 950
    invoke-virtual {v1, v0}, Lcom/narvii/widget/PromotionalImageView;->setCommunity(Lcom/narvii/model/Community;)V

    :cond_1
    return-void
.end method

.method private updateHoverJoinButtonView()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 775
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    const/4 v3, -0x1

    if-ge v1, v2, :cond_1

    .line 776
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    sget-object v4, Lcom/narvii/master/CommunityDetailFragment;->JOIN_COMMUNITY:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne v2, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    if-ne v1, v3, :cond_2

    return-void

    .line 785
    :cond_2
    iget-object v1, p0, Lcom/narvii/master/CommunityDetailFragment;->joinCommunityButtonContainer:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 786
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget v2, p0, Lcom/narvii/master/CommunityDetailFragment;->hoverOffset:I

    const/4 v3, 0x4

    if-gt v1, v2, :cond_3

    .line 787
    iget-object v1, p0, Lcom/narvii/master/CommunityDetailFragment;->joinCommunityButtonContainer:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 788
    iget-object v1, p0, Lcom/narvii/master/CommunityDetailFragment;->hoverContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 790
    :cond_3
    iget-object v1, p0, Lcom/narvii/master/CommunityDetailFragment;->joinCommunityButtonContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 791
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->hoverContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method private updateHoverView()V
    .locals 4

    .line 527
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->mCommunity:Lcom/narvii/model/Community;

    iget-object v1, p0, Lcom/narvii/master/CommunityDetailFragment;->hoverJoinCommunityProgress:Lcom/narvii/widget/JoinCommunityProgressLayout;

    iget-object v2, p0, Lcom/narvii/master/CommunityDetailFragment;->hoverBtnJoin:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/narvii/master/CommunityDetailFragment;->hoverPrivateLock:Landroid/view/View;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/narvii/master/CommunityDetailFragment;->updateJoinButton(Lcom/narvii/model/Community;Lcom/narvii/widget/JoinCommunityProgressLayout;Landroid/widget/TextView;Landroid/view/View;)V

    return-void
.end method

.method private updateJoinButton(Lcom/narvii/model/Community;Lcom/narvii/widget/JoinCommunityProgressLayout;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 6

    .line 913
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_9

    if-eqz p1, :cond_9

    if-eqz p3, :cond_9

    if-eqz p4, :cond_9

    if-nez p2, :cond_0

    goto/16 :goto_3

    .line 916
    :cond_0
    new-instance v0, Lcom/narvii/util/PackageUtils;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 917
    invoke-virtual {v0}, Lcom/narvii/util/PackageUtils;->getCommunityIdFromPackageName()I

    move-result v1

    const v2, 0x7f0f0aa9

    .line 918
    invoke-virtual {p0, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    .line 919
    sget v3, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v4, 0x65

    const v5, 0x7f0f03f6

    if-ne v3, v4, :cond_3

    iget p1, p1, Lcom/narvii/model/Community;->id:I

    if-eq p1, v1, :cond_3

    .line 920
    invoke-virtual {v0}, Lcom/narvii/util/PackageUtils;->getMasterPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/util/PackageUtils;->isPackageInstalled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0f0cf9

    .line 921
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 923
    :cond_1
    iget-boolean p1, p0, Lcom/narvii/master/CommunityDetailFragment;->isCurrentUserJoined:Z

    if-eqz p1, :cond_2

    const v2, 0x7f0f03f6

    :cond_2
    invoke-virtual {p0, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 926
    :cond_3
    iget-boolean p1, p0, Lcom/narvii/master/CommunityDetailFragment;->isInProgress:Z

    if-eqz p1, :cond_5

    .line 927
    iget-boolean p1, p0, Lcom/narvii/master/CommunityDetailFragment;->isUserJoinedBeforeLaunch:Z

    if-eqz p1, :cond_4

    const p1, 0x7f0f02c8

    goto :goto_0

    :cond_4
    const p1, 0x7f0f02cd

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 928
    :cond_5
    iget-boolean p1, p0, Lcom/narvii/master/CommunityDetailFragment;->isCurrentUserJoined:Z

    if-eqz p1, :cond_6

    .line 929
    invoke-virtual {p0, v5}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 931
    :cond_6
    invoke-virtual {p0, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 934
    :goto_1
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 935
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment;->invitationId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 936
    iget-boolean p3, p0, Lcom/narvii/master/CommunityDetailFragment;->isInProgress:Z

    invoke-virtual {p2, p3}, Lcom/narvii/widget/JoinCommunityProgressLayout;->setCurPressed(Z)V

    .line 937
    iget-boolean p3, p0, Lcom/narvii/master/CommunityDetailFragment;->isInProgress:Z

    if-nez p3, :cond_7

    .line 938
    invoke-virtual {p2}, Lcom/narvii/widget/JoinCommunityProgressLayout;->cancelProgress()V

    .line 940
    :cond_7
    iget p3, p0, Lcom/narvii/master/CommunityDetailFragment;->joinProgress:I

    invoke-virtual {p2, p3}, Lcom/narvii/widget/JoinCommunityProgressLayout;->setProgress(I)V

    .line 941
    iget-boolean p2, p0, Lcom/narvii/master/CommunityDetailFragment;->isCurrentUserJoined:Z

    if-nez p2, :cond_8

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment;->mCommunity:Lcom/narvii/model/Community;

    invoke-virtual {p1}, Lcom/narvii/model/Community;->shouldShowLock()Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    goto :goto_2

    :cond_8
    const/16 p1, 0x8

    :goto_2
    invoke-virtual {p4, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    :goto_3
    return-void
.end method

.method private updateJoinButtonStatus()V
    .locals 1

    .line 1686
    invoke-direct {p0}, Lcom/narvii/master/CommunityDetailFragment;->updateHoverView()V

    .line 1687
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->mainAdapter:Lcom/narvii/master/CommunityDetailFragment$MainAdapter;

    if-eqz v0, :cond_0

    .line 1688
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected completePageViewEvent(Lcom/narvii/logging/LogEvent$Builder;Z)V
    .locals 0

    .line 490
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->completePageViewEvent(Lcom/narvii/logging/LogEvent$Builder;Z)V

    .line 491
    iget-object p2, p0, Lcom/narvii/master/CommunityDetailFragment;->mainAdapter:Lcom/narvii/master/CommunityDetailFragment$MainAdapter;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 492
    iget-object p2, p0, Lcom/narvii/master/CommunityDetailFragment;->mainAdapter:Lcom/narvii/master/CommunityDetailFragment$MainAdapter;

    invoke-virtual {p2}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    goto :goto_0

    .line 494
    :cond_0
    iget p2, p0, Lcom/narvii/master/CommunityDetailFragment;->cid:I

    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->objectId(I)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    sget-object p2, Lcom/narvii/logging/ObjectType;->community:Lcom/narvii/logging/ObjectType;

    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->objectType(Lcom/narvii/logging/ObjectType;)Lcom/narvii/logging/LogEvent$Builder;

    :goto_0
    return-void
.end method

.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 5

    .line 980
    new-instance p1, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;-><init>(Lcom/narvii/master/CommunityDetailFragment;)V

    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment;->mainAdapter:Lcom/narvii/master/CommunityDetailFragment$MainAdapter;

    .line 981
    new-instance p1, Lcom/narvii/master/CommunityDetailFragment$EndorsedCommunityAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/master/CommunityDetailFragment$EndorsedCommunityAdapter;-><init>(Lcom/narvii/master/CommunityDetailFragment;)V

    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment;->endorsedCommunityAdapter:Lcom/narvii/master/CommunityDetailFragment$EndorsedCommunityAdapter;

    .line 982
    new-instance p1, Lcom/narvii/master/CommunityDetailFragment$EndorsedCommunityTitleAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/master/CommunityDetailFragment$EndorsedCommunityTitleAdapter;-><init>(Lcom/narvii/master/CommunityDetailFragment;)V

    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment;->endorsedCommunityTitleAdapter:Lcom/narvii/master/CommunityDetailFragment$EndorsedCommunityTitleAdapter;

    .line 983
    new-instance p1, Lcom/narvii/master/CommunityDetailFragment$CommunityDetailDivideColumnAdapter;

    .line 984
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40e00000    # 7.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p1, p0, p0, v0, v1}, Lcom/narvii/master/CommunityDetailFragment$CommunityDetailDivideColumnAdapter;-><init>(Lcom/narvii/master/CommunityDetailFragment;Lcom/narvii/app/NVContext;II)V

    .line 985
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->endorsedCommunityAdapter:Lcom/narvii/master/CommunityDetailFragment$EndorsedCommunityAdapter;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600a3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v2, v1}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;ILandroid/graphics/drawable/Drawable;)V

    .line 986
    new-instance v0, Lcom/narvii/list/StaticViewAdapter;

    invoke-direct {v0}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/view/View;

    .line 987
    new-instance v3, Lcom/narvii/list/overlay/OverlayListPlaceholder;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/narvii/list/overlay/OverlayListPlaceholder;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lcom/narvii/list/StaticViewAdapter;->addViews([Landroid/view/View;)V

    .line 989
    new-instance v2, Lcom/narvii/master/CommunityDetailFragment$10;

    invoke-direct {v2, p0, p0}, Lcom/narvii/master/CommunityDetailFragment$10;-><init>(Lcom/narvii/master/CommunityDetailFragment;Lcom/narvii/app/NVContext;)V

    .line 995
    invoke-virtual {v2, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 996
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->mainAdapter:Lcom/narvii/master/CommunityDetailFragment$MainAdapter;

    invoke-virtual {v2, v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 997
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->endorsedCommunityTitleAdapter:Lcom/narvii/master/CommunityDetailFragment$EndorsedCommunityTitleAdapter;

    invoke-virtual {v2, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 998
    invoke-virtual {v2, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    return-object v2
.end method

.method protected ensureLoginToast()V
    .locals 1

    const-string v0, "loginAhead"

    .line 532
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 533
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->ensureLoginToast()V

    :cond_0
    return-void
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f100012

    return v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "AminoDetail"

    return-object v0
.end method

.method public getStatusBarAlpha()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getStrategyInfo()Ljava/lang/String;
    .locals 1

    .line 1038
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->mainAdapter:Lcom/narvii/master/CommunityDetailFragment$MainAdapter;

    if-eqz v0, :cond_0

    .line 1039
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Community;

    if-eqz v0, :cond_0

    .line 1041
    invoke-virtual {v0}, Lcom/narvii/model/Community;->getStrategyInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1044
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->getStrategyInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasPostEntry()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    .line 582
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected initVideoListDelegate()Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;
    .locals 2

    .line 1049
    new-instance v0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;-><init>(Lcom/narvii/app/NVContext;Landroid/app/Activity;)V

    return-object v0
.end method

.method public isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isGlobal()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 451
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 453
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setActionBarBackground(Landroid/graphics/drawable/Drawable;)V

    .line 454
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b00f8

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment;->communityIconActionBarLayout:Landroid/view/View;

    .line 455
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment;->communityIconActionBarLayout:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setActionBarTitleView(Landroid/view/View;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 456
    invoke-direct {p0, p1}, Lcom/narvii/master/CommunityDetailFragment;->updateActionBarHeader(F)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 435
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x12c

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    const-string p2, "join"

    .line 437
    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 439
    invoke-direct {p0}, Lcom/narvii/master/CommunityDetailFragment;->joinCommunity()V

    :cond_0
    return-void
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 3

    .line 1004
    sget p1, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/4 v0, 0x0

    const/16 v1, 0x65

    if-ne p1, v1, :cond_2

    const-string p1, "blockPrivateCommunity"

    .line 1005
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1006
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment;->mCommunity:Lcom/narvii/model/Community;

    if-eqz p1, :cond_2

    .line 1007
    iget p1, p1, Lcom/narvii/model/Community;->joinType:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v1, :cond_1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    .line 1009
    iget-boolean p1, p0, Lcom/narvii/master/CommunityDetailFragment;->isCurrentUserJoined:Z

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public onConnect(Lcom/narvii/util/ws/WsService;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 254
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "id"

    .line 256
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/narvii/master/CommunityDetailFragment;->cid:I

    .line 257
    iget v0, p0, Lcom/narvii/master/CommunityDetailFragment;->cid:I

    if-nez v0, :cond_1

    .line 258
    sget v0, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    .line 259
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    const-string v1, "config"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 260
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    iput v0, p0, Lcom/narvii/master/CommunityDetailFragment;->cid:I

    goto :goto_0

    .line 262
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 265
    :cond_1
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "join"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->joinLogin:Landroid/content/Intent;

    .line 266
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->joinLogin:Landroid/content/Intent;

    const/4 v1, 0x1

    const-string v2, "communityJoinLogin"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "inviteCode"

    const-string v2, "invitationId"

    const/4 v3, 0x0

    const-string v4, "isCurrentUserJoined"

    const-string v5, "prefetch"

    if-nez p1, :cond_2

    .line 268
    invoke-virtual {p0, v5}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 269
    invoke-virtual {p0, v4, v3}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/narvii/master/CommunityDetailFragment;->isCurrentUserJoined:Z

    .line 270
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/narvii/master/CommunityDetailFragment;->invitationId:Ljava/lang/String;

    .line 271
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->inviteCode:Ljava/lang/String;

    goto :goto_1

    .line 273
    :cond_2
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 274
    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/narvii/master/CommunityDetailFragment;->isCurrentUserJoined:Z

    .line 275
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/narvii/master/CommunityDetailFragment;->invitationId:Ljava/lang/String;

    .line 276
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->inviteCode:Ljava/lang/String;

    const-string v0, "communityInfoRequested"

    .line 277
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/master/CommunityDetailFragment;->communityInfoRequested:Z

    .line 280
    :goto_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 281
    const-class v0, Lcom/narvii/model/Community;

    invoke-static {v5, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Community;

    iput-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->mCommunity:Lcom/narvii/model/Community;

    .line 283
    :cond_3
    iget v0, p0, Lcom/narvii/master/CommunityDetailFragment;->cid:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->mCommunity:Lcom/narvii/model/Community;

    if-eqz v0, :cond_4

    .line 284
    iget v0, v0, Lcom/narvii/model/Community;->id:I

    iput v0, p0, Lcom/narvii/master/CommunityDetailFragment;->cid:I

    .line 286
    :cond_4
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 287
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 288
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.narvii.action.COMMUNITY_USER_INFO_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 289
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x22

    invoke-virtual {v0, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 331
    new-instance p1, Lcom/narvii/master/invitation/PrivateCommunityCheckHelper;

    invoke-direct {p1, p0}, Lcom/narvii/master/invitation/PrivateCommunityCheckHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment;->communityCheckHelper:Lcom/narvii/master/invitation/PrivateCommunityCheckHelper;

    .line 332
    invoke-direct {p0}, Lcom/narvii/master/CommunityDetailFragment;->initLaunchHelper()V

    .line 334
    new-instance p1, Lcom/narvii/master/invitation/InviteHelper;

    invoke-direct {p1, p0}, Lcom/narvii/master/invitation/InviteHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment;->inviteHelper:Lcom/narvii/master/invitation/InviteHelper;

    .line 337
    iget-boolean p1, p0, Lcom/narvii/master/CommunityDetailFragment;->isCurrentUserJoined:Z

    if-nez p1, :cond_7

    .line 338
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment;->inviteCode:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 339
    invoke-direct {p0}, Lcom/narvii/master/CommunityDetailFragment;->sendInviteCodeRequest()V

    goto :goto_2

    .line 341
    :cond_5
    iput-boolean v1, p0, Lcom/narvii/master/CommunityDetailFragment;->isInviteCodeRequested:Z

    const-string p1, "loginAhead"

    .line 344
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "autoJoin"

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment;->mCommunity:Lcom/narvii/model/Community;

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lcom/narvii/master/CommunityDetailFragment;->isCurrentUserJoined:Z

    if-nez p1, :cond_7

    .line 346
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->joinLogin:Landroid/content/Intent;

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 347
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->mCommunity:Lcom/narvii/model/Community;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "community"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "inviter"

    .line 349
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 348
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    .line 350
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;Ljava/lang/String;)V

    .line 354
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    move-result p1

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Lcom/narvii/master/CommunityDetailFragment;->hoverOffset:I

    .line 355
    iget p1, p0, Lcom/narvii/master/CommunityDetailFragment;->hoverOffset:I

    if-nez p1, :cond_9

    .line 356
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-boolean v0, Lcom/narvii/util/statusbar/StatusBarUtils;->STATUS_BAR_ENABLE:Z

    if-eqz v0, :cond_8

    const/high16 v0, 0x42880000    # 68.0f

    goto :goto_3

    :cond_8
    const/high16 v0, 0x42200000    # 40.0f

    :goto_3
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/narvii/master/CommunityDetailFragment;->hoverOffset:I

    :cond_9
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 803
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const/4 p2, 0x1

    const v0, 0x7f0f0fa2

    const/4 v1, 0x0

    .line 804
    invoke-interface {p1, v1, v0, p2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v2, 0x7f080309

    .line 805
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v2, 0x2

    .line 806
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const v0, 0x7f0f0bca

    .line 807
    invoke-interface {p1, v1, v0, p2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    const p2, 0x7f080068

    .line 808
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 809
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b00f9

    const/4 v0, 0x0

    .line 362
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 363
    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment;->rootFrame:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->onlineMemberBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    if-eqz v0, :cond_0

    .line 508
    invoke-virtual {v0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->unsubscribeTopic()V

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->liveLayerWsService:Lcom/narvii/livelayer/ws/LiveLayerWsService;

    if-eqz v0, :cond_1

    .line 512
    invoke-virtual {v0, p0}, Lcom/narvii/livelayer/ws/LiveLayerWsService;->unregisterWsListener(Lcom/narvii/util/ws/WsService$WsListener;)V

    .line 514
    :cond_1
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 515
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    return-void
.end method

.method public onDisconnect(Lcom/narvii/util/ws/WsService;Ljava/lang/Throwable;)V
    .locals 0

    const/4 p1, 0x1

    .line 1028
    iput-boolean p1, p0, Lcom/narvii/master/CommunityDetailFragment;->offline:Z

    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 520
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 521
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    .line 522
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 523
    check-cast p1, Lcom/narvii/widget/NVListView;

    iget-object p2, p0, Lcom/narvii/master/CommunityDetailFragment;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method protected onLoginResult(ZLandroid/content/Intent;)V
    .locals 7

    .line 1711
    const-class v0, Lcom/narvii/model/api/UserResponse;

    if-eqz p1, :cond_5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "join"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1712
    iget-object v1, p0, Lcom/narvii/master/CommunityDetailFragment;->mainAdapter:Lcom/narvii/master/CommunityDetailFragment$MainAdapter;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 1713
    iput-boolean v2, p0, Lcom/narvii/master/CommunityDetailFragment;->pendingAutoLogin:Z

    return-void

    :cond_0
    const/4 v3, 0x0

    .line 1716
    iput-boolean v3, p0, Lcom/narvii/master/CommunityDetailFragment;->pendingAutoLogin:Z

    .line 1717
    iget-boolean v3, p0, Lcom/narvii/master/CommunityDetailFragment;->isCurrentUserJoined:Z

    if-eqz v3, :cond_1

    return-void

    .line 1721
    :cond_1
    invoke-virtual {v1}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Community;

    .line 1722
    iget v3, v1, Lcom/narvii/model/Community;->id:I

    .line 1723
    iget-boolean v4, p0, Lcom/narvii/master/CommunityDetailFragment;->isCurrentUserJoined:Z

    iput-boolean v4, p0, Lcom/narvii/master/CommunityDetailFragment;->isUserJoinedBeforeLaunch:Z

    .line 1724
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v4

    iget v1, v1, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v4, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v4, "/community/join"

    invoke-virtual {v1, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    .line 1725
    iget-object v4, p0, Lcom/narvii/master/CommunityDetailFragment;->invitationId:Ljava/lang/String;

    if-eqz v4, :cond_2

    const-string v5, "invitationId"

    .line 1726
    invoke-virtual {v1, v5, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    goto :goto_0

    :cond_2
    const-string v4, "blockPrivateCommunity"

    .line 1727
    invoke-virtual {p0, v4}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1728
    new-instance p1, Lcom/narvii/master/CommunityDetailFragment$12;

    invoke-direct {p1, p0, p2}, Lcom/narvii/master/CommunityDetailFragment$12;-><init>(Lcom/narvii/master/CommunityDetailFragment;Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/narvii/master/CommunityDetailFragment;->openJoinRequest(Lcom/narvii/community/request/RequestJoinCommunityDialog$CallBack;)V

    return-void

    .line 1739
    :cond_3
    :goto_0
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    const-string v4, "api"

    .line 1740
    invoke-virtual {p0, v4}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/util/http/ApiService;

    const-string v5, "joinOnly"

    .line 1741
    invoke-virtual {p0, v5}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v5

    const/16 v6, 0x14

    if-eqz v5, :cond_4

    .line 1742
    iput v6, p0, Lcom/narvii/master/CommunityDetailFragment;->joinProgress:I

    .line 1743
    iput-boolean v2, p0, Lcom/narvii/master/CommunityDetailFragment;->isInProgress:Z

    .line 1744
    iget-object v2, p0, Lcom/narvii/master/CommunityDetailFragment;->mainAdapter:Lcom/narvii/master/CommunityDetailFragment$MainAdapter;

    invoke-virtual {v2}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    .line 1745
    invoke-direct {p0}, Lcom/narvii/master/CommunityDetailFragment;->updateHoverView()V

    .line 1746
    new-instance v2, Lcom/narvii/master/CommunityDetailFragment$13;

    invoke-direct {v2, p0, v0, v3}, Lcom/narvii/master/CommunityDetailFragment$13;-><init>(Lcom/narvii/master/CommunityDetailFragment;Ljava/lang/Class;I)V

    invoke-virtual {v4, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    goto :goto_1

    .line 1793
    :cond_4
    iput v6, p0, Lcom/narvii/master/CommunityDetailFragment;->joinProgress:I

    .line 1794
    iput-boolean v2, p0, Lcom/narvii/master/CommunityDetailFragment;->isInProgress:Z

    .line 1795
    invoke-direct {p0}, Lcom/narvii/master/CommunityDetailFragment;->updateJoinButtonStatus()V

    .line 1797
    new-instance v2, Lcom/narvii/master/CommunityDetailFragment$14;

    invoke-direct {v2, p0, v0, v3}, Lcom/narvii/master/CommunityDetailFragment$14;-><init>(Lcom/narvii/master/CommunityDetailFragment;Ljava/lang/Class;I)V

    invoke-virtual {v4, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 1833
    :cond_5
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onLoginResult(ZLandroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 821
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0f0bca

    if-eq v0, v1, :cond_1

    const v1, 0x7f0f0fa2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Navbar"

    .line 823
    invoke-direct {p0, v0}, Lcom/narvii/master/CommunityDetailFragment;->shareCommunity(Ljava/lang/String;)V

    goto :goto_0

    .line 826
    :cond_1
    invoke-direct {p0}, Lcom/narvii/master/CommunityDetailFragment;->showMoreOptions()V

    .line 829
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 1

    .line 500
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->mLaunchHelper:Lcom/narvii/community/CommunityLaunchHelper;

    invoke-virtual {v0}, Lcom/narvii/community/CommunityLaunchHelper;->cancel()V

    .line 502
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4

    .line 814
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    const v0, 0x7f0f0fa2

    .line 815
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/master/CommunityDetailFragment;->mainAdapter:Lcom/narvii/master/CommunityDetailFragment$MainAdapter;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0f0bca

    .line 816
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->mainAdapter:Lcom/narvii/master/CommunityDetailFragment$MainAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 461
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onResume()V

    .line 462
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->detailFrame:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 463
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->detailFrame:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 464
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->rootFrame:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 465
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->mainAdapter:Lcom/narvii/master/CommunityDetailFragment$MainAdapter;

    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->mainAdapter:Lcom/narvii/master/CommunityDetailFragment$MainAdapter;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/narvii/detail/DetailAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 468
    :cond_0
    invoke-direct {p0}, Lcom/narvii/master/CommunityDetailFragment;->updateCommunityRelatedViews()V

    .line 469
    invoke-direct {p0}, Lcom/narvii/master/CommunityDetailFragment;->updateAccountRelatedViews()V

    .line 470
    iget-boolean v0, p0, Lcom/narvii/master/CommunityDetailFragment;->pendingAutoLogin:Z

    if-eqz v0, :cond_1

    .line 471
    new-instance v0, Landroid/content/Intent;

    const-string v2, "join"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 472
    iget-object v2, p0, Lcom/narvii/master/CommunityDetailFragment;->mCommunity:Lcom/narvii/model/Community;

    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "community"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 473
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->joinLogin:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    .line 474
    iput-boolean v1, p0, Lcom/narvii/master/CommunityDetailFragment;->pendingAutoLogin:Z

    .line 477
    :cond_1
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->onlineMemberBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    if-eqz v0, :cond_2

    const-string v0, "prefs"

    .line 478
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    .line 479
    iget-object v2, p0, Lcom/narvii/master/CommunityDetailFragment;->onlineMemberBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    const-string v3, "liveLayerFold"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->goFold(Z)V

    .line 482
    :cond_2
    iget-boolean v0, p0, Lcom/narvii/master/CommunityDetailFragment;->offline:Z

    if-eqz v0, :cond_3

    .line 483
    iput-boolean v1, p0, Lcom/narvii/master/CommunityDetailFragment;->offline:Z

    .line 484
    invoke-direct {p0}, Lcom/narvii/master/CommunityDetailFragment;->requestCommunityOnlineData()V

    :cond_3
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 888
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 889
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->mCommunity:Lcom/narvii/model/Community;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "prefetch"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->inviteCode:Ljava/lang/String;

    const-string v1, "inviteCode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    iget-boolean v0, p0, Lcom/narvii/master/CommunityDetailFragment;->isCurrentUserJoined:Z

    const-string v1, "isCurrentUserJoined"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 892
    iget-boolean v0, p0, Lcom/narvii/master/CommunityDetailFragment;->communityInfoRequested:Z

    const-string v1, "communityInfoRequested"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 369
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p2, 0x1

    .line 370
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVListFragment;->setDarkTheme(Z)V

    const p2, 0x7f0907b0

    .line 372
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/livelayer/LiveLayerOnlineBar;

    iput-object p2, p0, Lcom/narvii/master/CommunityDetailFragment;->onlineMemberBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 373
    iget-object p2, p0, Lcom/narvii/master/CommunityDetailFragment;->onlineMemberBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    iget v0, p0, Lcom/narvii/master/CommunityDetailFragment;->cid:I

    invoke-virtual {p2, v0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setCid(I)V

    const p2, 0x7f0902a0

    .line 374
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/master/CommunityDetailFragment;->detailFrame:Landroid/view/View;

    const/4 p2, 0x0

    .line 375
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 376
    invoke-direct {p0, p1}, Lcom/narvii/master/CommunityDetailFragment;->initBgViews(Landroid/view/View;)V

    const p2, 0x7f090417

    .line 377
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/master/CommunityDetailFragment;->fakeActionBar:Landroid/view/View;

    const p2, 0x7f090527

    .line 379
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment;->hoverContainer:Landroid/view/View;

    .line 380
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment;->hoverContainer:Landroid/view/View;

    const p2, 0x7f09060a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment;->hoverBtnJoin:Landroid/widget/TextView;

    .line 381
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment;->hoverContainer:Landroid/view/View;

    const p2, 0x7f09060c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/JoinCommunityProgressLayout;

    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment;->hoverJoinCommunityProgress:Lcom/narvii/widget/JoinCommunityProgressLayout;

    .line 382
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment;->hoverContainer:Landroid/view/View;

    const p2, 0x7f09060e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment;->hoverPrivateLock:Landroid/view/View;

    .line 383
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment;->hoverJoinCommunityProgress:Lcom/narvii/widget/JoinCommunityProgressLayout;

    new-instance p2, Lcom/narvii/master/CommunityDetailFragment$2;

    invoke-direct {p2, p0}, Lcom/narvii/master/CommunityDetailFragment$2;-><init>(Lcom/narvii/master/CommunityDetailFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 389
    invoke-direct {p0}, Lcom/narvii/master/CommunityDetailFragment;->updateHoverView()V

    return-void
.end method

.method public onWsError(Lcom/narvii/util/ws/WsService;Lcom/narvii/util/ws/WsError;)V
    .locals 0

    return-void
.end method

.method public onWsMessage(Lcom/narvii/util/ws/WsService;Lcom/narvii/util/ws/WsMessage;)V
    .locals 0

    return-void
.end method
