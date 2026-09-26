.class public Lcom/narvii/poweruser/SendBroadcastHelper;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/poweruser/SendBroadcastHelper;->loading:Z

    .line 7
    .line 8
    iput-object p1, p0, Lcom/narvii/poweruser/SendBroadcastHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 9
    .line 10
    new-instance v0, Lcom/narvii/share/ShareLinkHelper;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, p1}, Lcom/narvii/share/ShareLinkHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 14
    .line 15
    iput-object v0, p0, Lcom/narvii/poweruser/SendBroadcastHelper;->shareLinkHelper:Lcom/narvii/share/ShareLinkHelper;

    .line 16
    .line 17
    const-string v0, "config"

    .line 18
    .line 19
    .line 20
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/poweruser/SendBroadcastHelper;->configService:Lcom/narvii/config/ConfigService;

    .line 26
    .line 27
    new-instance v0, Lcom/narvii/util/PackageUtils;

    .line 28
    .line 29
    .line 30
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, v1}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 35
    .line 36
    iput-object v0, p0, Lcom/narvii/poweruser/SendBroadcastHelper;->packageUtils:Lcom/narvii/util/PackageUtils;

    .line 37
    .line 38
    new-instance v0, Lcom/narvii/util/crawler/TextCrawler;

    .line 39
    .line 40
    .line 41
    invoke-direct {v0, p1}, Lcom/narvii/util/crawler/TextCrawler;-><init>(Lcom/narvii/app/NVContext;)V

    .line 42
    .line 43
    iput-object v0, p0, Lcom/narvii/poweruser/SendBroadcastHelper;->textCrawler:Lcom/narvii/util/crawler/TextCrawler;

    .line 44
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/poweruser/SendBroadcastHelper;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/poweruser/SendBroadcastHelper;->nvContext:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/narvii/poweruser/SendBroadcastHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/poweruser/SendBroadcastHelper;->safeCloseProgressDialog()V

    return-void
.end method

.method static bridge synthetic c(Lcom/narvii/poweruser/SendBroadcastHelper;Lcom/narvii/model/LinkSummary;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/poweruser/SendBroadcastHelper;->showSendBroadcastDialog(Lcom/narvii/model/LinkSummary;Ljava/lang/String;)V

    return-void
.end method

.method private checkIfCanPush(Lcom/narvii/model/NVObject;)V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/poweruser/SendBroadcastHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/poweruser/SendBroadcastHelper;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 14
    .line 15
    new-instance v1, Lcom/narvii/poweruser/SendBroadcastHelper$1;

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, p0}, Lcom/narvii/poweruser/SendBroadcastHelper$1;-><init>(Lcom/narvii/poweruser/SendBroadcastHelper;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/poweruser/SendBroadcastHelper;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 27
    const/4 v0, 0x1

    .line 28
    .line 29
    iput-boolean v0, p0, Lcom/narvii/poweruser/SendBroadcastHelper;->loading:Z

    .line 30
    .line 31
    iget-object v0, p0, Lcom/narvii/poweruser/SendBroadcastHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 32
    .line 33
    const-string v1, "api"

    .line 34
    .line 35
    .line 36
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 40
    .line 41
    .line 42
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    const-string v2, "/push/check"

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 53
    move-result-object v1

    .line 54
    .line 55
    iput-object v1, p0, Lcom/narvii/poweruser/SendBroadcastHelper;->apiRequest:Lcom/narvii/util/http/ApiRequest;

    .line 56
    .line 57
    new-instance v2, Lcom/narvii/poweruser/SendBroadcastHelper$2;

    .line 58
    .line 59
    const-class v3, Lcom/narvii/model/api/ApiResponse;

    .line 60
    .line 61
    .line 62
    invoke-direct {v2, p0, v3, p1}, Lcom/narvii/poweruser/SendBroadcastHelper$2;-><init>(Lcom/narvii/poweruser/SendBroadcastHelper;Ljava/lang/Class;Lcom/narvii/model/NVObject;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 66
    return-void
.end method

.method private safeCloseProgressDialog()V
    .locals 1

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/narvii/poweruser/SendBroadcastHelper;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :catch_0
    :cond_0
    return-void
.end method

.method private showSendBroadcastDialog(Lcom/narvii/model/LinkSummary;Ljava/lang/String;)V
    .locals 5

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/poweruser/SendBroadcastDialogFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/poweruser/SendBroadcastDialogFragment;-><init>()V

    .line 6
    .line 7
    new-instance v1, Landroid/os/Bundle;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 11
    .line 12
    iget-object v2, p0, Lcom/narvii/poweruser/SendBroadcastHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 13
    .line 14
    const-string v3, "community"

    .line 15
    .line 16
    .line 17
    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    check-cast v2, Lcom/narvii/community/CommunityService;

    .line 21
    .line 22
    iget-object v3, p0, Lcom/narvii/poweruser/SendBroadcastHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 23
    .line 24
    const-string v4, "config"

    .line 25
    .line 26
    .line 27
    invoke-interface {v3, v4}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    move-result-object v3

    .line 29
    .line 30
    check-cast v3, Lcom/narvii/config/ConfigService;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 34
    move-result v3

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v3}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 38
    move-result-object v2

    .line 39
    .line 40
    const-string v3, "membersCount"

    .line 41
    .line 42
    iget v2, v2, Lcom/narvii/model/Community;->membersCount:I

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 46
    .line 47
    const-string v2, "linkUrl"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v2, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    const-string p2, "linkSummary"

    .line 53
    .line 54
    .line 55
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 63
    .line 64
    iget-object p1, p0, Lcom/narvii/poweruser/SendBroadcastHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 65
    .line 66
    .line 67
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    instance-of p1, p1, Lcom/narvii/app/NVActivity;

    .line 71
    .line 72
    if-eqz p1, :cond_0

    .line 73
    .line 74
    :try_start_0
    iget-object p1, p0, Lcom/narvii/poweruser/SendBroadcastHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 75
    .line 76
    .line 77
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    check-cast p1, Lcom/narvii/app/NVActivity;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 84
    move-result-object p1

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 88
    move-result-object p1

    .line 89
    .line 90
    const-string p2, "send_broadcast"

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v0, p2}, Landroidx/fragment/app/FragmentTransaction;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->k()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    goto :goto_0

    .line 98
    .line 99
    :cond_0
    const-string p1, "send broadcast fail - not activity"

    .line 100
    .line 101
    .line 102
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 103
    :catch_0
    :goto_0
    return-void
.end method


# virtual methods
.method public processError(ILjava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/poweruser/SendBroadcastHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    packed-switch p1, :pswitch_data_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/poweruser/SendBroadcastHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 17
    .line 18
    .line 19
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 20
    move-result-object p1

    .line 21
    const/4 p3, 0x1

    .line 22
    .line 23
    .line 24
    invoke-static {p1, p2, p3}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 29
    goto :goto_1

    .line 30
    .line 31
    .line 32
    :pswitch_0
    const p1, 0x7f120b96

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1}, Lcom/narvii/widget/ACMAlertDialog;->setTitle(I)V

    .line 36
    goto :goto_0

    .line 37
    .line 38
    .line 39
    :pswitch_1
    const p1, 0x7f121115

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p1}, Lcom/narvii/widget/ACMAlertDialog;->setTitle(I)V

    .line 43
    .line 44
    .line 45
    :goto_0
    invoke-virtual {v0, p2}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 46
    .line 47
    .line 48
    const p1, 0x104000a

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p1, p3}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 52
    .line 53
    new-instance p1, Lcom/narvii/poweruser/SendBroadcastHelper$3;

    .line 54
    .line 55
    .line 56
    invoke-direct {p1, p0, p3}, Lcom/narvii/poweruser/SendBroadcastHelper$3;-><init>(Lcom/narvii/poweruser/SendBroadcastHelper;Landroid/view/View$OnClickListener;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 63
    :goto_1
    return-void

    .line 64
    nop

    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
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

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/poweruser/SendBroadcastHelper;->checkIfCanPush(Lcom/narvii/model/NVObject;)V

    .line 7
    return-void
.end method
