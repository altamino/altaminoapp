.class public Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;
.super Lcom/narvii/monetization/store/MonetizationStoreBaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$TopAdapter;,
        Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$StoreItemListAdapter;,
        Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$GreyMarginAdapter;,
        Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$SharedStickerEntryAdapter;
    }
.end annotation


# instance fields
.field private accountService:Lcom/narvii/account/AccountService;

.field private headerLayout:Lcom/narvii/monetization/store/HeaderLayout;

.field private isGlobalSpace:Z

.field private lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

.field private membership:Lcom/narvii/wallet/MembershipService;

.field private myStickerEntry:Landroid/view/View;

.field private pendingStickerRequstCount:I

.field private receiver:Landroid/content/BroadcastReceiver;

.field private sharedStickerEntryAdapter:Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$SharedStickerEntryAdapter;

.field private storeItemListAdapter:Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$StoreItemListAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/monetization/store/MonetizationStoreBaseFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$1;-><init>(Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 11
    return-void
.end method

.method static bridge synthetic A(Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->queryPendingCount()V

    return-void
.end method

.method static bridge synthetic B(Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;Lcom/narvii/monetization/store/data/StoreSectionMini;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->updateHeaderView(Lcom/narvii/monetization/store/data/StoreSectionMini;)V

    return-void
.end method

.method private configRightButton()V
    .locals 3

    .line 1
    .line 2
    const-string v0, "sectionGroupId"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    const-string v2, "sticker"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    const-string v1, "chat-bubble"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    .line 37
    const v1, 0x7f0d07a1

    .line 38
    const/4 v2, 0x0

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    check-cast v0, Lcom/narvii/widget/WalletBalanceView;

    .line 45
    .line 46
    new-instance v1, Lcom/narvii/monetization/store/c;

    .line 47
    .line 48
    .line 49
    invoke-direct {v1, p0}, Lcom/narvii/monetization/store/c;-><init>(Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/narvii/widget/WalletBalanceView;->setOnWalletPreClickListener(Lcom/narvii/widget/WalletBalanceView$OnPreClickListener;)V

    .line 53
    .line 54
    new-instance v1, Lcom/narvii/monetization/store/d;

    .line 55
    .line 56
    .line 57
    invoke-direct {v1, p0}, Lcom/narvii/monetization/store/d;-><init>(Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Lcom/narvii/widget/WalletBalanceView;->setOnClaimIconPreClickListener(Lcom/narvii/widget/WalletBalanceView$OnPreClickListener;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/narvii/widget/WalletBalanceView;->refresh()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setActionBarRightView(Landroid/view/View;)V

    .line 67
    :cond_1
    return-void
.end method

.method private synthetic lambda$configRightButton$0()V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "WalletIcon"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 16
    return-void
.end method

.method private synthetic lambda$configRightButton$1()V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "ClaimCoinsIcon"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 16
    return-void
.end method

.method private queryPendingCount()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/model/User;->isLeader()Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    new-instance v0, Lcom/narvii/monetization/sticker/StickerHelper;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, p0}, Lcom/narvii/monetization/sticker/StickerHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 26
    .line 27
    new-instance v1, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$2;

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, p0}, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$2;-><init>(Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/narvii/monetization/sticker/StickerHelper;->sendPendingRequestCountRequest(Lcom/narvii/util/Callback;)V

    .line 34
    :cond_0
    return-void
.end method

.method public static synthetic t(Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->lambda$configRightButton$1()V

    return-void
.end method

.method public static synthetic u(Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->lambda$configRightButton$0()V

    return-void
.end method

.method private updateHeaderView(Lcom/narvii/monetization/store/data/StoreSectionMini;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->headerLayout:Lcom/narvii/monetization/store/HeaderLayout;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    .line 9
    const v1, 0x7f0a0dca

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    check-cast v0, Landroid/widget/ImageView;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/narvii/monetization/store/data/StoreSectionMini;->icon()I

    .line 19
    move-result v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->headerLayout:Lcom/narvii/monetization/store/HeaderLayout;

    .line 25
    .line 26
    .line 27
    const v1, 0x7f0a0dcc

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    check-cast v0, Landroid/widget/TextView;

    .line 34
    .line 35
    iget-object p1, p1, Lcom/narvii/monetization/store/data/StoreSectionMini;->name:Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    :cond_0
    return-void
.end method

.method static bridge synthetic v(Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;)Lcom/narvii/wallet/MembershipService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->membership:Lcom/narvii/wallet/MembershipService;

    return-object p0
.end method

.method static bridge synthetic w(Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->pendingStickerRequstCount:I

    return p0
.end method

.method static bridge synthetic x(Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;)Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$SharedStickerEntryAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->sharedStickerEntryAdapter:Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$SharedStickerEntryAdapter;

    return-object p0
.end method

.method static bridge synthetic y(Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;)Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$StoreItemListAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->storeItemListAdapter:Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$StoreItemListAdapter;

    return-object p0
.end method

.method static bridge synthetic z(Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->pendingStickerRequstCount:I

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 7

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    new-instance v0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$TopAdapter;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0, p0}, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$TopAdapter;-><init>(Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;Lcom/narvii/app/NVContext;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 14
    .line 15
    new-instance v0, Lcom/narvii/list/DivideColumnAdapter;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    const/high16 v2, 0x40e00000    # 7.0f

    .line 22
    .line 23
    .line 24
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 25
    move-result v1

    .line 26
    float-to-int v3, v1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    .line 33
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 34
    move-result v1

    .line 35
    float-to-int v4, v1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    const/high16 v2, 0x41700000    # 15.0f

    .line 42
    .line 43
    .line 44
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 45
    move-result v1

    .line 46
    float-to-int v5, v1

    .line 47
    const/4 v6, 0x0

    .line 48
    move-object v1, v0

    .line 49
    move-object v2, p0

    .line 50
    .line 51
    .line 52
    invoke-direct/range {v1 .. v6}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    .line 53
    .line 54
    new-instance v1, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$StoreItemListAdapter;

    .line 55
    .line 56
    .line 57
    invoke-direct {v1, p0, p0}, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$StoreItemListAdapter;-><init>(Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;Lcom/narvii/app/NVContext;)V

    .line 58
    .line 59
    iput-object v1, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->storeItemListAdapter:Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$StoreItemListAdapter;

    .line 60
    const/4 v2, 0x3

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1, v2}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 64
    const/4 v1, 0x1

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 68
    .line 69
    const-string v0, "sectionGroupId"

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    const-string v1, "sticker"

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    move-result v0

    .line 80
    .line 81
    if-eqz v0, :cond_0

    .line 82
    .line 83
    iget-boolean v0, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->isGlobalSpace:Z

    .line 84
    .line 85
    if-nez v0, :cond_0

    .line 86
    .line 87
    new-instance v0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$GreyMarginAdapter;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 91
    move-result-object v1

    .line 92
    .line 93
    const/high16 v2, 0x41200000    # 10.0f

    .line 94
    .line 95
    .line 96
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 97
    move-result v1

    .line 98
    .line 99
    .line 100
    invoke-direct {v0, p0, p0, v1}, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$GreyMarginAdapter;-><init>(Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;Lcom/narvii/app/NVContext;I)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 104
    .line 105
    new-instance v0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$SharedStickerEntryAdapter;

    .line 106
    .line 107
    .line 108
    invoke-direct {v0, p0, p0}, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$SharedStickerEntryAdapter;-><init>(Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;Lcom/narvii/app/NVContext;)V

    .line 109
    .line 110
    iput-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->sharedStickerEntryAdapter:Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$SharedStickerEntryAdapter;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 114
    .line 115
    new-instance v0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$GreyMarginAdapter;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 119
    move-result-object v1

    .line 120
    .line 121
    .line 122
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 123
    move-result v1

    .line 124
    .line 125
    .line 126
    invoke-direct {v0, p0, p0, v1}, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$GreyMarginAdapter;-><init>(Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;Lcom/narvii/app/NVContext;I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 130
    :cond_0
    return-object p1
.end method

.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0d05b5

    return v0
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
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
    .line 6
    invoke-direct {p0}, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->configRightButton()V

    .line 7
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string p1, "account"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 14
    .line 15
    const-string p1, "membership"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    check-cast p1, Lcom/narvii/wallet/MembershipService;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->membership:Lcom/narvii/wallet/MembershipService;

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->queryPendingCount()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    iput-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 39
    .line 40
    new-instance v1, Landroid/content/IntentFilter;

    .line 41
    .line 42
    const-string v2, "com.narvii.action.PENDING_STICKER_CHANGED"

    .line 43
    .line 44
    .line 45
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 49
    .line 50
    iget-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 51
    .line 52
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 53
    .line 54
    new-instance v1, Landroid/content/IntentFilter;

    .line 55
    .line 56
    const-string v2, "com.narvii.action.MEMBERSHIP_CHANGED"

    .line 57
    .line 58
    .line 59
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 63
    .line 64
    const-string p1, "config"

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 74
    move-result p1

    .line 75
    .line 76
    if-nez p1, :cond_0

    .line 77
    const/4 p1, 0x1

    .line 78
    goto :goto_0

    .line 79
    :cond_0
    const/4 p1, 0x0

    .line 80
    .line 81
    :goto_0
    iput-boolean p1, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->isGlobalSpace:Z

    .line 82
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->f(Landroid/content/BroadcastReceiver;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    .line 11
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/monetization/store/MonetizationStoreBaseFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

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
    const-string p2, "sectionGroupId"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object p2

    .line 18
    .line 19
    const-string v0, "sticker"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result p2

    .line 24
    .line 25
    if-eqz p2, :cond_0

    .line 26
    .line 27
    iget-boolean p2, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->isGlobalSpace:Z

    .line 28
    .line 29
    if-nez p2, :cond_0

    .line 30
    .line 31
    check-cast p1, Lcom/narvii/widget/NVListView;

    .line 32
    .line 33
    .line 34
    const p2, -0x111112

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVListView;->setOverscrollStretchFooter(I)V

    .line 38
    :cond_0
    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 3
    .line 4
    instance-of v0, v0, Lcom/narvii/model/StoreItemBaseObject;

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 9
    .line 10
    const-string v1, "update"

    .line 11
    .line 12
    if-ne v0, v1, :cond_2

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->storeItemListAdapter:Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$StoreItemListAdapter;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result v1

    .line 29
    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    instance-of v2, v1, Lcom/narvii/monetization/store/data/StoreItem;

    .line 37
    .line 38
    if-nez v2, :cond_1

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_1
    check-cast v1, Lcom/narvii/monetization/store/data/StoreItem;

    .line 42
    .line 43
    iget-object v2, v1, Lcom/narvii/monetization/store/data/StoreItem;->refObjectId:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v3, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v3, Lcom/narvii/model/StoreItemBaseObject;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 51
    move-result-object v3

    .line 52
    .line 53
    .line 54
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    .line 55
    move-result v2

    .line 56
    .line 57
    if-eqz v2, :cond_0

    .line 58
    .line 59
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast p1, Lcom/narvii/model/StoreItemBaseObject;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, p1}, Lcom/narvii/monetization/store/data/StoreItem;->setCachedRefObject(Lcom/narvii/model/NVObject;)V

    .line 65
    .line 66
    iget-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->storeItemListAdapter:Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$StoreItemListAdapter;

    .line 67
    .line 68
    if-eqz p1, :cond_2

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 72
    :cond_2
    return-void
.end method

.method public onRefresh()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onRefresh()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->queryPendingCount()V

    .line 7
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a0ab1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    check-cast p1, Lcom/narvii/list/overlay/OverlayLayout;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Lcom/narvii/widget/NVListView;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lcom/narvii/list/overlay/OverlayLayout;->attach(Lcom/narvii/widget/NVListView;)V

    .line 24
    const/4 v0, 0x0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    .line 31
    move-result v0

    .line 32
    int-to-float v0, v0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    const/high16 v2, 0x43020000    # 130.0f

    .line 39
    .line 40
    .line 41
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 42
    move-result v1

    .line 43
    add-float/2addr v0, v1

    .line 44
    float-to-int v0, v0

    .line 45
    .line 46
    .line 47
    const v1, 0x7f0d05b4

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v1, v0}, Lcom/narvii/list/overlay/OverlayLayout;->setLayout(II)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    .line 54
    move-result v0

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    .line 58
    move-result v1

    .line 59
    add-int/2addr v0, v1

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v0}, Lcom/narvii/list/overlay/OverlayLayout;->setHeight1(I)V

    .line 63
    .line 64
    .line 65
    const v0, 0x7f0a0648

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 69
    move-result-object p1

    .line 70
    .line 71
    check-cast p1, Lcom/narvii/monetization/store/HeaderLayout;

    .line 72
    .line 73
    iput-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->headerLayout:Lcom/narvii/monetization/store/HeaderLayout;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 77
    move-result-object p1

    .line 78
    .line 79
    const/high16 v0, 0x42200000    # 40.0f

    .line 80
    .line 81
    .line 82
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 83
    move-result p1

    .line 84
    float-to-int p1, p1

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 88
    move-result-object v0

    .line 89
    .line 90
    const/high16 v1, 0x41f00000    # 30.0f

    .line 91
    .line 92
    .line 93
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 94
    move-result v0

    .line 95
    float-to-int v0, v0

    .line 96
    .line 97
    iget-object v1, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->headerLayout:Lcom/narvii/monetization/store/HeaderLayout;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, p1, v0}, Lcom/narvii/monetization/store/HeaderLayout;->setImageSizeRange(II)V

    .line 101
    .line 102
    :cond_0
    new-instance p1, Landroid/view/View;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 106
    move-result-object v0

    .line 107
    .line 108
    .line 109
    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setActionBarTitleView(Landroid/view/View;)V

    .line 113
    .line 114
    const-string p1, "sectionGroupInfo"

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 118
    move-result-object p1

    .line 119
    .line 120
    const-class v0, Lcom/narvii/monetization/store/data/StoreSectionMini;

    .line 121
    .line 122
    .line 123
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 124
    move-result-object p1

    .line 125
    .line 126
    check-cast p1, Lcom/narvii/monetization/store/data/StoreSectionMini;

    .line 127
    .line 128
    .line 129
    invoke-direct {p0, p1}, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->updateHeaderView(Lcom/narvii/monetization/store/data/StoreSectionMini;)V

    .line 130
    .line 131
    if-nez p2, :cond_1

    .line 132
    .line 133
    const-string p1, "statistics"

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 137
    move-result-object p1

    .line 138
    .line 139
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 140
    .line 141
    const-string p2, "Amino+ Product Category Page (Store)"

    .line 142
    .line 143
    .line 144
    invoke-interface {p1, p2}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 145
    move-result-object p1

    .line 146
    .line 147
    const-string p2, "Source"

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 151
    move-result-object p2

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 155
    move-result-object p1

    .line 156
    .line 157
    const-string p2, "sectionGroupId"

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 161
    move-result-object p2

    .line 162
    .line 163
    const-string v0, "Type"

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1, v0, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 167
    move-result-object p1

    .line 168
    .line 169
    const-string p2, "Amino+ Product Category Page (Store) Total"

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 173
    :cond_1
    return-void
.end method
