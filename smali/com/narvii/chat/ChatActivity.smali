.class public Lcom/narvii/chat/ChatActivity;
.super Lcom/narvii/app/FragmentWrapperActivity;
.source "ChatActivity.java"


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

    .line 26
    invoke-direct {p0}, Lcom/narvii/app/FragmentWrapperActivity;-><init>()V

    .line 52
    new-instance v0, Lcom/narvii/util/statistics/TmpValue;

    invoke-direct {v0}, Lcom/narvii/util/statistics/TmpValue;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/ChatActivity;->DISABLE_FLOATING_WINDOW:Lcom/narvii/util/statistics/TmpValue;

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

    .line 61
    iget-object v0, p0, Lcom/narvii/chat/ChatActivity;->DISABLE_FLOATING_WINDOW:Lcom/narvii/util/statistics/TmpValue;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;J)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 44
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 46
    :try_start_0
    invoke-virtual {p0}, Lcom/narvii/app/FragmentWrapperActivity;->getRootFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/ChatFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "chatInput"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/input/ChatInputFragment;

    .line 47
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/narvii/chat/input/ChatInputFragment;->setAdsVisible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 30
    invoke-super {p0, p1}, Lcom/narvii/app/FragmentWrapperActivity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo p1, "topActivity"

    .line 32
    invoke-virtual {p0, p1}, Lcom/narvii/app/FragmentWrapperActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/services/TopActivityService;

    .line 33
    invoke-virtual {p1}, Lcom/narvii/util/services/TopActivityService;->getLastResumedActivity()Landroid/app/Activity;

    move-result-object p1

    .line 34
    instance-of v0, p1, Lcom/narvii/chat/ChatActivity;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/narvii/app/NVActivity;

    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->isDestoryed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 36
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/narvii/app/FragmentWrapperActivity;->finish()V

    :cond_0
    return-void
.end method

.method public setAllowFloatingWindow(Z)V
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/narvii/app/FragmentWrapperActivity;->getRootFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/chat/ChatFragment;

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/narvii/app/FragmentWrapperActivity;->getRootFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/ChatFragment;

    invoke-virtual {v0, p1}, Lcom/narvii/chat/ChatFragment;->setAllowFloatingWindow(Z)V

    :cond_0
    return-void
.end method

.method public setNoNeedToAutoJoin(Z)V
    .locals 1

    .line 65
    invoke-virtual {p0}, Lcom/narvii/app/FragmentWrapperActivity;->getRootFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/chat/ChatFragment;

    if-eqz p1, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/narvii/app/FragmentWrapperActivity;->getRootFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/ChatFragment;

    .line 67
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string/jumbo v0, "vvChat"

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    .line 68
    instance-of v0, p1, Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    if-eqz v0, :cond_0

    .line 69
    check-cast p1, Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->setNoNeedAutoJoin(Z)V

    :cond_0
    return-void
.end method
