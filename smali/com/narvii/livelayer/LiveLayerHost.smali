.class public Lcom/narvii/livelayer/LiveLayerHost;
.super Lcom/narvii/widget/ProxyViewHost;
.source "LiveLayerHost.java"


# instance fields
.field activity:Landroid/app/Activity;

.field public final cid:I

.field dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

.field indicatorX:I

.field nvContext:Lcom/narvii/app/NVContext;

.field public onClickListener:Landroid/view/View$OnClickListener;

.field public onlineBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

.field onlineHelper:Lcom/narvii/onlinestatus/OnlineHelper;

.field sharedPreferencesHelper:Lcom/narvii/util/PreferencesHelper;

.field public final topic:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/ProxyViewHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    new-instance p2, Lcom/narvii/livelayer/LiveLayerHost$1;

    invoke-direct {p2, p0}, Lcom/narvii/livelayer/LiveLayerHost$1;-><init>(Lcom/narvii/livelayer/LiveLayerHost;)V

    iput-object p2, p0, Lcom/narvii/livelayer/LiveLayerHost;->onClickListener:Landroid/view/View$OnClickListener;

    .line 94
    move-object p2, p1

    check-cast p2, Lcom/narvii/app/NVContext;

    iput-object p2, p0, Lcom/narvii/livelayer/LiveLayerHost;->nvContext:Lcom/narvii/app/NVContext;

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0701c8

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/livelayer/LiveLayerHost;->indicatorX:I

    .line 96
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerHost;->nvContext:Lcom/narvii/app/NVContext;

    const-string p2, "config"

    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 97
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p1

    iput p1, p0, Lcom/narvii/livelayer/LiveLayerHost;->cid:I

    const-string p1, "online-members"

    .line 98
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerHost;->topic:Ljava/lang/String;

    .line 99
    new-instance p1, Lcom/narvii/onlinestatus/OnlineHelper;

    iget-object p2, p0, Lcom/narvii/livelayer/LiveLayerHost;->nvContext:Lcom/narvii/app/NVContext;

    invoke-direct {p1, p2}, Lcom/narvii/onlinestatus/OnlineHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerHost;->onlineHelper:Lcom/narvii/onlinestatus/OnlineHelper;

    .line 100
    new-instance p1, Lcom/narvii/util/PreferencesHelper;

    iget-object p2, p0, Lcom/narvii/livelayer/LiveLayerHost;->nvContext:Lcom/narvii/app/NVContext;

    invoke-direct {p1, p2}, Lcom/narvii/util/PreferencesHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerHost;->sharedPreferencesHelper:Lcom/narvii/util/PreferencesHelper;

    return-void
.end method

.method public static getSource(Landroid/app/Activity;)Ljava/lang/String;
    .locals 3

    .line 64
    instance-of v0, p0, Lcom/narvii/amino/MainActivity;

    if-eqz v0, :cond_0

    const-string p0, "Home Page"

    return-object p0

    .line 67
    :cond_0
    instance-of v0, p0, Lcom/narvii/app/FragmentWrapperActivity;

    const-string v1, "]"

    const-string v2, "["

    if-eqz v0, :cond_6

    .line 68
    check-cast p0, Lcom/narvii/app/FragmentWrapperActivity;

    .line 69
    invoke-virtual {p0}, Lcom/narvii/app/FragmentWrapperActivity;->getRootFragment()Landroid/support/v4/app/Fragment;

    move-result-object p0

    .line 70
    instance-of v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;

    if-eqz v0, :cond_1

    const-string p0, "Blog"

    return-object p0

    .line 73
    :cond_1
    instance-of v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;

    if-eqz v0, :cond_2

    const-string p0, "Favorite"

    return-object p0

    .line 76
    :cond_2
    instance-of v0, p0, Lcom/narvii/user/profile/UserProfileFragment;

    if-eqz v0, :cond_3

    const-string p0, "User Profile"

    return-object p0

    .line 79
    :cond_3
    instance-of v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;

    if-eqz v0, :cond_4

    const-string p0, "My Chats"

    return-object p0

    .line 82
    :cond_4
    instance-of v0, p0, Lcom/narvii/chat/ChatFragment;

    if-eqz v0, :cond_5

    const-string p0, "Chat Thread"

    return-object p0

    .line 85
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 87
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private updateDataSource()V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerHost;->nvContext:Lcom/narvii/app/NVContext;

    const-string v1, "liveLayer"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/livelayer/LiveLayerService;

    .line 121
    invoke-virtual {v0}, Lcom/narvii/livelayer/LiveLayerService;->getDataSource()Lcom/narvii/livelayer/LiveLayerDataSource;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/livelayer/LiveLayerHost;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    .line 122
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerHost;->onlineBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerHost;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    iput-object v1, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    return-void
.end method


# virtual methods
.method public attachTo(Lcom/narvii/widget/ProxyView;)V
    .locals 2

    .line 139
    invoke-super {p0, p1}, Lcom/narvii/widget/ProxyViewHost;->attachTo(Lcom/narvii/widget/ProxyView;)V

    .line 140
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerHost;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerHost;->onlineBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    invoke-virtual {p1, v0}, Lcom/narvii/livelayer/LiveLayerDataSource;->setLiveLayerView(Lcom/narvii/livelayer/ILiveLayerView;)V

    .line 141
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerHost;->onlineBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerHost;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    invoke-virtual {v0}, Lcom/narvii/livelayer/LiveLayerDataSource;->getUserList()Ljava/util/LinkedList;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerHost;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    invoke-virtual {v1}, Lcom/narvii/livelayer/LiveLayerDataSource;->getCurrentMembersCount()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setUserList(Ljava/util/List;I)V

    return-void
.end method

.method public bind(Landroid/app/Activity;)V
    .locals 1

    .line 133
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerHost;->activity:Landroid/app/Activity;

    .line 134
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerHost;->onlineBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerHost;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setOnBarClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public detachFrom(Lcom/narvii/widget/ProxyView;)V
    .locals 1

    .line 146
    invoke-super {p0, p1}, Lcom/narvii/widget/ProxyViewHost;->detachFrom(Lcom/narvii/widget/ProxyView;)V

    .line 147
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerHost;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    invoke-virtual {p1}, Lcom/narvii/livelayer/LiveLayerDataSource;->getLiveLayerView()Lcom/narvii/livelayer/ILiveLayerView;

    move-result-object p1

    if-ne p1, p0, :cond_0

    .line 148
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerHost;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/livelayer/LiveLayerDataSource;->setLiveLayerView(Lcom/narvii/livelayer/ILiveLayerView;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 105
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f09049b

    .line 106
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/livelayer/LiveLayerOnlineBar;

    iput-object v0, p0, Lcom/narvii/livelayer/LiveLayerHost;->onlineBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 107
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerHost;->onlineBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setShouldFilterUserList(Z)V

    .line 108
    invoke-direct {p0}, Lcom/narvii/livelayer/LiveLayerHost;->updateDataSource()V

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

    .line 116
    invoke-direct {p0}, Lcom/narvii/livelayer/LiveLayerHost;->updateDataSource()V

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public unbind()V
    .locals 1

    const/4 v0, 0x0

    .line 153
    iput-object v0, p0, Lcom/narvii/livelayer/LiveLayerHost;->activity:Landroid/app/Activity;

    .line 154
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerHost;->onlineBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearAnimation()V

    :cond_0
    return-void
.end method
