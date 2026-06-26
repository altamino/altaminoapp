.class public Lcom/narvii/community/CBBHost;
.super Lcom/narvii/widget/ProxyViewHost;
.source "CBBHost.java"

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

.field private final recentVisitorListener:Lcom/narvii/account/AccountService$RecentVisitorListener;

.field private final themeDownLoadReceiver:Landroid/content/BroadcastReceiver;

.field threadCheckListener:Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;

.field private translateAnimation:Landroid/view/animation/TranslateAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 175
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/ProxyViewHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    new-instance p2, Lcom/narvii/community/CBBHost$1;

    invoke-direct {p2, p0}, Lcom/narvii/community/CBBHost$1;-><init>(Lcom/narvii/community/CBBHost;)V

    iput-object p2, p0, Lcom/narvii/community/CBBHost;->threadCheckListener:Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;

    .line 102
    new-instance p2, Lcom/narvii/community/CBBHost$2;

    invoke-direct {p2, p0}, Lcom/narvii/community/CBBHost$2;-><init>(Lcom/narvii/community/CBBHost;)V

    iput-object p2, p0, Lcom/narvii/community/CBBHost;->badgeCountListener:Lcom/narvii/util/Callback;

    .line 109
    new-instance p2, Lcom/narvii/community/CBBHost$3;

    invoke-direct {p2, p0}, Lcom/narvii/community/CBBHost$3;-><init>(Lcom/narvii/community/CBBHost;)V

    iput-object p2, p0, Lcom/narvii/community/CBBHost;->receiver:Landroid/content/BroadcastReceiver;

    .line 125
    new-instance p2, Lcom/narvii/community/CBBHost$4;

    invoke-direct {p2, p0}, Lcom/narvii/community/CBBHost$4;-><init>(Lcom/narvii/community/CBBHost;)V

    iput-object p2, p0, Lcom/narvii/community/CBBHost;->recentVisitorListener:Lcom/narvii/account/AccountService$RecentVisitorListener;

    .line 132
    new-instance p2, Lcom/narvii/community/CBBHost$5;

    invoke-direct {p2, p0}, Lcom/narvii/community/CBBHost$5;-><init>(Lcom/narvii/community/CBBHost;)V

    iput-object p2, p0, Lcom/narvii/community/CBBHost;->profileListener:Lcom/narvii/account/AccountService$ProfileListener;

    .line 520
    new-instance p2, Lcom/narvii/community/CBBHost$6;

    invoke-direct {p2, p0}, Lcom/narvii/community/CBBHost$6;-><init>(Lcom/narvii/community/CBBHost;)V

    iput-object p2, p0, Lcom/narvii/community/CBBHost;->themeDownLoadReceiver:Landroid/content/BroadcastReceiver;

    .line 176
    check-cast p1, Lcom/narvii/app/NVContext;

    iput-object p1, p0, Lcom/narvii/community/CBBHost;->context:Lcom/narvii/app/NVContext;

    .line 177
    iget-object p1, p0, Lcom/narvii/community/CBBHost;->context:Lcom/narvii/app/NVContext;

    const-string p2, "config"

    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 178
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p1

    iput p1, p0, Lcom/narvii/community/CBBHost;->cid:I

    .line 179
    new-instance p1, Lcom/narvii/modulization/CommunityConfigHelper;

    iget-object p2, p0, Lcom/narvii/community/CBBHost;->context:Lcom/narvii/app/NVContext;

    invoke-direct {p1, p2}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/community/CBBHost;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 180
    invoke-direct {p0}, Lcom/narvii/community/CBBHost;->updateService()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/community/CBBHost;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/narvii/community/CBBHost;->updateChatBadge()V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/community/CBBHost;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/narvii/community/CBBHost;->updateMenu()V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/community/CBBHost;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/narvii/community/CBBHost;->updateAllViews()V

    return-void
.end method

.method static synthetic access$300(Lcom/narvii/community/CBBHost;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/narvii/community/CBBHost;->updateChatTab()V

    return-void
.end method

.method static synthetic access$400(Lcom/narvii/community/CBBHost;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/narvii/community/CBBHost;->updatePostEntryView()V

    return-void
.end method

.method static synthetic access$500(Lcom/narvii/community/CBBHost;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/narvii/community/CBBHost;->updateAvatar()V

    return-void
.end method

.method static synthetic access$600(Lcom/narvii/community/CBBHost;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/narvii/community/CBBHost;->updateThemeUI()V

    return-void
.end method

.method private openDrawer()V
    .locals 2

    .line 446
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->activity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/narvii/app/DrawerActivity;

    if-eqz v0, :cond_0

    .line 447
    sget-object v0, Lcom/narvii/drawer/DrawerHost;->DRAWER_OPEN_SOURCE:Lcom/narvii/util/statistics/TmpValue;

    const-string v1, "HBB"

    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V

    .line 448
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->activity:Landroid/app/Activity;

    check-cast v0, Lcom/narvii/app/DrawerActivity;

    .line 449
    invoke-virtual {v0}, Lcom/narvii/app/DrawerActivity;->openDrawer()V

    :cond_0
    return-void
.end method

.method private startActivity(Landroid/content/Intent;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_2

    const-string v0, "__communityId"

    .line 438
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 439
    iget v1, p0, Lcom/narvii/community/CBBHost;->cid:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 441
    :cond_1
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method private updateAllViews()V
    .locals 0

    .line 470
    invoke-direct {p0}, Lcom/narvii/community/CBBHost;->updateAvatar()V

    .line 471
    invoke-direct {p0}, Lcom/narvii/community/CBBHost;->updateChatBadge()V

    .line 472
    invoke-direct {p0}, Lcom/narvii/community/CBBHost;->updateMenu()V

    .line 473
    invoke-direct {p0}, Lcom/narvii/community/CBBHost;->updateChatTab()V

    .line 474
    invoke-direct {p0}, Lcom/narvii/community/CBBHost;->updatePostEntryView()V

    return-void
.end method

.method private updateAvatar()V
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->avatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    iget-object v1, p0, Lcom/narvii/community/CBBHost;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    return-void
.end method

.method private updateChatBadge()V
    .locals 3

    .line 454
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->chatBadge:Landroid/view/View;

    iget-object v1, p0, Lcom/narvii/community/CBBHost;->chatService:Lcom/narvii/chat/core/ChatService;

    iget v2, p0, Lcom/narvii/community/CBBHost;->ndcId:I

    invoke-virtual {v1, v2}, Lcom/narvii/chat/core/ChatService;->getUnreadChatCountInCurCommunity(I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    return-void
.end method

.method private updateChatTab()V
    .locals 2

    .line 478
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isChatEnabled()Z

    move-result v0

    .line 479
    iget-object v1, p0, Lcom/narvii/community/CBBHost;->chatTab:Landroid/view/View;

    invoke-static {v1, v0}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 480
    iget-object v1, p0, Lcom/narvii/community/CBBHost;->chatTabDivider:Landroid/view/View;

    invoke-static {v1, v0}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    return-void
.end method

.method private updateDataSource()V
    .locals 2

    .line 269
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->context:Lcom/narvii/app/NVContext;

    const-string v1, "liveLayer"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/livelayer/LiveLayerService;

    .line 270
    invoke-virtual {v0}, Lcom/narvii/livelayer/LiveLayerService;->getDataSource()Lcom/narvii/livelayer/LiveLayerDataSource;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/community/CBBHost;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    .line 271
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->onlineBar:Lcom/narvii/livelayer/CBBLiveLayerOnlineBar;

    iget-object v1, p0, Lcom/narvii/community/CBBHost;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    iput-object v1, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    return-void
.end method

.method private updateMenu()V
    .locals 2

    .line 484
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->menuBadge:Landroid/view/View;

    iget-object v1, p0, Lcom/narvii/community/CBBHost;->drawerHost:Lcom/narvii/drawer/DrawerHost;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/narvii/drawer/DrawerHost;->getTotalBadgeCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updatePostEntryView()V
    .locals 5

    .line 251
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "config"

    .line 253
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 254
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    move-result v0

    goto :goto_0

    :cond_0
    const v0, -0x777778

    :goto_0
    const v1, 0x7f090883

    .line 257
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/ThumbImageView;

    .line 258
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f090b69

    .line 260
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 262
    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v3, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v3}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 263
    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    const v4, 0x3e99999a    # 0.3f

    invoke-static {v0, v4}, Lcom/narvii/util/Utils;->getColor(IF)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 264
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method private updateService()V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->context:Lcom/narvii/app/NVContext;

    const-string v1, "account"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    iput-object v0, p0, Lcom/narvii/community/CBBHost;->accountService:Lcom/narvii/account/AccountService;

    .line 185
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->context:Lcom/narvii/app/NVContext;

    const-string v1, "chat"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/core/ChatService;

    iput-object v0, p0, Lcom/narvii/community/CBBHost;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 186
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->context:Lcom/narvii/app/NVContext;

    const-string v1, "drawerHost"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/drawer/DrawerHost;

    iput-object v0, p0, Lcom/narvii/community/CBBHost;->drawerHost:Lcom/narvii/drawer/DrawerHost;

    .line 187
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->context:Lcom/narvii/app/NVContext;

    const-string v1, "config"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 188
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    iput v0, p0, Lcom/narvii/community/CBBHost;->ndcId:I

    return-void
.end method

.method private updateTabViews()V
    .locals 6

    .line 288
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->activity:Landroid/app/Activity;

    instance-of v1, v0, Lcom/narvii/app/NVActivity;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 289
    check-cast v0, Lcom/narvii/app/NVActivity;

    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->getRootFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/chat/thread/MyChatsListFragment;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 293
    :goto_0
    iget-object v1, p0, Lcom/narvii/community/CBBHost;->chatIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    const v4, 0x7f0802d4

    goto :goto_1

    :cond_1
    const v4, 0x7f0802d3

    :goto_1
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v1, -0x1

    const v4, 0x7f060063

    if-eqz v0, :cond_2

    .line 295
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->chatText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 297
    :cond_2
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->chatText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 302
    :goto_2
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->activity:Landroid/app/Activity;

    instance-of v5, v0, Lcom/narvii/app/NVActivity;

    if-eqz v5, :cond_3

    .line 303
    check-cast v0, Lcom/narvii/app/NVActivity;

    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->getRootFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/user/profile/UserProfileFragment;

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_4

    .line 308
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->meText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    .line 310
    :cond_4
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->meText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :goto_4
    return-void
.end method

.method private updateThemeUI()V
    .locals 5

    .line 503
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "config"

    .line 505
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 506
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    move-result v0

    const v1, 0x7f090883

    .line 507
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/ThumbImageView;

    if-eqz v1, :cond_0

    .line 509
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const v1, 0x7f090b69

    .line 511
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 513
    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v3, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v3}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 514
    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    const v4, 0x3e99999a    # 0.3f

    invoke-static {v0, v4}, Lcom/narvii/util/Utils;->getColor(IF)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 515
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public attachTo(Lcom/narvii/widget/ProxyView;)V
    .locals 2

    .line 316
    invoke-super {p0, p1}, Lcom/narvii/widget/ProxyViewHost;->attachTo(Lcom/narvii/widget/ProxyView;)V

    .line 317
    iget-object p1, p0, Lcom/narvii/community/CBBHost;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    iget-object v0, p0, Lcom/narvii/community/CBBHost;->onlineBar:Lcom/narvii/livelayer/CBBLiveLayerOnlineBar;

    invoke-virtual {p1, v0}, Lcom/narvii/livelayer/LiveLayerDataSource;->setLiveLayerView(Lcom/narvii/livelayer/ILiveLayerView;)V

    .line 318
    iget-object p1, p0, Lcom/narvii/community/CBBHost;->onlineBar:Lcom/narvii/livelayer/CBBLiveLayerOnlineBar;

    iget-object v0, p0, Lcom/narvii/community/CBBHost;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    invoke-virtual {v0}, Lcom/narvii/livelayer/LiveLayerDataSource;->getUserList()Ljava/util/LinkedList;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/community/CBBHost;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    invoke-virtual {v1}, Lcom/narvii/livelayer/LiveLayerDataSource;->getCurrentMembersCount()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setUserList(Ljava/util/List;I)V

    return-void
.end method

.method public bind(Landroid/app/Activity;)V
    .locals 3

    .line 275
    iput-object p1, p0, Lcom/narvii/community/CBBHost;->activity:Landroid/app/Activity;

    .line 276
    iget-object p1, p0, Lcom/narvii/community/CBBHost;->drawerHost:Lcom/narvii/drawer/DrawerHost;

    iget-object p1, p1, Lcom/narvii/drawer/DrawerHost;->badgeCountListener:Lcom/narvii/util/EventDispatcher;

    iget-object v0, p0, Lcom/narvii/community/CBBHost;->badgeCountListener:Lcom/narvii/util/Callback;

    invoke-virtual {p1, v0}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 277
    iget-object p1, p0, Lcom/narvii/community/CBBHost;->accountService:Lcom/narvii/account/AccountService;

    iget-object v0, p0, Lcom/narvii/community/CBBHost;->profileListener:Lcom/narvii/account/AccountService$ProfileListener;

    invoke-virtual {p1, v0}, Lcom/narvii/account/AccountService;->addProfileListener(Lcom/narvii/account/AccountService$ProfileListener;)V

    .line 278
    iget-object p1, p0, Lcom/narvii/community/CBBHost;->accountService:Lcom/narvii/account/AccountService;

    iget-object v0, p0, Lcom/narvii/community/CBBHost;->recentVisitorListener:Lcom/narvii/account/AccountService$RecentVisitorListener;

    invoke-virtual {p1, v0}, Lcom/narvii/account/AccountService;->addRecentVisitorListener(Lcom/narvii/account/AccountService$RecentVisitorListener;)V

    .line 279
    iget-object p1, p0, Lcom/narvii/community/CBBHost;->chatService:Lcom/narvii/chat/core/ChatService;

    iget v0, p0, Lcom/narvii/community/CBBHost;->ndcId:I

    iget-object v1, p0, Lcom/narvii/community/CBBHost;->threadCheckListener:Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;

    invoke-virtual {p1, v0, v1}, Lcom/narvii/chat/core/ChatService;->addCommunityLevelReceptor(ILcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V

    .line 280
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/community/CBBHost;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 281
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/community/CBBHost;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.narvii.action.COMMUNITY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 282
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/community/CBBHost;->themeDownLoadReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.narvii.action.THEME_DOWNLOAD_SUCCESS"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 283
    invoke-direct {p0}, Lcom/narvii/community/CBBHost;->updateTabViews()V

    return-void
.end method

.method public detachFrom(Lcom/narvii/widget/ProxyView;)V
    .locals 1

    .line 323
    invoke-super {p0, p1}, Lcom/narvii/widget/ProxyViewHost;->detachFrom(Lcom/narvii/widget/ProxyView;)V

    .line 324
    iget-object p1, p0, Lcom/narvii/community/CBBHost;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    invoke-virtual {p1}, Lcom/narvii/livelayer/LiveLayerDataSource;->getLiveLayerView()Lcom/narvii/livelayer/ILiveLayerView;

    move-result-object p1

    if-ne p1, p0, :cond_0

    .line 325
    iget-object p1, p0, Lcom/narvii/community/CBBHost;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/livelayer/LiveLayerDataSource;->setLiveLayerView(Lcom/narvii/livelayer/ILiveLayerView;)V

    :cond_0
    return-void
.end method

.method protected onAttach(Lcom/narvii/widget/ProxyView;)V
    .locals 0

    .line 460
    invoke-super {p0, p1}, Lcom/narvii/widget/ProxyViewHost;->onAttach(Lcom/narvii/widget/ProxyView;)V

    .line 461
    invoke-direct {p0}, Lcom/narvii/community/CBBHost;->updateAllViews()V

    return-void
.end method

.method public onAvatarShownChanged(Z)V
    .locals 5

    .line 490
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->onlineIcon:Landroid/view/View;

    xor-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 491
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->onlineIcon:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f01002a

    const v3, 0x7f010029

    if-eqz p1, :cond_0

    const v4, 0x7f01002a

    goto :goto_0

    :cond_0
    const v4, 0x7f010029

    :goto_0
    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 492
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->onlineBar:Lcom/narvii/livelayer/CBBLiveLayerOnlineBar;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz p1, :cond_1

    const v4, 0x7f010029

    goto :goto_1

    :cond_1
    const v4, 0x7f01002a

    :goto_1
    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 493
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->memberCount:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz p1, :cond_2

    const v2, 0x7f010029

    :cond_2
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 494
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->memberCount:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 358
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, "Source"

    const-string v1, "HBB"

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_4

    .line 376
    :sswitch_0
    iget-object p1, p0, Lcom/narvii/community/CBBHost;->activity:Landroid/app/Activity;

    instance-of p1, p1, Lcom/narvii/app/NVContext;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/narvii/community/CBBHost;->context:Lcom/narvii/app/NVContext;

    invoke-static {p1}, Lcom/narvii/util/Utils;->shouldShowLoginPage(Lcom/narvii/app/NVContext;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 379
    :cond_0
    iget-object p1, p0, Lcom/narvii/community/CBBHost;->activity:Landroid/app/Activity;

    check-cast p1, Lcom/narvii/app/NVContext;

    const-string/jumbo v0, "postEntry"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/post/entry/PostEntryDialog;

    if-eqz p1, :cond_a

    .line 381
    new-instance v0, Lcom/narvii/post/entry/PostEntryDialog$MarginSpec;

    invoke-direct {v0}, Lcom/narvii/post/entry/PostEntryDialog$MarginSpec;-><init>()V

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 384
    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    new-array v3, v3, [I

    .line 387
    iget-object v5, p0, Lcom/narvii/community/CBBHost;->postEntry:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 389
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f070225

    invoke-static {v5, v6}, Lcom/narvii/util/Utils;->getDimenPixelSize(Landroid/content/Context;I)I

    move-result v5

    const/4 v6, 0x1

    .line 390
    aget v7, v4, v6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    aget v6, v3, v6

    iget-object v8, p0, Lcom/narvii/community/CBBHost;->postEntry:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v6, v8

    sub-int/2addr v7, v6

    sub-int/2addr v7, v5

    iput v7, v0, Lcom/narvii/post/entry/PostEntryDialog$MarginSpec;->marginBottom:I

    .line 391
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 392
    aget v3, v3, v2

    aget v4, v4, v2

    sub-int/2addr v3, v4

    sub-int/2addr v3, v5

    iput v3, v0, Lcom/narvii/post/entry/PostEntryDialog$MarginSpec;->marginRight:I

    goto :goto_0

    .line 394
    :cond_1
    aget v4, v4, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    add-int/2addr v4, v6

    aget v3, v3, v2

    iget-object v6, p0, Lcom/narvii/community/CBBHost;->postEntry:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v3, v6

    sub-int/2addr v4, v3

    sub-int/2addr v4, v5

    iput v4, v0, Lcom/narvii/post/entry/PostEntryDialog$MarginSpec;->marginRight:I

    .line 396
    :goto_0
    sget-object v3, Lcom/narvii/util/logging/LoggingSource;->GlobalComposeMenu:Lcom/narvii/util/logging/LoggingSource;

    invoke-virtual {p1, v2, v1, v3, v0}, Lcom/narvii/post/entry/PostEntryDialog;->show(ILjava/lang/String;Lcom/narvii/util/logging/LoggingSource;Lcom/narvii/post/entry/PostEntryDialog$MarginSpec;)V

    goto/16 :goto_4

    :cond_2
    :goto_1
    return-void

    .line 363
    :sswitch_1
    iget-object p1, p0, Lcom/narvii/community/CBBHost;->activity:Landroid/app/Activity;

    if-eqz p1, :cond_a

    .line 364
    const-class p1, Lcom/narvii/livelayer/LiveLayerFragment;

    invoke-static {p1}, Lcom/narvii/livelayer/LiveLayerActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const v3, 0x7f01000d

    const-string v4, "customFinishAnimOut"

    .line 365
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "customFinishAnimIn"

    .line 366
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 367
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 368
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-le v0, v1, :cond_3

    .line 369
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/narvii/livelayer/LiveLayerActivity;->prepare(Landroid/app/Activity;)V

    .line 371
    :cond_3
    invoke-direct {p0, p1}, Lcom/narvii/community/CBBHost;->startActivity(Landroid/content/Intent;)V

    .line 372
    iget-object p1, p0, Lcom/narvii/community/CBBHost;->activity:Landroid/app/Activity;

    const v0, 0x7f01000c

    invoke-virtual {p1, v0, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_4

    .line 360
    :sswitch_2
    invoke-direct {p0}, Lcom/narvii/community/CBBHost;->openDrawer()V

    goto/16 :goto_4

    .line 411
    :sswitch_3
    iget-object p1, p0, Lcom/narvii/community/CBBHost;->activity:Landroid/app/Activity;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/narvii/community/CBBHost;->context:Lcom/narvii/app/NVContext;

    invoke-static {p1}, Lcom/narvii/util/Utils;->shouldShowLoginPage(Lcom/narvii/app/NVContext;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_3

    .line 414
    :cond_4
    iget-object p1, p0, Lcom/narvii/community/CBBHost;->activity:Landroid/app/Activity;

    instance-of v3, p1, Lcom/narvii/app/NVActivity;

    if-eqz v3, :cond_5

    check-cast p1, Lcom/narvii/app/NVActivity;

    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->getRootFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/user/profile/UserProfileFragment;

    if-eqz p1, :cond_5

    return-void

    .line 417
    :cond_5
    iget-object p1, p0, Lcom/narvii/community/CBBHost;->context:Lcom/narvii/app/NVContext;

    const-string v3, "account"

    invoke-interface {p1, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 418
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getCommunityUserProfile()Lcom/narvii/model/User;

    move-result-object v3

    if-nez v3, :cond_6

    .line 421
    const-class v3, Lcom/narvii/user/profile/UserProfileFragment;

    invoke-static {v3}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v3

    .line 422
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "id"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "__interactionScope"

    .line 423
    invoke-virtual {v3, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_2

    .line 425
    :cond_6
    iget-object p1, p0, Lcom/narvii/community/CBBHost;->context:Lcom/narvii/app/NVContext;

    invoke-static {p1, v3}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object v3

    .line 427
    :goto_2
    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 428
    invoke-direct {p0, v3}, Lcom/narvii/community/CBBHost;->startActivity(Landroid/content/Intent;)V

    goto :goto_4

    :cond_7
    :goto_3
    return-void

    .line 400
    :sswitch_4
    iget-object p1, p0, Lcom/narvii/community/CBBHost;->activity:Landroid/app/Activity;

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/narvii/community/CBBHost;->context:Lcom/narvii/app/NVContext;

    invoke-static {p1}, Lcom/narvii/util/Utils;->shouldShowLoginPage(Lcom/narvii/app/NVContext;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_4

    .line 403
    :cond_8
    iget-object p1, p0, Lcom/narvii/community/CBBHost;->activity:Landroid/app/Activity;

    instance-of v2, p1, Lcom/narvii/app/NVActivity;

    if-eqz v2, :cond_9

    check-cast p1, Lcom/narvii/app/NVActivity;

    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->getRootFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/chat/thread/MyChatsListFragment;

    if-eqz p1, :cond_9

    return-void

    .line 406
    :cond_9
    const-class p1, Lcom/narvii/chat/thread/MyChatsListFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 407
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 408
    invoke-direct {p0, p1}, Lcom/narvii/community/CBBHost;->startActivity(Landroid/content/Intent;)V

    nop

    :cond_a
    :goto_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0901aa -> :sswitch_4
        0x7f0901ae -> :sswitch_3
        0x7f0901b0 -> :sswitch_2
        0x7f0901b1 -> :sswitch_1
        0x7f0901b3 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onDetach(Lcom/narvii/widget/ProxyView;)V
    .locals 0

    .line 466
    invoke-super {p0, p1}, Lcom/narvii/widget/ProxyViewHost;->onDetach(Lcom/narvii/widget/ProxyView;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .line 198
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0901b0

    .line 200
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0901b1

    .line 201
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0901aa

    .line 202
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0901ae

    .line 203
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0901b3

    .line 205
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/narvii/community/CBBHost;->postEntry:Landroid/view/View;

    .line 206
    iget-object v3, p0, Lcom/narvii/community/CBBHost;->postEntry:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f090c10

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/narvii/widget/UserAvatarLayout;

    iput-object v3, p0, Lcom/narvii/community/CBBHost;->avatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    .line 209
    iget-object v3, p0, Lcom/narvii/community/CBBHost;->avatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/narvii/widget/UserAvatarLayout;->disableFullAvatarFrame:Z

    .line 210
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f090115

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/narvii/community/CBBHost;->chatBadge:Landroid/view/View;

    .line 211
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/community/CBBHost;->menuBadge:Landroid/view/View;

    .line 212
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/community/CBBHost;->meBadge:Landroid/view/View;

    const v0, 0x7f0906b2

    .line 213
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/community/CBBHost;->mainLayout:Landroid/view/View;

    const v0, 0x7f0901b2

    .line 214
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/community/CBBHost;->onlineIcon:Landroid/view/View;

    const v0, 0x7f0901ac

    .line 215
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/narvii/community/CBBHost;->chatIcon:Landroid/widget/ImageView;

    const v0, 0x7f0901ad

    .line 216
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/community/CBBHost;->chatText:Landroid/widget/TextView;

    const v0, 0x7f0901af

    .line 217
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/community/CBBHost;->meText:Landroid/widget/TextView;

    const v0, 0x7f0906dd

    .line 218
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/community/CBBHost;->memberCount:Landroid/widget/TextView;

    .line 219
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/community/CBBHost;->chatTab:Landroid/view/View;

    const v0, 0x7f0901ab

    .line 220
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/community/CBBHost;->chatTabDivider:Landroid/view/View;

    const v0, 0x7f0907b0

    .line 222
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/livelayer/CBBLiveLayerOnlineBar;

    iput-object v0, p0, Lcom/narvii/community/CBBHost;->onlineBar:Lcom/narvii/livelayer/CBBLiveLayerOnlineBar;

    .line 223
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->onlineBar:Lcom/narvii/livelayer/CBBLiveLayerOnlineBar;

    invoke-virtual {v0, p0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setOnUpdateMemberCountListener(Lcom/narvii/livelayer/LiveLayerOnlineBar$OnUpdateMemberCountListener;)V

    .line 224
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->onlineBar:Lcom/narvii/livelayer/CBBLiveLayerOnlineBar;

    invoke-virtual {v0, p0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setOnAvatarShownChangeListener(Lcom/narvii/livelayer/LiveLayerOnlineBar$OnAvatarShownChangeListener;)V

    .line 226
    invoke-direct {p0}, Lcom/narvii/community/CBBHost;->updatePostEntryView()V

    .line 227
    invoke-direct {p0}, Lcom/narvii/community/CBBHost;->updateDataSource()V

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

    .line 192
    invoke-direct {p0}, Lcom/narvii/community/CBBHost;->updateService()V

    .line 193
    invoke-direct {p0}, Lcom/narvii/community/CBBHost;->updateDataSource()V

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public onUpdateMemberCount(I)V
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->memberCount:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public openPostEntry()V
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->postEntry:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    return-void
.end method

.method public setLift(I)V
    .locals 3

    .line 232
    iget v0, p0, Lcom/narvii/community/CBBHost;->lift:I

    if-ne v0, p1, :cond_0

    return-void

    .line 235
    :cond_0
    iput p1, p0, Lcom/narvii/community/CBBHost;->lift:I

    .line 236
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->mainLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->mainLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 239
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07008c

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->getDimenPixelSize(Landroid/content/Context;I)I

    move-result v1

    add-int/2addr p1, v1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 240
    iget-object p1, p0, Lcom/narvii/community/CBBHost;->mainLayout:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public unbind()V
    .locals 3

    const/4 v0, 0x0

    .line 330
    iput-object v0, p0, Lcom/narvii/community/CBBHost;->activity:Landroid/app/Activity;

    .line 331
    iget-object v1, p0, Lcom/narvii/community/CBBHost;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    invoke-virtual {v1}, Lcom/narvii/livelayer/LiveLayerDataSource;->getLiveLayerView()Lcom/narvii/livelayer/ILiveLayerView;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 332
    iget-object v1, p0, Lcom/narvii/community/CBBHost;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    invoke-virtual {v1, v0}, Lcom/narvii/livelayer/LiveLayerDataSource;->setLiveLayerView(Lcom/narvii/livelayer/ILiveLayerView;)V

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    iget-object v1, p0, Lcom/narvii/community/CBBHost;->onlineBar:Lcom/narvii/livelayer/CBBLiveLayerOnlineBar;

    invoke-virtual {v0, v1}, Lcom/narvii/livelayer/LiveLayerDataSource;->setLiveLayerView(Lcom/narvii/livelayer/ILiveLayerView;)V

    .line 335
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->drawerHost:Lcom/narvii/drawer/DrawerHost;

    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost;->badgeCountListener:Lcom/narvii/util/EventDispatcher;

    iget-object v1, p0, Lcom/narvii/community/CBBHost;->badgeCountListener:Lcom/narvii/util/Callback;

    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    .line 336
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->accountService:Lcom/narvii/account/AccountService;

    iget-object v1, p0, Lcom/narvii/community/CBBHost;->profileListener:Lcom/narvii/account/AccountService$ProfileListener;

    invoke-virtual {v0, v1}, Lcom/narvii/account/AccountService;->removeProfileListener(Lcom/narvii/account/AccountService$ProfileListener;)V

    .line 337
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->accountService:Lcom/narvii/account/AccountService;

    iget-object v1, p0, Lcom/narvii/community/CBBHost;->recentVisitorListener:Lcom/narvii/account/AccountService$RecentVisitorListener;

    invoke-virtual {v0, v1}, Lcom/narvii/account/AccountService;->removeRecentVisitorListener(Lcom/narvii/account/AccountService$RecentVisitorListener;)V

    .line 338
    iget-object v0, p0, Lcom/narvii/community/CBBHost;->chatService:Lcom/narvii/chat/core/ChatService;

    iget v1, p0, Lcom/narvii/community/CBBHost;->ndcId:I

    iget-object v2, p0, Lcom/narvii/community/CBBHost;->threadCheckListener:Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;

    invoke-virtual {v0, v1, v2}, Lcom/narvii/chat/core/ChatService;->removeCommunityLevelReceptor(ILcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V

    .line 339
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/community/CBBHost;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 340
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/community/CBBHost;->themeDownLoadReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
