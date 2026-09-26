.class public Lcom/narvii/monetization/bubble/PickChatThreadListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/monetization/bubble/PickChatThreadListFragment$CreateNewChatAdapter;,
        Lcom/narvii/monetization/bubble/PickChatThreadListFragment$TitleAdapter;,
        Lcom/narvii/monetization/bubble/PickChatThreadListFragment$MyChatListAdapter;,
        Lcom/narvii/monetization/bubble/PickChatThreadListFragment$EmptyAdapter;
    }
.end annotation


# instance fields
.field private chatListAdapter:Lcom/narvii/monetization/bubble/PickChatThreadListFragment$MyChatListAdapter;

.field private isGlobal:Z

.field protected threadHelper:Lcom/narvii/chat/thread/ThreadHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    return-void
.end method

.method public static safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/monetization/bubble/PickChatThreadListFragment;)Lcom/narvii/monetization/bubble/PickChatThreadListFragment$MyChatListAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/bubble/PickChatThreadListFragment;->chatListAdapter:Lcom/narvii/monetization/bubble/PickChatThreadListFragment$MyChatListAdapter;

    return-object p0
.end method

.method static bridge synthetic u(Lcom/narvii/monetization/bubble/PickChatThreadListFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/monetization/bubble/PickChatThreadListFragment;->isGlobal:Z

    return p0
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 3

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    new-instance v0, Lcom/narvii/monetization/bubble/PickChatThreadListFragment$CreateNewChatAdapter;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0, p0}, Lcom/narvii/monetization/bubble/PickChatThreadListFragment$CreateNewChatAdapter;-><init>(Lcom/narvii/monetization/bubble/PickChatThreadListFragment;Lcom/narvii/app/NVContext;)V

    .line 11
    .line 12
    new-instance v1, Lcom/narvii/monetization/bubble/PickChatThreadListFragment$TitleAdapter;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, p0, p0}, Lcom/narvii/monetization/bubble/PickChatThreadListFragment$TitleAdapter;-><init>(Lcom/narvii/monetization/bubble/PickChatThreadListFragment;Lcom/narvii/app/NVContext;)V

    .line 16
    .line 17
    new-instance v2, Lcom/narvii/monetization/bubble/PickChatThreadListFragment$MyChatListAdapter;

    .line 18
    .line 19
    .line 20
    invoke-direct {v2, p0, p0}, Lcom/narvii/monetization/bubble/PickChatThreadListFragment$MyChatListAdapter;-><init>(Lcom/narvii/monetization/bubble/PickChatThreadListFragment;Lcom/narvii/app/NVContext;)V

    .line 21
    .line 22
    iput-object v2, p0, Lcom/narvii/monetization/bubble/PickChatThreadListFragment;->chatListAdapter:Lcom/narvii/monetization/bubble/PickChatThreadListFragment$MyChatListAdapter;

    .line 23
    .line 24
    iget-boolean v2, p0, Lcom/narvii/monetization/bubble/PickChatThreadListFragment;->isGlobal:Z

    .line 25
    .line 26
    if-nez v2, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 33
    .line 34
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/bubble/PickChatThreadListFragment;->chatListAdapter:Lcom/narvii/monetization/bubble/PickChatThreadListFragment$MyChatListAdapter;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 38
    .line 39
    new-instance v0, Lcom/narvii/monetization/bubble/PickChatThreadListFragment$EmptyAdapter;

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, p0, p0}, Lcom/narvii/monetization/bubble/PickChatThreadListFragment$EmptyAdapter;-><init>(Lcom/narvii/monetization/bubble/PickChatThreadListFragment;Lcom/narvii/app/NVContext;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 46
    return-object p1
.end method

.method public hasPostEntry()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isDarkNVTheme()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/monetization/bubble/PickChatThreadListFragment;->isGlobal:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    .line 20
    const v0, 0x7f0a0079

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    check-cast p1, Landroid/widget/ImageView;

    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    .line 31
    const v0, 0x7f0803b5

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 35
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f121079

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 10
    .line 11
    new-instance p1, Lcom/narvii/chat/thread/ThreadHelper;

    .line 12
    .line 13
    .line 14
    invoke-direct {p1, p0}, Lcom/narvii/chat/thread/ThreadHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 15
    .line 16
    iput-object p1, p0, Lcom/narvii/monetization/bubble/PickChatThreadListFragment;->threadHelper:Lcom/narvii/chat/thread/ThreadHelper;

    .line 17
    .line 18
    const-string p1, "config"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 28
    move-result p1

    .line 29
    const/4 v0, 0x1

    .line 30
    .line 31
    if-nez p1, :cond_0

    .line 32
    move p1, v0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 p1, 0x0

    .line 35
    .line 36
    :goto_0
    iput-boolean p1, p0, Lcom/narvii/monetization/bubble/PickChatThreadListFragment;->isGlobal:Z

    .line 37
    .line 38
    if-eqz p1, :cond_1

    .line 39
    const/4 v0, 0x2

    .line 40
    .line 41
    .line 42
    :cond_1
    invoke-virtual {p0, v0}, Lcom/narvii/app/theme/NVThemeFragment;->setNVThemeValue(I)V

    .line 43
    return-void
.end method

.method protected onCreateChatClicked()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/bubble/PickChatThreadListFragment;->threadHelper:Lcom/narvii/chat/thread/ThreadHelper;

    .line 3
    .line 4
    const-string/jumbo v1, "stickerCollectionId"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v2, v2, v1, v2}, Lcom/narvii/chat/thread/ThreadHelper;->showCreateChatDialog(Ljava/lang/String;Lcom/narvii/model/ChatBubble;Ljava/lang/String;Lcom/narvii/util/Callback;)V

    .line 13
    return-void
.end method

.method public onThemeChange(I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onThemeChange(I)V

    .line 4
    const/4 v0, 0x2

    .line 5
    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    const v0, 0x7f0600a1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 17
    move-result p1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Lcom/narvii/widget/NVListView;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchHeader(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    check-cast v0, Lcom/narvii/widget/NVListView;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchFooter(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    check-cast p1, Lcom/narvii/widget/NVListView;

    .line 42
    const/4 v0, 0x0

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVListView;->setListContentBackgroundColor(I)V

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/4 v0, 0x1

    .line 48
    .line 49
    if-ne p1, v0, :cond_1

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    .line 56
    const v0, 0x7f0603eb

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 60
    move-result p1

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    check-cast v0, Lcom/narvii/widget/NVListView;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchHeader(I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    check-cast v0, Lcom/narvii/widget/NVListView;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchFooter(I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 82
    move-result-object p1

    .line 83
    .line 84
    check-cast p1, Lcom/narvii/widget/NVListView;

    .line 85
    const/4 v0, -0x1

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVListView;->setListContentBackgroundColor(I)V

    .line 89
    :cond_1
    :goto_0
    return-void
.end method

.method protected onThreadPicked(Lcom/narvii/model/ChatThread;)V
    .locals 3

    .line 1
    .line 2
    const-class v0, Lcom/narvii/chat/ChatFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 9
    .line 10
    const-string v2, "id"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    .line 15
    const-string/jumbo v1, "thread"

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    .line 24
    const-string p1, "Source"

    .line 25
    .line 26
    const-string v1, "My chats"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    .line 31
    const-string/jumbo p1, "stickerCollectionId"

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    invoke-static {p0, v0}, Lcom/narvii/monetization/bubble/PickChatThreadListFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 45
    return-void
.end method
