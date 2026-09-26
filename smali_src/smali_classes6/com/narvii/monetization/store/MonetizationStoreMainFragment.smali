.class public Lcom/narvii/monetization/store/MonetizationStoreMainFragment;
.super Lcom/narvii/monetization/store/MonetizationStoreBaseFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/monetization/store/MonetizationStoreMainFragment$MonetizationHeaderAdapter;,
        Lcom/narvii/monetization/store/MonetizationStoreMainFragment$StoreSectionsAdapter;,
        Lcom/narvii/monetization/store/MonetizationStoreMainFragment$MonetizationFooterAdapter;
    }
.end annotation


# static fields
.field private static final MAX_SECTION_ITEM_COUNT:I = 0x6


# instance fields
.field private accountService:Lcom/narvii/account/AccountService;

.field private claimCoinDialog:Lcom/narvii/monetization/utils/ClaimGiftDialog;

.field private errorMsg:Ljava/lang/String;

.field private isGlobalSpace:Z

.field private isLoading:Z

.field private lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

.field private listAdapter:Lcom/narvii/monetization/store/MonetizationStoreMainFragment$StoreSectionsAdapter;

.field private membership:Lcom/narvii/wallet/MembershipService;

.field private pendingStickerRequstCount:I

.field private scrollDone:Z

.field private scrollSectionGroupId:Ljava/lang/String;

.field private storeItemSections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/monetization/store/data/StoreSection;",
            ">;"
        }
    .end annotation
.end field

.field private subscribeInfoContainerBottom:Landroid/view/View;

.field private walletBalanceReceiver:Landroid/content/BroadcastReceiver;

.field private walletBalanceView:Lcom/narvii/widget/WalletBalanceView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/monetization/store/MonetizationStoreBaseFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->storeItemSections:Ljava/util/List;

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->isLoading:Z

    .line 14
    const/4 v0, 0x0

    .line 15
    .line 16
    iput-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->errorMsg:Ljava/lang/String;

    .line 17
    .line 18
    new-instance v0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$1;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, p0}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$1;-><init>(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)V

    .line 22
    .line 23
    iput-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->walletBalanceReceiver:Landroid/content/BroadcastReceiver;

    .line 24
    return-void
.end method

.method static bridge synthetic A(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->pendingStickerRequstCount:I

    return p0
.end method

.method static bridge synthetic B(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->scrollDone:Z

    return p0
.end method

.method static bridge synthetic C(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->scrollSectionGroupId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic D(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->storeItemSections:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic E(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)Lcom/narvii/widget/WalletBalanceView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->walletBalanceView:Lcom/narvii/widget/WalletBalanceView;

    return-object p0
.end method

.method static bridge synthetic F(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->errorMsg:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic G(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->isLoading:Z

    return-void
.end method

.method static bridge synthetic H(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->pendingStickerRequstCount:I

    return-void
.end method

.method static bridge synthetic I(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->scrollDone:Z

    return-void
.end method

.method static bridge synthetic J(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->queryPendingCount()V

    return-void
.end method

.method static bridge synthetic K(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->updateUserView()V

    return-void
.end method

.method private configRightButton()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    const v1, 0x7f0d07a1

    .line 12
    const/4 v2, 0x0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Lcom/narvii/widget/WalletBalanceView;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->walletBalanceView:Lcom/narvii/widget/WalletBalanceView;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setActionBarRightView(Landroid/view/View;)V

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->walletBalanceView:Lcom/narvii/widget/WalletBalanceView;

    .line 26
    .line 27
    new-instance v1, Lcom/narvii/monetization/store/a;

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, p0}, Lcom/narvii/monetization/store/a;-><init>(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/narvii/widget/WalletBalanceView;->setOnWalletPreClickListener(Lcom/narvii/widget/WalletBalanceView$OnPreClickListener;)V

    .line 34
    .line 35
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->walletBalanceView:Lcom/narvii/widget/WalletBalanceView;

    .line 36
    .line 37
    new-instance v1, Lcom/narvii/monetization/store/b;

    .line 38
    .line 39
    .line 40
    invoke-direct {v1, p0}, Lcom/narvii/monetization/store/b;-><init>(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/narvii/widget/WalletBalanceView;->setOnClaimIconPreClickListener(Lcom/narvii/widget/WalletBalanceView$OnPreClickListener;)V

    .line 44
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
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->accountService:Lcom/narvii/account/AccountService;

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
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->accountService:Lcom/narvii/account/AccountService;

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
    new-instance v1, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$2;

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, p0}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$2;-><init>(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/narvii/monetization/sticker/StickerHelper;->sendPendingRequestCountRequest(Lcom/narvii/util/Callback;)V

    .line 34
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

.method public static synthetic t(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->lambda$configRightButton$0()V

    return-void
.end method

.method public static synthetic u(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->lambda$configRightButton$1()V

    return-void
.end method

.method private updateUserView()V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->walletBalanceView:Lcom/narvii/widget/WalletBalanceView;

    .line 9
    .line 10
    const/16 v2, 0x8

    .line 11
    const/4 v3, 0x0

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    move v4, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v4, v3

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    iget-object v1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->walletBalanceView:Lcom/narvii/widget/WalletBalanceView;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/narvii/widget/WalletBalanceView;->refresh()V

    .line 25
    .line 26
    iget-object v1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->subscribeInfoContainerBottom:Landroid/view/View;

    .line 27
    .line 28
    .line 29
    const v4, 0x7f0a0dff

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    iget-object v4, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->subscribeInfoContainerBottom:Landroid/view/View;

    .line 36
    .line 37
    .line 38
    const v5, 0x7f0a0964

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    move-result-object v4

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 46
    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    .line 50
    const v5, 0x7f0a0171

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    move-result-object v5

    .line 55
    .line 56
    check-cast v5, Lcom/narvii/widget/NVImageView;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    .line 60
    move-result-object v6

    .line 61
    .line 62
    .line 63
    invoke-virtual {v5, v6}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    const v5, 0x7f0a09f9

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    move-result-object v5

    .line 71
    .line 72
    check-cast v5, Landroid/widget/TextView;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    .line 76
    move-result-object v0

    .line 77
    .line 78
    .line 79
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    .line 81
    :cond_1
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->membership:Lcom/narvii/wallet/MembershipService;

    .line 82
    .line 83
    .line 84
    const v5, 0x7f0a010a

    .line 85
    .line 86
    if-eqz v0, :cond_2

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    .line 90
    move-result v0

    .line 91
    .line 92
    if-eqz v0, :cond_2

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 102
    move-result-object v0

    .line 103
    .line 104
    check-cast v0, Landroid/widget/ImageView;

    .line 105
    .line 106
    .line 107
    const v1, 0x7f080397

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 111
    goto :goto_1

    .line 112
    .line 113
    :cond_2
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->membership:Lcom/narvii/wallet/MembershipService;

    .line 114
    .line 115
    if-eqz v0, :cond_3

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->isAutoRenew()Z

    .line 119
    move-result v0

    .line 120
    .line 121
    if-nez v0, :cond_3

    .line 122
    .line 123
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->membership:Lcom/narvii/wallet/MembershipService;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->hasMemberShipExpired()Z

    .line 127
    move-result v0

    .line 128
    .line 129
    if-eqz v0, :cond_3

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 139
    move-result-object v0

    .line 140
    .line 141
    check-cast v0, Landroid/widget/ImageView;

    .line 142
    .line 143
    .line 144
    const v1, 0x7f08039a

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 148
    goto :goto_1

    .line 149
    .line 150
    .line 151
    :cond_3
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 155
    .line 156
    :goto_1
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->membership:Lcom/narvii/wallet/MembershipService;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    .line 160
    move-result v0

    .line 161
    const/4 v1, 0x1

    .line 162
    .line 163
    .line 164
    const v2, -0x2ffde5

    .line 165
    .line 166
    if-eqz v0, :cond_8

    .line 167
    .line 168
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->membership:Lcom/narvii/wallet/MembershipService;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->isAutoRenew()Z

    .line 172
    move-result v0

    .line 173
    const/4 v5, 0x0

    .line 174
    .line 175
    if-nez v0, :cond_7

    .line 176
    .line 177
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->membership:Lcom/narvii/wallet/MembershipService;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->expiringDays()I

    .line 181
    move-result v0

    .line 182
    .line 183
    if-nez v0, :cond_4

    .line 184
    .line 185
    .line 186
    const v0, 0x7f120c8b

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 190
    move-result-object v5

    .line 191
    goto :goto_2

    .line 192
    .line 193
    :cond_4
    if-ne v0, v1, :cond_5

    .line 194
    .line 195
    .line 196
    const v0, 0x7f120c8c

    .line 197
    .line 198
    .line 199
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 200
    move-result-object v5

    .line 201
    goto :goto_2

    .line 202
    .line 203
    :cond_5
    if-lez v0, :cond_6

    .line 204
    .line 205
    const/16 v6, 0xe

    .line 206
    .line 207
    if-gt v0, v6, :cond_6

    .line 208
    .line 209
    new-array v5, v1, [Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 213
    move-result-object v0

    .line 214
    .line 215
    aput-object v0, v5, v3

    .line 216
    .line 217
    .line 218
    const v0, 0x7f120c8d

    .line 219
    .line 220
    .line 221
    invoke-virtual {p0, v0, v5}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 222
    move-result-object v5

    .line 223
    goto :goto_2

    .line 224
    :cond_6
    move v2, v3

    .line 225
    :goto_2
    move v0, v3

    .line 226
    goto :goto_3

    .line 227
    :cond_7
    move v0, v3

    .line 228
    move v2, v0

    .line 229
    goto :goto_3

    .line 230
    .line 231
    :cond_8
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->membership:Lcom/narvii/wallet/MembershipService;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->daysExpired()I

    .line 235
    move-result v0

    .line 236
    .line 237
    if-nez v0, :cond_9

    .line 238
    .line 239
    .line 240
    const v0, 0x7f120c88

    .line 241
    .line 242
    .line 243
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 244
    move-result-object v5

    .line 245
    goto :goto_2

    .line 246
    .line 247
    :cond_9
    if-ne v0, v1, :cond_a

    .line 248
    .line 249
    .line 250
    const v0, 0x7f120c89

    .line 251
    .line 252
    .line 253
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 254
    move-result-object v5

    .line 255
    goto :goto_2

    .line 256
    .line 257
    :cond_a
    if-lez v0, :cond_b

    .line 258
    .line 259
    new-array v5, v1, [Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 263
    move-result-object v0

    .line 264
    .line 265
    aput-object v0, v5, v3

    .line 266
    .line 267
    .line 268
    const v0, 0x7f120c8a

    .line 269
    .line 270
    .line 271
    invoke-virtual {p0, v0, v5}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 272
    move-result-object v5

    .line 273
    goto :goto_2

    .line 274
    .line 275
    .line 276
    :cond_b
    const v0, 0x7f120c8e

    .line 277
    .line 278
    .line 279
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 280
    move-result-object v5

    .line 281
    .line 282
    .line 283
    const v2, -0x77000001

    .line 284
    move v0, v1

    .line 285
    .line 286
    .line 287
    :goto_3
    const v6, 0x7f0a095f

    .line 288
    .line 289
    .line 290
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 291
    move-result-object v4

    .line 292
    .line 293
    check-cast v4, Landroid/widget/TextView;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 300
    .line 301
    if-eqz v0, :cond_c

    .line 302
    .line 303
    .line 304
    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    .line 305
    move-result-object v0

    .line 306
    goto :goto_4

    .line 307
    .line 308
    .line 309
    :cond_c
    invoke-static {v3}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    .line 310
    move-result-object v0

    .line 311
    .line 312
    .line 313
    :goto_4
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 314
    .line 315
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->claimCoinDialog:Lcom/narvii/monetization/utils/ClaimGiftDialog;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v0}, Lcom/narvii/monetization/utils/ClaimGiftDialog;->isShown()Z

    .line 319
    move-result v0

    .line 320
    .line 321
    if-nez v0, :cond_d

    .line 322
    .line 323
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->claimCoinDialog:Lcom/narvii/monetization/utils/ClaimGiftDialog;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 327
    move-result v0

    .line 328
    .line 329
    if-nez v0, :cond_d

    .line 330
    .line 331
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->membership:Lcom/narvii/wallet/MembershipService;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->canGetNewMemberRewards()Z

    .line 335
    move-result v0

    .line 336
    .line 337
    if-eqz v0, :cond_d

    .line 338
    .line 339
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->claimCoinDialog:Lcom/narvii/monetization/utils/ClaimGiftDialog;

    .line 340
    .line 341
    iget-object v1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->membership:Lcom/narvii/wallet/MembershipService;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v1}, Lcom/narvii/wallet/MembershipService;->getClaimCoupon()Lcom/narvii/wallet/CouponDetail;

    .line 345
    move-result-object v1

    .line 346
    .line 347
    .line 348
    invoke-virtual {v0, v1, v3}, Lcom/narvii/monetization/utils/ClaimGiftDialog;->show(Lcom/narvii/wallet/CouponDetail;Z)V

    .line 349
    :cond_d
    return-void
.end method

.method static bridge synthetic v(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->errorMsg:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic w(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->isGlobalSpace:Z

    return p0
.end method

.method static bridge synthetic x(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->isLoading:Z

    return p0
.end method

.method static bridge synthetic y(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)Lcom/narvii/monetization/store/MonetizationStoreMainFragment$StoreSectionsAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->listAdapter:Lcom/narvii/monetization/store/MonetizationStoreMainFragment$StoreSectionsAdapter;

    return-object p0
.end method

.method static bridge synthetic z(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)Lcom/narvii/wallet/MembershipService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->membership:Lcom/narvii/wallet/MembershipService;

    return-object p0
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 2

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    new-instance v0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$MonetizationHeaderAdapter;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0, p0}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$MonetizationHeaderAdapter;-><init>(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;Lcom/narvii/app/NVContext;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 14
    .line 15
    new-instance v0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$StoreSectionsAdapter;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p0, p0}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$StoreSectionsAdapter;-><init>(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;Lcom/narvii/app/NVContext;)V

    .line 19
    .line 20
    iput-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->listAdapter:Lcom/narvii/monetization/store/MonetizationStoreMainFragment$StoreSectionsAdapter;

    .line 21
    const/4 v1, 0x1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 25
    .line 26
    new-instance v0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$MonetizationFooterAdapter;

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, p0, p0}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$MonetizationFooterAdapter;-><init>(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;Lcom/narvii/app/NVContext;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->refreshSectionData()V

    .line 36
    return-object p1
.end method

.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0d05b2

    return v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "store"

    return-object v0
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    const v0, 0x7f0a0961

    .line 8
    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    .line 11
    .line 12
    const v0, 0x7f0a0964

    .line 13
    .line 14
    if-eq p1, v0, :cond_0

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0a0dff

    .line 18
    .line 19
    if-eq p1, v0, :cond_0

    .line 20
    return-void

    .line 21
    .line 22
    :cond_0
    sget-object p1, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    .line 23
    .line 24
    .line 25
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    const-string v0, "Membership"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 36
    .line 37
    iget-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 41
    move-result p1

    .line 42
    .line 43
    if-nez p1, :cond_1

    .line 44
    .line 45
    new-instance p1, Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    .line 52
    return-void

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-static {}, Lcom/narvii/wallet/membership/MembershipActivity;->createMembershipIntent()Landroid/content/Intent;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    const-string v0, "subscribe"

    .line 59
    const/4 v1, 0x1

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 63
    .line 64
    const-string v0, "Source"

    .line 65
    .line 66
    const-string v1, "Store"

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    .line 71
    .line 72
    invoke-static {p0, p1}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 73
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

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
    invoke-virtual {v0}, Lcom/narvii/app/ComScoreSectionDispatcher;->sectionChangeToNone()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    iput-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 19
    .line 20
    const-string v0, "account"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 29
    .line 30
    const-string v0, "membership"

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    check-cast v0, Lcom/narvii/wallet/MembershipService;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->membership:Lcom/narvii/wallet/MembershipService;

    .line 39
    .line 40
    const-string v0, "scrollSectionGroupId"

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    iput-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->scrollSectionGroupId:Ljava/lang/String;

    .line 47
    .line 48
    if-eqz p1, :cond_0

    .line 49
    .line 50
    const-string v0, "scrollDone"

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 54
    move-result v0

    .line 55
    .line 56
    iput-boolean v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->scrollDone:Z

    .line 57
    .line 58
    :cond_0
    const-string v0, "Store"

    .line 59
    .line 60
    const-string v1, "config"

    .line 61
    .line 62
    if-nez p1, :cond_2

    .line 63
    .line 64
    const-string p1, "statistics"

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 74
    move-result-object v2

    .line 75
    .line 76
    check-cast v2, Lcom/narvii/config/ConfigService;

    .line 77
    .line 78
    .line 79
    invoke-interface {p1, v0}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 80
    move-result-object p1

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 84
    move-result v2

    .line 85
    .line 86
    if-nez v2, :cond_1

    .line 87
    .line 88
    const-string v2, "Global"

    .line 89
    goto :goto_0

    .line 90
    .line 91
    :cond_1
    const-string v2, "Community"

    .line 92
    .line 93
    :goto_0
    const-string v3, "Type"

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v3, v2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 97
    move-result-object p1

    .line 98
    .line 99
    const-string v2, "Source"

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    move-result-object v2

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, v2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 107
    move-result-object p1

    .line 108
    .line 109
    const-string v2, "Store Total"

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 113
    .line 114
    .line 115
    :cond_2
    invoke-direct {p0}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->queryPendingCount()V

    .line 116
    .line 117
    iget-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 118
    .line 119
    iget-object v2, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->walletBalanceReceiver:Landroid/content/BroadcastReceiver;

    .line 120
    .line 121
    new-instance v3, Landroid/content/IntentFilter;

    .line 122
    .line 123
    const-string v4, "com.narvii.action.WALLET_CHANGED"

    .line 124
    .line 125
    .line 126
    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, v2, v3}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 130
    .line 131
    iget-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 132
    .line 133
    iget-object v2, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->walletBalanceReceiver:Landroid/content/BroadcastReceiver;

    .line 134
    .line 135
    new-instance v3, Landroid/content/IntentFilter;

    .line 136
    .line 137
    const-string v4, "com.narvii.action.COUPONS_CHANGED"

    .line 138
    .line 139
    .line 140
    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1, v2, v3}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 144
    .line 145
    iget-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 146
    .line 147
    iget-object v2, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->walletBalanceReceiver:Landroid/content/BroadcastReceiver;

    .line 148
    .line 149
    new-instance v3, Landroid/content/IntentFilter;

    .line 150
    .line 151
    const-string v4, "com.narvii.action.PENDING_STICKER_CHANGED"

    .line 152
    .line 153
    .line 154
    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, v2, v3}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 158
    .line 159
    iget-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 160
    .line 161
    iget-object v2, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->walletBalanceReceiver:Landroid/content/BroadcastReceiver;

    .line 162
    .line 163
    new-instance v3, Landroid/content/IntentFilter;

    .line 164
    .line 165
    const-string v4, "com.narvii.action.MEMBERSHIP_CHANGED"

    .line 166
    .line 167
    .line 168
    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1, v2, v3}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 175
    move-result-object p1

    .line 176
    .line 177
    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 181
    move-result p1

    .line 182
    .line 183
    if-nez p1, :cond_3

    .line 184
    const/4 p1, 0x1

    .line 185
    goto :goto_1

    .line 186
    :cond_3
    const/4 p1, 0x0

    .line 187
    .line 188
    :goto_1
    iput-boolean p1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->isGlobalSpace:Z

    .line 189
    .line 190
    new-instance p1, Lcom/narvii/monetization/utils/ClaimGiftDialog;

    .line 191
    .line 192
    .line 193
    invoke-direct {p1, p0}, Lcom/narvii/monetization/utils/ClaimGiftDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 194
    .line 195
    iput-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->claimCoinDialog:Lcom/narvii/monetization/utils/ClaimGiftDialog;

    .line 196
    .line 197
    iput-object v0, p1, Lcom/narvii/monetization/utils/ClaimGiftDialog;->source:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->walletBalanceReceiver:Landroid/content/BroadcastReceiver;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->f(Landroid/content/BroadcastReceiver;)V

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
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    .line 14
    .line 15
    .line 16
    const v0, -0xececb9

    .line 17
    .line 18
    .line 19
    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V

    .line 23
    .line 24
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    .line 25
    .line 26
    .line 27
    const v0, -0x90807

    .line 28
    .line 29
    .line 30
    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V

    .line 34
    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 5

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
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->storeItemSections:Ljava/util/List;

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v1

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    check-cast v1, Lcom/narvii/monetization/store/data/StoreSection;

    .line 31
    .line 32
    iget-object v1, v1, Lcom/narvii/monetization/store/data/StoreSection;->previewStoreItemList:Ljava/util/List;

    .line 33
    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    move-result v2

    .line 43
    .line 44
    if-eqz v2, :cond_0

    .line 45
    .line 46
    .line 47
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    move-result-object v2

    .line 49
    .line 50
    check-cast v2, Lcom/narvii/monetization/store/data/StoreItem;

    .line 51
    .line 52
    iget-object v3, v2, Lcom/narvii/monetization/store/data/StoreItem;->refObjectId:Ljava/lang/String;

    .line 53
    .line 54
    iget-object v4, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v4, Lcom/narvii/model/StoreItemBaseObject;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 60
    move-result-object v4

    .line 61
    .line 62
    .line 63
    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    .line 64
    move-result v3

    .line 65
    .line 66
    if-eqz v3, :cond_1

    .line 67
    .line 68
    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v1, Lcom/narvii/model/StoreItemBaseObject;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v1}, Lcom/narvii/monetization/store/data/StoreItem;->setCachedRefObject(Lcom/narvii/model/NVObject;)V

    .line 74
    .line 75
    iget-object v1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->listAdapter:Lcom/narvii/monetization/store/MonetizationStoreMainFragment$StoreSectionsAdapter;

    .line 76
    .line 77
    if-eqz v1, :cond_0

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 81
    goto :goto_0

    .line 82
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
    invoke-virtual {p0}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->refreshSectionData()V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->queryPendingCount()V

    .line 10
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onResume()V

    .line 4
    .line 5
    const-string v0, "store"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setScreenName(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->updateUserView()V

    .line 12
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
    const-string v0, "scrollDone"

    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->scrollDone:Z

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p2, 0x7f121144

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->configRightButton()V

    .line 17
    .line 18
    .line 19
    const p2, 0x7f0a0e02

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    move-result-object p2

    .line 24
    .line 25
    iput-object p2, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->subscribeInfoContainerBottom:Landroid/view/View;

    .line 26
    .line 27
    const/16 v0, 0x8

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    iget-object p2, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->subscribeInfoContainerBottom:Landroid/view/View;

    .line 33
    const/4 v0, 0x1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, v0}, Landroid/view/View;->setClickable(Z)V

    .line 37
    .line 38
    iget-object p2, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->subscribeInfoContainerBottom:Landroid/view/View;

    .line 39
    .line 40
    .line 41
    const v0, 0x7f0a0dff

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    move-result-object p2

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    .line 50
    iget-object p2, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->subscribeInfoContainerBottom:Landroid/view/View;

    .line 51
    .line 52
    .line 53
    const v0, 0x7f0a0964

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    move-result-object p2

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    .line 62
    .line 63
    const p2, 0x7f0a0ab1

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    check-cast p1, Lcom/narvii/list/overlay/OverlayLayout;

    .line 70
    .line 71
    if-eqz p1, :cond_0

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 75
    move-result-object p2

    .line 76
    .line 77
    check-cast p2, Lcom/narvii/widget/NVListView;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, p2}, Lcom/narvii/list/overlay/OverlayLayout;->attach(Lcom/narvii/widget/NVListView;)V

    .line 81
    const/4 p2, 0x0

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    .line 88
    move-result v0

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    .line 92
    move-result v1

    .line 93
    add-int/2addr v0, v1

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, p2, v0}, Lcom/narvii/list/overlay/OverlayLayout;->setLayout(II)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    .line 100
    move-result p2

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    .line 104
    move-result v0

    .line 105
    add-int/2addr p2, v0

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, p2}, Lcom/narvii/list/overlay/OverlayLayout;->setHeight1(I)V

    .line 109
    .line 110
    .line 111
    :cond_0
    invoke-direct {p0}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->updateUserView()V

    .line 112
    return-void
.end method

.method public refreshSectionData()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "/store/sections"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 10
    .line 11
    const-string v1, "storeSectionGroupIds"

    .line 12
    .line 13
    const-string v2, "avatar-frame,chat-bubble,sticker"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 17
    .line 18
    const-string v1, "api"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 25
    const/4 v2, 0x1

    .line 26
    .line 27
    iput-boolean v2, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->isLoading:Z

    .line 28
    const/4 v2, 0x0

    .line 29
    .line 30
    iput-object v2, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->errorMsg:Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    new-instance v2, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$3;

    .line 37
    .line 38
    const-class v3, Lcom/narvii/monetization/store/data/StoreSectionListResponse;

    .line 39
    .line 40
    .line 41
    invoke-direct {v2, p0, v3}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$3;-><init>(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;Ljava/lang/Class;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 45
    return-void
.end method
