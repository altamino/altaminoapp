.class public abstract Lcom/narvii/monetization/StoreItemOwnStatusController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/monetization/StoreItemStatusView$ViewClickListener;
.implements Lcom/narvii/monetization/store/StoreItemPurchaseHelper$PurchaseConfirmFragmentEventListener;


# instance fields
.field bigStyle:Z

.field protected iStoreItem:Lcom/narvii/model/IStoreItem;

.field ignoreGlobalSope:Z

.field protected final isGlobalSpace:Z

.field private localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

.field private membershipService:Lcom/narvii/wallet/MembershipService;

.field nvContext:Lcom/narvii/app/NVContext;

.field private receiver:Landroid/content/BroadcastReceiver;

.field public source:Ljava/lang/String;

.field private storeItemPurchaseHelper:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

.field protected storeItemStatusView:Lcom/narvii/monetization/StoreItemStatusView;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;)V
    .locals 1

    const/4 v0, 0x1

    .line 13
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/monetization/StoreItemOwnStatusController;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/narvii/monetization/StoreItemOwnStatusController;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;ZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;ZZ)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Store Product Detail Page"

    iput-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->source:Ljava/lang/String;

    .line 3
    new-instance v0, Lcom/narvii/monetization/StoreItemOwnStatusController$1;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/StoreItemOwnStatusController$1;-><init>(Lcom/narvii/monetization/StoreItemOwnStatusController;)V

    iput-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->receiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->nvContext:Lcom/narvii/app/NVContext;

    iput-object p2, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->storeItemStatusView:Lcom/narvii/monetization/StoreItemStatusView;

    iput-boolean p3, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->bigStyle:Z

    iput-boolean p4, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->ignoreGlobalSope:Z

    .line 4
    invoke-direct {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->updateViewStyle()V

    .line 5
    invoke-virtual {p2, p0}, Lcom/narvii/monetization/StoreItemStatusView;->setViewClickListener(Lcom/narvii/monetization/StoreItemStatusView$ViewClickListener;)V

    const-string p3, "membership"

    .line 6
    invoke-interface {p1, p3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/wallet/MembershipService;

    iput-object p3, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->membershipService:Lcom/narvii/wallet/MembershipService;

    const-string p3, "config"

    .line 7
    invoke-interface {p1, p3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/config/ConfigService;

    .line 8
    invoke-virtual {p3}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p3

    if-nez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iput-boolean p3, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->isGlobalSpace:Z

    .line 9
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p3

    iput-object p3, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 10
    invoke-virtual {p2, p0}, Lcom/narvii/monetization/StoreItemStatusView;->setController(Lcom/narvii/monetization/StoreItemOwnStatusController;)V

    .line 11
    new-instance p2, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    invoke-direct {p2, p1}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p2, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->storeItemPurchaseHelper:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    iget-object p1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->source:Ljava/lang/String;

    iput-object p1, p2, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->source:Ljava/lang/String;

    .line 12
    invoke-virtual {p2, p0}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->setPurchaseEventListener(Lcom/narvii/monetization/store/StoreItemPurchaseHelper$PurchaseConfirmFragmentEventListener;)V

    return-void
.end method

.method private needLogin()Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->nvContext:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v1, "account"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    new-instance v0, Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 23
    .line 24
    :try_start_0
    iget-object v2, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->nvContext:Lcom/narvii/app/NVContext;

    .line 25
    .line 26
    instance-of v3, v2, Lcom/narvii/app/NVFragment;

    .line 27
    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    check-cast v2, Lcom/narvii/app/NVFragment;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v0}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    .line 34
    goto :goto_1

    .line 35
    :catch_0
    move-exception v0

    .line 36
    goto :goto_0

    .line 37
    .line 38
    :cond_0
    instance-of v3, v2, Lcom/narvii/app/NVActivity;

    .line 39
    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    check-cast v2, Lcom/narvii/app/NVActivity;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v0}, Lcom/narvii/app/NVActivity;->ensureLogin(Landroid/content/Intent;)V

    .line 46
    goto :goto_1

    .line 47
    .line 48
    .line 49
    :cond_1
    invoke-static {v2, v0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V

    .line 50
    .line 51
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->nvContext:Lcom/narvii/app/NVContext;

    .line 52
    .line 53
    .line 54
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    .line 58
    const v2, 0x7f120bb7

    .line 59
    .line 60
    .line 61
    invoke-static {v0, v2, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    goto :goto_1

    .line 67
    .line 68
    :goto_0
    const-string v1, "login"

    .line 69
    .line 70
    .line 71
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    :goto_1
    const/4 v0, 0x1

    .line 73
    return v0

    .line 74
    :cond_2
    return v1
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

.method private showExpireDialog()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/membership/MembershipExpireDialog;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->nvContext:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/narvii/membership/MembershipExpireDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->source:Ljava/lang/String;

    .line 10
    .line 11
    iput-object v1, v0, Lcom/narvii/membership/MembershipExpireDialog;->source:Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 15
    return-void
.end method

.method private showMembershipDialog()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/membership/MembershipHintDialog;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->nvContext:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/narvii/membership/MembershipHintDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->source:Ljava/lang/String;

    .line 10
    .line 11
    iput-object v1, v0, Lcom/narvii/membership/MembershipHintDialog;->source:Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 15
    return-void
.end method

.method private statistics(Lcom/narvii/model/IStoreItem;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->nvContext:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v1, "statistics"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/util/statistics/StatisticsService;

    .line 11
    .line 12
    instance-of v1, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    const-string v1, "Activates Sticker Set"

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    instance-of v1, p1, Lcom/narvii/model/ChatBubble;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    const-string v1, "Activates Chat Bubble"

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_1
    instance-of v1, p1, Lcom/narvii/monetization/avatarframe/AvatarFrame;

    .line 27
    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    const-string v1, "Activates Profile Frame"

    .line 31
    goto :goto_0

    .line 32
    :cond_2
    const/4 v1, 0x0

    .line 33
    .line 34
    :goto_0
    if-eqz v1, :cond_4

    .line 35
    .line 36
    .line 37
    invoke-interface {p1}, Lcom/narvii/model/IStoreItem;->getRestrictionInfo()Lcom/narvii/model/RestrictionInfo;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    iget p1, p1, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    .line 41
    const/4 v2, 0x4

    .line 42
    .line 43
    if-ne p1, v2, :cond_3

    .line 44
    .line 45
    const-string p1, "Paid with Coins"

    .line 46
    goto :goto_1

    .line 47
    .line 48
    :cond_3
    const-string p1, "Free with Amino+"

    .line 49
    .line 50
    .line 51
    :goto_1
    invoke-interface {v0, v1}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    const-string v2, "Type"

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v2, p1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->source:Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v1, " Total"

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object v0

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 85
    :cond_4
    return-void
.end method

.method private updateViewStyle()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->storeItemStatusView:Lcom/narvii/monetization/StoreItemStatusView;

    .line 3
    .line 4
    iget-boolean v1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->bigStyle:Z

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/narvii/monetization/StoreItemStatusView;->setBigStyle(Z)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->storeItemStatusView:Lcom/narvii/monetization/StoreItemStatusView;

    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->bigStyle:Z

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v1}, Lcom/narvii/monetization/StoreItemOwnStatusController;->getActivatedStrId(Z)I

    .line 15
    move-result v1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/narvii/monetization/StoreItemStatusView;->setActivatedStrId(I)V

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->storeItemStatusView:Lcom/narvii/monetization/StoreItemStatusView;

    .line 21
    .line 22
    iget-boolean v1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->bigStyle:Z

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v1}, Lcom/narvii/monetization/StoreItemOwnStatusController;->getGetStrId(Z)I

    .line 26
    move-result v1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/narvii/monetization/StoreItemStatusView;->setGetStrId(I)V

    .line 30
    .line 31
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->storeItemStatusView:Lcom/narvii/monetization/StoreItemStatusView;

    .line 32
    .line 33
    iget-boolean v1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->bigStyle:Z

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v1}, Lcom/narvii/monetization/StoreItemOwnStatusController;->getActivateStrId(Z)I

    .line 37
    move-result v1

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/narvii/monetization/StoreItemStatusView;->setActivateStrId(I)V

    .line 41
    .line 42
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->storeItemStatusView:Lcom/narvii/monetization/StoreItemStatusView;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->getActivatedDrawableId()I

    .line 46
    move-result v1

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lcom/narvii/monetization/StoreItemStatusView;->setActivatedDrawableId(I)V

    .line 50
    .line 51
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->storeItemStatusView:Lcom/narvii/monetization/StoreItemStatusView;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->getActivateDrawableId()I

    .line 55
    move-result v1

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lcom/narvii/monetization/StoreItemStatusView;->setActivateDrawableId(I)V

    .line 59
    .line 60
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->storeItemStatusView:Lcom/narvii/monetization/StoreItemStatusView;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->getGetDrawableId()I

    .line 64
    move-result v1

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Lcom/narvii/monetization/StoreItemStatusView;->setGetDrawableId(I)V

    .line 68
    .line 69
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->storeItemStatusView:Lcom/narvii/monetization/StoreItemStatusView;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->getActivatedTextColorId()I

    .line 73
    move-result v1

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Lcom/narvii/monetization/StoreItemStatusView;->setActivatedTextColorId(I)V

    .line 77
    .line 78
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->storeItemStatusView:Lcom/narvii/monetization/StoreItemStatusView;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->getDownloadProgressDrawableId()I

    .line 82
    move-result v1

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1}, Lcom/narvii/monetization/StoreItemStatusView;->setDownloadProgressDrawableId(I)V

    .line 86
    return-void
.end method


# virtual methods
.method protected anyOneCanGet()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected canUseInGlobal()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract createActivateRequest()Lcom/narvii/util/http/ApiRequest;
.end method

.method protected getActivateDrawableId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getActivateStrId(Z)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected getActivatedDrawableId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract getActivatedStrId(Z)I
.end method

.method protected getActivatedTextColorId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getActivatedToastTextId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getDownloadProgressDrawableId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getGetDrawableId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getGetStrId(Z)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getStoreItem()Lcom/narvii/model/IStoreItem;
    .locals 1

    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->iStoreItem:Lcom/narvii/model/IStoreItem;

    return-object v0
.end method

.method protected getStoreItemStatus(Lcom/narvii/model/IStoreItem;)I
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->ignoreGlobalSope:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->isGlobalSpace:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->canUseInGlobal()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-interface {p1}, Lcom/narvii/model/IStoreItem;->isTotalOwned()Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    const/4 p1, 0x7

    .line 22
    return p1

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-interface {p1}, Lcom/narvii/model/IStoreItem;->isActivated()Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    .line 31
    invoke-interface {p1}, Lcom/narvii/model/IStoreItem;->isTotalOwned()Z

    .line 32
    move-result v0

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    const/4 p1, 0x5

    .line 36
    return p1

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-interface {p1}, Lcom/narvii/model/IStoreItem;->isTotalOwned()Z

    .line 40
    move-result v0

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    const/4 p1, 0x4

    .line 44
    return p1

    .line 45
    .line 46
    .line 47
    :cond_2
    invoke-interface {p1}, Lcom/narvii/model/IStoreItem;->availableInAnyStore()Z

    .line 48
    move-result p1

    .line 49
    .line 50
    if-eqz p1, :cond_3

    .line 51
    const/4 p1, 0x0

    .line 52
    return p1

    .line 53
    .line 54
    :cond_3
    const/16 p1, 0x8

    .line 55
    return p1
.end method

.method protected hasProgressBar()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivated()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->onActivated(Z)V

    return-void
.end method

.method public onActivated(Z)V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->showToast()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->showActivatedToast()V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->updateViewsWhenActivated()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->storeItemStatusView:Lcom/narvii/monetization/StoreItemStatusView;

    iget-boolean v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->ignoreGlobalSope:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->isGlobalSpace:Z

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->canUseInGlobal()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x7

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    :goto_0
    invoke-virtual {p1, v0}, Lcom/narvii/monetization/StoreItemStatusView;->updateStatus(I)V

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->sendNotificationAfterActivated()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->iStoreItem:Lcom/narvii/model/IStoreItem;

    .line 7
    instance-of p1, p1, Lcom/narvii/model/NVObject;

    if-eqz p1, :cond_3

    .line 8
    new-instance p1, Lcom/narvii/notification/Notification;

    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->iStoreItem:Lcom/narvii/model/IStoreItem;

    check-cast v0, Lcom/narvii/model/NVObject;

    const-string v1, "update"

    invoke-direct {p1, v1, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->nvContext:Lcom/narvii/app/NVContext;

    const-string v1, "notification"

    .line 9
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/notification/NotificationCenter;

    .line 10
    invoke-virtual {v0, p1}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    :cond_3
    return-void
.end method

.method public onClickActivateItem()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->iStoreItem:Lcom/narvii/model/IStoreItem;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->needLogin()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    return-void

    .line 13
    .line 14
    .line 15
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->createActivateRequest()Lcom/narvii/util/http/ApiRequest;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    const-string v0, "store"

    .line 21
    .line 22
    const-string v1, "activate api request is null"

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void

    .line 27
    .line 28
    :cond_2
    iget-object v1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->iStoreItem:Lcom/narvii/model/IStoreItem;

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, v1}, Lcom/narvii/monetization/StoreItemOwnStatusController;->statistics(Lcom/narvii/model/IStoreItem;)V

    .line 32
    .line 33
    iget-object v1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->storeItemStatusView:Lcom/narvii/monetization/StoreItemStatusView;

    .line 34
    const/4 v2, 0x1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Lcom/narvii/monetization/StoreItemStatusView;->updateStatus(I)V

    .line 38
    .line 39
    iget-object v1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->nvContext:Lcom/narvii/app/NVContext;

    .line 40
    .line 41
    const-string v2, "api"

    .line 42
    .line 43
    .line 44
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 48
    .line 49
    new-instance v2, Lcom/narvii/monetization/StoreItemOwnStatusController$2;

    .line 50
    .line 51
    const-class v3, Lcom/narvii/model/api/ApiResponse;

    .line 52
    .line 53
    .line 54
    invoke-direct {v2, p0, v3}, Lcom/narvii/monetization/StoreItemOwnStatusController$2;-><init>(Lcom/narvii/monetization/StoreItemOwnStatusController;Ljava/lang/Class;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 58
    return-void
.end method

.method public onClickGetItem()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->iStoreItem:Lcom/narvii/model/IStoreItem;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->needLogin()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    return-void

    .line 13
    .line 14
    :cond_1
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->iStoreItem:Lcom/narvii/model/IStoreItem;

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Lcom/narvii/model/IStoreItem;->getRestrictionInfo()Lcom/narvii/model/RestrictionInfo;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->anyOneCanGet()Z

    .line 22
    move-result v1

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->storeItemPurchaseHelper:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->sendPurchaseRequest()V

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_2
    if-eqz v0, :cond_8

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/narvii/model/RestrictionInfo;->isSupported()Z

    .line 36
    move-result v1

    .line 37
    .line 38
    if-nez v1, :cond_3

    .line 39
    goto :goto_1

    .line 40
    .line 41
    :cond_3
    iget v0, v0, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    .line 42
    const/4 v1, 0x2

    .line 43
    .line 44
    if-ne v0, v1, :cond_6

    .line 45
    .line 46
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    .line 50
    move-result v0

    .line 51
    .line 52
    if-eqz v0, :cond_4

    .line 53
    .line 54
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->storeItemPurchaseHelper:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->sendPurchaseRequest()V

    .line 58
    goto :goto_0

    .line 59
    .line 60
    :cond_4
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->hasMemberShipExpired()Z

    .line 64
    move-result v0

    .line 65
    .line 66
    if-eqz v0, :cond_5

    .line 67
    .line 68
    .line 69
    invoke-direct {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->showExpireDialog()V

    .line 70
    goto :goto_2

    .line 71
    .line 72
    .line 73
    :cond_5
    invoke-direct {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->showMembershipDialog()V

    .line 74
    goto :goto_2

    .line 75
    :cond_6
    const/4 v1, 0x1

    .line 76
    .line 77
    if-ne v0, v1, :cond_7

    .line 78
    .line 79
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->storeItemPurchaseHelper:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->sendPurchaseRequest()V

    .line 83
    .line 84
    :goto_0
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->iStoreItem:Lcom/narvii/model/IStoreItem;

    .line 85
    .line 86
    .line 87
    invoke-direct {p0, v0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->statistics(Lcom/narvii/model/IStoreItem;)V

    .line 88
    .line 89
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->iStoreItem:Lcom/narvii/model/IStoreItem;

    .line 90
    .line 91
    instance-of v1, v0, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 92
    .line 93
    if-eqz v1, :cond_9

    .line 94
    .line 95
    check-cast v0, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 96
    .line 97
    iget v0, v0, Lcom/narvii/monetization/sticker/model/StickerCollection;->collectionType:I

    .line 98
    const/4 v1, 0x3

    .line 99
    .line 100
    if-ne v0, v1, :cond_9

    .line 101
    .line 102
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->nvContext:Lcom/narvii/app/NVContext;

    .line 103
    .line 104
    const-string v1, "statistics"

    .line 105
    .line 106
    .line 107
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 108
    move-result-object v0

    .line 109
    .line 110
    check-cast v0, Lcom/narvii/util/statistics/StatisticsService;

    .line 111
    .line 112
    const-string v1, "Add shared sticker pack to keyboard"

    .line 113
    .line 114
    .line 115
    invoke-interface {v0, v1}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 116
    move-result-object v0

    .line 117
    .line 118
    iget-object v1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->source:Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 122
    move-result-object v0

    .line 123
    .line 124
    const-string v1, "Add shared sticker pack to keyboard Total"

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 128
    goto :goto_2

    .line 129
    :cond_7
    const/4 v1, 0x4

    .line 130
    .line 131
    if-ne v0, v1, :cond_9

    .line 132
    .line 133
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->storeItemPurchaseHelper:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->openPurchaseDialogWithCheck()V

    .line 137
    goto :goto_2

    .line 138
    .line 139
    :cond_8
    :goto_1
    new-instance v0, Lcom/narvii/monetization/store/SuggestUpdateDialog;

    .line 140
    .line 141
    iget-object v1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->nvContext:Lcom/narvii/app/NVContext;

    .line 142
    .line 143
    .line 144
    invoke-direct {v0, v1}, Lcom/narvii/monetization/store/SuggestUpdateDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 148
    :cond_9
    :goto_2
    return-void
.end method

.method public onClickMemberShip()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->hasMemberShipExpired()Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->showExpireDialog()V

    .line 21
    goto :goto_0

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-direct {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->showMembershipDialog()V

    .line 25
    :goto_0
    return-void
.end method

.method public onClickUseItem()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->needLogin()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->iStoreItem:Lcom/narvii/model/IStoreItem;

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Lcom/narvii/model/IStoreItem;->getRestrictionInfo()Lcom/narvii/model/RestrictionInfo;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    if-eqz v0, :cond_3

    .line 16
    .line 17
    iget v0, v0, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    .line 18
    const/4 v1, 0x2

    .line 19
    .line 20
    if-ne v0, v1, :cond_3

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->useItem()V

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->hasMemberShipExpired()Z

    .line 38
    move-result v0

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    .line 43
    invoke-direct {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->showExpireDialog()V

    .line 44
    goto :goto_0

    .line 45
    .line 46
    .line 47
    :cond_2
    invoke-direct {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->showMembershipDialog()V

    .line 48
    goto :goto_0

    .line 49
    .line 50
    .line 51
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->useItem()V

    .line 52
    :goto_0
    return-void
.end method

.method public onCreate()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->receiver:Landroid/content/BroadcastReceiver;

    .line 5
    .line 6
    new-instance v2, Landroid/content/IntentFilter;

    .line 7
    .line 8
    const-string v3, "com.narvii.action.MEMBERSHIP_CHANGED"

    .line 9
    .line 10
    .line 11
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->storeItemPurchaseHelper:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->tryResumePurchaseConfirmFragment()V

    .line 20
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->receiver:Landroid/content/BroadcastReceiver;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->f(Landroid/content/BroadcastReceiver;)V

    .line 8
    return-void
.end method

.method public onPurchaseCanceled()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->storeItemStatusView:Lcom/narvii/monetization/StoreItemStatusView;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Lcom/narvii/monetization/StoreItemStatusView;->updateStatus(I)V

    .line 7
    return-void
.end method

.method public onPurchaseFailed()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->updateViewStatus()V

    .line 4
    return-void
.end method

.method public onPurchaseStart()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->storeItemStatusView:Lcom/narvii/monetization/StoreItemStatusView;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Lcom/narvii/monetization/StoreItemStatusView;->updateStatus(I)V

    .line 7
    return-void
.end method

.method protected abstract onPurchaseSuccess(Lcom/narvii/model/NVObject;)V
.end method

.method public onPurchaseSuccessful(Lcom/narvii/model/NVObject;)V
    .locals 3

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/model/IStoreItem;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->iStoreItem:Lcom/narvii/model/IStoreItem;

    .line 7
    move-object v1, p1

    .line 8
    .line 9
    check-cast v1, Lcom/narvii/model/IStoreItem;

    .line 10
    .line 11
    .line 12
    invoke-interface {v1}, Lcom/narvii/model/IStoreItem;->getOwnershipInfo()Lcom/narvii/model/OwnershipInfo;

    .line 13
    move-result-object v2

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, v2}, Lcom/narvii/model/IStoreItem;->setOwnershipInfo(Lcom/narvii/model/OwnershipInfo;)V

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->iStoreItem:Lcom/narvii/model/IStoreItem;

    .line 19
    .line 20
    .line 21
    invoke-interface {v1}, Lcom/narvii/model/IStoreItem;->isActivated()Z

    .line 22
    move-result v1

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, v1}, Lcom/narvii/model/IStoreItem;->setActivated(Z)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->hasProgressBar()Z

    .line 29
    move-result v0

    .line 30
    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->updateViewStatus()V

    .line 35
    .line 36
    :cond_0
    if-eqz p1, :cond_1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->sendNotificationAfterActivated()Z

    .line 40
    move-result v0

    .line 41
    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    new-instance v0, Lcom/narvii/notification/Notification;

    .line 45
    .line 46
    const-string v1, "update"

    .line 47
    .line 48
    .line 49
    invoke-direct {v0, v1, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 50
    .line 51
    iget-object v1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->nvContext:Lcom/narvii/app/NVContext;

    .line 52
    .line 53
    const-string v2, "notification"

    .line 54
    .line 55
    .line 56
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    check-cast v1, Lcom/narvii/notification/NotificationCenter;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v0}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 63
    .line 64
    .line 65
    :cond_1
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/StoreItemOwnStatusController;->onPurchaseSuccess(Lcom/narvii/model/NVObject;)V

    .line 66
    return-void
.end method

.method public onShowPurchaseDialog()V
    .locals 0

    return-void
.end method

.method protected sendNotificationAfterActivated()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setStoreItem(Lcom/narvii/model/IStoreItem;)V
    .locals 1

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->storeItemStatusView:Lcom/narvii/monetization/StoreItemStatusView;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/narvii/monetization/StoreItemStatusView;->isLoadingStatus()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->storeItemStatusView:Lcom/narvii/monetization/StoreItemStatusView;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/narvii/monetization/StoreItemStatusView;->isDownloadingStatus()Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    goto :goto_0

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/StoreItemOwnStatusController;->setStoreItemInner(Lcom/narvii/model/IStoreItem;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->updateViewStyle()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->updateViewStatus()V

    .line 30
    :cond_2
    :goto_0
    return-void
.end method

.method protected setStoreItemInner(Lcom/narvii/model/IStoreItem;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->iStoreItem:Lcom/narvii/model/IStoreItem;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->storeItemPurchaseHelper:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->setStoreItem(Lcom/narvii/model/IStoreItem;)V

    .line 8
    return-void
.end method

.method protected showActivatedToast()V
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->getActivatedToastTextId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->nvContext:Lcom/narvii/app/NVContext;

    .line 7
    .line 8
    .line 9
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    instance-of v1, v1, Lcom/narvii/app/NVActivity;

    .line 13
    .line 14
    .line 15
    const v2, 0x7f12006a

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->nvContext:Lcom/narvii/app/NVContext;

    .line 20
    .line 21
    .line 22
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 23
    move-result-object v1

    .line 24
    move-object v3, v1

    .line 25
    .line 26
    check-cast v3, Lcom/narvii/app/NVActivity;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->nvContext:Lcom/narvii/app/NVContext;

    .line 29
    .line 30
    .line 31
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    .line 35
    const v4, 0x7f0801d7

    .line 36
    .line 37
    .line 38
    invoke-static {v1, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 39
    move-result-object v4

    .line 40
    .line 41
    iget-object v1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->nvContext:Lcom/narvii/app/NVContext;

    .line 42
    .line 43
    .line 44
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    if-eqz v0, :cond_0

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    move v0, v2

    .line 50
    .line 51
    .line 52
    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 53
    move-result-object v5

    .line 54
    .line 55
    .line 56
    const v6, 0x7f01006a

    .line 57
    .line 58
    const-wide/16 v7, 0x1f4

    .line 59
    .line 60
    .line 61
    invoke-virtual/range {v3 .. v8}, Lcom/narvii/app/NVActivity;->toastImageWithText(Landroid/graphics/drawable/Drawable;Ljava/lang/String;IJ)V

    .line 62
    goto :goto_2

    .line 63
    .line 64
    :cond_1
    iget-object v1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->nvContext:Lcom/narvii/app/NVContext;

    .line 65
    .line 66
    .line 67
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 68
    move-result-object v1

    .line 69
    .line 70
    if-eqz v0, :cond_2

    .line 71
    goto :goto_1

    .line 72
    :cond_2
    move v0, v2

    .line 73
    :goto_1
    const/4 v2, 0x0

    .line 74
    .line 75
    .line 76
    invoke-static {v1, v0, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 77
    move-result-object v0

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    .line 81
    :goto_2
    return-void
.end method

.method protected showToast()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected updateDownloadingProgress(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->storeItemStatusView:Lcom/narvii/monetization/StoreItemStatusView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/monetization/StoreItemStatusView;->updateDownloadingProgress(I)V

    .line 6
    return-void
.end method

.method protected updateViewStatus()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->iStoreItem:Lcom/narvii/model/IStoreItem;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v1, p0, Lcom/narvii/monetization/StoreItemOwnStatusController;->storeItemStatusView:Lcom/narvii/monetization/StoreItemStatusView;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->getStoreItemStatus(Lcom/narvii/model/IStoreItem;)I

    .line 11
    move-result v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v0}, Lcom/narvii/monetization/StoreItemStatusView;->updateStatus(I)V

    .line 15
    return-void
.end method

.method protected updateViewsWhenActivated()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected useItem()V
    .locals 0

    return-void
.end method
