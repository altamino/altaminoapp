.class public Lcom/narvii/master/MasterTemplatePickerFragment;
.super Lcom/narvii/modulization/template/TemplatePickerFragment;
.source "MasterTemplatePickerFragment.java"


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

    .line 36
    invoke-direct {p0}, Lcom/narvii/modulization/template/TemplatePickerFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public createCheck(I)V
    .locals 4

    const-string v0, "api"

    .line 142
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 143
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "community/creatable-check"

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/master/MasterTemplatePickerFragment;->apiRequest:Lcom/narvii/util/http/ApiRequest;

    .line 144
    new-instance v1, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/narvii/master/MasterTemplatePickerFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 145
    iget-object v1, p0, Lcom/narvii/master/MasterTemplatePickerFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {v1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 146
    iget-object v1, p0, Lcom/narvii/master/MasterTemplatePickerFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    new-instance v2, Lcom/narvii/master/MasterTemplatePickerFragment$1;

    invoke-direct {v2, p0, v0}, Lcom/narvii/master/MasterTemplatePickerFragment$1;-><init>(Lcom/narvii/master/MasterTemplatePickerFragment;Lcom/narvii/util/http/ApiService;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 154
    iget-object v1, p0, Lcom/narvii/master/MasterTemplatePickerFragment;->apiRequest:Lcom/narvii/util/http/ApiRequest;

    new-instance v2, Lcom/narvii/master/MasterTemplatePickerFragment$2;

    const-class v3, Lcom/narvii/model/api/ApiResponse;

    invoke-direct {v2, p0, v3, p1}, Lcom/narvii/master/MasterTemplatePickerFragment$2;-><init>(Lcom/narvii/master/MasterTemplatePickerFragment;Ljava/lang/Class;I)V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f10000c

    return v0
.end method

.method protected getFooterHeight()I
    .locals 2

    .line 89
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

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
    .locals 4

    .line 105
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09030a

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 112
    :cond_0
    sget v0, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v1, 0x65

    const-string v2, "loginAhead"

    const-string v3, "account"

    if-ne v0, v1, :cond_3

    .line 114
    iget-object v0, p0, Lcom/narvii/master/MasterTemplatePickerFragment;->packageUtils:Lcom/narvii/util/PackageUtils;

    invoke-virtual {v0}, Lcom/narvii/util/PackageUtils;->isMasterInstalled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 115
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 116
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/narvii/master/MasterTemplatePickerFragment;->createCheck(I)V

    goto :goto_0

    .line 119
    :cond_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    goto :goto_0

    .line 122
    :cond_2
    new-instance p1, Lcom/narvii/master/MasterHelper;

    invoke-direct {p1, p0}, Lcom/narvii/master/MasterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 v0, 0x0

    const-string v1, "mastertab=create"

    .line 123
    invoke-virtual {p1, v0, v1}, Lcom/narvii/master/MasterHelper;->showDownloadMaterDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :cond_3
    iget-object v0, p0, Lcom/narvii/master/MasterTemplatePickerFragment;->packageUtils:Lcom/narvii/util/PackageUtils;

    invoke-virtual {v0}, Lcom/narvii/util/PackageUtils;->installedAcm()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 126
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 127
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/narvii/master/MasterTemplatePickerFragment;->createCheck(I)V

    goto :goto_0

    .line 130
    :cond_4
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    goto :goto_0

    .line 133
    :cond_5
    new-instance p1, Lcom/narvii/master/DownloadAcmDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1000ce

    invoke-direct {p1, v0, v1}, Lcom/narvii/master/DownloadAcmDialog;-><init>(Landroid/content/Context;I)V

    .line 134
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 48
    invoke-super {p0, p1}, Lcom/narvii/modulization/template/TemplatePickerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    new-instance v0, Lcom/narvii/util/PackageUtils;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/narvii/master/MasterTemplatePickerFragment;->packageUtils:Lcom/narvii/util/PackageUtils;

    .line 50
    new-instance v0, Lcom/narvii/util/PreferencesHelper;

    invoke-direct {v0, p0}, Lcom/narvii/util/PreferencesHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/master/MasterTemplatePickerFragment;->sharedPreferencesHelper:Lcom/narvii/util/PreferencesHelper;

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b02b8

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/narvii/master/MasterTemplatePickerFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/narvii/master/MasterTemplatePickerFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 79
    :cond_0
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 66
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 69
    invoke-static {p1}, Lcom/narvii/master/theme/MasterThemeExtensionKt;->addMasterThemeFragment(Landroid/support/v4/app/FragmentManager;)Lcom/narvii/master/theme/MasterThemeFragment;

    :cond_0
    return-void
.end method
