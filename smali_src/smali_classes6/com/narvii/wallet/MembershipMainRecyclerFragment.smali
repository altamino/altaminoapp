.class public Lcom/narvii/wallet/MembershipMainRecyclerFragment;
.super Lcom/narvii/paging/NVRecyclerViewFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/material/appbar/AppBarLayout$h;


# instance fields
.field private adapter:Lcom/narvii/wallet/membership/MembershipDataAdapter;

.field private appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

.field private cardSide:I

.field private cofettiView:Lcom/narvii/widget/cofetti/CofettiView;

.field private fakeActionBar:Lcom/narvii/nested/FakeActionBar;

.field private header:Landroid/view/View;

.field private logged:Z

.field private membership:Lcom/narvii/wallet/MembershipStatus;

.field private mergeAdapter:Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;

.field private purchasedSku:Lcom/android/billingclient/api/Purchase;

.field private final receiver:Landroid/content/BroadcastReceiver;

.field private responseTime:J

.field private rippledView:Lcom/narvii/widget/NVDrawableAnimatedView;

.field private starBlinkingView:Lcom/narvii/widget/RandomBlinkingView;

.field private statusBarPlaceHolder:Lcom/narvii/widget/StatusBarPlaceHolder;

.field private subscribeBenefitsText:Landroid/widget/TextView;

.field private subscribeHeaderText:Landroid/widget/TextView;

.field private waitingForIab:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment$1;-><init>(Lcom/narvii/wallet/MembershipMainRecyclerFragment;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->waitingForIab:Ljava/lang/Runnable;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$2;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment$2;-><init>(Lcom/narvii/wallet/MembershipMainRecyclerFragment;)V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 18
    return-void
.end method

.method static bridge synthetic A(Lcom/narvii/wallet/MembershipMainRecyclerFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->logged:Z

    return p0
.end method

.method static bridge synthetic B(Lcom/narvii/wallet/MembershipMainRecyclerFragment;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->waitingForIab:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic C(Lcom/narvii/wallet/MembershipMainRecyclerFragment;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->cardSide:I

    return-void
.end method

.method static bridge synthetic D(Lcom/narvii/wallet/MembershipMainRecyclerFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->logged:Z

    return-void
.end method

.method static bridge synthetic E(Lcom/narvii/wallet/MembershipMainRecyclerFragment;Lcom/android/billingclient/api/Purchase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->purchasedSku:Lcom/android/billingclient/api/Purchase;

    return-void
.end method

.method static bridge synthetic F(Lcom/narvii/wallet/MembershipMainRecyclerFragment;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->waitingForIab:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic G(Lcom/narvii/wallet/MembershipMainRecyclerFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->fetchMembership()V

    return-void
.end method

.method private addCofettiViewToLayout(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a0bf8

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->isNotInstanceOfViewGroup(Landroid/view/View;)Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    check-cast p1, Landroid/view/ViewGroup;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->cofettiView:Lcom/narvii/widget/cofetti/CofettiView;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 21
    return-void

    .line 22
    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 24
    .line 25
    .line 26
    const-string/jumbo v0, "targetView must be ViewGroup"

    .line 27
    .line 28
    .line 29
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 30
    throw p1
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

.method private static createMembershipLayout(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0d02f0

    .line 4
    const/4 v1, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method private fetchMembership()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->prepareMembershipRequest()Lcom/narvii/util/http/ApiRequest;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    const-string v1, "api"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 16
    .line 17
    new-instance v2, Lcom/narvii/wallet/MembershipMainRecyclerFragment$3;

    .line 18
    .line 19
    const-class v3, Lcom/narvii/wallet/MembershipResponse;

    .line 20
    .line 21
    .line 22
    invoke-direct {v2, p0, v3}, Lcom/narvii/wallet/MembershipMainRecyclerFragment$3;-><init>(Lcom/narvii/wallet/MembershipMainRecyclerFragment;Ljava/lang/Class;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 26
    return-void
.end method

.method private getMembershipService()Lcom/narvii/wallet/MembershipService;
    .locals 1

    .line 1
    .line 2
    const-string v0, "membership"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/wallet/MembershipService;

    .line 9
    return-object v0
.end method

.method private getStatusExpiredText(I)Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    const v0, 0x7f120c88

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x1

    .line 16
    .line 17
    if-ne p1, v0, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    const v0, 0x7f120c89

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :cond_1
    if-le p1, v0, :cond_2

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    new-array v0, v0, [Ljava/lang/Object;

    .line 38
    const/4 v2, 0x0

    .line 39
    .line 40
    .line 41
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    aput-object p1, v0, v2

    .line 45
    .line 46
    .line 47
    const p1, 0x7f120c8a

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    move-result-object p1

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    const/4 p1, 0x0

    .line 54
    :goto_0
    return-object p1
.end method

.method private getStatusWillExpireText(I)Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    const v0, 0x7f120c8b

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x1

    .line 16
    .line 17
    if-ne p1, v0, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    const v0, 0x7f120c8c

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :cond_1
    if-lez p1, :cond_2

    .line 32
    .line 33
    const/16 v1, 0xe

    .line 34
    .line 35
    if-gt p1, v1, :cond_2

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    new-array v0, v0, [Ljava/lang/Object;

    .line 42
    const/4 v2, 0x0

    .line 43
    .line 44
    .line 45
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    aput-object p1, v0, v2

    .line 49
    .line 50
    .line 51
    const p1, 0x7f120c8d

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    move-result-object p1

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    const/4 p1, 0x0

    .line 58
    :goto_0
    return-object p1
.end method

.method private hasAMembershipAutoRenew()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membershipIsNotNull()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->userHasAnActiveMembership()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->isMembershipAutoRenew()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->isPremiumItemMembership()Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    const/4 v0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    :goto_0
    return v0
.end method

.method private hasNotMembershipStatus()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membershipIsNull()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membershipHasNoExpiiredTime()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->isMembershipAutoRenew()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 23
    :goto_1
    return v0
.end method

.method private static inflateCofettiView(Landroid/view/LayoutInflater;Landroid/view/View;)Lcom/narvii/widget/cofetti/CofettiView;
    .locals 2
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a0bf8

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    check-cast p1, Landroid/view/ViewGroup;

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    .line 13
    const v1, 0x7f0d00f9

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 17
    move-result-object p0

    .line 18
    .line 19
    check-cast p0, Lcom/narvii/widget/cofetti/CofettiView;

    .line 20
    return-object p0
.end method

.method private initMembership()V
    .locals 6

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/wallet/MembershipStatus;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/wallet/MembershipStatus;-><init>()V

    .line 6
    .line 7
    iput-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membership:Lcom/narvii/wallet/MembershipStatus;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->getMembershipService()Lcom/narvii/wallet/MembershipService;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->getMembershipStatus()Ljava/lang/Integer;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    iget-object v2, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membership:Lcom/narvii/wallet/MembershipStatus;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 23
    move-result v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v1, 0x0

    .line 26
    .line 27
    :goto_0
    iput v1, v2, Lcom/narvii/wallet/MembershipStatus;->membershipStatus:I

    .line 28
    .line 29
    const-string v1, "prefs"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    check-cast v1, Landroid/content/SharedPreferences;

    .line 36
    .line 37
    const-string v2, "membershipCreatedTime"

    .line 38
    .line 39
    const-wide/16 v3, 0x0

    .line 40
    .line 41
    .line 42
    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 43
    move-result-wide v1

    .line 44
    .line 45
    iget-object v5, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membership:Lcom/narvii/wallet/MembershipStatus;

    .line 46
    .line 47
    cmp-long v3, v1, v3

    .line 48
    .line 49
    if-lez v3, :cond_1

    .line 50
    .line 51
    new-instance v3, Ljava/util/Date;

    .line 52
    .line 53
    .line 54
    invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    const/4 v3, 0x0

    .line 57
    .line 58
    :goto_1
    iput-object v3, v5, Lcom/narvii/wallet/MembershipStatus;->createdTime:Ljava/util/Date;

    .line 59
    .line 60
    iget-object v1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membership:Lcom/narvii/wallet/MembershipStatus;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->isAutoRenew()Z

    .line 64
    move-result v0

    .line 65
    .line 66
    iput-boolean v0, v1, Lcom/narvii/wallet/MembershipStatus;->isAutoRenew:Z

    .line 67
    return-void
.end method

.method private isMembershipAutoRenew()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membership:Lcom/narvii/wallet/MembershipStatus;

    .line 3
    .line 4
    iget-boolean v0, v0, Lcom/narvii/wallet/MembershipStatus;->isAutoRenew:Z

    .line 5
    return v0
.end method

.method private isMembershipCreatedToday()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membership:Lcom/narvii/wallet/MembershipStatus;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/wallet/MembershipStatus;->createdTime:Ljava/util/Date;

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/util/DateUtils;->isToday(Ljava/util/Date;)Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method private isMembershipStatusNone()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membership:Lcom/narvii/wallet/MembershipStatus;

    .line 3
    .line 4
    iget v0, v0, Lcom/narvii/wallet/MembershipStatus;->membershipStatus:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method private static isNotInstanceOfViewGroup(Landroid/view/View;)Z
    .locals 0

    .line 1
    .line 2
    instance-of p0, p0, Landroid/view/ViewGroup;

    .line 3
    .line 4
    xor-int/lit8 p0, p0, 0x1

    .line 5
    return p0
.end method

.method private isPremiumItemMembership()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membership:Lcom/narvii/wallet/MembershipStatus;

    .line 3
    .line 4
    iget-boolean v0, v0, Lcom/narvii/wallet/MembershipStatus;->isPremiumItemMembership:Z

    .line 5
    return v0
.end method

.method private isUserIDNull(Lcom/narvii/account/AccountService;)Z
    .locals 0

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    return p1
.end method

.method private synthetic lambda$setupBilling$0(Lcom/narvii/account/AccountService;Ljava/util/List;)Lw7/l0;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->searchForPurchase(Lcom/narvii/account/AccountService;Ljava/util/List;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    return-object p1
.end method

.method private synthetic lambda$setupBilling$1(Lcom/narvii/wallet/BillingManager;Lcom/narvii/account/AccountService;Lcom/android/billingclient/api/h;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/narvii/wallet/BillingManager;->getBillingState()Lcom/narvii/wallet/BillingState;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/narvii/wallet/BillingState;->isConnected()Z

    .line 8
    move-result p1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    sget-object p1, Lcom/narvii/wallet/MembershipBillingManager;->INSTANCE:Lcom/narvii/wallet/MembershipBillingManager;

    .line 13
    .line 14
    new-instance p3, Lcom/narvii/wallet/r;

    .line 15
    .line 16
    .line 17
    invoke-direct {p3, p0, p2}, Lcom/narvii/wallet/r;-><init>(Lcom/narvii/wallet/MembershipMainRecyclerFragment;Lcom/narvii/account/AccountService;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p3}, Lcom/narvii/wallet/MembershipBillingManager;->querySubsPurchases(Le8/l;)V

    .line 21
    .line 22
    iget-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->waitingForIab:Ljava/lang/Runnable;

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    sget-object p2, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 30
    .line 31
    iget-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->waitingForIab:Ljava/lang/Runnable;

    .line 32
    .line 33
    .line 34
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 35
    const/4 p1, 0x0

    .line 36
    .line 37
    iput-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->waitingForIab:Ljava/lang/Runnable;

    .line 38
    :cond_0
    return-void
.end method

.method private synthetic lambda$showCofetti$3()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->cofettiView:Lcom/narvii/widget/cofetti/CofettiView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/widget/cofetti/CofettiView;->fire()V

    .line 6
    return-void
.end method

.method private synthetic lambda$switchAutoRenew$4(Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->updateHeader()V

    .line 4
    return-void
.end method

.method private synthetic lambda$switchAutoRenew$5(Landroid/view/View;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, v0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->switchAutoRenew(Landroid/view/View;Z)V

    .line 5
    return-void
.end method

.method private synthetic lambda$switchAutoRenew$6(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->updateHeader()V

    .line 4
    return-void
.end method

.method private static synthetic lambda$updateHeader$2(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private makeHeaderVisible()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->header:Landroid/view/View;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    return-void
.end method

.method private membershipCreatedTimeIsNull()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membership:Lcom/narvii/wallet/MembershipStatus;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/wallet/MembershipStatus;->createdTime:Ljava/util/Date;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method private membershipExpiredTimeIsNotNull()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membership:Lcom/narvii/wallet/MembershipStatus;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/wallet/MembershipStatus;->expiredTime:Ljava/util/Date;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method private membershipHasNoExpiiredTime()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membership:Lcom/narvii/wallet/MembershipStatus;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/wallet/MembershipStatus;->expiredTime:Ljava/util/Date;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method private membershipIsActiveAndNotPremium()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->userHasAnActiveMembership()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->isPremiumItemMembership()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method private membershipIsNotActiveAndThereIsNoCreatedTime()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->isMembershipStatusNone()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membershipCreatedTimeIsNull()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method private membershipIsNotCreated()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->isMembershipStatusNone()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membershipCreatedTimeIsNull()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method private membershipIsNotNull()Z
    .locals 1

    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membership:Lcom/narvii/wallet/MembershipStatus;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private membershipIsNull()Z
    .locals 1

    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membership:Lcom/narvii/wallet/MembershipStatus;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private membershipIsPremiumAndIsNotCreatedToday()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membershipIsNotNull()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->isPremiumItemMembership()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->isMembershipCreatedToday()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    return v0
.end method

.method private membershipNotAutoRenewExpired()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membershipIsNotNull()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->isMembershipAutoRenew()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membershipExpiredTimeIsNotNull()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    return v0
.end method

.method private premiumMembershipWasCreatedToday()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->isPremiumItemMembership()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->isMembershipCreatedToday()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method private prepareMembershipRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->purchasedSku:Lcom/android/billingclient/api/Purchase;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->d()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->createObjectNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    const-string v2, "/membership/product/subscribe"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    iget-object v2, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->purchasedSku:Lcom/android/billingclient/api/Purchase;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/android/billingclient/api/Purchase;->j()Ljava/util/ArrayList;

    .line 32
    move-result-object v2

    .line 33
    const/4 v3, 0x0

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    const-string v3, "sku"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 47
    move-result-object v2

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 51
    move-result-object v2

    .line 52
    .line 53
    const-string v3, "packageName"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 57
    move-result-object v1

    .line 58
    const/4 v2, 0x5

    .line 59
    .line 60
    .line 61
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    move-result-object v2

    .line 63
    .line 64
    const-string v3, "paymentType"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 68
    move-result-object v1

    .line 69
    .line 70
    const-string v2, "paymentContext"

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    const-string v1, "purchased"

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 80
    move-result-object v0

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 84
    move-result-object v0

    .line 85
    return-object v0

    .line 86
    .line 87
    :cond_0
    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->waitingForIab:Ljava/lang/Runnable;

    .line 88
    .line 89
    if-eqz v0, :cond_1

    .line 90
    const/4 v0, 0x0

    .line 91
    return-object v0

    .line 92
    .line 93
    .line 94
    :cond_1
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 95
    move-result-object v0

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 99
    move-result-object v0

    .line 100
    .line 101
    const-string v1, "/membership"

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 105
    move-result-object v0

    .line 106
    .line 107
    const-string v1, "force"

    .line 108
    .line 109
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 113
    move-result-object v0

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 117
    move-result-object v0

    .line 118
    return-object v0
.end method

.method private refreshData()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->mergeAdapter:Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->refresh(ILcom/narvii/paging/source/PageRequestCallback;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->fetchMembership()V

    .line 17
    :cond_0
    return-void
.end method

.method private registerBroadcastReceiver()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 3
    .line 4
    new-instance v1, Landroid/content/IntentFilter;

    .line 5
    .line 6
    const-string v2, "com.narvii.action.MEMBERSHIP_CHANGED"

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 15
    .line 16
    new-instance v1, Landroid/content/IntentFilter;

    .line 17
    .line 18
    const-string v2, "com.narvii.action.PURCHASED_SUB_CHANGED"

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 25
    return-void
.end method

.method private rippleViewIsNotNull()Z
    .locals 1

    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->rippledView:Lcom/narvii/widget/NVDrawableAnimatedView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private rippleViewLayerCountInsideRange()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->rippledView:Lcom/narvii/widget/NVDrawableAnimatedView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/widget/NVDrawableAnimatedView;->getLayerCount()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x4

    .line 8
    .line 9
    if-ge v0, v1, :cond_0

    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return v0
.end method

.method public static synthetic s(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->lambda$updateHeader$2(Landroid/view/View;)V

    return-void
.end method

.method private searchForPurchase(Lcom/narvii/account/AccountService;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/account/AccountService;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/wallet/IabUtils;->PURCHASE_COMPARATOR_R:Ljava/util/Comparator;

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p2

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    .line 18
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    check-cast v0, Lcom/android/billingclient/api/Purchase;

    .line 22
    .line 23
    sget-object v1, Lcom/narvii/wallet/BillingManager;->INSTANCE:Lcom/narvii/wallet/BillingManager;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v0, v2}, Lcom/narvii/wallet/BillingManager;->checkPurchaseForAminoId(Lcom/android/billingclient/api/Purchase;Ljava/lang/String;)Z

    .line 31
    move-result v1

    .line 32
    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    iput-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->purchasedSku:Lcom/android/billingclient/api/Purchase;

    .line 36
    .line 37
    iget-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->waitingForIab:Ljava/lang/Runnable;

    .line 38
    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    sget-object p2, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 45
    const/4 p1, 0x0

    .line 46
    .line 47
    iput-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->waitingForIab:Ljava/lang/Runnable;

    .line 48
    .line 49
    .line 50
    :cond_1
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->refreshData()V

    .line 51
    :cond_2
    return-void
.end method

.method private sendFirebaseEvent(Lcom/narvii/app/NVContext;)V
    .locals 2

    .line 1
    .line 2
    const-string v0, "enters_membership"

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0, v1}, Lcom/narvii/util/statistics/FirebaseLogManager;->logEvent(Lcom/narvii/app/NVContext;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    return-void
.end method

.method private sendStatisticsEvent()V
    .locals 3

    .line 1
    .line 2
    const-string v0, "statistics"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/util/statistics/StatisticsService;

    .line 9
    .line 10
    const-string v1, "Membership Page"

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    const-string v1, "Source"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    const-string v1, "Membership Page Total"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 30
    return-void
.end method

.method private sendStatisticsEventIfRequired(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->sendStatisticsEvent()V

    .line 6
    :cond_0
    return-void
.end method

.method private setActionAndStatusBarBgColor(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->fakeActionBar:Lcom/narvii/nested/FakeActionBar;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->statusBarPlaceHolder:Lcom/narvii/widget/StatusBarPlaceHolder;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 15
    :cond_1
    return-void
.end method

.method private setBackgroundColor(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->header:Landroid/view/View;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 6
    return-void
.end method

.method private setVisibilityOfView(Landroid/view/View;Z)V
    .locals 0

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    if-eqz p2, :cond_1

    .line 6
    const/4 p2, 0x0

    .line 7
    goto :goto_0

    .line 8
    .line 9
    :cond_1
    const/16 p2, 0x8

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 13
    return-void
.end method

.method private setupAvatarLayout(ZZLcom/narvii/model/User;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->header:Landroid/view/View;

    .line 3
    .line 4
    .line 5
    const v1, 0x7f0a0f36

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    .line 12
    const/4 v1, 0x1

    .line 13
    xor-int/2addr p1, v1

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0, p1}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->setVisibilityOfView(Landroid/view/View;Z)V

    .line 17
    .line 18
    xor-int/lit8 p1, p2, 0x1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lcom/narvii/widget/UserAvatarLayout;->setNoBadge(Z)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    const v2, 0x7f070090

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 32
    move-result p1

    .line 33
    .line 34
    const-string v2, "#60000000"

    .line 35
    .line 36
    .line 37
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 38
    move-result v2

    .line 39
    const/4 v3, 0x0

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p1, v2, v3}, Lcom/narvii/widget/UserAvatarLayout;->setAvatarShadow(IIZ)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/narvii/widget/UserAvatarLayout;->markAvatarFrameHide(Z)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p3, p2}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;Z)V

    .line 49
    return-void
.end method

.method private setupBilling()V
    .locals 4

    .line 1
    .line 2
    const-string v0, "account"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->isUserIDNull(Lcom/narvii/account/AccountService;)Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    return-void

    .line 16
    .line 17
    :cond_0
    sget-object v1, Lcom/narvii/wallet/BillingManager;->INSTANCE:Lcom/narvii/wallet/BillingManager;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/narvii/wallet/BillingManager;->getSetupFinished()Landroidx/lifecycle/LiveData;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    new-instance v3, Lcom/narvii/wallet/n;

    .line 24
    .line 25
    .line 26
    invoke-direct {v3, p0, v1, v0}, Lcom/narvii/wallet/n;-><init>(Lcom/narvii/wallet/MembershipMainRecyclerFragment;Lcom/narvii/wallet/BillingManager;Lcom/narvii/account/AccountService;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, p0, v3}, Landroidx/lifecycle/LiveData;->i(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 30
    .line 31
    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->waitingForIab:Ljava/lang/Runnable;

    .line 32
    .line 33
    const-wide/16 v1, 0x190

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 37
    return-void
.end method

.method private setupMembershipCard(IFLandroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    if-eqz p3, :cond_3

    .line 3
    .line 4
    .line 5
    invoke-virtual {p3, p2}, Landroid/view/View;->setCameraDistance(F)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    .line 10
    iget p2, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->cardSide:I

    .line 11
    .line 12
    if-nez p2, :cond_0

    .line 13
    const/4 p2, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p2, 0x0

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-virtual {p3, p2}, Landroid/view/View;->setClickable(Z)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 22
    move-result-object p2

    .line 23
    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    const/high16 v0, 0x42480000    # 50.0f

    .line 27
    goto :goto_1

    .line 28
    .line 29
    :cond_1
    const/high16 v0, 0x42c80000    # 100.0f

    .line 30
    .line 31
    .line 32
    :goto_1
    invoke-static {p2, v0}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 33
    move-result p2

    .line 34
    .line 35
    .line 36
    invoke-virtual {p3}, Landroid/view/View;->getPaddingLeft()I

    .line 37
    move-result v0

    .line 38
    .line 39
    .line 40
    invoke-virtual {p3}, Landroid/view/View;->getPaddingTop()I

    .line 41
    move-result v1

    .line 42
    .line 43
    .line 44
    invoke-virtual {p3}, Landroid/view/View;->getPaddingRight()I

    .line 45
    move-result v2

    .line 46
    .line 47
    .line 48
    invoke-virtual {p3, v0, v1, v2, p2}, Landroid/view/View;->setPadding(IIII)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 52
    move-result-object p2

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    if-nez p1, :cond_2

    .line 59
    .line 60
    const/high16 p1, 0x43750000    # 245.0f

    .line 61
    goto :goto_2

    .line 62
    .line 63
    .line 64
    :cond_2
    const p1, 0x43938000    # 295.0f

    .line 65
    .line 66
    .line 67
    :goto_2
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 68
    move-result p1

    .line 69
    .line 70
    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 71
    .line 72
    .line 73
    invoke-virtual {p3, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    :cond_3
    return-void
.end method

.method private setupMembershipCardBg(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->header:Landroid/view/View;

    .line 3
    .line 4
    .line 5
    const v1, 0x7f0a0e01

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Lcom/narvii/widget/ThumbImageView;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 19
    move-result-object v2

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    .line 26
    const v3, 0x7f0807b5

    .line 27
    .line 28
    .line 29
    invoke-static {v1, v3, v2}, Landroidx/core/content/res/ResourcesCompat;->e(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iput-object v1, v0, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 33
    .line 34
    if-eqz p1, :cond_0

    .line 35
    const/4 p1, 0x0

    .line 36
    goto :goto_0

    .line 37
    .line 38
    :cond_0
    const/16 p1, 0x8

    .line 39
    .line 40
    .line 41
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 42
    const/4 p1, 0x0

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    return-void
.end method

.method private setupMembershipHeaderUi(Z)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->header:Landroid/view/View;

    .line 3
    .line 4
    .line 5
    const v1, 0x7f0a094f

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x4

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    move v3, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v3, v1

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->header:Landroid/view/View;

    .line 22
    .line 23
    .line 24
    const v3, 0x7f0a0951

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    move v3, v2

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v3, v1

    .line 34
    .line 35
    .line 36
    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->header:Landroid/view/View;

    .line 39
    .line 40
    .line 41
    const v3, 0x7f0a0950

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    if-nez p1, :cond_2

    .line 48
    move v1, v2

    .line 49
    .line 50
    .line 51
    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 52
    return-void
.end method

.method private setupNickName(ZLcom/narvii/model/User;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->header:Landroid/view/View;

    .line 3
    .line 4
    .line 5
    const v1, 0x7f0a09f9

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Landroid/widget/TextView;

    .line 12
    .line 13
    xor-int/lit8 p1, p1, 0x1

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0, p1}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->setVisibilityOfView(Landroid/view/View;Z)V

    .line 17
    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    iget-object p1, p2, Lcom/narvii/model/User;->nickname:Ljava/lang/String;

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    const-string p1, ""

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    return-void
.end method

.method private setupRippleView()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->rippledView:Lcom/narvii/widget/NVDrawableAnimatedView;

    .line 3
    .line 4
    new-instance v1, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    .line 5
    .line 6
    .line 7
    const v2, 0x7f0807ad

    .line 8
    const/4 v3, 0x5

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v2, v3}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;-><init>(II)V

    .line 12
    .line 13
    const/16 v2, 0x2ee0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->duration(I)Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    const/16 v2, 0x20

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->layerGravity(I)Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    const/high16 v3, 0x41400000    # 12.0f

    .line 30
    .line 31
    .line 32
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 33
    move-result v2

    .line 34
    const/4 v3, 0x0

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v3, v3, v3, v2}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->margin(IIII)Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig$Builder;->build()Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVDrawableAnimatedView;->addLayer(Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;)I

    .line 46
    return-void
.end method

.method private setupSinceView()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->header:Landroid/view/View;

    .line 3
    .line 4
    .line 5
    const v1, 0x7f0a095c

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Landroid/widget/TextView;

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membershipIsNotNull()Z

    .line 15
    move-result v1

    .line 16
    .line 17
    const/16 v2, 0x8

    .line 18
    const/4 v3, 0x0

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->isPremiumItemMembership()Z

    .line 24
    move-result v1

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->isMembershipCreatedToday()Z

    .line 30
    move-result v1

    .line 31
    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 39
    goto :goto_0

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membershipIsNotNull()Z

    .line 43
    move-result v1

    .line 44
    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    .line 48
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->userHasAnActiveMembership()Z

    .line 49
    move-result v1

    .line 50
    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    iget-object v1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membership:Lcom/narvii/wallet/MembershipStatus;

    .line 54
    .line 55
    iget-object v1, v1, Lcom/narvii/wallet/MembershipStatus;->createdTime:Ljava/util/Date;

    .line 56
    .line 57
    if-eqz v1, :cond_1

    .line 58
    .line 59
    .line 60
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->isPremiumItemMembership()Z

    .line 61
    move-result v1

    .line 62
    .line 63
    if-nez v1, :cond_1

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 67
    move-result-object v1

    .line 68
    const/4 v2, 0x1

    .line 69
    .line 70
    new-array v3, v2, [Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    invoke-static {v2}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    .line 74
    move-result-object v2

    .line 75
    .line 76
    iget-object v4, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membership:Lcom/narvii/wallet/MembershipStatus;

    .line 77
    .line 78
    iget-object v4, v4, Lcom/narvii/wallet/MembershipStatus;->createdTime:Ljava/util/Date;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 82
    move-result-object v2

    .line 83
    const/4 v4, 0x0

    .line 84
    .line 85
    aput-object v2, v3, v4

    .line 86
    .line 87
    .line 88
    const v2, 0x7f120c85

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 92
    move-result-object v1

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 99
    goto :goto_0

    .line 100
    .line 101
    .line 102
    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 106
    :goto_0
    return-void
.end method

.method private setupSubscribeText(I)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->header:Landroid/view/View;

    .line 3
    .line 4
    .line 5
    const v1, 0x7f0a0e05

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Landroid/widget/TextView;

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    iget-object v2, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->subscribeBenefitsText:Landroid/widget/TextView;

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    goto :goto_0

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 29
    .line 30
    iget-object v1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->subscribeBenefitsText:Landroid/widget/TextView;

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    .line 36
    .line 37
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 38
    const/4 p1, 0x1

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    const/4 p1, 0x0

    .line 41
    .line 42
    .line 43
    :goto_1
    invoke-direct {p0, v0, p1}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->setVisibilityOfView(Landroid/view/View;Z)V

    .line 44
    return-void
.end method

.method private setupUiForMembership(Landroid/widget/ImageView;Lcom/narvii/widget/ThumbImageView;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "#AADD5C0E"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, v0}, Lcom/narvii/widget/ThumbImageView;->setShadowColor(I)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->rippleViewIsNotNull()Z

    .line 13
    move-result p2

    .line 14
    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    iget-object p2, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->rippledView:Lcom/narvii/widget/NVDrawableAnimatedView;

    .line 18
    const/4 v0, 0x0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    :cond_0
    iget-object p2, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->starBlinkingView:Lcom/narvii/widget/RandomBlinkingView;

    .line 24
    .line 25
    if-eqz p2, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Lcom/narvii/widget/RandomBlinkingView;->enable()V

    .line 29
    .line 30
    :cond_1
    const/16 p2, 0x8

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 34
    return-void
.end method

.method private setupUiForNoMembership(Landroid/widget/ImageView;Lcom/narvii/widget/ThumbImageView;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "#66000000"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, v0}, Lcom/narvii/widget/ThumbImageView;->setShadowColor(I)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->rippleViewIsNotNull()Z

    .line 13
    move-result p2

    .line 14
    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    iget-object p2, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->rippledView:Lcom/narvii/widget/NVDrawableAnimatedView;

    .line 18
    .line 19
    const/16 v0, 0x8

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    :cond_0
    iget-object p2, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->starBlinkingView:Lcom/narvii/widget/RandomBlinkingView;

    .line 25
    .line 26
    if-eqz p2, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Lcom/narvii/widget/RandomBlinkingView;->disable()V

    .line 30
    :cond_1
    const/4 p2, 0x0

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 34
    return-void
.end method

.method private showSubscribe()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    const v1, 0x7f010037

    .line 12
    .line 13
    .line 14
    const v2, 0x7f010039

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->y(II)Landroidx/fragment/app/FragmentTransaction;

    .line 18
    .line 19
    new-instance v1, Lcom/narvii/wallet/MembershipSubscribeFragment;

    .line 20
    .line 21
    .line 22
    invoke-direct {v1}, Lcom/narvii/wallet/MembershipSubscribeFragment;-><init>()V

    .line 23
    .line 24
    .line 25
    const v2, 0x1020002

    .line 26
    .line 27
    .line 28
    const-string/jumbo v3, "subscribe"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v2, v1, v3}, Landroidx/fragment/app/FragmentTransaction;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v3}, Landroidx/fragment/app/FragmentTransaction;->h(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 38
    .line 39
    .line 40
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->getMembershipService()Lcom/narvii/wallet/MembershipService;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->freeTrial()Z

    .line 45
    move-result v0

    .line 46
    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    const-string v0, "Trial"

    .line 50
    goto :goto_0

    .line 51
    .line 52
    :cond_0
    const-string v0, "Join Amino+"

    .line 53
    .line 54
    .line 55
    :goto_0
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membershipIsNotNull()Z

    .line 56
    move-result v1

    .line 57
    .line 58
    if-eqz v1, :cond_1

    .line 59
    .line 60
    .line 61
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->userHasAnActiveMembership()Z

    .line 62
    move-result v1

    .line 63
    .line 64
    if-eqz v1, :cond_1

    .line 65
    .line 66
    .line 67
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->isMembershipAutoRenew()Z

    .line 68
    move-result v1

    .line 69
    .line 70
    if-eqz v1, :cond_1

    .line 71
    goto :goto_1

    .line 72
    .line 73
    .line 74
    :cond_1
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membershipIsNotNull()Z

    .line 75
    move-result v1

    .line 76
    .line 77
    if-eqz v1, :cond_2

    .line 78
    .line 79
    .line 80
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->isMembershipAutoRenew()Z

    .line 81
    move-result v1

    .line 82
    .line 83
    if-nez v1, :cond_2

    .line 84
    .line 85
    .line 86
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membershipExpiredTimeIsNotNull()Z

    .line 87
    move-result v1

    .line 88
    .line 89
    if-eqz v1, :cond_2

    .line 90
    .line 91
    const-string v0, "Renew"

    .line 92
    .line 93
    :cond_2
    :goto_1
    const-string v1, "statistics"

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 97
    move-result-object v1

    .line 98
    .line 99
    check-cast v1, Lcom/narvii/util/statistics/StatisticsService;

    .line 100
    .line 101
    const-string v2, "Membership Prices"

    .line 102
    .line 103
    .line 104
    invoke-interface {v1, v2}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 105
    move-result-object v1

    .line 106
    .line 107
    const-string v2, "Type"

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v2, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 111
    return-void
.end method

.method private switchAutoRenew(Landroid/view/View;Z)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membershipIsNotNull()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membership:Lcom/narvii/wallet/MembershipStatus;

    .line 9
    .line 10
    iget v0, v0, Lcom/narvii/wallet/MembershipStatus;->paymentType:I

    .line 11
    const/4 v1, 0x1

    .line 12
    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->isMembershipAutoRenew()Z

    .line 17
    move-result v0

    .line 18
    const/4 v2, 0x0

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    if-nez p2, :cond_0

    .line 23
    .line 24
    new-instance p1, Lcom/narvii/util/dialog/AlertDialog;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 28
    move-result-object p2

    .line 29
    .line 30
    .line 31
    invoke-direct {p1, p2}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    const p2, 0x7f120f72

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setTitle(I)V

    .line 38
    .line 39
    .line 40
    const p2, 0x7f120c84

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p2}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(I)V

    .line 44
    .line 45
    new-instance p2, Lcom/narvii/wallet/o;

    .line 46
    .line 47
    .line 48
    invoke-direct {p2, p0}, Lcom/narvii/wallet/o;-><init>(Lcom/narvii/wallet/MembershipMainRecyclerFragment;)V

    .line 49
    .line 50
    .line 51
    const v0, 0x7f1201e2

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0, v2, p2}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 55
    .line 56
    new-instance p2, Lcom/narvii/wallet/p;

    .line 57
    .line 58
    .line 59
    invoke-direct {p2, p0}, Lcom/narvii/wallet/p;-><init>(Lcom/narvii/wallet/MembershipMainRecyclerFragment;)V

    .line 60
    .line 61
    .line 62
    const v0, 0x7f1212a7

    .line 63
    .line 64
    const/16 v1, 0x8

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0, v1, p2}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 68
    .line 69
    new-instance p2, Lcom/narvii/wallet/q;

    .line 70
    .line 71
    .line 72
    invoke-direct {p2, p0}, Lcom/narvii/wallet/q;-><init>(Lcom/narvii/wallet/MembershipMainRecyclerFragment;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 79
    return-void

    .line 80
    .line 81
    .line 82
    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 83
    .line 84
    .line 85
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 86
    move-result-object p2

    .line 87
    .line 88
    .line 89
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->isMembershipAutoRenew()Z

    .line 90
    move-result v0

    .line 91
    xor-int/2addr v0, v1

    .line 92
    .line 93
    const-string v2, "isAutoRenew"

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2, v2, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 97
    .line 98
    .line 99
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 100
    move-result-object v0

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 104
    move-result-object v0

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 108
    move-result-object v0

    .line 109
    .line 110
    const-string v2, "/membership/config"

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 114
    move-result-object v0

    .line 115
    .line 116
    const-string v2, "paymentType"

    .line 117
    .line 118
    .line 119
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    move-result-object v1

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 124
    move-result-object v0

    .line 125
    .line 126
    const-string v1, "paymentContext"

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 130
    move-result-object p2

    .line 131
    .line 132
    .line 133
    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 134
    move-result-object p2

    .line 135
    .line 136
    const-string v0, "api"

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 140
    move-result-object v0

    .line 141
    .line 142
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 143
    .line 144
    new-instance v1, Lcom/narvii/wallet/MembershipMainRecyclerFragment$6;

    .line 145
    .line 146
    const-class v2, Lcom/narvii/wallet/MembershipResponse;

    .line 147
    .line 148
    .line 149
    invoke-direct {v1, p0, v2, p1}, Lcom/narvii/wallet/MembershipMainRecyclerFragment$6;-><init>(Lcom/narvii/wallet/MembershipMainRecyclerFragment;Ljava/lang/Class;Landroid/view/View;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, p2, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 153
    .line 154
    .line 155
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->isMembershipAutoRenew()Z

    .line 156
    move-result p1

    .line 157
    .line 158
    if-eqz p1, :cond_1

    .line 159
    .line 160
    const-string p1, "statistics"

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 164
    move-result-object p1

    .line 165
    .line 166
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 167
    .line 168
    const-string p2, "Turns Off Auto Renew"

    .line 169
    .line 170
    .line 171
    invoke-interface {p1, p2}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 172
    move-result-object p1

    .line 173
    .line 174
    const-string p2, "Turns Off Auto Renew Total"

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 178
    :cond_1
    return-void
.end method

.method public static synthetic t(Lcom/narvii/wallet/MembershipMainRecyclerFragment;Lcom/narvii/wallet/BillingManager;Lcom/narvii/account/AccountService;Lcom/android/billingclient/api/h;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->lambda$setupBilling$1(Lcom/narvii/wallet/BillingManager;Lcom/narvii/account/AccountService;Lcom/android/billingclient/api/h;)V

    return-void
.end method

.method public static synthetic u(Lcom/narvii/wallet/MembershipMainRecyclerFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->lambda$showCofetti$3()V

    return-void
.end method

.method private updateAutoRenewableUi(Z)V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->header:Landroid/view/View;

    .line 3
    .line 4
    .line 5
    const v1, 0x7f0a094a

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x4

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    move v3, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v3, v1

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->header:Landroid/view/View;

    .line 22
    .line 23
    .line 24
    const v3, 0x7f0a0949

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    check-cast v0, Landroid/widget/CheckBox;

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membershipIsNotNull()Z

    .line 34
    move-result v4

    .line 35
    const/4 v5, 0x1

    .line 36
    .line 37
    if-eqz v4, :cond_1

    .line 38
    .line 39
    .line 40
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->isMembershipAutoRenew()Z

    .line 41
    move-result v4

    .line 42
    .line 43
    if-eqz v4, :cond_1

    .line 44
    move v4, v5

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    move v4, v2

    .line 47
    .line 48
    .line 49
    :goto_1
    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 50
    .line 51
    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->header:Landroid/view/View;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    if-eqz p1, :cond_2

    .line 58
    move v1, v2

    .line 59
    .line 60
    .line 61
    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 62
    .line 63
    iget-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->header:Landroid/view/View;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    .line 72
    iget-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->header:Landroid/view/View;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    iget v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->cardSide:I

    .line 79
    .line 80
    if-ne v0, v5, :cond_3

    .line 81
    move v2, v5

    .line 82
    .line 83
    .line 84
    :cond_3
    invoke-virtual {p1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 85
    return-void
.end method

.method private updateMembershipStartDate()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->header:Landroid/view/View;

    .line 3
    .line 4
    .line 5
    const v1, 0x7f0a095d

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Landroid/widget/TextView;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->header:Landroid/view/View;

    .line 14
    .line 15
    .line 16
    const v2, 0x7f0a095e

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    check-cast v1, Landroid/widget/TextView;

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membershipIsNotNull()Z

    .line 26
    move-result v2

    .line 27
    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->userHasAnActiveMembership()Z

    .line 32
    move-result v2

    .line 33
    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    iget-object v2, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membership:Lcom/narvii/wallet/MembershipStatus;

    .line 37
    .line 38
    iget-object v2, v2, Lcom/narvii/wallet/MembershipStatus;->createdTime:Ljava/util/Date;

    .line 39
    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    .line 43
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->isPremiumItemMembership()Z

    .line 44
    move-result v2

    .line 45
    .line 46
    if-nez v2, :cond_0

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 50
    move-result-object v2

    .line 51
    .line 52
    .line 53
    const v3, 0x7f120c9a

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 57
    move-result-object v2

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    const/4 v0, 0x2

    .line 62
    .line 63
    .line 64
    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    iget-object v2, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membership:Lcom/narvii/wallet/MembershipStatus;

    .line 68
    .line 69
    iget-object v2, v2, Lcom/narvii/wallet/MembershipStatus;->createdTime:Ljava/util/Date;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    goto :goto_0

    .line 78
    :cond_0
    const/4 v2, 0x0

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    :goto_0
    return-void
.end method

.method private userHasAnActiveMembership()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membership:Lcom/narvii/wallet/MembershipStatus;

    .line 3
    .line 4
    iget v0, v0, Lcom/narvii/wallet/MembershipStatus;->membershipStatus:I

    .line 5
    .line 6
    if-lez v0, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public static synthetic v(Lcom/narvii/wallet/MembershipMainRecyclerFragment;Lcom/narvii/account/AccountService;Ljava/util/List;)Lw7/l0;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->lambda$setupBilling$0(Lcom/narvii/account/AccountService;Ljava/util/List;)Lw7/l0;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w(Lcom/narvii/wallet/MembershipMainRecyclerFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->lambda$switchAutoRenew$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic x(Lcom/narvii/wallet/MembershipMainRecyclerFragment;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->lambda$switchAutoRenew$6(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic y(Lcom/narvii/wallet/MembershipMainRecyclerFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->lambda$switchAutoRenew$4(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic z(Lcom/narvii/wallet/MembershipMainRecyclerFragment;)Lcom/narvii/wallet/membership/MembershipDataAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->adapter:Lcom/narvii/wallet/membership/MembershipDataAdapter;

    return-object p0
.end method


# virtual methods
.method protected createAdapter()Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    iput-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->mergeAdapter:Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;

    .line 8
    .line 9
    new-instance v0, Lcom/narvii/wallet/membership/MembershipDataAdapter;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p0}, Lcom/narvii/wallet/membership/MembershipDataAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->adapter:Lcom/narvii/wallet/membership/MembershipDataAdapter;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->mergeAdapter:Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v0}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->addAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->fetchMembership()V

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->mergeAdapter:Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;

    .line 25
    return-object v0
.end method

.method public flipCard()V
    .locals 5

    iget v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->cardSide:I

    const/4 v1, -0x1

    const v2, 0x7f0a094c

    const v3, 0x7f0a094b

    if-nez v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v4, 0x7f020003

    invoke-static {v0, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->header:Landroid/view/View;

    .line 2
    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 4
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f020002

    invoke-static {v0, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->header:Landroid/view/View;

    .line 5
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 6
    new-instance v2, Lcom/narvii/wallet/MembershipMainRecyclerFragment$4;

    invoke-direct {v2, p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment$4;-><init>(Lcom/narvii/wallet/MembershipMainRecyclerFragment;)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 7
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iput v1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->cardSide:I

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v4, 0x7f020004

    invoke-static {v0, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->header:Landroid/view/View;

    .line 9
    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 10
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 11
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f020005

    invoke-static {v0, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->header:Landroid/view/View;

    .line 12
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 13
    new-instance v2, Lcom/narvii/wallet/MembershipMainRecyclerFragment$5;

    invoke-direct {v2, p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment$5;-><init>(Lcom/narvii/wallet/MembershipMainRecyclerFragment;)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 14
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iput v1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->cardSide:I

    :cond_1
    :goto_0
    return-void
.end method

.method flipCard(Z)V
    .locals 2

    iget v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->cardSide:I

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 15
    invoke-virtual {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->flipCard()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_1

    .line 16
    invoke-virtual {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->flipCard()V

    :cond_1
    :goto_0
    return-void
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f13000a

    return v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "membership_detail"

    return-object v0
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    sparse-switch v0, :sswitch_data_0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    .line 11
    :sswitch_0
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->showSubscribe()V

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :sswitch_1
    invoke-virtual {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->flipCard()V

    .line 16
    goto :goto_0

    .line 17
    :sswitch_2
    const/4 v0, 0x0

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, p1, v0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->switchAutoRenew(Landroid/view/View;Z)V

    .line 21
    :goto_0
    return-void

    .line 22
    nop

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    :sswitch_data_0
    .sparse-switch
        0x7f0a0949 -> :sswitch_2
        0x7f0a094b -> :sswitch_1
        0x7f0a094c -> :sswitch_1
        0x7f0a0e00 -> :sswitch_0
        0x7f0a0e01 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f120c5c

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->setupBilling()V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->registerBroadcastReceiver()V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, p1}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->sendStatisticsEventIfRequired(Landroid/os/Bundle;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->sendFirebaseEvent(Lcom/narvii/app/NVContext;)V

    .line 22
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->createMembershipLayout(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    .line 7
    invoke-static {p1, p2}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->inflateCofettiView(Landroid/view/LayoutInflater;Landroid/view/View;)Lcom/narvii/widget/cofetti/CofettiView;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->cofettiView:Lcom/narvii/widget/cofetti/CofettiView;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p2}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->addCofettiViewToLayout(Landroid/view/View;)V

    .line 14
    return-object p2
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->waitingForIab:Ljava/lang/Runnable;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    sget-object v1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->waitingForIab:Ljava/lang/Runnable;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 18
    .line 19
    .line 20
    invoke-super {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->onDestroy()V

    .line 21
    return-void
.end method

.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->subscribeBenefitsText:Landroid/widget/TextView;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p2}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->calculateAlpha(I)F

    .line 8
    move-result p2

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 12
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/paging/NVRecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p2, 0x7f0a0953

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    iput-object p2, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->header:Landroid/view/View;

    .line 13
    .line 14
    .line 15
    const p2, 0x7f0a0126

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object p2

    .line 20
    .line 21
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    .line 22
    .line 23
    iput-object p2, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, p0}, Lcom/google/android/material/appbar/AppBarLayout;->d(Lcom/google/android/material/appbar/AppBarLayout$h;)V

    .line 27
    .line 28
    .line 29
    const p2, 0x7f0a0e00

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    move-result-object p2

    .line 34
    .line 35
    check-cast p2, Landroid/widget/TextView;

    .line 36
    .line 37
    iput-object p2, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->subscribeBenefitsText:Landroid/widget/TextView;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    .line 42
    .line 43
    const p2, 0x7f0a0e05

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    move-result-object p2

    .line 48
    .line 49
    check-cast p2, Landroid/widget/TextView;

    .line 50
    .line 51
    iput-object p2, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->subscribeHeaderText:Landroid/widget/TextView;

    .line 52
    .line 53
    .line 54
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->initMembership()V

    .line 55
    .line 56
    .line 57
    const p2, 0x7f0a0e12

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    move-result-object p2

    .line 62
    .line 63
    check-cast p2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 64
    .line 65
    iput-object p2, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 66
    const/4 v0, 0x0

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 70
    .line 71
    .line 72
    const p2, 0x7f0a0d81

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 76
    move-result-object p2

    .line 77
    .line 78
    check-cast p2, Lcom/narvii/widget/RandomBlinkingView;

    .line 79
    .line 80
    iput-object p2, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->starBlinkingView:Lcom/narvii/widget/RandomBlinkingView;

    .line 81
    .line 82
    .line 83
    const p2, 0x7f0a0550

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 87
    move-result-object p2

    .line 88
    .line 89
    check-cast p2, Lcom/narvii/nested/FakeActionBar;

    .line 90
    .line 91
    iput-object p2, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->fakeActionBar:Lcom/narvii/nested/FakeActionBar;

    .line 92
    .line 93
    if-eqz p2, :cond_0

    .line 94
    .line 95
    .line 96
    const v0, 0x7f120c5c

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2, v0}, Lcom/narvii/nested/FakeActionBar;->setTitle(I)V

    .line 100
    .line 101
    .line 102
    :cond_0
    const p2, 0x7f0a0d93

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 106
    move-result-object p1

    .line 107
    .line 108
    check-cast p1, Lcom/narvii/widget/StatusBarPlaceHolder;

    .line 109
    .line 110
    iput-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->statusBarPlaceHolder:Lcom/narvii/widget/StatusBarPlaceHolder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->updateHeader()V

    .line 114
    return-void
.end method

.method public setResponse(Lcom/narvii/wallet/MembershipResponse;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/util/DateTimeFormatter;->parseISO8601(Ljava/lang/String;)Ljava/util/Date;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 12
    move-result-wide v0

    .line 13
    .line 14
    iput-wide v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->responseTime:J

    .line 15
    .line 16
    :cond_0
    iget-object v0, p1, Lcom/narvii/wallet/MembershipResponse;->membership:Lcom/narvii/wallet/MembershipStatus;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membership:Lcom/narvii/wallet/MembershipStatus;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->updateHeader()V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->getMembershipService()Lcom/narvii/wallet/MembershipService;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lcom/narvii/wallet/MembershipService;->update(Lcom/narvii/wallet/MembershipResponse;)V

    .line 29
    return-void
.end method

.method showCofetti(J)V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/wallet/l;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/wallet/l;-><init>(Lcom/narvii/wallet/MembershipMainRecyclerFragment;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, p1, p2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 9
    return-void
.end method

.method public smoothScrollToHeaderMax()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 15
    :cond_0
    return-void
.end method

.method updateHeader()V
    .locals 15

    const-string v0, "membership"

    .line 1
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/wallet/MembershipService;

    .line 2
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->hasAMembershipAutoRenew()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v0, v2

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->freeTrial()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f120c9d

    goto :goto_1

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membershipNotAutoRenewExpired()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membershipIsPremiumAndIsNotCreatedToday()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const v0, 0x7f120c97

    goto :goto_1

    :cond_3
    :goto_0
    const v0, 0x7f120c83

    .line 6
    :goto_1
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->makeHeaderVisible()V

    .line 7
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membershipIsNull()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membershipIsActiveAndNotPremium()Z

    move-result v1

    if-nez v1, :cond_5

    .line 8
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membershipIsNotActiveAndThereIsNoCreatedTime()Z

    move-result v1

    if-nez v1, :cond_5

    .line 9
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->premiumMembershipWasCreatedToday()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    const-string v1, "#676461"

    .line 10
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->setActionAndStatusBarBgColor(I)V

    const v1, 0x7f0807b8

    goto :goto_3

    :cond_5
    :goto_2
    const-string v1, "#FC8028"

    .line 11
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->setActionAndStatusBarBgColor(I)V

    const v1, 0x7f0807b7

    .line 12
    :goto_3
    invoke-direct {p0, v1}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->setBackgroundColor(I)V

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/16 v3, 0x3e80

    int-to-float v3, v3

    mul-float/2addr v1, v3

    iget-object v3, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->header:Landroid/view/View;

    const v4, 0x7f0a094b

    .line 14
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 15
    invoke-direct {p0, v0, v1, v3}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->setupMembershipCard(IFLandroid/view/View;)V

    .line 16
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membershipIsNull()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_7

    .line 17
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membershipIsNotCreated()Z

    move-result v3

    if-nez v3, :cond_7

    .line 18
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->premiumMembershipWasCreatedToday()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_4

    :cond_6
    move v3, v2

    goto :goto_5

    :cond_7
    :goto_4
    move v3, v4

    :goto_5
    if-nez v3, :cond_8

    .line 19
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->rippleViewIsNotNull()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->rippleViewLayerCountInsideRange()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 20
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->setupRippleView()V

    :cond_8
    iget-object v5, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->header:Landroid/view/View;

    const v6, 0x7f0a0187

    .line 21
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->header:Landroid/view/View;

    const v7, 0x7f0a094e

    .line 22
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/narvii/widget/ThumbImageView;

    .line 23
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membershipIsNotNull()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->isMembershipStatusNone()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membershipExpiredTimeIsNotNull()Z

    move-result v7

    if-nez v7, :cond_a

    .line 24
    :cond_9
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membershipIsNotNull()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->isPremiumItemMembership()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->isMembershipCreatedToday()Z

    move-result v7

    if-eqz v7, :cond_a

    goto :goto_6

    :cond_a
    move v7, v2

    goto :goto_7

    :cond_b
    :goto_6
    move v7, v4

    :goto_7
    const v8, 0x7f0807b2

    if-eqz v7, :cond_c

    .line 25
    invoke-direct {p0, v5, v6}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->setupUiForMembership(Landroid/widget/ImageView;Lcom/narvii/widget/ThumbImageView;)V

    move v5, v8

    goto :goto_8

    .line 26
    :cond_c
    invoke-direct {p0, v5, v6}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->setupUiForNoMembership(Landroid/widget/ImageView;Lcom/narvii/widget/ThumbImageView;)V

    const v5, 0x7f0807b3

    .line 27
    :goto_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 28
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v10

    .line 29
    invoke-static {v9, v5, v10}, Landroidx/core/content/res/ResourcesCompat;->e(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v6, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    .line 30
    invoke-virtual {v6, v5}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 31
    invoke-direct {p0, v0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->setupSubscribeText(I)V

    iget-object v6, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->subscribeHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_d

    move v9, v4

    goto :goto_9

    :cond_d
    move v9, v2

    .line 32
    :goto_9
    invoke-direct {p0, v6, v9}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->setVisibilityOfView(Landroid/view/View;Z)V

    .line 33
    invoke-direct {p0, v0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->setupMembershipCardBg(I)V

    .line 34
    invoke-direct {p0, v3}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->setupMembershipHeaderUi(Z)V

    const-string v0, "account"

    .line 35
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 36
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    .line 37
    invoke-direct {p0, v3, v7, v0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->setupAvatarLayout(ZZLcom/narvii/model/User;)V

    .line 38
    invoke-direct {p0, v3, v0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->setupNickName(ZLcom/narvii/model/User;)V

    .line 39
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->setupSinceView()V

    .line 40
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->hasNotMembershipStatus()Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_e
    move-object v0, v5

    goto :goto_a

    .line 41
    :cond_f
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->isPremiumItemMembership()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 42
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v6, 0x7f120c87

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 43
    :cond_10
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->isMembershipStatusNone()Z

    move-result v0

    const-wide/32 v6, 0x5265c00

    const-wide/16 v9, 0x0

    if-eqz v0, :cond_11

    iget-wide v11, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->responseTime:J

    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membership:Lcom/narvii/wallet/MembershipStatus;

    .line 44
    iget-object v0, v0, Lcom/narvii/wallet/MembershipStatus;->expiredTime:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    sub-long/2addr v11, v13

    cmp-long v0, v11, v9

    if-lez v0, :cond_e

    .line 45
    div-long/2addr v11, v6

    long-to-int v0, v11

    .line 46
    invoke-direct {p0, v0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->getStatusExpiredText(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 47
    :cond_11
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->userHasAnActiveMembership()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membership:Lcom/narvii/wallet/MembershipStatus;

    .line 48
    iget-object v0, v0, Lcom/narvii/wallet/MembershipStatus;->expiredTime:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    iget-wide v13, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->responseTime:J

    sub-long/2addr v11, v13

    cmp-long v0, v11, v9

    if-lez v0, :cond_e

    .line 49
    div-long/2addr v11, v6

    long-to-int v0, v11

    .line 50
    invoke-direct {p0, v0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->getStatusWillExpireText(I)Ljava/lang/String;

    move-result-object v0

    :goto_a
    iget-object v6, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->header:Landroid/view/View;

    const v7, 0x7f0a095f

    .line 51
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    if-nez v3, :cond_12

    move v3, v2

    goto :goto_b

    :cond_12
    const/16 v3, 0x8

    .line 52
    :goto_b
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 53
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->header:Landroid/view/View;

    const v3, 0x7f0a094c

    .line 54
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setCameraDistance(F)V

    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->header:Landroid/view/View;

    .line 55
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->header:Landroid/view/View;

    .line 56
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->cardSide:I

    if-ne v1, v4, :cond_13

    move v1, v4

    goto :goto_c

    :cond_13
    move v1, v2

    :goto_c
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->header:Landroid/view/View;

    const v1, 0x7f0a094d

    .line 57
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/ThumbImageView;

    iget-object v1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->header:Landroid/view/View;

    const v3, 0x7f0a0960

    .line 58
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v3, "#AADD5C0E"

    .line 59
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    .line 60
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membershipIsNotNull()Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->userHasAnActiveMembership()Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->isPremiumItemMembership()Z

    move-result v6

    if-nez v6, :cond_14

    .line 61
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_e

    .line 62
    :cond_14
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membershipIsNull()Z

    move-result v6

    if-nez v6, :cond_17

    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membershipIsNotCreated()Z

    move-result v6

    if-nez v6, :cond_17

    .line 63
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->premiumMembershipWasCreatedToday()Z

    move-result v6

    if-eqz v6, :cond_15

    goto :goto_d

    .line 64
    :cond_15
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->isPremiumItemMembership()Z

    move-result v6

    if-nez v6, :cond_16

    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->isMembershipStatusNone()Z

    move-result v6

    if-eqz v6, :cond_18

    iget-object v6, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membership:Lcom/narvii/wallet/MembershipStatus;

    iget-object v6, v6, Lcom/narvii/wallet/MembershipStatus;->expiredTime:Ljava/util/Date;

    if-eqz v6, :cond_18

    :cond_16
    const v3, 0x7f120c99

    .line 65
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    const-string v1, "#66000000"

    .line 66
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const v8, 0x7f0807b4

    goto :goto_e

    :cond_17
    :goto_d
    const v6, 0x7f120c98

    .line 67
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    .line 68
    :cond_18
    :goto_e
    invoke-virtual {v0, v3}, Lcom/narvii/widget/ThumbImageView;->setShadowColor(I)V

    .line 69
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 70
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 71
    invoke-static {v1, v8, v3}, Landroidx/core/content/res/ResourcesCompat;->e(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 72
    invoke-virtual {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->getCustomTheme()I

    .line 73
    invoke-virtual {v0, v5}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 74
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->updateMembershipStartDate()V

    .line 75
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membershipIsNotNull()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->userHasAnActiveMembership()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->membership:Lcom/narvii/wallet/MembershipStatus;

    iget v0, v0, Lcom/narvii/wallet/MembershipStatus;->paymentType:I

    if-ne v0, v4, :cond_19

    .line 76
    invoke-direct {p0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->isPremiumItemMembership()Z

    move-result v0

    if-nez v0, :cond_19

    move v2, v4

    .line 77
    :cond_19
    invoke-direct {p0, v2}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->updateAutoRenewableUi(Z)V

    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->header:Landroid/view/View;

    const v1, 0x7f0a072d

    .line 78
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/narvii/wallet/m;

    invoke-direct {v1}, Lcom/narvii/wallet/m;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method updateMembership(Lcom/narvii/wallet/MembershipResponse;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->adapter:Lcom/narvii/wallet/membership/MembershipDataAdapter;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->setResponse(Lcom/narvii/wallet/MembershipResponse;)V

    .line 8
    :cond_0
    return-void
.end method
