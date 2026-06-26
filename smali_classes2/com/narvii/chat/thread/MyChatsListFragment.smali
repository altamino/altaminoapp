.class public Lcom/narvii/chat/thread/MyChatsListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "MyChatsListFragment.java"

# interfaces
.implements Lcom/narvii/chat/service/MyChatListObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/thread/MyChatsListFragment$SearchAdapter;,
        Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;,
        Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;,
        Lcom/narvii/chat/thread/MyChatsListFragment$ChatTitleAdapter;,
        Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter;,
        Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserWrapperAdapter;
    }
.end annotation


# static fields
.field private static final REQUEST_CODE_ADD_USER:I = 0x64

.field private static final TAG_SUB_FRAGMENT_INVITE:Ljava/lang/String; = "chatInvite"

.field private static final TAG_SUB_FRAGMENT_NOTIFICATION_WARNING:Ljava/lang/String; = "notification"

.field private static final TAG_SUB_FRAGMENT_ONLINE_MEMBER:Ljava/lang/String; = "onlineMember"


# instance fields
.field private accountService:Lcom/narvii/account/AccountService;

.field allMembersAdapter:Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;

.field private chatHelper:Lcom/narvii/chat/util/ChatHelper;

.field private chatRequestHelper:Lcom/narvii/chat/util/ChatRequestHelper;

.field private chatService:Lcom/narvii/chat/core/ChatService;

.field chatTitle:Lcom/narvii/chat/thread/MyChatsListFragment$ChatTitleAdapter;

.field private communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

.field private configService:Lcom/narvii/config/ConfigService;

.field favoriteUserAdapter:Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter;

.field favoriteUserWrappedAdapter:Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserWrapperAdapter;

.field private isPublicChatEnable:Z

.field private myChatEmptyView:Landroid/view/View;

.field myChatListAdapter:Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;

.field private myChatListService:Lcom/narvii/chat/service/MyChatListService;

.field private myChatManagePopUp:Lcom/narvii/chat/thread/MyChatManagePopUp;

.field private ndcId:I

.field private pushListener:Lcom/narvii/pushservice/PushService$PushListener;

.field private pushService:Lcom/narvii/pushservice/PushService;

.field private resumed:Z

.field searchAdapter:Lcom/narvii/chat/thread/MyChatsListFragment$SearchAdapter;

.field sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 104
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 1060
    new-instance v0, Lcom/narvii/chat/thread/MyChatsListFragment$6;

    invoke-direct {v0, p0}, Lcom/narvii/chat/thread/MyChatsListFragment$6;-><init>(Lcom/narvii/chat/thread/MyChatsListFragment;)V

    iput-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->pushListener:Lcom/narvii/pushservice/PushService$PushListener;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/chat/thread/MyChatsListFragment;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Lcom/narvii/chat/thread/MyChatsListFragment;->goToPublicChat()V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/chat/thread/MyChatsListFragment;)Lcom/narvii/modulization/CommunityConfigHelper;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/narvii/chat/thread/MyChatsListFragment;)Lcom/narvii/chat/core/ChatService;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/narvii/chat/thread/MyChatsListFragment;)Lcom/narvii/config/ConfigService;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->configService:Lcom/narvii/config/ConfigService;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/narvii/chat/thread/MyChatsListFragment;)Z
    .locals 0

    .line 104
    iget-boolean p0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->resumed:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/narvii/chat/thread/MyChatsListFragment;Lcom/narvii/pushservice/PushPayload;)Z
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lcom/narvii/chat/thread/MyChatsListFragment;->isAnnouncementMsg(Lcom/narvii/pushservice/PushPayload;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/narvii/chat/thread/MyChatsListFragment;)Lcom/narvii/chat/thread/MyChatManagePopUp;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->myChatManagePopUp:Lcom/narvii/chat/thread/MyChatManagePopUp;

    return-object p0
.end method

.method static synthetic access$502(Lcom/narvii/chat/thread/MyChatsListFragment;Lcom/narvii/chat/thread/MyChatManagePopUp;)Lcom/narvii/chat/thread/MyChatManagePopUp;
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->myChatManagePopUp:Lcom/narvii/chat/thread/MyChatManagePopUp;

    return-object p1
.end method

.method static synthetic access$600(Lcom/narvii/chat/thread/MyChatsListFragment;)I
    .locals 0

    .line 104
    iget p0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->ndcId:I

    return p0
.end method

.method static synthetic access$700(Lcom/narvii/chat/thread/MyChatsListFragment;)Lcom/narvii/account/AccountService;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->accountService:Lcom/narvii/account/AccountService;

    return-object p0
.end method

.method static synthetic access$800(Lcom/narvii/chat/thread/MyChatsListFragment;)Lcom/narvii/chat/service/MyChatListService;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->myChatListService:Lcom/narvii/chat/service/MyChatListService;

    return-object p0
.end method

.method static synthetic access$900(Lcom/narvii/chat/thread/MyChatsListFragment;)Lcom/narvii/chat/util/ChatHelper;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    return-object p0
.end method

.method private configSubFragment()V
    .locals 6

    .line 181
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "chatInvite"

    .line 182
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_0

    .line 184
    new-instance v2, Lcom/narvii/chat/invite/ChatInviteFragment;

    invoke-direct {v2}, Lcom/narvii/chat/invite/ChatInviteFragment;-><init>()V

    .line 185
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "Source"

    const-string v5, "Favorite User"

    .line 186
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-virtual {v2, v3}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 188
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    return-void
.end method

.method private goToPublicChat()V
    .locals 3

    .line 1044
    const-class v0, Lcom/narvii/chat/hangout/HangoutListFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Source"

    const-string v2, "My Chats Explore Button"

    .line 1045
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1046
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private isAnnouncementMsg(Lcom/narvii/pushservice/PushPayload;)Z
    .locals 1

    .line 1072
    iget p1, p1, Lcom/narvii/pushservice/PushPayload;->msgType:I

    const/16 v0, 0x79

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 2

    .line 310
    new-instance p1, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;-><init>(Lcom/narvii/chat/thread/MyChatsListFragment;)V

    iput-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->myChatListAdapter:Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;

    .line 311
    new-instance p1, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserWrapperAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserWrapperAdapter;-><init>(Lcom/narvii/chat/thread/MyChatsListFragment;)V

    iput-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->favoriteUserWrappedAdapter:Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserWrapperAdapter;

    .line 312
    new-instance p1, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter;-><init>(Lcom/narvii/chat/thread/MyChatsListFragment;)V

    iput-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->favoriteUserAdapter:Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter;

    .line 313
    iget-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->favoriteUserWrappedAdapter:Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserWrapperAdapter;

    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->favoriteUserAdapter:Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter;

    invoke-virtual {p1, v0}, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;->setRecycleAdapter(Lcom/narvii/widget/recycleview/NVRecycleAdapter;)V

    .line 314
    new-instance p1, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;-><init>(Lcom/narvii/chat/thread/MyChatsListFragment;)V

    iput-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->allMembersAdapter:Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;

    .line 315
    new-instance p1, Lcom/narvii/chat/thread/MyChatsListFragment$SearchAdapter;

    invoke-direct {p1, p0, p0}, Lcom/narvii/chat/thread/MyChatsListFragment$SearchAdapter;-><init>(Lcom/narvii/chat/thread/MyChatsListFragment;Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->searchAdapter:Lcom/narvii/chat/thread/MyChatsListFragment$SearchAdapter;

    .line 317
    new-instance p1, Lcom/narvii/chat/thread/MyChatsListFragment$ChatTitleAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/chat/thread/MyChatsListFragment$ChatTitleAdapter;-><init>(Lcom/narvii/chat/thread/MyChatsListFragment;)V

    iput-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->chatTitle:Lcom/narvii/chat/thread/MyChatsListFragment$ChatTitleAdapter;

    .line 318
    iget-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->chatTitle:Lcom/narvii/chat/thread/MyChatsListFragment$ChatTitleAdapter;

    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->myChatListAdapter:Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;

    invoke-virtual {p1, v0}, Lcom/narvii/list/NVSectionHeaderAdapter;->setAttachAdapter(Lcom/narvii/list/NVAdapter;)V

    .line 319
    iget-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->chatTitle:Lcom/narvii/chat/thread/MyChatsListFragment$ChatTitleAdapter;

    const v0, 0x7f0f0226

    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/list/NVSectionHeaderAdapter;->setTitle(Ljava/lang/String;)V

    .line 320
    iget-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->chatTitle:Lcom/narvii/chat/thread/MyChatsListFragment$ChatTitleAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/list/NVSectionHeaderAdapter;->setShowIndicator(Z)V

    .line 322
    new-instance p1, Lcom/narvii/chat/thread/MyChatsListFragment$5;

    invoke-direct {p1, p0, p0}, Lcom/narvii/chat/thread/MyChatsListFragment$5;-><init>(Lcom/narvii/chat/thread/MyChatsListFragment;Lcom/narvii/app/NVContext;)V

    .line 333
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->searchAdapter:Lcom/narvii/chat/thread/MyChatsListFragment$SearchAdapter;

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 334
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->allMembersAdapter:Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 335
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->favoriteUserWrappedAdapter:Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserWrapperAdapter;

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 336
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->chatTitle:Lcom/narvii/chat/thread/MyChatsListFragment$ChatTitleAdapter;

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 337
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->myChatListAdapter:Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    return-object p1
.end method

.method public delete(Lcom/narvii/model/ChatThread;)V
    .locals 3

    .line 1004
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "joinThread"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1006
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 1009
    :cond_0
    new-instance v0, Lcom/narvii/chat/util/ChatHelper;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    const-string v1, "id"

    .line 1010
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/narvii/chat/util/ChatHelper;->leaveChat(Ljava/lang/String;Lcom/narvii/model/ChatThread;Landroid/support/v4/app/FragmentManager;)V

    return-void
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "MyChatList"

    return-object v0
.end method

.method public getPostEntryLift()I
    .locals 1

    const/4 v0, 0x2

    .line 264
    invoke-static {p0, v0}, Lcom/narvii/util/ViewUtils;->getBannerLift(Lcom/narvii/app/NVContext;I)I

    move-result v0

    return v0
.end method

.method public isPageBackgroundEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public markRead(Lcom/narvii/model/ChatThread;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1026
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->chatRequestHelper:Lcom/narvii/chat/util/ChatRequestHelper;

    iget-object v1, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->configService:Lcom/narvii/config/ConfigService;

    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v1

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/narvii/chat/util/ChatRequestHelper;->markAsread(ILandroid/content/Context;Lcom/narvii/model/ChatThread;)V

    return-void
.end method

.method public markUnread(Lcom/narvii/model/ChatThread;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1017
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->chatRequestHelper:Lcom/narvii/chat/util/ChatRequestHelper;

    iget-object v1, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->configService:Lcom/narvii/config/ConfigService;

    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v1

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/narvii/chat/util/ChatRequestHelper;->markUnread(ILandroid/content/Context;Lcom/narvii/model/ChatThread;)V

    return-void
.end method

.method public onActiveChanged(Z)V
    .locals 2

    .line 301
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onActiveChanged(Z)V

    const-string v0, "liveLayer"

    .line 302
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/livelayer/LiveLayerService;

    if-eqz v0, :cond_0

    const-string v1, "my-chats"

    .line 304
    invoke-virtual {v0, v1, p1}, Lcom/narvii/livelayer/LiveLayerService;->reportBrowsing(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    const-string/jumbo v0, "userList"

    .line 454
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 455
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 456
    const-class v1, Lcom/narvii/model/User;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    .line 457
    iget-object v1, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->favoriteUserAdapter:Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter;

    invoke-virtual {v1, v0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->setListData(Ljava/util/List;)V

    .line 460
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 138
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 140
    new-instance v0, Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-direct {v0, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    const-string v0, "push"

    .line 141
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/pushservice/PushService;

    iput-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->pushService:Lcom/narvii/pushservice/PushService;

    .line 142
    new-instance v0, Lcom/narvii/chat/util/ChatHelper;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 143
    new-instance v0, Lcom/narvii/chat/util/ChatRequestHelper;

    invoke-direct {v0, p0}, Lcom/narvii/chat/util/ChatRequestHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->chatRequestHelper:Lcom/narvii/chat/util/ChatRequestHelper;

    const-string v0, "config"

    .line 144
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    iput-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->configService:Lcom/narvii/config/ConfigService;

    const-string v0, "prefs"

    .line 145
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v0, "chat"

    .line 146
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/core/ChatService;

    iput-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    const-string v0, "account"

    .line 147
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    iput-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->accountService:Lcom/narvii/account/AccountService;

    const-string v0, "myChatList"

    .line 148
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/service/MyChatListService;

    iput-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->myChatListService:Lcom/narvii/chat/service/MyChatListService;

    .line 149
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->myChatListService:Lcom/narvii/chat/service/MyChatListService;

    invoke-virtual {v0, p0}, Lcom/narvii/chat/service/MyChatListService;->addObserver(Lcom/narvii/chat/service/MyChatListObserver;)V

    if-nez p1, :cond_0

    .line 153
    iget-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->pushService:Lcom/narvii/pushservice/PushService;

    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->configService:Lcom/narvii/config/ConfigService;

    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/narvii/pushservice/PushService;->dismissNotification(II)V

    .line 159
    :cond_0
    invoke-direct {p0}, Lcom/narvii/chat/thread/MyChatsListFragment;->configSubFragment()V

    .line 160
    iget-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->configService:Lcom/narvii/config/ConfigService;

    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p1

    iput p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->ndcId:I

    .line 161
    iget-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {p1}, Lcom/narvii/modulization/CommunityConfigHelper;->isPostEnabled()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {p1}, Lcom/narvii/modulization/CommunityConfigHelper;->isPublicChatEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->isPublicChatEnable:Z

    const-string p1, "title"

    .line 162
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const p1, 0x7f0f0226

    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 163
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 165
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result p1

    if-nez p1, :cond_3

    .line 166
    new-instance p1, Lcom/narvii/chat/thread/MyChatsListFragment$1;

    invoke-direct {p1, p0}, Lcom/narvii/chat/thread/MyChatsListFragment$1;-><init>(Lcom/narvii/chat/thread/MyChatsListFragment;)V

    const-wide/16 v0, 0x4b0

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_3
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 279
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const p2, 0x7f0f02fd

    const/4 v0, 0x0

    .line 280
    invoke-interface {p1, v0, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    .line 281
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f0b0116

    goto :goto_0

    :cond_0
    const p2, 0x7f0b0117

    :goto_0
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 p2, 0x2

    .line 282
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 283
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0903db

    const v1, 0x3f59999a    # 0.85f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 284
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/narvii/chat/thread/MyChatsListFragment$4;

    invoke-direct {p2, p0}, Lcom/narvii/chat/thread/MyChatsListFragment$4;-><init>(Lcom/narvii/chat/thread/MyChatsListFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0550

    const/4 v0, 0x0

    .line 199
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 258
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    .line 259
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->myChatListService:Lcom/narvii/chat/service/MyChatListService;

    invoke-virtual {v0, p0}, Lcom/narvii/chat/service/MyChatListService;->removeObserver(Lcom/narvii/chat/service/MyChatListObserver;)V

    return-void
.end method

.method protected onErrorRetry()V
    .locals 3

    .line 345
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onErrorRetry()V

    .line 346
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->allMembersAdapter:Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 347
    invoke-virtual {v0, v1, v2}, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;->refresh(ILcom/narvii/util/Callback;)V

    :cond_0
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 1

    .line 204
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    const p1, 0x7f0b053f

    .line 205
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setEmptyView(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->myChatEmptyView:Landroid/view/View;

    .line 206
    iget-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->myChatEmptyView:Landroid/view/View;

    const p2, 0x7f09040f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-boolean v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->isPublicChatEnable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 207
    iget-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->myChatEmptyView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/narvii/chat/thread/MyChatsListFragment$2;

    invoke-direct {p2, p0}, Lcom/narvii/chat/thread/MyChatsListFragment$2;-><init>(Lcom/narvii/chat/thread/MyChatsListFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iget-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->myChatEmptyView:Landroid/view/View;

    const p2, 0x7f0903ea

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 217
    new-instance p2, Lcom/narvii/chat/thread/MyChatsListFragment$3;

    invoke-direct {p2, p0}, Lcom/narvii/chat/thread/MyChatsListFragment$3;-><init>(Lcom/narvii/chat/thread/MyChatsListFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->myChatEmptyView:Landroid/view/View;

    const p2, 0x7f090410

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 226
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0803f6

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 228
    invoke-static {p1}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public onMyChatListChanged(Lcom/narvii/chat/service/MyChatListService;Lcom/narvii/chat/thread/ThreadListResponse;)V
    .locals 0

    .line 361
    iget-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->myChatListAdapter:Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;

    if-eqz p1, :cond_0

    .line 362
    invoke-virtual {p1}, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 251
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onPause()V

    .line 252
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->pushService:Lcom/narvii/pushservice/PushService;

    iget-object v1, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->pushListener:Lcom/narvii/pushservice/PushService$PushListener;

    invoke-virtual {v0, v1}, Lcom/narvii/pushservice/PushService;->removePushListener(Lcom/narvii/pushservice/PushService$PushListener;)V

    const/4 v0, 0x0

    .line 253
    iput-boolean v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->resumed:Z

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    .line 295
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    const v0, 0x7f0f02fd

    .line 296
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isChatEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public onRefresh()V
    .locals 3

    .line 353
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onRefresh()V

    .line 354
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->allMembersAdapter:Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 355
    invoke-virtual {v0, v1, v2}, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;->refresh(ILcom/narvii/util/Callback;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 241
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onResume()V

    const/4 v0, 0x1

    .line 242
    iput-boolean v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->resumed:Z

    .line 243
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->myChatListAdapter:Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {v0}, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->onResume()V

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->pushService:Lcom/narvii/pushservice/PushService;

    iget-object v1, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->pushListener:Lcom/narvii/pushservice/PushService$PushListener;

    invoke-virtual {v0, v1}, Lcom/narvii/pushservice/PushService;->addPushListener(Lcom/narvii/pushservice/PushService$PushListener;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 234
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 235
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p2

    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->myChatListAdapter:Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method

.method public processPin(Lcom/narvii/model/ChatThread;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1034
    :cond_0
    iget-boolean v0, p1, Lcom/narvii/model/ChatThread;->isPinned:Z

    .line 1035
    iget-object v1, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->chatRequestHelper:Lcom/narvii/chat/util/ChatRequestHelper;

    iget-object v2, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->configService:Lcom/narvii/config/ConfigService;

    invoke-virtual {v2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v2

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p1}, Lcom/narvii/chat/util/ChatRequestHelper;->processPin(ILandroid/content/Context;Lcom/narvii/model/ChatThread;)V

    return-void
.end method

.method protected updateViews()V
    .locals 2

    .line 1051
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->updateViews()V

    .line 1052
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->myChatEmptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 1053
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1055
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->myChatListAdapter:Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1056
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->myChatListAdapter:Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;

    invoke-virtual {v1}, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    :cond_2
    return-void
.end method
