.class public abstract Lcom/narvii/prompt/PromptHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected account:Lcom/narvii/account/AccountService;

.field protected communityId:I

.field protected nvContext:Lcom/narvii/app/NVContext;

.field protected prefs:Landroid/content/SharedPreferences;

.field protected promptShowListener:Lcom/narvii/amino/PromptShowListener;

.field protected removeWhenLogout:Z


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/amino/PromptShowListener;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/prompt/PromptHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/amino/PromptShowListener;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/amino/PromptShowListener;Z)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/prompt/PromptHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v0, "account"

    .line 3
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    iput-object v0, p0, Lcom/narvii/prompt/PromptHelper;->account:Lcom/narvii/account/AccountService;

    const-string v0, "config"

    .line 4
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 5
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    iput v0, p0, Lcom/narvii/prompt/PromptHelper;->communityId:I

    iput-boolean p3, p0, Lcom/narvii/prompt/PromptHelper;->removeWhenLogout:Z

    if-eqz p3, :cond_0

    iget-object p1, p0, Lcom/narvii/prompt/PromptHelper;->account:Lcom/narvii/account/AccountService;

    .line 6
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/prompt/PromptHelper;->prefs:Landroid/content/SharedPreferences;

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p3, "prompt"

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/prompt/PromptHelper;->prefs:Landroid/content/SharedPreferences;

    :goto_0
    iput-object p2, p0, Lcom/narvii/prompt/PromptHelper;->promptShowListener:Lcom/narvii/amino/PromptShowListener;

    return-void
.end method

.method private isActive()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/prompt/PromptHelper;->promptShowListener:Lcom/narvii/amino/PromptShowListener;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lcom/narvii/amino/PromptShowListener;->isActive()Z

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    return v0
.end method

.method private isComposeMenuOpen()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/prompt/PromptHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v1, "postEntry"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Landroid/app/Dialog;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 16
    move-result v0

    .line 17
    return v0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    return v0
.end method

.method private isDrawerClosed()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/prompt/PromptHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    instance-of v1, v0, Lcom/narvii/app/DrawerActivity;

    .line 9
    const/4 v2, 0x1

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/app/DrawerActivity;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/narvii/app/DrawerActivity;->isDrawerOpen()Z

    .line 17
    move-result v1

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/narvii/app/DrawerActivity;->isDrawerIdle()Z

    .line 23
    move-result v0

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v2, 0x0

    .line 28
    :cond_1
    :goto_0
    return v2
.end method

.method private isLotteryDialogShowing()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/prompt/PromptHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v1, "drawerHost"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/drawer/DrawerHost;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-boolean v1, v0, Lcom/narvii/drawer/DrawerHost;->willPlayLottery:Z

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost;->lotteryDialog:Lcom/narvii/checkin/lottery/LotteryDialog;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    :cond_0
    const/4 v0, 0x1

    .line 28
    return v0

    .line 29
    :cond_1
    const/4 v0, 0x0

    .line 30
    return v0
.end method

.method private isStreakRepairDialogShowing()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/prompt/PromptHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v1, "drawerHost"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/drawer/DrawerHost;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-boolean v0, v0, Lcom/narvii/drawer/DrawerHost;->streakRepairDialogShowing:Z

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    const/4 v0, 0x1

    .line 18
    return v0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    return v0
.end method


# virtual methods
.method protected dispatchShowPromptRunnable(Ljava/lang/Runnable;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, v1}, Lcom/narvii/prompt/PromptHelper;->dispatchShowPromptRunnable(Ljava/lang/Runnable;J)V

    return-void
.end method

.method protected dispatchShowPromptRunnable(Ljava/lang/Runnable;J)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Lcom/narvii/prompt/PromptHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/narvii/prompt/PromptHelper$1;-><init>(Lcom/narvii/prompt/PromptHelper;Ljava/lang/Runnable;)V

    invoke-static {v0, p2, p3}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method protected abstract doTryShow()V
.end method

.method protected getCommunity()Lcom/narvii/model/Community;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/prompt/PromptHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v1, "community"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/community/CommunityService;

    .line 11
    .line 12
    iget v1, p0, Lcom/narvii/prompt/PromptHelper;->communityId:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method protected getPromptKeySuffix()Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "_"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget v2, p0, Lcom/narvii/prompt/PromptHelper;->communityId:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    iget-boolean v2, p0, Lcom/narvii/prompt/PromptHelper;->removeWhenLogout:Z

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    const-string v1, ""

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/narvii/prompt/PromptHelper;->account:Lcom/narvii/account/AccountService;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    .line 46
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 51
    return-object v0
.end method

.method protected getUser()Lcom/narvii/model/User;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/prompt/PromptHelper;->account:Lcom/narvii/account/AccountService;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 10
    move-result-object v0

    .line 11
    :goto_0
    return-object v0
.end method

.method protected isShowContextOk()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/prompt/PromptHelper;->isActive()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/prompt/PromptHelper;->isDrawerClosed()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/narvii/prompt/PromptHelper;->isComposeMenuOpen()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/narvii/prompt/PromptHelper;->isLotteryDialogShowing()Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lcom/narvii/prompt/PromptHelper;->isStreakRepairDialogShowing()Z

    .line 28
    move-result v0

    .line 29
    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    sget-boolean v0, Lcom/narvii/app/NVActivity;->userTouching:Z

    .line 33
    .line 34
    if-nez v0, :cond_0

    .line 35
    const/4 v0, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 v0, 0x0

    .line 38
    :goto_0
    return v0
.end method

.method public onPostShow()V
    .locals 0

    return-void
.end method

.method public tryShow()V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "prompt blocking "

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    const-string v2, "PromptHelper"

    .line 21
    .line 22
    const-string v3, ""

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Lcom/narvii/util/Log;->v(Ljava/lang/String;)V

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/prompt/PromptHelper;->promptShowListener:Lcom/narvii/amino/PromptShowListener;

    .line 39
    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    .line 43
    invoke-interface {v0}, Lcom/narvii/amino/PromptShowListener;->whenBlocking()V

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/prompt/PromptHelper;->doTryShow()V

    .line 47
    return-void
.end method

.method protected whenNotBlocking()V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "prompt not blocking "

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    const-string v2, "PromptHelper"

    .line 21
    .line 22
    const-string v3, ""

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Lcom/narvii/util/Log;->v(Ljava/lang/String;)V

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/prompt/PromptHelper;->promptShowListener:Lcom/narvii/amino/PromptShowListener;

    .line 39
    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    .line 43
    invoke-interface {v0}, Lcom/narvii/amino/PromptShowListener;->whenNotBlocking()V

    .line 44
    :cond_0
    return-void
.end method
