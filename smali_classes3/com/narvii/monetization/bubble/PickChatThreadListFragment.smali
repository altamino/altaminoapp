.class public Lcom/narvii/monetization/bubble/PickChatThreadListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "PickChatThreadListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/monetization/bubble/PickChatThreadListFragment$MyChatListAdapter;,
        Lcom/narvii/monetization/bubble/PickChatThreadListFragment$TitleAdapter;,
        Lcom/narvii/monetization/bubble/PickChatThreadListFragment$CreateNewChatAdapter;,
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

    .line 41
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/monetization/bubble/PickChatThreadListFragment;)Lcom/narvii/monetization/bubble/PickChatThreadListFragment$MyChatListAdapter;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/narvii/monetization/bubble/PickChatThreadListFragment;->chatListAdapter:Lcom/narvii/monetization/bubble/PickChatThreadListFragment$MyChatListAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/monetization/bubble/PickChatThreadListFragment;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/narvii/monetization/bubble/PickChatThreadListFragment;->isGlobal:Z

    return p0
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 3

    .line 79
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 81
    new-instance v0, Lcom/narvii/monetization/bubble/PickChatThreadListFragment$CreateNewChatAdapter;

    invoke-direct {v0, p0, p0}, Lcom/narvii/monetization/bubble/PickChatThreadListFragment$CreateNewChatAdapter;-><init>(Lcom/narvii/monetization/bubble/PickChatThreadListFragment;Lcom/narvii/app/NVContext;)V

    .line 83
    new-instance v1, Lcom/narvii/monetization/bubble/PickChatThreadListFragment$TitleAdapter;

    invoke-direct {v1, p0, p0}, Lcom/narvii/monetization/bubble/PickChatThreadListFragment$TitleAdapter;-><init>(Lcom/narvii/monetization/bubble/PickChatThreadListFragment;Lcom/narvii/app/NVContext;)V

    .line 84
    new-instance v2, Lcom/narvii/monetization/bubble/PickChatThreadListFragment$MyChatListAdapter;

    invoke-direct {v2, p0, p0}, Lcom/narvii/monetization/bubble/PickChatThreadListFragment$MyChatListAdapter;-><init>(Lcom/narvii/monetization/bubble/PickChatThreadListFragment;Lcom/narvii/app/NVContext;)V

    iput-object v2, p0, Lcom/narvii/monetization/bubble/PickChatThreadListFragment;->chatListAdapter:Lcom/narvii/monetization/bubble/PickChatThreadListFragment$MyChatListAdapter;

    .line 86
    iget-boolean v2, p0, Lcom/narvii/monetization/bubble/PickChatThreadListFragment;->isGlobal:Z

    if-nez v2, :cond_0

    .line 87
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 88
    invoke-virtual {p1, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/bubble/PickChatThreadListFragment;->chatListAdapter:Lcom/narvii/monetization/bubble/PickChatThreadListFragment$MyChatListAdapter;

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 91
    new-instance v0, Lcom/narvii/monetization/bubble/PickChatThreadListFragment$EmptyAdapter;

    invoke-direct {v0, p0, p0}, Lcom/narvii/monetization/bubble/PickChatThreadListFragment$EmptyAdapter;-><init>(Lcom/narvii/monetization/bubble/PickChatThreadListFragment;Lcom/narvii/app/NVContext;)V

    .line 92
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    return-object p1
.end method

.method public hasPostEntry()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    .line 73
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isDarkNVTheme()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lcom/narvii/monetization/bubble/PickChatThreadListFragment;->isGlobal:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 61
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const v0, 0x7f090048

    .line 64
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const v0, 0x7f0802ae

    .line 66
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 49
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0f0f6d

    .line 50
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 52
    new-instance p1, Lcom/narvii/chat/thread/ThreadHelper;

    invoke-direct {p1, p0}, Lcom/narvii/chat/thread/ThreadHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/monetization/bubble/PickChatThreadListFragment;->threadHelper:Lcom/narvii/chat/thread/ThreadHelper;

    const-string p1, "config"

    .line 53
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 54
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/narvii/monetization/bubble/PickChatThreadListFragment;->isGlobal:Z

    .line 56
    iget-boolean p1, p0, Lcom/narvii/monetization/bubble/PickChatThreadListFragment;->isGlobal:Z

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    :cond_1
    invoke-virtual {p0, v0}, Lcom/narvii/app/theme/NVThemeFragment;->setNVThemeValue(I)V

    return-void
.end method

.method protected onCreateChatClicked()V
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/narvii/monetization/bubble/PickChatThreadListFragment;->threadHelper:Lcom/narvii/chat/thread/ThreadHelper;

    const-string v1, "stickerCollectionId"

    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, v2}, Lcom/narvii/chat/thread/ThreadHelper;->showCreateChatDialog(Ljava/lang/String;Lcom/narvii/model/ChatBubble;Ljava/lang/String;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public onThemeChange(I)V
    .locals 1

    .line 249
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onThemeChange(I)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 251
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f06007d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 252
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVListView;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchHeader(I)V

    .line 253
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVListView;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchFooter(I)V

    .line 254
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVListView;->setListContentBackgroundColor(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 256
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060181

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 257
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVListView;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchHeader(I)V

    .line 258
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVListView;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchFooter(I)V

    .line 259
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVListView;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVListView;->setListContentBackgroundColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onThreadPicked(Lcom/narvii/model/ChatThread;)V
    .locals 3

    .line 238
    const-class v0, Lcom/narvii/chat/ChatFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 239
    iget-object v1, p1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "thread"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "Source"

    const-string v1, "My chats"

    .line 241
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "stickerCollectionId"

    .line 242
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 244
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method
