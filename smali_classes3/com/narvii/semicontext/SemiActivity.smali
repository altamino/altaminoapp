.class public Lcom/narvii/semicontext/SemiActivity;
.super Lcom/narvii/app/FragmentWrapperActivity;
.source "SemiActivity.java"


# static fields
.field private static final REQUEST_JOIN:I = 0x60a


# instance fields
.field community:Lcom/narvii/model/Community;

.field headlineLoggingHelper:Lcom/narvii/headlines/HeadlineLoggingHelper;

.field private launchCommunityWhenJoined:Z

.field private obCall:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/narvii/app/FragmentWrapperActivity;-><init>()V

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lcom/narvii/semicontext/SemiActivity;->launchCommunityWhenJoined:Z

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/semicontext/SemiActivity;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/narvii/semicontext/SemiActivity;->tryJoinPrivateCommunity()V

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

    .line 43
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 44
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/narvii/semicontext/SemiActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "fragment"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private tryJoinPrivateCommunity()V
    .locals 5

    .line 159
    const-class v0, Lcom/narvii/master/CommunityDetailFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 160
    invoke-virtual {p0}, Lcom/narvii/semicontext/SemiActivity;->communityId()I

    move-result v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 161
    invoke-virtual {p0}, Lcom/narvii/semicontext/SemiActivity;->community()Lcom/narvii/model/Community;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "prefetch"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "joinOnly"

    const/4 v2, 0x1

    .line 162
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const v1, 0x7f010029

    const-string v2, "customFinishAnimIn"

    .line 163
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const v2, 0x7f01002a

    const-string v3, "customFinishAnimOut"

    .line 164
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "Source"

    .line 165
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "fromHeadline"

    .line 166
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "loggingObjectId"

    .line 167
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    sget-object v3, Lcom/narvii/util/logging/LoggingOrigin;->Headlines:Lcom/narvii/util/logging/LoggingOrigin;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "eventOrigin"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/16 v3, 0x60a

    .line 171
    invoke-virtual {p0, v0, v3}, Lcom/narvii/semicontext/SemiActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 172
    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method private wrapSemi(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3

    const-string v0, "__noSemi"

    const/4 v1, 0x0

    .line 186
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 189
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "navigator"

    .line 190
    invoke-virtual {p0, v0}, Lcom/narvii/app/FragmentWrapperActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/navigator/Navigator;

    if-eqz v0, :cond_1

    .line 192
    invoke-interface {v0, p1}, Lcom/narvii/navigator/Navigator;->intentMapping(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    .line 195
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_2

    return-object p1

    .line 198
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 199
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return-object p1

    .line 202
    :cond_3
    const-class v1, Lcom/narvii/app/FragmentWrapperActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return-object p1

    .line 205
    :cond_4
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/narvii/semicontext/SemiActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v0, "__communityId"

    .line 206
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getIntParam(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "__community"

    .line 207
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getIntParam(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p1
.end method


# virtual methods
.method public community()Lcom/narvii/model/Community;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/narvii/semicontext/SemiActivity;->community:Lcom/narvii/model/Community;

    return-object v0
.end method

.method public communityId()I
    .locals 1

    const-string v0, "__communityId"

    .line 90
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getIntParam(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected hasCommunityId()Z
    .locals 1

    const-string v0, "config"

    .line 84
    invoke-virtual {p0, v0}, Lcom/narvii/app/FragmentWrapperActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 85
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

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

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/narvii/semicontext/SemiActivity;->obCall:Z

    const/4 v0, 0x0

    .line 71
    :try_start_0
    invoke-super {p0}, Lcom/narvii/app/FragmentWrapperActivity;->hasOnlineBar()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    iput-boolean v0, p0, Lcom/narvii/semicontext/SemiActivity;->obCall:Z

    return v1

    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lcom/narvii/semicontext/SemiActivity;->obCall:Z

    .line 74
    throw v1
.end method

.method public hasPostEntry()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lcom/narvii/semicontext/SemiActivity;->obCall:Z

    if-eqz v0, :cond_0

    .line 61
    invoke-super {p0}, Lcom/narvii/app/FragmentWrapperActivity;->hasPostEntry()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected initServiceManager(Lcom/narvii/services/ServiceManager;)V
    .locals 2

    .line 99
    invoke-super {p0, p1}, Lcom/narvii/app/NVActivity;->initServiceManager(Lcom/narvii/services/ServiceManager;)V

    const-string v0, "config"

    .line 100
    invoke-virtual {p1, v0}, Lcom/narvii/services/ServiceManager;->removeService(Ljava/lang/String;)V

    .line 101
    new-instance v1, Lcom/narvii/semicontext/SemiConfigServiceProvider;

    invoke-direct {v1}, Lcom/narvii/semicontext/SemiConfigServiceProvider;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    const-string v0, "navigator"

    .line 102
    invoke-virtual {p1, v0}, Lcom/narvii/services/ServiceManager;->removeService(Ljava/lang/String;)V

    .line 103
    new-instance v1, Lcom/narvii/semicontext/SemiNavigatorProvider;

    invoke-direct {v1}, Lcom/narvii/semicontext/SemiNavigatorProvider;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    const-string v0, "drawerHost"

    .line 105
    invoke-virtual {p1, v0}, Lcom/narvii/services/ServiceManager;->removeService(Ljava/lang/String;)V

    const-string v0, "liveLayerHost"

    .line 106
    invoke-virtual {p1, v0}, Lcom/narvii/services/ServiceManager;->removeService(Ljava/lang/String;)V

    .line 107
    new-instance v1, Lcom/narvii/semicontext/SemiLiveLayerHostProvider;

    invoke-direct {v1}, Lcom/narvii/semicontext/SemiLiveLayerHostProvider;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 108
    new-instance v0, Lcom/narvii/semicontext/SemiLiveLayerServiceProvider;

    invoke-direct {v0}, Lcom/narvii/semicontext/SemiLiveLayerServiceProvider;-><init>()V

    const-string v1, "liveLayer"

    .line 109
    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    .line 110
    new-instance v0, Lcom/narvii/services/incubator/IncubatorCommunityLoggingServiceProvider;

    invoke-direct {v0}, Lcom/narvii/services/incubator/IncubatorCommunityLoggingServiceProvider;-><init>()V

    const-string v1, "logging"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/services/ServiceManager;->addServiceProvider(Ljava/lang/String;Lcom/narvii/services/ServiceProvider;)V

    return-void
.end method

.method public isGlobal()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public join()V
    .locals 11

    .line 115
    invoke-virtual {p0}, Lcom/narvii/semicontext/SemiActivity;->community()Lcom/narvii/model/Community;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 116
    iget v1, v0, Lcom/narvii/model/Community;->joinType:I

    if-nez v1, :cond_1

    .line 117
    new-instance v2, Lcom/narvii/semicontext/SemiActivity$1;

    const-string v1, "Source"

    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, p0, p0, v1, v0}, Lcom/narvii/semicontext/SemiActivity$1;-><init>(Lcom/narvii/semicontext/SemiActivity;Lcom/narvii/app/NVContext;Ljava/lang/String;Lcom/narvii/model/Community;)V

    const/4 v0, 0x1

    .line 143
    invoke-virtual {v2, v0}, Lcom/narvii/community/CommunityLaunchHelper;->setAllowJoinCommuntiy(Z)V

    const-string v0, "fromHeadline"

    .line 144
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/narvii/semicontext/SemiActivity;->headlineLoggingHelper:Lcom/narvii/headlines/HeadlineLoggingHelper;

    const-string v1, "loggingObjectId"

    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "__communityId"

    invoke-virtual {p0, v3}, Lcom/narvii/app/NVActivity;->getIntParam(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Lcom/narvii/headlines/HeadlineLoggingHelper;->logJoinAminoStarting(Ljava/lang/String;ILjava/lang/String;)V

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/semicontext/SemiActivity;->communityId()I

    move-result v3

    invoke-virtual {p0}, Lcom/narvii/semicontext/SemiActivity;->community()Lcom/narvii/model/Community;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Lcom/narvii/community/CommunityLaunchHelper;->launch(ILcom/narvii/model/Community;Ljava/lang/String;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/community/ReminderCheck;Ljava/lang/String;Z)V

    goto :goto_0

    .line 149
    :cond_1
    invoke-direct {p0}, Lcom/narvii/semicontext/SemiActivity;->tryJoinPrivateCommunity()V

    :goto_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9

    const/16 v0, 0x60a

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 214
    iget-boolean p1, p0, Lcom/narvii/semicontext/SemiActivity;->launchCommunityWhenJoined:Z

    if-eqz p1, :cond_0

    .line 215
    new-instance v0, Lcom/narvii/community/CommunityLaunchHelper;

    const-string p1, "Source"

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/narvii/community/CommunityLaunchHelper;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 216
    invoke-virtual {v0, p1}, Lcom/narvii/community/CommunityLaunchHelper;->setAllowJoinCommuntiy(Z)V

    .line 217
    invoke-virtual {p0}, Lcom/narvii/semicontext/SemiActivity;->communityId()I

    move-result v1

    invoke-virtual {p0}, Lcom/narvii/semicontext/SemiActivity;->community()Lcom/narvii/model/Community;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/narvii/community/CommunityLaunchHelper;->launch(ILcom/narvii/model/Community;Ljava/lang/String;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/community/ReminderCheck;Ljava/lang/String;Z)V

    .line 218
    iget-object p1, p0, Lcom/narvii/semicontext/SemiActivity;->community:Lcom/narvii/model/Community;

    if-eqz p1, :cond_0

    const-string p1, "recentCommunities"

    .line 219
    invoke-virtual {p0, p1}, Lcom/narvii/app/FragmentWrapperActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/RecentCommunityHelper;

    .line 220
    iget-object p2, p0, Lcom/narvii/semicontext/SemiActivity;->community:Lcom/narvii/model/Community;

    invoke-virtual {p1, p2}, Lcom/narvii/community/RecentCommunityHelper;->addRecent(Lcom/narvii/model/Community;)V

    :cond_0
    return-void

    .line 225
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/FragmentWrapperActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 37
    invoke-super {p0, p1}, Lcom/narvii/app/FragmentWrapperActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "__community"

    .line 38
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/model/Community;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Community;

    iput-object p1, p0, Lcom/narvii/semicontext/SemiActivity;->community:Lcom/narvii/model/Community;

    .line 39
    new-instance p1, Lcom/narvii/headlines/HeadlineLoggingHelper;

    invoke-direct {p1, p0}, Lcom/narvii/headlines/HeadlineLoggingHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/semicontext/SemiActivity;->headlineLoggingHelper:Lcom/narvii/headlines/HeadlineLoggingHelper;

    return-void
.end method

.method public showCommunityDetailPage(Z)V
    .locals 0

    .line 154
    iput-boolean p1, p0, Lcom/narvii/semicontext/SemiActivity;->launchCommunityWhenJoined:Z

    .line 155
    invoke-direct {p0}, Lcom/narvii/semicontext/SemiActivity;->tryJoinPrivateCommunity()V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .line 177
    invoke-direct {p0, p1}, Lcom/narvii/semicontext/SemiActivity;->wrapSemi(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0

    .line 182
    invoke-direct {p0, p2}, Lcom/narvii/semicontext/SemiActivity;->wrapSemi(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p2

    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/app/NVActivity;->startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method
