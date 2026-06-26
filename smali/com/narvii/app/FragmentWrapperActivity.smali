.class public Lcom/narvii/app/FragmentWrapperActivity;
.super Lcom/narvii/app/DrawerActivity;
.source "FragmentWrapperActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/app/FragmentWrapperActivity$ServiceOverride;
    }
.end annotation


# instance fields
.field private actionBarLayoutId:I

.field private customTheme:I

.field private fragment:Landroid/support/v4/app/Fragment;

.field private hasCBB:Ljava/lang/Boolean;

.field private hasOnlineBar:Ljava/lang/Boolean;

.field private hasPostEntry:Ljava/lang/Boolean;

.field private hasVisitorBar:Ljava/lang/Boolean;

.field private isGlobal:Z

.field private isModel:Z

.field private statusBarAlpha:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/narvii/app/DrawerActivity;-><init>()V

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->actionBarLayoutId:I

    return-void
.end method

.method public static intent(Ljava/lang/Class;)Landroid/content/Intent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/support/v4/app/Fragment;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 17
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "WRAPPER_ACTIVITY"

    .line 20
    invoke-virtual {p0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 21
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    nop

    .line 24
    :goto_0
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_0

    const-class v1, Lcom/narvii/app/FragmentWrapperActivity;

    .line 25
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 24
    :cond_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "fragment"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public canScrollUp()Z
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->fragment:Landroid/support/v4/app/Fragment;

    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    if-eqz v1, :cond_0

    .line 229
    check-cast v0, Lcom/narvii/app/NVFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->canScrollUp()Z

    move-result v0

    return v0

    .line 231
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->canScrollUp()Z

    move-result v0

    return v0
.end method

.method protected createFragment()Landroid/support/v4/app/Fragment;
    .locals 2

    :try_start_0
    const-string v0, "fragment"

    .line 183
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "no fragment specified"

    .line 185
    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 187
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "fail to create fragment"

    .line 191
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public finish()V
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->fragment:Landroid/support/v4/app/Fragment;

    instance-of v1, v0, Lcom/narvii/app/FragmentWillFinishListener;

    if-eqz v1, :cond_0

    .line 238
    check-cast v0, Lcom/narvii/app/FragmentWillFinishListener;

    invoke-interface {v0, p0}, Lcom/narvii/app/FragmentWillFinishListener;->willFinish(Lcom/narvii/app/NVActivity;)V

    .line 240
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->finish()V

    return-void
.end method

.method protected getActionbarLayoutId(ZII)I
    .locals 2

    .line 103
    iget v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->actionBarLayoutId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 104
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVActivity;->getActionbarLayoutId(ZII)I

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public getCBBLift()I
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->fragment:Landroid/support/v4/app/Fragment;

    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/narvii/app/NVFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getCBBLift()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected getCrashlyticsClassName()Ljava/lang/String;
    .locals 2

    const-string v0, "fragment"

    .line 203
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->getCrashlyticsClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v1, 0x2e

    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-lez v1, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getCustomTheme()I
    .locals 1

    .line 111
    iget v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->customTheme:I

    return v0
.end method

.method protected getFragmentLayoutId()I
    .locals 1

    const v0, 0x1020002

    return v0
.end method

.method public getOnlineBarLift()I
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->fragment:Landroid/support/v4/app/Fragment;

    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/narvii/app/NVFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getOnlineBarLift()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPostEntryLift()I
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->fragment:Landroid/support/v4/app/Fragment;

    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/narvii/app/NVFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getPostEntryLift()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getRootFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->fragment:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public getService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->fragment:Landroid/support/v4/app/Fragment;

    instance-of v1, v0, Lcom/narvii/app/FragmentWrapperActivity$ServiceOverride;

    if-eqz v1, :cond_0

    .line 254
    check-cast v0, Lcom/narvii/app/FragmentWrapperActivity$ServiceOverride;

    invoke-interface {v0, p1}, Lcom/narvii/app/FragmentWrapperActivity$ServiceOverride;->getOverrideService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 259
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hasCBB()Z
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->hasCBB:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/narvii/app/DrawerActivity;->hasCBB()Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public hasDrawer()Z
    .locals 1

    .line 53
    invoke-super {p0}, Lcom/narvii/app/DrawerActivity;->hasDrawer()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "__hideDrawer"

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasOnlineBar()Z
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->hasOnlineBar:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/narvii/app/DrawerActivity;->hasOnlineBar()Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/DrawerActivity;->hasCommunityId()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->hasOnlineBar:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/narvii/app/FragmentWrapperActivity;->hasCBB()Z

    move-result v0

    if-nez v0, :cond_1

    .line 78
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isGlobalInteractionScope()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPostEntry()Z
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->hasPostEntry:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/narvii/app/DrawerActivity;->hasPostEntry()Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/narvii/app/FragmentWrapperActivity;->hasCBB()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasVisitorBar()Z
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->hasVisitorBar:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/narvii/app/DrawerActivity;->hasVisitorBar()Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public isGlobal()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->isGlobal:Z

    return v0
.end method

.method public isModel()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->isModel:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/narvii/app/NVActivity;->isModel()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isPagebackgroundEnabled()Z
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->fragment:Landroid/support/v4/app/Fragment;

    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/narvii/app/NVFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isPageBackgroundEnabled()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    const-string v1, "__finish"

    .line 282
    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/narvii/app/FragmentWrapperActivity;->finish()V

    return-void

    .line 288
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->fragment:Landroid/support/v4/app/Fragment;

    instance-of v1, v0, Lcom/narvii/app/FragmentOnBackListener;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/narvii/app/FragmentOnBackListener;

    invoke-interface {v0, p0}, Lcom/narvii/app/FragmentOnBackListener;->onBackPressed(Lcom/narvii/app/NVActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 248
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/DrawerActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    if-nez p1, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/narvii/app/FragmentWrapperActivity;->createFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->fragment:Landroid/support/v4/app/Fragment;

    .line 118
    iget-object v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->fragment:Landroid/support/v4/app/Fragment;

    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    if-eqz v1, :cond_5

    .line 119
    check-cast v0, Lcom/narvii/app/NVFragment;

    .line 120
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isGlobal()Z

    move-result v1

    iput-boolean v1, p0, Lcom/narvii/app/FragmentWrapperActivity;->isGlobal:Z

    .line 121
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isModel()Z

    move-result v1

    iput-boolean v1, p0, Lcom/narvii/app/FragmentWrapperActivity;->isModel:Z

    .line 122
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->hasPostEntry()Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/app/FragmentWrapperActivity;->hasPostEntry:Ljava/lang/Boolean;

    .line 123
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/narvii/app/NVFragment;->hasCBB(Lcom/narvii/app/NVActivity;Landroid/content/Intent;)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/app/FragmentWrapperActivity;->hasCBB:Ljava/lang/Boolean;

    .line 124
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->hasVisitorBar()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/app/FragmentWrapperActivity;->hasVisitorBar:Ljava/lang/Boolean;

    .line 125
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->hasOnlineBar()Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/app/FragmentWrapperActivity;->hasOnlineBar:Ljava/lang/Boolean;

    .line 126
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getCustomTheme()I

    move-result v1

    iput v1, p0, Lcom/narvii/app/FragmentWrapperActivity;->customTheme:I

    .line 127
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getStatusBarAlpha()I

    move-result v1

    iput v1, p0, Lcom/narvii/app/FragmentWrapperActivity;->statusBarAlpha:I

    .line 128
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getActionBarLayoutId()I

    move-result v0

    iput v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->actionBarLayoutId:I

    goto/16 :goto_3

    :cond_0
    const-string v0, "__isGlobal"

    .line 131
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->isGlobal:Z

    const-string v0, "__isModel"

    .line 132
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->isModel:Z

    const-string v0, "__hasPostEntry"

    .line 133
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    iput-object v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->hasPostEntry:Ljava/lang/Boolean;

    const-string v0, "__hasCBB"

    .line 134
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    iput-object v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->hasCBB:Ljava/lang/Boolean;

    const-string v0, "__hasVisitorBar"

    .line 135
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, v2

    :goto_2
    iput-object v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->hasVisitorBar:Ljava/lang/Boolean;

    const-string v0, "__hasOnlineBar"

    .line 136
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :cond_4
    iput-object v2, p0, Lcom/narvii/app/FragmentWrapperActivity;->hasOnlineBar:Ljava/lang/Boolean;

    const-string v0, "__customTheme"

    .line 137
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->customTheme:I

    const-string v0, "__statusBarAlpha"

    .line 138
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->statusBarAlpha:I

    .line 141
    :cond_5
    :goto_3
    invoke-super {p0, p1}, Lcom/narvii/app/DrawerActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "fragment"

    if-nez p1, :cond_7

    .line 144
    iget-object p1, p0, Lcom/narvii/app/FragmentWrapperActivity;->fragment:Landroid/support/v4/app/Fragment;

    if-nez p1, :cond_6

    .line 145
    invoke-virtual {p0}, Lcom/narvii/app/FragmentWrapperActivity;->finish()V

    goto :goto_4

    .line 147
    :cond_6
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 148
    invoke-virtual {p0}, Lcom/narvii/app/FragmentWrapperActivity;->getFragmentLayoutId()I

    move-result v1

    iget-object v2, p0, Lcom/narvii/app/FragmentWrapperActivity;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 149
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_4

    .line 152
    :cond_7
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/app/FragmentWrapperActivity;->fragment:Landroid/support/v4/app/Fragment;

    :goto_4
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 162
    invoke-super {p0, p1}, Lcom/narvii/app/NVActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 163
    iget-boolean v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->isGlobal:Z

    const-string v1, "__isGlobal"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 164
    iget-boolean v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->isModel:Z

    const-string v1, "__isModel"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 165
    iget-object v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->hasPostEntry:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "__hasPostEntry"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->hasCBB:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 169
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "__hasCBB"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->hasVisitorBar:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 172
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "__hasVisitorBar"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 174
    :cond_2
    iget-object v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->hasOnlineBar:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 175
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "__hasOnlineBar"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 177
    :cond_3
    iget v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->customTheme:I

    const-string v1, "__customTheme"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 178
    iget v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->statusBarAlpha:I

    const-string v1, "__statusBarAlpha"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public requireAccount()Z
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->fragment:Landroid/support/v4/app/Fragment;

    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/narvii/app/NVFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->requireAccount()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setStatusBar()V
    .locals 1

    .line 272
    iget v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->statusBarAlpha:I

    if-eqz v0, :cond_0

    .line 273
    invoke-static {p0, v0}, Lcom/narvii/util/statusbar/StatusBarUtils;->setTranslucentStatusBar(Lcom/narvii/app/NVContext;I)V

    goto :goto_0

    .line 275
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->setStatusBar()V

    :goto_0
    return-void
.end method

.method protected showThemeColorAsAlternativeBackground()Z
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->fragment:Landroid/support/v4/app/Fragment;

    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/narvii/app/NVFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->showThemeColorAsAlternativeBackground()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public smoothScrollToTop()V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->fragment:Landroid/support/v4/app/Fragment;

    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    if-eqz v1, :cond_0

    .line 220
    check-cast v0, Lcom/narvii/app/NVFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->smoothScrollToTop()V

    goto :goto_0

    .line 222
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->smoothScrollToTop()V

    :goto_0
    return-void
.end method
