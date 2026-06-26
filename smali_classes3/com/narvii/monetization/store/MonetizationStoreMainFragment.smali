.class public Lcom/narvii/monetization/store/MonetizationStoreMainFragment;
.super Lcom/narvii/monetization/store/MonetizationStoreBaseFragment;
.source "MonetizationStoreMainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/monetization/store/MonetizationStoreMainFragment$MonetizationFooterAdapter;,
        Lcom/narvii/monetization/store/MonetizationStoreMainFragment$StoreSectionsAdapter;,
        Lcom/narvii/monetization/store/MonetizationStoreMainFragment$MonetizationHeaderAdapter;
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

.field private lbm:Landroid/support/v4/content/LocalBroadcastManager;

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

    .line 76
    invoke-direct {p0}, Lcom/narvii/monetization/store/MonetizationStoreBaseFragment;-><init>()V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->storeItemSections:Ljava/util/List;

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->isLoading:Z

    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->errorMsg:Ljava/lang/String;

    .line 100
    new-instance v0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$1;-><init>(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)V

    iput-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->walletBalanceReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->queryPendingCount()V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)Lcom/narvii/widget/WalletBalanceView;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->walletBalanceView:Lcom/narvii/widget/WalletBalanceView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->isGlobalSpace:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)Lcom/narvii/wallet/MembershipService;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->membership:Lcom/narvii/wallet/MembershipService;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)Lcom/narvii/monetization/store/MonetizationStoreMainFragment$StoreSectionsAdapter;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->listAdapter:Lcom/narvii/monetization/store/MonetizationStoreMainFragment$StoreSectionsAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)I
    .locals 0

    .line 76
    iget p0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->pendingStickerRequstCount:I

    return p0
.end method

.method static synthetic access$302(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;I)I
    .locals 0

    .line 76
    iput p1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->pendingStickerRequstCount:I

    return p1
.end method

.method static synthetic access$400(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->isLoading:Z

    return p0
.end method

.method static synthetic access$402(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;Z)Z
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->isLoading:Z

    return p1
.end method

.method static synthetic access$500(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)Ljava/util/List;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->storeItemSections:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->scrollDone:Z

    return p0
.end method

.method static synthetic access$602(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;Z)Z
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->scrollDone:Z

    return p1
.end method

.method static synthetic access$700(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)Ljava/lang/String;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->scrollSectionGroupId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)Ljava/lang/String;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->errorMsg:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$802(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->errorMsg:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->updateUserView()V

    return-void
.end method

.method private configRightButton()V
    .locals 3

    .line 222
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b06ee

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/WalletBalanceView;

    iput-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->walletBalanceView:Lcom/narvii/widget/WalletBalanceView;

    .line 223
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->walletBalanceView:Lcom/narvii/widget/WalletBalanceView;

    const v1, 0x7f08081b

    const v2, 0x7f08081c

    invoke-virtual {v0, v1, v2}, Lcom/narvii/widget/WalletBalanceView;->setCoinBackground(II)V

    .line 224
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->walletBalanceView:Lcom/narvii/widget/WalletBalanceView;

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setActionBarRightView(Landroid/view/View;)V

    .line 225
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->walletBalanceView:Lcom/narvii/widget/WalletBalanceView;

    new-instance v1, Lcom/narvii/monetization/store/-$$Lambda$MonetizationStoreMainFragment$VPT-x3bA0ANt-NbC50XixOYM2rg;

    invoke-direct {v1, p0}, Lcom/narvii/monetization/store/-$$Lambda$MonetizationStoreMainFragment$VPT-x3bA0ANt-NbC50XixOYM2rg;-><init>(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/narvii/widget/WalletBalanceView;->setOnWalletPreClickListener(Lcom/narvii/widget/WalletBalanceView$OnPreClickListener;)V

    .line 227
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->walletBalanceView:Lcom/narvii/widget/WalletBalanceView;

    new-instance v1, Lcom/narvii/monetization/store/-$$Lambda$MonetizationStoreMainFragment$yDlWlGliA2KBOTKX27ga7Pbado0;

    invoke-direct {v1, p0}, Lcom/narvii/monetization/store/-$$Lambda$MonetizationStoreMainFragment$yDlWlGliA2KBOTKX27ga7Pbado0;-><init>(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/narvii/widget/WalletBalanceView;->setOnClaimIconPreClickListener(Lcom/narvii/widget/WalletBalanceView$OnPreClickListener;)V

    return-void
.end method

.method private queryPendingCount()V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/model/User;->isLeader()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 170
    :cond_1
    new-instance v0, Lcom/narvii/monetization/sticker/StickerHelper;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/sticker/StickerHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 171
    new-instance v1, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$2;

    invoke-direct {v1, p0}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$2;-><init>(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/narvii/monetization/sticker/StickerHelper;->sendPendingRequestCountRequest(Lcom/narvii/util/Callback;)V

    return-void
.end method

.method private updateUserView()V
    .locals 7

    .line 357
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    .line 359
    iget-object v1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->walletBalanceView:Lcom/narvii/widget/WalletBalanceView;

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const/16 v4, 0x8

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 360
    iget-object v1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->walletBalanceView:Lcom/narvii/widget/WalletBalanceView;

    invoke-virtual {v1}, Lcom/narvii/widget/WalletBalanceView;->refresh()V

    .line 362
    iget-object v1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->subscribeInfoContainerBottom:Landroid/view/View;

    const v4, 0x7f090b1a

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 364
    iget-object v4, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->subscribeInfoContainerBottom:Landroid/view/View;

    const v5, 0x7f090702

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 365
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    if-eqz v0, :cond_1

    const v5, 0x7f0900e4

    .line 367
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/narvii/widget/NVImageView;

    invoke-virtual {v0}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    const v5, 0x7f090764

    .line 368
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    :cond_1
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->membership:Lcom/narvii/wallet/MembershipService;

    const v5, 0x7f0900a2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 372
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 373
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 374
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f080292

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 375
    :cond_2
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->membership:Lcom/narvii/wallet/MembershipService;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->isAutoRenew()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->membership:Lcom/narvii/wallet/MembershipService;

    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->hasMemberShipExpired()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 376
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 377
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 378
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f080295

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 380
    :cond_3
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 381
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    const/4 v0, 0x0

    .line 388
    iget-object v1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->membership:Lcom/narvii/wallet/MembershipService;

    invoke-virtual {v1}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    move-result v1

    const v2, -0x2ffde5

    const/4 v5, 0x1

    if-eqz v1, :cond_8

    .line 389
    iget-object v1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->membership:Lcom/narvii/wallet/MembershipService;

    invoke-virtual {v1}, Lcom/narvii/wallet/MembershipService;->isAutoRenew()Z

    move-result v1

    if-nez v1, :cond_7

    .line 390
    iget-object v1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->membership:Lcom/narvii/wallet/MembershipService;

    invoke-virtual {v1}, Lcom/narvii/wallet/MembershipService;->expiringDays()I

    move-result v1

    if-nez v1, :cond_4

    const v0, 0x7f0f0b87

    .line 392
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    if-ne v1, v5, :cond_5

    const v0, 0x7f0f0b88

    .line 395
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    if-lez v1, :cond_6

    const/16 v6, 0xe

    if-gt v1, v6, :cond_6

    const v0, 0x7f0f0b89

    new-array v6, v5, [Ljava/lang/Object;

    .line 398
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v3

    invoke-virtual {p0, v0, v6}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    const/4 v2, 0x0

    goto :goto_3

    .line 403
    :cond_8
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->membership:Lcom/narvii/wallet/MembershipService;

    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->daysExpired()I

    move-result v0

    if-nez v0, :cond_9

    const v0, 0x7f0f0b84

    .line 405
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    const/4 v1, 0x0

    goto :goto_3

    :cond_9
    if-ne v0, v5, :cond_a

    const v0, 0x7f0f0b85

    .line 408
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_a
    if-lez v0, :cond_b

    const v1, 0x7f0f0b86

    new-array v6, v5, [Ljava/lang/Object;

    .line 411
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v3

    invoke-virtual {p0, v1, v6}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_b
    const v0, 0x7f0f0b8a

    .line 414
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, -0x77000001

    const/4 v1, 0x1

    const v2, -0x77000001

    :goto_3
    const v6, 0x7f0906fd

    .line 420
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 421
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 422
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz v1, :cond_c

    .line 423
    invoke-static {v5}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_4

    :cond_c
    invoke-static {v3}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    :goto_4
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 426
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->claimCoinDialog:Lcom/narvii/monetization/utils/ClaimGiftDialog;

    invoke-virtual {v0}, Lcom/narvii/monetization/utils/ClaimGiftDialog;->isShown()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->claimCoinDialog:Lcom/narvii/monetization/utils/ClaimGiftDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->membership:Lcom/narvii/wallet/MembershipService;

    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->canGetNewMemberRewards()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 427
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->claimCoinDialog:Lcom/narvii/monetization/utils/ClaimGiftDialog;

    iget-object v1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->membership:Lcom/narvii/wallet/MembershipService;

    invoke-virtual {v1}, Lcom/narvii/wallet/MembershipService;->getClaimCoupon()Lcom/narvii/wallet/CouponDetail;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/narvii/monetization/utils/ClaimGiftDialog;->show(Lcom/narvii/wallet/CouponDetail;Z)V

    :cond_d
    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 2

    .line 232
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 233
    new-instance v0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$MonetizationHeaderAdapter;

    invoke-direct {v0, p0, p0}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$MonetizationHeaderAdapter;-><init>(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;Lcom/narvii/app/NVContext;)V

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 235
    new-instance v0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$StoreSectionsAdapter;

    invoke-direct {v0, p0, p0}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$StoreSectionsAdapter;-><init>(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->listAdapter:Lcom/narvii/monetization/store/MonetizationStoreMainFragment$StoreSectionsAdapter;

    .line 236
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->listAdapter:Lcom/narvii/monetization/store/MonetizationStoreMainFragment$StoreSectionsAdapter;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 238
    new-instance v0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$MonetizationFooterAdapter;

    invoke-direct {v0, p0, p0}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$MonetizationFooterAdapter;-><init>(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;Lcom/narvii/app/NVContext;)V

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 239
    invoke-virtual {p0}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->refreshSectionData()V

    return-object p1
.end method

.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0b052a

    return v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "StorePage"

    return-object v0
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic lambda$configRightButton$0$MonetizationStoreMainFragment()V
    .locals 2

    .line 225
    sget-object v0, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v1, "WalletIcon"

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    return-void
.end method

.method public synthetic lambda$configRightButton$1$MonetizationStoreMainFragment()V
    .locals 2

    .line 227
    sget-object v0, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v1, "ClaimCoinsIcon"

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 338
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0906ff

    if-eq p1, v0, :cond_0

    const v0, 0x7f090702

    if-eq p1, v0, :cond_0

    const v0, 0x7f090b1a

    if-eq p1, v0, :cond_0

    return-void

    .line 342
    :cond_0
    sget-object p1, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "Membership"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 343
    iget-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result p1

    if-nez p1, :cond_1

    .line 344
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    return-void

    .line 347
    :cond_1
    const-class p1, Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "subscribe"

    .line 348
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "Source"

    const-string v1, "Store"

    .line 349
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 117
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 118
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    const-string v0, "account"

    .line 119
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    iput-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->accountService:Lcom/narvii/account/AccountService;

    const-string v0, "membership"

    .line 120
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/wallet/MembershipService;

    iput-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->membership:Lcom/narvii/wallet/MembershipService;

    const-string v0, "scrollSectionGroupId"

    .line 121
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->scrollSectionGroupId:Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string v0, "scrollDone"

    .line 123
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->scrollDone:Z

    :cond_0
    const-string v0, "Store"

    const-string v1, "config"

    .line 132
    invoke-direct {p0}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->queryPendingCount()V

    .line 133
    iget-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v2, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->walletBalanceReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.narvii.action.WALLET_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 134
    iget-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v2, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->walletBalanceReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.narvii.action.COUPONS_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 135
    iget-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v2, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->walletBalanceReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.narvii.action.PENDING_STICKER_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 136
    iget-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v2, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->walletBalanceReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.narvii.action.MEMBERSHIP_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 138
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 139
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->isGlobalSpace:Z

    .line 141
    new-instance p1, Lcom/narvii/monetization/utils/ClaimGiftDialog;

    invoke-direct {p1, p0}, Lcom/narvii/monetization/utils/ClaimGiftDialog;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->claimCoinDialog:Lcom/narvii/monetization/utils/ClaimGiftDialog;

    .line 142
    iget-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->claimCoinDialog:Lcom/narvii/monetization/utils/ClaimGiftDialog;

    iput-object v0, p1, Lcom/narvii/monetization/utils/ClaimGiftDialog;->source:Ljava/lang/String;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 147
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    .line 148
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->walletBalanceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 1

    .line 245
    invoke-super {p0, p1, p2}, Lcom/narvii/monetization/store/MonetizationStoreBaseFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 246
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    .line 247
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 248
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    const v0, -0xececb9

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V

    .line 249
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    const v0, -0x90807

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 5

    .line 433
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/narvii/model/StoreItemBaseObject;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v1, "update"

    if-ne v0, v1, :cond_2

    .line 434
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->storeItemSections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/monetization/store/data/StoreSection;

    .line 435
    iget-object v1, v1, Lcom/narvii/monetization/store/data/StoreSection;->previewStoreItemList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 436
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/monetization/store/data/StoreItem;

    .line 437
    iget-object v3, v2, Lcom/narvii/monetization/store/data/StoreItem;->refObjectId:Ljava/lang/String;

    iget-object v4, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/narvii/model/StoreItemBaseObject;

    invoke-virtual {v4}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 438
    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/narvii/model/StoreItemBaseObject;

    invoke-virtual {v2, v1}, Lcom/narvii/monetization/store/data/StoreItem;->setCachedRefObject(Lcom/narvii/model/NVObject;)V

    .line 439
    iget-object v1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->listAdapter:Lcom/narvii/monetization/store/MonetizationStoreMainFragment$StoreSectionsAdapter;

    if-eqz v1, :cond_0

    .line 440
    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onRefresh()V
    .locals 0

    .line 259
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onRefresh()V

    .line 260
    invoke-virtual {p0}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->refreshSectionData()V

    .line 261
    invoke-direct {p0}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->queryPendingCount()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 153
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onResume()V

    .line 154
    invoke-direct {p0}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->updateUserView()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 160
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 161
    iget-boolean v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->scrollDone:Z

    const-string v1, "scrollDone"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 200
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0f1033

    .line 201
    invoke-virtual {p0, p2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 203
    invoke-direct {p0}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->configRightButton()V

    const p2, 0x7f090b1d

    .line 205
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->subscribeInfoContainerBottom:Landroid/view/View;

    .line 207
    iget-object p2, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->subscribeInfoContainerBottom:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 208
    iget-object p2, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->subscribeInfoContainerBottom:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/View;->setClickable(Z)V

    .line 209
    iget-object p2, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->subscribeInfoContainerBottom:Landroid/view/View;

    const v0, 0x7f090b1a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object p2, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->subscribeInfoContainerBottom:Landroid/view/View;

    const v0, 0x7f090702

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f09080a

    .line 211
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/list/overlay/OverlayLayout;

    if-eqz p1, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/NVListView;

    invoke-virtual {p1, p2}, Lcom/narvii/list/overlay/OverlayLayout;->attach(Lcom/narvii/widget/NVListView;)V

    const/4 p2, 0x0

    .line 214
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 215
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    move-result v0

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1, p2, v0}, Lcom/narvii/list/overlay/OverlayLayout;->setLayout(II)V

    .line 216
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    move-result p2

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/narvii/list/overlay/OverlayLayout;->setHeight1(I)V

    .line 218
    :cond_0
    invoke-direct {p0}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->updateUserView()V

    return-void
.end method

.method public refreshSectionData()V
    .locals 4

    .line 265
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "/store/sections"

    .line 266
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string v1, "storeSectionGroupIds"

    const-string v2, "avatar-frame,chat-bubble,sticker"

    .line 267
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string v1, "api"

    .line 269
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    const/4 v2, 0x1

    .line 270
    iput-boolean v2, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->isLoading:Z

    const/4 v2, 0x0

    .line 271
    iput-object v2, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->errorMsg:Ljava/lang/String;

    .line 272
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    new-instance v2, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$3;

    const-class v3, Lcom/narvii/monetization/store/data/StoreSectionListResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$3;-><init>(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;Ljava/lang/Class;)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method
