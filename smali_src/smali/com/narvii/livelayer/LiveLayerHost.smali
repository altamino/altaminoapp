.class public Lcom/narvii/livelayer/LiveLayerHost;
.super Lcom/narvii/widget/ProxyViewHost;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/ProxyViewHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    new-instance p2, Lcom/narvii/livelayer/LiveLayerHost$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {p2, p0}, Lcom/narvii/livelayer/LiveLayerHost$1;-><init>(Lcom/narvii/livelayer/LiveLayerHost;)V

    .line 9
    .line 10
    iput-object p2, p0, Lcom/narvii/livelayer/LiveLayerHost;->onClickListener:Landroid/view/View$OnClickListener;

    .line 11
    move-object p2, p1

    .line 12
    .line 13
    check-cast p2, Lcom/narvii/app/NVContext;

    .line 14
    .line 15
    iput-object p2, p0, Lcom/narvii/livelayer/LiveLayerHost;->nvContext:Lcom/narvii/app/NVContext;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    const p2, 0x7f070247

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 26
    move-result p1

    .line 27
    .line 28
    iput p1, p0, Lcom/narvii/livelayer/LiveLayerHost;->indicatorX:I

    .line 29
    .line 30
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerHost;->nvContext:Lcom/narvii/app/NVContext;

    .line 31
    .line 32
    const-string p2, "config"

    .line 33
    .line 34
    .line 35
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 42
    move-result p1

    .line 43
    .line 44
    iput p1, p0, Lcom/narvii/livelayer/LiveLayerHost;->cid:I

    .line 45
    .line 46
    const-string p1, "online-members"

    .line 47
    .line 48
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerHost;->topic:Ljava/lang/String;

    .line 49
    .line 50
    new-instance p1, Lcom/narvii/onlinestatus/OnlineHelper;

    .line 51
    .line 52
    iget-object p2, p0, Lcom/narvii/livelayer/LiveLayerHost;->nvContext:Lcom/narvii/app/NVContext;

    .line 53
    .line 54
    .line 55
    invoke-direct {p1, p2}, Lcom/narvii/onlinestatus/OnlineHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 56
    .line 57
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerHost;->onlineHelper:Lcom/narvii/onlinestatus/OnlineHelper;

    .line 58
    .line 59
    new-instance p1, Lcom/narvii/util/PreferencesHelper;

    .line 60
    .line 61
    iget-object p2, p0, Lcom/narvii/livelayer/LiveLayerHost;->nvContext:Lcom/narvii/app/NVContext;

    .line 62
    .line 63
    .line 64
    invoke-direct {p1, p2}, Lcom/narvii/util/PreferencesHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 65
    .line 66
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerHost;->sharedPreferencesHelper:Lcom/narvii/util/PreferencesHelper;

    .line 67
    return-void
.end method

.method public static getSource(Landroid/app/Activity;)Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    instance-of v0, p0, Lcom/narvii/amino/MainActivity;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-string p0, "Home Page"

    .line 7
    return-object p0

    .line 8
    .line 9
    :cond_0
    instance-of v0, p0, Lcom/narvii/app/FragmentWrapperActivity;

    .line 10
    .line 11
    const-string v1, "]"

    .line 12
    .line 13
    const-string v2, "["

    .line 14
    .line 15
    if-eqz v0, :cond_6

    .line 16
    .line 17
    check-cast p0, Lcom/narvii/app/FragmentWrapperActivity;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/narvii/app/FragmentWrapperActivity;->getRootFragment()Landroidx/fragment/app/Fragment;

    .line 21
    move-result-object p0

    .line 22
    .line 23
    instance-of v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    const-string p0, "Blog"

    .line 28
    return-object p0

    .line 29
    .line 30
    :cond_1
    instance-of v0, p0, Lcom/narvii/item/detail/ItemDetailFragment;

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    const-string/jumbo p0, "wiki"

    .line 35
    return-object p0

    .line 36
    .line 37
    :cond_2
    instance-of v0, p0, Lcom/narvii/user/profile/UserProfileFragment;

    .line 38
    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    const-string p0, "User Profile"

    .line 42
    return-object p0

    .line 43
    .line 44
    :cond_3
    instance-of v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;

    .line 45
    .line 46
    if-eqz v0, :cond_4

    .line 47
    .line 48
    const-string p0, "My Chats"

    .line 49
    return-object p0

    .line 50
    .line 51
    :cond_4
    instance-of v0, p0, Lcom/narvii/chat/ChatFragment;

    .line 52
    .line 53
    if-eqz v0, :cond_5

    .line 54
    .line 55
    const-string p0, "Chat Thread"

    .line 56
    return-object p0

    .line 57
    .line 58
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    move-result-object p0

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 72
    move-result-object p0

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object p0

    .line 83
    return-object p0

    .line 84
    .line 85
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    move-result-object p0

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 99
    move-result-object p0

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    move-result-object p0

    .line 110
    return-object p0
.end method

.method private updateDataSource()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerHost;->nvContext:Lcom/narvii/app/NVContext;

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
    iput-object v0, p0, Lcom/narvii/livelayer/LiveLayerHost;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerHost;->onlineBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 19
    .line 20
    iput-object v0, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    .line 21
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
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerHost;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerHost;->onlineBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lcom/narvii/livelayer/LiveLayerDataSource;->setLiveLayerView(Lcom/narvii/livelayer/ILiveLayerView;)V

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerHost;->onlineBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerHost;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/livelayer/LiveLayerDataSource;->getUserList()Ljava/util/LinkedList;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerHost;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

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
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerHost;->activity:Landroid/app/Activity;

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerHost;->onlineBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerHost;->onClickListener:Landroid/view/View$OnClickListener;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setOnBarClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
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
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerHost;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

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
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerHost;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

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

.method protected onFinishInflate()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a05dd

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/livelayer/LiveLayerHost;->onlineBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setShouldFilterUserList(Z)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/narvii/livelayer/LiveLayerHost;->updateDataSource()V

    .line 22
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
    invoke-direct {p0}, Lcom/narvii/livelayer/LiveLayerHost;->updateDataSource()V

    .line 4
    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public unbind()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-object v0, p0, Lcom/narvii/livelayer/LiveLayerHost;->activity:Landroid/app/Activity;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerHost;->onlineBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 11
    :cond_0
    return-void
.end method
