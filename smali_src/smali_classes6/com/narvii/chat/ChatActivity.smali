.class public Lcom/narvii/chat/ChatActivity;
.super Lcom/narvii/app/FragmentWrapperActivity;
.source "SourceFile"


# instance fields
.field public DISABLE_FLOATING_WINDOW:Lcom/narvii/util/statistics/TmpValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/statistics/TmpValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/FragmentWrapperActivity;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/util/statistics/TmpValue;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Lcom/narvii/util/statistics/TmpValue;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/chat/ChatActivity;->DISABLE_FLOATING_WINDOW:Lcom/narvii/util/statistics/TmpValue;

    .line 11
    return-void
.end method

.method public static statChannelType(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "Screening Room"

    return-object p0

    :cond_1
    const-string p0, "Video"

    return-object p0

    :cond_2
    const-string p0, "Avatar"

    return-object p0

    :cond_3
    const-string p0, "Voice"

    return-object p0
.end method


# virtual methods
.method public disableFloatingWindow()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/ChatActivity;->DISABLE_FLOATING_WINDOW:Lcom/narvii/util/statistics/TmpValue;

    .line 3
    .line 4
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 5
    .line 6
    const-wide/16 v2, 0x1f4

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;J)V

    .line 10
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0}, Lcom/narvii/app/FragmentWrapperActivity;->getRootFragment()Landroidx/fragment/app/Fragment;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    const-string v0, "chatInput"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    check-cast p1, Lcom/narvii/chat/input/ChatInputFragment;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    :catch_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/narvii/app/theme/NVThemeActivity;->setConversationScreen(Z)V

    .line 5
    .line 6
    .line 7
    invoke-super {p0, p1}, Lcom/narvii/app/FragmentWrapperActivity;->onCreate(Landroid/os/Bundle;)V

    .line 8
    .line 9
    const-string p1, "topActivity"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/narvii/app/FragmentWrapperActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    check-cast p1, Lcom/narvii/util/services/TopActivityService;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/narvii/util/services/TopActivityService;->getLastResumedActivity()Landroid/app/Activity;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    instance-of v0, p1, Lcom/narvii/chat/ChatActivity;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    move-object v0, p1

    .line 25
    .line 26
    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->isDestoryed()Z

    .line 30
    move-result v0

    .line 31
    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    .line 36
    move-result v0

    .line 37
    .line 38
    if-nez v0, :cond_0

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    const-string v0, "id"

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    .line 55
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    move-result p1

    .line 57
    .line 58
    if-eqz p1, :cond_0

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/narvii/app/FragmentWrapperActivity;->finish()V

    .line 62
    .line 63
    :cond_0
    const-string p1, "open_chat_thread"

    .line 64
    const/4 v0, 0x0

    .line 65
    .line 66
    .line 67
    invoke-static {p0, p1, v0}, Lcom/narvii/util/statistics/FirebaseLogManager;->logEvent(Lcom/narvii/app/NVContext;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    .line 69
    sget-object p1, Lcom/narvii/ad/MediaLabInterstitials;->INSTANCE:Lcom/narvii/ad/MediaLabInterstitials;

    .line 70
    .line 71
    const-string v1, "open_chat"

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v1, v0}, Lcom/narvii/ad/MediaLabInterstitials;->showAdWithDelayedAction(Ljava/lang/String;Le8/a;)Z

    .line 75
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/DrawerActivity;->onDestroy()V

    .line 4
    .line 5
    sget-object v0, Lcom/narvii/ad/MediaLabInterstitials;->INSTANCE:Lcom/narvii/ad/MediaLabInterstitials;

    .line 6
    .line 7
    const-string v1, "close_chat"

    .line 8
    const/4 v2, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/narvii/ad/MediaLabInterstitials;->showAdWithDelayedAction(Ljava/lang/String;Le8/a;)Z

    .line 12
    return-void
.end method

.method public provideAdsResourceId()I
    .locals 1

    const v0, 0x7f0d0037

    return v0
.end method

.method public setAllowFloatingWindow(Z)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/FragmentWrapperActivity;->getRootFragment()Landroidx/fragment/app/Fragment;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v0, v0, Lcom/narvii/chat/ChatFragment;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/app/FragmentWrapperActivity;->getRootFragment()Landroidx/fragment/app/Fragment;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/chat/ChatFragment;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/narvii/chat/ChatFragment;->setAllowFloatingWindow(Z)V

    .line 18
    :cond_0
    return-void
.end method

.method public setNoNeedToAutoJoin(Z)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/FragmentWrapperActivity;->getRootFragment()Landroidx/fragment/app/Fragment;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    instance-of p1, p1, Lcom/narvii/chat/ChatFragment;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/app/FragmentWrapperActivity;->getRootFragment()Landroidx/fragment/app/Fragment;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    check-cast p1, Lcom/narvii/chat/ChatFragment;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    const-string v0, "vvChat"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    instance-of v0, p1, Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    check-cast p1, Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 31
    const/4 v0, 0x1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->setNoNeedAutoJoin(Z)V

    .line 35
    :cond_0
    return-void
.end method
