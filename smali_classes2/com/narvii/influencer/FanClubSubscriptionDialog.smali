.class public Lcom/narvii/influencer/FanClubSubscriptionDialog;
.super Lcom/narvii/app/NVDialog;
.source "FanClubSubscriptionDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/narvii/widget/PurchaseConfirmButton$SubmitConfirmListener;


# instance fields
.field private final apiService:Lcom/narvii/util/http/ApiService;

.field private final confirmButton:Lcom/narvii/widget/PurchaseConfirmButton;

.field private final dateFormat:Ljava/text/DateFormat;

.field private final earnFreeCoins:Landroid/widget/TextView;

.field private influencerUid:Ljava/lang/String;

.field private isRenewAction:Z

.field private final lbm:Landroid/support/v4/content/LocalBroadcastManager;

.field private final membershipService:Lcom/narvii/wallet/MembershipService;

.field private ndcId:I

.field private final notificationCenter:Lcom/narvii/notification/NotificationCenter;

.field private nvContext:Lcom/narvii/app/NVContext;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private source:Ljava/lang/String;

.field private final subscriptionAutoRenewHint:Landroid/widget/TextView;

.field private final subscriptionStartTime:Landroid/widget/TextView;

.field private final totalCoinCount:Landroid/widget/TextView;

.field private transactionId:Ljava/lang/String;

.field private user:Lcom/narvii/model/User;


# direct methods
.method private constructor <init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V
    .locals 8

    const v0, 0x7f1000ce

    .line 97
    invoke-direct {p0, p1, v0}, Lcom/narvii/app/NVDialog;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 79
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->dateFormat:Ljava/text/DateFormat;

    .line 88
    new-instance v0, Lcom/narvii/influencer/FanClubSubscriptionDialog$1;

    invoke-direct {v0, p0}, Lcom/narvii/influencer/FanClubSubscriptionDialog$1;-><init>(Lcom/narvii/influencer/FanClubSubscriptionDialog;)V

    iput-object v0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->receiver:Landroid/content/BroadcastReceiver;

    .line 98
    iput-object p1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->nvContext:Lcom/narvii/app/NVContext;

    .line 99
    iput-object p2, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->influencerUid:Ljava/lang/String;

    const/4 p2, 0x0

    .line 100
    iput-object p2, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->transactionId:Ljava/lang/String;

    const p2, 0x7f0b0192

    .line 101
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->setContentView(I)V

    const-string p2, "membership"

    .line 103
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/wallet/MembershipService;

    iput-object p2, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->membershipService:Lcom/narvii/wallet/MembershipService;

    const-string p2, "api"

    .line 104
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/util/http/ApiService;

    iput-object p2, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->apiService:Lcom/narvii/util/http/ApiService;

    const-string p2, "notification"

    .line 105
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/notification/NotificationCenter;

    iput-object p2, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->notificationCenter:Lcom/narvii/notification/NotificationCenter;

    const p2, 0x7f090255

    .line 107
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f0f068e

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 110
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0f10d3

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 111
    new-instance v2, Lcom/narvii/util/text/NVText;

    invoke-direct {v2, p2}, Lcom/narvii/util/text/NVText;-><init>(Ljava/lang/CharSequence;)V

    new-array p2, v1, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aput-object v0, p2, v3

    .line 112
    invoke-virtual {v2, p2}, Lcom/narvii/util/text/NVText;->format([Ljava/lang/CharSequence;)V

    .line 113
    new-instance p2, Lcom/narvii/influencer/FanClubSubscriptionDialog$2;

    invoke-direct {p2, p0, p1}, Lcom/narvii/influencer/FanClubSubscriptionDialog$2;-><init>(Lcom/narvii/influencer/FanClubSubscriptionDialog;Lcom/narvii/app/NVContext;)V

    invoke-virtual {v2, v0, p2}, Lcom/narvii/util/text/NVText;->markText(Ljava/lang/String;Lcom/narvii/util/text/OnTagClickListener;)I

    const p2, 0x7f0904de

    .line 120
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "config"

    .line 121
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    const-string v2, "themePack"

    .line 122
    invoke-interface {p1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/theme/ThemePackService;

    .line 123
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    .line 124
    invoke-virtual {v2, v0}, Lcom/narvii/theme/ThemePackService;->getThemeColor(I)I

    move-result v0

    .line 126
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v5, 0x2

    new-array v6, v5, [I

    const v7, 0x66ffffff

    and-int/2addr v7, v0

    aput v7, v6, v3

    const v7, -0x33000001    # -1.3421772E8f

    and-int/2addr v0, v7

    aput v0, v6, v1

    invoke-direct {v2, v4, v6}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 127
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 128
    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const p2, 0x7f090bd2

    .line 130
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->totalCoinCount:Landroid/widget/TextView;

    const p2, 0x7f090421

    .line 131
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->subscriptionStartTime:Landroid/widget/TextView;

    .line 134
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f0f0272

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 135
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0f0aa7

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p2, v4, v3

    aput-object v0, v4, v1

    const v0, 0x7f0f013a

    invoke-virtual {v2, v0, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 137
    new-instance v2, Lcom/narvii/util/text/NVText;

    invoke-direct {v2, v0}, Lcom/narvii/util/text/NVText;-><init>(Ljava/lang/CharSequence;)V

    .line 138
    new-instance v0, Lcom/narvii/influencer/FanClubSubscriptionDialog$3;

    invoke-direct {v0, p0, p1}, Lcom/narvii/influencer/FanClubSubscriptionDialog$3;-><init>(Lcom/narvii/influencer/FanClubSubscriptionDialog;Lcom/narvii/app/NVContext;)V

    invoke-virtual {v2, p2, v0}, Lcom/narvii/util/text/NVText;->markText(Ljava/lang/String;Lcom/narvii/util/text/OnTagClickListener;)I

    const p1, 0x7f090b21

    .line 145
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->subscriptionAutoRenewHint:Landroid/widget/TextView;

    .line 146
    iget-object p1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->subscriptionAutoRenewHint:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 147
    iget-object p1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->subscriptionAutoRenewHint:Landroid/widget/TextView;

    invoke-static {}, Lcom/narvii/util/text/LinkTouchMovementMethod;->getInstance()Lcom/narvii/util/text/LinkTouchMovementMethod;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 148
    iget-object p1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->subscriptionAutoRenewHint:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0902c6

    .line 150
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/PurchaseConfirmButton;

    iput-object p1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->confirmButton:Lcom/narvii/widget/PurchaseConfirmButton;

    .line 151
    iget-object p1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->confirmButton:Lcom/narvii/widget/PurchaseConfirmButton;

    invoke-virtual {p1, p0}, Lcom/narvii/widget/PurchaseConfirmButton;->setSubmitListener(Lcom/narvii/widget/PurchaseConfirmButton$SubmitConfirmListener;)V

    const p1, 0x7f0903b7

    .line 153
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->earnFreeCoins:Landroid/widget/TextView;

    .line 155
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    .line 156
    iget-object p1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object p2, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.narvii.action.WALLET_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/influencer/FanClubSubscriptionDialog;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->updateWallet()V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/influencer/FanClubSubscriptionDialog;)Lcom/narvii/model/User;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->user:Lcom/narvii/model/User;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/narvii/influencer/FanClubSubscriptionDialog;Z)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->showPurchaseCoinDialog(Z)V

    return-void
.end method

.method static synthetic access$102(Lcom/narvii/influencer/FanClubSubscriptionDialog;Lcom/narvii/model/User;)Lcom/narvii/model/User;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->user:Lcom/narvii/model/User;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/narvii/influencer/FanClubSubscriptionDialog;)Lcom/narvii/widget/PurchaseConfirmButton;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->confirmButton:Lcom/narvii/widget/PurchaseConfirmButton;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/narvii/influencer/FanClubSubscriptionDialog;)Lcom/narvii/notification/NotificationCenter;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->notificationCenter:Lcom/narvii/notification/NotificationCenter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/influencer/FanClubSubscriptionDialog;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->nvContext:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/influencer/FanClubSubscriptionDialog;)I
    .locals 0

    .line 64
    iget p0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->ndcId:I

    return p0
.end method

.method static synthetic access$400(Lcom/narvii/influencer/FanClubSubscriptionDialog;)Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->influencerUid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/narvii/influencer/FanClubSubscriptionDialog;Lcom/narvii/influencer/FanClub;Z)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->sendNotification(Lcom/narvii/influencer/FanClub;Z)V

    return-void
.end method

.method static synthetic access$602(Lcom/narvii/influencer/FanClubSubscriptionDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->transactionId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/narvii/influencer/FanClubSubscriptionDialog;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->sendFellowRequest()V

    return-void
.end method

.method static synthetic access$800(Lcom/narvii/influencer/FanClubSubscriptionDialog;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->showSuccessToast()V

    return-void
.end method

.method static synthetic access$900(Lcom/narvii/influencer/FanClubSubscriptionDialog;)Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->source:Ljava/lang/String;

    return-object p0
.end method

.method private loadUserInfo(Ljava/lang/String;Lcom/narvii/util/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/model/User;",
            ">;)V"
        }
    .end annotation

    .line 225
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    iget v1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->ndcId:I

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/user-profile/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    .line 226
    iget-object v0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->nvContext:Lcom/narvii/app/NVContext;

    const-string v1, "api"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 227
    new-instance v1, Lcom/narvii/influencer/FanClubSubscriptionDialog$5;

    const-class v2, Lcom/narvii/model/api/UserResponse;

    invoke-direct {v1, p0, v2, p2}, Lcom/narvii/influencer/FanClubSubscriptionDialog$5;-><init>(Lcom/narvii/influencer/FanClubSubscriptionDialog;Ljava/lang/Class;Lcom/narvii/util/Callback;)V

    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private sendFellowRequest()V
    .locals 4

    .line 408
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/user-profile/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->user:Lcom/narvii/model/User;

    invoke-virtual {v2}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/member"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    .line 409
    iget-object v1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->apiService:Lcom/narvii/util/http/ApiService;

    new-instance v2, Lcom/narvii/influencer/FanClubSubscriptionDialog$8;

    const-class v3, Lcom/narvii/model/api/ApiResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/influencer/FanClubSubscriptionDialog$8;-><init>(Lcom/narvii/influencer/FanClubSubscriptionDialog;Ljava/lang/Class;)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private sendNotification(Lcom/narvii/influencer/FanClub;Z)V
    .locals 2

    .line 448
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/influencer/FanClub;

    .line 449
    iget v0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->ndcId:I

    iput v0, p1, Lcom/narvii/influencer/FanClub;->ndcId:I

    .line 451
    new-instance v0, Lcom/narvii/notification/Notification;

    invoke-direct {v0}, Lcom/narvii/notification/Notification;-><init>()V

    .line 452
    iget-boolean v1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->isRenewAction:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "update"

    goto :goto_0

    :cond_0
    const-string v1, "new"

    :goto_0
    iput-object v1, v0, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 453
    iput-object p1, v0, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 454
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, v0, Lcom/narvii/notification/Notification;->bundle:Landroid/os/Bundle;

    .line 456
    iget-object p1, v0, Lcom/narvii/notification/Notification;->bundle:Landroid/os/Bundle;

    xor-int/lit8 p2, p2, 0x1

    const-string v1, "subscriptionStatusChanged"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 458
    iget-object p1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->notificationCenter:Lcom/narvii/notification/NotificationCenter;

    invoke-virtual {p1, v0}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 460
    iget p1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->ndcId:I

    if-eqz p1, :cond_1

    .line 461
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object p1

    const-string p2, "notification"

    invoke-virtual {p1, p2}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    if-eqz p1, :cond_1

    .line 463
    invoke-virtual {v0}, Lcom/narvii/notification/Notification;->clone()Lcom/narvii/notification/Notification;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    :cond_1
    return-void
.end method

.method private sendSubscribeRequest(Z)V
    .locals 4

    .line 341
    iget-object v0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->transactionId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 342
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->transactionId:Ljava/lang/String;

    .line 344
    :cond_0
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    .line 345
    iget-object v1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->transactionId:Ljava/lang/String;

    const-string/jumbo v2, "transactionId"

    invoke-virtual {v0, v2, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v1, "isAutoRenew"

    .line 346
    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 347
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    iget v2, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->ndcId:I

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "influencer/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->influencerUid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/subscribe"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "paymentContext"

    invoke-virtual {v1, v2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    .line 348
    iget-object v1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->apiService:Lcom/narvii/util/http/ApiService;

    new-instance v2, Lcom/narvii/influencer/FanClubSubscriptionDialog$7;

    const-class v3, Lcom/narvii/influencer/FanClubListResponse;

    invoke-direct {v2, p0, v3, p1}, Lcom/narvii/influencer/FanClubSubscriptionDialog$7;-><init>(Lcom/narvii/influencer/FanClubSubscriptionDialog;Ljava/lang/Class;Z)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private setIsRenew(Z)V
    .locals 0

    .line 292
    iput-boolean p1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->isRenewAction:Z

    return-void
.end method

.method private setNdcId(I)V
    .locals 0

    .line 296
    iput p1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->ndcId:I

    return-void
.end method

.method private showPurchaseCoinDialog(Z)V
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->nvContext:Lcom/narvii/app/NVContext;

    invoke-static {v0, p1}, Lcom/narvii/wallet/PurchaseCoinFragment;->show(Lcom/narvii/app/NVContext;Z)V

    return-void
.end method

.method public static showSubscriptionDialog(Lcom/narvii/app/NVContext;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "FanClubSubscriptionDialog"

    const-string p1, "nvContext is null"

    .line 173
    invoke-static {p0, p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 176
    :cond_0
    invoke-static {p0}, Lcom/narvii/util/Utils;->shouldShowLoginPage(Lcom/narvii/app/NVContext;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "account"

    .line 180
    invoke-interface {p0, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 181
    invoke-virtual {v0, p2, p1}, Lcom/narvii/account/AccountService;->getFanClub(ILjava/lang/String;)Lcom/narvii/influencer/FanClub;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 182
    invoke-virtual {v0}, Lcom/narvii/influencer/FanClub;->hasSubscriptionBefore()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 184
    :goto_0
    invoke-static {p0, p1, p2, v0, p3}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->showSubscriptionDialog(Lcom/narvii/app/NVContext;Ljava/lang/String;IZLjava/lang/String;)V

    return-void
.end method

.method public static showSubscriptionDialog(Lcom/narvii/app/NVContext;Ljava/lang/String;IZLjava/lang/String;)V
    .locals 2

    const-string v0, "FanClubSubscriptionDialog"

    if-nez p0, :cond_0

    const-string p0, "nvContext is null"

    .line 189
    invoke-static {v0, p0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 192
    :cond_0
    invoke-static {p0}, Lcom/narvii/util/Utils;->shouldShowLoginPage(Lcom/narvii/app/NVContext;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    if-gtz p2, :cond_2

    const-string p2, "config"

    .line 198
    invoke-interface {p0, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/config/ConfigService;

    .line 199
    invoke-virtual {p2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p2

    if-gtz p2, :cond_2

    const-string p0, "ndcId is 0"

    .line 201
    invoke-static {v0, p0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 206
    :cond_2
    new-instance v0, Lcom/narvii/influencer/FanClubSubscriptionDialog;

    invoke-direct {v0, p0, p1}, Lcom/narvii/influencer/FanClubSubscriptionDialog;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 207
    iput-object p4, v0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->source:Ljava/lang/String;

    .line 208
    invoke-direct {v0, p2}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->setNdcId(I)V

    .line 209
    invoke-direct {v0, p3}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->setIsRenew(Z)V

    .line 210
    new-instance p2, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 211
    invoke-virtual {p2}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 212
    new-instance p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$4;

    invoke-direct {p0, p2, v0}, Lcom/narvii/influencer/FanClubSubscriptionDialog$4;-><init>(Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/influencer/FanClubSubscriptionDialog;)V

    invoke-direct {v0, p1, p0}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->loadUserInfo(Ljava/lang/String;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public static showSubscriptionDialog(Lcom/narvii/app/NVContext;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "config"

    .line 167
    invoke-interface {p0, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 168
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    invoke-static {p0, p1, v0, p2}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->showSubscriptionDialog(Lcom/narvii/app/NVContext;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private showSuccessToast()V
    .locals 8

    .line 469
    iget-object v0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/app/NVActivity;

    const v1, 0x7f0f1083

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/narvii/app/NVActivity;

    iget-object v0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f080148

    invoke-static {v0, v3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->nvContext:Lcom/narvii/app/NVContext;

    .line 471
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f01004c

    const-wide/16 v6, 0x258

    .line 470
    invoke-virtual/range {v2 .. v7}, Lcom/narvii/app/NVActivity;->toastImageWithText(Landroid/graphics/drawable/Drawable;Ljava/lang/String;IJ)V

    goto :goto_0

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    :goto_0
    return-void
.end method

.method private updateViews()V
    .locals 7

    const v0, 0x7f09042d

    .line 247
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 248
    iget-object v1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->user:Lcom/narvii/model/User;

    invoke-virtual {v1}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    const v0, 0x7f09042e

    .line 250
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 251
    iget-object v1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->user:Lcom/narvii/model/User;

    invoke-virtual {v1}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->user:Lcom/narvii/model/User;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/narvii/model/User;->influencerInfo:Lcom/narvii/model/InfluencerInfo;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->confirmButton:Lcom/narvii/widget/PurchaseConfirmButton;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0aa7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/widget/PurchaseConfirmButton;->setConfirmText(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0e1e

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->user:Lcom/narvii/model/User;

    iget-object v4, v4, Lcom/narvii/model/User;->influencerInfo:Lcom/narvii/model/InfluencerInfo;

    iget v4, v4, Lcom/narvii/model/InfluencerInfo;->monthlyFee:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 258
    iget-object v1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->totalCoinCount:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    iget-object v0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->subscriptionStartTime:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0f1013

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->dateFormat:Ljava/text/DateFormat;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v5

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    :cond_0
    invoke-direct {p0}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->updateWallet()V

    return-void
.end method

.method private updateWallet()V
    .locals 8

    .line 268
    iget-object v0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->membershipService:Lcom/narvii/wallet/MembershipService;

    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->walletBalance()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 269
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0f1034

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lcom/narvii/util/text/TextUtils;->numberFormat:Ljava/text/NumberFormat;

    iget-object v6, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->membershipService:Lcom/narvii/wallet/MembershipService;

    invoke-virtual {v6}, Lcom/narvii/wallet/MembershipService;->walletBalance()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 271
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0f1035

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 273
    :goto_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f10c1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 274
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 276
    new-instance v3, Lcom/narvii/util/text/NVText;

    invoke-direct {v3, v0}, Lcom/narvii/util/text/NVText;-><init>(Ljava/lang/CharSequence;)V

    .line 277
    new-instance v0, Lcom/narvii/influencer/FanClubSubscriptionDialog$6;

    invoke-direct {v0, p0}, Lcom/narvii/influencer/FanClubSubscriptionDialog$6;-><init>(Lcom/narvii/influencer/FanClubSubscriptionDialog;)V

    invoke-virtual {v3, v2, v0}, Lcom/narvii/util/text/NVText;->markText(Ljava/lang/String;Lcom/narvii/util/text/OnTagClickListener;)I

    .line 285
    iget-object v0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->earnFreeCoins:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 286
    iget-object v0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->earnFreeCoins:Landroid/widget/TextView;

    invoke-static {}, Lcom/narvii/util/text/LinkTouchMovementMethod;->getInstance()Lcom/narvii/util/text/LinkTouchMovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 287
    iget-object v0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->earnFreeCoins:Landroid/widget/TextView;

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method


# virtual methods
.method public doSubmit()V
    .locals 3

    .line 329
    sget-object v0, Lcom/narvii/logging/ActSemantic;->purchase:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v1, "PurchaseButton"

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 330
    iget-object v0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->user:Lcom/narvii/model/User;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/narvii/model/User;->influencerInfo:Lcom/narvii/model/InfluencerInfo;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/narvii/model/InfluencerInfo;->monthlyFee:I

    iget-object v2, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->membershipService:Lcom/narvii/wallet/MembershipService;

    invoke-virtual {v2}, Lcom/narvii/wallet/MembershipService;->walletBalance()I

    move-result v2

    if-le v0, v2, :cond_0

    .line 331
    invoke-direct {p0, v1}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->showPurchaseCoinDialog(Z)V

    return-void

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->confirmButton:Lcom/narvii/widget/PurchaseConfirmButton;

    invoke-virtual {v0, v1}, Lcom/narvii/widget/PurchaseConfirmButton;->updateSendingStatus(Z)V

    .line 337
    invoke-direct {p0, v1}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->sendSubscribeRequest(Z)V

    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 163
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "FanClubSubscription"

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 319
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090255

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 321
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    :goto_0
    return-void
.end method

.method public show()V
    .locals 2

    .line 302
    invoke-direct {p0}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->updateViews()V

    .line 303
    iget-object v0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->membershipService:Lcom/narvii/wallet/MembershipService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/narvii/wallet/MembershipService;->refreshWallet(Z)V

    .line 304
    invoke-super {p0}, Lcom/narvii/app/NVDialog;->show()V

    .line 306
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01003b

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const v1, 0x7f09042c

    .line 307
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
