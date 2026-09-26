.class public Lcom/narvii/master/MasterTemplatePickerFragment;
.super Lcom/narvii/modulization/template/TemplatePickerFragment;
.source "SourceFile"


# static fields
.field public static final API_ERR_COMMUNITY_USER_CREATED_COMMUNITIES_EXCEED_QUOTA:I = 0x326

.field public static final API_ERR_COMMUNITY_USER_CREATED_COMMUNITIES_VERIFY:I = 0x101


# instance fields
.field public apiRequest:Lcom/narvii/util/http/ApiRequest;

.field packageUtils:Lcom/narvii/util/PackageUtils;

.field public progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

.field sharedPreferencesHelper:Lcom/narvii/util/PreferencesHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/modulization/template/TemplatePickerFragment;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public createCheck(I)V
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
    .line 11
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    const-string v2, "community/creatable-check"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    iput-object v1, p0, Lcom/narvii/master/MasterTemplatePickerFragment;->apiRequest:Lcom/narvii/util/http/ApiRequest;

    .line 29
    .line 30
    new-instance v1, Lcom/narvii/util/dialog/ProgressDialog;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    .line 37
    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 38
    .line 39
    iput-object v1, p0, Lcom/narvii/master/MasterTemplatePickerFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 43
    .line 44
    iget-object v1, p0, Lcom/narvii/master/MasterTemplatePickerFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 45
    .line 46
    new-instance v2, Lcom/narvii/master/MasterTemplatePickerFragment$1;

    .line 47
    .line 48
    .line 49
    invoke-direct {v2, p0, v0}, Lcom/narvii/master/MasterTemplatePickerFragment$1;-><init>(Lcom/narvii/master/MasterTemplatePickerFragment;Lcom/narvii/util/http/ApiService;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 53
    .line 54
    iget-object v1, p0, Lcom/narvii/master/MasterTemplatePickerFragment;->apiRequest:Lcom/narvii/util/http/ApiRequest;

    .line 55
    .line 56
    new-instance v2, Lcom/narvii/master/MasterTemplatePickerFragment$2;

    .line 57
    .line 58
    const-class v3, Lcom/narvii/model/api/ApiResponse;

    .line 59
    .line 60
    .line 61
    invoke-direct {v2, p0, v3, p1}, Lcom/narvii/master/MasterTemplatePickerFragment$2;-><init>(Lcom/narvii/master/MasterTemplatePickerFragment;Ljava/lang/Class;I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 65
    return-void
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f13000d

    return v0
.end method

.method protected getFooterHeight()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    const v1, 0x7f0704fb

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method protected isActionBarTransparent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
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
    const v1, 0x7f0a03dd

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    const-string v0, "statistics"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Lcom/narvii/util/statistics/StatisticsService;

    .line 19
    .line 20
    const-string v1, "Downloads or Opens ACM"

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v1}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    check-cast v1, Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 34
    move-result v1

    .line 35
    .line 36
    const-string v2, "Template"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;I)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    const-string v1, "ACM Button Tapped Total"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 46
    .line 47
    iget-object v0, p0, Lcom/narvii/master/MasterTemplatePickerFragment;->packageUtils:Lcom/narvii/util/PackageUtils;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/narvii/util/PackageUtils;->installedAcm()Z

    .line 51
    move-result v0

    .line 52
    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    const-string v0, "account"

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 65
    move-result v0

    .line 66
    .line 67
    if-eqz v0, :cond_1

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    check-cast p1, Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 77
    move-result p1

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, p1}, Lcom/narvii/master/MasterTemplatePickerFragment;->createCheck(I)V

    .line 81
    goto :goto_0

    .line 82
    .line 83
    :cond_1
    new-instance p1, Landroid/content/Intent;

    .line 84
    .line 85
    const-string v0, "loginAhead"

    .line 86
    .line 87
    .line 88
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    .line 92
    goto :goto_0

    .line 93
    .line 94
    :cond_2
    new-instance p1, Lcom/narvii/master/DownloadAcmDialog;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 98
    move-result-object v0

    .line 99
    .line 100
    .line 101
    const v1, 0x7f13015d

    .line 102
    .line 103
    .line 104
    invoke-direct {p1, v0, v1}, Lcom/narvii/master/DownloadAcmDialog;-><init>(Landroid/content/Context;I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 108
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/modulization/template/TemplatePickerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    sget-object v0, Lcom/narvii/app/ComScoreSectionDispatcher;->INSTANCE:Lcom/narvii/app/ComScoreSectionDispatcher;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/narvii/app/ComScoreSectionDispatcher;->sectionChangeToNone()V

    .line 9
    .line 10
    new-instance v0, Lcom/narvii/util/PackageUtils;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    iput-object v0, p0, Lcom/narvii/master/MasterTemplatePickerFragment;->packageUtils:Lcom/narvii/util/PackageUtils;

    .line 20
    .line 21
    new-instance v0, Lcom/narvii/util/PreferencesHelper;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0}, Lcom/narvii/util/PreferencesHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 25
    .line 26
    iput-object v0, p0, Lcom/narvii/master/MasterTemplatePickerFragment;->sharedPreferencesHelper:Lcom/narvii/util/PreferencesHelper;

    .line 27
    const/4 v0, 0x0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    if-nez p1, :cond_0

    .line 33
    .line 34
    const-string p1, "statistics"

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 41
    .line 42
    const-string v0, "Create Your Amino Tapped"

    .line 43
    .line 44
    .line 45
    invoke-interface {p1, v0}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    const-string v0, "Create Your Amino Tapped Total"

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 52
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d02ea

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
    iget-object v0, p0, Lcom/narvii/master/MasterTemplatePickerFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/master/MasterTemplatePickerFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    .line 14
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lcom/narvii/master/theme/MasterThemeExtensionKt;->addMasterThemeFragment(Landroidx/fragment/app/FragmentManager;)Lcom/narvii/master/theme/MasterThemeFragment;

    .line 13
    :cond_0
    return-void
.end method
