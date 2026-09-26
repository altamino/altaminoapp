.class public Lcom/narvii/wallet/PurchaseCoinFragment;
.super Lcom/narvii/app/NVDialogFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/narvii/pushservice/PushService$PushListener;


# instance fields
.field private adsVideoStats:Lcom/narvii/wallet/AdsVideoStats;

.field private apiRequest:Lcom/narvii/util/http/ApiRequest;

.field private balance:Landroid/widget/TextView;

.field private final billingManager:Lcom/narvii/wallet/CoinBillingManager;

.field private error:Landroid/view/View;

.field private errorMsg:Ljava/lang/String;

.field private items:[Landroid/view/View;

.field private loading:Landroid/view/View;

.field private membership:Lcom/narvii/wallet/MembershipService;

.field private noEnoughCoins:Landroid/view/View;

.field private final noRV:Z

.field private pendingWatchRV:Z

.field private products:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/wallet/Product;",
            ">;"
        }
    .end annotation
.end field

.field private requestingDialog:Landroid/app/Dialog;

.field private totalCoinsFloat:D

.field private final walletBalanceReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVDialogFragment;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->noRV:Z

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/narvii/wallet/CoinBillingManager;->getInstance()Lcom/narvii/wallet/CoinBillingManager;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->billingManager:Lcom/narvii/wallet/CoinBillingManager;

    .line 13
    .line 14
    new-instance v0, Lcom/narvii/wallet/PurchaseCoinFragment$1;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/narvii/wallet/PurchaseCoinFragment$1;-><init>(Lcom/narvii/wallet/PurchaseCoinFragment;)V

    .line 18
    .line 19
    iput-object v0, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->walletBalanceReceiver:Landroid/content/BroadcastReceiver;

    .line 20
    return-void
.end method

.method private clickRvButton(Z)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->adsVideoStats:Lcom/narvii/wallet/AdsVideoStats;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    sget-object p1, Lcom/narvii/logging/ActSemantic;->wildcard:Lcom/narvii/logging/ActSemantic;

    .line 7
    .line 8
    .line 9
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    const-string v0, "EarnFreeCoins"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    const-string v0, "canWatchVideo"

    .line 19
    .line 20
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 28
    .line 29
    iget-object p1, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->adsVideoStats:Lcom/narvii/wallet/AdsVideoStats;

    .line 30
    .line 31
    iget-object p1, p1, Lcom/narvii/wallet/AdsVideoStats;->canNotWatchVideoReason:Ljava/lang/String;

    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->showShortToast(Ljava/lang/String;)V

    .line 37
    goto :goto_0

    .line 38
    .line 39
    .line 40
    :cond_0
    const p1, 0x7f1212ad

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->showShortToast(I)V

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_1
    if-eqz p1, :cond_3

    .line 47
    const/4 p1, 0x1

    .line 48
    .line 49
    iput-boolean p1, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->pendingWatchRV:Z

    .line 50
    .line 51
    iget-object p1, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->apiRequest:Lcom/narvii/util/http/ApiRequest;

    .line 52
    .line 53
    if-nez p1, :cond_2

    .line 54
    .line 55
    .line 56
    invoke-direct {p0}, Lcom/narvii/wallet/PurchaseCoinFragment;->refreshWallet()V

    .line 57
    .line 58
    :cond_2
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    .line 65
    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 66
    .line 67
    iput-object p1, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->requestingDialog:Landroid/app/Dialog;

    .line 68
    .line 69
    new-instance v0, Lcom/narvii/wallet/h0;

    .line 70
    .line 71
    .line 72
    invoke-direct {v0, p0}, Lcom/narvii/wallet/h0;-><init>(Lcom/narvii/wallet/PurchaseCoinFragment;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 76
    .line 77
    iget-object p1, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->requestingDialog:Landroid/app/Dialog;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 81
    :cond_3
    :goto_0
    return-void
.end method

.method private dismissRequestingDialog()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->requestingDialog:Landroid/app/Dialog;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->requestingDialog:Landroid/app/Dialog;

    .line 11
    :cond_0
    return-void
.end method

.method private fetchInAppProducts()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->billingManager:Lcom/narvii/wallet/CoinBillingManager;

    .line 3
    .line 4
    new-instance v1, Lcom/narvii/wallet/PurchaseCoinFragment$2;

    .line 5
    .line 6
    const-class v2, Lcom/narvii/wallet/ProductListResponse;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, p0, v2}, Lcom/narvii/wallet/PurchaseCoinFragment$2;-><init>(Lcom/narvii/wallet/PurchaseCoinFragment;Ljava/lang/Class;)V

    .line 10
    const/4 v2, 0x1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v2, v1}, Lcom/narvii/wallet/CoinBillingManager;->fetchInAppProducts(ZLcom/narvii/util/http/ApiResponseListener;)V

    .line 14
    return-void
.end method

.method private synthetic lambda$clickRvButton$2(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->pendingWatchRV:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->requestingDialog:Landroid/app/Dialog;

    return-void
.end method

.method private synthetic lambda$onCreate$0(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/wallet/PurchaseCoinFragment;->update()V

    .line 4
    return-void
.end method

.method private synthetic lambda$onCreate$1(Lcom/narvii/wallet/WalletResponse;)V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/logging/ActSemantic;->purchaseSuccess:Lcom/narvii/logging/ActSemantic;

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "CoinsList"

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
    .line 17
    iget-object p1, p1, Lcom/narvii/wallet/WalletResponse;->wallet:Lcom/narvii/wallet/Wallet;

    .line 18
    .line 19
    iget-wide v0, p1, Lcom/narvii/wallet/Wallet;->totalCoinsFloat:D

    .line 20
    .line 21
    iput-wide v0, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->totalCoinsFloat:D

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/narvii/wallet/PurchaseCoinFragment;->update()V

    .line 25
    .line 26
    new-instance p1, Lcom/narvii/wallet/g0;

    .line 27
    .line 28
    .line 29
    invoke-direct {p1, p0}, Lcom/narvii/wallet/g0;-><init>(Lcom/narvii/wallet/PurchaseCoinFragment;)V

    .line 30
    .line 31
    const-wide/16 v0, 0x5dc

    .line 32
    .line 33
    .line 34
    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 35
    return-void
.end method

.method public static synthetic n(Lcom/narvii/wallet/PurchaseCoinFragment;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/wallet/PurchaseCoinFragment;->lambda$clickRvButton$2(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic o(Lcom/narvii/wallet/PurchaseCoinFragment;Lcom/narvii/wallet/WalletResponse;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/wallet/PurchaseCoinFragment;->lambda$onCreate$1(Lcom/narvii/wallet/WalletResponse;)V

    return-void
.end method

.method public static synthetic p(Lcom/narvii/wallet/PurchaseCoinFragment;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/wallet/PurchaseCoinFragment;->lambda$onCreate$0(Ljava/lang/Boolean;)V

    return-void
.end method

.method static bridge synthetic q(Lcom/narvii/wallet/PurchaseCoinFragment;)Lcom/narvii/wallet/MembershipService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->membership:Lcom/narvii/wallet/MembershipService;

    return-object p0
.end method

.method static bridge synthetic r(Lcom/narvii/wallet/PurchaseCoinFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->pendingWatchRV:Z

    return p0
.end method

.method private refreshWallet()V
    .locals 4

    .line 1
    .line 2
    const-string v0, "api"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->apiRequest:Lcom/narvii/util/http/ApiRequest;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    const-string v2, "/wallet"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lcom/narvii/util/Utils;->getTimeZoneInMin()I

    .line 29
    move-result v2

    .line 30
    .line 31
    .line 32
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    .line 36
    const-string/jumbo v3, "timezone"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    iput-object v1, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->apiRequest:Lcom/narvii/util/http/ApiRequest;

    .line 47
    .line 48
    new-instance v2, Lcom/narvii/wallet/PurchaseCoinFragment$3;

    .line 49
    .line 50
    const-class v3, Lcom/narvii/wallet/WalletResponse;

    .line 51
    .line 52
    .line 53
    invoke-direct {v2, p0, v3}, Lcom/narvii/wallet/PurchaseCoinFragment$3;-><init>(Lcom/narvii/wallet/PurchaseCoinFragment;Ljava/lang/Class;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 57
    return-void
.end method

.method static bridge synthetic s(Lcom/narvii/wallet/PurchaseCoinFragment;Lcom/narvii/wallet/AdsVideoStats;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->adsVideoStats:Lcom/narvii/wallet/AdsVideoStats;

    return-void
.end method

.method public static show(Lcom/narvii/app/NVContext;Z)V
    .locals 5

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    instance-of v0, v0, Lcom/narvii/app/NVActivity;

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    .line 14
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 15
    move-result-object p0

    .line 16
    .line 17
    check-cast p0, Lcom/narvii/app/NVActivity;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    const-string v1, "_purchase_coins"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    if-eqz v2, :cond_1

    .line 32
    return-void

    .line 33
    .line 34
    :cond_1
    new-instance v2, Lcom/narvii/wallet/PurchaseCoinFragment;

    .line 35
    .line 36
    .line 37
    invoke-direct {v2}, Lcom/narvii/wallet/PurchaseCoinFragment;-><init>()V

    .line 38
    .line 39
    new-instance v3, Landroid/os/Bundle;

    .line 40
    .line 41
    .line 42
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 43
    .line 44
    const-string v4, "noEnoughCoins"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, v4, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, p0, v0, v1}, Lcom/narvii/app/NVDialogFragment;->show(Landroid/app/Activity;Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 54
    goto :goto_0

    .line 55
    .line 56
    :cond_2
    const-string p0, "cannot find nvActivity by nvContext"

    .line 57
    .line 58
    .line 59
    invoke-static {p0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 60
    :cond_3
    :goto_0
    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/wallet/PurchaseCoinFragment;Lcom/narvii/util/http/ApiRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->apiRequest:Lcom/narvii/util/http/ApiRequest;

    return-void
.end method

.method static bridge synthetic u(Lcom/narvii/wallet/PurchaseCoinFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->errorMsg:Ljava/lang/String;

    return-void
.end method

.method private updateItemView(Landroid/view/View;)V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->items:[Landroid/view/View;

    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    .line 7
    :goto_0
    if-ge v3, v1, :cond_1

    .line 8
    .line 9
    aget-object v4, v0, v3

    .line 10
    .line 11
    if-ne v4, p1, :cond_0

    .line 12
    const/4 v5, 0x1

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    move v5, v2

    .line 15
    .line 16
    .line 17
    :goto_1
    invoke-virtual {v4, v5}, Landroid/view/View;->setSelected(Z)V

    .line 18
    .line 19
    add-int/lit8 v3, v3, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    return-void
.end method

.method private updateWalletBalanceView()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->balance:Landroid/widget/TextView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->membership:Lcom/narvii/wallet/MembershipService;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->walletBalanceFloat()D

    .line 12
    move-result-wide v0

    .line 13
    .line 14
    iput-wide v0, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->totalCoinsFloat:D

    .line 15
    .line 16
    iget-object v2, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->balance:Landroid/widget/TextView;

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/narvii/wallet/IabUtils;->formatCoins(D)Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    :cond_0
    return-void
.end method

.method static bridge synthetic v(Lcom/narvii/wallet/PurchaseCoinFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->pendingWatchRV:Z

    return-void
.end method

.method static bridge synthetic w(Lcom/narvii/wallet/PurchaseCoinFragment;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->products:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic x(Lcom/narvii/wallet/PurchaseCoinFragment;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/wallet/PurchaseCoinFragment;->clickRvButton(Z)V

    return-void
.end method

.method static bridge synthetic y(Lcom/narvii/wallet/PurchaseCoinFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/wallet/PurchaseCoinFragment;->dismissRequestingDialog()V

    return-void
.end method

.method static bridge synthetic z(Lcom/narvii/wallet/PurchaseCoinFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/wallet/PurchaseCoinFragment;->updateWalletBalanceView()V

    return-void
.end method


# virtual methods
.method public getPageName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "purchase_coins_dialog"

    return-object v0
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    const v1, 0x7f0a04ac

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    const/4 v0, 0x1

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v0}, Lcom/narvii/wallet/PurchaseCoinFragment;->clickRvButton(Z)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 17
    move-result v0

    .line 18
    .line 19
    .line 20
    const v1, 0x7f0a04fd

    .line 21
    .line 22
    if-ne v0, v1, :cond_1

    .line 23
    const/4 v0, 0x0

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->errorMsg:Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lcom/narvii/wallet/PurchaseCoinFragment;->fetchInAppProducts()V

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 32
    move-result v0

    .line 33
    .line 34
    .line 35
    const v1, 0x7f0a0321

    .line 36
    .line 37
    if-ne v0, v1, :cond_2

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/narvii/app/NVDialogFragment;->dismiss()V

    .line 41
    .line 42
    .line 43
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    instance-of v0, v0, Lcom/narvii/wallet/Product;

    .line 47
    .line 48
    if-eqz v0, :cond_4

    .line 49
    .line 50
    sget-object v0, Lcom/narvii/logging/ActSemantic;->purchase:Lcom/narvii/logging/ActSemantic;

    .line 51
    .line 52
    .line 53
    invoke-static {p0, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    const-string v1, "CoinsList"

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    instance-of v0, v0, Lcom/narvii/chat/ChatActivity;

    .line 70
    .line 71
    if-eqz v0, :cond_3

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    check-cast v0, Lcom/narvii/chat/ChatActivity;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/narvii/chat/ChatActivity;->disableFloatingWindow()V

    .line 81
    .line 82
    :cond_3
    iget-object v0, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->billingManager:Lcom/narvii/wallet/CoinBillingManager;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 86
    move-result-object v1

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 90
    move-result-object v2

    .line 91
    .line 92
    check-cast v2, Lcom/narvii/wallet/Product;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v1, v2}, Lcom/narvii/wallet/CoinBillingManager;->purchaseInAppProduct(Landroid/app/Activity;Lcom/narvii/wallet/Product;)V

    .line 96
    .line 97
    .line 98
    invoke-direct {p0, p1}, Lcom/narvii/wallet/PurchaseCoinFragment;->updateItemView(Landroid/view/View;)V

    .line 99
    :cond_4
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/wallet/PurchaseCoinFragment;->refreshWallet()V

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->walletBalanceReceiver:Landroid/content/BroadcastReceiver;

    .line 9
    .line 10
    new-instance v0, Landroid/content/IntentFilter;

    .line 11
    .line 12
    const-string v1, "com.narvii.action.WALLET_CHANGED"

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 19
    .line 20
    const-string p1, "membership"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    check-cast p1, Lcom/narvii/wallet/MembershipService;

    .line 27
    .line 28
    iput-object p1, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->membership:Lcom/narvii/wallet/MembershipService;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/narvii/wallet/MembershipService;->walletBalanceFloat()D

    .line 32
    move-result-wide v0

    .line 33
    .line 34
    iput-wide v0, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->totalCoinsFloat:D

    .line 35
    .line 36
    iget-object p1, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->billingManager:Lcom/narvii/wallet/CoinBillingManager;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/narvii/wallet/CoinBillingManager;->getQueryInAppFinishedLive()Landroidx/lifecycle/MutableLiveData;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    new-instance v0, Lcom/narvii/wallet/i0;

    .line 43
    .line 44
    .line 45
    invoke-direct {v0, p0}, Lcom/narvii/wallet/i0;-><init>(Lcom/narvii/wallet/PurchaseCoinFragment;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->i(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 49
    .line 50
    iget-object p1, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->billingManager:Lcom/narvii/wallet/CoinBillingManager;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/narvii/wallet/CoinBillingManager;->getOnWalletChangedLive()La;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    new-instance v0, Lcom/narvii/wallet/j0;

    .line 57
    .line 58
    .line 59
    invoke-direct {v0, p0}, Lcom/narvii/wallet/j0;-><init>(Lcom/narvii/wallet/PurchaseCoinFragment;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p0, v0}, La;->i(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 63
    .line 64
    .line 65
    invoke-direct {p0}, Lcom/narvii/wallet/PurchaseCoinFragment;->fetchInAppProducts()V

    .line 66
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
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
    const p3, 0x7f0d07a4

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->walletBalanceReceiver:Landroid/content/BroadcastReceiver;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 9
    return-void
.end method

.method public onInterceptNotification(Lcom/narvii/pushservice/PushPayload;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onPushPayload(Lcom/narvii/pushservice/PushPayload;)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVDialogFragment;->onStart()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->billingManager:Lcom/narvii/wallet/CoinBillingManager;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/narvii/wallet/CoinBillingManager;->setContext(Landroid/content/Context;)V

    .line 13
    .line 14
    const-string v0, "push"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Lcom/narvii/pushservice/PushService;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p0}, Lcom/narvii/pushservice/PushService;->addPushListener(Lcom/narvii/pushservice/PushService$PushListener;)V

    .line 24
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    .line 2
    const-string v0, "push"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/pushservice/PushService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Lcom/narvii/pushservice/PushService;->removePushListener(Lcom/narvii/pushservice/PushService$PushListener;)V

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->billingManager:Lcom/narvii/wallet/CoinBillingManager;

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/narvii/wallet/CoinBillingManager;->setContext(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    invoke-super {p0}, Lcom/narvii/app/NVDialogFragment;->onStop()V

    .line 21
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
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
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p2, 0x7f0a064c

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    iput-object p2, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->noEnoughCoins:Landroid/view/View;

    .line 13
    .line 14
    .line 15
    const p2, 0x7f0a01ac

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object p2

    .line 20
    .line 21
    check-cast p2, Landroid/widget/TextView;

    .line 22
    .line 23
    iput-object p2, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->balance:Landroid/widget/TextView;

    .line 24
    .line 25
    .line 26
    const p2, 0x7f0a04ac

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object p2

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    .line 35
    const/16 v0, 0x8

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    const p2, 0x7f0a081d

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    move-result-object p2

    .line 46
    .line 47
    iput-object p2, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->loading:Landroid/view/View;

    .line 48
    .line 49
    .line 50
    const p2, 0x7f0a04fd

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    move-result-object p2

    .line 55
    .line 56
    iput-object p2, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->error:Landroid/view/View;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    .line 61
    .line 62
    const p2, 0x7f0a0321

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    move-result-object p2

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    const/4 p2, 0x6

    .line 71
    .line 72
    new-array p2, p2, [Landroid/view/View;

    .line 73
    .line 74
    iput-object p2, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->items:[Landroid/view/View;

    .line 75
    .line 76
    .line 77
    const v0, 0x7f0a074f

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 81
    move-result-object v0

    .line 82
    const/4 v1, 0x0

    .line 83
    .line 84
    aput-object v0, p2, v1

    .line 85
    .line 86
    iget-object p2, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->items:[Landroid/view/View;

    .line 87
    .line 88
    .line 89
    const v0, 0x7f0a0750

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 93
    move-result-object v0

    .line 94
    const/4 v1, 0x1

    .line 95
    .line 96
    aput-object v0, p2, v1

    .line 97
    .line 98
    iget-object p2, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->items:[Landroid/view/View;

    .line 99
    .line 100
    .line 101
    const v0, 0x7f0a0751

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 105
    move-result-object v0

    .line 106
    const/4 v1, 0x2

    .line 107
    .line 108
    aput-object v0, p2, v1

    .line 109
    .line 110
    iget-object p2, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->items:[Landroid/view/View;

    .line 111
    .line 112
    .line 113
    const v0, 0x7f0a0752

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 117
    move-result-object v0

    .line 118
    const/4 v1, 0x3

    .line 119
    .line 120
    aput-object v0, p2, v1

    .line 121
    .line 122
    iget-object p2, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->items:[Landroid/view/View;

    .line 123
    .line 124
    .line 125
    const v0, 0x7f0a0753

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 129
    move-result-object v0

    .line 130
    const/4 v1, 0x4

    .line 131
    .line 132
    aput-object v0, p2, v1

    .line 133
    .line 134
    iget-object p2, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->items:[Landroid/view/View;

    .line 135
    .line 136
    .line 137
    const v0, 0x7f0a0754

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 141
    move-result-object p1

    .line 142
    const/4 v0, 0x5

    .line 143
    .line 144
    aput-object p1, p2, v0

    .line 145
    .line 146
    iget-object p1, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->billingManager:Lcom/narvii/wallet/CoinBillingManager;

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1}, Lcom/narvii/wallet/CoinBillingManager;->getProductList()Ljava/util/List;

    .line 150
    move-result-object p1

    .line 151
    .line 152
    .line 153
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 154
    move-result p2

    .line 155
    .line 156
    if-nez p2, :cond_0

    .line 157
    .line 158
    iput-object p1, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->products:Ljava/util/List;

    .line 159
    const/4 p1, 0x0

    .line 160
    .line 161
    iput-object p1, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->errorMsg:Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/wallet/PurchaseCoinFragment;->update()V

    .line 165
    return-void
.end method

.method update()V
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->noEnoughCoins:Landroid/view/View;

    .line 3
    .line 4
    if-eqz v0, :cond_9

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto/16 :goto_8

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->noEnoughCoins:Landroid/view/View;

    .line 15
    .line 16
    const-string v1, "noEnoughCoins"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 20
    move-result v1

    .line 21
    .line 22
    const/16 v2, 0x8

    .line 23
    const/4 v3, 0x0

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    move v1, v3

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move v1, v2

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    invoke-direct {p0}, Lcom/narvii/wallet/PurchaseCoinFragment;->updateWalletBalanceView()V

    .line 35
    .line 36
    iget-object v0, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->loading:Landroid/view/View;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->products:Ljava/util/List;

    .line 39
    .line 40
    if-nez v1, :cond_2

    .line 41
    .line 42
    iget-object v1, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->errorMsg:Ljava/lang/String;

    .line 43
    .line 44
    if-nez v1, :cond_2

    .line 45
    move v1, v3

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    move v1, v2

    .line 48
    .line 49
    .line 50
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 51
    .line 52
    iget-object v0, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->error:Landroid/view/View;

    .line 53
    .line 54
    iget-object v1, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->products:Ljava/util/List;

    .line 55
    .line 56
    if-nez v1, :cond_3

    .line 57
    .line 58
    iget-object v1, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->errorMsg:Ljava/lang/String;

    .line 59
    .line 60
    if-eqz v1, :cond_3

    .line 61
    move v1, v3

    .line 62
    goto :goto_2

    .line 63
    :cond_3
    move v1, v2

    .line 64
    .line 65
    .line 66
    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 67
    .line 68
    iget-object v0, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->error:Landroid/view/View;

    .line 69
    .line 70
    .line 71
    const v1, 0x7f0a0e51

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    check-cast v0, Landroid/widget/TextView;

    .line 78
    .line 79
    iget-object v4, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->errorMsg:Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    .line 84
    iget-object v0, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->products:Ljava/util/List;

    .line 85
    .line 86
    if-nez v0, :cond_4

    .line 87
    move v0, v3

    .line 88
    goto :goto_3

    .line 89
    .line 90
    .line 91
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 92
    move-result v0

    .line 93
    :goto_3
    move v4, v3

    .line 94
    .line 95
    :goto_4
    iget-object v5, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->items:[Landroid/view/View;

    .line 96
    array-length v6, v5

    .line 97
    .line 98
    if-ge v4, v6, :cond_9

    .line 99
    .line 100
    aget-object v5, v5, v4

    .line 101
    .line 102
    .line 103
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 104
    move-result-object v6

    .line 105
    .line 106
    check-cast v6, Landroid/view/View;

    .line 107
    .line 108
    iget-object v7, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->products:Ljava/util/List;

    .line 109
    .line 110
    if-nez v7, :cond_5

    .line 111
    move v7, v2

    .line 112
    goto :goto_5

    .line 113
    :cond_5
    move v7, v3

    .line 114
    .line 115
    .line 116
    :goto_5
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 117
    .line 118
    if-ge v4, v0, :cond_6

    .line 119
    move v6, v3

    .line 120
    goto :goto_6

    .line 121
    :cond_6
    const/4 v6, 0x4

    .line 122
    .line 123
    .line 124
    :goto_6
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 125
    .line 126
    if-ge v4, v0, :cond_8

    .line 127
    .line 128
    iget-object v6, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->products:Ljava/util/List;

    .line 129
    .line 130
    .line 131
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 132
    move-result-object v6

    .line 133
    .line 134
    check-cast v6, Lcom/narvii/wallet/Product;

    .line 135
    .line 136
    .line 137
    const v7, 0x7f0a06d5

    .line 138
    .line 139
    .line 140
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 141
    move-result-object v7

    .line 142
    .line 143
    check-cast v7, Lcom/narvii/widget/NVImageView;

    .line 144
    .line 145
    iget-object v8, v6, Lcom/narvii/wallet/Product;->icon:Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v7, v8}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 149
    .line 150
    .line 151
    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 152
    move-result-object v7

    .line 153
    .line 154
    check-cast v7, Landroid/widget/TextView;

    .line 155
    .line 156
    iget v8, v6, Lcom/narvii/wallet/Product;->numberOfCoins:I

    .line 157
    .line 158
    .line 159
    invoke-static {v8}, Lcom/narvii/wallet/IabUtils;->formatCoins(I)Ljava/lang/String;

    .line 160
    move-result-object v8

    .line 161
    .line 162
    .line 163
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    .line 165
    iget-object v7, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->billingManager:Lcom/narvii/wallet/CoinBillingManager;

    .line 166
    .line 167
    iget-object v8, v6, Lcom/narvii/wallet/Product;->skuList:[Ljava/lang/String;

    .line 168
    .line 169
    aget-object v8, v8, v3

    .line 170
    .line 171
    .line 172
    invoke-virtual {v7, v8}, Lcom/narvii/wallet/CoinBillingManager;->getSkuDetails(Ljava/lang/String;)Lcom/android/billingclient/api/SkuDetails;

    .line 173
    move-result-object v7

    .line 174
    .line 175
    .line 176
    const v8, 0x7f0a0b85

    .line 177
    .line 178
    .line 179
    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 180
    move-result-object v8

    .line 181
    .line 182
    check-cast v8, Landroid/widget/TextView;

    .line 183
    .line 184
    if-nez v7, :cond_7

    .line 185
    .line 186
    .line 187
    const v7, 0x7f120c7f

    .line 188
    .line 189
    .line 190
    invoke-virtual {p0, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 191
    move-result-object v7

    .line 192
    goto :goto_7

    .line 193
    .line 194
    .line 195
    :cond_7
    invoke-virtual {v7}, Lcom/android/billingclient/api/SkuDetails;->a()Ljava/lang/String;

    .line 196
    move-result-object v7

    .line 197
    .line 198
    .line 199
    :goto_7
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v5, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    :cond_8
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    .line 207
    add-int/lit8 v4, v4, 0x1

    .line 208
    goto :goto_4

    .line 209
    :cond_9
    :goto_8
    return-void
.end method
