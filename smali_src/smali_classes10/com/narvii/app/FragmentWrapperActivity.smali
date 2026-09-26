.class public Lcom/narvii/app/FragmentWrapperActivity;
.super Lcom/narvii/app/DrawerActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/app/FragmentWrapperActivity$ServiceOverride;
    }
.end annotation


# instance fields
.field private actionBarLayoutId:I

.field private customTheme:I

.field private fragment:Landroidx/fragment/app/Fragment;

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/DrawerActivity;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->actionBarLayoutId:I

    .line 7
    return-void
.end method

.method public static intent(Ljava/lang/Class;)Landroid/content/Intent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroid/content/Intent;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    :try_start_0
    const-string v2, "WRAPPER_ACTIVITY"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    move-object v1, v2

    .line 20
    .line 21
    .line 22
    :catch_0
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    const-class v1, Lcom/narvii/app/FragmentWrapperActivity;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 42
    move-result-object p0

    .line 43
    .line 44
    const-string v1, "fragment"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    return-object v0
.end method


# virtual methods
.method public canScrollUp()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->fragment:Landroidx/fragment/app/Fragment;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/app/NVFragment;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->canScrollUp()Z

    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->canScrollUp()Z

    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method protected createFragment()Landroidx/fragment/app/Fragment;
    .locals 6

    .line 1
    .line 2
    :try_start_0
    const-string v0, "fragment"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lai/medialab/medialabanalytics/MediaLabAnalytics;->getInstance()Lai/medialab/medialabanalytics/MediaLabAnalytics;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 14
    move-result-object v2

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Lai/medialab/medialabanalytics/MediaLabAnalytics;->initialize(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lai/medialab/medialabanalytics/MediaLabAnalytics;->getInstance()Lai/medialab/medialabanalytics/MediaLabAnalytics;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    const-string v2, "Fragment Created"

    .line 24
    const/4 v3, 0x1

    .line 25
    .line 26
    new-array v3, v3, [Landroid/util/Pair;

    .line 27
    .line 28
    new-instance v4, Landroid/util/Pair;

    .line 29
    .line 30
    const-string v5, "object_id"

    .line 31
    .line 32
    .line 33
    invoke-direct {v4, v5, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    const/4 v5, 0x0

    .line 35
    .line 36
    aput-object v4, v3, v5

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2, v3}, Lai/medialab/medialabanalytics/MediaLabAnalytics;->trackEvent(Ljava/lang/String;[Landroid/util/Pair;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    move-result v1

    .line 44
    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    const-string v0, "no fragment specified"

    .line 48
    .line 49
    .line 50
    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 51
    goto :goto_1

    .line 52
    :catch_0
    move-exception v0

    .line 53
    goto :goto_0

    .line 54
    .line 55
    .line 56
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    check-cast v0, Landroidx/fragment/app/Fragment;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    return-object v0

    .line 69
    .line 70
    :goto_0
    const-string v1, "fail to create fragment"

    .line 71
    .line 72
    .line 73
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    :goto_1
    const/4 v0, 0x0

    .line 75
    return-object v0
.end method

.method public finish()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->fragment:Landroidx/fragment/app/Fragment;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/app/FragmentWillFinishListener;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/app/FragmentWillFinishListener;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p0}, Lcom/narvii/app/FragmentWillFinishListener;->willFinish(Lcom/narvii/app/NVActivity;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->finish()V

    .line 15
    return-void
.end method

.method protected getActionbarLayoutId(ZII)I
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->actionBarLayoutId:I

    .line 3
    const/4 v1, -0x1

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVActivity;->getActionbarLayoutId(ZII)I

    .line 9
    move-result p1

    .line 10
    return p1

    .line 11
    :cond_0
    return v0
.end method

.method public getCBBLift()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->fragment:Landroidx/fragment/app/Fragment;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/app/NVFragment;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getCBBLift()I

    .line 12
    move-result v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return v0
.end method

.method protected getCrashlyticsClassName()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    const-string v0, "fragment"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->getCrashlyticsClassName()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    .line 19
    :cond_0
    const/16 v1, 0x2e

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    .line 23
    move-result v1

    .line 24
    .line 25
    if-lez v1, :cond_1

    .line 26
    .line 27
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    :cond_1
    return-object v0
.end method

.method public getCustomTheme()I
    .locals 1

    iget v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->customTheme:I

    return v0
.end method

.method protected getFragmentLayoutId()I
    .locals 1

    const v0, 0x7f0a039d

    return v0
.end method

.method public getOnlineBarLift()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->fragment:Landroidx/fragment/app/Fragment;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/app/NVFragment;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getOnlineBarLift()I

    .line 12
    move-result v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return v0
.end method

.method public getPostEntryLift()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->fragment:Landroidx/fragment/app/Fragment;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/app/NVFragment;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getPostEntryLift()I

    .line 12
    move-result v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return v0
.end method

.method public getRootFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    iget-object v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->fragment:Landroidx/fragment/app/Fragment;

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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->fragment:Landroidx/fragment/app/Fragment;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/app/FragmentWrapperActivity$ServiceOverride;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/app/FragmentWrapperActivity$ServiceOverride;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p1}, Lcom/narvii/app/FragmentWrapperActivity$ServiceOverride;->getOverrideService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    return-object v0

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method public hasCBB()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->hasCBB:Ljava/lang/Boolean;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-super {p0}, Lcom/narvii/app/DrawerActivity;->hasCBB()Z

    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 13
    move-result v0

    .line 14
    :goto_0
    return v0
.end method

.method public hasDrawer()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/DrawerActivity;->hasDrawer()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string v0, "__hideDrawer"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method public hasOnlineBar()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->hasOnlineBar:Ljava/lang/Boolean;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-super {p0}, Lcom/narvii/app/DrawerActivity;->hasOnlineBar()Z

    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/DrawerActivity;->hasCommunityId()Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->hasOnlineBar:Ljava/lang/Boolean;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 21
    move-result v0

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/narvii/app/FragmentWrapperActivity;->hasCBB()Z

    .line 27
    move-result v0

    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isGlobalInteractionScope()Z

    .line 33
    move-result v0

    .line 34
    .line 35
    if-nez v0, :cond_1

    .line 36
    const/4 v0, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 v0, 0x0

    .line 39
    :goto_0
    return v0
.end method

.method public hasPostEntry()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->hasPostEntry:Ljava/lang/Boolean;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-super {p0}, Lcom/narvii/app/DrawerActivity;->hasPostEntry()Z

    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/app/FragmentWrapperActivity;->hasCBB()Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    const/4 v0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v0, 0x0

    .line 25
    :goto_0
    return v0
.end method

.method public hasVisitorBar()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->hasVisitorBar:Ljava/lang/Boolean;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-super {p0}, Lcom/narvii/app/DrawerActivity;->hasVisitorBar()Z

    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 13
    move-result v0

    .line 14
    :goto_0
    return v0
.end method

.method public isGlobal()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->isGlobal:Z

    return v0
.end method

.method public isModel()Z
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->isModel:Z

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->isModel()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    :goto_1
    return v0
.end method

.method public isPagebackgroundEnabled()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->fragment:Landroidx/fragment/app/Fragment;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/app/NVFragment;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isPageBackgroundEnabled()Z

    .line 12
    move-result v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    .line 3
    if-ne p2, v0, :cond_0

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    const-string v0, "__finish"

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/app/FragmentWrapperActivity;->finish()V

    .line 18
    return-void

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 22
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->fragment:Landroidx/fragment/app/Fragment;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/app/FragmentOnBackListener;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/app/FragmentOnBackListener;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p0}, Lcom/narvii/app/FragmentOnBackListener;->onBackPressed(Lcom/narvii/app/NVActivity;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    return-void

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/DrawerActivity;->onBackPressed()V

    .line 19
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/FragmentWrapperActivity;->createFragment()Landroidx/fragment/app/Fragment;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iput-object v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->fragment:Landroidx/fragment/app/Fragment;

    .line 9
    .line 10
    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    .line 11
    .line 12
    if-eqz v1, :cond_5

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/app/NVFragment;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isGlobal()Z

    .line 18
    move-result v1

    .line 19
    .line 20
    iput-boolean v1, p0, Lcom/narvii/app/FragmentWrapperActivity;->isGlobal:Z

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isModel()Z

    .line 24
    move-result v1

    .line 25
    .line 26
    iput-boolean v1, p0, Lcom/narvii/app/FragmentWrapperActivity;->isModel:Z

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->hasPostEntry()Ljava/lang/Boolean;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iput-object v1, p0, Lcom/narvii/app/FragmentWrapperActivity;->hasPostEntry:Ljava/lang/Boolean;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p0, v1}, Lcom/narvii/app/NVFragment;->hasCBB(Lcom/narvii/app/NVActivity;Landroid/content/Intent;)Ljava/lang/Boolean;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    iput-object v1, p0, Lcom/narvii/app/FragmentWrapperActivity;->hasCBB:Ljava/lang/Boolean;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->hasVisitorBar()Z

    .line 46
    move-result v1

    .line 47
    .line 48
    .line 49
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    iput-object v1, p0, Lcom/narvii/app/FragmentWrapperActivity;->hasVisitorBar:Ljava/lang/Boolean;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->hasOnlineBar()Ljava/lang/Boolean;

    .line 56
    move-result-object v1

    .line 57
    .line 58
    iput-object v1, p0, Lcom/narvii/app/FragmentWrapperActivity;->hasOnlineBar:Ljava/lang/Boolean;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getCustomTheme()I

    .line 62
    move-result v1

    .line 63
    .line 64
    iput v1, p0, Lcom/narvii/app/FragmentWrapperActivity;->customTheme:I

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getStatusBarAlpha()I

    .line 68
    move-result v1

    .line 69
    .line 70
    iput v1, p0, Lcom/narvii/app/FragmentWrapperActivity;->statusBarAlpha:I

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getActionBarLayoutId()I

    .line 74
    move-result v0

    .line 75
    .line 76
    iput v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->actionBarLayoutId:I

    .line 77
    .line 78
    goto/16 :goto_3

    .line 79
    .line 80
    :cond_0
    const-string v0, "__isGlobal"

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 84
    move-result v0

    .line 85
    .line 86
    iput-boolean v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->isGlobal:Z

    .line 87
    .line 88
    const-string v0, "__isModel"

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 92
    move-result v0

    .line 93
    .line 94
    iput-boolean v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->isModel:Z

    .line 95
    .line 96
    const-string v0, "__hasPostEntry"

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 100
    move-result v1

    .line 101
    const/4 v2, 0x0

    .line 102
    .line 103
    if-eqz v1, :cond_1

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 107
    move-result v0

    .line 108
    .line 109
    .line 110
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 111
    move-result-object v0

    .line 112
    goto :goto_0

    .line 113
    :cond_1
    move-object v0, v2

    .line 114
    .line 115
    :goto_0
    iput-object v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->hasPostEntry:Ljava/lang/Boolean;

    .line 116
    .line 117
    const-string v0, "__hasCBB"

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 121
    move-result v1

    .line 122
    .line 123
    if-eqz v1, :cond_2

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 127
    move-result v0

    .line 128
    .line 129
    .line 130
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 131
    move-result-object v0

    .line 132
    goto :goto_1

    .line 133
    :cond_2
    move-object v0, v2

    .line 134
    .line 135
    :goto_1
    iput-object v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->hasCBB:Ljava/lang/Boolean;

    .line 136
    .line 137
    const-string v0, "__hasVisitorBar"

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 141
    move-result v1

    .line 142
    .line 143
    if-eqz v1, :cond_3

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 147
    move-result v0

    .line 148
    .line 149
    .line 150
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 151
    move-result-object v0

    .line 152
    goto :goto_2

    .line 153
    :cond_3
    move-object v0, v2

    .line 154
    .line 155
    :goto_2
    iput-object v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->hasVisitorBar:Ljava/lang/Boolean;

    .line 156
    .line 157
    const-string v0, "__hasOnlineBar"

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 161
    move-result v1

    .line 162
    .line 163
    if-eqz v1, :cond_4

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 167
    move-result v0

    .line 168
    .line 169
    .line 170
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 171
    move-result-object v2

    .line 172
    .line 173
    :cond_4
    iput-object v2, p0, Lcom/narvii/app/FragmentWrapperActivity;->hasOnlineBar:Ljava/lang/Boolean;

    .line 174
    .line 175
    const-string v0, "__customTheme"

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 179
    move-result v0

    .line 180
    .line 181
    iput v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->customTheme:I

    .line 182
    .line 183
    const-string v0, "__statusBarAlpha"

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 187
    move-result v0

    .line 188
    .line 189
    iput v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->statusBarAlpha:I

    .line 190
    .line 191
    .line 192
    :cond_5
    :goto_3
    invoke-super {p0, p1}, Lcom/narvii/app/DrawerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 193
    const/4 v0, 0x1

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0, v0}, Lcom/narvii/app/theme/NVThemeActivity;->setShouldInflateAd(Z)V

    .line 197
    .line 198
    .line 199
    const v0, 0x7f0d0035

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0, v0}, Lcom/narvii/app/DrawerActivity;->setContentView(I)V

    .line 203
    .line 204
    const-string v0, "fragment"

    .line 205
    .line 206
    if-nez p1, :cond_7

    .line 207
    .line 208
    iget-object p1, p0, Lcom/narvii/app/FragmentWrapperActivity;->fragment:Landroidx/fragment/app/Fragment;

    .line 209
    .line 210
    if-nez p1, :cond_6

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0}, Lcom/narvii/app/FragmentWrapperActivity;->finish()V

    .line 214
    goto :goto_4

    .line 215
    .line 216
    .line 217
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 218
    move-result-object p1

    .line 219
    .line 220
    .line 221
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 222
    move-result-object p1

    .line 223
    .line 224
    .line 225
    invoke-virtual {p0}, Lcom/narvii/app/FragmentWrapperActivity;->getFragmentLayoutId()I

    .line 226
    move-result v1

    .line 227
    .line 228
    iget-object v2, p0, Lcom/narvii/app/FragmentWrapperActivity;->fragment:Landroidx/fragment/app/Fragment;

    .line 229
    .line 230
    .line 231
    invoke-virtual {p1, v1, v2, v0}, Landroidx/fragment/app/FragmentTransaction;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 232
    move-result-object p1

    .line 233
    .line 234
    .line 235
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 236
    goto :goto_4

    .line 237
    .line 238
    .line 239
    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 240
    move-result-object p1

    .line 241
    .line 242
    .line 243
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 244
    move-result-object p1

    .line 245
    .line 246
    iput-object p1, p0, Lcom/narvii/app/FragmentWrapperActivity;->fragment:Landroidx/fragment/app/Fragment;

    .line 247
    :goto_4
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "__isGlobal"

    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/narvii/app/FragmentWrapperActivity;->isGlobal:Z

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11
    .line 12
    const-string v0, "__isModel"

    .line 13
    .line 14
    iget-boolean v1, p0, Lcom/narvii/app/FragmentWrapperActivity;->isModel:Z

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->hasPostEntry:Ljava/lang/Boolean;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const-string v1, "__hasPostEntry"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 27
    move-result v0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->hasCBB:Ljava/lang/Boolean;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    const-string v1, "__hasCBB"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 40
    move-result v0

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 44
    .line 45
    :cond_1
    iget-object v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->hasVisitorBar:Ljava/lang/Boolean;

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    const-string v1, "__hasVisitorBar"

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 53
    move-result v0

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 57
    .line 58
    :cond_2
    iget-object v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->hasOnlineBar:Ljava/lang/Boolean;

    .line 59
    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    const-string v1, "__hasOnlineBar"

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 66
    move-result v0

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 70
    .line 71
    :cond_3
    const-string v0, "__customTheme"

    .line 72
    .line 73
    iget v1, p0, Lcom/narvii/app/FragmentWrapperActivity;->customTheme:I

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 77
    .line 78
    const-string v0, "__statusBarAlpha"

    .line 79
    .line 80
    iget v1, p0, Lcom/narvii/app/FragmentWrapperActivity;->statusBarAlpha:I

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 84
    return-void
.end method

.method public requireAccount()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->fragment:Landroidx/fragment/app/Fragment;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/app/NVFragment;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->requireAccount()Z

    .line 12
    move-result v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return v0
.end method

.method public setStatusBar()V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->statusBarAlpha:I

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {p0, v0}, Lcom/narvii/util/statusbar/StatusBarUtils;->setTranslucentStatusBar(Lcom/narvii/app/NVContext;I)V

    .line 8
    goto :goto_0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->setStatusBar()V

    .line 12
    :goto_0
    return-void
.end method

.method protected showThemeColorAsAlternativeBackground()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->fragment:Landroidx/fragment/app/Fragment;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/app/NVFragment;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->showThemeColorAsAlternativeBackground()Z

    .line 12
    move-result v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return v0
.end method

.method public smoothScrollToTop()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/FragmentWrapperActivity;->fragment:Landroidx/fragment/app/Fragment;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/app/NVFragment;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->smoothScrollToTop()V

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->smoothScrollToTop()V

    .line 16
    :goto_0
    return-void
.end method
