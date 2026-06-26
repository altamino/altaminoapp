.class public Lcom/narvii/wallet/MembershipMainRecyclerFragment;
.super Lcom/narvii/paging/NVRecyclerViewFragment;
.source "MembershipMainRecyclerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/narvii/wallet/util/IabHelper$OnIabSetupFinishedListener;
.implements Lcom/narvii/wallet/util/IabHelper$QueryInventoryFinishedListener;
.implements Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/wallet/MembershipMainRecyclerFragment$Privileges;,
        Lcom/narvii/wallet/MembershipMainRecyclerFragment$PrivilegeDataSource;,
        Lcom/narvii/wallet/MembershipMainRecyclerFragment$Adapter;
    }
.end annotation


# instance fields
.field private adapter:Lcom/narvii/wallet/MembershipMainRecyclerFragment$Adapter;

.field appBarLayout:Landroid/support/design/widget/AppBarLayout;

.field cardSide:I

.field cofettiView:Lcom/narvii/widget/cofetti/CofettiView;

.field fakeActionBar:Lcom/narvii/nested/FakeActionBar;

.field header:Landroid/view/View;

.field iabHelper:Lcom/narvii/wallet/util/IabHelper;

.field logged:Z

.field membership:Lcom/narvii/wallet/MembershipStatus;

.field private mergeAdapter:Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;

.field noRefresh:Z

.field purchasedSku:Lcom/narvii/wallet/util/Purchase;

.field private final receiver:Landroid/content/BroadcastReceiver;

.field responseTime:J

.field rippledView:Lcom/narvii/widget/NVDrawableAnimatedView;

.field starBlinkingView:Lcom/narvii/widget/RandomBlinkingView;

.field statusBarPlaceHolder:Lcom/narvii/widget/StatusBarPlaceHolder;

.field subscribeBenefitsText:Landroid/widget/TextView;

.field subscribeHeaderText:Landroid/widget/TextView;

.field waitingForIab:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;-><init>()V

    .line 90
    new-instance v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment$1;-><init>(Lcom/narvii/wallet/MembershipMainRecyclerFragment;)V

    iput-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->waitingForIab:Ljava/lang/Runnable;

    .line 106
    new-instance v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$2;

    invoke-direct {v0, p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment$2;-><init>(Lcom/narvii/wallet/MembershipMainRecyclerFragment;)V

    iput-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/wallet/MembershipMainRecyclerFragment;)Lcom/narvii/wallet/MembershipMainRecyclerFragment$Adapter;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->adapter:Lcom/narvii/wallet/MembershipMainRecyclerFragment$Adapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/wallet/MembershipMainRecyclerFragment;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->fetchMembership()V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/wallet/MembershipMainRecyclerFragment;Landroid/view/View;Z)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->switchAutoRenew(Landroid/view/View;Z)V

    return-void
.end method

.method private calculateAlpha(I)F
    .locals 1

    const/16 v0, -0xf0

    if-ge p1, v0, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    return p1

    :cond_0
    if-ltz p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    neg-int p1, p1

    int-to-float p1, p1

    const/high16 v0, 0x43700000    # 240.0f

    div-float/2addr p1, v0

    return p1
.end method

.method private fetchMembership()V
    .locals 4

    .line 650
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->prepareMembershipRequest()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "api"

    .line 654
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 655
    new-instance v2, Lcom/narvii/wallet/MembershipMainRecyclerFragment$3;

    const-class v3, Lcom/narvii/wallet/MembershipResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/wallet/MembershipMainRecyclerFragment$3;-><init>(Lcom/narvii/wallet/MembershipMainRecyclerFragment;Ljava/lang/Class;)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private initMembership()V
    .locals 7

    .line 639
    new-instance v0, Lcom/narvii/wallet/MembershipStatus;

    invoke-direct {v0}, Lcom/narvii/wallet/MembershipStatus;-><init>()V

    iput-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membership:Lcom/narvii/wallet/MembershipStatus;

    const-string v0, "membership"

    .line 640
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/wallet/MembershipService;

    .line 641
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->getMembershipStatus()Ljava/lang/Integer;

    move-result-object v1

    .line 642
    iget-object v2, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membership:Lcom/narvii/wallet/MembershipStatus;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput v1, v2, Lcom/narvii/wallet/MembershipStatus;->membershipStatus:I

    const-string v1, "prefs"

    .line 643
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SharedPreferences;

    const-wide/16 v2, 0x0

    const-string v4, "membershipCreatedTime"

    .line 644
    invoke-interface {v1, v4, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 645
    iget-object v1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membership:Lcom/narvii/wallet/MembershipStatus;

    cmp-long v6, v4, v2

    if-lez v6, :cond_1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iput-object v2, v1, Lcom/narvii/wallet/MembershipStatus;->createdTime:Ljava/util/Date;

    .line 646
    iget-object v1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membership:Lcom/narvii/wallet/MembershipStatus;

    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->isAutoRenew()Z

    move-result v0

    iput-boolean v0, v1, Lcom/narvii/wallet/MembershipStatus;->isAutoRenew:Z

    return-void
.end method

.method static synthetic lambda$updateHeader$0(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private prepareMembershipRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 4

    .line 692
    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->purchasedSku:Lcom/narvii/wallet/util/Purchase;

    if-eqz v0, :cond_0

    .line 693
    invoke-virtual {v0}, Lcom/narvii/wallet/util/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->createObjectNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    .line 694
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "/membership/product/subscribe"

    .line 695
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->purchasedSku:Lcom/narvii/wallet/util/Purchase;

    .line 696
    invoke-virtual {v2}, Lcom/narvii/wallet/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sku"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    .line 697
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "packageName"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const/4 v2, 0x5

    .line 698
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "paymentType"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "paymentContext"

    .line 699
    invoke-virtual {v1, v2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "purchased"

    .line 700
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 701
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    return-object v0

    .line 703
    :cond_0
    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->waitingForIab:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 706
    :cond_1
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "/membership"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "force"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method private setActionAndStatusBarBgColor(I)V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->fakeActionBar:Lcom/narvii/nested/FakeActionBar;

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->statusBarPlaceHolder:Lcom/narvii/widget/StatusBarPlaceHolder;

    if-eqz v0, :cond_1

    .line 210
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    return-void
.end method

.method private showSubscribe()V
    .locals 4

    .line 727
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f010029

    const v2, 0x7f01002b

    .line 728
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    .line 729
    new-instance v1, Lcom/narvii/wallet/MembershipSubscribeFragment;

    invoke-direct {v1}, Lcom/narvii/wallet/MembershipSubscribeFragment;-><init>()V

    const-string v2, "subscribe"

    const v3, 0x1020002

    invoke-virtual {v0, v3, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 730
    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 731
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    const-string v0, "membership"

    .line 733
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/wallet/MembershipService;

    .line 734
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->freeTrial()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Trial"

    goto :goto_0

    :cond_0
    const-string v0, "Join Amino+"

    .line 735
    :goto_0
    iget-object v1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membership:Lcom/narvii/wallet/MembershipStatus;

    if-eqz v1, :cond_1

    iget v2, v1, Lcom/narvii/wallet/MembershipStatus;->membershipStatus:I

    if-lez v2, :cond_1

    iget-boolean v1, v1, Lcom/narvii/wallet/MembershipStatus;->isAutoRenew:Z

    if-eqz v1, :cond_1

    goto :goto_1

    .line 736
    :cond_1
    iget-object v1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membership:Lcom/narvii/wallet/MembershipStatus;

    if-eqz v1, :cond_2

    iget-boolean v2, v1, Lcom/narvii/wallet/MembershipStatus;->isAutoRenew:Z

    if-nez v2, :cond_2

    iget-object v1, v1, Lcom/narvii/wallet/MembershipStatus;->expiredTime:Ljava/util/Date;

    if-eqz v1, :cond_2

    const-string v0, "Renew"

    :cond_2
    :goto_1
    return-void
.end method

.method private switchAutoRenew(Landroid/view/View;Z)V
    .locals 3

    .line 824
    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membership:Lcom/narvii/wallet/MembershipStatus;

    if-eqz v0, :cond_1

    iget v1, v0, Lcom/narvii/wallet/MembershipStatus;->paymentType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 825
    iget-boolean v0, v0, Lcom/narvii/wallet/MembershipStatus;->isAutoRenew:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 826
    new-instance p1, Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    const p2, 0x7f0f0e51

    .line 827
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setTitle(I)V

    const p2, 0x7f0f0b80

    .line 828
    invoke-virtual {p1, p2}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(I)V

    const p2, 0x7f0f0193

    .line 829
    new-instance v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$7;

    invoke-direct {v0, p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment$7;-><init>(Lcom/narvii/wallet/MembershipMainRecyclerFragment;)V

    invoke-virtual {p1, p2, v1, v0}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    const p2, 0x7f0f119f

    const/16 v0, 0x8

    .line 835
    new-instance v1, Lcom/narvii/wallet/MembershipMainRecyclerFragment$8;

    invoke-direct {v1, p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment$8;-><init>(Lcom/narvii/wallet/MembershipMainRecyclerFragment;)V

    invoke-virtual {p1, p2, v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 841
    new-instance p2, Lcom/narvii/wallet/MembershipMainRecyclerFragment$9;

    invoke-direct {p2, p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment$9;-><init>(Lcom/narvii/wallet/MembershipMainRecyclerFragment;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 847
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    return-void

    .line 850
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 851
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object p2

    .line 852
    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membership:Lcom/narvii/wallet/MembershipStatus;

    iget-boolean v0, v0, Lcom/narvii/wallet/MembershipStatus;->isAutoRenew:Z

    xor-int/2addr v0, v2

    const-string v1, "isAutoRenew"

    invoke-virtual {p2, v1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 853
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "/membership/config"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 854
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "paymentType"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "paymentContext"

    .line 855
    invoke-virtual {v0, v1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    .line 856
    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p2

    const-string v0, "api"

    .line 857
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 858
    new-instance v1, Lcom/narvii/wallet/MembershipMainRecyclerFragment$10;

    const-class v2, Lcom/narvii/wallet/MembershipResponse;

    invoke-direct {v1, p0, v2, p1}, Lcom/narvii/wallet/MembershipMainRecyclerFragment$10;-><init>(Lcom/narvii/wallet/MembershipMainRecyclerFragment;Ljava/lang/Class;Landroid/view/View;)V

    invoke-virtual {v0, p2, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 878
    iget-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membership:Lcom/narvii/wallet/MembershipStatus;

    iget-boolean p1, p1, Lcom/narvii/wallet/MembershipStatus;->isAutoRenew:Z

    :cond_1
    return-void
.end method


# virtual methods
.method protected createAdapter()Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
    .locals 2

    .line 454
    new-instance v0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->mergeAdapter:Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;

    .line 455
    new-instance v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$Adapter;

    invoke-direct {v0, p0, p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment$Adapter;-><init>(Lcom/narvii/wallet/MembershipMainRecyclerFragment;Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->adapter:Lcom/narvii/wallet/MembershipMainRecyclerFragment$Adapter;

    .line 456
    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->mergeAdapter:Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;

    iget-object v1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->adapter:Lcom/narvii/wallet/MembershipMainRecyclerFragment$Adapter;

    invoke-virtual {v0, v1}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->addAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 458
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->fetchMembership()V

    .line 460
    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->mergeAdapter:Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;

    return-object v0
.end method

.method public flipCard()V
    .locals 5

    .line 754
    iget v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->cardSide:I

    const/4 v1, -0x1

    const v2, 0x7f0906eb

    const v3, 0x7f0906ea

    if-nez v0, :cond_0

    .line 755
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v4, 0x7f020001

    invoke-static {v0, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    .line 756
    iget-object v4, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->header:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 757
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 758
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v3, 0x7f020000

    invoke-static {v0, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    .line 759
    iget-object v3, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->header:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 760
    new-instance v2, Lcom/narvii/wallet/MembershipMainRecyclerFragment$5;

    invoke-direct {v2, p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment$5;-><init>(Lcom/narvii/wallet/MembershipMainRecyclerFragment;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 781
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 782
    iput v1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->cardSide:I

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    .line 784
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v4, 0x7f020002

    invoke-static {v0, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    .line 785
    iget-object v4, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->header:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 786
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 787
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f020003

    invoke-static {v0, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    .line 788
    iget-object v3, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->header:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 789
    new-instance v2, Lcom/narvii/wallet/MembershipMainRecyclerFragment$6;

    invoke-direct {v2, p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment$6;-><init>(Lcom/narvii/wallet/MembershipMainRecyclerFragment;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 810
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 811
    iput v1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->cardSide:I

    :cond_1
    :goto_0
    return-void
.end method

.method flipCard(Z)V
    .locals 2

    .line 816
    iget v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->cardSide:I

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 817
    invoke-virtual {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->flipCard()V

    goto :goto_0

    .line 818
    :cond_0
    iget v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->cardSide:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_1

    .line 819
    invoke-virtual {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->flipCard()V

    :cond_1
    :goto_0
    return-void
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f100009

    return v0
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 465
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 468
    :sswitch_0
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->showSubscribe()V

    goto :goto_0

    .line 472
    :sswitch_1
    invoke-virtual {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->flipCard()V

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x0

    .line 475
    invoke-direct {p0, p1, v0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->switchAutoRenew(Landroid/view/View;Z)V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0906e8 -> :sswitch_2
        0x7f0906ea -> :sswitch_1
        0x7f0906eb -> :sswitch_1
        0x7f090b1b -> :sswitch_0
        0x7f090b1c -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 137
    invoke-super {p0, p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0f0b58

    .line 138
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 140
    iput-boolean v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->noRefresh:Z

    .line 142
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/wallet/IabUtils;->createIabHelper(Landroid/content/Context;)Lcom/narvii/wallet/util/IabHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->iabHelper:Lcom/narvii/wallet/util/IabHelper;

    .line 143
    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->iabHelper:Lcom/narvii/wallet/util/IabHelper;

    invoke-virtual {v0, p0}, Lcom/narvii/wallet/util/IabHelper;->startSetup(Lcom/narvii/wallet/util/IabHelper$OnIabSetupFinishedListener;)V

    .line 144
    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->waitingForIab:Ljava/lang/Runnable;

    const-wide/16 v1, 0x190

    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 146
    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.narvii.action.MEMBERSHIP_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 147
    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.narvii.action.PURCHASED_SUB_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const/4 p3, 0x0

    const v0, 0x7f0b02be

    .line 175
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f09093a

    .line 176
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f0b00e3

    invoke-virtual {p1, v2, v1, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/cofetti/CofettiView;

    iput-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->cofettiView:Lcom/narvii/widget/cofetti/CofettiView;

    .line 177
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object p3, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->cofettiView:Lcom/narvii/widget/cofetti/CofettiView;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p2
.end method

.method public onDestroy()V
    .locals 3

    .line 157
    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->waitingForIab:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 158
    sget-object v2, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 159
    iput-object v1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->waitingForIab:Ljava/lang/Runnable;

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->iabHelper:Lcom/narvii/wallet/util/IabHelper;

    if-eqz v0, :cond_1

    .line 163
    :try_start_0
    invoke-virtual {v0}, Lcom/narvii/wallet/util/IabHelper;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :catch_0
    iput-object v1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->iabHelper:Lcom/narvii/wallet/util/IabHelper;

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 169
    invoke-super {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->onDestroy()V

    return-void
.end method

.method public onIabSetupFinished(Lcom/narvii/wallet/util/IabResult;)V
    .locals 1

    .line 488
    invoke-virtual {p1}, Lcom/narvii/wallet/util/IabResult;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 490
    :try_start_0
    iget-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->iabHelper:Lcom/narvii/wallet/util/IabHelper;

    invoke-virtual {p1, p0}, Lcom/narvii/wallet/util/IabHelper;->queryInventoryAsync(Lcom/narvii/wallet/util/IabHelper$QueryInventoryFinishedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "fail to query inventory"

    .line 492
    invoke-static {v0, p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 495
    :cond_0
    iget-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->waitingForIab:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 496
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 497
    iget-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->waitingForIab:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 498
    iput-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->waitingForIab:Ljava/lang/Runnable;

    :cond_1
    :goto_0
    return-void
.end method

.method public onOffsetChanged(Landroid/support/design/widget/AppBarLayout;I)V
    .locals 0

    .line 216
    iget-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->subscribeBenefitsText:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 217
    invoke-direct {p0, p2}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->calculateAlpha(I)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public onQueryInventoryFinished(Lcom/narvii/wallet/util/IabResult;Lcom/narvii/wallet/util/Inventory;)V
    .locals 6

    .line 505
    invoke-virtual {p1}, Lcom/narvii/wallet/util/IabResult;->isSuccess()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const-string p1, "account"

    .line 506
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 507
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object p1

    .line 508
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/narvii/wallet/util/Inventory;->getAllPurchases()Ljava/util/List;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 509
    sget-object p2, Lcom/narvii/wallet/IabUtils;->PURCHASE_COMPARATOR_R:Ljava/util/Comparator;

    invoke-static {v1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 510
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/wallet/util/Purchase;

    .line 511
    invoke-virtual {v1}, Lcom/narvii/wallet/util/Purchase;->getItemType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "subs"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 514
    :cond_1
    invoke-virtual {v1}, Lcom/narvii/wallet/util/Purchase;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->createObjectNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "uid"

    aput-object v5, v3, v4

    .line 515
    invoke-static {v2, v3}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 516
    invoke-static {p1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 517
    iput-object v1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->purchasedSku:Lcom/narvii/wallet/util/Purchase;

    .line 518
    iget-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->waitingForIab:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    .line 519
    sget-object p2, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 520
    iput-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->waitingForIab:Ljava/lang/Runnable;

    .line 522
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    move-result p1

    if-nez p1, :cond_3

    .line 523
    iget-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->mergeAdapter:Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;

    invoke-virtual {p1, v4, v0}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->refresh(ILcom/narvii/paging/source/PageRequestCallback;)V

    .line 524
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->fetchMembership()V

    .line 530
    :cond_3
    iget-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->waitingForIab:Ljava/lang/Runnable;

    if-eqz p1, :cond_4

    .line 531
    sget-object p2, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 532
    iget-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->waitingForIab:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 533
    iput-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->waitingForIab:Ljava/lang/Runnable;

    :cond_4
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 183
    invoke-super {p0, p1, p2}, Lcom/narvii/paging/NVRecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0906f2

    .line 184
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->header:Landroid/view/View;

    const p2, 0x7f0900b6

    .line 185
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    iput-object p2, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->appBarLayout:Landroid/support/design/widget/AppBarLayout;

    .line 186
    iget-object p2, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->appBarLayout:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p2, p0}, Landroid/support/design/widget/AppBarLayout;->addOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V

    const p2, 0x7f090b1b

    .line 187
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->subscribeBenefitsText:Landroid/widget/TextView;

    .line 188
    iget-object p2, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->subscribeBenefitsText:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090b20

    .line 189
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->subscribeHeaderText:Landroid/widget/TextView;

    .line 191
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->initMembership()V

    const p2, 0x7f090b2d

    .line 192
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object p2, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 193
    iget-object p2, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    const p2, 0x7f090a8d

    .line 195
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/RandomBlinkingView;

    iput-object p2, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->starBlinkingView:Lcom/narvii/widget/RandomBlinkingView;

    const p2, 0x7f090416

    .line 197
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/nested/FakeActionBar;

    iput-object p2, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->fakeActionBar:Lcom/narvii/nested/FakeActionBar;

    .line 198
    iget-object p2, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->fakeActionBar:Lcom/narvii/nested/FakeActionBar;

    if-eqz p2, :cond_0

    const v0, 0x7f0f0b58

    .line 199
    invoke-virtual {p2, v0}, Lcom/narvii/nested/FakeActionBar;->setTitle(I)V

    :cond_0
    const p2, 0x7f090a9a

    .line 201
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/StatusBarPlaceHolder;

    iput-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->statusBarPlaceHolder:Lcom/narvii/widget/StatusBarPlaceHolder;

    .line 202
    invoke-virtual {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->updateHeader()V

    return-void
.end method

.method public setResponse(Lcom/narvii/wallet/MembershipResponse;)V
    .locals 2

    .line 711
    iget-object v0, p1, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 712
    invoke-static {v0}, Lcom/narvii/util/DateTimeFormatter;->parseISO8601(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->responseTime:J

    .line 714
    :cond_0
    iget-object v0, p1, Lcom/narvii/wallet/MembershipResponse;->membership:Lcom/narvii/wallet/MembershipStatus;

    iput-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membership:Lcom/narvii/wallet/MembershipStatus;

    .line 715
    invoke-virtual {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->updateHeader()V

    const-string v0, "membership"

    .line 716
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/wallet/MembershipService;

    .line 717
    invoke-virtual {v0, p1}, Lcom/narvii/wallet/MembershipService;->update(Lcom/narvii/wallet/MembershipResponse;)V

    return-void
.end method

.method showCofetti(J)V
    .locals 1

    .line 744
    new-instance v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$4;

    invoke-direct {v0, p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment$4;-><init>(Lcom/narvii/wallet/MembershipMainRecyclerFragment;)V

    invoke-static {v0, p1, p2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public smoothScrollToHeaderMax()V
    .locals 2

    .line 481
    invoke-virtual {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 482
    invoke-virtual {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_0
    return-void
.end method

.method updateHeader()V
    .locals 18

    move-object/from16 v0, p0

    const-string v1, "membership"

    .line 232
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/wallet/MembershipService;

    .line 234
    iget-object v2, v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membership:Lcom/narvii/wallet/MembershipStatus;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget v4, v2, Lcom/narvii/wallet/MembershipStatus;->membershipStatus:I

    if-lez v4, :cond_0

    iget-boolean v4, v2, Lcom/narvii/wallet/MembershipStatus;->isAutoRenew:Z

    if-eqz v4, :cond_0

    iget-boolean v2, v2, Lcom/narvii/wallet/MembershipStatus;->isPremiumItemMembership:Z

    if-nez v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 237
    :cond_0
    invoke-virtual {v1}, Lcom/narvii/wallet/MembershipService;->freeTrial()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0f0b99

    goto :goto_0

    .line 239
    :cond_1
    iget-object v1, v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membership:Lcom/narvii/wallet/MembershipStatus;

    if-eqz v1, :cond_2

    iget-boolean v2, v1, Lcom/narvii/wallet/MembershipStatus;->isAutoRenew:Z

    if-nez v2, :cond_2

    iget-object v1, v1, Lcom/narvii/wallet/MembershipStatus;->expiredTime:Ljava/util/Date;

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membership:Lcom/narvii/wallet/MembershipStatus;

    if-eqz v1, :cond_4

    iget-boolean v2, v1, Lcom/narvii/wallet/MembershipStatus;->isPremiumItemMembership:Z

    if-eqz v2, :cond_4

    iget-object v1, v1, Lcom/narvii/wallet/MembershipStatus;->createdTime:Ljava/util/Date;

    .line 240
    invoke-static {v1}, Lcom/narvii/util/DateUtils;->isToday(Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    const v1, 0x7f0f0b7f

    goto :goto_0

    :cond_4
    const v1, 0x7f0f0b93

    .line 246
    :goto_0
    iget-object v2, v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->header:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 249
    iget-object v2, v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membership:Lcom/narvii/wallet/MembershipStatus;

    if-eqz v2, :cond_8

    iget v4, v2, Lcom/narvii/wallet/MembershipStatus;->membershipStatus:I

    if-lez v4, :cond_5

    iget-boolean v2, v2, Lcom/narvii/wallet/MembershipStatus;->isPremiumItemMembership:Z

    if-eqz v2, :cond_8

    :cond_5
    iget-object v2, v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membership:Lcom/narvii/wallet/MembershipStatus;

    iget v4, v2, Lcom/narvii/wallet/MembershipStatus;->membershipStatus:I

    if-nez v4, :cond_6

    iget-object v2, v2, Lcom/narvii/wallet/MembershipStatus;->createdTime:Ljava/util/Date;

    if-eqz v2, :cond_8

    :cond_6
    iget-object v2, v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membership:Lcom/narvii/wallet/MembershipStatus;

    iget-boolean v4, v2, Lcom/narvii/wallet/MembershipStatus;->isPremiumItemMembership:Z

    if-eqz v4, :cond_7

    iget-object v2, v2, Lcom/narvii/wallet/MembershipStatus;->createdTime:Ljava/util/Date;

    .line 251
    invoke-static {v2}, Lcom/narvii/util/DateUtils;->isToday(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_1

    :cond_7
    const v2, 0x7f0805db

    const-string v4, "#676461"

    .line 256
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v0, v4}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->setActionAndStatusBarBgColor(I)V

    goto :goto_2

    :cond_8
    :goto_1
    const v2, 0x7f0805da

    const-string v4, "#FC8028"

    .line 253
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v0, v4}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->setActionAndStatusBarBgColor(I)V

    .line 258
    :goto_2
    iget-object v4, v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->header:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setBackgroundResource(I)V

    const/16 v2, 0x3e80

    .line 261
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    int-to-float v2, v2

    mul-float v4, v4, v2

    .line 263
    iget-object v2, v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->header:Landroid/view/View;

    const v5, 0x7f0906ea

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v5, 0x1

    if-eqz v2, :cond_c

    .line 265
    invoke-virtual {v2, v4}, Landroid/view/View;->setCameraDistance(F)V

    .line 266
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    iget v6, v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->cardSide:I

    if-nez v6, :cond_9

    const/4 v6, 0x1

    goto :goto_3

    :cond_9
    const/4 v6, 0x0

    :goto_3
    invoke-virtual {v2, v6}, Landroid/view/View;->setClickable(Z)V

    .line 268
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    if-nez v1, :cond_a

    const/high16 v7, 0x42480000    # 50.0f

    goto :goto_4

    :cond_a
    const/high16 v7, 0x42c80000    # 100.0f

    :goto_4
    invoke-static {v6, v7}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v6

    .line 269
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    invoke-virtual {v2, v7, v8, v9, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 270
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 271
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    if-nez v1, :cond_b

    const/high16 v8, 0x43750000    # 245.0f

    goto :goto_5

    :cond_b
    const v8, 0x43938000    # 295.0f

    :goto_5
    invoke-static {v7, v8}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v7

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 272
    invoke-virtual {v2, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    :cond_c
    iget-object v2, v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membership:Lcom/narvii/wallet/MembershipStatus;

    if-eqz v2, :cond_f

    iget v6, v2, Lcom/narvii/wallet/MembershipStatus;->membershipStatus:I

    if-nez v6, :cond_d

    iget-object v2, v2, Lcom/narvii/wallet/MembershipStatus;->createdTime:Ljava/util/Date;

    if-eqz v2, :cond_f

    :cond_d
    iget-object v2, v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membership:Lcom/narvii/wallet/MembershipStatus;

    iget-boolean v6, v2, Lcom/narvii/wallet/MembershipStatus;->isPremiumItemMembership:Z

    if-eqz v6, :cond_e

    iget-object v2, v2, Lcom/narvii/wallet/MembershipStatus;->createdTime:Ljava/util/Date;

    .line 280
    invoke-static {v2}, Lcom/narvii/util/DateUtils;->isToday(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_6

    :cond_e
    const/4 v2, 0x0

    goto :goto_7

    :cond_f
    :goto_6
    const/4 v2, 0x1

    :goto_7
    const/4 v6, 0x4

    if-nez v2, :cond_10

    .line 281
    iget-object v7, v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->rippledView:Lcom/narvii/widget/NVDrawableAnimatedView;

    if-eqz v7, :cond_10

    invoke-virtual {v7}, Lcom/narvii/widget/NVDrawableAnimatedView;->getLayerCount()I

    move-result v7

    if-ge v7, v6, :cond_10

    .line 282
    iget-object v7, v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->rippledView:Lcom/narvii/widget/NVDrawableAnimatedView;

    new-instance v8, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    const v9, 0x7f0805d0

    const/4 v10, 0x5

    invoke-direct {v8, v9, v10}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;-><init>(II)V

    const/16 v9, 0x2ee0

    .line 283
    invoke-virtual {v8, v9}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->duration(I)Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    move-result-object v8

    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->layerGravity(I)Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v9

    const/high16 v10, 0x41400000    # 12.0f

    invoke-static {v9, v10}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v9

    invoke-virtual {v8, v3, v3, v3, v9}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->margin(IIII)Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->build()Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;

    move-result-object v8

    .line 282
    invoke-virtual {v7, v8}, Lcom/narvii/widget/NVDrawableAnimatedView;->addLayer(Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;)I

    .line 285
    :cond_10
    iget-object v7, v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->header:Landroid/view/View;

    const v8, 0x7f0900f8

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 286
    iget-object v8, v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->header:Landroid/view/View;

    const v9, 0x7f0906ed

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/narvii/widget/ThumbImageView;

    .line 288
    iget-object v9, v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membership:Lcom/narvii/wallet/MembershipStatus;

    if-eqz v9, :cond_11

    iget v10, v9, Lcom/narvii/wallet/MembershipStatus;->membershipStatus:I

    if-nez v10, :cond_11

    iget-object v9, v9, Lcom/narvii/wallet/MembershipStatus;->expiredTime:Ljava/util/Date;

    if-nez v9, :cond_12

    :cond_11
    iget-object v9, v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membership:Lcom/narvii/wallet/MembershipStatus;

    if-eqz v9, :cond_13

    iget-boolean v10, v9, Lcom/narvii/wallet/MembershipStatus;->isPremiumItemMembership:Z

    if-eqz v10, :cond_13

    iget-object v9, v9, Lcom/narvii/wallet/MembershipStatus;->createdTime:Ljava/util/Date;

    .line 289
    invoke-static {v9}, Lcom/narvii/util/DateUtils;->isToday(Ljava/util/Date;)Z

    move-result v9

    if-eqz v9, :cond_12

    goto :goto_8

    :cond_12
    const/4 v9, 0x0

    goto :goto_9

    :cond_13
    :goto_8
    const/4 v9, 0x1

    :goto_9
    const-string v10, "#AADD5C0E"

    const-string v11, "#66000000"

    const/16 v13, 0x8

    if-eqz v9, :cond_16

    .line 291
    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v8, v14}, Lcom/narvii/widget/ThumbImageView;->setShadowColor(I)V

    .line 292
    iget-object v14, v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->rippledView:Lcom/narvii/widget/NVDrawableAnimatedView;

    if-eqz v14, :cond_14

    .line 293
    invoke-virtual {v14, v3}, Landroid/view/View;->setVisibility(I)V

    .line 295
    :cond_14
    iget-object v14, v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->starBlinkingView:Lcom/narvii/widget/RandomBlinkingView;

    if-eqz v14, :cond_15

    .line 296
    invoke-virtual {v14}, Lcom/narvii/widget/RandomBlinkingView;->enable()V

    .line 298
    :cond_15
    invoke-virtual {v7, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    const v14, 0x7f0805d5

    goto :goto_a

    :cond_16
    const v14, 0x7f0805d6

    .line 301
    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v8, v15}, Lcom/narvii/widget/ThumbImageView;->setShadowColor(I)V

    .line 302
    iget-object v15, v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->rippledView:Lcom/narvii/widget/NVDrawableAnimatedView;

    if-eqz v15, :cond_17

    .line 303
    invoke-virtual {v15, v13}, Landroid/view/View;->setVisibility(I)V

    .line 305
    :cond_17
    iget-object v15, v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->starBlinkingView:Lcom/narvii/widget/RandomBlinkingView;

    if-eqz v15, :cond_18

    .line 306
    invoke-virtual {v15}, Lcom/narvii/widget/RandomBlinkingView;->disable()V

    .line 308
    :cond_18
    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 310
    :goto_a
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, v8, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    .line 311
    invoke-virtual {v8, v7}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 313
    iget-object v8, v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->header:Landroid/view/View;

    const v14, 0x7f090b20

    invoke-virtual {v8, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    if-nez v1, :cond_19

    .line 315
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v14, v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->subscribeBenefitsText:Landroid/widget/TextView;

    if-eqz v14, :cond_1a

    .line 317
    invoke-virtual {v14, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 320
    :cond_19
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(I)V

    .line 321
    iget-object v14, v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->subscribeBenefitsText:Landroid/widget/TextView;

    if-eqz v14, :cond_1a

    .line 322
    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_1a
    :goto_b
    if-nez v1, :cond_1b

    const/16 v14, 0x8

    goto :goto_c

    :cond_1b
    const/4 v14, 0x0

    .line 325
    :goto_c
    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 326
    iget-object v8, v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->subscribeBenefitsText:Landroid/widget/TextView;

    if-eqz v8, :cond_1d

    if-nez v1, :cond_1c

    const/16 v14, 0x8

    goto :goto_d

    :cond_1c
    const/4 v14, 0x0

    .line 327
    :goto_d
    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 330
    :cond_1d
    iget-object v8, v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->header:Landroid/view/View;

    const v14, 0x7f090b1c

    invoke-virtual {v8, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/narvii/widget/ThumbImageView;

    .line 331
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0805d8

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    iput-object v14, v8, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1e

    const/4 v1, 0x0

    goto :goto_e

    :cond_1e
    const/16 v1, 0x8

    .line 332
    :goto_e
    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 333
    invoke-virtual {v8, v7}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 334
    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    iget-object v1, v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->header:Landroid/view/View;

    const v8, 0x7f0906ee

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v2, :cond_1f

    const/4 v8, 0x0

    goto :goto_f

    :cond_1f
    const/4 v8, 0x4

    :goto_f
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 337
    iget-object v1, v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->header:Landroid/view/View;

    const v8, 0x7f0906f0

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v2, :cond_20

    const/4 v8, 0x0

    goto :goto_10

    :cond_20
    const/4 v8, 0x4

    :goto_10
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 338
    iget-object v1, v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->header:Landroid/view/View;

    const v8, 0x7f0906ef

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v2, :cond_21

    const/4 v8, 0x0

    goto :goto_11

    :cond_21
    const/4 v8, 0x4

    :goto_11
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    const-string v1, "account"

    .line 340
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/account/AccountService;

    .line 341
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v1

    .line 342
    iget-object v8, v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->header:Landroid/view/View;

    const v14, 0x7f090c10

    invoke-virtual {v8, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/narvii/widget/UserAvatarLayout;

    if-nez v2, :cond_22

    const/4 v14, 0x0

    goto :goto_12

    :cond_22
    const/16 v14, 0x8

    .line 343
    :goto_12
    invoke-virtual {v8, v14}, Landroid/widget/FrameLayout;->setVisibility(I)V

    xor-int/lit8 v14, v9, 0x1

    .line 344
    invoke-virtual {v8, v14}, Lcom/narvii/widget/UserAvatarLayout;->setNoBadge(Z)V

    .line 345
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f070056

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    const-string v15, "#60000000"

    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v8, v14, v15, v3}, Lcom/narvii/widget/UserAvatarLayout;->setAvatarShadow(IIZ)V

    .line 346
    invoke-virtual {v8, v5}, Lcom/narvii/widget/UserAvatarLayout;->markAvatarFrameHide(Z)V

    .line 347
    invoke-virtual {v8, v1, v9}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;Z)V

    .line 349
    iget-object v8, v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->header:Landroid/view/View;

    const v9, 0x7f090764

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    if-nez v2, :cond_23

    const/4 v9, 0x0

    goto :goto_13

    :cond_23
    const/16 v9, 0x8

    .line 350
    :goto_13
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v1, :cond_24

    .line 351
    iget-object v1, v1, Lcom/narvii/model/User;->nickname:Ljava/lang/String;

    goto :goto_14

    :cond_24
    const-string v1, ""

    :goto_14
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    iget-object v1, v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->header:Landroid/view/View;

    const v8, 0x7f0906fa

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 354
    iget-object v8, v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membership:Lcom/narvii/wallet/MembershipStatus;

    if-eqz v8, :cond_25

    iget-boolean v9, v8, Lcom/narvii/wallet/MembershipStatus;->isPremiumItemMembership:Z

    if-eqz v9, :cond_25

    iget-object v8, v8, Lcom/narvii/wallet/MembershipStatus;->createdTime:Ljava/util/Date;

    invoke-static {v8}, Lcom/narvii/util/DateUtils;->isToday(Ljava/util/Date;)Z

    move-result v8

    if-eqz v8, :cond_25

    .line 355
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_15

    .line 357
    :cond_25
    iget-object v8, v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membership:Lcom/narvii/wallet/MembershipStatus;

    if-eqz v8, :cond_26

    iget v9, v8, Lcom/narvii/wallet/MembershipStatus;->membershipStatus:I

    if-lez v9, :cond_26

    iget-object v9, v8, Lcom/narvii/wallet/MembershipStatus;->createdTime:Ljava/util/Date;

    if-eqz v9, :cond_26

    iget-boolean v8, v8, Lcom/narvii/wallet/MembershipStatus;->isPremiumItemMembership:Z

    if-nez v8, :cond_26

    .line 359
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0f0b81

    new-array v14, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v15

    iget-object v6, v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membership:Lcom/narvii/wallet/MembershipStatus;

    iget-object v6, v6, Lcom/narvii/wallet/MembershipStatus;->createdTime:Ljava/util/Date;

    invoke-virtual {v15, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v14, v3

    invoke-virtual {v8, v9, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_15

    .line 362
    :cond_26
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 366
    :goto_15
    iget-object v1, v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membership:Lcom/narvii/wallet/MembershipStatus;

    if-eqz v1, :cond_2f

    iget-object v6, v1, Lcom/narvii/wallet/MembershipStatus;->expiredTime:Ljava/util/Date;

    if-eqz v6, :cond_2f

    iget-boolean v8, v1, Lcom/narvii/wallet/MembershipStatus;->isAutoRenew:Z

    if-eqz v8, :cond_27

    goto/16 :goto_18

    .line 368
    :cond_27
    iget-boolean v8, v1, Lcom/narvii/wallet/MembershipStatus;->isPremiumItemMembership:Z

    if-eqz v8, :cond_28

    .line 369
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v6, 0x7f0f0b83

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_16
    move v6, v2

    goto/16 :goto_19

    .line 370
    :cond_28
    iget v1, v1, Lcom/narvii/wallet/MembershipStatus;->membershipStatus:I

    const-wide/32 v8, 0x5265c00

    const-wide/16 v14, 0x0

    if-nez v1, :cond_2c

    if-eqz v6, :cond_2c

    .line 371
    iget-wide v12, v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->responseTime:J

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    sub-long v12, v12, v16

    cmp-long v6, v12, v14

    if-lez v6, :cond_2b

    .line 373
    div-long/2addr v12, v8

    long-to-int v6, v12

    if-nez v6, :cond_29

    .line 375
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    const v8, 0x7f0f0b84

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_17

    :cond_29
    if-ne v6, v5, :cond_2a

    .line 377
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    const v8, 0x7f0f0b85

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_17

    :cond_2a
    if-le v6, v5, :cond_2b

    .line 379
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0f0b86

    new-array v12, v5, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v12, v3

    invoke-virtual {v8, v9, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_17

    :cond_2b
    move-object v6, v7

    :goto_17
    move-object v1, v6

    goto :goto_16

    .line 382
    :cond_2c
    iget-object v6, v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membership:Lcom/narvii/wallet/MembershipStatus;

    iget v12, v6, Lcom/narvii/wallet/MembershipStatus;->membershipStatus:I

    if-lez v12, :cond_2f

    iget-object v12, v6, Lcom/narvii/wallet/MembershipStatus;->expiredTime:Ljava/util/Date;

    if-eqz v12, :cond_2f

    iget-boolean v6, v6, Lcom/narvii/wallet/MembershipStatus;->isAutoRenew:Z

    if-nez v6, :cond_2f

    .line 383
    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    move v6, v2

    iget-wide v1, v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->responseTime:J

    sub-long/2addr v12, v1

    cmp-long v1, v12, v14

    if-lez v1, :cond_30

    .line 385
    div-long/2addr v12, v8

    long-to-int v1, v12

    if-nez v1, :cond_2d

    .line 387
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0b87

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_19

    :cond_2d
    if-ne v1, v5, :cond_2e

    .line 389
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0b88

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_19

    :cond_2e
    if-lez v1, :cond_30

    const/16 v2, 0xe

    if-gt v1, v2, :cond_30

    .line 391
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v8, 0x7f0f0b89

    new-array v9, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v9, v3

    invoke-virtual {v2, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_19

    :cond_2f
    :goto_18
    move v6, v2

    :cond_30
    move-object v1, v7

    .line 395
    :goto_19
    iget-object v2, v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->header:Landroid/view/View;

    const v8, 0x7f0906fd

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-nez v6, :cond_31

    const/4 v6, 0x0

    goto :goto_1a

    :cond_31
    const/16 v6, 0x8

    .line 396
    :goto_1a
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 397
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    iget-object v1, v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->header:Landroid/view/View;

    const v2, 0x7f0906eb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setCameraDistance(F)V

    .line 400
    iget-object v1, v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->header:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    iget-object v1, v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->header:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget v2, v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->cardSide:I

    if-ne v2, v5, :cond_32

    const/4 v2, 0x1

    goto :goto_1b

    :cond_32
    const/4 v2, 0x0

    :goto_1b
    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 403
    iget-object v1, v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->header:Landroid/view/View;

    const v2, 0x7f0906ec

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/ThumbImageView;

    .line 405
    iget-object v2, v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->header:Landroid/view/View;

    const v4, 0x7f0906fe

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 406
    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    .line 407
    iget-object v6, v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membership:Lcom/narvii/wallet/MembershipStatus;

    if-eqz v6, :cond_33

    iget v8, v6, Lcom/narvii/wallet/MembershipStatus;->membershipStatus:I

    if-lez v8, :cond_33

    iget-boolean v6, v6, Lcom/narvii/wallet/MembershipStatus;->isPremiumItemMembership:Z

    if-nez v6, :cond_33

    .line 408
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1d

    .line 409
    :cond_33
    iget-object v6, v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membership:Lcom/narvii/wallet/MembershipStatus;

    if-eqz v6, :cond_37

    iget v8, v6, Lcom/narvii/wallet/MembershipStatus;->membershipStatus:I

    if-nez v8, :cond_34

    iget-object v6, v6, Lcom/narvii/wallet/MembershipStatus;->createdTime:Ljava/util/Date;

    if-eqz v6, :cond_37

    :cond_34
    iget-object v6, v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membership:Lcom/narvii/wallet/MembershipStatus;

    iget-boolean v8, v6, Lcom/narvii/wallet/MembershipStatus;->isPremiumItemMembership:Z

    if-eqz v8, :cond_35

    iget-object v6, v6, Lcom/narvii/wallet/MembershipStatus;->createdTime:Ljava/util/Date;

    .line 410
    invoke-static {v6}, Lcom/narvii/util/DateUtils;->isToday(Ljava/util/Date;)Z

    move-result v6

    if-eqz v6, :cond_35

    goto :goto_1c

    .line 412
    :cond_35
    iget-object v6, v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membership:Lcom/narvii/wallet/MembershipStatus;

    iget-boolean v8, v6, Lcom/narvii/wallet/MembershipStatus;->isPremiumItemMembership:Z

    if-nez v8, :cond_36

    iget v8, v6, Lcom/narvii/wallet/MembershipStatus;->membershipStatus:I

    if-nez v8, :cond_38

    iget-object v6, v6, Lcom/narvii/wallet/MembershipStatus;->expiredTime:Ljava/util/Date;

    if-eqz v6, :cond_38

    :cond_36
    const v4, 0x7f0f0b95

    .line 413
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    const v12, 0x7f0805d7

    .line 415
    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    goto :goto_1e

    :cond_37
    :goto_1c
    const v6, 0x7f0f0b94

    .line 411
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    :cond_38
    :goto_1d
    const v12, 0x7f0805d5

    .line 417
    :goto_1e
    invoke-virtual {v1, v4}, Lcom/narvii/widget/ThumbImageView;->setShadowColor(I)V

    .line 419
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 420
    invoke-virtual {v1, v7}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 422
    iget-object v1, v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->header:Landroid/view/View;

    const v2, 0x7f0906fb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 423
    iget-object v2, v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->header:Landroid/view/View;

    const v4, 0x7f0906fc

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 424
    iget-object v4, v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membership:Lcom/narvii/wallet/MembershipStatus;

    if-eqz v4, :cond_39

    iget v6, v4, Lcom/narvii/wallet/MembershipStatus;->membershipStatus:I

    if-lez v6, :cond_39

    iget-object v6, v4, Lcom/narvii/wallet/MembershipStatus;->createdTime:Ljava/util/Date;

    if-eqz v6, :cond_39

    iget-boolean v4, v4, Lcom/narvii/wallet/MembershipStatus;->isPremiumItemMembership:Z

    if-nez v4, :cond_39

    .line 426
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const v6, 0x7f0f0b96

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x2

    .line 427
    invoke-static {v1}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v1

    iget-object v4, v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membership:Lcom/narvii/wallet/MembershipStatus;

    iget-object v4, v4, Lcom/narvii/wallet/MembershipStatus;->createdTime:Ljava/util/Date;

    invoke-virtual {v1, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1f

    .line 429
    :cond_39
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    :goto_1f
    iget-object v1, v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membership:Lcom/narvii/wallet/MembershipStatus;

    if-eqz v1, :cond_3a

    iget v2, v1, Lcom/narvii/wallet/MembershipStatus;->membershipStatus:I

    if-lez v2, :cond_3a

    iget v2, v1, Lcom/narvii/wallet/MembershipStatus;->paymentType:I

    if-ne v2, v5, :cond_3a

    iget-boolean v1, v1, Lcom/narvii/wallet/MembershipStatus;->isPremiumItemMembership:Z

    if-nez v1, :cond_3a

    const/4 v1, 0x1

    goto :goto_20

    :cond_3a
    const/4 v1, 0x0

    .line 438
    :goto_20
    iget-object v2, v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->header:Landroid/view/View;

    const v4, 0x7f0906e9

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v1, :cond_3b

    const/4 v4, 0x0

    goto :goto_21

    :cond_3b
    const/4 v4, 0x4

    :goto_21
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 439
    iget-object v2, v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->header:Landroid/view/View;

    const v4, 0x7f0906e8

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iget-object v6, v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membership:Lcom/narvii/wallet/MembershipStatus;

    if-eqz v6, :cond_3c

    iget-boolean v6, v6, Lcom/narvii/wallet/MembershipStatus;->isAutoRenew:Z

    if-eqz v6, :cond_3c

    const/4 v6, 0x1

    goto :goto_22

    :cond_3c
    const/4 v6, 0x0

    :goto_22
    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 440
    iget-object v2, v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->header:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v1, :cond_3d

    const/4 v1, 0x0

    goto :goto_23

    :cond_3d
    const/4 v1, 0x4

    :goto_23
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 441
    iget-object v1, v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->header:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 442
    iget-object v1, v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->header:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget v2, v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->cardSide:I

    if-ne v2, v5, :cond_3e

    const/4 v3, 0x1

    :cond_3e
    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 448
    iget-object v1, v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->header:Landroid/view/View;

    const v2, 0x7f0905ae

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget-object v2, Lcom/narvii/wallet/-$$Lambda$MembershipMainRecyclerFragment$eNYw9a6h2MlbtKEyHntfLg30sRw;->INSTANCE:Lcom/narvii/wallet/-$$Lambda$MembershipMainRecyclerFragment$eNYw9a6h2MlbtKEyHntfLg30sRw;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method updateMembership(Lcom/narvii/wallet/MembershipResponse;)V
    .locals 1

    .line 721
    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->adapter:Lcom/narvii/wallet/MembershipMainRecyclerFragment$Adapter;

    if-eqz v0, :cond_0

    .line 722
    invoke-virtual {p0, p1}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->setResponse(Lcom/narvii/wallet/MembershipResponse;)V

    :cond_0
    return-void
.end method
