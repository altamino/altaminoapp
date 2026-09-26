.class public Lcom/narvii/master/CommunityDetailFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/app/FragmentOnBackListener;
.implements Lcom/narvii/util/ws/WsService$WsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/CommunityDetailFragment$MainAdapter;,
        Lcom/narvii/master/CommunityDetailFragment$EndorsedCommunityAdapter;,
        Lcom/narvii/master/CommunityDetailFragment$EndorsedCommunityTitleAdapter;,
        Lcom/narvii/master/CommunityDetailFragment$CommunityDetailDivideColumnAdapter;
    }
.end annotation


# static fields
.field static final AD_UNIT:Lcom/narvii/detail/DetailAdapter$CellType;

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

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 3
    .line 4
    const-string v1, "detail.title"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    .line 9
    .line 10
    sput-object v0, Lcom/narvii/master/CommunityDetailFragment;->HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 13
    .line 14
    const-string v1, "detail.tagline"

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1, v2}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    .line 18
    .line 19
    sput-object v0, Lcom/narvii/master/CommunityDetailFragment;->TAGLINE:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 20
    .line 21
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 22
    .line 23
    const-string v1, "detail.loading"

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    sput-object v0, Lcom/narvii/master/CommunityDetailFragment;->CONTENT_LOADING:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 29
    .line 30
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 31
    .line 32
    const-string v1, "detail.description"

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    sput-object v0, Lcom/narvii/master/CommunityDetailFragment;->DESCRIPTION_TITLE:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 38
    .line 39
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 40
    .line 41
    const-string v1, "detail.error"

    .line 42
    .line 43
    .line 44
    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    sput-object v0, Lcom/narvii/master/CommunityDetailFragment;->DESCRIPTION_ERROR:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 47
    .line 48
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 49
    .line 50
    const-string v1, "detail.no.description"

    .line 51
    .line 52
    .line 53
    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    sput-object v0, Lcom/narvii/master/CommunityDetailFragment;->NO_DESCRIPTION:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 56
    .line 57
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 58
    .line 59
    const-string v1, "detail.join.community"

    .line 60
    .line 61
    .line 62
    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    sput-object v0, Lcom/narvii/master/CommunityDetailFragment;->JOIN_COMMUNITY:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 65
    .line 66
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 67
    .line 68
    const-string v1, "detail.join.community.margin"

    .line 69
    .line 70
    .line 71
    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    sput-object v0, Lcom/narvii/master/CommunityDetailFragment;->JOIN_COMMUNITY_MARGIN:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 74
    .line 75
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 76
    .line 77
    const-string v1, "detail.influencer"

    .line 78
    .line 79
    .line 80
    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    sput-object v0, Lcom/narvii/master/CommunityDetailFragment;->INFLUENCER_CELL:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 83
    .line 84
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 85
    .line 86
    const-string v1, "detail.topic"

    .line 87
    .line 88
    .line 89
    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    sput-object v0, Lcom/narvii/master/CommunityDetailFragment;->TOPIC_CELL:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 92
    .line 93
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 94
    .line 95
    const-string v1, "detail.ad.unit"

    .line 96
    .line 97
    .line 98
    invoke-direct {v0, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    sput-object v0, Lcom/narvii/master/CommunityDetailFragment;->AD_UNIT:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 101
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/master/CommunityDetailFragment;->showMoreTopics:Z

    .line 7
    .line 8
    const-string v0, "online-members"

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->topic:Ljava/lang/String;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/master/CommunityDetailFragment$1;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/narvii/master/CommunityDetailFragment$1;-><init>(Lcom/narvii/master/CommunityDetailFragment;)V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 18
    .line 19
    new-instance v0, Lcom/narvii/master/CommunityDetailFragment$6;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/narvii/master/CommunityDetailFragment$6;-><init>(Lcom/narvii/master/CommunityDetailFragment;)V

    .line 23
    .line 24
    iput-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 25
    return-void
.end method

.method static bridge synthetic A(Lcom/narvii/master/CommunityDetailFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/master/CommunityDetailFragment;->joinProgress:I

    return p0
.end method

.method static bridge synthetic B(Lcom/narvii/master/CommunityDetailFragment;)Lcom/narvii/model/Community;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/master/CommunityDetailFragment;->mCommunity:Lcom/narvii/model/Community;

    return-object p0
.end method

.method static bridge synthetic C(Lcom/narvii/master/CommunityDetailFragment;)Lcom/narvii/community/CommunityLaunchHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/master/CommunityDetailFragment;->mLaunchHelper:Lcom/narvii/community/CommunityLaunchHelper;

    return-object p0
.end method

.method static bridge synthetic D(Lcom/narvii/master/CommunityDetailFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/master/CommunityDetailFragment;->communityInfoRequested:Z

    return-void
.end method

.method static bridge synthetic E(Lcom/narvii/master/CommunityDetailFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment;->invitationId:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic F(Lcom/narvii/master/CommunityDetailFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/master/CommunityDetailFragment;->isCurrentUserJoined:Z

    return-void
.end method

.method static bridge synthetic G(Lcom/narvii/master/CommunityDetailFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/master/CommunityDetailFragment;->isInProgress:Z

    return-void
.end method

.method static bridge synthetic H(Lcom/narvii/master/CommunityDetailFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/master/CommunityDetailFragment;->isInviteCodeRequested:Z

    return-void
.end method

.method static bridge synthetic I(Lcom/narvii/master/CommunityDetailFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/master/CommunityDetailFragment;->isRequested:Z

    return-void
.end method

.method static bridge synthetic J(Lcom/narvii/master/CommunityDetailFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment;->joinCommunityButtonContainer:Landroid/view/View;

    return-void
.end method

.method static bridge synthetic K(Lcom/narvii/master/CommunityDetailFragment;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/master/CommunityDetailFragment;->joinProgress:I

    return-void
.end method

.method static bridge synthetic L(Lcom/narvii/master/CommunityDetailFragment;Lcom/narvii/model/Community;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment;->mCommunity:Lcom/narvii/model/Community;

    return-void
.end method

.method static bridge synthetic M(Lcom/narvii/master/CommunityDetailFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/master/CommunityDetailFragment;->joinCommunity()V

    return-void
.end method

.method static bridge synthetic N(Lcom/narvii/master/CommunityDetailFragment;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/master/CommunityDetailFragment;->joinCommunity(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic O(Lcom/narvii/master/CommunityDetailFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/master/CommunityDetailFragment;->requestCommunityOnlineData()V

    return-void
.end method

.method static bridge synthetic P(Lcom/narvii/master/CommunityDetailFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/master/CommunityDetailFragment;->shareCommunity(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic Q(Lcom/narvii/master/CommunityDetailFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/master/CommunityDetailFragment;->updateAccountRelatedViews()V

    return-void
.end method

.method static bridge synthetic R(Lcom/narvii/master/CommunityDetailFragment;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/master/CommunityDetailFragment;->updateActionBarHeader(F)V

    return-void
.end method

.method static bridge synthetic S(Lcom/narvii/master/CommunityDetailFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/master/CommunityDetailFragment;->updateCommunityRelatedViews()V

    return-void
.end method

.method static bridge synthetic T(Lcom/narvii/master/CommunityDetailFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/master/CommunityDetailFragment;->updateHoverJoinButtonView()V

    return-void
.end method

.method static bridge synthetic U(Lcom/narvii/master/CommunityDetailFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/master/CommunityDetailFragment;->updateHoverView()V

    return-void
.end method

.method static bridge synthetic V(Lcom/narvii/master/CommunityDetailFragment;Lcom/narvii/model/Community;Lcom/narvii/widget/JoinCommunityProgressLayout;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/narvii/master/CommunityDetailFragment;->updateJoinButton(Lcom/narvii/model/Community;Lcom/narvii/widget/JoinCommunityProgressLayout;Landroid/widget/TextView;Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic W(Lcom/narvii/master/CommunityDetailFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/master/CommunityDetailFragment;->updateJoinButtonStatus()V

    return-void
.end method

.method private initBgViews(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a0380

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    check-cast v0, Lcom/narvii/widget/PromotionalImageView;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->communityDetailBg:Lcom/narvii/widget/PromotionalImageView;

    .line 12
    .line 13
    .line 14
    const v0, 0x7f0a01da

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    check-cast p1, Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 23
    .line 24
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment;->communityDetailBg:Lcom/narvii/widget/PromotionalImageView;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->mCommunity:Lcom/narvii/model/Community;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Lcom/narvii/widget/PromotionalImageView;->setCommunity(Lcom/narvii/model/Community;)V

    .line 30
    return-void
.end method

.method private initLaunchHelper()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/master/CommunityDetailFragment$10;

    .line 3
    .line 4
    const-string v1, "Community Detail"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, p0, p0, v1}, Lcom/narvii/master/CommunityDetailFragment$10;-><init>(Lcom/narvii/master/CommunityDetailFragment;Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 8
    .line 9
    iput-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->mLaunchHelper:Lcom/narvii/community/CommunityLaunchHelper;

    .line 10
    return-void
.end method

.method private joinCommunity()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/narvii/master/CommunityDetailFragment;->joinCommunity(Landroid/content/Intent;)V

    return-void
.end method

.method private joinCommunity(Landroid/content/Intent;)V
    .locals 7

    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment;->intentAfterLaunch:Landroid/content/Intent;

    iget-boolean p1, p0, Lcom/narvii/master/CommunityDetailFragment;->isCurrentUserJoined:Z

    const-string v0, "JoinButton"

    const-string v1, "config"

    const-string v2, "Source"

    if-nez p1, :cond_6

    const-string p1, "logging"

    .line 2
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/logging/LoggingService;

    iget-object v3, p0, Lcom/narvii/master/CommunityDetailFragment;->mCommunity:Lcom/narvii/model/Community;

    if-nez v3, :cond_0

    .line 3
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/config/ConfigService;

    .line 4
    invoke-virtual {v3}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v3

    goto :goto_0

    .line 5
    :cond_0
    iget v3, v3, Lcom/narvii/model/Community;->id:I

    .line 6
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "loggingObjectId"

    .line 7
    invoke-virtual {p0, v5}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    const-string v6, "referralObjectId"

    .line 8
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {p0, v5}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v5, "ndcId"

    .line 10
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "eventOrigin"

    .line 12
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 13
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v3, "eventSource"

    .line 15
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 16
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const-string v5, "Link"

    .line 18
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 19
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    sget-object v3, Lcom/narvii/util/logging/LoggingSource;->Link:Lcom/narvii/util/logging/LoggingSource;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 21
    :cond_4
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    sget-object v3, Lcom/narvii/util/logging/LoggingSource;->AminoDetailViewJoinBarButton:Lcom/narvii/util/logging/LoggingSource;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    const-string/jumbo v3, "tags"

    .line 23
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 24
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    const-string v3, "JoinAminoStarting"

    .line 26
    invoke-virtual {v4}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    sget-object p1, Lcom/narvii/logging/ActSemantic;->aminoJoin:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    iget v0, p0, Lcom/narvii/master/CommunityDetailFragment;->cid:I

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->objectId(I)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    sget-object v0, Lcom/narvii/logging/ObjectType;->community:Lcom/narvii/logging/ObjectType;

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->objectType(Lcom/narvii/logging/ObjectType;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->mCommunity:Lcom/narvii/model/Community;

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->objectIfNotNull(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    goto :goto_2

    .line 28
    :cond_6
    sget-object p1, Lcom/narvii/logging/ActSemantic;->aminoEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    iget v0, p0, Lcom/narvii/master/CommunityDetailFragment;->cid:I

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->objectId(I)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    sget-object v0, Lcom/narvii/logging/ObjectType;->community:Lcom/narvii/logging/ObjectType;

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->objectType(Lcom/narvii/logging/ObjectType;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->mCommunity:Lcom/narvii/model/Community;

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->objectIfNotNull(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    :goto_2
    const-string p1, "account"

    .line 29
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 30
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result p1

    if-nez p1, :cond_7

    .line 31
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/config/ConfigService;

    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment;->joinLogin:Landroid/content/Intent;

    .line 32
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    return-void

    :cond_7
    iget-boolean p1, p0, Lcom/narvii/master/CommunityDetailFragment;->isCurrentUserJoined:Z

    if-eqz p1, :cond_8

    iput-boolean p1, p0, Lcom/narvii/master/CommunityDetailFragment;->isUserJoinedBeforeLaunch:Z

    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment;->mainAdapter:Lcom/narvii/master/CommunityDetailFragment$MainAdapter;

    .line 33
    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->getResponse()Lcom/narvii/model/api/ObjectResponse;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/FullCommunityResponse;

    .line 34
    invoke-direct {p0, p1}, Lcom/narvii/master/CommunityDetailFragment;->launchCommunity(Lcom/narvii/community/FullCommunityResponse;)V

    goto/16 :goto_7

    :cond_8
    const-string/jumbo p1, "statistics"

    .line 35
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment;->mCommunity:Lcom/narvii/model/Community;

    .line 36
    iget p1, p1, Lcom/narvii/model/Community;->joinType:I

    const/4 v0, 0x2

    const-string v1, "Join Community Button"

    const-string v3, "join"

    const/4 v4, 0x1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment;->joinLogin:Landroid/content/Intent;

    .line 37
    invoke-virtual {p0, p1, v1}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    if-eq p1, v4, :cond_a

    if-ne p1, v0, :cond_e

    :cond_a
    if-ne p1, v4, :cond_b

    move p1, v4

    goto :goto_3

    :cond_b
    const/4 p1, 0x0

    :goto_3
    if-eqz p1, :cond_c

    const-string v3, "request invite"

    goto :goto_4

    :cond_c
    const-string v3, "closed"

    :goto_4
    iget-object v5, p0, Lcom/narvii/master/CommunityDetailFragment;->invitationId:Ljava/lang/String;

    .line 38
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment;->joinLogin:Landroid/content/Intent;

    .line 39
    invoke-virtual {p0, p1, v1}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    .line 40
    :cond_d
    new-instance v1, Lcom/narvii/master/CommunityDetailFragment$5;

    invoke-direct {v1, p0, p1}, Lcom/narvii/master/CommunityDetailFragment$5;-><init>(Lcom/narvii/master/CommunityDetailFragment;Z)V

    invoke-direct {p0, v1}, Lcom/narvii/master/CommunityDetailFragment;->openJoinRequest(Lcom/narvii/community/request/RequestJoinCommunityDialog$CallBack;)V

    .line 41
    :cond_e
    :goto_5
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_f

    const-string/jumbo p1, "unknown"

    .line 42
    :cond_f
    new-instance v1, Lcom/narvii/util/mixpanel/MixpanelAnalytics;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/narvii/util/mixpanel/MixpanelAnalytics;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v6, "type"

    .line 44
    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "source"

    .line 45
    invoke-interface {v5, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment;->mCommunity:Lcom/narvii/model/Community;

    .line 46
    iget p1, p1, Lcom/narvii/model/Community;->id:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v3, "community_id"

    invoke-interface {v5, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment;->mCommunity:Lcom/narvii/model/Community;

    .line 47
    iget p1, p1, Lcom/narvii/model/Community;->templateId:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v3, "template"

    invoke-interface {v5, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "category"

    .line 48
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "category_type"

    invoke-interface {v5, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "communities_joined_total"

    .line 49
    invoke-virtual {v1, p1, v4}, Lcom/narvii/util/mixpanel/MixpanelAnalytics;->increment(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment;->mCommunity:Lcom/narvii/model/Community;

    if-eqz p1, :cond_11

    .line 50
    iget p1, p1, Lcom/narvii/model/Community;->listedStatus:I

    if-ne p1, v0, :cond_10

    const-string p1, "Listed"

    goto :goto_6

    :cond_10
    const-string p1, "Unlisted"

    :goto_6
    const-string v0, "listing_status"

    .line 51
    invoke-interface {v5, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_communities_joined_total"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v4}, Lcom/narvii/util/mixpanel/MixpanelAnalytics;->increment(Ljava/lang/String;I)V

    :cond_11
    const-string/jumbo p1, "suggested communities"

    .line 53
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    const-string/jumbo p1, "toast"

    .line 54
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    const-string/jumbo p1, "toast search"

    .line 55
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    :cond_12
    const-string/jumbo p1, "suggested_communities_joined_total"

    .line 56
    invoke-virtual {v1, p1, v4}, Lcom/narvii/util/mixpanel/MixpanelAnalytics;->increment(Ljava/lang/String;I)V

    :cond_13
    const-string p1, "community_join"

    .line 57
    invoke-virtual {v1, p1, v5}, Lcom/narvii/util/mixpanel/MixpanelAnalytics;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    :goto_7
    return-void
.end method

.method private launchCommunity(Lcom/narvii/community/FullCommunityResponse;)V
    .locals 11

    .line 1
    .line 2
    const-string v0, "joinOnly"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    const/4 p1, -0x1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setResult(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 16
    return-void

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    iget-object v1, p1, Lcom/narvii/model/api/CommunityResponse;->community:Lcom/narvii/model/Community;

    .line 22
    .line 23
    iget-object v2, p1, Lcom/narvii/community/FullCommunityResponse;->currentUserInfo:Lcom/narvii/community/CommunityUserInfo;

    .line 24
    .line 25
    if-nez v2, :cond_1

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_1
    iget-object v0, v2, Lcom/narvii/community/CommunityUserInfo;->userProfile:Lcom/narvii/model/User;

    .line 29
    .line 30
    :goto_0
    iget-object p1, p1, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    .line 31
    move-object v9, p1

    .line 32
    move-object v6, v0

    .line 33
    move-object v4, v1

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    move-object v4, v0

    .line 36
    move-object v6, v4

    .line 37
    move-object v9, v6

    .line 38
    .line 39
    :goto_1
    iget-object v2, p0, Lcom/narvii/master/CommunityDetailFragment;->mLaunchHelper:Lcom/narvii/community/CommunityLaunchHelper;

    .line 40
    .line 41
    iget v3, p0, Lcom/narvii/master/CommunityDetailFragment;->cid:I

    .line 42
    const/4 v8, 0x0

    .line 43
    const/4 v10, 0x0

    .line 44
    move-object v5, v9

    .line 45
    move-object v7, v9

    .line 46
    .line 47
    .line 48
    invoke-virtual/range {v2 .. v10}, Lcom/narvii/community/CommunityLaunchHelper;->launch(ILcom/narvii/model/Community;Ljava/lang/String;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/community/ReminderCheck;Ljava/lang/String;Z)V

    .line 49
    return-void
.end method

.method private openJoinRequest(Lcom/narvii/community/request/RequestJoinCommunityDialog$CallBack;)V
    .locals 7

    .line 1
    .line 2
    new-instance v6, Lcom/narvii/community/request/RequestJoinCommunityDialog;

    .line 3
    .line 4
    iget-object v3, p0, Lcom/narvii/master/CommunityDetailFragment;->mCommunity:Lcom/narvii/model/Community;

    .line 5
    .line 6
    iget v2, v3, Lcom/narvii/model/Community;->joinType:I

    .line 7
    .line 8
    iget-boolean v5, p0, Lcom/narvii/master/CommunityDetailFragment;->isRequested:Z

    .line 9
    move-object v0, v6

    .line 10
    move-object v1, p0

    .line 11
    move-object v4, p1

    .line 12
    .line 13
    .line 14
    invoke-direct/range {v0 .. v5}, Lcom/narvii/community/request/RequestJoinCommunityDialog;-><init>(Lcom/narvii/app/NVContext;ILcom/narvii/model/Community;Lcom/narvii/community/request/RequestJoinCommunityDialog$CallBack;Z)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v6}, Lcom/narvii/app/NVDialog;->show()V

    .line 18
    return-void
.end method

.method private requestCommunityOnlineData()V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    sget v0, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    .line 9
    .line 10
    const/16 v1, 0x64

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->mCommunity:Lcom/narvii/model/Community;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget v0, v0, Lcom/narvii/model/Community;->joinType:I

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    new-instance v1, Lcom/narvii/livelayer/LiveLayerHelper;

    .line 23
    .line 24
    iget v0, p0, Lcom/narvii/master/CommunityDetailFragment;->cid:I

    .line 25
    .line 26
    .line 27
    invoke-direct {v1, p0, v0}, Lcom/narvii/livelayer/LiveLayerHelper;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 28
    .line 29
    iput-object v1, p0, Lcom/narvii/master/CommunityDetailFragment;->liveLayerHelper:Lcom/narvii/livelayer/LiveLayerHelper;

    .line 30
    .line 31
    iget-object v2, p0, Lcom/narvii/master/CommunityDetailFragment;->topic:Ljava/lang/String;

    .line 32
    .line 33
    const/16 v3, 0xa

    .line 34
    const/4 v4, 0x0

    .line 35
    const/4 v5, 0x1

    .line 36
    .line 37
    new-instance v6, Lcom/narvii/master/CommunityDetailFragment$3;

    .line 38
    .line 39
    .line 40
    invoke-direct {v6, p0}, Lcom/narvii/master/CommunityDetailFragment$3;-><init>(Lcom/narvii/master/CommunityDetailFragment;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual/range {v1 .. v6}, Lcom/narvii/livelayer/LiveLayerHelper;->requestOnlineMembers(Ljava/lang/String;IZZLcom/narvii/util/Callback;)V

    .line 44
    :cond_0
    return-void
.end method

.method public static safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private sendInviteCodeRequest()V
    .locals 4

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/master/invitation/PasteBoardService;->SKIP:Lcom/narvii/util/statistics/TmpValue;

    .line 3
    .line 4
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 5
    .line 6
    const-wide/16 v2, 0x3a98

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;J)V

    .line 10
    .line 11
    const-string v0, "pasteBoard"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    check-cast v0, Lcom/narvii/master/invitation/PasteBoardService;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Lcom/narvii/master/CommunityDetailFragment;->inviteCode:Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/narvii/master/invitation/PasteBoardService;->updateUrl(Ljava/lang/String;)V

    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->inviteHelper:Lcom/narvii/master/invitation/InviteHelper;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/narvii/master/CommunityDetailFragment;->inviteCode:Ljava/lang/String;

    .line 29
    .line 30
    new-instance v2, Lcom/narvii/master/CommunityDetailFragment$4;

    .line 31
    .line 32
    .line 33
    invoke-direct {v2, p0}, Lcom/narvii/master/CommunityDetailFragment$4;-><init>(Lcom/narvii/master/CommunityDetailFragment;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1, v2}, Lcom/narvii/master/invitation/InviteHelper;->requestInviteIdentify(Ljava/lang/String;Lcom/narvii/master/invitation/InviteHelper$LinkIdentifyInterface;)V

    .line 37
    return-void
.end method

.method private shareCommunity(Ljava/lang/String;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->mainAdapter:Lcom/narvii/master/CommunityDetailFragment$MainAdapter;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    new-instance v0, Lcom/narvii/share/ShareDarkRoomHelper;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/narvii/share/ShareDarkRoomHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/narvii/share/ShareDarkRoomHelper;->saveDynamicThemeBg(Landroid/app/Activity;)V

    .line 24
    .line 25
    const-class v0, Lcom/narvii/community/CommunityShareFragment;

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    sget-object v1, Lcom/narvii/share/ShareDarkRoomFragment;->KEY_SHARE_OBJECT:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/narvii/master/CommunityDetailFragment;->mCommunity:Lcom/narvii/model/Community;

    .line 34
    .line 35
    .line 36
    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    .line 42
    sget-object v1, Lcom/narvii/share/ShareDarkRoomFragment;->KEY_STATISTIC_SOURCE:Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    invoke-static {p0, v0}, Lcom/narvii/master/CommunityDetailFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 49
    :cond_1
    :goto_0
    return-void
.end method

.method private showMoreOptions()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    const v1, 0x7f1210b4

    .line 13
    const/4 v2, 0x0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 17
    .line 18
    .line 19
    const v1, 0x7f1210bb

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 23
    .line 24
    .line 25
    const v1, 0x7f120777

    .line 26
    const/4 v2, 0x1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 30
    .line 31
    new-instance v1, Lcom/narvii/master/CommunityDetailFragment$7;

    .line 32
    .line 33
    .line 34
    invoke-direct {v1, p0}, Lcom/narvii/master/CommunityDetailFragment$7;-><init>(Lcom/narvii/master/CommunityDetailFragment;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 41
    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/master/CommunityDetailFragment;)Lcom/github/mmin18/widget/RealtimeBlurView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/master/CommunityDetailFragment;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    return-object p0
.end method

.method static bridge synthetic u(Lcom/narvii/master/CommunityDetailFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/master/CommunityDetailFragment;->communityInfoRequested:Z

    return p0
.end method

.method private updateAccountRelatedViews()V
    .locals 2

    .line 1
    .line 2
    const-string v0, "blockPrivateCommunity"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    const-string v0, "account"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 29
    .line 30
    .line 31
    const v1, 0x7f120047

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVActivity;->setActionBarLeftTextView(I)Landroid/widget/TextView;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    new-instance v1, Lcom/narvii/master/CommunityDetailFragment$8;

    .line 38
    .line 39
    .line 40
    invoke-direct {v1, p0}, Lcom/narvii/master/CommunityDetailFragment$8;-><init>(Lcom/narvii/master/CommunityDetailFragment;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    goto :goto_0

    .line 45
    .line 46
    .line 47
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 51
    const/4 v1, 0x0

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVActivity;->setActionBarLeftView(Landroid/view/View;)V

    .line 55
    :cond_1
    :goto_0
    return-void
.end method

.method private updateActionBarHeader(F)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->communityIconActionBarLayout:Landroid/view/View;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    const v1, 0x7f0a007a

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/widget/ThumbImageView;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v1, p0, Lcom/narvii/master/CommunityDetailFragment;->mCommunity:Lcom/narvii/model/Community;

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    const/4 v1, 0x0

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    iget-object v1, v1, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 30
    :cond_1
    return-void
.end method

.method private updateCommunityRelatedViews()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->mCommunity:Lcom/narvii/model/Community;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v1, p0, Lcom/narvii/master/CommunityDetailFragment;->communityDetailBg:Lcom/narvii/widget/PromotionalImageView;

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0}, Lcom/narvii/widget/PromotionalImageView;->setCommunity(Lcom/narvii/model/Community;)V

    .line 13
    :cond_1
    return-void
.end method

.method private updateHoverJoinButtonView()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    .line 4
    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    .line 6
    move-result-object v2

    .line 7
    .line 8
    .line 9
    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    .line 10
    move-result v2

    .line 11
    .line 12
    if-ge v1, v2, :cond_4

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    .line 19
    invoke-interface {v2, v1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    sget-object v3, Lcom/narvii/master/CommunityDetailFragment;->JOIN_COMMUNITY:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 23
    .line 24
    if-ne v2, v3, :cond_3

    .line 25
    const/4 v2, -0x1

    .line 26
    .line 27
    if-ne v1, v2, :cond_0

    .line 28
    goto :goto_2

    .line 29
    .line 30
    :cond_0
    iget-object v1, p0, Lcom/narvii/master/CommunityDetailFragment;->joinCommunityButtonContainer:Landroid/view/View;

    .line 31
    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 36
    move-result v1

    .line 37
    .line 38
    iget v2, p0, Lcom/narvii/master/CommunityDetailFragment;->hoverOffset:I

    .line 39
    const/4 v3, 0x4

    .line 40
    .line 41
    if-gt v1, v2, :cond_1

    .line 42
    .line 43
    iget-object v1, p0, Lcom/narvii/master/CommunityDetailFragment;->joinCommunityButtonContainer:Landroid/view/View;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 47
    .line 48
    iget-object v1, p0, Lcom/narvii/master/CommunityDetailFragment;->hoverContainer:Landroid/view/View;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 52
    goto :goto_1

    .line 53
    .line 54
    :cond_1
    iget-object v1, p0, Lcom/narvii/master/CommunityDetailFragment;->joinCommunityButtonContainer:Landroid/view/View;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 58
    .line 59
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->hoverContainer:Landroid/view/View;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 63
    :cond_2
    :goto_1
    return-void

    .line 64
    .line 65
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 66
    goto :goto_0

    .line 67
    :cond_4
    :goto_2
    return-void
.end method

.method private updateHoverView()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->mCommunity:Lcom/narvii/model/Community;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/master/CommunityDetailFragment;->hoverJoinCommunityProgress:Lcom/narvii/widget/JoinCommunityProgressLayout;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/narvii/master/CommunityDetailFragment;->hoverBtnJoin:Landroid/widget/TextView;

    .line 7
    .line 8
    iget-object v3, p0, Lcom/narvii/master/CommunityDetailFragment;->hoverPrivateLock:Landroid/view/View;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/narvii/master/CommunityDetailFragment;->updateJoinButton(Lcom/narvii/model/Community;Lcom/narvii/widget/JoinCommunityProgressLayout;Landroid/widget/TextView;Landroid/view/View;)V

    .line 12
    return-void
.end method

.method private updateJoinButton(Lcom/narvii/model/Community;Lcom/narvii/widget/JoinCommunityProgressLayout;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_6

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-eqz v0, :cond_6

    .line 13
    .line 14
    if-eqz p1, :cond_6

    .line 15
    .line 16
    if-eqz p3, :cond_6

    .line 17
    .line 18
    if-eqz p4, :cond_6

    .line 19
    .line 20
    if-nez p2, :cond_0

    .line 21
    goto :goto_3

    .line 22
    .line 23
    :cond_0
    new-instance p1, Lcom/narvii/util/PackageUtils;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-direct {p1, v0}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/narvii/util/PackageUtils;->getCommunityIdFromPackageName()I

    .line 34
    .line 35
    .line 36
    const p1, 0x7f120b5c

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 40
    .line 41
    iget-boolean v0, p0, Lcom/narvii/master/CommunityDetailFragment;->isInProgress:Z

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    iget-boolean p1, p0, Lcom/narvii/master/CommunityDetailFragment;->isUserJoinedBeforeLaunch:Z

    .line 46
    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    .line 50
    const p1, 0x7f120313

    .line 51
    goto :goto_0

    .line 52
    .line 53
    .line 54
    :cond_1
    const p1, 0x7f120318

    .line 55
    .line 56
    .line 57
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 58
    move-result-object p1

    .line 59
    goto :goto_1

    .line 60
    .line 61
    :cond_2
    iget-boolean v0, p0, Lcom/narvii/master/CommunityDetailFragment;->isCurrentUserJoined:Z

    .line 62
    .line 63
    if-eqz v0, :cond_3

    .line 64
    .line 65
    .line 66
    const p1, 0x7f120462

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 70
    move-result-object p1

    .line 71
    goto :goto_1

    .line 72
    .line 73
    .line 74
    :cond_3
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    .line 78
    :goto_1
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    .line 80
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment;->invitationId:Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 84
    move-result p1

    .line 85
    .line 86
    xor-int/lit8 p1, p1, 0x1

    .line 87
    .line 88
    iget-boolean p3, p0, Lcom/narvii/master/CommunityDetailFragment;->isInProgress:Z

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2, p3}, Lcom/narvii/widget/JoinCommunityProgressLayout;->setCurPressed(Z)V

    .line 92
    .line 93
    iget-boolean p3, p0, Lcom/narvii/master/CommunityDetailFragment;->isInProgress:Z

    .line 94
    .line 95
    if-nez p3, :cond_4

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2}, Lcom/narvii/widget/JoinCommunityProgressLayout;->cancelProgress()V

    .line 99
    .line 100
    :cond_4
    iget p3, p0, Lcom/narvii/master/CommunityDetailFragment;->joinProgress:I

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2, p3}, Lcom/narvii/widget/JoinCommunityProgressLayout;->setProgress(I)V

    .line 104
    .line 105
    iget-boolean p2, p0, Lcom/narvii/master/CommunityDetailFragment;->isCurrentUserJoined:Z

    .line 106
    .line 107
    if-nez p2, :cond_5

    .line 108
    .line 109
    if-nez p1, :cond_5

    .line 110
    .line 111
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment;->mCommunity:Lcom/narvii/model/Community;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Lcom/narvii/model/Community;->shouldShowLock()Z

    .line 115
    move-result p1

    .line 116
    .line 117
    if-eqz p1, :cond_5

    .line 118
    const/4 p1, 0x0

    .line 119
    goto :goto_2

    .line 120
    .line 121
    :cond_5
    const/16 p1, 0x8

    .line 122
    .line 123
    .line 124
    :goto_2
    invoke-virtual {p4, p1}, Landroid/view/View;->setVisibility(I)V

    .line 125
    :cond_6
    :goto_3
    return-void
.end method

.method private updateJoinButtonStatus()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/master/CommunityDetailFragment;->updateHoverView()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->mainAdapter:Lcom/narvii/master/CommunityDetailFragment$MainAdapter;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    .line 11
    :cond_0
    return-void
.end method

.method static bridge synthetic v(Lcom/narvii/master/CommunityDetailFragment;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/master/CommunityDetailFragment;->fakeActionBar:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic w(Lcom/narvii/master/CommunityDetailFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/master/CommunityDetailFragment;->inviteCode:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic x(Lcom/narvii/master/CommunityDetailFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/master/CommunityDetailFragment;->isCurrentUserJoined:Z

    return p0
.end method

.method static bridge synthetic y(Lcom/narvii/master/CommunityDetailFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/master/CommunityDetailFragment;->isInProgress:Z

    return p0
.end method

.method static bridge synthetic z(Lcom/narvii/master/CommunityDetailFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/master/CommunityDetailFragment;->isInviteCodeRequested:Z

    return p0
.end method


# virtual methods
.method protected completePageViewEvent(Lcom/narvii/logging/LogEvent$Builder;Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->completePageViewEvent(Lcom/narvii/logging/LogEvent$Builder;Z)V

    .line 4
    .line 5
    iget-object p2, p0, Lcom/narvii/master/CommunityDetailFragment;->mainAdapter:Lcom/narvii/master/CommunityDetailFragment$MainAdapter;

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 11
    move-result-object p2

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    iget-object p2, p0, Lcom/narvii/master/CommunityDetailFragment;->mainAdapter:Lcom/narvii/master/CommunityDetailFragment$MainAdapter;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 19
    move-result-object p2

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_0
    iget p2, p0, Lcom/narvii/master/CommunityDetailFragment;->cid:I

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->objectId(I)Lcom/narvii/logging/LogEvent$Builder;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    sget-object p2, Lcom/narvii/logging/ObjectType;->community:Lcom/narvii/logging/ObjectType;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->objectType(Lcom/narvii/logging/ObjectType;)Lcom/narvii/logging/LogEvent$Builder;

    .line 35
    :goto_0
    return-void
.end method

.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 5

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/master/CommunityDetailFragment$MainAdapter;-><init>(Lcom/narvii/master/CommunityDetailFragment;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment;->mainAdapter:Lcom/narvii/master/CommunityDetailFragment$MainAdapter;

    .line 8
    .line 9
    new-instance p1, Lcom/narvii/master/CommunityDetailFragment$EndorsedCommunityAdapter;

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, p0}, Lcom/narvii/master/CommunityDetailFragment$EndorsedCommunityAdapter;-><init>(Lcom/narvii/master/CommunityDetailFragment;)V

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment;->endorsedCommunityAdapter:Lcom/narvii/master/CommunityDetailFragment$EndorsedCommunityAdapter;

    .line 15
    .line 16
    new-instance p1, Lcom/narvii/master/CommunityDetailFragment$EndorsedCommunityTitleAdapter;

    .line 17
    .line 18
    .line 19
    invoke-direct {p1, p0}, Lcom/narvii/master/CommunityDetailFragment$EndorsedCommunityTitleAdapter;-><init>(Lcom/narvii/master/CommunityDetailFragment;)V

    .line 20
    .line 21
    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment;->endorsedCommunityTitleAdapter:Lcom/narvii/master/CommunityDetailFragment$EndorsedCommunityTitleAdapter;

    .line 22
    .line 23
    new-instance p1, Lcom/narvii/master/CommunityDetailFragment$CommunityDetailDivideColumnAdapter;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    const/high16 v1, 0x40e00000    # 7.0f

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 33
    move-result v0

    .line 34
    float-to-int v0, v0

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 38
    move-result-object v2

    .line 39
    .line 40
    .line 41
    invoke-static {v2, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 42
    move-result v1

    .line 43
    float-to-int v1, v1

    .line 44
    .line 45
    .line 46
    invoke-direct {p1, p0, p0, v0, v1}, Lcom/narvii/master/CommunityDetailFragment$CommunityDetailDivideColumnAdapter;-><init>(Lcom/narvii/master/CommunityDetailFragment;Lcom/narvii/app/NVContext;II)V

    .line 47
    .line 48
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->endorsedCommunityAdapter:Lcom/narvii/master/CommunityDetailFragment$EndorsedCommunityAdapter;

    .line 49
    .line 50
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 54
    move-result-object v2

    .line 55
    .line 56
    .line 57
    const v3, 0x7f0600c3

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 61
    move-result v2

    .line 62
    .line 63
    .line 64
    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 65
    const/4 v2, 0x3

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v0, v2, v1}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;ILandroid/graphics/drawable/Drawable;)V

    .line 69
    .line 70
    new-instance v0, Lcom/narvii/list/StaticViewAdapter;

    .line 71
    .line 72
    .line 73
    invoke-direct {v0}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    .line 74
    const/4 v1, 0x1

    .line 75
    .line 76
    new-array v2, v1, [Landroid/view/View;

    .line 77
    .line 78
    new-instance v3, Lcom/narvii/list/overlay/OverlayListPlaceholder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 82
    move-result-object v4

    .line 83
    .line 84
    .line 85
    invoke-direct {v3, v4}, Lcom/narvii/list/overlay/OverlayListPlaceholder;-><init>(Landroid/content/Context;)V

    .line 86
    const/4 v4, 0x0

    .line 87
    .line 88
    aput-object v3, v2, v4

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v2}, Lcom/narvii/list/StaticViewAdapter;->addViews([Landroid/view/View;)V

    .line 92
    .line 93
    new-instance v2, Lcom/narvii/master/CommunityDetailFragment$9;

    .line 94
    .line 95
    .line 96
    invoke-direct {v2, p0, p0}, Lcom/narvii/master/CommunityDetailFragment$9;-><init>(Lcom/narvii/master/CommunityDetailFragment;Lcom/narvii/app/NVContext;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 100
    .line 101
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->mainAdapter:Lcom/narvii/master/CommunityDetailFragment$MainAdapter;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2, v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 105
    .line 106
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->endorsedCommunityTitleAdapter:Lcom/narvii/master/CommunityDetailFragment$EndorsedCommunityTitleAdapter;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 113
    return-object v2
.end method

.method protected ensureLoginToast()V
    .locals 1

    .line 1
    .line 2
    const-string v0, "loginAhead"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->ensureLoginToast()V

    .line 12
    :cond_0
    return-void
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f130013

    return v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "community_detail"

    return-object v0
.end method

.method public getStatusBarAlpha()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getStrategyInfo()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->mainAdapter:Lcom/narvii/master/CommunityDetailFragment$MainAdapter;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/model/Community;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/model/Community;->getStrategyInfo()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->getStrategyInfo()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method

.method public hasPostEntry()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method protected initVideoListDelegate()Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p0, v1}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;-><init>(Lcom/narvii/app/NVContext;Landroid/app/Activity;)V

    .line 10
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
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 4
    .line 5
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    .line 9
    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setActionBarBackground(Landroid/graphics/drawable/Drawable;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    const v0, 0x7f0d010e

    .line 24
    const/4 v1, 0x0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment;->communityIconActionBarLayout:Landroid/view/View;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setActionBarTitleView(Landroid/view/View;)V

    .line 34
    .line 35
    const/high16 p1, 0x3f800000    # 1.0f

    .line 36
    .line 37
    .line 38
    invoke-direct {p0, p1}, Lcom/narvii/master/CommunityDetailFragment;->updateActionBarHeader(F)V

    .line 39
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 4
    .line 5
    const/16 v0, 0x12c

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    const/4 p1, -0x1

    .line 9
    .line 10
    if-ne p2, p1, :cond_0

    .line 11
    .line 12
    if-eqz p3, :cond_0

    .line 13
    .line 14
    const-string p1, "join"

    .line 15
    const/4 p2, 0x0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 19
    move-result p1

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lcom/narvii/master/CommunityDetailFragment;->joinCommunity()V

    .line 25
    :cond_0
    return-void
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onConnect(Lcom/narvii/util/ws/WsService;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    sget-object v0, Lcom/narvii/app/ComScoreSectionDispatcher;->INSTANCE:Lcom/narvii/app/ComScoreSectionDispatcher;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/narvii/app/ComScoreSectionDispatcher;->sectionChangeToCommunity()V

    .line 9
    .line 10
    const-string v0, "id"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 14
    move-result v0

    .line 15
    .line 16
    iput v0, p0, Lcom/narvii/master/CommunityDetailFragment;->cid:I

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 22
    .line 23
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 24
    .line 25
    const-string v1, "join"

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    iput-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->joinLogin:Landroid/content/Intent;

    .line 31
    .line 32
    const-string v1, "communityJoinLogin"

    .line 33
    const/4 v2, 0x1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 37
    .line 38
    const-string v0, "inviteCode"

    .line 39
    .line 40
    const-string v1, "invitationId"

    .line 41
    const/4 v3, 0x0

    .line 42
    .line 43
    const-string v4, "isCurrentUserJoined"

    .line 44
    .line 45
    const-string v5, "prefetch"

    .line 46
    .line 47
    if-nez p1, :cond_1

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v5}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    move-result-object v5

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v4, v3}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    .line 55
    move-result v3

    .line 56
    .line 57
    iput-boolean v3, p0, Lcom/narvii/master/CommunityDetailFragment;->isCurrentUserJoined:Z

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    move-result-object v1

    .line 62
    .line 63
    iput-object v1, p0, Lcom/narvii/master/CommunityDetailFragment;->invitationId:Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    iput-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->inviteCode:Ljava/lang/String;

    .line 70
    goto :goto_0

    .line 71
    .line 72
    .line 73
    :cond_1
    invoke-virtual {p1, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    move-result-object v5

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v4, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 78
    move-result v3

    .line 79
    .line 80
    iput-boolean v3, p0, Lcom/narvii/master/CommunityDetailFragment;->isCurrentUserJoined:Z

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    move-result-object v1

    .line 85
    .line 86
    iput-object v1, p0, Lcom/narvii/master/CommunityDetailFragment;->invitationId:Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    move-result-object v0

    .line 91
    .line 92
    iput-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->inviteCode:Ljava/lang/String;

    .line 93
    .line 94
    const-string v0, "communityInfoRequested"

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 98
    move-result v0

    .line 99
    .line 100
    iput-boolean v0, p0, Lcom/narvii/master/CommunityDetailFragment;->communityInfoRequested:Z

    .line 101
    .line 102
    .line 103
    :goto_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 104
    move-result v0

    .line 105
    .line 106
    if-nez v0, :cond_2

    .line 107
    .line 108
    const-class v0, Lcom/narvii/model/Community;

    .line 109
    .line 110
    .line 111
    invoke-static {v5, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 112
    move-result-object v0

    .line 113
    .line 114
    check-cast v0, Lcom/narvii/model/Community;

    .line 115
    .line 116
    iput-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->mCommunity:Lcom/narvii/model/Community;

    .line 117
    .line 118
    :cond_2
    iget v0, p0, Lcom/narvii/master/CommunityDetailFragment;->cid:I

    .line 119
    .line 120
    if-nez v0, :cond_3

    .line 121
    .line 122
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->mCommunity:Lcom/narvii/model/Community;

    .line 123
    .line 124
    if-eqz v0, :cond_3

    .line 125
    .line 126
    iget v0, v0, Lcom/narvii/model/Community;->id:I

    .line 127
    .line 128
    iput v0, p0, Lcom/narvii/master/CommunityDetailFragment;->cid:I

    .line 129
    .line 130
    .line 131
    :cond_3
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 132
    .line 133
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 134
    .line 135
    new-instance v1, Landroid/content/IntentFilter;

    .line 136
    .line 137
    const-string v3, "com.narvii.action.ACCOUNT_CHANGED"

    .line 138
    .line 139
    .line 140
    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 144
    .line 145
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 146
    .line 147
    new-instance v1, Landroid/content/IntentFilter;

    .line 148
    .line 149
    const-string v3, "com.narvii.action.COMMUNITY_USER_INFO_CHANGED"

    .line 150
    .line 151
    .line 152
    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 159
    move-result-object v0

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 163
    move-result-object v0

    .line 164
    .line 165
    const/16 v1, 0x22

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 169
    .line 170
    if-nez p1, :cond_b

    .line 171
    .line 172
    const-string/jumbo p1, "statistics"

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 176
    move-result-object p1

    .line 177
    .line 178
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 179
    .line 180
    const-string v0, "Community Detail Page Opened"

    .line 181
    .line 182
    .line 183
    invoke-interface {p1, v0}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 184
    move-result-object p1

    .line 185
    .line 186
    const-string v0, "Community Detail Page Opened Total"

    .line 187
    .line 188
    .line 189
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 190
    move-result-object p1

    .line 191
    .line 192
    const-string v0, "Source"

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 196
    move-result-object v1

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 200
    move-result-object p1

    .line 201
    .line 202
    const-string v1, "Community ID"

    .line 203
    .line 204
    iget v3, p0, Lcom/narvii/master/CommunityDetailFragment;->cid:I

    .line 205
    .line 206
    .line 207
    invoke-virtual {p1, v1, v3}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;I)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 208
    move-result-object p1

    .line 209
    .line 210
    const-string v1, "category"

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 214
    move-result-object v1

    .line 215
    .line 216
    const-string v3, "Category Type"

    .line 217
    .line 218
    .line 219
    invoke-virtual {p1, v3, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 220
    move-result-object p1

    .line 221
    .line 222
    iget-object v1, p0, Lcom/narvii/master/CommunityDetailFragment;->mCommunity:Lcom/narvii/model/Community;

    .line 223
    .line 224
    if-eqz v1, :cond_5

    .line 225
    .line 226
    iget v1, v1, Lcom/narvii/model/Community;->listedStatus:I

    .line 227
    const/4 v3, 0x2

    .line 228
    .line 229
    if-ne v1, v3, :cond_4

    .line 230
    .line 231
    const-string v1, "Listed"

    .line 232
    goto :goto_1

    .line 233
    .line 234
    :cond_4
    const-string v1, "Unlisted"

    .line 235
    .line 236
    :goto_1
    const-string v3, "Listing Status"

    .line 237
    .line 238
    .line 239
    invoke-virtual {p1, v3, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 240
    .line 241
    iget-object v1, p0, Lcom/narvii/master/CommunityDetailFragment;->mCommunity:Lcom/narvii/model/Community;

    .line 242
    .line 243
    iget v1, v1, Lcom/narvii/model/Community;->templateId:I

    .line 244
    .line 245
    if-eqz v1, :cond_5

    .line 246
    .line 247
    const-string v3, "Template"

    .line 248
    .line 249
    .line 250
    invoke-virtual {p1, v3, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;I)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 251
    .line 252
    :cond_5
    const-string/jumbo v1, "standalone"

    .line 253
    .line 254
    .line 255
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 256
    move-result v1

    .line 257
    .line 258
    if-eqz v1, :cond_6

    .line 259
    .line 260
    const-string v1, "App Type"

    .line 261
    .line 262
    const-string v3, "Standalone"

    .line 263
    .line 264
    .line 265
    invoke-virtual {p1, v1, v3}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 266
    .line 267
    :cond_6
    const-string p1, "logging"

    .line 268
    .line 269
    .line 270
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 271
    move-result-object p1

    .line 272
    .line 273
    check-cast p1, Lcom/narvii/util/logging/LoggingService;

    .line 274
    .line 275
    new-instance v1, Ljava/util/ArrayList;

    .line 276
    .line 277
    .line 278
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 279
    .line 280
    const-string v3, "ndcId"

    .line 281
    .line 282
    .line 283
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    .line 285
    iget v3, p0, Lcom/narvii/master/CommunityDetailFragment;->cid:I

    .line 286
    .line 287
    .line 288
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 289
    move-result-object v3

    .line 290
    .line 291
    .line 292
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    .line 294
    const-string v3, "eventOrigin"

    .line 295
    .line 296
    .line 297
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 298
    move-result-object v4

    .line 299
    .line 300
    if-eqz v4, :cond_7

    .line 301
    .line 302
    .line 303
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 307
    move-result-object v3

    .line 308
    .line 309
    .line 310
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    .line 312
    :cond_7
    const-string v3, "eventSource"

    .line 313
    .line 314
    .line 315
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 316
    move-result-object v4

    .line 317
    .line 318
    if-eqz v4, :cond_8

    .line 319
    .line 320
    .line 321
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 325
    move-result-object v0

    .line 326
    .line 327
    .line 328
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    goto :goto_2

    .line 330
    .line 331
    :cond_8
    const-string v4, "Link"

    .line 332
    .line 333
    .line 334
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 335
    move-result-object v0

    .line 336
    .line 337
    .line 338
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 339
    move-result v0

    .line 340
    .line 341
    if-eqz v0, :cond_9

    .line 342
    .line 343
    .line 344
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    .line 346
    sget-object v0, Lcom/narvii/util/logging/LoggingSource;->Link:Lcom/narvii/util/logging/LoggingSource;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 350
    move-result-object v0

    .line 351
    .line 352
    .line 353
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    .line 355
    :cond_9
    :goto_2
    const-string/jumbo v0, "tags"

    .line 356
    .line 357
    .line 358
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 359
    move-result-object v3

    .line 360
    .line 361
    if-eqz v3, :cond_a

    .line 362
    .line 363
    .line 364
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    .line 366
    .line 367
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 368
    move-result-object v0

    .line 369
    .line 370
    .line 371
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    .line 373
    :cond_a
    const-string v0, "AminoDetailViewEntered"

    .line 374
    .line 375
    .line 376
    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    .line 377
    move-result-object v1

    .line 378
    .line 379
    .line 380
    invoke-interface {p1, v0, v1}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 381
    .line 382
    .line 383
    :cond_b
    invoke-direct {p0}, Lcom/narvii/master/CommunityDetailFragment;->initLaunchHelper()V

    .line 384
    .line 385
    new-instance p1, Lcom/narvii/master/invitation/InviteHelper;

    .line 386
    .line 387
    .line 388
    invoke-direct {p1, p0}, Lcom/narvii/master/invitation/InviteHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 389
    .line 390
    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment;->inviteHelper:Lcom/narvii/master/invitation/InviteHelper;

    .line 391
    .line 392
    iget-boolean p1, p0, Lcom/narvii/master/CommunityDetailFragment;->isCurrentUserJoined:Z

    .line 393
    .line 394
    if-nez p1, :cond_e

    .line 395
    .line 396
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment;->inviteCode:Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 400
    move-result p1

    .line 401
    .line 402
    if-nez p1, :cond_c

    .line 403
    .line 404
    .line 405
    invoke-direct {p0}, Lcom/narvii/master/CommunityDetailFragment;->sendInviteCodeRequest()V

    .line 406
    goto :goto_3

    .line 407
    .line 408
    :cond_c
    iput-boolean v2, p0, Lcom/narvii/master/CommunityDetailFragment;->isInviteCodeRequested:Z

    .line 409
    .line 410
    const-string p1, "loginAhead"

    .line 411
    .line 412
    .line 413
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 414
    move-result p1

    .line 415
    .line 416
    if-nez p1, :cond_d

    .line 417
    .line 418
    const-string p1, "autoJoin"

    .line 419
    .line 420
    .line 421
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 422
    move-result p1

    .line 423
    .line 424
    if-eqz p1, :cond_e

    .line 425
    .line 426
    :cond_d
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment;->mCommunity:Lcom/narvii/model/Community;

    .line 427
    .line 428
    if-eqz p1, :cond_e

    .line 429
    .line 430
    iget-boolean p1, p0, Lcom/narvii/master/CommunityDetailFragment;->isCurrentUserJoined:Z

    .line 431
    .line 432
    if-nez p1, :cond_e

    .line 433
    .line 434
    new-instance p1, Landroid/content/Intent;

    .line 435
    .line 436
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->joinLogin:Landroid/content/Intent;

    .line 437
    .line 438
    .line 439
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 440
    .line 441
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->mCommunity:Lcom/narvii/model/Community;

    .line 442
    .line 443
    .line 444
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 445
    move-result-object v0

    .line 446
    .line 447
    const-string v1, "community"

    .line 448
    .line 449
    .line 450
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 451
    .line 452
    const-string v0, "inviter"

    .line 453
    .line 454
    .line 455
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 456
    move-result-object v1

    .line 457
    .line 458
    .line 459
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 460
    const/4 v0, 0x0

    .line 461
    .line 462
    .line 463
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    :cond_e
    :goto_3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    .line 467
    move-result p1

    .line 468
    .line 469
    .line 470
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    .line 471
    move-result v0

    .line 472
    add-int/2addr p1, v0

    .line 473
    .line 474
    iput p1, p0, Lcom/narvii/master/CommunityDetailFragment;->hoverOffset:I

    .line 475
    .line 476
    if-nez p1, :cond_10

    .line 477
    .line 478
    .line 479
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 480
    move-result-object p1

    .line 481
    .line 482
    sget-boolean v0, Lcom/narvii/util/statusbar/StatusBarUtils;->STATUS_BAR_ENABLE:Z

    .line 483
    .line 484
    if-eqz v0, :cond_f

    .line 485
    .line 486
    const/high16 v0, 0x42880000    # 68.0f

    .line 487
    goto :goto_4

    .line 488
    .line 489
    :cond_f
    const/high16 v0, 0x42200000    # 40.0f

    .line 490
    .line 491
    .line 492
    :goto_4
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 493
    move-result p1

    .line 494
    float-to-int p1, p1

    .line 495
    .line 496
    iput p1, p0, Lcom/narvii/master/CommunityDetailFragment;->hoverOffset:I

    .line 497
    :cond_10
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    .line 6
    .line 7
    const v0, 0x7f1210ad

    .line 8
    const/4 v1, 0x1

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, p2, v0, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    const v2, 0x7f080413

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 19
    move-result-object v0

    .line 20
    const/4 v2, 0x2

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 24
    .line 25
    .line 26
    const v0, 0x7f120cd0

    .line 27
    .line 28
    .line 29
    invoke-interface {p1, p2, v0, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    const p2, 0x7f08006f

    .line 34
    .line 35
    .line 36
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    .line 40
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 41
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d010f

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment;->rootFrame:Landroid/view/View;

    .line 11
    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->onlineMemberBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->unsubscribeTopic()V

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->liveLayerWsService:Lcom/narvii/livelayer/ws/LiveLayerWsService;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p0}, Lcom/narvii/livelayer/ws/LiveLayerWsService;->unregisterWsListener(Lcom/narvii/util/ws/WsService$WsListener;)V

    .line 15
    .line 16
    :cond_1
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 20
    .line 21
    .line 22
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    .line 23
    return-void
.end method

.method public onDisconnect(Lcom/narvii/util/ws/WsService;Ljava/lang/Throwable;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/narvii/master/CommunityDetailFragment;->offline:Z

    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 8
    const/4 p2, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 12
    .line 13
    check-cast p1, Lcom/narvii/widget/NVListView;

    .line 14
    .line 15
    iget-object p2, p0, Lcom/narvii/master/CommunityDetailFragment;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 19
    return-void
.end method

.method protected onLoginResult(ZLandroid/content/Intent;)V
    .locals 7

    .line 1
    .line 2
    if-eqz p1, :cond_5

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "join"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_5

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->mainAdapter:Lcom/narvii/master/CommunityDetailFragment$MainAdapter;

    .line 17
    const/4 v1, 0x1

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iput-boolean v1, p0, Lcom/narvii/master/CommunityDetailFragment;->pendingAutoLogin:Z

    .line 22
    return-void

    .line 23
    :cond_0
    const/4 v2, 0x0

    .line 24
    .line 25
    iput-boolean v2, p0, Lcom/narvii/master/CommunityDetailFragment;->pendingAutoLogin:Z

    .line 26
    .line 27
    iget-boolean v2, p0, Lcom/narvii/master/CommunityDetailFragment;->isCurrentUserJoined:Z

    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    return-void

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    check-cast v0, Lcom/narvii/model/Community;

    .line 37
    .line 38
    iget v2, v0, Lcom/narvii/model/Community;->id:I

    .line 39
    .line 40
    iget-boolean v3, p0, Lcom/narvii/master/CommunityDetailFragment;->isCurrentUserJoined:Z

    .line 41
    .line 42
    iput-boolean v3, p0, Lcom/narvii/master/CommunityDetailFragment;->isUserJoinedBeforeLaunch:Z

    .line 43
    .line 44
    .line 45
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 46
    move-result-object v3

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 50
    move-result-object v3

    .line 51
    .line 52
    iget v0, v0, Lcom/narvii/model/Community;->id:I

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    const-string v3, "/community/join"

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    iget-object v3, p0, Lcom/narvii/master/CommunityDetailFragment;->invitationId:Ljava/lang/String;

    .line 65
    .line 66
    if-eqz v3, :cond_2

    .line 67
    .line 68
    const-string v4, "invitationId"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v4, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 72
    goto :goto_0

    .line 73
    .line 74
    :cond_2
    const-string v3, "blockPrivateCommunity"

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 78
    move-result v3

    .line 79
    .line 80
    if-eqz v3, :cond_3

    .line 81
    .line 82
    new-instance p1, Lcom/narvii/master/CommunityDetailFragment$11;

    .line 83
    .line 84
    .line 85
    invoke-direct {p1, p0, p2}, Lcom/narvii/master/CommunityDetailFragment$11;-><init>(Lcom/narvii/master/CommunityDetailFragment;Landroid/content/Intent;)V

    .line 86
    .line 87
    .line 88
    invoke-direct {p0, p1}, Lcom/narvii/master/CommunityDetailFragment;->openJoinRequest(Lcom/narvii/community/request/RequestJoinCommunityDialog$CallBack;)V

    .line 89
    return-void

    .line 90
    .line 91
    .line 92
    :cond_3
    :goto_0
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 93
    move-result-object v0

    .line 94
    .line 95
    const-string v3, "api"

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 99
    move-result-object v3

    .line 100
    .line 101
    check-cast v3, Lcom/narvii/util/http/ApiService;

    .line 102
    .line 103
    const-string v4, "joinOnly"

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, v4}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 107
    move-result v4

    .line 108
    .line 109
    const-class v5, Lcom/narvii/model/api/UserResponse;

    .line 110
    .line 111
    const/16 v6, 0x14

    .line 112
    .line 113
    if-eqz v4, :cond_4

    .line 114
    .line 115
    iput v6, p0, Lcom/narvii/master/CommunityDetailFragment;->joinProgress:I

    .line 116
    .line 117
    iput-boolean v1, p0, Lcom/narvii/master/CommunityDetailFragment;->isInProgress:Z

    .line 118
    .line 119
    iget-object v1, p0, Lcom/narvii/master/CommunityDetailFragment;->mainAdapter:Lcom/narvii/master/CommunityDetailFragment$MainAdapter;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    .line 123
    .line 124
    .line 125
    invoke-direct {p0}, Lcom/narvii/master/CommunityDetailFragment;->updateHoverView()V

    .line 126
    .line 127
    new-instance v1, Lcom/narvii/master/CommunityDetailFragment$12;

    .line 128
    .line 129
    .line 130
    invoke-direct {v1, p0, v5, v2}, Lcom/narvii/master/CommunityDetailFragment$12;-><init>(Lcom/narvii/master/CommunityDetailFragment;Ljava/lang/Class;I)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v3, v0, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 134
    goto :goto_1

    .line 135
    .line 136
    :cond_4
    iput v6, p0, Lcom/narvii/master/CommunityDetailFragment;->joinProgress:I

    .line 137
    .line 138
    iput-boolean v1, p0, Lcom/narvii/master/CommunityDetailFragment;->isInProgress:Z

    .line 139
    .line 140
    .line 141
    invoke-direct {p0}, Lcom/narvii/master/CommunityDetailFragment;->updateJoinButtonStatus()V

    .line 142
    .line 143
    new-instance v1, Lcom/narvii/master/CommunityDetailFragment$13;

    .line 144
    .line 145
    .line 146
    invoke-direct {v1, p0, v5, v2}, Lcom/narvii/master/CommunityDetailFragment$13;-><init>(Lcom/narvii/master/CommunityDetailFragment;Ljava/lang/Class;I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v3, v0, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 150
    .line 151
    .line 152
    :cond_5
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onLoginResult(ZLandroid/content/Intent;)V

    .line 153
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    const v1, 0x7f120cd0

    .line 8
    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    .line 12
    const v1, 0x7f1210ad

    .line 13
    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    const-string v0, "Navbar"

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, v0}, Lcom/narvii/master/CommunityDetailFragment;->shareCommunity(Ljava/lang/String;)V

    .line 21
    goto :goto_0

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-direct {p0}, Lcom/narvii/master/CommunityDetailFragment;->showMoreOptions()V

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 28
    move-result p1

    .line 29
    return p1
.end method

.method public onPause()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->mLaunchHelper:Lcom/narvii/community/CommunityLaunchHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/community/CommunityLaunchHelper;->cancel()V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onPause()V

    .line 9
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f1210ad

    .line 7
    .line 8
    .line 9
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/master/CommunityDetailFragment;->mainAdapter:Lcom/narvii/master/CommunityDetailFragment$MainAdapter;

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x1

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    move v1, v3

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v1, v2

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 29
    .line 30
    .line 31
    const v0, 0x7f120cd0

    .line 32
    .line 33
    .line 34
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->mainAdapter:Lcom/narvii/master/CommunityDetailFragment$MainAdapter;

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    if-eqz v0, :cond_1

    .line 46
    move v2, v3

    .line 47
    .line 48
    .line 49
    :cond_1
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 50
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onResume()V

    .line 4
    .line 5
    const-string v0, "community_description"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setScreenName(Ljava/lang/String;)V

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->detailFrame:Landroid/view/View;

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->detailFrame:Landroid/view/View;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->rootFrame:Landroid/view/View;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->mainAdapter:Lcom/narvii/master/CommunityDetailFragment$MainAdapter;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->isLoading()Z

    .line 30
    move-result v0

    .line 31
    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->mainAdapter:Lcom/narvii/master/CommunityDetailFragment$MainAdapter;

    .line 35
    const/4 v2, 0x0

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Lcom/narvii/detail/DetailAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-direct {p0}, Lcom/narvii/master/CommunityDetailFragment;->updateCommunityRelatedViews()V

    .line 42
    .line 43
    .line 44
    invoke-direct {p0}, Lcom/narvii/master/CommunityDetailFragment;->updateAccountRelatedViews()V

    .line 45
    .line 46
    iget-boolean v0, p0, Lcom/narvii/master/CommunityDetailFragment;->pendingAutoLogin:Z

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    new-instance v0, Landroid/content/Intent;

    .line 51
    .line 52
    const-string v2, "join"

    .line 53
    .line 54
    .line 55
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    iget-object v2, p0, Lcom/narvii/master/CommunityDetailFragment;->mCommunity:Lcom/narvii/model/Community;

    .line 58
    .line 59
    .line 60
    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    move-result-object v2

    .line 62
    .line 63
    const-string v3, "community"

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    .line 68
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->joinLogin:Landroid/content/Intent;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    .line 72
    .line 73
    iput-boolean v1, p0, Lcom/narvii/master/CommunityDetailFragment;->pendingAutoLogin:Z

    .line 74
    .line 75
    :cond_1
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->onlineMemberBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 76
    .line 77
    if-eqz v0, :cond_2

    .line 78
    .line 79
    const-string v0, "prefs"

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 83
    move-result-object v0

    .line 84
    .line 85
    check-cast v0, Landroid/content/SharedPreferences;

    .line 86
    .line 87
    iget-object v2, p0, Lcom/narvii/master/CommunityDetailFragment;->onlineMemberBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 88
    .line 89
    const-string v3, "liveLayerFold"

    .line 90
    .line 91
    .line 92
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 93
    move-result v0

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, v0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->goFold(Z)V

    .line 97
    .line 98
    :cond_2
    iget-boolean v0, p0, Lcom/narvii/master/CommunityDetailFragment;->offline:Z

    .line 99
    .line 100
    if-eqz v0, :cond_3

    .line 101
    .line 102
    iput-boolean v1, p0, Lcom/narvii/master/CommunityDetailFragment;->offline:Z

    .line 103
    .line 104
    .line 105
    invoke-direct {p0}, Lcom/narvii/master/CommunityDetailFragment;->requestCommunityOnlineData()V

    .line 106
    :cond_3
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment;->mCommunity:Lcom/narvii/model/Community;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    const-string v1, "prefetch"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    const-string v0, "inviteCode"

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/master/CommunityDetailFragment;->inviteCode:Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    const-string v0, "isCurrentUserJoined"

    .line 24
    .line 25
    iget-boolean v1, p0, Lcom/narvii/master/CommunityDetailFragment;->isCurrentUserJoined:Z

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 29
    .line 30
    const-string v0, "communityInfoRequested"

    .line 31
    .line 32
    iget-boolean v1, p0, Lcom/narvii/master/CommunityDetailFragment;->communityInfoRequested:Z

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 36
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    const/4 p2, 0x1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVListFragment;->setDarkTheme(Z)V

    .line 8
    .line 9
    .line 10
    const p2, 0x7f0a0a53

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    check-cast p2, Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 17
    .line 18
    iput-object p2, p0, Lcom/narvii/master/CommunityDetailFragment;->onlineMemberBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 19
    .line 20
    iget v0, p0, Lcom/narvii/master/CommunityDetailFragment;->cid:I

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, v0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setCid(I)V

    .line 24
    .line 25
    .line 26
    const p2, 0x7f0a0368

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object p2

    .line 31
    .line 32
    iput-object p2, p0, Lcom/narvii/master/CommunityDetailFragment;->detailFrame:Landroid/view/View;

    .line 33
    const/4 p2, 0x0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, p1}, Lcom/narvii/master/CommunityDetailFragment;->initBgViews(Landroid/view/View;)V

    .line 40
    .line 41
    .line 42
    const p2, 0x7f0a0551

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    move-result-object p2

    .line 47
    .line 48
    iput-object p2, p0, Lcom/narvii/master/CommunityDetailFragment;->fakeActionBar:Landroid/view/View;

    .line 49
    .line 50
    .line 51
    const p2, 0x7f0a0683

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment;->hoverContainer:Landroid/view/View;

    .line 58
    .line 59
    .line 60
    const p2, 0x7f0a0788

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    check-cast p1, Landroid/widget/TextView;

    .line 67
    .line 68
    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment;->hoverBtnJoin:Landroid/widget/TextView;

    .line 69
    .line 70
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment;->hoverContainer:Landroid/view/View;

    .line 71
    .line 72
    .line 73
    const p2, 0x7f0a078a

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    move-result-object p1

    .line 78
    .line 79
    check-cast p1, Lcom/narvii/widget/JoinCommunityProgressLayout;

    .line 80
    .line 81
    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment;->hoverJoinCommunityProgress:Lcom/narvii/widget/JoinCommunityProgressLayout;

    .line 82
    .line 83
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment;->hoverContainer:Landroid/view/View;

    .line 84
    .line 85
    .line 86
    const p2, 0x7f0a078c

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 90
    move-result-object p1

    .line 91
    .line 92
    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment;->hoverPrivateLock:Landroid/view/View;

    .line 93
    .line 94
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment;->hoverJoinCommunityProgress:Lcom/narvii/widget/JoinCommunityProgressLayout;

    .line 95
    .line 96
    new-instance p2, Lcom/narvii/master/CommunityDetailFragment$2;

    .line 97
    .line 98
    .line 99
    invoke-direct {p2, p0}, Lcom/narvii/master/CommunityDetailFragment$2;-><init>(Lcom/narvii/master/CommunityDetailFragment;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    .line 104
    .line 105
    invoke-direct {p0}, Lcom/narvii/master/CommunityDetailFragment;->updateHoverView()V

    .line 106
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
