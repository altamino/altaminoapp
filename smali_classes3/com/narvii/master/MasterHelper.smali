.class public Lcom/narvii/master/MasterHelper;
.super Ljava/lang/Object;
.source "MasterHelper.java"


# instance fields
.field ctx:Lcom/narvii/app/NVContext;

.field packageUtils:Lcom/narvii/util/PackageUtils;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/narvii/master/MasterHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 32
    new-instance v0, Lcom/narvii/util/PackageUtils;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/narvii/master/MasterHelper;->packageUtils:Lcom/narvii/util/PackageUtils;

    return-void
.end method


# virtual methods
.method public createAmino(Ljava/lang/String;)V
    .locals 2

    .line 86
    const-class v0, Lcom/narvii/master/MasterTemplatePickerFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "source"

    .line 87
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    iget-object p1, p0, Lcom/narvii/master/MasterHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public exploreCommunities(Ljava/lang/String;)V
    .locals 4

    .line 93
    iget-object v0, p0, Lcom/narvii/master/MasterHelper;->ctx:Lcom/narvii/app/NVContext;

    const/4 v1, 0x5

    :goto_0
    const/4 v2, 0x0

    if-ltz v1, :cond_1

    if-eqz v0, :cond_1

    .line 96
    instance-of v3, v0, Lcom/narvii/master/MasterTabFragment;

    if-eqz v3, :cond_0

    .line 97
    check-cast v0, Lcom/narvii/master/MasterTabFragment;

    invoke-virtual {v0, v2}, Lcom/narvii/app/NVBaseScrollableTabFragment;->setTabIndex(I)V

    return-void

    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 102
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object v0

    goto :goto_0

    .line 106
    :cond_1
    sget v0, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_2

    .line 107
    const-class v0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "source"

    .line 108
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 110
    :cond_2
    const-class p1, Lcom/narvii/master/home/discover/DiscoverTabFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string p1, "__communityId"

    .line 111
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 113
    :goto_1
    iget-object p1, p0, Lcom/narvii/master/MasterHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public jumpToMyCommunityPage()V
    .locals 4

    .line 117
    iget-object v0, p0, Lcom/narvii/master/MasterHelper;->ctx:Lcom/narvii/app/NVContext;

    const-string v1, "eventLogProfile"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/services/EventLogProfileService;

    .line 118
    invoke-virtual {v0}, Lcom/narvii/services/EventLogProfileService;->isShowMyCommunityTab()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/narvii/master/MasterHelper;->ctx:Lcom/narvii/app/NVContext;

    const/4 v2, 0x5

    :goto_0
    if-ltz v2, :cond_1

    if-eqz v0, :cond_1

    .line 122
    instance-of v3, v0, Lcom/narvii/master/MasterTabFragment;

    if-eqz v3, :cond_0

    .line 123
    check-cast v0, Lcom/narvii/master/MasterTabFragment;

    invoke-virtual {v0, v1}, Lcom/narvii/master/MasterTabFragment;->selectTab(I)V

    return-void

    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 128
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object v0

    goto :goto_0

    .line 132
    :cond_1
    const-class v0, Lcom/narvii/master/home/MyAminosFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "__single"

    .line 133
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x0

    const-string v2, "__communityId"

    .line 134
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 135
    iget-object v1, p0, Lcom/narvii/master/MasterHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public safeStartActivity(Landroid/content/Intent;I)V
    .locals 2

    .line 38
    sget v0, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    .line 39
    new-instance v0, Lcom/narvii/util/PackageUtils;

    iget-object v1, p0, Lcom/narvii/master/MasterHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-virtual {v0}, Lcom/narvii/util/PackageUtils;->getCommunityIdFromPackageName()I

    move-result v0

    if-eq v0, p2, :cond_0

    const/4 p2, 0x0

    .line 42
    invoke-virtual {p0, p2}, Lcom/narvii/master/MasterHelper;->showDownloadMaterDialog(Ljava/lang/String;)V

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    .line 49
    :try_start_0
    iget-object p2, p0, Lcom/narvii/master/MasterHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {p2, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public showDownloadMaterDialog(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-virtual {p0, p1, v0}, Lcom/narvii/master/MasterHelper;->showDownloadMaterDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showDownloadMaterDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 61
    new-instance p2, Lcom/narvii/util/dialog/AlertDialog;

    iget-object v0, p0, Lcom/narvii/master/MasterHelper;->ctx:Lcom/narvii/app/NVContext;

    const-string v1, "DownloadMasterApp"

    invoke-direct {p2, v0, v1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/narvii/master/MasterHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f03b2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/narvii/util/dialog/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b018f

    .line 63
    invoke-virtual {p2, v0}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(I)V

    .line 64
    new-instance v0, Lcom/narvii/master/MasterHelper$1;

    invoke-direct {v0, p0, p2}, Lcom/narvii/master/MasterHelper$1;-><init>(Lcom/narvii/master/MasterHelper;Lcom/narvii/util/dialog/AlertDialog;)V

    const/16 v1, 0x40

    const v2, 0x7f0f0193

    invoke-virtual {p2, v2, v1, v0}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 70
    iget-object v2, p0, Lcom/narvii/master/MasterHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f06007a

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 72
    new-instance v0, Lcom/narvii/master/MasterHelper$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/narvii/master/MasterHelper$2;-><init>(Lcom/narvii/master/MasterHelper;Lcom/narvii/util/dialog/AlertDialog;Ljava/lang/String;)V

    const p1, 0x7f0f072a

    invoke-virtual {p2, p1, v1, v0}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 80
    iget-object v0, p0, Lcom/narvii/master/MasterHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 81
    invoke-virtual {p2}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method
