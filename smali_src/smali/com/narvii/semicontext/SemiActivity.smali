.class public Lcom/narvii/semicontext/SemiActivity;
.super Lcom/narvii/app/FragmentWrapperActivity;
.source "SourceFile"


# static fields
.field private static final REQUEST_JOIN:I = 0x788


# instance fields
.field community:Lcom/narvii/model/Community;

.field headlineLoggingHelper:Lcom/narvii/headlines/HeadlineLoggingHelper;

.field private launchCommunityWhenJoined:Z

.field private obCall:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/FragmentWrapperActivity;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/semicontext/SemiActivity;->launchCommunityWhenJoined:Z

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
    .line 7
    .line 8
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    const-class v2, Lcom/narvii/semicontext/SemiActivity;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 19
    move-result-object v2

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 27
    .line 28
    const-string v1, "fragment"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    return-object v0
.end method

.method public static safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(Lcom/narvii/app/NVActivity;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/app/NVActivity;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static safedk_NVActivity_startActivityFromFragment_58c141dea7abf85bfc218080816ec363(Lcom/narvii/app/NVActivity;Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/app/NVActivity;
    .param p1, "p1"    # Landroidx/fragment/app/Fragment;
    .param p2, "p2"    # Landroid/content/Intent;
    .param p3, "p3"    # I
    .param p4, "p4"    # Landroid/os/Bundle;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVActivity;->startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/app/NVActivity;->startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public static safedk_SemiActivity_startActivityForResult_3b39bf423c50158dabf67d260eb078b0(Lcom/narvii/semicontext/SemiActivity;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/semicontext/SemiActivity;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/semicontext/SemiActivity;->startActivityForResult(Landroid/content/Intent;I)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/semicontext/SemiActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private tryJoinPrivateCommunity()V
    .locals 5

    .line 1
    .line 2
    const-class v0, Lcom/narvii/master/CommunityDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "id"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/semicontext/SemiActivity;->communityId()I

    .line 12
    move-result v2

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/semicontext/SemiActivity;->community()Lcom/narvii/model/Community;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    const-string v2, "prefetch"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    .line 30
    const-string v1, "joinOnly"

    .line 31
    const/4 v2, 0x1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 35
    .line 36
    const-string v1, "customFinishAnimIn"

    .line 37
    .line 38
    .line 39
    const v2, 0x7f010037

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 43
    .line 44
    const-string v1, "customFinishAnimOut"

    .line 45
    .line 46
    .line 47
    const v3, 0x7f010038

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 51
    .line 52
    const-string v1, "Source"

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    move-result-object v4

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    .line 61
    const-string v1, "fromHeadline"

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;)Z

    .line 65
    move-result v1

    .line 66
    .line 67
    if-eqz v1, :cond_0

    .line 68
    .line 69
    const-string v1, "loggingObjectId"

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    move-result-object v4

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    .line 78
    sget-object v1, Lcom/narvii/util/logging/LoggingOrigin;->Headlines:Lcom/narvii/util/logging/LoggingOrigin;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 82
    move-result-object v1

    .line 83
    .line 84
    const-string v4, "eventOrigin"

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    .line 89
    :cond_0
    const/16 v1, 0x788

    .line 90
    .line 91
    .line 92
    invoke-static {p0, v0, v1}, Lcom/narvii/semicontext/SemiActivity;->safedk_SemiActivity_startActivityForResult_3b39bf423c50158dabf67d260eb078b0(Lcom/narvii/semicontext/SemiActivity;Landroid/content/Intent;I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 96
    return-void
.end method

.method static bridge synthetic w(Lcom/narvii/semicontext/SemiActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/semicontext/SemiActivity;->tryJoinPrivateCommunity()V

    return-void
.end method

.method private wrapSemi(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3

    .line 1
    .line 2
    const-string v0, "__noSemi"

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    return-object p1

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    const-string v0, "navigator"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lcom/narvii/app/FragmentWrapperActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    check-cast v0, Lcom/narvii/navigator/Navigator;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, p1}, Lcom/narvii/navigator/Navigator;->intentMapping(Landroid/content/Intent;)Landroid/content/Intent;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    if-nez v0, :cond_2

    .line 37
    return-object p1

    .line 38
    .line 39
    .line 40
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 49
    move-result-object v2

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    move-result v1

    .line 54
    .line 55
    if-nez v1, :cond_3

    .line 56
    return-object p1

    .line 57
    .line 58
    :cond_3
    const-class v1, Lcom/narvii/app/FragmentWrapperActivity;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    move-result v0

    .line 71
    .line 72
    if-nez v0, :cond_4

    .line 73
    return-object p1

    .line 74
    .line 75
    :cond_4
    new-instance v0, Landroid/content/ComponentName;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 79
    move-result-object v1

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    move-result-object v2

    .line 84
    .line 85
    .line 86
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 90
    .line 91
    const-string v0, "__communityId"

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getIntParam(Ljava/lang/String;)I

    .line 95
    move-result v1

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 99
    .line 100
    const-string v0, "__community"

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getIntParam(Ljava/lang/String;)I

    .line 104
    move-result v1

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 108
    return-object p1
.end method


# virtual methods
.method public community()Lcom/narvii/model/Community;
    .locals 1

    iget-object v0, p0, Lcom/narvii/semicontext/SemiActivity;->community:Lcom/narvii/model/Community;

    return-object v0
.end method

.method public communityId()I
    .locals 1

    .line 1
    .line 2
    const-string v0, "__communityId"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getIntParam(Ljava/lang/String;)I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method protected hasCommunityId()Z
    .locals 1

    .line 1
    .line 2
    const-string v0, "config"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/FragmentWrapperActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

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

.method public hasDrawer()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasOnlineBar()Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/semicontext/SemiActivity;->obCall:Z

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    :try_start_0
    invoke-super {p0}, Lcom/narvii/app/FragmentWrapperActivity;->hasOnlineBar()Z

    .line 8
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/narvii/semicontext/SemiActivity;->obCall:Z

    .line 11
    return v1

    .line 12
    :catchall_0
    move-exception v1

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/narvii/semicontext/SemiActivity;->obCall:Z

    .line 15
    throw v1
.end method

.method public hasPostEntry()Z
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/semicontext/SemiActivity;->obCall:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-super {p0}, Lcom/narvii/app/FragmentWrapperActivity;->hasPostEntry()Z

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method protected initServiceManager(Lcom/narvii/services/ServiceManager;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVActivity;->initServiceManager(Lcom/narvii/services/ServiceManager;)V

    .line 4
    .line 5
    const-string v0, "config"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcom/narvii/services/ServiceManager;->removeService(Ljava/lang/String;)V

    .line 9
    .line 10
    new-instance v1, Lcom/narvii/semicontext/SemiConfigServiceProvider;

    .line 11
    .line 12
    .line 13
    invoke-direct {v1}, Lcom/narvii/semicontext/SemiConfigServiceProvider;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 17
    .line 18
    const-string v0, "navigator"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lcom/narvii/services/ServiceManager;->removeService(Ljava/lang/String;)V

    .line 22
    .line 23
    new-instance v1, Lcom/narvii/semicontext/SemiNavigatorProvider;

    .line 24
    .line 25
    .line 26
    invoke-direct {v1}, Lcom/narvii/semicontext/SemiNavigatorProvider;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 30
    .line 31
    const-string v0, "drawerHost"

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Lcom/narvii/services/ServiceManager;->removeService(Ljava/lang/String;)V

    .line 35
    .line 36
    const-string v0, "liveLayerHost"

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Lcom/narvii/services/ServiceManager;->removeService(Ljava/lang/String;)V

    .line 40
    .line 41
    new-instance v1, Lcom/narvii/semicontext/SemiLiveLayerHostProvider;

    .line 42
    .line 43
    .line 44
    invoke-direct {v1}, Lcom/narvii/semicontext/SemiLiveLayerHostProvider;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 48
    .line 49
    new-instance v0, Lcom/narvii/semicontext/SemiLiveLayerServiceProvider;

    .line 50
    .line 51
    .line 52
    invoke-direct {v0}, Lcom/narvii/semicontext/SemiLiveLayerServiceProvider;-><init>()V

    .line 53
    .line 54
    const-string v1, "liveLayer"

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 58
    .line 59
    new-instance v0, Lcom/narvii/services/incubator/IncubatorCommunityLoggingServiceProvider;

    .line 60
    .line 61
    .line 62
    invoke-direct {v0}, Lcom/narvii/services/incubator/IncubatorCommunityLoggingServiceProvider;-><init>()V

    .line 63
    .line 64
    const-string v1, "logging"

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 68
    return-void
.end method

.method public isGlobal()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public join()V
    .locals 11

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/semicontext/SemiActivity;->community()Lcom/narvii/model/Community;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget v1, v0, Lcom/narvii/model/Community;->joinType:I

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    new-instance v2, Lcom/narvii/semicontext/SemiActivity$1;

    .line 13
    .line 14
    const-string v1, "Source"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    invoke-direct {v2, p0, p0, v1, v0}, Lcom/narvii/semicontext/SemiActivity$1;-><init>(Lcom/narvii/semicontext/SemiActivity;Lcom/narvii/app/NVContext;Ljava/lang/String;Lcom/narvii/model/Community;)V

    .line 22
    const/4 v0, 0x1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v0}, Lcom/narvii/community/CommunityLaunchHelper;->setAllowJoinCommuntiy(Z)V

    .line 26
    .line 27
    const-string v0, "fromHeadline"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;)Z

    .line 31
    move-result v0

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    iget-object v0, p0, Lcom/narvii/semicontext/SemiActivity;->headlineLoggingHelper:Lcom/narvii/headlines/HeadlineLoggingHelper;

    .line 36
    .line 37
    const-string v1, "loggingObjectId"

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    const-string v3, "__communityId"

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVActivity;->getIntParam(Ljava/lang/String;)I

    .line 47
    move-result v3

    .line 48
    const/4 v4, 0x0

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1, v3, v4}, Lcom/narvii/headlines/HeadlineLoggingHelper;->logJoinAminoStarting(Ljava/lang/String;ILjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/semicontext/SemiActivity;->communityId()I

    .line 55
    move-result v3

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/narvii/semicontext/SemiActivity;->community()Lcom/narvii/model/Community;

    .line 59
    move-result-object v4

    .line 60
    const/4 v5, 0x0

    .line 61
    const/4 v6, 0x0

    .line 62
    const/4 v7, 0x0

    .line 63
    const/4 v8, 0x0

    .line 64
    const/4 v9, 0x0

    .line 65
    const/4 v10, 0x0

    .line 66
    .line 67
    .line 68
    invoke-virtual/range {v2 .. v10}, Lcom/narvii/community/CommunityLaunchHelper;->launch(ILcom/narvii/model/Community;Ljava/lang/String;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/community/ReminderCheck;Ljava/lang/String;Z)V

    .line 69
    goto :goto_0

    .line 70
    .line 71
    .line 72
    :cond_1
    invoke-direct {p0}, Lcom/narvii/semicontext/SemiActivity;->tryJoinPrivateCommunity()V

    .line 73
    :goto_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9

    .line 1
    .line 2
    const/16 v0, 0x788

    .line 3
    .line 4
    if-ne p1, v0, :cond_1

    .line 5
    const/4 v0, -0x1

    .line 6
    .line 7
    if-ne p2, v0, :cond_1

    .line 8
    .line 9
    iget-boolean p1, p0, Lcom/narvii/semicontext/SemiActivity;->launchCommunityWhenJoined:Z

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    new-instance v0, Lcom/narvii/community/CommunityLaunchHelper;

    .line 14
    .line 15
    const-string p1, "Source"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/narvii/community/CommunityLaunchHelper;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 23
    const/4 p1, 0x1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/narvii/community/CommunityLaunchHelper;->setAllowJoinCommuntiy(Z)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/narvii/semicontext/SemiActivity;->communityId()I

    .line 30
    move-result v1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/narvii/semicontext/SemiActivity;->community()Lcom/narvii/model/Community;

    .line 34
    move-result-object v2

    .line 35
    const/4 v3, 0x0

    .line 36
    const/4 v4, 0x0

    .line 37
    const/4 v5, 0x0

    .line 38
    const/4 v6, 0x0

    .line 39
    const/4 v7, 0x0

    .line 40
    const/4 v8, 0x0

    .line 41
    .line 42
    .line 43
    invoke-virtual/range {v0 .. v8}, Lcom/narvii/community/CommunityLaunchHelper;->launch(ILcom/narvii/model/Community;Ljava/lang/String;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/community/ReminderCheck;Ljava/lang/String;Z)V

    .line 44
    .line 45
    iget-object p1, p0, Lcom/narvii/semicontext/SemiActivity;->community:Lcom/narvii/model/Community;

    .line 46
    .line 47
    if-eqz p1, :cond_0

    .line 48
    .line 49
    const-string p1, "recentCommunities"

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p1}, Lcom/narvii/app/FragmentWrapperActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    check-cast p1, Lcom/narvii/community/RecentCommunityHelper;

    .line 56
    .line 57
    iget-object p2, p0, Lcom/narvii/semicontext/SemiActivity;->community:Lcom/narvii/model/Community;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, p2}, Lcom/narvii/community/RecentCommunityHelper;->addRecent(Lcom/narvii/model/Community;)V

    .line 61
    :cond_0
    return-void

    .line 62
    .line 63
    .line 64
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/FragmentWrapperActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 65
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/FragmentWrapperActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string p1, "__community"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    const-class v0, Lcom/narvii/model/Community;

    .line 12
    .line 13
    .line 14
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    check-cast p1, Lcom/narvii/model/Community;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/narvii/semicontext/SemiActivity;->community:Lcom/narvii/model/Community;

    .line 20
    .line 21
    new-instance p1, Lcom/narvii/headlines/HeadlineLoggingHelper;

    .line 22
    .line 23
    .line 24
    invoke-direct {p1, p0}, Lcom/narvii/headlines/HeadlineLoggingHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 25
    .line 26
    iput-object p1, p0, Lcom/narvii/semicontext/SemiActivity;->headlineLoggingHelper:Lcom/narvii/headlines/HeadlineLoggingHelper;

    .line 27
    return-void
.end method

.method public showCommunityDetailPage(Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/semicontext/SemiActivity;->launchCommunityWhenJoined:Z

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/semicontext/SemiActivity;->tryJoinPrivateCommunity()V

    .line 6
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/semicontext/SemiActivity;->wrapSemi(Landroid/content/Intent;)Landroid/content/Intent;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-static {p0, p1, p2}, Lcom/narvii/semicontext/SemiActivity;->safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(Lcom/narvii/app/NVActivity;Landroid/content/Intent;I)V

    .line 8
    return-void
.end method

.method public startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/narvii/semicontext/SemiActivity;->wrapSemi(Landroid/content/Intent;)Landroid/content/Intent;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    .line 7
    invoke-static {p0, p1, p2, p3, p4}, Lcom/narvii/semicontext/SemiActivity;->safedk_NVActivity_startActivityFromFragment_58c141dea7abf85bfc218080816ec363(Lcom/narvii/app/NVActivity;Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 8
    return-void
.end method
