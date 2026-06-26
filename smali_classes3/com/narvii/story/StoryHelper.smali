.class public Lcom/narvii/story/StoryHelper;
.super Ljava/lang/Object;
.source "StoryHelper.java"


# instance fields
.field private context:Lcom/narvii/app/NVContext;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/narvii/story/StoryHelper;->context:Lcom/narvii/app/NVContext;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/story/StoryHelper;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/narvii/story/StoryHelper;->context:Lcom/narvii/app/NVContext;

    return-object p0
.end method


# virtual methods
.method public openStoryDetailInCurActivity(Landroid/support/v4/app/FragmentManager;Lcom/narvii/paging/source/DataSource;Lcom/narvii/model/Blog;Lcom/narvii/model/Community;Lcom/narvii/model/User;Landroid/view/View;IZLcom/narvii/story/StoryListVisibleChangeListener;)Lcom/narvii/story/StoryListFragment;
    .locals 11

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    .line 59
    invoke-virtual/range {v0 .. v10}, Lcom/narvii/story/StoryHelper;->openStoryDetailInCurActivity(Landroid/support/v4/app/FragmentManager;Lcom/narvii/paging/source/DataSource;Lcom/narvii/model/Blog;Lcom/narvii/model/Community;Lcom/narvii/model/User;Landroid/view/View;IZLcom/narvii/story/StoryListVisibleChangeListener;Z)Lcom/narvii/story/StoryListFragment;

    move-result-object v0

    return-object v0
.end method

.method public openStoryDetailInCurActivity(Landroid/support/v4/app/FragmentManager;Lcom/narvii/paging/source/DataSource;Lcom/narvii/model/Blog;Lcom/narvii/model/Community;Lcom/narvii/model/User;Landroid/view/View;IZLcom/narvii/story/StoryListVisibleChangeListener;Z)Lcom/narvii/story/StoryListFragment;
    .locals 2

    .line 69
    new-instance v0, Lcom/narvii/story/StoryListFragment;

    invoke-direct {v0}, Lcom/narvii/story/StoryListFragment;-><init>()V

    .line 70
    invoke-virtual {v0, p2}, Lcom/narvii/story/StoryListFragment;->setSharedDataSource(Lcom/narvii/paging/source/DataSource;)V

    .line 71
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x1

    if-eqz p9, :cond_0

    .line 73
    invoke-virtual {v0, p9}, Lcom/narvii/story/StoryListFragment;->addStoryVisibleChangeListener(Lcom/narvii/story/StoryListVisibleChangeListener;)V

    goto :goto_0

    .line 75
    :cond_0
    sget-object p9, Lcom/narvii/story/StoryListFragment;->ACTIVITY_VISIBLE_HINT_EXCLUSIVE:Ljava/lang/String;

    invoke-virtual {p2, p9, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 77
    :goto_0
    sget-object p9, Lcom/narvii/story/StoryListFragment;->KEY_FEED:Ljava/lang/String;

    invoke-static {p3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p9, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    sget-object p3, Lcom/narvii/story/StoryListFragment;->KEY_FEED_COMMUNITY:Ljava/lang/String;

    invoke-static {p4}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    sget-object p3, Lcom/narvii/story/StoryListFragment;->KEY_FEED_USER:Ljava/lang/String;

    invoke-static {p5}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    sget-object p3, Lcom/narvii/story/StoryListFragment;->KEY_SHOW_COMMENT_BAR:Ljava/lang/String;

    invoke-virtual {p2, p3, p8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 81
    sget-object p3, Lcom/narvii/story/StoryListFragment;->SHOW_IN_SAME_ACTIVITY:Ljava/lang/String;

    invoke-virtual {p2, p3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 82
    sget-object p3, Lcom/narvii/story/StoryListFragment;->KEY_TOPIC_ID:Ljava/lang/String;

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 83
    sget-object p3, Lcom/narvii/logging/LogUtils;->nextPageStrategyInfo:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 84
    sget-object p3, Lcom/narvii/logging/LogUtils;->nextPageStrategyInfo:Ljava/lang/String;

    const-string p4, "__strategyInfo"

    invoke-virtual {p2, p4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_1
    sget-object p3, Lcom/narvii/logging/LogUtils;->nextPageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

    if-eqz p3, :cond_2

    .line 88
    invoke-static {p3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "__pageRefererInfo"

    invoke-virtual {p2, p4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_2
    sget-object p3, Lcom/narvii/story/StoryListFragment;->KEY_TYPE:Ljava/lang/String;

    const-string p4, "discover-player"

    invoke-virtual {p2, p3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-static {p6}, Lcom/narvii/story/StoryListFragment;->getAnimationBundles(Landroid/view/View;)Landroid/os/Bundle;

    move-result-object p3

    .line 92
    invoke-virtual {p3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_3

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 93
    invoke-virtual {p3, p5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p6

    invoke-virtual {p2, p5, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 95
    :cond_3
    sget-object p3, Lcom/narvii/story/StoryListFragment;->KEY_FORCE_VIDEO_AUTO_PLAY:Ljava/lang/String;

    invoke-virtual {p2, p3, p10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 97
    invoke-virtual {v0, p2}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const-string p2, "story_detail"

    .line 98
    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p3

    const/16 p4, 0x1001

    if-eqz p3, :cond_4

    .line 100
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 101
    invoke-virtual {p1, p4}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 102
    invoke-virtual {p1, p7, v0, p2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 103
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    goto :goto_2

    .line 105
    :cond_4
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 106
    invoke-virtual {p1, p4}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 107
    invoke-virtual {p1, p7, v0, p2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 108
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    :goto_2
    return-object v0
.end method

.method public openStoryDetailPageInAnotherActivity(Landroid/view/View;Landroid/content/Intent;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 135
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/narvii/story/StoryHelper;->context:Lcom/narvii/app/NVContext;

    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/narvii/app/NVFragment;

    .line 137
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/narvii/story/StoryHelper;->context:Lcom/narvii/app/NVContext;

    check-cast v0, Lcom/narvii/app/NVFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "renderView"

    .line 139
    invoke-static {v0, p1, v1}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/app/ActivityOptions;

    move-result-object p1

    .line 141
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0

    .line 143
    :cond_1
    iget-object p1, p0, Lcom/narvii/story/StoryHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public openStoryListFragment(Landroid/content/Intent;Landroid/view/View;)V
    .locals 4

    .line 149
    iget-object v0, p0, Lcom/narvii/story/StoryHelper;->context:Lcom/narvii/app/NVContext;

    instance-of v1, v0, Lcom/narvii/nvplayerview/delegate/NVVideoPlayHost;

    if-eqz v1, :cond_0

    .line 150
    check-cast v0, Lcom/narvii/nvplayerview/delegate/NVVideoPlayHost;

    invoke-interface {v0}, Lcom/narvii/nvplayerview/delegate/NVVideoPlayHost;->getVideoDelegate()Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    move-result-object v0

    .line 151
    invoke-interface {v0}, Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;->getVideoView()Lcom/narvii/nvplayerview/NVVideoView;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 153
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_4

    iget-object v1, p0, Lcom/narvii/story/StoryHelper;->context:Lcom/narvii/app/NVContext;

    instance-of v1, v1, Lcom/narvii/app/NVFragment;

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    .line 157
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p2

    if-eq p2, v3, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 160
    :cond_2
    iget-object p2, p0, Lcom/narvii/story/StoryHelper;->context:Lcom/narvii/app/NVContext;

    check-cast p2, Lcom/narvii/app/NVFragment;

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    const-string v2, "renderView"

    .line 161
    invoke-static {p2, v0, v2}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/app/ActivityOptions;

    move-result-object v0

    if-eqz v1, :cond_3

    if-eqz p2, :cond_3

    .line 163
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_1

    .line 165
    :cond_3
    iget-object p2, p0, Lcom/narvii/story/StoryHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p2, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 168
    :cond_4
    iget-object p2, p0, Lcom/narvii/story/StoryHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p2, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void
.end method

.method public sendStoryNotification(Lcom/narvii/model/Blog;Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/narvii/story/StoryHelper;->context:Lcom/narvii/app/NVContext;

    const-string v1, "notification"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/notification/NotificationCenter;

    .line 119
    new-instance v1, Lcom/narvii/notification/Notification;

    invoke-direct {v1}, Lcom/narvii/notification/Notification;-><init>()V

    const-string v2, "update"

    .line 120
    iput-object v2, v1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 121
    new-instance v2, Lcom/narvii/story/StoryNotificationStub;

    invoke-direct {v2}, Lcom/narvii/story/StoryNotificationStub;-><init>()V

    .line 122
    iput-object p1, v2, Lcom/narvii/story/StoryNotificationStub;->story:Lcom/narvii/model/Blog;

    .line 123
    invoke-virtual {p1}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/narvii/story/StoryNotificationStub;->id:Ljava/lang/String;

    .line 124
    iput-object p2, v2, Lcom/narvii/story/StoryNotificationStub;->action:Ljava/lang/String;

    .line 125
    iput-object v2, v1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 126
    invoke-virtual {v2}, Lcom/narvii/story/StoryNotificationStub;->id()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/narvii/notification/Notification;->id:Ljava/lang/String;

    .line 127
    invoke-virtual {v2}, Lcom/narvii/story/StoryNotificationStub;->uid()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/narvii/notification/Notification;->uid:Ljava/lang/String;

    .line 128
    invoke-virtual {v0, v1}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    return-void
.end method

.method public showStoryPostPage()V
    .locals 4

    .line 174
    iget-object v0, p0, Lcom/narvii/story/StoryHelper;->context:Lcom/narvii/app/NVContext;

    const-string v1, "account"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 175
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/narvii/story/StoryHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/narvii/account/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 177
    iget-object v1, p0, Lcom/narvii/story/StoryHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/narvii/story/StoryHelper;->context:Lcom/narvii/app/NVContext;

    const-string v1, "draft"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/post/DraftManager;

    const-string v1, "story"

    .line 182
    invoke-virtual {v0, v1}, Lcom/narvii/post/DraftManager;->hasDraft(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    new-instance v0, Lcom/narvii/story/dialog/StoryCreationDialog;

    iget-object v1, p0, Lcom/narvii/story/StoryHelper;->context:Lcom/narvii/app/NVContext;

    invoke-direct {v0, v1}, Lcom/narvii/story/dialog/StoryCreationDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 184
    new-instance v1, Lcom/narvii/story/StoryHelper$1;

    invoke-direct {v1, p0}, Lcom/narvii/story/StoryHelper$1;-><init>(Lcom/narvii/story/StoryHelper;)V

    invoke-virtual {v0, v1}, Lcom/narvii/story/dialog/StoryCreationDialog;->setOnClickListener(Lcom/narvii/story/dialog/StoryCreationDialog$OnClickListener;)V

    .line 201
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_0

    .line 203
    :cond_1
    new-instance v0, Lcom/narvii/blog/post/BlogPost;

    invoke-direct {v0}, Lcom/narvii/blog/post/BlogPost;-><init>()V

    const/16 v1, 0x9

    .line 204
    iput v1, v0, Lcom/narvii/blog/post/BlogPost;->type:I

    .line 205
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/narvii/story/StoryHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/narvii/blog/post/StoryPostActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 206
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "post"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    iget-object v0, p0, Lcom/narvii/story/StoryHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
