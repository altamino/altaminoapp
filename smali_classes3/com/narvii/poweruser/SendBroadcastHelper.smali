.class public Lcom/narvii/poweruser/SendBroadcastHelper;
.super Ljava/lang/Object;
.source "SendBroadcastHelper.java"


# static fields
.field public static final API_ERR_PUSH_SERVER_LIMITATION_APART:I = 0x9c5

.field public static final API_ERR_PUSH_SERVER_LIMITATION_COUNT:I = 0x9c6

.field public static final API_ERR_PUSH_SERVER_LIMITATION_TIME:I = 0x9c8

.field public static final API_ERR_PUSH_SERVER_LINK_NOT_IN_COMMUNITY:I = 0x9c7


# instance fields
.field public apiRequest:Lcom/narvii/util/http/ApiRequest;

.field private configService:Lcom/narvii/config/ConfigService;

.field linkUrl:Ljava/lang/String;

.field loading:Z

.field private nvContext:Lcom/narvii/app/NVContext;

.field packageUtils:Lcom/narvii/util/PackageUtils;

.field private progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

.field private shareLinkHelper:Lcom/narvii/share/ShareLinkHelper;

.field private textCrawler:Lcom/narvii/util/crawler/TextCrawler;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 2

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/narvii/poweruser/SendBroadcastHelper;->loading:Z

    .line 84
    iput-object p1, p0, Lcom/narvii/poweruser/SendBroadcastHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 85
    new-instance v0, Lcom/narvii/share/ShareLinkHelper;

    invoke-direct {v0, p1}, Lcom/narvii/share/ShareLinkHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/poweruser/SendBroadcastHelper;->shareLinkHelper:Lcom/narvii/share/ShareLinkHelper;

    const-string v0, "config"

    .line 86
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    iput-object v0, p0, Lcom/narvii/poweruser/SendBroadcastHelper;->configService:Lcom/narvii/config/ConfigService;

    .line 87
    new-instance v0, Lcom/narvii/util/PackageUtils;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/narvii/poweruser/SendBroadcastHelper;->packageUtils:Lcom/narvii/util/PackageUtils;

    .line 88
    new-instance v0, Lcom/narvii/util/crawler/TextCrawler;

    invoke-direct {v0, p1}, Lcom/narvii/util/crawler/TextCrawler;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/poweruser/SendBroadcastHelper;->textCrawler:Lcom/narvii/util/crawler/TextCrawler;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/poweruser/SendBroadcastHelper;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/narvii/poweruser/SendBroadcastHelper;->nvContext:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/poweruser/SendBroadcastHelper;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/narvii/poweruser/SendBroadcastHelper;->safeCloseProgressDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/poweruser/SendBroadcastHelper;Lcom/narvii/model/LinkSummary;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/narvii/poweruser/SendBroadcastHelper;->showSendBroadcastDialog(Lcom/narvii/model/LinkSummary;Ljava/lang/String;)V

    return-void
.end method

.method private checkIfCanPush(Lcom/narvii/model/NVObject;)V
    .locals 4

    .line 109
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v1, p0, Lcom/narvii/poweruser/SendBroadcastHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/narvii/poweruser/SendBroadcastHelper;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 110
    iget-object v0, p0, Lcom/narvii/poweruser/SendBroadcastHelper;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    new-instance v1, Lcom/narvii/poweruser/SendBroadcastHelper$1;

    invoke-direct {v1, p0}, Lcom/narvii/poweruser/SendBroadcastHelper$1;-><init>(Lcom/narvii/poweruser/SendBroadcastHelper;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 120
    iget-object v0, p0, Lcom/narvii/poweruser/SendBroadcastHelper;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    const/4 v0, 0x1

    .line 121
    iput-boolean v0, p0, Lcom/narvii/poweruser/SendBroadcastHelper;->loading:Z

    .line 122
    iget-object v0, p0, Lcom/narvii/poweruser/SendBroadcastHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v1, "api"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 123
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "/push/check"

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/poweruser/SendBroadcastHelper;->apiRequest:Lcom/narvii/util/http/ApiRequest;

    .line 124
    iget-object v1, p0, Lcom/narvii/poweruser/SendBroadcastHelper;->apiRequest:Lcom/narvii/util/http/ApiRequest;

    new-instance v2, Lcom/narvii/poweruser/SendBroadcastHelper$2;

    const-class v3, Lcom/narvii/model/api/ApiResponse;

    invoke-direct {v2, p0, v3, p1}, Lcom/narvii/poweruser/SendBroadcastHelper$2;-><init>(Lcom/narvii/poweruser/SendBroadcastHelper;Ljava/lang/Class;Lcom/narvii/model/NVObject;)V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private safeCloseProgressDialog()V
    .locals 1

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/narvii/poweruser/SendBroadcastHelper;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/narvii/poweruser/SendBroadcastHelper;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private showSendBroadcastDialog(Lcom/narvii/model/LinkSummary;Ljava/lang/String;)V
    .locals 5

    .line 59
    new-instance v0, Lcom/narvii/poweruser/SendBroadcastDialogFragment;

    invoke-direct {v0}, Lcom/narvii/poweruser/SendBroadcastDialogFragment;-><init>()V

    .line 60
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 61
    iget-object v2, p0, Lcom/narvii/poweruser/SendBroadcastHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v3, "community"

    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/community/CommunityService;

    .line 62
    iget-object v3, p0, Lcom/narvii/poweruser/SendBroadcastHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v4, "config"

    invoke-interface {v3, v4}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/config/ConfigService;

    .line 63
    invoke-virtual {v3}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object v2

    .line 64
    iget v2, v2, Lcom/narvii/model/Community;->membersCount:I

    const-string v3, "membersCount"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "linkUrl"

    .line 65
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "linkSummary"

    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 68
    iget-object p1, p0, Lcom/narvii/poweruser/SendBroadcastHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/app/NVActivity;

    if-eqz p1, :cond_0

    .line 70
    :try_start_0
    iget-object p1, p0, Lcom/narvii/poweruser/SendBroadcastHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/narvii/app/NVActivity;

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    .line 71
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const-string p2, "send_broadcast"

    .line 72
    invoke-virtual {p1, v0, p2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 73
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const-string p1, "send broadcast fail - not activity"

    .line 78
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    :catch_0
    :goto_0
    return-void
.end method


# virtual methods
.method public processError(ILjava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 178
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    iget-object v1, p0, Lcom/narvii/poweruser/SendBroadcastHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_1

    :pswitch_0
    const p1, 0x7f0f0aeb

    .line 182
    invoke-virtual {v0, p1}, Lcom/narvii/widget/ACMAlertDialog;->setTitle(I)V

    goto :goto_0

    :pswitch_1
    const p1, 0x7f0f0fff

    .line 188
    invoke-virtual {v0, p1}, Lcom/narvii/widget/ACMAlertDialog;->setTitle(I)V

    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_0

    .line 192
    invoke-virtual {v0, p2}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const p1, 0x104000a

    .line 193
    invoke-virtual {v0, p1, p3}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 194
    new-instance p1, Lcom/narvii/poweruser/SendBroadcastHelper$3;

    invoke-direct {p1, p0, p3}, Lcom/narvii/poweruser/SendBroadcastHelper$3;-><init>(Lcom/narvii/poweruser/SendBroadcastHelper;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 202
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_2

    .line 204
    :cond_0
    iget-object p1, p0, Lcom/narvii/poweruser/SendBroadcastHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x9c5
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public sendBroadcast(Lcom/narvii/model/NVObject;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 95
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/poweruser/SendBroadcastHelper;->checkIfCanPush(Lcom/narvii/model/NVObject;)V

    return-void
.end method
