.class public Lcom/narvii/community/CBBHost;
.super Lcom/narvii/widget/ProxyViewHost;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/narvii/livelayer/LiveLayerOnlineBar$OnUpdateMemberCountListener;
.implements Lcom/narvii/livelayer/LiveLayerOnlineBar$OnAvatarShownChangeListener;


# instance fields
.field private accountService:Lcom/narvii/account/AccountService;

.field activity:Landroid/app/Activity;

.field avatarLayout:Lcom/narvii/widget/UserAvatarLayout;

.field private final badgeCountListener:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field chatBadge:Landroid/view/View;

.field private chatIcon:Landroid/widget/ImageView;

.field private chatService:Lcom/narvii/chat/core/ChatService;

.field private chatTab:Landroid/view/View;

.field private chatTabDivider:Landroid/view/View;

.field private chatText:Landroid/widget/TextView;

.field cid:I

.field communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

.field context:Lcom/narvii/app/NVContext;

.field dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

.field private drawerHost:Lcom/narvii/drawer/DrawerHost;

.field private indicatorX:I

.field lift:I

.field private mainLayout:Landroid/view/View;

.field meBadge:Landroid/view/View;

.field private meText:Landroid/widget/TextView;

.field private memberCount:Landroid/widget/TextView;

.field menuBadge:Landroid/view/View;

.field private ndcId:I

.field private onlineBar:Lcom/narvii/livelayer/CBBLiveLayerOnlineBar;

.field private onlineIcon:Landroid/view/View;

.field private postEntry:Landroid/view/View;

.field private final profileListener:Lcom/narvii/account/AccountService$ProfileListener;

.field private final receiver:Landroid/content/BroadcastReceiver;

.field private final themeDownLoadReceiver:Landroid/content/BroadcastReceiver;

.field threadCheckListener:Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;

.field private translateAnimation:Landroid/view/animation/TranslateAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/ProxyViewHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    new-instance p2, Lcom/narvii/community/CBBHost$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {p2, p0}, Lcom/narvii/community/CBBHost$1;-><init>(Lcom/narvii/community/CBBHost;)V

    .line 9
    .line 10
    iput-object p2, p0, Lcom/narvii/community/CBBHost;->threadCheckListener:Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;

    .line 11
    .line 12
    new-instance p2, Lcom/narvii/community/CBBHost$2;

    .line 13
    .line 14
    .line 15
    invoke-direct {p2, p0}, Lcom/narvii/community/CBBHost$2;-><init>(Lcom/narvii/community/CBBHost;)V

    .line 16
    .line 17
    iput-object p2, p0, Lcom/narvii/community/CBBHost;->badgeCountListener:Lcom/narvii/util/Callback;

    .line 18
    .line 19
    new-instance p2, Lcom/narvii/community/CBBHost$3;

    .line 20
    .line 21
    .line 22
    invoke-direct {p2, p0}, Lcom/narvii/community/CBBHost$3;-><init>(Lcom/narvii/community/CBBHost;)V

    .line 23
    .line 24
    iput-object p2, p0, Lcom/narvii/community/CBBHost;->receiver:Landroid/content/BroadcastReceiver;

    .line 25
    .line 26
    new-instance p2, Lcom/narvii/community/CBBHost$4;

    .line 27
    .line 28
    .line 29
    invoke-direct {p2, p0}, Lcom/narvii/community/CBBHost$4;-><init>(Lcom/narvii/community/CBBHost;)V

    .line 30
    .line 31
    iput-object p2, p0, Lcom/narvii/community/CBBHost;->profileListener:Lcom/narvii/account/AccountService$ProfileListener;

    .line 32
    .line 33
    new-instance p2, Lcom/narvii/community/CBBHost$5;

    .line 34
    .line 35
    .line 36
    invoke-direct {p2, p0}, Lcom/narvii/community/CBBHost$5;-><init>(Lcom/narvii/community/CBBHost;)V

    .line 37
    .line 38
    iput-object p2, p0, Lcom/narvii/community/CBBHost;->themeDownLoadReceiver:Landroid/content/BroadcastReceiver;

    .line 39
    .line 40
    check-cast p1, Lcom/narvii/app/NVContext;

    .line 41
    .line 42
    iput-object p1, p0, Lcom/narvii/community/CBBHost;->context:Lcom/narvii/app/NVContext;

    .line 43
    .line 44
    const-string p2, "config"

    .line 45
    .line 46
    .line 47
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 54
    move-result p1

    .line 55
    .line 56
    iput p1, p0, Lcom/narvii/community/CBBHost;->cid:I

    .line 57
    .line 58
    new-instance p1, Lcom/narvii/modulization/CommunityConfigHelper;

    .line 59
    .line 60
    iget-object p2, p0, Lcom/narvii/community/CBBHost;->context:Lcom/narvii/app/NVContext;

    .line 61
    .line 62
    .line 63
    invoke-direct {p1, p2}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 64
    .line 65
    iput-object p1, p0, Lcom/narvii/community/CBBHost;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 66
    .line 67
    .line 68
    invoke-direct {p0}, Lcom/narvii/community/CBBHost;->updateService()V

    .line 69
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/community/CBBHost;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/community/CBBHost;->updateAllViews()V

    return-void
.end method

.method static bridge synthetic b(Lcom/narvii/community/CBBHost;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/community/CBBHost;->updateAvatar()V

    return-void
.end method

.method static bridge synthetic c(Lcom/narvii/community/CBBHost;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/community/CBBHost;->updateChatBadge()V

    return-void
.end method

.method static bridge synthetic d(Lcom/narvii/community/CBBHost;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/community/CBBHost;->updateChatTab()V

    return-void
.end method

.method static bridge synthetic e(Lcom/narvii/community/CBBHost;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/community/CBBHost;->updateMenu()V

    return-void
.end method

.method static bridge synthetic f(Lcom/narvii/community/CBBHost;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/community/CBBHost;->updatePostEntryView()V

    return-void
.end method

.method static bridge synthetic g(Lcom/narvii/community/CBBHost;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/community/CBBHost;->updateThemeUI()V

    return-void
.end method

.method private getButtonPressedLocation()[I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->postEntry:Landroid/view/View;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/narvii/community/CBBHost;->getLocationInWindow(Landroid/view/View;)[I

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method private getHostViewLocation()[I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p0}, Lcom/narvii/community/CBBHost;->getLocationInWindow(Landroid/view/View;)[I

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private getLocationInWindow(Landroid/view/View;)[I
    .locals 1

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    const/4 v0, 0x2

    .line 6
    .line 7
    new-array v0, v0, [I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 11
    return-object v0
.end method

.method private openDrawer()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->activity:Landroid/app/Activity;

    .line 3
    .line 4
    instance-of v0, v0, Lcom/narvii/app/DrawerActivity;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget-object v0, Lcom/narvii/drawer/DrawerHost;->DRAWER_OPEN_SOURCE:Lcom/narvii/util/statistics/TmpValue;

    .line 9
    .line 10
    const-string v1, "HBB"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->activity:Landroid/app/Activity;

    .line 16
    .line 17
    check-cast v0, Lcom/narvii/app/DrawerActivity;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/narvii/app/DrawerActivity;->openDrawer()V

    .line 21
    :cond_0
    return-void
.end method

.method public static safedk_Activity_startActivity_9d898b58165fa4ba0e12c3900a2b8533(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroid/app/Activity;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static safedk_CBBHost_startActivity_c3d4e6aae429e21e7f98a5b76aba8962(Lcom/narvii/community/CBBHost;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/community/CBBHost;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/community/CBBHost;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/community/CBBHost;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private startActivity(Landroid/content/Intent;)V
    .locals 2

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->activity:Landroid/app/Activity;

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    const-string v0, "__communityId"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 13
    move-result v1

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    iget v1, p0, Lcom/narvii/community/CBBHost;->cid:I

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->activity:Landroid/app/Activity;

    .line 23
    .line 24
    .line 25
    invoke-static {v0, p1}, Lcom/narvii/community/CBBHost;->safedk_Activity_startActivity_9d898b58165fa4ba0e12c3900a2b8533(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 26
    :cond_2
    return-void
.end method

.method private updateAllViews()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/community/CBBHost;->updateAvatar()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/community/CBBHost;->updateChatBadge()V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/community/CBBHost;->updateMenu()V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/narvii/community/CBBHost;->updateChatTab()V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/narvii/community/CBBHost;->updatePostEntryView()V

    .line 16
    return-void
.end method

.method private updateAvatar()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->avatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/community/CBBHost;->accountService:Lcom/narvii/account/AccountService;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 12
    return-void
.end method

.method private updateChatBadge()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->chatBadge:Landroid/view/View;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/community/CBBHost;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 5
    .line 6
    iget v2, p0, Lcom/narvii/community/CBBHost;->ndcId:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1, v2}, Lcom/narvii/chat/core/ChatService;->getUnreadChatCountInCurCommunity(I)I

    .line 10
    move-result v1

    .line 11
    .line 12
    if-lez v1, :cond_0

    .line 13
    const/4 v1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-static {v0, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 19
    return-void
.end method

.method private updateChatTab()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isChatEnabled()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/community/CBBHost;->chatTab:Landroid/view/View;

    .line 9
    .line 10
    .line 11
    invoke-static {v1, v0}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 12
    .line 13
    iget-object v1, p0, Lcom/narvii/community/CBBHost;->chatTabDivider:Landroid/view/View;

    .line 14
    .line 15
    .line 16
    invoke-static {v1, v0}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 17
    return-void
.end method

.method private updateDataSource()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v1, "liveLayer"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/livelayer/LiveLayerService;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/livelayer/LiveLayerService;->getDataSource()Lcom/narvii/livelayer/LiveLayerDataSource;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iput-object v0, p0, Lcom/narvii/community/CBBHost;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/community/CBBHost;->onlineBar:Lcom/narvii/livelayer/CBBLiveLayerOnlineBar;

    .line 19
    .line 20
    iput-object v0, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    .line 21
    return-void
.end method

.method private updateMenu()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->menuBadge:Landroid/view/View;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/community/CBBHost;->drawerHost:Lcom/narvii/drawer/DrawerHost;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/narvii/drawer/DrawerHost;->getTotalBadgeCount()I

    .line 10
    move-result v1

    .line 11
    .line 12
    if-lez v1, :cond_0

    .line 13
    const/4 v1, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x4

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    return-void
.end method

.method private updatePostEntryView()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string v1, "config"

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    .line 26
    move-result v0

    .line 27
    goto :goto_0

    .line 28
    .line 29
    .line 30
    :cond_0
    const v0, -0x777778

    .line 31
    .line 32
    .line 33
    :goto_0
    const v1, 0x7f0a0b3f

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    check-cast v1, Lcom/narvii/widget/ThumbImageView;

    .line 40
    .line 41
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 42
    .line 43
    .line 44
    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 48
    .line 49
    .line 50
    const v1, 0x7f0a0e6e

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    move-result-object v1

    .line 55
    .line 56
    if-eqz v1, :cond_1

    .line 57
    .line 58
    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    .line 59
    .line 60
    new-instance v3, Landroid/graphics/drawable/shapes/OvalShape;

    .line 61
    .line 62
    .line 63
    invoke-direct {v3}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-direct {v2, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    .line 70
    move-result-object v3

    .line 71
    .line 72
    .line 73
    const v4, 0x3e99999a    # 0.3f

    .line 74
    .line 75
    .line 76
    invoke-static {v0, v4}, Lcom/narvii/util/Utils;->getColor(IF)I

    .line 77
    move-result v0

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    :cond_1
    return-void
.end method

.method private updateService()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v1, "account"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/community/CBBHost;->accountService:Lcom/narvii/account/AccountService;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->context:Lcom/narvii/app/NVContext;

    .line 15
    .line 16
    const-string v1, "chat"

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    check-cast v0, Lcom/narvii/chat/core/ChatService;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/narvii/community/CBBHost;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->context:Lcom/narvii/app/NVContext;

    .line 27
    .line 28
    const-string v1, "drawerHost"

    .line 29
    .line 30
    .line 31
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    check-cast v0, Lcom/narvii/drawer/DrawerHost;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/narvii/community/CBBHost;->drawerHost:Lcom/narvii/drawer/DrawerHost;

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->context:Lcom/narvii/app/NVContext;

    .line 39
    .line 40
    const-string v1, "config"

    .line 41
    .line 42
    .line 43
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 50
    move-result v0

    .line 51
    .line 52
    iput v0, p0, Lcom/narvii/community/CBBHost;->ndcId:I

    .line 53
    return-void
.end method

.method private updateTabViews()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->activity:Landroid/app/Activity;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/app/NVActivity;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->getRootFragment()Landroidx/fragment/app/Fragment;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    instance-of v0, v0, Lcom/narvii/chat/thread/MyChatsListFragment;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    .line 21
    :goto_0
    iget-object v1, p0, Lcom/narvii/community/CBBHost;->chatIcon:Landroid/widget/ImageView;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    .line 26
    const v2, 0x7f0803de

    .line 27
    goto :goto_1

    .line 28
    .line 29
    .line 30
    :cond_1
    const v2, 0x7f0803dd

    .line 31
    .line 32
    .line 33
    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 34
    .line 35
    .line 36
    const v1, 0x7f060083

    .line 37
    const/4 v2, -0x1

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->chatText:Landroid/widget/TextView;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45
    goto :goto_2

    .line 46
    .line 47
    :cond_2
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->chatText:Landroid/widget/TextView;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 51
    move-result-object v3

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 55
    move-result-object v3

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 59
    move-result-object v3

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 63
    .line 64
    :goto_2
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->activity:Landroid/app/Activity;

    .line 65
    .line 66
    instance-of v3, v0, Lcom/narvii/app/NVActivity;

    .line 67
    .line 68
    if-eqz v3, :cond_3

    .line 69
    .line 70
    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->getRootFragment()Landroidx/fragment/app/Fragment;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    instance-of v0, v0, Lcom/narvii/user/profile/UserProfileFragment;

    .line 77
    .line 78
    if-eqz v0, :cond_3

    .line 79
    .line 80
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->meText:Landroid/widget/TextView;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    goto :goto_3

    .line 85
    .line 86
    :cond_3
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->meText:Landroid/widget/TextView;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 90
    move-result-object v2

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 94
    move-result-object v2

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 98
    move-result-object v1

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 102
    :goto_3
    return-void
.end method

.method private updateThemeUI()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const-string v1, "config"

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    .line 26
    move-result v0

    .line 27
    .line 28
    .line 29
    const v1, 0x7f0a0b3f

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    check-cast v1, Lcom/narvii/widget/ThumbImageView;

    .line 36
    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 40
    .line 41
    .line 42
    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    const v1, 0x7f0a0e6e

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    if-eqz v1, :cond_1

    .line 55
    .line 56
    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    .line 57
    .line 58
    new-instance v3, Landroid/graphics/drawable/shapes/OvalShape;

    .line 59
    .line 60
    .line 61
    invoke-direct {v3}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-direct {v2, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    .line 68
    move-result-object v3

    .line 69
    .line 70
    .line 71
    const v4, 0x3e99999a    # 0.3f

    .line 72
    .line 73
    .line 74
    invoke-static {v0, v4}, Lcom/narvii/util/Utils;->getColor(IF)I

    .line 75
    move-result v0

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    :cond_1
    return-void
.end method


# virtual methods
.method public attachTo(Lcom/narvii/widget/ProxyView;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/widget/ProxyViewHost;->attachTo(Lcom/narvii/widget/ProxyView;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/community/CBBHost;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->onlineBar:Lcom/narvii/livelayer/CBBLiveLayerOnlineBar;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lcom/narvii/livelayer/LiveLayerDataSource;->setLiveLayerView(Lcom/narvii/livelayer/ILiveLayerView;)V

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/community/CBBHost;->onlineBar:Lcom/narvii/livelayer/CBBLiveLayerOnlineBar;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/livelayer/LiveLayerDataSource;->getUserList()Ljava/util/LinkedList;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    iget-object v1, p0, Lcom/narvii/community/CBBHost;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/narvii/livelayer/LiveLayerDataSource;->getCurrentMembersCount()I

    .line 24
    move-result v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0, v1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setUserList(Ljava/util/List;I)V

    .line 28
    return-void
.end method

.method public bind(Landroid/app/Activity;)V
    .locals 3

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/community/CBBHost;->activity:Landroid/app/Activity;

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/community/CBBHost;->drawerHost:Lcom/narvii/drawer/DrawerHost;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/narvii/drawer/DrawerHost;->badgeCountListener:Lcom/narvii/util/EventDispatcher;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->badgeCountListener:Lcom/narvii/util/Callback;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/community/CBBHost;->accountService:Lcom/narvii/account/AccountService;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->profileListener:Lcom/narvii/account/AccountService$ProfileListener;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lcom/narvii/account/AccountService;->addProfileListener(Lcom/narvii/account/AccountService$ProfileListener;)V

    .line 19
    .line 20
    iget-object p1, p0, Lcom/narvii/community/CBBHost;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 21
    .line 22
    iget v0, p0, Lcom/narvii/community/CBBHost;->ndcId:I

    .line 23
    .line 24
    iget-object v1, p0, Lcom/narvii/community/CBBHost;->threadCheckListener:Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0, v1}, Lcom/narvii/chat/core/ChatService;->addCommunityLevelReceptor(ILcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->receiver:Landroid/content/BroadcastReceiver;

    .line 38
    .line 39
    new-instance v1, Landroid/content/IntentFilter;

    .line 40
    .line 41
    const-string v2, "com.narvii.action.ACCOUNT_CHANGED"

    .line 42
    .line 43
    .line 44
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    .line 54
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->receiver:Landroid/content/BroadcastReceiver;

    .line 58
    .line 59
    new-instance v1, Landroid/content/IntentFilter;

    .line 60
    .line 61
    const-string v2, "com.narvii.action.COMMUNITY_CHANGED"

    .line 62
    .line 63
    .line 64
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    .line 74
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->themeDownLoadReceiver:Landroid/content/BroadcastReceiver;

    .line 78
    .line 79
    new-instance v1, Landroid/content/IntentFilter;

    .line 80
    .line 81
    const-string v2, "com.narvii.action.THEME_DOWNLOAD_SUCCESS"

    .line 82
    .line 83
    .line 84
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 88
    .line 89
    .line 90
    invoke-direct {p0}, Lcom/narvii/community/CBBHost;->updateTabViews()V

    .line 91
    return-void
.end method

.method public detachFrom(Lcom/narvii/widget/ProxyView;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/widget/ProxyViewHost;->detachFrom(Lcom/narvii/widget/ProxyView;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/community/CBBHost;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/narvii/livelayer/LiveLayerDataSource;->getLiveLayerView()Lcom/narvii/livelayer/ILiveLayerView;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    if-ne p1, p0, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/community/CBBHost;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    .line 14
    const/4 v0, 0x0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lcom/narvii/livelayer/LiveLayerDataSource;->setLiveLayerView(Lcom/narvii/livelayer/ILiveLayerView;)V

    .line 18
    :cond_0
    return-void
.end method

.method protected onAttach(Lcom/narvii/widget/ProxyView;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/widget/ProxyViewHost;->onAttach(Lcom/narvii/widget/ProxyView;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/community/CBBHost;->updateAllViews()V

    .line 7
    return-void
.end method

.method public onAvatarShownChanged(Z)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->onlineIcon:Landroid/view/View;

    .line 3
    .line 4
    xor-int/lit8 v1, p1, 0x1

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->onlineIcon:Landroid/view/View;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    const v2, 0x7f010037

    .line 17
    .line 18
    .line 19
    const v3, 0x7f010038

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    move v4, v3

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v4, v2

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 32
    .line 33
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->onlineBar:Lcom/narvii/livelayer/CBBLiveLayerOnlineBar;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    if-eqz p1, :cond_1

    .line 40
    move v4, v2

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    move v4, v3

    .line 43
    .line 44
    .line 45
    :goto_1
    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 50
    .line 51
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->memberCount:Landroid/widget/TextView;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 55
    move-result-object v1

    .line 56
    .line 57
    if-eqz p1, :cond_2

    .line 58
    goto :goto_2

    .line 59
    :cond_2
    move v2, v3

    .line 60
    .line 61
    .line 62
    :goto_2
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 63
    move-result-object v1

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 67
    .line 68
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->memberCount:Landroid/widget/TextView;

    .line 69
    .line 70
    .line 71
    invoke-static {v0, p1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 72
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result p1

    .line 5
    .line 6
    const-string v0, "Source"

    .line 7
    .line 8
    const-string v1, "HBB"

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    .line 12
    sparse-switch p1, :sswitch_data_0

    .line 13
    .line 14
    goto/16 :goto_4

    .line 15
    .line 16
    :sswitch_0
    iget-object p1, p0, Lcom/narvii/community/CBBHost;->activity:Landroid/app/Activity;

    .line 17
    .line 18
    instance-of p1, p1, Lcom/narvii/app/NVContext;

    .line 19
    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    iget-object p1, p0, Lcom/narvii/community/CBBHost;->context:Lcom/narvii/app/NVContext;

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lcom/narvii/util/Utils;->shouldShowLoginPage(Lcom/narvii/app/NVContext;)Z

    .line 26
    move-result p1

    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    goto :goto_1

    .line 30
    .line 31
    :cond_0
    iget-object p1, p0, Lcom/narvii/community/CBBHost;->activity:Landroid/app/Activity;

    .line 32
    .line 33
    check-cast p1, Lcom/narvii/app/NVContext;

    .line 34
    .line 35
    const-string v0, "postEntry"

    .line 36
    .line 37
    .line 38
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    check-cast p1, Lcom/narvii/post/entry/PostEntryDialog;

    .line 42
    .line 43
    if-eqz p1, :cond_9

    .line 44
    .line 45
    new-instance v0, Lcom/narvii/post/entry/PostEntryDialog$MarginSpec;

    .line 46
    .line 47
    .line 48
    invoke-direct {v0}, Lcom/narvii/post/entry/PostEntryDialog$MarginSpec;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-direct {p0}, Lcom/narvii/community/CBBHost;->getHostViewLocation()[I

    .line 52
    move-result-object v3

    .line 53
    .line 54
    .line 55
    invoke-direct {p0}, Lcom/narvii/community/CBBHost;->getButtonPressedLocation()[I

    .line 56
    move-result-object v4

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 60
    move-result-object v5

    .line 61
    .line 62
    .line 63
    const v6, 0x7f07043b

    .line 64
    .line 65
    .line 66
    invoke-static {v5, v6}, Lcom/narvii/util/Utils;->getDimenPixelSize(Landroid/content/Context;I)I

    .line 67
    move-result v5

    .line 68
    const/4 v6, 0x1

    .line 69
    .line 70
    aget v7, v3, v6

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 74
    move-result v8

    .line 75
    add-int/2addr v7, v8

    .line 76
    .line 77
    aget v6, v4, v6

    .line 78
    .line 79
    iget-object v8, p0, Lcom/narvii/community/CBBHost;->postEntry:Landroid/view/View;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    .line 83
    move-result v8

    .line 84
    add-int/2addr v6, v8

    .line 85
    sub-int/2addr v7, v6

    .line 86
    sub-int/2addr v7, v5

    .line 87
    .line 88
    iput v7, v0, Lcom/narvii/post/entry/PostEntryDialog$MarginSpec;->marginBottom:I

    .line 89
    .line 90
    .line 91
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 92
    move-result v6

    .line 93
    .line 94
    if-eqz v6, :cond_1

    .line 95
    .line 96
    aget v4, v4, v2

    .line 97
    .line 98
    aget v3, v3, v2

    .line 99
    sub-int/2addr v4, v3

    .line 100
    sub-int/2addr v4, v5

    .line 101
    .line 102
    iput v4, v0, Lcom/narvii/post/entry/PostEntryDialog$MarginSpec;->marginRight:I

    .line 103
    goto :goto_0

    .line 104
    .line 105
    :cond_1
    aget v3, v3, v2

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 109
    move-result v6

    .line 110
    add-int/2addr v3, v6

    .line 111
    .line 112
    aget v4, v4, v2

    .line 113
    .line 114
    iget-object v6, p0, Lcom/narvii/community/CBBHost;->postEntry:Landroid/view/View;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 118
    move-result v6

    .line 119
    add-int/2addr v4, v6

    .line 120
    sub-int/2addr v3, v4

    .line 121
    sub-int/2addr v3, v5

    .line 122
    .line 123
    iput v3, v0, Lcom/narvii/post/entry/PostEntryDialog$MarginSpec;->marginRight:I

    .line 124
    .line 125
    :goto_0
    sget-object v3, Lcom/narvii/util/logging/LoggingSource;->GlobalComposeMenu:Lcom/narvii/util/logging/LoggingSource;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, v2, v1, v3, v0}, Lcom/narvii/post/entry/PostEntryDialog;->show(ILjava/lang/String;Lcom/narvii/util/logging/LoggingSource;Lcom/narvii/post/entry/PostEntryDialog$MarginSpec;)V

    .line 129
    .line 130
    goto/16 :goto_4

    .line 131
    :cond_2
    :goto_1
    return-void

    .line 132
    .line 133
    :sswitch_1
    iget-object p1, p0, Lcom/narvii/community/CBBHost;->activity:Landroid/app/Activity;

    .line 134
    .line 135
    if-eqz p1, :cond_9

    .line 136
    .line 137
    const-class p1, Lcom/narvii/livelayer/LiveLayerFragment;

    .line 138
    .line 139
    .line 140
    invoke-static {p1}, Lcom/narvii/livelayer/LiveLayerActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 141
    move-result-object p1

    .line 142
    .line 143
    const-string v3, "customFinishAnimOut"

    .line 144
    .line 145
    .line 146
    const v4, 0x7f01000d

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 150
    .line 151
    const-string v3, "customFinishAnimIn"

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    .line 159
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->activity:Landroid/app/Activity;

    .line 160
    .line 161
    .line 162
    invoke-static {v0}, Lcom/narvii/livelayer/LiveLayerActivity;->prepare(Landroid/app/Activity;)V

    .line 163
    .line 164
    .line 165
    invoke-static {p0, p1}, Lcom/narvii/community/CBBHost;->safedk_CBBHost_startActivity_c3d4e6aae429e21e7f98a5b76aba8962(Lcom/narvii/community/CBBHost;Landroid/content/Intent;)V

    .line 166
    .line 167
    iget-object p1, p0, Lcom/narvii/community/CBBHost;->activity:Landroid/app/Activity;

    .line 168
    .line 169
    .line 170
    const v0, 0x7f01000c

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1, v0, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 174
    .line 175
    goto/16 :goto_4

    .line 176
    .line 177
    .line 178
    :sswitch_2
    invoke-direct {p0}, Lcom/narvii/community/CBBHost;->openDrawer()V

    .line 179
    .line 180
    goto/16 :goto_4

    .line 181
    .line 182
    :sswitch_3
    iget-object p1, p0, Lcom/narvii/community/CBBHost;->activity:Landroid/app/Activity;

    .line 183
    .line 184
    if-eqz p1, :cond_6

    .line 185
    .line 186
    iget-object p1, p0, Lcom/narvii/community/CBBHost;->context:Lcom/narvii/app/NVContext;

    .line 187
    .line 188
    .line 189
    invoke-static {p1}, Lcom/narvii/util/Utils;->shouldShowLoginPage(Lcom/narvii/app/NVContext;)Z

    .line 190
    move-result p1

    .line 191
    .line 192
    if-eqz p1, :cond_3

    .line 193
    goto :goto_3

    .line 194
    .line 195
    :cond_3
    iget-object p1, p0, Lcom/narvii/community/CBBHost;->activity:Landroid/app/Activity;

    .line 196
    .line 197
    instance-of v3, p1, Lcom/narvii/app/NVActivity;

    .line 198
    .line 199
    if-eqz v3, :cond_4

    .line 200
    .line 201
    check-cast p1, Lcom/narvii/app/NVActivity;

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->getRootFragment()Landroidx/fragment/app/Fragment;

    .line 205
    move-result-object p1

    .line 206
    .line 207
    instance-of p1, p1, Lcom/narvii/user/profile/UserProfileFragment;

    .line 208
    .line 209
    if-eqz p1, :cond_4

    .line 210
    return-void

    .line 211
    .line 212
    :cond_4
    iget-object p1, p0, Lcom/narvii/community/CBBHost;->context:Lcom/narvii/app/NVContext;

    .line 213
    .line 214
    const-string v3, "account"

    .line 215
    .line 216
    .line 217
    invoke-interface {p1, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 218
    move-result-object p1

    .line 219
    .line 220
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 221
    .line 222
    .line 223
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getCommunityUserProfile()Lcom/narvii/model/User;

    .line 224
    move-result-object v3

    .line 225
    .line 226
    if-nez v3, :cond_5

    .line 227
    .line 228
    const-class v3, Lcom/narvii/user/profile/UserProfileFragment;

    .line 229
    .line 230
    .line 231
    invoke-static {v3}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 232
    move-result-object v3

    .line 233
    .line 234
    const-string v4, "id"

    .line 235
    .line 236
    .line 237
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 238
    move-result-object p1

    .line 239
    .line 240
    .line 241
    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    .line 243
    const-string p1, "__interactionScope"

    .line 244
    .line 245
    .line 246
    invoke-virtual {v3, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 247
    goto :goto_2

    .line 248
    .line 249
    :cond_5
    iget-object p1, p0, Lcom/narvii/community/CBBHost;->context:Lcom/narvii/app/NVContext;

    .line 250
    .line 251
    .line 252
    invoke-static {p1, v3}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    .line 253
    move-result-object v3

    .line 254
    .line 255
    .line 256
    :goto_2
    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    .line 258
    .line 259
    invoke-static {p0, v3}, Lcom/narvii/community/CBBHost;->safedk_CBBHost_startActivity_c3d4e6aae429e21e7f98a5b76aba8962(Lcom/narvii/community/CBBHost;Landroid/content/Intent;)V

    .line 260
    goto :goto_4

    .line 261
    :cond_6
    :goto_3
    return-void

    .line 262
    .line 263
    :sswitch_4
    iget-object p1, p0, Lcom/narvii/community/CBBHost;->activity:Landroid/app/Activity;

    .line 264
    .line 265
    if-eqz p1, :cond_9

    .line 266
    .line 267
    iget-object p1, p0, Lcom/narvii/community/CBBHost;->context:Lcom/narvii/app/NVContext;

    .line 268
    .line 269
    .line 270
    invoke-static {p1}, Lcom/narvii/util/Utils;->shouldShowLoginPage(Lcom/narvii/app/NVContext;)Z

    .line 271
    move-result p1

    .line 272
    .line 273
    if-eqz p1, :cond_7

    .line 274
    goto :goto_4

    .line 275
    .line 276
    :cond_7
    iget-object p1, p0, Lcom/narvii/community/CBBHost;->activity:Landroid/app/Activity;

    .line 277
    .line 278
    instance-of v2, p1, Lcom/narvii/app/NVActivity;

    .line 279
    .line 280
    if-eqz v2, :cond_8

    .line 281
    .line 282
    check-cast p1, Lcom/narvii/app/NVActivity;

    .line 283
    .line 284
    .line 285
    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->getRootFragment()Landroidx/fragment/app/Fragment;

    .line 286
    move-result-object p1

    .line 287
    .line 288
    instance-of p1, p1, Lcom/narvii/chat/thread/MyChatsListFragment;

    .line 289
    .line 290
    if-eqz p1, :cond_8

    .line 291
    return-void

    .line 292
    .line 293
    :cond_8
    const-class p1, Lcom/narvii/chat/thread/MyChatsListFragment;

    .line 294
    .line 295
    .line 296
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 297
    move-result-object p1

    .line 298
    .line 299
    .line 300
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    .line 302
    .line 303
    invoke-static {p0, p1}, Lcom/narvii/community/CBBHost;->safedk_CBBHost_startActivity_c3d4e6aae429e21e7f98a5b76aba8962(Lcom/narvii/community/CBBHost;Landroid/content/Intent;)V

    .line 304
    :cond_9
    :goto_4
    return-void

    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    :sswitch_data_0
    .sparse-switch
        0x7f0a025b -> :sswitch_4
        0x7f0a025f -> :sswitch_3
        0x7f0a0261 -> :sswitch_2
        0x7f0a0262 -> :sswitch_1
        0x7f0a0264 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onDetach(Lcom/narvii/widget/ProxyView;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/widget/ProxyViewHost;->onDetach(Lcom/narvii/widget/ProxyView;)V

    .line 4
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a0261

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    .line 15
    .line 16
    const v1, 0x7f0a0262

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    .line 25
    .line 26
    const v1, 0x7f0a025b

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    .line 35
    .line 36
    const v2, 0x7f0a025f

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    move-result-object v3

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    .line 45
    .line 46
    const v3, 0x7f0a0264

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    move-result-object v3

    .line 51
    .line 52
    iput-object v3, p0, Lcom/narvii/community/CBBHost;->postEntry:Landroid/view/View;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    move-result-object v3

    .line 60
    .line 61
    .line 62
    const v4, 0x7f0a0f36

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    move-result-object v3

    .line 67
    .line 68
    check-cast v3, Lcom/narvii/widget/UserAvatarLayout;

    .line 69
    .line 70
    iput-object v3, p0, Lcom/narvii/community/CBBHost;->avatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    .line 71
    const/4 v4, 0x1

    .line 72
    .line 73
    iput-boolean v4, v3, Lcom/narvii/widget/UserAvatarLayout;->disableFullAvatarFrame:Z

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    move-result-object v3

    .line 78
    .line 79
    .line 80
    const v4, 0x7f0a01a9

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 84
    move-result-object v3

    .line 85
    .line 86
    iput-object v3, p0, Lcom/narvii/community/CBBHost;->chatBadge:Landroid/view/View;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 90
    move-result-object v0

    .line 91
    .line 92
    .line 93
    const v3, 0x7f0a01ab

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 97
    move-result-object v0

    .line 98
    .line 99
    iput-object v0, p0, Lcom/narvii/community/CBBHost;->menuBadge:Landroid/view/View;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 103
    move-result-object v0

    .line 104
    .line 105
    .line 106
    const v2, 0x7f0a01aa

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 110
    move-result-object v0

    .line 111
    .line 112
    iput-object v0, p0, Lcom/narvii/community/CBBHost;->meBadge:Landroid/view/View;

    .line 113
    .line 114
    .line 115
    const v0, 0x7f0a083f

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 119
    move-result-object v0

    .line 120
    .line 121
    iput-object v0, p0, Lcom/narvii/community/CBBHost;->mainLayout:Landroid/view/View;

    .line 122
    .line 123
    .line 124
    const v0, 0x7f0a0263

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 128
    move-result-object v0

    .line 129
    .line 130
    iput-object v0, p0, Lcom/narvii/community/CBBHost;->onlineIcon:Landroid/view/View;

    .line 131
    .line 132
    .line 133
    const v0, 0x7f0a025d

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 137
    move-result-object v0

    .line 138
    .line 139
    check-cast v0, Landroid/widget/ImageView;

    .line 140
    .line 141
    iput-object v0, p0, Lcom/narvii/community/CBBHost;->chatIcon:Landroid/widget/ImageView;

    .line 142
    .line 143
    .line 144
    const v0, 0x7f0a025e

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 148
    move-result-object v0

    .line 149
    .line 150
    check-cast v0, Landroid/widget/TextView;

    .line 151
    .line 152
    iput-object v0, p0, Lcom/narvii/community/CBBHost;->chatText:Landroid/widget/TextView;

    .line 153
    .line 154
    .line 155
    const v0, 0x7f0a0260

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 159
    move-result-object v0

    .line 160
    .line 161
    check-cast v0, Landroid/widget/TextView;

    .line 162
    .line 163
    iput-object v0, p0, Lcom/narvii/community/CBBHost;->meText:Landroid/widget/TextView;

    .line 164
    .line 165
    .line 166
    const v0, 0x7f0a093e

    .line 167
    .line 168
    .line 169
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 170
    move-result-object v0

    .line 171
    .line 172
    check-cast v0, Landroid/widget/TextView;

    .line 173
    .line 174
    iput-object v0, p0, Lcom/narvii/community/CBBHost;->memberCount:Landroid/widget/TextView;

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 178
    move-result-object v0

    .line 179
    .line 180
    iput-object v0, p0, Lcom/narvii/community/CBBHost;->chatTab:Landroid/view/View;

    .line 181
    .line 182
    .line 183
    const v0, 0x7f0a025c

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 187
    move-result-object v0

    .line 188
    .line 189
    iput-object v0, p0, Lcom/narvii/community/CBBHost;->chatTabDivider:Landroid/view/View;

    .line 190
    .line 191
    .line 192
    const v0, 0x7f0a0a53

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 196
    move-result-object v0

    .line 197
    .line 198
    check-cast v0, Lcom/narvii/livelayer/CBBLiveLayerOnlineBar;

    .line 199
    .line 200
    iput-object v0, p0, Lcom/narvii/community/CBBHost;->onlineBar:Lcom/narvii/livelayer/CBBLiveLayerOnlineBar;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0, p0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setOnUpdateMemberCountListener(Lcom/narvii/livelayer/LiveLayerOnlineBar$OnUpdateMemberCountListener;)V

    .line 204
    .line 205
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->onlineBar:Lcom/narvii/livelayer/CBBLiveLayerOnlineBar;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0, p0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setOnAvatarShownChangeListener(Lcom/narvii/livelayer/LiveLayerOnlineBar$OnAvatarShownChangeListener;)V

    .line 209
    .line 210
    .line 211
    invoke-direct {p0}, Lcom/narvii/community/CBBHost;->updatePostEntryView()V

    .line 212
    .line 213
    .line 214
    invoke-direct {p0}, Lcom/narvii/community/CBBHost;->updateDataSource()V

    .line 215
    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/community/CBBHost;->updateService()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/community/CBBHost;->updateDataSource()V

    .line 7
    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public onUpdateMemberCount(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->memberCount:Landroid/widget/TextView;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    return-void
.end method

.method public openPostEntry()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->postEntry:Landroid/view/View;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 6
    return-void
.end method

.method public setLift(I)V
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/community/CBBHost;->lift:I

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iput p1, p0, Lcom/narvii/community/CBBHost;->lift:I

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->mainLayout:Landroid/view/View;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->mainLayout:Landroid/view/View;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    const v2, 0x7f0700c6

    .line 35
    .line 36
    .line 37
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->getDimenPixelSize(Landroid/content/Context;I)I

    .line 38
    move-result v1

    .line 39
    add-int/2addr p1, v1

    .line 40
    .line 41
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 42
    .line 43
    iget-object p1, p0, Lcom/narvii/community/CBBHost;->mainLayout:Landroid/view/View;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    :cond_1
    return-void
.end method

.method public unbind()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-object v0, p0, Lcom/narvii/community/CBBHost;->activity:Landroid/app/Activity;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/narvii/community/CBBHost;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/narvii/livelayer/LiveLayerDataSource;->getLiveLayerView()Lcom/narvii/livelayer/ILiveLayerView;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    if-ne v1, p0, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/narvii/community/CBBHost;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v0}, Lcom/narvii/livelayer/LiveLayerDataSource;->setLiveLayerView(Lcom/narvii/livelayer/ILiveLayerView;)V

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/narvii/community/CBBHost;->onlineBar:Lcom/narvii/livelayer/CBBLiveLayerOnlineBar;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/narvii/livelayer/LiveLayerDataSource;->setLiveLayerView(Lcom/narvii/livelayer/ILiveLayerView;)V

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->drawerHost:Lcom/narvii/drawer/DrawerHost;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost;->badgeCountListener:Lcom/narvii/util/EventDispatcher;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/narvii/community/CBBHost;->badgeCountListener:Lcom/narvii/util/Callback;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->accountService:Lcom/narvii/account/AccountService;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/narvii/community/CBBHost;->profileListener:Lcom/narvii/account/AccountService$ProfileListener;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/narvii/account/AccountService;->removeProfileListener(Lcom/narvii/account/AccountService$ProfileListener;)V

    .line 40
    .line 41
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 42
    .line 43
    iget v1, p0, Lcom/narvii/community/CBBHost;->ndcId:I

    .line 44
    .line 45
    iget-object v2, p0, Lcom/narvii/community/CBBHost;->threadCheckListener:Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1, v2}, Lcom/narvii/chat/core/ChatService;->removeCommunityLevelReceptor(ILcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    .line 55
    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    iget-object v1, p0, Lcom/narvii/community/CBBHost;->receiver:Landroid/content/BroadcastReceiver;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->f(Landroid/content/BroadcastReceiver;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    .line 68
    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 69
    move-result-object v0

    .line 70
    .line 71
    iget-object v1, p0, Lcom/narvii/community/CBBHost;->themeDownLoadReceiver:Landroid/content/BroadcastReceiver;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->f(Landroid/content/BroadcastReceiver;)V

    .line 75
    return-void
.end method
