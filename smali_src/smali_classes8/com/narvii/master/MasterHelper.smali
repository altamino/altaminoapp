.class public Lcom/narvii/master/MasterHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field ctx:Lcom/narvii/app/NVContext;

.field packageUtils:Lcom/narvii/util/PackageUtils;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/master/MasterHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 6
    .line 7
    new-instance v0, Lcom/narvii/util/PackageUtils;

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, p1}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    iput-object v0, p0, Lcom/narvii/master/MasterHelper;->packageUtils:Lcom/narvii/util/PackageUtils;

    .line 17
    return-void
.end method

.method public static safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroid/content/Context;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
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


# virtual methods
.method public createAmino(Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    const-class v0, Lcom/narvii/master/MasterTemplatePickerFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "source"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/master/MasterHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v0}, Lcom/narvii/master/MasterHelper;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 21
    return-void
.end method

.method public exploreCommunities(Ljava/lang/String;)V
    .locals 3

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/master/MasterHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 3
    const/4 v0, 0x5

    .line 4
    :goto_0
    const/4 v1, 0x0

    .line 5
    .line 6
    if-ltz v0, :cond_1

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    instance-of v2, p1, Lcom/narvii/master/MasterTabFragment;

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    check-cast p1, Lcom/narvii/master/MasterTabFragment;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v1}, Lcom/narvii/app/NVBaseScrollableTabFragment;->setTabIndex(I)V

    .line 18
    return-void

    .line 19
    .line 20
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 21
    .line 22
    .line 23
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getParentContext()Lcom/narvii/app/NVContext;

    .line 24
    move-result-object p1

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_1
    const-class p1, Lcom/narvii/master/home/discover/DiscoverTabFragment;

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    const-string v0, "__communityId"

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/master/MasterHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 39
    .line 40
    .line 41
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    .line 45
    invoke-static {v0, p1}, Lcom/narvii/master/MasterHelper;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 46
    return-void
.end method

.method public jumpToMyCommunityPage()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/MasterHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v1, "eventLogProfile"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/services/EventLogProfileService;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/services/EventLogProfileService;->isShowMyCommunityTab()Z

    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/master/MasterHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 20
    const/4 v2, 0x5

    .line 21
    .line 22
    :goto_0
    if-ltz v2, :cond_1

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    instance-of v3, v0, Lcom/narvii/master/MasterTabFragment;

    .line 27
    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    check-cast v0, Lcom/narvii/master/MasterTabFragment;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/narvii/master/MasterTabFragment;->selectTab(I)V

    .line 34
    return-void

    .line 35
    .line 36
    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 37
    .line 38
    .line 39
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getParentContext()Lcom/narvii/app/NVContext;

    .line 40
    move-result-object v0

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :cond_1
    const-class v0, Lcom/narvii/master/home/MyAminosFragment;

    .line 44
    .line 45
    .line 46
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    const-string v2, "__single"

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 53
    .line 54
    const-string v1, "__communityId"

    .line 55
    const/4 v2, 0x0

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 59
    .line 60
    iget-object v1, p0, Lcom/narvii/master/MasterHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 61
    .line 62
    .line 63
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 64
    move-result-object v1

    .line 65
    .line 66
    .line 67
    invoke-static {v1, v0}, Lcom/narvii/master/MasterHelper;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 68
    return-void
.end method

.method public safeStartActivity(Landroid/content/Intent;I)V
    .locals 0

    .line 1
    .line 2
    :try_start_0
    iget-object p2, p0, Lcom/narvii/master/MasterHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    .line 5
    invoke-static {p2, p1}, Lcom/narvii/master/MasterHelper;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :catch_0
    return-void
.end method

.method public showDownloadMaterDialog(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/narvii/master/MasterHelper;->showDownloadMaterDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showDownloadMaterDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 2
    new-instance p2, Lcom/narvii/util/dialog/AlertDialog;

    iget-object v0, p0, Lcom/narvii/master/MasterHelper;->ctx:Lcom/narvii/app/NVContext;

    const-string v1, "DownloadMasterApp"

    invoke-direct {p2, v0, v1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/narvii/master/MasterHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 3
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12040a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/narvii/util/dialog/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f0d01ae

    .line 4
    invoke-virtual {p2, v0}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(I)V

    .line 5
    new-instance v0, Lcom/narvii/master/MasterHelper$1;

    invoke-direct {v0, p0, p2}, Lcom/narvii/master/MasterHelper$1;-><init>(Lcom/narvii/master/MasterHelper;Lcom/narvii/util/dialog/AlertDialog;)V

    const v1, 0x7f1201e2

    const/16 v2, 0x40

    invoke-virtual {p2, v1, v2, v0}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/narvii/master/MasterHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 6
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f06009e

    invoke-static {v1, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 7
    new-instance v0, Lcom/narvii/master/MasterHelper$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/narvii/master/MasterHelper$2;-><init>(Lcom/narvii/master/MasterHelper;Lcom/narvii/util/dialog/AlertDialog;Ljava/lang/String;)V

    const p1, 0x7f1207d3

    invoke-virtual {p2, p1, v2, v0}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iget-object v0, p0, Lcom/narvii/master/MasterHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 8
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9
    invoke-virtual {p2}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method
