.class public Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;
.super Landroid/widget/LinearLayout;
.source "SpeedDialHeaderLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/support/v4/view/NestedScrollingChild;
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

    const/4 v0, 0x0

    .line 154
    invoke-direct {p0, p1, v0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 158
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 101
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->random:Ljava/util/Random;

    const/4 p1, 0x0

    .line 114
    iput-boolean p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->isCheckingIn:Z

    .line 117
    new-instance p1, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout$1;

    const-class p2, Lcom/narvii/model/ChatThread;

    invoke-direct {p1, p0, p2}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout$1;-><init>(Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->ipc:Lcom/narvii/logging/Impression/StandaloneRecyclerImpressionCollector;

    .line 125
    new-instance p1, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout$2;

    invoke-direct {p1, p0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout$2;-><init>(Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;)V

    iput-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->profileListener:Lcom/narvii/account/AccountService$ProfileListener;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;)Landroid/view/ViewGroup;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkInModule:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;)Lcom/narvii/account/AccountService;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->accountService:Lcom/narvii/account/AccountService;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;)Z
    .locals 0

    .line 77
    iget-boolean p0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->isCheckingIn:Z

    return p0
.end method

.method static synthetic access$300(Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;Landroid/view/View;Z)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->notifyHeaderInvalidated(Landroid/view/View;Z)V

    return-void
.end method

.method private addFakeUserInVVChat()V
    .locals 3

    .line 445
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->response:Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;->userProfileListInThreadList:Ljava/util/HashMap;

    if-nez v0, :cond_0

    goto :goto_0

    .line 449
    :cond_0
    new-instance v0, Lcom/narvii/model/User;

    invoke-direct {v0}, Lcom/narvii/model/User;-><init>()V

    .line 450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->random:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    const-string v1, "https://s1.narvii.com/image/ljmusu6brr5yulr5kcbby5j4nilelxvm_00.jpg"

    .line 451
    iput-object v1, v0, Lcom/narvii/model/User;->icon:Ljava/lang/String;

    .line 452
    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->response:Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;

    iget-object v1, v1, Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;->userProfileListInThreadList:Ljava/util/HashMap;

    const-string v2, "08e2158c-d8d8-491a-abca-240c1dd97f83"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 454
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    :cond_1
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->speedDialRecycleView:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->response:Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;

    invoke-virtual {v0, v1}, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->updateSpeedDial(Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 2

    .line 330
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->ctx:Lcom/narvii/app/NVContext;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 331
    check-cast v0, Landroid/app/Activity;

    return-object v0

    .line 333
    :cond_0
    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    if-eqz v1, :cond_1

    .line 334
    check-cast v0, Lcom/narvii/app/NVFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private hideCheckInModule()Z
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->configService:Lcom/narvii/config/ConfigService;

    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    .line 241
    invoke-direct {p0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->isCommunityJoined()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->hasCheckInToday()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkInPrefsHelper:Lcom/narvii/checkin/CheckInPrefsHelper;

    invoke-virtual {v1, v0}, Lcom/narvii/checkin/CheckInPrefsHelper;->isHideCheckIn(I)Z

    move-result v0

    if-eqz v0, :cond_0

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

.method private isCommunityJoined()Z
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->configService:Lcom/narvii/config/ConfigService;

    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    .line 246
    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    invoke-virtual {v1, v0}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    move-result v0

    return v0
.end method

.method private notifyHeaderInvalidated(Landroid/view/View;Z)V
    .locals 2

    .line 424
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 425
    instance-of v1, v0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    if-eqz v1, :cond_0

    .line 426
    check-cast v0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->invalidateHeader(Landroid/view/View;Z)V

    .line 427
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->onHeaderInvalidatedListener:Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout$OnHeaderInvalidatedListener;

    if-eqz v0, :cond_0

    .line 428
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

    .line 438
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 439
    instance-of v1, v0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    if-eqz v1, :cond_0

    .line 440
    check-cast v0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->invalidateHeader(Ljava/util/HashMap;Z)V

    :cond_0
    return-void
.end method

.method private showCloseCheckInDialog()V
    .locals 3

    .line 542
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0299

    .line 543
    invoke-virtual {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 544
    invoke-virtual {v0}, Lcom/narvii/widget/ACMAlertDialog;->setVerticalButtons()V

    .line 545
    new-instance v1, Lcom/narvii/amino/speeddial/-$$Lambda$SpeedDialHeaderLayout$AuRbZt9-ye4fQAslb3FciyRtS9U;

    invoke-direct {v1, p0}, Lcom/narvii/amino/speeddial/-$$Lambda$SpeedDialHeaderLayout$AuRbZt9-ye4fQAslb3FciyRtS9U;-><init>(Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;)V

    const v2, 0x7f0f119f

    invoke-virtual {v0, v2, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 551
    new-instance v1, Lcom/narvii/amino/speeddial/-$$Lambda$SpeedDialHeaderLayout$VUTc50ljgWLgISoj9iYMDbIF4Nw;

    invoke-direct {v1, p0}, Lcom/narvii/amino/speeddial/-$$Lambda$SpeedDialHeaderLayout$VUTc50ljgWLgISoj9iYMDbIF4Nw;-><init>(Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;)V

    const v2, 0x7f0f0c10

    invoke-virtual {v0, v2, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v1, 0x7f0f0193

    const/4 v2, 0x0

    .line 556
    invoke-virtual {v0, v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 557
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method

.method private startCheckIn()V
    .locals 1

    const/4 v0, 0x1

    .line 325
    iput-boolean v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->isCheckingIn:Z

    .line 326
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkInService:Lcom/narvii/checkin/CheckInService;

    invoke-virtual {v0, p0}, Lcom/narvii/checkin/CheckInService;->startCheckIn(Lcom/narvii/checkin/CheckInService$CheckInResponseListener;)V

    return-void
.end method


# virtual methods
.method public clearSpeedDialImpression()V
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->ipc:Lcom/narvii/logging/Impression/StandaloneRecyclerImpressionCollector;

    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->pageContext:Lcom/narvii/app/NVContext;

    invoke-static {v0, v1}, Lcom/narvii/logging/Impression/ImpressionUtils;->clearImpression(Lcom/narvii/logging/Impression/ImpressionCollector;Lcom/narvii/app/NVContext;)V

    return-void
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->nestedChildHelper:Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1

    .line 504
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->nestedChildHelper:Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->nestedChildHelper:Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6

    .line 489
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->nestedChildHelper:Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result p1

    return p1
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    .line 483
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->nestedChildHelper:Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

    invoke-virtual {v0}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v0

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->nestedChildHelper:Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

    invoke-virtual {v0}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$null$0$SpeedDialHeaderLayout()V
    .locals 2

    .line 526
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkInModule:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 527
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkInModule:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->notifyHeaderInvalidated(Landroid/view/View;Z)V

    return-void
.end method

.method public synthetic lambda$onFinish$1$SpeedDialHeaderLayout()V
    .locals 3

    .line 523
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkInContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 524
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkInSuccessContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 525
    new-instance v0, Lcom/narvii/amino/speeddial/-$$Lambda$SpeedDialHeaderLayout$UJGO8GJwYJJPA22Vjg2edVg_FEY;

    invoke-direct {v0, p0}, Lcom/narvii/amino/speeddial/-$$Lambda$SpeedDialHeaderLayout$UJGO8GJwYJJPA22Vjg2edVg_FEY;-><init>(Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;)V

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public synthetic lambda$showCloseCheckInDialog$2$SpeedDialHeaderLayout(Landroid/view/View;)V
    .locals 2

    .line 546
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkInModule:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 547
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkInModule:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->notifyHeaderInvalidated(Landroid/view/View;Z)V

    .line 548
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkInPrefsHelper:Lcom/narvii/checkin/CheckInPrefsHelper;

    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->configService:Lcom/narvii/config/ConfigService;

    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/narvii/checkin/CheckInPrefsHelper;->hideToday(I)V

    const-string p1, "CheckInClose"

    .line 549
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Landroid/view/View;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "closeType"

    const-string v1, "close"

    invoke-virtual {p1, v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    return-void
.end method

.method public synthetic lambda$showCloseCheckInDialog$3$SpeedDialHeaderLayout(Landroid/view/View;)V
    .locals 2

    .line 552
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkInModule:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 553
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkInModule:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->notifyHeaderInvalidated(Landroid/view/View;Z)V

    .line 554
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkInPrefsHelper:Lcom/narvii/checkin/CheckInPrefsHelper;

    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->configService:Lcom/narvii/config/ConfigService;

    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/narvii/checkin/CheckInPrefsHelper;->hideAlways(I)V

    const-string p1, "CheckInClose"

    .line 555
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Landroid/view/View;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "closeType"

    const-string v1, "neverShowMeAgain"

    invoke-virtual {p1, v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    return-void
.end method

.method public logSpeedDialImpression()V
    .locals 3

    .line 250
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->speedDialRecycleView:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->ipc:Lcom/narvii/logging/Impression/StandaloneRecyclerImpressionCollector;

    iget-object v2, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->pageContext:Lcom/narvii/app/NVContext;

    invoke-static {v0, v1, v2}, Lcom/narvii/logging/Impression/ImpressionUtils;->logStandaloneRecyclerImpression(Landroid/support/v7/widget/RecyclerView;Lcom/narvii/logging/Impression/ImpressionCollector;Lcom/narvii/app/NVContext;)V

    return-void
.end method

.method public onAffiliationChanged()V
    .locals 4

    .line 562
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkInModule:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    .line 563
    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkInModule:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->hideCheckInModule()Z

    move-result v2

    const/16 v3, 0x8

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-ne v0, v3, :cond_1

    .line 564
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkInModule:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 565
    invoke-virtual {p0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->updateThemeUI()V

    .line 566
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkInModule:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->notifyHeaderInvalidated(Landroid/view/View;Z)V

    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 167
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 168
    invoke-static {p0}, Lcom/narvii/logging/LogUtils;->getPageContext(Landroid/view/View;)Lcom/narvii/app/NVContext;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->pageContext:Lcom/narvii/app/NVContext;

    .line 169
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->pageContext:Lcom/narvii/app/NVContext;

    if-nez v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->ctx:Lcom/narvii/app/NVContext;

    iput-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->pageContext:Lcom/narvii/app/NVContext;

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    const v0, 0x7f0906dd

    .line 265
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/AutoSizingTextView;

    iput-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->memberCount:Lcom/narvii/widget/AutoSizingTextView;

    const v0, 0x7f0906e4

    .line 266
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->memberText:Landroid/widget/TextView;

    .line 267
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 307
    :sswitch_0
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->speedDialRecycleView:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    invoke-virtual {p1}, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->removeFakeSrList()V

    goto/16 :goto_1

    .line 296
    :sswitch_1
    sget-object p1, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Landroid/view/View;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "AllMembers"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 297
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->ctx:Lcom/narvii/app/NVContext;

    const-class v0, Lcom/narvii/members/PeopleListFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 300
    :sswitch_2
    sget-object p1, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Landroid/view/View;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "Leaderboards"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 301
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->ctx:Lcom/narvii/app/NVContext;

    const-class v0, Lcom/narvii/leaderboard/LeaderBoardTabFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 270
    :sswitch_3
    sget-object p1, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Landroid/view/View;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v2, "CommunityBigIcon"

    invoke-virtual {p1, v2}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 271
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->communityService:Lcom/narvii/community/CommunityService;

    iget-object v2, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->configService:Lcom/narvii/config/ConfigService;

    invoke-virtual {v2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object p1

    .line 272
    new-instance v2, Lcom/narvii/master/CommunityHelper;

    iget-object v3, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->ctx:Lcom/narvii/app/NVContext;

    invoke-direct {v2, v3}, Lcom/narvii/master/CommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 273
    invoke-virtual {v2, p1}, Lcom/narvii/master/CommunityHelper;->communityDetailIntent(Lcom/narvii/model/Community;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_2

    new-array v3, v0, [Ljava/lang/Object;

    .line 275
    invoke-virtual {p1}, Lcom/narvii/model/Community;->themeColor()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "#%06X"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pageBackground"

    .line 276
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "prefetch"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    invoke-direct {p0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->isCommunityJoined()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "isCurrentUserJoined"

    .line 279
    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "showJoin"

    .line 280
    invoke-virtual {v2, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string p1, "joinOnly"

    .line 282
    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 284
    :goto_0
    invoke-direct {p0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_1

    const p1, 0x7f010029

    const-string v0, "customFinishAnimIn"

    .line 285
    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const v0, 0x7f01002a

    const-string v1, "customFinishAnimOut"

    .line 286
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 287
    invoke-direct {p0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 288
    invoke-direct {p0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_1

    .line 290
    :cond_1
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {p1, v2}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 310
    :sswitch_4
    invoke-direct {p0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->showCloseCheckInDialog()V

    goto :goto_1

    .line 313
    :sswitch_5
    sget-object p1, Lcom/narvii/logging/ActSemantic;->checkIn:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Landroid/view/View;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v2, "CheckInButton"

    invoke-virtual {p1, v2}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 314
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkinText:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 315
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkinProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 316
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkinButton:Lcom/narvii/widget/PushButton;

    invoke-virtual {p1, v0}, Lcom/narvii/widget/PushButton;->setForcePressed(Z)V

    .line 317
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkinButton:Lcom/narvii/widget/PushButton;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 318
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkInService:Lcom/narvii/checkin/CheckInService;

    invoke-virtual {p1}, Lcom/narvii/checkin/CheckInService;->cacheRewardVideo()V

    .line 319
    invoke-direct {p0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->startCheckIn()V

    goto :goto_1

    .line 304
    :sswitch_6
    invoke-direct {p0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->addFakeUserInVVChat()V

    :cond_2
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090069 -> :sswitch_6
        0x7f09022a -> :sswitch_5
        0x7f09022b -> :sswitch_4
        0x7f0902a3 -> :sswitch_3
        0x7f0902b6 -> :sswitch_3
        0x7f09064d -> :sswitch_2
        0x7f0906dd -> :sswitch_1
        0x7f0906e4 -> :sswitch_1
        0x7f090951 -> :sswitch_0
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

    const/4 p1, 0x0

    .line 534
    iput-boolean p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->isCheckingIn:Z

    .line 535
    iget-object p2, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkinProgress:Landroid/widget/ProgressBar;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 536
    iget-object p2, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkinText:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 537
    iget-object p2, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkinButton:Lcom/narvii/widget/PushButton;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 538
    iget-object p2, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkinButton:Lcom/narvii/widget/PushButton;

    invoke-virtual {p2, p1}, Lcom/narvii/widget/PushButton;->setForcePressed(Z)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/checkin/CheckInResult;)V
    .locals 2

    const/4 p1, 0x0

    .line 521
    iput-boolean p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->isCheckingIn:Z

    .line 522
    new-instance p1, Lcom/narvii/amino/speeddial/-$$Lambda$SpeedDialHeaderLayout$_A_h7FdELhOQQdwVwu-ki-RjCkQ;

    invoke-direct {p1, p0}, Lcom/narvii/amino/speeddial/-$$Lambda$SpeedDialHeaderLayout$_A_h7FdELhOQQdwVwu-ki-RjCkQ;-><init>(Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;)V

    const-wide/16 v0, 0x3e8

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 176
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 177
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->ctx:Lcom/narvii/app/NVContext;

    .line 178
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->ctx:Lcom/narvii/app/NVContext;

    const-string v1, "config"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    iput-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->configService:Lcom/narvii/config/ConfigService;

    .line 179
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->ctx:Lcom/narvii/app/NVContext;

    const-string v1, "community"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/community/CommunityService;

    iput-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->communityService:Lcom/narvii/community/CommunityService;

    .line 180
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->ctx:Lcom/narvii/app/NVContext;

    const-string v1, "account"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    iput-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->accountService:Lcom/narvii/account/AccountService;

    .line 181
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->ctx:Lcom/narvii/app/NVContext;

    const-string v1, "checkIn"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/checkin/CheckInService;

    iput-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkInService:Lcom/narvii/checkin/CheckInService;

    .line 182
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->ctx:Lcom/narvii/app/NVContext;

    const-string v1, "affiliations"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/community/AffiliationsService;

    iput-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    .line 184
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    invoke-virtual {v0, p0}, Lcom/narvii/community/AffiliationsService;->addAffiliationChangeListener(Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;)V

    .line 185
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->accountService:Lcom/narvii/account/AccountService;

    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->profileListener:Lcom/narvii/account/AccountService$ProfileListener;

    invoke-virtual {v0, v1}, Lcom/narvii/account/AccountService;->addProfileListener(Lcom/narvii/account/AccountService$ProfileListener;)V

    .line 187
    new-instance v0, Lcom/narvii/checkin/CheckInPrefsHelper;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/checkin/CheckInPrefsHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkInPrefsHelper:Lcom/narvii/checkin/CheckInPrefsHelper;

    .line 188
    new-instance v0, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

    invoke-direct {v0, p0}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->nestedChildHelper:Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

    const/4 v0, 0x1

    .line 189
    invoke-virtual {p0, v0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->setNestedScrollingEnabled(Z)V

    const v0, 0x7f0904f6

    .line 191
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->mainContent:Landroid/widget/LinearLayout;

    const v0, 0x7f090a76

    .line 192
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    iput-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->speedDialRecycleView:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    .line 194
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->ipc:Lcom/narvii/logging/Impression/StandaloneRecyclerImpressionCollector;

    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->speedDialRecycleView:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    invoke-virtual {v0, v1}, Lcom/narvii/logging/Impression/ImpressionCollector;->setListView(Landroid/view/ViewGroup;)V

    .line 195
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->speedDialRecycleView:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    new-instance v1, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout$3;

    invoke-direct {v1, p0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout$3;-><init>(Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    const v0, 0x7f09041b

    .line 202
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/FakeHeightViewWrapper;

    iput-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->fakeHeightViewWrapper:Lcom/narvii/widget/FakeHeightViewWrapper;

    const v0, 0x7f090069

    .line 204
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->btnAddScreenRoom:Landroid/view/View;

    const v0, 0x7f090951

    .line 205
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->btnRemoveScreenRoom:Landroid/view/View;

    .line 206
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->btnAddScreenRoom:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->btnRemoveScreenRoom:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0902a3

    .line 209
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/CommunityIconView;

    iput-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->communityIconView:Lcom/narvii/widget/CommunityIconView;

    const v0, 0x7f0902b6

    .line 210
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->communityName:Landroid/widget/TextView;

    .line 211
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->communityName:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/narvii/util/ViewUtils;->setMontserratExtraBoldTypeface(Landroid/widget/TextView;)V

    const v0, 0x7f0906e1

    .line 213
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->memberLayout:Landroid/view/ViewGroup;

    const v0, 0x7f0906dd

    .line 214
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/AutoSizingTextView;

    iput-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->memberCount:Lcom/narvii/widget/AutoSizingTextView;

    const v0, 0x7f0906e4

    .line 215
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->memberText:Landroid/widget/TextView;

    const v0, 0x7f09064d

    .line 216
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->leaderBoard:Landroid/widget/TextView;

    .line 218
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->communityIconView:Lcom/narvii/widget/CommunityIconView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->communityName:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->memberCount:Lcom/narvii/widget/AutoSizingTextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->memberText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->leaderBoard:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09021e

    .line 224
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/checkin/CheckInStreakBar;

    iput-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkInStreakBar:Lcom/narvii/checkin/CheckInStreakBar;

    const v0, 0x7f09022a

    .line 225
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/PushButton;

    iput-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkinButton:Lcom/narvii/widget/PushButton;

    const v0, 0x7f09022f

    .line 226
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkinText:Landroid/widget/TextView;

    const v0, 0x7f09022d

    .line 227
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkinProgress:Landroid/widget/ProgressBar;

    const v0, 0x7f09022b

    .line 228
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/TintButton;

    iput-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkinClose:Lcom/narvii/widget/TintButton;

    const v0, 0x7f09022c

    .line 229
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkInModule:Landroid/view/ViewGroup;

    const v0, 0x7f090220

    .line 230
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkInContainer:Landroid/view/ViewGroup;

    const v0, 0x7f090222

    .line 231
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkInSuccessContainer:Landroid/view/ViewGroup;

    .line 233
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkinButton:Lcom/narvii/widget/PushButton;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkinClose:Lcom/narvii/widget/TintButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    invoke-virtual {p0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->updateThemeUI()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->nestedChildHelper:Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 260
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public reConfigNormalItemViews()V
    .locals 0

    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    .line 463
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->nestedChildHelper:Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public setOnHeaderInvalidatedListener(Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout$OnHeaderInvalidatedListener;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->onHeaderInvalidatedListener:Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout$OnHeaderInvalidatedListener;

    return-void
.end method

.method public setSpeedDialItemClicked(Lcom/narvii/amino/speeddial/SpeedDialLayout$SpeedDialItemClickListener;)V
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->speedDialRecycleView:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    invoke-virtual {v0, p1}, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->setSpeedDialItemClickListener(Lcom/narvii/amino/speeddial/SpeedDialLayout$SpeedDialItemClickListener;)V

    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1

    .line 473
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->nestedChildHelper:Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result p1

    return p1
.end method

.method public stopNestedScroll()V
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->nestedChildHelper:Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;

    invoke-virtual {v0}, Lcom/narvii/widget/headercollapse/NVNestedScrollingChildHelper;->stopNestedScroll()V

    return-void
.end method

.method public updateAccountInfo()V
    .locals 0

    .line 360
    invoke-virtual {p0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->updateCheckinStreak()V

    return-void
.end method

.method public updateCheckinStreak()V
    .locals 2

    .line 364
    new-instance v0, Lcom/narvii/checkin/CheckInHelper;

    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->ctx:Lcom/narvii/app/NVContext;

    invoke-direct {v0, v1}, Lcom/narvii/checkin/CheckInHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 365
    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getCheckInHistory()Lcom/narvii/model/CheckInHistory;

    move-result-object v1

    .line 366
    invoke-virtual {v0, v1}, Lcom/narvii/checkin/CheckInHelper;->getStreakLostList(Lcom/narvii/model/CheckInHistory;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 367
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 368
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x4

    .line 369
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    :cond_1
    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->checkInStreakBar:Lcom/narvii/checkin/CheckInStreakBar;

    invoke-virtual {v1, v0}, Lcom/narvii/checkin/CheckInStreakBar;->updateCells(Ljava/util/List;)V

    return-void
.end method

.method public updateCommunityInfo()V
    .locals 7

    .line 340
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->communityService:Lcom/narvii/community/CommunityService;

    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->configService:Lcom/narvii/config/ConfigService;

    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object v0

    .line 341
    new-instance v1, Lcom/narvii/modulization/CommunityConfigHelper;

    iget-object v2, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->ctx:Lcom/narvii/app/NVContext;

    iget-object v3, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->configService:Lcom/narvii/config/ConfigService;

    invoke-virtual {v3}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;I)V

    const/16 v2, 0x8

    if-eqz v0, :cond_2

    .line 344
    iget-object v3, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->communityIconView:Lcom/narvii/widget/CommunityIconView;

    iget-object v4, v0, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 345
    iget-object v3, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->communityName:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    iget-object v3, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->memberText:Landroid/widget/TextView;

    iget v4, v0, Lcom/narvii/model/Community;->membersCount:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    const v4, 0x7f0f0b50

    goto :goto_0

    :cond_0
    const v4, 0x7f0f0b53

    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 347
    iget-object v3, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->memberCount:Lcom/narvii/widget/AutoSizingTextView;

    sget-object v4, Lcom/narvii/util/text/TextUtils;->numberFormat:Ljava/text/NumberFormat;

    iget v0, v0, Lcom/narvii/model/Community;->membersCount:I

    int-to-long v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->memberCount:Lcom/narvii/widget/AutoSizingTextView;

    invoke-virtual {v0}, Lcom/narvii/widget/AutoSizingTextView;->resizingFromMaxSize()V

    .line 349
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->leaderBoard:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/narvii/modulization/CommunityConfigHelper;->isLeaderBoardEnable()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/narvii/modulization/CommunityConfigHelper;->isRankingModuleEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 351
    :cond_2
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->communityIconView:Lcom/narvii/widget/CommunityIconView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 352
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->communityName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->memberCount:Lcom/narvii/widget/AutoSizingTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->memberText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->leaderBoard:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public updateFeaturedChatThreadList(Lcom/narvii/model/ChatThread;)V
    .locals 2

    .line 375
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->featureType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->speedDialRecycleView:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 376
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->speedDialRecycleView:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->notifyHeaderInvalidated(Landroid/view/View;Z)V

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->speedDialRecycleView:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    invoke-virtual {v0, p1}, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->updateFeaturedChatList(Lcom/narvii/model/ChatThread;)V

    .line 379
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->speedDialRecycleView:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    invoke-virtual {p1}, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->getItemViewCount()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->speedDialRecycleView:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 380
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->speedDialRecycleView:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->notifyHeaderInvalidated(Landroid/view/View;Z)V

    :cond_1
    return-void
.end method

.method public updateHeaderOffset(F)V
    .locals 2

    .line 385
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->mainContent:Landroid/widget/LinearLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return-void
.end method

.method public updateSpeedDial(Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;)V
    .locals 3

    .line 389
    iput-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->response:Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;

    if-eqz p1, :cond_2

    .line 391
    iget-object v0, p1, Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;->threadList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->speedDialRecycleView:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 399
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->speedDialRecycleView:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->notifyHeaderInvalidated(Landroid/view/View;Z)V

    .line 400
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->fakeHeightViewWrapper:Lcom/narvii/widget/FakeHeightViewWrapper;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070286

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/widget/FakeHeightViewWrapper;->updateFakeHeight(I)V

    .line 402
    :cond_1
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->speedDialRecycleView:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    invoke-virtual {v0, p1}, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->updateSpeedDial(Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;)V

    goto :goto_1

    .line 392
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->speedDialRecycleView:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_3

    .line 393
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->speedDialRecycleView:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->updateSpeedDial(Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;)V

    .line 394
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->speedDialRecycleView:Lcom/narvii/amino/speeddial/SpeedDialRecycleView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->notifyHeaderInvalidated(Landroid/view/View;Z)V

    .line 395
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->fakeHeightViewWrapper:Lcom/narvii/widget/FakeHeightViewWrapper;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070285

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/narvii/widget/FakeHeightViewWrapper;->updateFakeHeight(I)V

    .line 404
    :cond_3
    :goto_1
    new-instance p1, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout$4;

    invoke-direct {p1, p0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout$4;-><init>(Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;)V

    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateThemeUI()V
    .locals 8

    .line 508
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->ctx:Lcom/narvii/app/NVContext;

    if-eqz v0, :cond_0

    const-string v1, "config"

    .line 509
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 510
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    move-result v0

    const/4 v1, 0x3

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v3, 0x1

    const/16 v4, 0x5a

    .line 511
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v5

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    aput v4, v1, v3

    const/4 v3, 0x2

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-static {v2, v4, v5, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    aput v0, v1, v3

    .line 512
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const v1, 0x7f0904f7

    .line 513
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 515
    invoke-virtual {p0}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->updateCheckinStreak()V

    :cond_0
    return-void
.end method
