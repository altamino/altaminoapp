.class public Lcom/narvii/wallet/PurchaseCoinFragment;
.super Lcom/narvii/app/NVDialogFragment;
.source "PurchaseCoinFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/narvii/pushservice/PushService$PushListener;


# instance fields
.field account:Lcom/narvii/account/AccountService;

.field adsVideoStats:Lcom/narvii/wallet/AdsVideoStats;

.field apiRequest:Lcom/narvii/util/http/ApiRequest;

.field balance:Landroid/widget/TextView;

.field earnMoreCoinsLayout:Landroid/view/View;

.field error:Landroid/view/View;

.field errorMsg:Ljava/lang/String;

.field iabPurchaseManager:Lcom/narvii/wallet/IabPurchaseManager;

.field items:[Landroid/view/View;

.field loading:Landroid/view/View;

.field membership:Lcom/narvii/wallet/MembershipService;

.field noEnoughCoins:Landroid/view/View;

.field noRV:Z

.field pendingWatchRV:Z

.field products:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/wallet/Product;",
            ">;"
        }
    .end annotation
.end field

.field requestingDialog:Landroid/app/Dialog;

.field rewardVideoHelper:Lcom/narvii/wallet/RewardVideoHelper;

.field totalCoinsFloat:D

.field private walletBalanceReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/narvii/app/NVDialogFragment;-><init>()V

    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->noRV:Z

    .line 72
    new-instance v0, Lcom/narvii/wallet/PurchaseCoinFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/wallet/PurchaseCoinFragment$1;-><init>(Lcom/narvii/wallet/PurchaseCoinFragment;)V

    iput-object v0, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->walletBalanceReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/wallet/PurchaseCoinFragment;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/narvii/wallet/PurchaseCoinFragment;->updateWalletBalanceView()V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/wallet/PurchaseCoinFragment;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/narvii/wallet/PurchaseCoinFragment;->dismissRequestingDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/wallet/PurchaseCoinFragment;Z)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/narvii/wallet/PurchaseCoinFragment;->clickRvButton(Z)V

    return-void
.end method

.method private clickRvButton(Z)V
    .locals 2

    .line 284
    iget-object v0, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->adsVideoStats:Lcom/narvii/wallet/AdsVideoStats;

    if-eqz v0, :cond_2

    .line 285
    iget-boolean p1, v0, Lcom/narvii/wallet/AdsVideoStats;->canWatchVideo:Z

    if-eqz p1, :cond_0

    .line 286
    invoke-direct {p0}, Lcom/narvii/wallet/PurchaseCoinFragment;->startWatchRV()V

    goto :goto_0

    .line 288
    :cond_0
    sget-object p1, Lcom/narvii/logging/ActSemantic;->wildcard:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "EarnFreeCoins"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "canWatchVideo"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 289
    iget-object p1, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->adsVideoStats:Lcom/narvii/wallet/AdsVideoStats;

    iget-object p1, p1, Lcom/narvii/wallet/AdsVideoStats;->canNotWatchVideoReason:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 290
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->showShortToast(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const p1, 0x7f0f11a5

    .line 292
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->showShortToast(I)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_4

    const/4 p1, 0x1

    .line 296
    iput-boolean p1, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->pendingWatchRV:Z

    .line 297
    iget-object p1, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->apiRequest:Lcom/narvii/util/http/ApiRequest;

    if-nez p1, :cond_3

    .line 298
    invoke-direct {p0}, Lcom/narvii/wallet/PurchaseCoinFragment;->refreshWallet()V

    .line 300
    :cond_3
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->requestingDialog:Landroid/app/Dialog;

    .line 301
    iget-object p1, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->requestingDialog:Landroid/app/Dialog;

    new-instance v0, Lcom/narvii/wallet/PurchaseCoinFragment$4;

    invoke-direct {v0, p0}, Lcom/narvii/wallet/PurchaseCoinFragment$4;-><init>(Lcom/narvii/wallet/PurchaseCoinFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 308
    iget-object p1, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->requestingDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_4
    :goto_0
    return-void
.end method

.method private dismissRequestingDialog()V
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->requestingDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 334
    iput-object v0, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->requestingDialog:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method private refreshWallet()V
    .locals 4

    const-string v0, "api"

    .line 339
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 340
    iget-object v1, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->apiRequest:Lcom/narvii/util/http/ApiRequest;

    if-eqz v1, :cond_0

    .line 341
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 343
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "/wallet"

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-static {}, Lcom/narvii/util/Utils;->getTimeZoneInMin()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "timezone"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->apiRequest:Lcom/narvii/util/http/ApiRequest;

    .line 344
    iget-object v1, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->apiRequest:Lcom/narvii/util/http/ApiRequest;

    new-instance v2, Lcom/narvii/wallet/PurchaseCoinFragment$5;

    const-class v3, Lcom/narvii/wallet/WalletResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/wallet/PurchaseCoinFragment$5;-><init>(Lcom/narvii/wallet/PurchaseCoinFragment;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method public static show(Lcom/narvii/app/NVContext;Z)V
    .locals 5

    if-nez p0, :cond_0

    return-void

    .line 416
    :cond_0
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/app/NVActivity;

    if-eqz v0, :cond_2

    .line 417
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/narvii/app/NVActivity;

    .line 418
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "_purchase_coins"

    .line 420
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_1

    return-void

    .line 423
    :cond_1
    new-instance v2, Lcom/narvii/wallet/PurchaseCoinFragment;

    invoke-direct {v2}, Lcom/narvii/wallet/PurchaseCoinFragment;-><init>()V

    .line 424
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "noEnoughCoins"

    .line 425
    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 426
    invoke-virtual {v2, v3}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 427
    invoke-virtual {v2, p0, v0, v1}, Lcom/narvii/app/NVDialogFragment;->show(Landroid/app/Activity;Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p0, "cannot find nvActivity by nvContext"

    .line 430
    invoke-static {p0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private startWatchRV()V
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->rewardVideoHelper:Lcom/narvii/wallet/RewardVideoHelper;

    invoke-virtual {v0}, Lcom/narvii/wallet/RewardVideoHelper;->startRewardVideo()V

    return-void
.end method

.method private updateItemView(Landroid/view/View;)V
    .locals 6

    .line 274
    iget-object v0, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->items:[Landroid/view/View;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    if-ne v4, p1, :cond_0

    const/4 v5, 0x1

    .line 276
    invoke-virtual {v4, v5}, Landroid/view/View;->setSelected(Z)V

    goto :goto_1

    .line 278
    :cond_0
    invoke-virtual {v4, v2}, Landroid/view/View;->setSelected(Z)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateWalletBalanceView()V
    .locals 3

    .line 244
    iget-object v0, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->balance:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->membership:Lcom/narvii/wallet/MembershipService;

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->walletBalanceFloat()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->totalCoinsFloat:D

    .line 246
    iget-object v0, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->balance:Landroid/widget/TextView;

    iget-wide v1, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->totalCoinsFloat:D

    invoke-static {v1, v2}, Lcom/narvii/wallet/IabUtils;->formatCoins(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "PurchaseCoinsDialog"

    return-object v0
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const v0, 0xe81f

    if-eq p1, v0, :cond_0

    .line 327
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->iabPurchaseManager:Lcom/narvii/wallet/IabPurchaseManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/narvii/wallet/IabPurchaseManager;->handleActivityResult(IILandroid/content/Intent;)Z

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 252
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0903b9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 253
    invoke-direct {p0, v0}, Lcom/narvii/wallet/PurchaseCoinFragment;->clickRvButton(Z)V

    .line 255
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0903fb

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 256
    iput-object v0, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->errorMsg:Ljava/lang/String;

    .line 257
    iget-object v0, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->iabPurchaseManager:Lcom/narvii/wallet/IabPurchaseManager;

    invoke-virtual {v0}, Lcom/narvii/wallet/IabPurchaseManager;->sendProductRequest()V

    .line 259
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09025e

    if-ne v0, v1, :cond_2

    .line 260
    invoke-virtual {p0}, Lcom/narvii/app/NVDialogFragment;->dismiss()V

    .line 262
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/wallet/Product;

    if-eqz v0, :cond_4

    .line 263
    sget-object v0, Lcom/narvii/logging/ActSemantic;->purchase:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v1, "CoinsList"

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 264
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/chat/ChatActivity;

    if-eqz v0, :cond_3

    .line 265
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/ChatActivity;

    invoke-virtual {v0}, Lcom/narvii/chat/ChatActivity;->disableFloatingWindow()V

    .line 267
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/wallet/Product;

    .line 268
    iget-object v1, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->iabPurchaseManager:Lcom/narvii/wallet/IabPurchaseManager;

    invoke-virtual {v1, v0}, Lcom/narvii/wallet/IabPurchaseManager;->purchase(Lcom/narvii/wallet/Product;)V

    .line 269
    invoke-direct {p0, p1}, Lcom/narvii/wallet/PurchaseCoinFragment;->updateItemView(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 83
    invoke-super {p0, p1}, Lcom/narvii/app/NVDialogFragment;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->walletBalanceReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.narvii.action.WALLET_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 112
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/app/NVActivity;

    if-eqz p1, :cond_0

    .line 113
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/narvii/app/NVActivity;

    const v0, 0xe81f

    invoke-virtual {p1, v0, p0}, Lcom/narvii/app/NVActivity;->registerActivityRequestCallback(ILandroid/support/v4/app/Fragment;)V

    goto :goto_0

    :cond_0
    const-string p1, "not NVActivity"

    .line 115
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    :goto_0
    const-string p1, "membership"

    .line 118
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/wallet/MembershipService;

    iput-object p1, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->membership:Lcom/narvii/wallet/MembershipService;

    .line 119
    iget-object p1, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->membership:Lcom/narvii/wallet/MembershipService;

    invoke-virtual {p1}, Lcom/narvii/wallet/MembershipService;->walletBalanceFloat()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->totalCoinsFloat:D

    .line 121
    new-instance p1, Lcom/narvii/wallet/PurchaseCoinFragment$3;

    invoke-direct {p1, p0, p0}, Lcom/narvii/wallet/PurchaseCoinFragment$3;-><init>(Lcom/narvii/wallet/PurchaseCoinFragment;Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->iabPurchaseManager:Lcom/narvii/wallet/IabPurchaseManager;

    .line 157
    iget-object p1, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->iabPurchaseManager:Lcom/narvii/wallet/IabPurchaseManager;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/narvii/wallet/IabPurchaseManager;->init(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b06f2

    const/4 v0, 0x0

    .line 193
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 181
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/app/NVActivity;

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/NVActivity;

    const v1, 0xe81f

    invoke-virtual {v0, v1, p0}, Lcom/narvii/app/NVActivity;->unregisterActivityRequestCallback(ILandroid/support/v4/app/Fragment;)V

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->walletBalanceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 185
    iget-object v0, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->iabPurchaseManager:Lcom/narvii/wallet/IabPurchaseManager;

    invoke-virtual {v0}, Lcom/narvii/wallet/IabPurchaseManager;->destroy()V

    const/4 v0, 0x0

    .line 186
    iput-object v0, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->iabPurchaseManager:Lcom/narvii/wallet/IabPurchaseManager;

    .line 187
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    return-void
.end method

.method public onInterceptNotification(Lcom/narvii/pushservice/PushPayload;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onPushPayload(Lcom/narvii/pushservice/PushPayload;)V
    .locals 1

    .line 378
    iget-boolean v0, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->noRV:Z

    if-nez v0, :cond_0

    iget p1, p1, Lcom/narvii/pushservice/PushPayload;->type:I

    const/16 v0, 0x33

    if-ne p1, v0, :cond_0

    .line 379
    invoke-direct {p0}, Lcom/narvii/wallet/PurchaseCoinFragment;->refreshWallet()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 162
    invoke-super {p0}, Lcom/narvii/app/NVDialogFragment;->onStart()V

    .line 164
    iget-boolean v0, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->noRV:Z

    if-nez v0, :cond_0

    .line 165
    invoke-direct {p0}, Lcom/narvii/wallet/PurchaseCoinFragment;->refreshWallet()V

    :cond_0
    const-string v0, "push"

    .line 168
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/pushservice/PushService;

    .line 169
    invoke-virtual {v0, p0}, Lcom/narvii/pushservice/PushService;->addPushListener(Lcom/narvii/pushservice/PushService$PushListener;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    const-string v0, "push"

    .line 174
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/pushservice/PushService;

    .line 175
    invoke-virtual {v0, p0}, Lcom/narvii/pushservice/PushService;->removePushListener(Lcom/narvii/pushservice/PushService$PushListener;)V

    .line 176
    invoke-super {p0}, Lcom/narvii/app/NVDialogFragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 198
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0904f8

    .line 199
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->noEnoughCoins:Landroid/view/View;

    const p2, 0x7f090118

    .line 200
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->balance:Landroid/widget/TextView;

    const p2, 0x7f0903b9

    .line 201
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->earnMoreCoinsLayout:Landroid/view/View;

    .line 202
    iget-object p2, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->earnMoreCoinsLayout:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object p2, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->earnMoreCoinsLayout:Landroid/view/View;

    iget-boolean v0, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->noRV:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    const p2, 0x7f090693

    .line 204
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->loading:Landroid/view/View;

    const p2, 0x7f0903fb

    .line 205
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->error:Landroid/view/View;

    .line 206
    iget-object p2, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->error:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f09025e

    .line 207
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p2, 0x6

    new-array p2, p2, [Landroid/view/View;

    .line 208
    iput-object p2, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->items:[Landroid/view/View;

    .line 209
    iget-object p2, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->items:[Landroid/view/View;

    const v0, 0x7f0905d0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    aput-object v0, p2, v1

    .line 210
    iget-object p2, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->items:[Landroid/view/View;

    const/4 v0, 0x1

    const v1, 0x7f0905d1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, p2, v0

    .line 211
    iget-object p2, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->items:[Landroid/view/View;

    const/4 v0, 0x2

    const v1, 0x7f0905d2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, p2, v0

    .line 212
    iget-object p2, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->items:[Landroid/view/View;

    const/4 v0, 0x3

    const v1, 0x7f0905d3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, p2, v0

    .line 213
    iget-object p2, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->items:[Landroid/view/View;

    const/4 v0, 0x4

    const v1, 0x7f0905d4

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, p2, v0

    .line 214
    iget-object p2, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->items:[Landroid/view/View;

    const/4 v0, 0x5

    const v1, 0x7f0905d5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    aput-object p1, p2, v0

    .line 215
    invoke-virtual {p0}, Lcom/narvii/wallet/PurchaseCoinFragment;->update()V

    return-void
.end method

.method update()V
    .locals 9

    .line 219
    iget-object v0, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->noEnoughCoins:Landroid/view/View;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_9

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->noEnoughCoins:Landroid/view/View;

    const-string v1, "noEnoughCoins"

    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 222
    invoke-direct {p0}, Lcom/narvii/wallet/PurchaseCoinFragment;->updateWalletBalanceView()V

    .line 224
    iget-object v0, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->loading:Landroid/view/View;

    iget-object v1, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->products:Ljava/util/List;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->errorMsg:Ljava/lang/String;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->error:Landroid/view/View;

    iget-object v1, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->products:Ljava/util/List;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->errorMsg:Ljava/lang/String;

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->error:Landroid/view/View;

    const v1, 0x7f090b5b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->errorMsg:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v0, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->products:Ljava/util/List;

    if-nez v0, :cond_4

    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_3
    const/4 v4, 0x0

    :goto_4
    iget-object v5, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->items:[Landroid/view/View;

    array-length v6, v5

    if-ge v4, v6, :cond_a

    .line 228
    aget-object v5, v5, v4

    .line 229
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    iget-object v7, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->products:Ljava/util/List;

    if-nez v7, :cond_5

    const/16 v7, 0x8

    goto :goto_5

    :cond_5
    const/4 v7, 0x0

    :goto_5
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    if-ge v4, v0, :cond_6

    const/4 v6, 0x0

    goto :goto_6

    :cond_6
    const/4 v6, 0x4

    .line 230
    :goto_6
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    if-ge v4, v0, :cond_9

    .line 232
    iget-object v6, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->products:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/narvii/wallet/Product;

    const v7, 0x7f090562

    .line 233
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/narvii/widget/NVImageView;

    iget-object v8, v6, Lcom/narvii/wallet/Product;->icon:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 234
    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget v8, v6, Lcom/narvii/wallet/Product;->numberOfCoins:I

    invoke-static {v8}, Lcom/narvii/wallet/IabUtils;->formatCoins(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v7, p0, Lcom/narvii/wallet/PurchaseCoinFragment;->iabPurchaseManager:Lcom/narvii/wallet/IabPurchaseManager;

    if-eqz v7, :cond_7

    iget-object v8, v6, Lcom/narvii/wallet/Product;->skuList:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-virtual {v7, v8}, Lcom/narvii/wallet/IabPurchaseManager;->getSkuDetail(Ljava/lang/String;)Lcom/narvii/wallet/util/SkuDetails;

    move-result-object v7

    goto :goto_7

    :cond_7
    const/4 v7, 0x0

    :goto_7
    const v8, 0x7f0908c6

    .line 236
    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    if-nez v7, :cond_8

    const v7, 0x7f0f0b7b

    invoke-virtual {p0, v7}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_8

    :cond_8
    invoke-virtual {v7}, Lcom/narvii/wallet/util/SkuDetails;->getPrice()Ljava/lang/String;

    move-result-object v7

    :goto_8
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    invoke-virtual {v5, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 239
    :cond_9
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_a
    :goto_9
    return-void
.end method
