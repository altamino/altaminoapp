.class public Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroidx/core/view/NestedScrollingChild;
.implements Lcom/narvii/checkin/CheckInService$CheckInResponseListener;
.implements Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout$OnHeaderInvalidatedListener;
    }
.end annotation


# instance fields
.field private accountService:Lcom/narvii/account/AccountService;

.field private adObstructions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private adView:Lai/medialab/medialabads2/banners/MediaLabAdView;

.field private affiliationsService:Lcom/narvii/community/AffiliationsService;

.field private btnAddScreenRoom:Landroid/view/View;

.field private btnRemoveScreenRoom:Landroid/view/View;

.field private checkInContainer:Landroid/view/ViewGroup;

.field private checkInModule:Landroid/view/ViewGroup;

.field private checkInPrefsHelper:Lcom/narvii/checkin/CheckInPrefsHelper;

.field private checkInService:Lcom/narvii/checkin/CheckInService;

.field private checkInStreakBar:Lcom/narvii/checkin/CheckInStreakBar;

.field private checkInSuccessContainer:Landroid/view/ViewGroup;

.field private checkinButton:Lcom/narvii/widget/PushButton;

.field private checkinClose:Lcom/narvii/widget/TintButton;

.field private checkinProgress:Landroid/widget/ProgressBar;

.field private checkinText:Landroid/widget/TextView;

.field private communityIconView:Lcom/narvii/widget/CommunityIconView;

.field private communityName:Landroid/widget/TextView;

.field private communityService:Lcom/narvii/community/CommunityService;

.field private configService:Lcom/narvii/config/ConfigService;

.field private ctx:Lcom/narvii/app/NVContext;

.field private fakeHeightViewWrapper:Lcom/narvii/widget/FakeHeightViewWrapper;

.field public ipc:Lcom/narvii/logging/Impression/StandaloneRecyclerImpressionCollector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/logging/Impression/StandaloneRecyclerImpressionCollector<",
            "Lcom/narvii/model/ChatThread;",
            ">;"
        }
    .end annotation
.end field

.field private isCheckingIn:Z

.field private leaderBoard:Landroid/widget/TextView;

.field private liveMarqueeContainer:Landroid/view/ViewGroup;

.field private liveMarqueePlaceHolder:Landroid/view/ViewGroup;

.field private mainContent:Landroid/widget/LinearLayout;

.field private memberCount:Lcom/narvii/widget/AutoSizingTextView;

.field private memberLayout:Landroid/view/ViewGroup;

.field private memberText:Landroid/widget/TextView;

.field private nestedChildHelper:Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

.field private onHeaderInvalidatedListener:Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout$OnHeaderInvalidatedListener;

.field private pageContext:Lcom/narvii/app/NVContext;

.field private profileListener:Lcom/narvii/account/AccountService$ProfileListener;

.field random:Ljava/util/Random;

.field private response:Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;

.field private speedDialRecycleView:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->random:Ljava/util/Random;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->isCheckingIn:Z

    .line 4
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->adObstructions:Ljava/util/HashSet;

    .line 5
    new-instance p1, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout$1;

    const-class p2, Lcom/narvii/model/ChatThread;

    invoke-direct {p1, p0, p2}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout$1;-><init>(Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->ipc:Lcom/narvii/logging/Impression/StandaloneRecyclerImpressionCollector;

    .line 6
    new-instance p1, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout$2;

    invoke-direct {p1, p0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout$2;-><init>(Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;)V

    iput-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->profileListener:Lcom/narvii/account/AccountService$ProfileListener;

    return-void
.end method

.method public static synthetic a(Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->lambda$onFinish$0()V

    return-void
.end method

.method private addAdViewObstructions(Landroid/app/Activity;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    const v0, 0x7f0a0265

    .line 16
    .line 17
    .line 18
    const v1, 0x7f0a07b8

    .line 19
    .line 20
    .line 21
    filled-new-array {v0, v1}, [I

    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x0

    .line 24
    :goto_0
    const/4 v2, 0x2

    .line 25
    .line 26
    if-ge v1, v2, :cond_1

    .line 27
    .line 28
    aget v2, v0, v1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    iget-object v3, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->adView:Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, v2}, Lai/medialab/medialabads2/banners/MediaLabAdView;->addFriendlyObstruction(Landroid/view/View;)V

    .line 40
    .line 41
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    return-void
.end method

.method private addFakeUserInVVChat()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->response:Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;->userProfileListInThreadList:Ljava/util/HashMap;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    new-instance v0, Lcom/narvii/model/User;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0}, Lcom/narvii/model/User;-><init>()V

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    const-string v2, ""

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->random:Ljava/util/Random;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    .line 30
    move-result v2

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    iput-object v1, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 40
    .line 41
    const-string v1, "https://s1.altamino.top/image/ljmusu6brr5yulr5kcbby5j4nilelxvm_00.jpg"

    .line 42
    .line 43
    iput-object v1, v0, Lcom/narvii/model/User;->icon:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->response:Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;

    .line 46
    .line 47
    iget-object v1, v1, Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;->userProfileListInThreadList:Ljava/util/HashMap;

    .line 48
    .line 49
    const-string v2, "08e2158c-d8d8-491a-abca-240c1dd97f83"

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    move-result-object v1

    .line 54
    .line 55
    check-cast v1, Ljava/util/List;

    .line 56
    .line 57
    if-eqz v1, :cond_1

    .line 58
    .line 59
    .line 60
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    :cond_1
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->speedDialRecycleView:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    .line 63
    .line 64
    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->response:Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->updateSpeedDial(Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;)V

    .line 68
    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic b(Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->lambda$showCloseCheckInDialog$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->lambda$onFinish$1()V

    return-void
.end method

.method public static synthetic d(Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->lambda$showCloseCheckInDialog$3(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic e(Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;)Lcom/narvii/account/AccountService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->accountService:Lcom/narvii/account/AccountService;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;)Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkInModule:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static bridge synthetic g(Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->isCheckingIn:Z

    return p0
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->ctx:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    instance-of v1, v0, Landroid/app/Activity;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, Landroid/app/Activity;

    .line 9
    return-object v0

    .line 10
    .line 11
    :cond_0
    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    check-cast v0, Lcom/narvii/app/NVFragment;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 19
    move-result-object v0

    .line 20
    return-object v0

    .line 21
    :cond_1
    const/4 v0, 0x0

    .line 22
    return-object v0
.end method

.method static bridge synthetic h(Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->notifyHeaderInvalidated(Landroid/view/View;Z)V

    return-void
.end method

.method private hideCheckInModule()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->configService:Lcom/narvii/config/ConfigService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->isCommunityJoined()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->accountService:Lcom/narvii/account/AccountService;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->hasCheckInToday()Z

    .line 18
    move-result v1

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkInPrefsHelper:Lcom/narvii/checkin/CheckInPrefsHelper;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v0}, Lcom/narvii/checkin/CheckInPrefsHelper;->isHideCheckIn(I)Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 33
    :goto_1
    return v0
.end method

.method private isCommunityJoined()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->configService:Lcom/narvii/config/ConfigService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 6
    move-result v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v0}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method private synthetic lambda$onFinish$0()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkInModule:Landroid/view/ViewGroup;

    .line 3
    .line 4
    const/16 v1, 0x8

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkInModule:Landroid/view/ViewGroup;

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v0, v1}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->notifyHeaderInvalidated(Landroid/view/View;Z)V

    .line 14
    return-void
.end method

.method private synthetic lambda$onFinish$1()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkInContainer:Landroid/view/ViewGroup;

    .line 3
    .line 4
    const/16 v1, 0x8

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkInSuccessContainer:Landroid/view/ViewGroup;

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    new-instance v0, Lcom/narvii/amino/speeddial/b;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/narvii/amino/speeddial/b;-><init>(Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;)V

    .line 19
    .line 20
    const-wide/16 v1, 0x3e8

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 24
    return-void
.end method

.method private synthetic lambda$showCloseCheckInDialog$2(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkInModule:Landroid/view/ViewGroup;

    .line 3
    .line 4
    const/16 v0, 0x8

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkInModule:Landroid/view/ViewGroup;

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1, v0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->notifyHeaderInvalidated(Landroid/view/View;Z)V

    .line 14
    .line 15
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkInPrefsHelper:Lcom/narvii/checkin/CheckInPrefsHelper;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->configService:Lcom/narvii/config/ConfigService;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 21
    move-result v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Lcom/narvii/checkin/CheckInPrefsHelper;->hideToday(I)V

    .line 25
    .line 26
    const-string p1, "CheckInClose"

    .line 27
    .line 28
    .line 29
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Landroid/view/View;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    const-string v0, "closeType"

    .line 33
    .line 34
    const-string v1, "close"

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 42
    return-void
.end method

.method private synthetic lambda$showCloseCheckInDialog$3(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkInModule:Landroid/view/ViewGroup;

    .line 3
    .line 4
    const/16 v0, 0x8

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkInModule:Landroid/view/ViewGroup;

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1, v0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->notifyHeaderInvalidated(Landroid/view/View;Z)V

    .line 14
    .line 15
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkInPrefsHelper:Lcom/narvii/checkin/CheckInPrefsHelper;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->configService:Lcom/narvii/config/ConfigService;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 21
    move-result v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Lcom/narvii/checkin/CheckInPrefsHelper;->hideAlways(I)V

    .line 25
    .line 26
    const-string p1, "CheckInClose"

    .line 27
    .line 28
    .line 29
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Landroid/view/View;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    const-string v0, "closeType"

    .line 33
    .line 34
    const-string v1, "neverShowMeAgain"

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 42
    return-void
.end method

.method private notifyHeaderInvalidated(Landroid/view/View;Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->invalidateHeader(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->onHeaderInvalidatedListener:Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout$OnHeaderInvalidatedListener;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1, p2}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout$OnHeaderInvalidatedListener;->notifyHeaderInvalidated(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method private notifyHeaderInvalidated(Ljava/util/HashMap;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    if-eqz v1, :cond_0

    .line 7
    check-cast v0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->invalidateHeader(Ljava/util/HashMap;Z)V

    :cond_0
    return-void
.end method

.method public static safedk_Activity_startActivity_9d898b58165fa4ba0e12c3900a2b8533(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroid/app/Activity;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/app/NVContext;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showCloseCheckInDialog()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    const v1, 0x7f1202e4

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/narvii/widget/ACMAlertDialog;->setVerticalButtons()V

    .line 19
    .line 20
    new-instance v1, Lcom/narvii/amino/speeddial/c;

    .line 21
    .line 22
    .line 23
    invoke-direct {v1, p0}, Lcom/narvii/amino/speeddial/c;-><init>(Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;)V

    .line 24
    .line 25
    .line 26
    const v2, 0x7f1212a7

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v2, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 30
    .line 31
    new-instance v1, Lcom/narvii/amino/speeddial/d;

    .line 32
    .line 33
    .line 34
    invoke-direct {v1, p0}, Lcom/narvii/amino/speeddial/d;-><init>(Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;)V

    .line 35
    .line 36
    .line 37
    const v2, 0x7f120d41

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v2, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    const v1, 0x7f1201e2

    .line 44
    const/4 v2, 0x0

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 51
    return-void
.end method

.method private startCheckIn()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->isCheckingIn:Z

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkInService:Lcom/narvii/checkin/CheckInService;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lcom/narvii/checkin/CheckInService;->startCheckIn(Lcom/narvii/checkin/CheckInService$CheckInResponseListener;)V

    .line 9
    return-void
.end method


# virtual methods
.method public clearAdViewObstructions()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->adView:Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lai/medialab/medialabads2/banners/MediaLabAdView;->clearFriendlyObstructions()V

    .line 8
    :cond_0
    return-void
.end method

.method public clearSpeedDialImpression()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->ipc:Lcom/narvii/logging/Impression/StandaloneRecyclerImpressionCollector;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->pageContext:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/narvii/logging/Impression/ImpressionUtils;->clearImpression(Lcom/narvii/logging/Impression/ImpressionCollector;Lcom/narvii/app/NVContext;)V

    .line 8
    return-void
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->nestedChildHelper:Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->nestedChildHelper:Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->nestedChildHelper:Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->nestedChildHelper:Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

    .line 3
    move v1, p1

    .line 4
    move v2, p2

    .line 5
    move v3, p3

    .line 6
    move v4, p4

    .line 7
    move-object v5, p5

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->nestedChildHelper:Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->hasNestedScrollingParent()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->nestedChildHelper:Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public logSpeedDialImpression()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->speedDialRecycleView:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->ipc:Lcom/narvii/logging/Impression/StandaloneRecyclerImpressionCollector;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->pageContext:Lcom/narvii/app/NVContext;

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1, v2}, Lcom/narvii/logging/Impression/ImpressionUtils;->logStandaloneRecyclerImpression(Landroidx/recyclerview/widget/RecyclerView;Lcom/narvii/logging/Impression/ImpressionCollector;Lcom/narvii/app/NVContext;)V

    .line 10
    return-void
.end method

.method public onAffiliationChanged()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkInModule:Landroid/view/ViewGroup;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 6
    move-result v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkInModule:Landroid/view/ViewGroup;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->hideCheckInModule()Z

    .line 12
    move-result v2

    .line 13
    .line 14
    const/16 v3, 0x8

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    move v2, v3

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v2, 0x0

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    if-ne v0, v3, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkInModule:Landroid/view/ViewGroup;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 30
    move-result v0

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->updateThemeUI()V

    .line 36
    .line 37
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkInModule:Landroid/view/ViewGroup;

    .line 38
    const/4 v1, 0x1

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, v0, v1}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->notifyHeaderInvalidated(Landroid/view/View;Z)V

    .line 42
    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lcom/narvii/logging/LogUtils;->getPageContext(Landroid/view/View;)Lcom/narvii/app/NVContext;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    iput-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->pageContext:Lcom/narvii/app/NVContext;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->ctx:Lcom/narvii/app/NVContext;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->pageContext:Lcom/narvii/app/NVContext;

    .line 16
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a093e

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    check-cast v0, Lcom/narvii/widget/AutoSizingTextView;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->memberCount:Lcom/narvii/widget/AutoSizingTextView;

    .line 12
    .line 13
    .line 14
    const v0, 0x7f0a0945

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Landroid/widget/TextView;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->memberText:Landroid/widget/TextView;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 26
    move-result p1

    .line 27
    const/4 v0, 0x0

    .line 28
    const/4 v1, 0x1

    .line 29
    .line 30
    .line 31
    sparse-switch p1, :sswitch_data_0

    .line 32
    .line 33
    goto/16 :goto_1

    .line 34
    .line 35
    :sswitch_0
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->speedDialRecycleView:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->removeFakeSrList()V

    .line 39
    .line 40
    goto/16 :goto_1

    .line 41
    .line 42
    :sswitch_1
    sget-object p1, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    .line 43
    .line 44
    .line 45
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Landroid/view/View;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    const-string v0, "AllMembers"

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 56
    .line 57
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->ctx:Lcom/narvii/app/NVContext;

    .line 58
    .line 59
    const-class v0, Lcom/narvii/members/PeopleListFragment;

    .line 60
    .line 61
    .line 62
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    .line 66
    invoke-static {p1, v0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V

    .line 67
    .line 68
    goto/16 :goto_1

    .line 69
    .line 70
    :sswitch_2
    sget-object p1, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    .line 71
    .line 72
    .line 73
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Landroid/view/View;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 74
    move-result-object p1

    .line 75
    .line 76
    const-string v0, "Leaderboards"

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 80
    move-result-object p1

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 84
    .line 85
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->ctx:Lcom/narvii/app/NVContext;

    .line 86
    .line 87
    const-class v0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;

    .line 88
    .line 89
    .line 90
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 91
    move-result-object v0

    .line 92
    .line 93
    .line 94
    invoke-static {p1, v0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V

    .line 95
    .line 96
    goto/16 :goto_1

    .line 97
    .line 98
    :sswitch_3
    sget-object p1, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    .line 99
    .line 100
    .line 101
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Landroid/view/View;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 102
    move-result-object p1

    .line 103
    .line 104
    const-string v2, "CommunityBigIcon"

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v2}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 108
    move-result-object p1

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 112
    .line 113
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->communityService:Lcom/narvii/community/CommunityService;

    .line 114
    .line 115
    iget-object v2, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->configService:Lcom/narvii/config/ConfigService;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 119
    move-result v2

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, v2}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 123
    move-result-object p1

    .line 124
    .line 125
    new-instance v2, Lcom/narvii/master/CommunityHelper;

    .line 126
    .line 127
    iget-object v3, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->ctx:Lcom/narvii/app/NVContext;

    .line 128
    .line 129
    .line 130
    invoke-direct {v2, v3}, Lcom/narvii/master/CommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v2, p1}, Lcom/narvii/master/CommunityHelper;->communityDetailIntent(Lcom/narvii/model/Community;)Landroid/content/Intent;

    .line 134
    move-result-object v2

    .line 135
    .line 136
    if-eqz v2, :cond_2

    .line 137
    .line 138
    new-array v3, v1, [Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1}, Lcom/narvii/model/Community;->themeColor()I

    .line 142
    move-result v4

    .line 143
    .line 144
    .line 145
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 146
    move-result-object v4

    .line 147
    .line 148
    aput-object v4, v3, v0

    .line 149
    .line 150
    const-string v4, "#%06X"

    .line 151
    .line 152
    .line 153
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 154
    move-result-object v3

    .line 155
    .line 156
    const-string v4, "pageBackground"

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    .line 161
    const-string v3, "prefetch"

    .line 162
    .line 163
    .line 164
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 165
    move-result-object p1

    .line 166
    .line 167
    .line 168
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    .line 170
    .line 171
    invoke-direct {p0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->isCommunityJoined()Z

    .line 172
    move-result p1

    .line 173
    .line 174
    if-eqz p1, :cond_0

    .line 175
    .line 176
    const-string p1, "isCurrentUserJoined"

    .line 177
    .line 178
    .line 179
    invoke-virtual {v2, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 180
    .line 181
    const-string p1, "showJoin"

    .line 182
    .line 183
    .line 184
    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 185
    goto :goto_0

    .line 186
    .line 187
    :cond_0
    const-string p1, "joinOnly"

    .line 188
    .line 189
    .line 190
    invoke-virtual {v2, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 191
    .line 192
    .line 193
    :goto_0
    invoke-direct {p0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->getActivity()Landroid/app/Activity;

    .line 194
    move-result-object p1

    .line 195
    .line 196
    if-eqz p1, :cond_1

    .line 197
    .line 198
    const-string p1, "customFinishAnimIn"

    .line 199
    .line 200
    .line 201
    const v0, 0x7f010037

    .line 202
    .line 203
    .line 204
    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 205
    .line 206
    const-string p1, "customFinishAnimOut"

    .line 207
    .line 208
    .line 209
    const v1, 0x7f010038

    .line 210
    .line 211
    .line 212
    invoke-virtual {v2, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 213
    .line 214
    .line 215
    invoke-direct {p0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->getActivity()Landroid/app/Activity;

    .line 216
    move-result-object p1

    .line 217
    .line 218
    .line 219
    invoke-static {p1, v2}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->safedk_Activity_startActivity_9d898b58165fa4ba0e12c3900a2b8533(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 220
    .line 221
    .line 222
    invoke-direct {p0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->getActivity()Landroid/app/Activity;

    .line 223
    move-result-object p1

    .line 224
    .line 225
    .line 226
    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 227
    goto :goto_1

    .line 228
    .line 229
    :cond_1
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->ctx:Lcom/narvii/app/NVContext;

    .line 230
    .line 231
    .line 232
    invoke-static {p1, v2}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V

    .line 233
    goto :goto_1

    .line 234
    .line 235
    .line 236
    :sswitch_4
    invoke-direct {p0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->showCloseCheckInDialog()V

    .line 237
    goto :goto_1

    .line 238
    .line 239
    :sswitch_5
    sget-object p1, Lcom/narvii/logging/ActSemantic;->checkIn:Lcom/narvii/logging/ActSemantic;

    .line 240
    .line 241
    .line 242
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Landroid/view/View;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 243
    move-result-object p1

    .line 244
    .line 245
    const-string v2, "CheckInButton"

    .line 246
    .line 247
    .line 248
    invoke-virtual {p1, v2}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 249
    move-result-object p1

    .line 250
    .line 251
    .line 252
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 253
    .line 254
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkinText:Landroid/widget/TextView;

    .line 255
    .line 256
    const/16 v2, 0x8

    .line 257
    .line 258
    .line 259
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 260
    .line 261
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkinProgress:Landroid/widget/ProgressBar;

    .line 262
    .line 263
    .line 264
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 265
    .line 266
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkinButton:Lcom/narvii/widget/PushButton;

    .line 267
    .line 268
    .line 269
    invoke-virtual {p1, v1}, Lcom/narvii/widget/PushButton;->setForcePressed(Z)V

    .line 270
    .line 271
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkinButton:Lcom/narvii/widget/PushButton;

    .line 272
    .line 273
    .line 274
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 275
    .line 276
    .line 277
    invoke-direct {p0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->startCheckIn()V

    .line 278
    goto :goto_1

    .line 279
    .line 280
    .line 281
    :sswitch_6
    invoke-direct {p0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->addFakeUserInVVChat()V

    .line 282
    :cond_2
    :goto_1
    return-void

    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    :sswitch_data_0
    .sparse-switch
        0x7f0a00a2 -> :sswitch_6
        0x7f0a02e4 -> :sswitch_5
        0x7f0a02e5 -> :sswitch_4
        0x7f0a036b -> :sswitch_3
        0x7f0a037c -> :sswitch_3
        0x7f0a07d0 -> :sswitch_2
        0x7f0a093e -> :sswitch_1
        0x7f0a0945 -> :sswitch_1
        0x7f0a0c0d -> :sswitch_0
    .end sparse-switch
.end method

.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "I",
            "Ljava/util/List<",
            "Lcom/narvii/util/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/narvii/model/api/ApiResponse;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    const/4 p1, 0x0

    .line 2
    .line 3
    iput-boolean p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->isCheckingIn:Z

    .line 4
    .line 5
    iget-object p2, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkinProgress:Landroid/widget/ProgressBar;

    .line 6
    .line 7
    const/16 p3, 0x8

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    iget-object p2, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkinText:Landroid/widget/TextView;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    iget-object p2, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkinButton:Lcom/narvii/widget/PushButton;

    .line 18
    const/4 p3, 0x1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, p3}, Landroid/view/View;->setEnabled(Z)V

    .line 22
    .line 23
    iget-object p2, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkinButton:Lcom/narvii/widget/PushButton;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, p1}, Lcom/narvii/widget/PushButton;->setForcePressed(Z)V

    .line 27
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/checkin/CheckInResult;)V
    .locals 2

    .line 1
    const/4 p1, 0x0

    .line 2
    .line 3
    iput-boolean p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->isCheckingIn:Z

    .line 4
    .line 5
    new-instance p1, Lcom/narvii/amino/speeddial/a;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/narvii/amino/speeddial/a;-><init>(Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;)V

    .line 9
    .line 10
    const-wide/16 v0, 0x3e8

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 14
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->ctx:Lcom/narvii/app/NVContext;

    .line 14
    .line 15
    const-string v1, "config"

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->configService:Lcom/narvii/config/ConfigService;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->ctx:Lcom/narvii/app/NVContext;

    .line 26
    .line 27
    const-string v1, "community"

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    check-cast v0, Lcom/narvii/community/CommunityService;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->communityService:Lcom/narvii/community/CommunityService;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->ctx:Lcom/narvii/app/NVContext;

    .line 38
    .line 39
    const-string v1, "account"

    .line 40
    .line 41
    .line 42
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 46
    .line 47
    iput-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->accountService:Lcom/narvii/account/AccountService;

    .line 48
    .line 49
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->ctx:Lcom/narvii/app/NVContext;

    .line 50
    .line 51
    const-string v1, "checkIn"

    .line 52
    .line 53
    .line 54
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    check-cast v0, Lcom/narvii/checkin/CheckInService;

    .line 58
    .line 59
    iput-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkInService:Lcom/narvii/checkin/CheckInService;

    .line 60
    .line 61
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->ctx:Lcom/narvii/app/NVContext;

    .line 62
    .line 63
    const-string v1, "affiliations"

    .line 64
    .line 65
    .line 66
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    check-cast v0, Lcom/narvii/community/AffiliationsService;

    .line 70
    .line 71
    iput-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, p0}, Lcom/narvii/community/AffiliationsService;->addAffiliationChangeListener(Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;)V

    .line 75
    .line 76
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->accountService:Lcom/narvii/account/AccountService;

    .line 77
    .line 78
    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->profileListener:Lcom/narvii/account/AccountService$ProfileListener;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1}, Lcom/narvii/account/AccountService;->addProfileListener(Lcom/narvii/account/AccountService$ProfileListener;)V

    .line 82
    .line 83
    new-instance v0, Lcom/narvii/checkin/CheckInPrefsHelper;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 87
    move-result-object v1

    .line 88
    .line 89
    .line 90
    invoke-direct {v0, v1}, Lcom/narvii/checkin/CheckInPrefsHelper;-><init>(Landroid/content/Context;)V

    .line 91
    .line 92
    iput-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkInPrefsHelper:Lcom/narvii/checkin/CheckInPrefsHelper;

    .line 93
    .line 94
    new-instance v0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

    .line 95
    .line 96
    .line 97
    invoke-direct {v0, p0}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    .line 98
    .line 99
    iput-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->nestedChildHelper:Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

    .line 100
    const/4 v0, 0x1

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, v0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->setNestedScrollingEnabled(Z)V

    .line 104
    .line 105
    .line 106
    const v0, 0x7f0a064a

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 110
    move-result-object v0

    .line 111
    .line 112
    check-cast v0, Landroid/widget/LinearLayout;

    .line 113
    .line 114
    iput-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->mainContent:Landroid/widget/LinearLayout;

    .line 115
    .line 116
    .line 117
    const v0, 0x7f0a0d64

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 121
    move-result-object v0

    .line 122
    .line 123
    check-cast v0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    .line 124
    .line 125
    iput-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->speedDialRecycleView:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    .line 126
    .line 127
    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->ipc:Lcom/narvii/logging/Impression/StandaloneRecyclerImpressionCollector;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, v0}, Lcom/narvii/logging/Impression/ImpressionCollector;->setListView(Landroid/view/ViewGroup;)V

    .line 131
    .line 132
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->speedDialRecycleView:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    .line 133
    .line 134
    new-instance v1, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout$3;

    .line 135
    .line 136
    .line 137
    invoke-direct {v1, p0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout$3;-><init>(Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 141
    .line 142
    .line 143
    const v0, 0x7f0a0555

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 147
    move-result-object v0

    .line 148
    .line 149
    check-cast v0, Lcom/narvii/widget/FakeHeightViewWrapper;

    .line 150
    .line 151
    iput-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->fakeHeightViewWrapper:Lcom/narvii/widget/FakeHeightViewWrapper;

    .line 152
    .line 153
    .line 154
    const v0, 0x7f0a00a2

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 158
    move-result-object v0

    .line 159
    .line 160
    iput-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->btnAddScreenRoom:Landroid/view/View;

    .line 161
    .line 162
    .line 163
    const v0, 0x7f0a0c0d

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 167
    move-result-object v0

    .line 168
    .line 169
    iput-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->btnRemoveScreenRoom:Landroid/view/View;

    .line 170
    .line 171
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->btnAddScreenRoom:Landroid/view/View;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    .line 176
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->btnRemoveScreenRoom:Landroid/view/View;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    .line 181
    .line 182
    const v0, 0x7f0a036b

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 186
    move-result-object v0

    .line 187
    .line 188
    check-cast v0, Lcom/narvii/widget/CommunityIconView;

    .line 189
    .line 190
    iput-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->communityIconView:Lcom/narvii/widget/CommunityIconView;

    .line 191
    .line 192
    .line 193
    const v0, 0x7f0a037c

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 197
    move-result-object v0

    .line 198
    .line 199
    check-cast v0, Landroid/widget/TextView;

    .line 200
    .line 201
    iput-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->communityName:Landroid/widget/TextView;

    .line 202
    .line 203
    .line 204
    invoke-static {v0}, Lcom/narvii/util/ViewUtils;->setMontserratExtraBoldTypeface(Landroid/widget/TextView;)V

    .line 205
    .line 206
    .line 207
    const v0, 0x7f0a0942

    .line 208
    .line 209
    .line 210
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 211
    move-result-object v0

    .line 212
    .line 213
    check-cast v0, Landroid/view/ViewGroup;

    .line 214
    .line 215
    iput-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->memberLayout:Landroid/view/ViewGroup;

    .line 216
    .line 217
    .line 218
    const v0, 0x7f0a093e

    .line 219
    .line 220
    .line 221
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 222
    move-result-object v0

    .line 223
    .line 224
    check-cast v0, Lcom/narvii/widget/AutoSizingTextView;

    .line 225
    .line 226
    iput-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->memberCount:Lcom/narvii/widget/AutoSizingTextView;

    .line 227
    .line 228
    .line 229
    const v0, 0x7f0a0945

    .line 230
    .line 231
    .line 232
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 233
    move-result-object v0

    .line 234
    .line 235
    check-cast v0, Landroid/widget/TextView;

    .line 236
    .line 237
    iput-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->memberText:Landroid/widget/TextView;

    .line 238
    .line 239
    .line 240
    const v0, 0x7f0a07d0

    .line 241
    .line 242
    .line 243
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 244
    move-result-object v0

    .line 245
    .line 246
    check-cast v0, Landroid/widget/TextView;

    .line 247
    .line 248
    iput-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->leaderBoard:Landroid/widget/TextView;

    .line 249
    .line 250
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->communityIconView:Lcom/narvii/widget/CommunityIconView;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    .line 255
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->communityName:Landroid/widget/TextView;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    .line 260
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->memberCount:Lcom/narvii/widget/AutoSizingTextView;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    .line 265
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->memberText:Landroid/widget/TextView;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    .line 270
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->leaderBoard:Landroid/widget/TextView;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    .line 275
    .line 276
    const v0, 0x7f0a02d6

    .line 277
    .line 278
    .line 279
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 280
    move-result-object v0

    .line 281
    .line 282
    check-cast v0, Lcom/narvii/checkin/CheckInStreakBar;

    .line 283
    .line 284
    iput-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkInStreakBar:Lcom/narvii/checkin/CheckInStreakBar;

    .line 285
    .line 286
    .line 287
    const v0, 0x7f0a02e4

    .line 288
    .line 289
    .line 290
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 291
    move-result-object v0

    .line 292
    .line 293
    check-cast v0, Lcom/narvii/widget/PushButton;

    .line 294
    .line 295
    iput-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkinButton:Lcom/narvii/widget/PushButton;

    .line 296
    .line 297
    .line 298
    const v0, 0x7f0a02e9

    .line 299
    .line 300
    .line 301
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 302
    move-result-object v0

    .line 303
    .line 304
    check-cast v0, Landroid/widget/TextView;

    .line 305
    .line 306
    iput-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkinText:Landroid/widget/TextView;

    .line 307
    .line 308
    .line 309
    const v0, 0x7f0a02e7

    .line 310
    .line 311
    .line 312
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 313
    move-result-object v0

    .line 314
    .line 315
    check-cast v0, Landroid/widget/ProgressBar;

    .line 316
    .line 317
    iput-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkinProgress:Landroid/widget/ProgressBar;

    .line 318
    .line 319
    .line 320
    const v0, 0x7f0a02e5

    .line 321
    .line 322
    .line 323
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 324
    move-result-object v0

    .line 325
    .line 326
    check-cast v0, Lcom/narvii/widget/TintButton;

    .line 327
    .line 328
    iput-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkinClose:Lcom/narvii/widget/TintButton;

    .line 329
    .line 330
    .line 331
    const v0, 0x7f0a02e6

    .line 332
    .line 333
    .line 334
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 335
    move-result-object v0

    .line 336
    .line 337
    check-cast v0, Landroid/view/ViewGroup;

    .line 338
    .line 339
    iput-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkInModule:Landroid/view/ViewGroup;

    .line 340
    .line 341
    .line 342
    const v0, 0x7f0a0812

    .line 343
    .line 344
    .line 345
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 346
    move-result-object v0

    .line 347
    .line 348
    check-cast v0, Landroid/view/ViewGroup;

    .line 349
    .line 350
    iput-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->liveMarqueePlaceHolder:Landroid/view/ViewGroup;

    .line 351
    .line 352
    .line 353
    const v0, 0x7f0a0810

    .line 354
    .line 355
    .line 356
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 357
    move-result-object v0

    .line 358
    .line 359
    check-cast v0, Landroid/view/ViewGroup;

    .line 360
    .line 361
    iput-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->liveMarqueeContainer:Landroid/view/ViewGroup;

    .line 362
    .line 363
    .line 364
    const v0, 0x7f0a02d8

    .line 365
    .line 366
    .line 367
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 368
    move-result-object v0

    .line 369
    .line 370
    check-cast v0, Landroid/view/ViewGroup;

    .line 371
    .line 372
    iput-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkInContainer:Landroid/view/ViewGroup;

    .line 373
    .line 374
    .line 375
    const v0, 0x7f0a02da

    .line 376
    .line 377
    .line 378
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 379
    move-result-object v0

    .line 380
    .line 381
    check-cast v0, Landroid/view/ViewGroup;

    .line 382
    .line 383
    iput-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkInSuccessContainer:Landroid/view/ViewGroup;

    .line 384
    .line 385
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkinButton:Lcom/narvii/widget/PushButton;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 389
    .line 390
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkinClose:Lcom/narvii/widget/TintButton;

    .line 391
    .line 392
    .line 393
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    .line 395
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkInModule:Landroid/view/ViewGroup;

    .line 396
    .line 397
    .line 398
    invoke-direct {p0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->hideCheckInModule()Z

    .line 399
    move-result v1

    .line 400
    .line 401
    if-eqz v1, :cond_0

    .line 402
    .line 403
    const/16 v1, 0x8

    .line 404
    goto :goto_0

    .line 405
    :cond_0
    const/4 v1, 0x0

    .line 406
    .line 407
    .line 408
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {p0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->updateThemeUI()V

    .line 412
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->nestedChildHelper:Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public reConfigNormalItemViews()V
    .locals 0

    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->nestedChildHelper:Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    .line 6
    return-void
.end method

.method public setOnHeaderInvalidatedListener(Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout$OnHeaderInvalidatedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->onHeaderInvalidatedListener:Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout$OnHeaderInvalidatedListener;

    return-void
.end method

.method public setSpeedDialItemClicked(Lcom/narvii/amino/speeddial/SpeedDialLayout$SpeedDialItemClickListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->speedDialRecycleView:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->setSpeedDialItemClickListener(Lcom/narvii/amino/speeddial/SpeedDialLayout$SpeedDialItemClickListener;)V

    .line 6
    return-void
.end method

.method public setupAdView()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->getActivity()Landroid/app/Activity;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    const v1, 0x7f0a0094

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    check-cast v1, Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 16
    .line 17
    iput-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->adView:Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 18
    .line 19
    const-string v2, "feed_2"

    .line 20
    .line 21
    sget-object v3, Lai/medialab/medialabads2/data/AdSize;->MEDIUM_RECTANGLE:Lai/medialab/medialabads2/data/AdSize;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2, v3}, Lai/medialab/medialabads2/banners/MediaLabAdView;->initialize(Ljava/lang/String;Lai/medialab/medialabads2/data/AdSize;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, v0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->addAdViewObstructions(Landroid/app/Activity;)V

    .line 28
    .line 29
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->adView:Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lai/medialab/medialabads2/banners/MediaLabAdView;->showPreloadedAd()Z

    .line 33
    move-result v0

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->adView:Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 38
    const/4 v1, 0x0

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 42
    :cond_0
    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->nestedChildHelper:Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->startNestedScroll(I)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public stopNestedScroll()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->nestedChildHelper:Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->stopNestedScroll()V

    .line 6
    return-void
.end method

.method public updateAccountInfo()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->updateCheckinStreak()V

    .line 4
    return-void
.end method

.method public updateCheckinStreak()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/checkin/CheckInHelper;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->ctx:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/narvii/checkin/CheckInHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->accountService:Lcom/narvii/account/AccountService;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getCheckInHistory()Lcom/narvii/model/CheckInHistory;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/narvii/checkin/CheckInHelper;->getStreakLostList(Lcom/narvii/model/CheckInHistory;)Ljava/util/List;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 23
    move-result v1

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 28
    .line 29
    .line 30
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    const/4 v1, 0x4

    .line 32
    .line 33
    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    .line 38
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    :cond_1
    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkInStreakBar:Lcom/narvii/checkin/CheckInStreakBar;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v0}, Lcom/narvii/checkin/CheckInStreakBar;->updateCells(Ljava/util/List;)V

    .line 44
    return-void
.end method

.method public updateCommunityInfo()V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->communityService:Lcom/narvii/community/CommunityService;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->configService:Lcom/narvii/config/ConfigService;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    new-instance v1, Lcom/narvii/modulization/CommunityConfigHelper;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->ctx:Lcom/narvii/app/NVContext;

    .line 17
    .line 18
    iget-object v3, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->configService:Lcom/narvii/config/ConfigService;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 22
    move-result v3

    .line 23
    .line 24
    .line 25
    invoke-direct {v1, v2, v3}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 26
    .line 27
    const/16 v2, 0x8

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    iget-object v3, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->communityIconView:Lcom/narvii/widget/CommunityIconView;

    .line 32
    .line 33
    iget-object v4, v0, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, v4}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 37
    .line 38
    iget-object v3, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->communityName:Landroid/widget/TextView;

    .line 39
    .line 40
    iget-object v4, v0, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    iget-object v3, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->memberText:Landroid/widget/TextView;

    .line 46
    .line 47
    iget v4, v0, Lcom/narvii/model/Community;->membersCount:I

    .line 48
    const/4 v5, 0x1

    .line 49
    .line 50
    if-ne v4, v5, :cond_0

    .line 51
    .line 52
    .line 53
    const v4, 0x7f120c54

    .line 54
    goto :goto_0

    .line 55
    .line 56
    .line 57
    :cond_0
    const v4, 0x7f120c57

    .line 58
    .line 59
    .line 60
    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 61
    .line 62
    iget-object v3, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->memberCount:Lcom/narvii/widget/AutoSizingTextView;

    .line 63
    .line 64
    sget-object v4, Lcom/narvii/util/text/TextUtils;->numberFormat:Ljava/text/NumberFormat;

    .line 65
    .line 66
    iget v0, v0, Lcom/narvii/model/Community;->membersCount:I

    .line 67
    int-to-long v5, v0

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4, v5, v6}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    .line 71
    move-result-object v0

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    .line 76
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->memberCount:Lcom/narvii/widget/AutoSizingTextView;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/narvii/widget/AutoSizingTextView;->resizingFromMaxSize()V

    .line 80
    .line 81
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->leaderBoard:Landroid/widget/TextView;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Lcom/narvii/modulization/CommunityConfigHelper;->isLeaderBoardEnable()Z

    .line 85
    move-result v3

    .line 86
    .line 87
    if-eqz v3, :cond_1

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Lcom/narvii/modulization/CommunityConfigHelper;->isRankingModuleEnabled()Z

    .line 91
    move-result v1

    .line 92
    .line 93
    if-eqz v1, :cond_1

    .line 94
    const/4 v2, 0x0

    .line 95
    .line 96
    .line 97
    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 98
    goto :goto_1

    .line 99
    .line 100
    :cond_2
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->communityIconView:Lcom/narvii/widget/CommunityIconView;

    .line 101
    const/4 v1, 0x0

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 105
    .line 106
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->communityName:Landroid/widget/TextView;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    .line 111
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->memberCount:Lcom/narvii/widget/AutoSizingTextView;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    .line 116
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->memberText:Landroid/widget/TextView;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    .line 121
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->leaderBoard:Landroid/widget/TextView;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 125
    :goto_1
    return-void
.end method

.method public updateFeaturedChatThreadList(Lcom/narvii/model/ChatThread;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->featureType()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x5

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->speedDialRecycleView:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 13
    move-result v0

    .line 14
    .line 15
    const/16 v1, 0x8

    .line 16
    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->speedDialRecycleView:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    .line 20
    const/4 v1, 0x1

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, v0, v1}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->notifyHeaderInvalidated(Landroid/view/View;Z)V

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->speedDialRecycleView:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->updateFeaturedChatList(Lcom/narvii/model/ChatThread;)V

    .line 29
    .line 30
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->speedDialRecycleView:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->getItemViewCount()I

    .line 34
    move-result p1

    .line 35
    .line 36
    if-nez p1, :cond_1

    .line 37
    .line 38
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->speedDialRecycleView:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 42
    move-result p1

    .line 43
    .line 44
    if-nez p1, :cond_1

    .line 45
    .line 46
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->speedDialRecycleView:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    .line 47
    const/4 v0, 0x0

    .line 48
    .line 49
    .line 50
    invoke-direct {p0, p1, v0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->notifyHeaderInvalidated(Landroid/view/View;Z)V

    .line 51
    :cond_1
    return-void
.end method

.method public updateHeaderOffset(F)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->mainContent:Landroid/widget/LinearLayout;

    .line 3
    .line 4
    const/high16 v1, 0x3f800000    # 1.0f

    .line 5
    sub-float/2addr v1, p1

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 9
    return-void
.end method

.method public updateSpeedDial(Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;)V
    .locals 3

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->response:Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;

    .line 3
    .line 4
    if-eqz p1, :cond_2

    .line 5
    .line 6
    iget-object v0, p1, Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;->threadList:Ljava/util/List;

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->speedDialRecycleView:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 21
    move-result v0

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->speedDialRecycleView:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    .line 26
    const/4 v1, 0x1

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, v0, v1}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->notifyHeaderInvalidated(Landroid/view/View;Z)V

    .line 30
    .line 31
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->fakeHeightViewWrapper:Lcom/narvii/widget/FakeHeightViewWrapper;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    .line 38
    const v2, 0x7f0704b9

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 42
    move-result v1

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/narvii/widget/FakeHeightViewWrapper;->updateFakeHeight(I)V

    .line 46
    .line 47
    :cond_1
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->speedDialRecycleView:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p1}, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->updateSpeedDial(Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;)V

    .line 51
    goto :goto_1

    .line 52
    .line 53
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->speedDialRecycleView:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 57
    move-result p1

    .line 58
    .line 59
    const/16 v0, 0x8

    .line 60
    .line 61
    if-eq p1, v0, :cond_3

    .line 62
    .line 63
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->speedDialRecycleView:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    .line 64
    const/4 v0, 0x0

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0}, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->updateSpeedDial(Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;)V

    .line 68
    .line 69
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->speedDialRecycleView:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    .line 70
    const/4 v0, 0x0

    .line 71
    .line 72
    .line 73
    invoke-direct {p0, p1, v0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->notifyHeaderInvalidated(Landroid/view/View;Z)V

    .line 74
    .line 75
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->fakeHeightViewWrapper:Lcom/narvii/widget/FakeHeightViewWrapper;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 79
    move-result-object v0

    .line 80
    .line 81
    .line 82
    const v1, 0x7f0704b8

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 86
    move-result v0

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v0}, Lcom/narvii/widget/FakeHeightViewWrapper;->updateFakeHeight(I)V

    .line 90
    .line 91
    :cond_3
    :goto_1
    new-instance p1, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout$4;

    .line 92
    .line 93
    .line 94
    invoke-direct {p1, p0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout$4;-><init>(Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;)V

    .line 95
    .line 96
    .line 97
    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 98
    return-void
.end method

.method public updateThemeUI()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->ctx:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-string v1, "config"

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    .line 20
    move-result v0

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    .line 24
    move-result v1

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    .line 28
    move-result v2

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    .line 32
    move-result v3

    .line 33
    .line 34
    const/16 v4, 0x5a

    .line 35
    .line 36
    .line 37
    invoke-static {v4, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    .line 38
    move-result v1

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    .line 42
    move-result v2

    .line 43
    .line 44
    .line 45
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    .line 46
    move-result v3

    .line 47
    .line 48
    .line 49
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    .line 50
    move-result v4

    .line 51
    const/4 v5, 0x0

    .line 52
    .line 53
    .line 54
    invoke-static {v5, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    .line 55
    move-result v2

    .line 56
    .line 57
    .line 58
    filled-new-array {v0, v1, v2}, [I

    .line 59
    move-result-object v0

    .line 60
    .line 61
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    .line 62
    .line 63
    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 64
    .line 65
    .line 66
    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 67
    .line 68
    .line 69
    const v0, 0x7f0a064b

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->updateCheckinStreak()V

    .line 80
    :cond_0
    return-void
.end method
