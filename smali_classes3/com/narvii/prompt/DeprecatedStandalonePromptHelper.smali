.class public Lcom/narvii/prompt/DeprecatedStandalonePromptHelper;
.super Lcom/narvii/prompt/PromptHelper;
.source "DeprecatedStandalonePromptHelper.java"

# interfaces
.implements Lcom/narvii/drawer/DrawerHost$RequestCommunityInfoListener;


# instance fields
.field waiting:Z


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/amino/PromptShowListener;Z)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/prompt/PromptHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/amino/PromptShowListener;Z)V

    return-void
.end method

.method private allowShow()Z
    .locals 7

    .line 65
    iget-object v0, p0, Lcom/narvii/prompt/PromptHelper;->prefs:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const-string v2, "deprecatedStandaloneShownCount"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_0

    return v1

    .line 69
    :cond_0
    new-instance v0, Lcom/narvii/util/PackageUtils;

    iget-object v2, p0, Lcom/narvii/prompt/PromptHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/narvii/util/PackageUtils;->isMasterInstalled()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 73
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 74
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    new-instance v2, Ljava/util/Date;

    iget-object v3, p0, Lcom/narvii/prompt/PromptHelper;->prefs:Landroid/content/SharedPreferences;

    const-wide/16 v4, 0x0

    const-string v6, "deprecatedStandaloneTime"

    invoke-interface {v3, v6, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0, v2}, Lcom/narvii/util/DateUtils;->isSameDay(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected doTryShow()V
    .locals 2

    .line 24
    invoke-direct {p0}, Lcom/narvii/prompt/DeprecatedStandalonePromptHelper;->allowShow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    invoke-virtual {p0}, Lcom/narvii/prompt/PromptHelper;->whenNotBlocking()V

    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/narvii/prompt/PromptHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v1, "drawerHost"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/drawer/DrawerHost;

    if-nez v0, :cond_1

    .line 31
    invoke-virtual {p0}, Lcom/narvii/prompt/PromptHelper;->whenNotBlocking()V

    return-void

    .line 35
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/drawer/DrawerHost;->isRequestingCommunity()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 36
    invoke-virtual {v0, p0}, Lcom/narvii/drawer/DrawerHost;->addRequestCommunityInfoListener(Lcom/narvii/drawer/DrawerHost$RequestCommunityInfoListener;)V

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/narvii/prompt/DeprecatedStandalonePromptHelper;->waiting:Z

    return-void

    .line 41
    :cond_2
    invoke-virtual {v0}, Lcom/narvii/drawer/DrawerHost;->getReturnedCommunity()Lcom/narvii/model/Community;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 42
    iget-boolean v0, v0, Lcom/narvii/model/Community;->isStandaloneAppDeprecated:Z

    if-nez v0, :cond_3

    goto :goto_0

    .line 47
    :cond_3
    new-instance v0, Lcom/narvii/prompt/DeprecatedStandalonePromptHelper$1;

    invoke-direct {v0, p0}, Lcom/narvii/prompt/DeprecatedStandalonePromptHelper$1;-><init>(Lcom/narvii/prompt/DeprecatedStandalonePromptHelper;)V

    invoke-virtual {p0, v0}, Lcom/narvii/prompt/PromptHelper;->dispatchShowPromptRunnable(Ljava/lang/Runnable;)V

    return-void

    .line 43
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/prompt/PromptHelper;->whenNotBlocking()V

    return-void
.end method

.method public onRequestCommunityStatusChanged()V
    .locals 2

    .line 82
    iget-boolean v0, p0, Lcom/narvii/prompt/DeprecatedStandalonePromptHelper;->waiting:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lcom/narvii/prompt/DeprecatedStandalonePromptHelper;->waiting:Z

    .line 84
    iget-object v0, p0, Lcom/narvii/prompt/PromptHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v1, "drawerHost"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/drawer/DrawerHost;

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0, p0}, Lcom/narvii/drawer/DrawerHost;->removeRequestCommunityInfoListener(Lcom/narvii/drawer/DrawerHost$RequestCommunityInfoListener;)V

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/prompt/DeprecatedStandalonePromptHelper;->doTryShow()V

    :cond_1
    return-void
.end method
