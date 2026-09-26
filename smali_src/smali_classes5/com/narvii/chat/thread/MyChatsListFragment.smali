.class public Lcom/narvii/chat/thread/MyChatsListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/chat/service/MyChatListObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;,
        Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserWrapperAdapter;,
        Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter;,
        Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;,
        Lcom/narvii/chat/thread/MyChatsListFragment$SearchAdapter;,
        Lcom/narvii/chat/thread/MyChatsListFragment$ChatTitleAdapter;
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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/chat/thread/MyChatsListFragment$5;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/chat/thread/MyChatsListFragment$5;-><init>(Lcom/narvii/chat/thread/MyChatsListFragment;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->pushListener:Lcom/narvii/pushservice/PushService$PushListener;

    .line 11
    return-void
.end method

.method static bridge synthetic A(Lcom/narvii/chat/thread/MyChatsListFragment;)Lcom/narvii/chat/thread/MyChatManagePopUp;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->myChatManagePopUp:Lcom/narvii/chat/thread/MyChatManagePopUp;

    return-object p0
.end method

.method static bridge synthetic B(Lcom/narvii/chat/thread/MyChatsListFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->ndcId:I

    return p0
.end method

.method static bridge synthetic C(Lcom/narvii/chat/thread/MyChatsListFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->resumed:Z

    return p0
.end method

.method static bridge synthetic D(Lcom/narvii/chat/thread/MyChatsListFragment;Lcom/narvii/chat/thread/MyChatManagePopUp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->myChatManagePopUp:Lcom/narvii/chat/thread/MyChatManagePopUp;

    return-void
.end method

.method static bridge synthetic E(Lcom/narvii/chat/thread/MyChatsListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/thread/MyChatsListFragment;->goToPublicChat()V

    return-void
.end method

.method static bridge synthetic F(Lcom/narvii/chat/thread/MyChatsListFragment;Lcom/narvii/pushservice/PushPayload;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/thread/MyChatsListFragment;->isAnnouncementMsg(Lcom/narvii/pushservice/PushPayload;)Z

    move-result p0

    return p0
.end method

.method private configSubFragment()V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "chatInvite"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 10
    move-result-object v2

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    new-instance v2, Lcom/narvii/chat/invite/ChatInviteFragment;

    .line 15
    .line 16
    .line 17
    invoke-direct {v2}, Lcom/narvii/chat/invite/ChatInviteFragment;-><init>()V

    .line 18
    .line 19
    new-instance v3, Landroid/os/Bundle;

    .line 20
    .line 21
    .line 22
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 23
    .line 24
    const-string v4, "Source"

    .line 25
    .line 26
    const-string v5, "Favorite User"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    const-string v1, "notification"

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    if-nez v0, :cond_1

    .line 56
    .line 57
    new-instance v0, Lcom/narvii/notice/NotificationTurnedOffWarningFragment;

    .line 58
    .line 59
    .line 60
    invoke-direct {v0}, Lcom/narvii/notice/NotificationTurnedOffWarningFragment;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 64
    move-result-object v2

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 68
    move-result-object v2

    .line 69
    .line 70
    .line 71
    const v3, 0x7f0a0a30

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v3, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 79
    :cond_1
    return-void
.end method

.method private goToPublicChat()V
    .locals 3

    .line 1
    .line 2
    const-class v0, Lcom/narvii/chat/hangout/HangoutListFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "Source"

    .line 9
    .line 10
    const-string v2, "My Chats Explore Button"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    invoke-static {p0, v0}, Lcom/narvii/chat/thread/MyChatsListFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 17
    return-void
.end method

.method private isAnnouncementMsg(Lcom/narvii/pushservice/PushPayload;)Z
    .locals 1

    .line 1
    .line 2
    iget p1, p1, Lcom/narvii/pushservice/PushPayload;->msgType:I

    .line 3
    .line 4
    const/16 v0, 0x79

    .line 5
    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    return p1
.end method

.method private synthetic lambda$onCreateOptionsMenu$0(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/chat/thread/ThreadHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/chat/thread/ThreadHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    const-string v0, "My Chats"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lcom/narvii/chat/thread/ThreadHelper;->showCreateChatDialog(Ljava/lang/String;)V

    .line 11
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

.method public static synthetic t(Lcom/narvii/chat/thread/MyChatsListFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/thread/MyChatsListFragment;->lambda$onCreateOptionsMenu$0(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic u(Lcom/narvii/chat/thread/MyChatsListFragment;)Lcom/narvii/account/AccountService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->accountService:Lcom/narvii/account/AccountService;

    return-object p0
.end method

.method static bridge synthetic v(Lcom/narvii/chat/thread/MyChatsListFragment;)Lcom/narvii/chat/util/ChatHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    return-object p0
.end method

.method static bridge synthetic w(Lcom/narvii/chat/thread/MyChatsListFragment;)Lcom/narvii/chat/core/ChatService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    return-object p0
.end method

.method static bridge synthetic x(Lcom/narvii/chat/thread/MyChatsListFragment;)Lcom/narvii/modulization/CommunityConfigHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    return-object p0
.end method

.method static bridge synthetic y(Lcom/narvii/chat/thread/MyChatsListFragment;)Lcom/narvii/config/ConfigService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->configService:Lcom/narvii/config/ConfigService;

    return-object p0
.end method

.method static bridge synthetic z(Lcom/narvii/chat/thread/MyChatsListFragment;)Lcom/narvii/chat/service/MyChatListService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->myChatListService:Lcom/narvii/chat/service/MyChatListService;

    return-object p0
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 2

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;-><init>(Lcom/narvii/chat/thread/MyChatsListFragment;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->myChatListAdapter:Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;

    .line 8
    .line 9
    new-instance p1, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserWrapperAdapter;

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, p0}, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserWrapperAdapter;-><init>(Lcom/narvii/chat/thread/MyChatsListFragment;)V

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->favoriteUserWrappedAdapter:Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserWrapperAdapter;

    .line 15
    .line 16
    new-instance p1, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter;

    .line 17
    .line 18
    .line 19
    invoke-direct {p1, p0}, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter;-><init>(Lcom/narvii/chat/thread/MyChatsListFragment;)V

    .line 20
    .line 21
    iput-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->favoriteUserAdapter:Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->favoriteUserWrappedAdapter:Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserWrapperAdapter;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;->setRecycleAdapter(Lcom/narvii/widget/recycleview/NVRecycleAdapter;)V

    .line 27
    .line 28
    new-instance p1, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;

    .line 29
    .line 30
    .line 31
    invoke-direct {p1, p0}, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;-><init>(Lcom/narvii/chat/thread/MyChatsListFragment;)V

    .line 32
    .line 33
    iput-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->allMembersAdapter:Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;

    .line 34
    .line 35
    new-instance p1, Lcom/narvii/chat/thread/MyChatsListFragment$SearchAdapter;

    .line 36
    .line 37
    .line 38
    invoke-direct {p1, p0, p0}, Lcom/narvii/chat/thread/MyChatsListFragment$SearchAdapter;-><init>(Lcom/narvii/chat/thread/MyChatsListFragment;Lcom/narvii/app/NVContext;)V

    .line 39
    .line 40
    iput-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->searchAdapter:Lcom/narvii/chat/thread/MyChatsListFragment$SearchAdapter;

    .line 41
    .line 42
    new-instance p1, Lcom/narvii/chat/thread/MyChatsListFragment$ChatTitleAdapter;

    .line 43
    .line 44
    .line 45
    invoke-direct {p1, p0}, Lcom/narvii/chat/thread/MyChatsListFragment$ChatTitleAdapter;-><init>(Lcom/narvii/chat/thread/MyChatsListFragment;)V

    .line 46
    .line 47
    iput-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->chatTitle:Lcom/narvii/chat/thread/MyChatsListFragment$ChatTitleAdapter;

    .line 48
    .line 49
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->myChatListAdapter:Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Lcom/narvii/list/NVSectionHeaderAdapter;->setAttachAdapter(Lcom/narvii/list/NVAdapter;)V

    .line 53
    .line 54
    iget-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->chatTitle:Lcom/narvii/chat/thread/MyChatsListFragment$ChatTitleAdapter;

    .line 55
    .line 56
    .line 57
    const v0, 0x7f120269

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v0}, Lcom/narvii/list/NVSectionHeaderAdapter;->setTitle(Ljava/lang/String;)V

    .line 65
    .line 66
    iget-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->chatTitle:Lcom/narvii/chat/thread/MyChatsListFragment$ChatTitleAdapter;

    .line 67
    const/4 v0, 0x0

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v0}, Lcom/narvii/list/NVSectionHeaderAdapter;->setShowIndicator(Z)V

    .line 71
    .line 72
    new-instance p1, Lcom/narvii/chat/thread/MyChatsListFragment$4;

    .line 73
    .line 74
    .line 75
    invoke-direct {p1, p0, p0}, Lcom/narvii/chat/thread/MyChatsListFragment$4;-><init>(Lcom/narvii/chat/thread/MyChatsListFragment;Lcom/narvii/app/NVContext;)V

    .line 76
    .line 77
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->searchAdapter:Lcom/narvii/chat/thread/MyChatsListFragment$SearchAdapter;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 81
    .line 82
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->allMembersAdapter:Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 86
    .line 87
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->favoriteUserWrappedAdapter:Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserWrapperAdapter;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 91
    .line 92
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->chatTitle:Lcom/narvii/chat/thread/MyChatsListFragment$ChatTitleAdapter;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 96
    .line 97
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->myChatListAdapter:Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;

    .line 98
    const/4 v1, 0x1

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 102
    return-object p1
.end method

.method public delete(Lcom/narvii/model/ChatThread;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "joinThread"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentTransaction;->t(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 28
    .line 29
    :cond_0
    new-instance v0, Lcom/narvii/chat/util/ChatHelper;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, v1}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    .line 37
    .line 38
    const-string v1, "id"

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 46
    move-result-object v2

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1, p1, v2}, Lcom/narvii/chat/util/ChatHelper;->leaveChat(Ljava/lang/String;Lcom/narvii/model/ChatThread;Landroidx/fragment/app/FragmentManager;)V

    .line 50
    return-void
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "my_chats_list"

    return-object v0
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

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->chatRequestHelper:Lcom/narvii/chat/util/ChatRequestHelper;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->configService:Lcom/narvii/config/ConfigService;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 11
    move-result v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 15
    move-result-object v2

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, v2, p1}, Lcom/narvii/chat/util/ChatRequestHelper;->markAsread(ILandroid/content/Context;Lcom/narvii/model/ChatThread;)V

    .line 19
    return-void
.end method

.method public markUnread(Lcom/narvii/model/ChatThread;)V
    .locals 3

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->chatRequestHelper:Lcom/narvii/chat/util/ChatRequestHelper;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->configService:Lcom/narvii/config/ConfigService;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 11
    move-result v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 15
    move-result-object v2

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, v2, p1}, Lcom/narvii/chat/util/ChatRequestHelper;->markUnread(ILandroid/content/Context;Lcom/narvii/model/ChatThread;)V

    .line 19
    .line 20
    const-string p1, "statistics"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 27
    .line 28
    const-string v0, "Mark Chat Thread As Unread"

    .line 29
    .line 30
    .line 31
    invoke-interface {p1, v0}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 32
    return-void
.end method

.method public onActiveChanged(Z)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onActiveChanged(Z)V

    .line 4
    .line 5
    const-string v0, "liveLayer"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Lcom/narvii/livelayer/LiveLayerService;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const-string v1, "my-chats"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, p1}, Lcom/narvii/livelayer/LiveLayerService;->reportBrowsing(Ljava/lang/String;Z)V

    .line 19
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 1
    .line 2
    const/16 v0, 0x64

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    const/4 v0, -0x1

    .line 6
    .line 7
    if-ne p2, v0, :cond_0

    .line 8
    .line 9
    if-eqz p3, :cond_0

    .line 10
    .line 11
    const-string v0, "userList"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    move-result v1

    .line 20
    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    const-class v1, Lcom/narvii/model/User;

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    iget-object v1, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->favoriteUserAdapter:Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserAdapter;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->setListData(Ljava/util/List;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 36
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/modulization/CommunityConfigHelper;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 11
    .line 12
    const-string v0, "push"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Lcom/narvii/pushservice/PushService;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->pushService:Lcom/narvii/pushservice/PushService;

    .line 21
    .line 22
    new-instance v0, Lcom/narvii/chat/util/ChatHelper;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v1}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    .line 30
    .line 31
    iput-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 32
    .line 33
    new-instance v0, Lcom/narvii/chat/util/ChatRequestHelper;

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, p0}, Lcom/narvii/chat/util/ChatRequestHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 37
    .line 38
    iput-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->chatRequestHelper:Lcom/narvii/chat/util/ChatRequestHelper;

    .line 39
    .line 40
    const-string v0, "config"

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 47
    .line 48
    iput-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->configService:Lcom/narvii/config/ConfigService;

    .line 49
    .line 50
    const-string v0, "prefs"

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    check-cast v0, Landroid/content/SharedPreferences;

    .line 57
    .line 58
    iput-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 59
    .line 60
    const-string v0, "chat"

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    check-cast v0, Lcom/narvii/chat/core/ChatService;

    .line 67
    .line 68
    iput-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 69
    .line 70
    const-string v0, "account"

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 77
    .line 78
    iput-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 79
    .line 80
    const-string v0, "myChatList"

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 84
    move-result-object v0

    .line 85
    .line 86
    check-cast v0, Lcom/narvii/chat/service/MyChatListService;

    .line 87
    .line 88
    iput-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->myChatListService:Lcom/narvii/chat/service/MyChatListService;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, p0}, Lcom/narvii/chat/service/MyChatListService;->addObserver(Lcom/narvii/chat/service/MyChatListObserver;)V

    .line 92
    .line 93
    if-nez p1, :cond_0

    .line 94
    .line 95
    iget-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->pushService:Lcom/narvii/pushservice/PushService;

    .line 96
    .line 97
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->configService:Lcom/narvii/config/ConfigService;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 101
    move-result v0

    .line 102
    const/4 v1, 0x2

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v0, v1}, Lcom/narvii/pushservice/PushService;->dismissNotification(II)V

    .line 106
    .line 107
    const-string p1, "statistics"

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 111
    move-result-object p1

    .line 112
    .line 113
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 114
    .line 115
    const-string v0, "My Chats Page Opened"

    .line 116
    .line 117
    .line 118
    invoke-interface {p1, v0}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 119
    move-result-object p1

    .line 120
    .line 121
    const-string v0, "My Chats Page Opened Total"

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 125
    move-result-object p1

    .line 126
    .line 127
    const-string v0, "Source"

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 131
    move-result-object v0

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 135
    .line 136
    .line 137
    :cond_0
    invoke-direct {p0}, Lcom/narvii/chat/thread/MyChatsListFragment;->configSubFragment()V

    .line 138
    .line 139
    iget-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->configService:Lcom/narvii/config/ConfigService;

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 143
    move-result p1

    .line 144
    .line 145
    iput p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->ndcId:I

    .line 146
    .line 147
    iget-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1}, Lcom/narvii/modulization/CommunityConfigHelper;->isPostEnabled()Z

    .line 151
    move-result p1

    .line 152
    const/4 v0, 0x1

    .line 153
    .line 154
    if-eqz p1, :cond_1

    .line 155
    .line 156
    iget-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1}, Lcom/narvii/modulization/CommunityConfigHelper;->isPublicChatEnabled()Z

    .line 160
    move-result p1

    .line 161
    .line 162
    if-eqz p1, :cond_1

    .line 163
    move p1, v0

    .line 164
    goto :goto_0

    .line 165
    :cond_1
    const/4 p1, 0x0

    .line 166
    .line 167
    :goto_0
    iput-boolean p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->isPublicChatEnable:Z

    .line 168
    .line 169
    const-string p1, "title"

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 173
    move-result-object v1

    .line 174
    .line 175
    .line 176
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 177
    move-result v1

    .line 178
    .line 179
    if-nez v1, :cond_2

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 183
    move-result-object p1

    .line 184
    goto :goto_1

    .line 185
    .line 186
    .line 187
    :cond_2
    const p1, 0x7f120269

    .line 188
    .line 189
    .line 190
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 191
    move-result-object p1

    .line 192
    .line 193
    .line 194
    :goto_1
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 201
    move-result p1

    .line 202
    .line 203
    if-nez p1, :cond_3

    .line 204
    .line 205
    new-instance p1, Lcom/narvii/chat/thread/MyChatsListFragment$1;

    .line 206
    .line 207
    .line 208
    invoke-direct {p1, p0}, Lcom/narvii/chat/thread/MyChatsListFragment$1;-><init>(Lcom/narvii/chat/thread/MyChatsListFragment;)V

    .line 209
    .line 210
    const-wide/16 v0, 0x4b0

    .line 211
    .line 212
    .line 213
    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 214
    :cond_3
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    .line 6
    .line 7
    const v0, 0x7f120352

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, p2, v0, p2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 15
    move-result p2

    .line 16
    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    .line 20
    const p2, 0x7f0d012f

    .line 21
    goto :goto_0

    .line 22
    .line 23
    .line 24
    :cond_0
    const p2, 0x7f0d0130

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 28
    move-result-object p1

    .line 29
    const/4 p2, 0x2

    .line 30
    .line 31
    .line 32
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    .line 37
    move-result-object p2

    .line 38
    .line 39
    .line 40
    const v0, 0x3f59999a    # 0.85f

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    .line 47
    const v1, 0x7f0a04da

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    new-instance p2, Lcom/narvii/chat/thread/b;

    .line 57
    .line 58
    .line 59
    invoke-direct {p2, p0}, Lcom/narvii/chat/thread/b;-><init>(Lcom/narvii/chat/thread/MyChatsListFragment;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d05f7

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->myChatListService:Lcom/narvii/chat/service/MyChatListService;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lcom/narvii/chat/service/MyChatListService;->removeObserver(Lcom/narvii/chat/service/MyChatListObserver;)V

    .line 9
    return-void
.end method

.method protected onErrorRetry()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onErrorRetry()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->allMembersAdapter:Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    const/4 v1, 0x2

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 13
    :cond_0
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f0d05e6

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setEmptyView(I)Landroid/view/View;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->myChatEmptyView:Landroid/view/View;

    .line 13
    .line 14
    .line 15
    const p2, 0x7f0a0547

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    iget-boolean v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->isPublicChatEnable:Z

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x4

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    iget-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->myChatEmptyView:Landroid/view/View;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    new-instance p2, Lcom/narvii/chat/thread/MyChatsListFragment$2;

    .line 38
    .line 39
    .line 40
    invoke-direct {p2, p0}, Lcom/narvii/chat/thread/MyChatsListFragment$2;-><init>(Lcom/narvii/chat/thread/MyChatsListFragment;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    .line 45
    iget-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->myChatEmptyView:Landroid/view/View;

    .line 46
    .line 47
    .line 48
    const p2, 0x7f0a04e9

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    if-eqz p1, :cond_1

    .line 55
    .line 56
    new-instance p2, Lcom/narvii/chat/thread/MyChatsListFragment$3;

    .line 57
    .line 58
    .line 59
    invoke-direct {p2, p0}, Lcom/narvii/chat/thread/MyChatsListFragment$3;-><init>(Lcom/narvii/chat/thread/MyChatsListFragment;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    .line 64
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->myChatEmptyView:Landroid/view/View;

    .line 65
    .line 66
    .line 67
    const p2, 0x7f0a0548

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 75
    move-result-object p2

    .line 76
    .line 77
    .line 78
    const v0, 0x7f08051e

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 82
    move-result-object p2

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    goto :goto_1

    .line 87
    :catch_0
    move-exception p1

    .line 88
    .line 89
    .line 90
    invoke-static {p1}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    .line 91
    :goto_1
    return-void
.end method

.method public onMyChatListChanged(Lcom/narvii/chat/service/MyChatListService;Lcom/narvii/chat/thread/ThreadListResponse;)V
    .locals 0
    .param p1    # Lcom/narvii/chat/service/MyChatListService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/chat/thread/ThreadListResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->myChatListAdapter:Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->notifyDataSetChanged()V

    .line 8
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onPause()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->pushService:Lcom/narvii/pushservice/PushService;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->pushListener:Lcom/narvii/pushservice/PushService$PushListener;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/narvii/pushservice/PushService;->removePushListener(Lcom/narvii/pushservice/PushService$PushListener;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->resumed:Z

    .line 14
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f120352

    .line 7
    .line 8
    .line 9
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isChatEnabled()Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 27
    return-void
.end method

.method public onRefresh()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onRefresh()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->allMembersAdapter:Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 13
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onResume()V

    .line 4
    .line 5
    sget-object v0, Lcom/narvii/app/ComScoreSectionDispatcher;->INSTANCE:Lcom/narvii/app/ComScoreSectionDispatcher;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/narvii/app/ComScoreSectionDispatcher;->sectionChangeToChat()V

    .line 9
    const/4 v0, 0x1

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->resumed:Z

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->myChatListAdapter:Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->onResume()V

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->pushService:Lcom/narvii/pushservice/PushService;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->pushListener:Lcom/narvii/pushservice/PushService$PushListener;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/narvii/pushservice/PushService;->addPushListener(Lcom/narvii/pushservice/PushService$PushListener;)V

    .line 26
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    iget-object p2, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->myChatListAdapter:Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 13
    return-void
.end method

.method public processPin(Lcom/narvii/model/ChatThread;)V
    .locals 4

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-boolean v0, p1, Lcom/narvii/model/ChatThread;->isPinned:Z

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->chatRequestHelper:Lcom/narvii/chat/util/ChatRequestHelper;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->configService:Lcom/narvii/config/ConfigService;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 13
    move-result v2

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 17
    move-result-object v3

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2, v3, p1}, Lcom/narvii/chat/util/ChatRequestHelper;->processPin(ILandroid/content/Context;Lcom/narvii/model/ChatThread;)V

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    const-string v0, "statistics"

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    check-cast v0, Lcom/narvii/util/statistics/StatisticsService;

    .line 31
    .line 32
    const-string v1, "User Pins a Chat"

    .line 33
    .line 34
    .line 35
    invoke-interface {v0, v1}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    const-string v1, "Others"

    .line 39
    .line 40
    .line 41
    invoke-static {p1, v1}, Lcom/narvii/util/StatisticHelper;->getChatThreadType(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    const-string v1, "Chat Type"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1, p1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    const-string v0, "Action Sheet"

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    const-string v0, "User Pins a Chat Total"

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 60
    :cond_1
    return-void
.end method

.method protected updateViews()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->updateViews()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->myChatEmptyView:Landroid/view/View;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    const/4 v1, 0x4

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->myChatListAdapter:Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    iget-object v1, p0, Lcom/narvii/chat/thread/MyChatsListFragment;->myChatListAdapter:Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->getCount()I

    .line 31
    move-result v1

    .line 32
    .line 33
    if-nez v1, :cond_1

    .line 34
    const/4 v1, 0x0

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v1, 0x1

    .line 37
    .line 38
    .line 39
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 40
    :cond_2
    return-void
.end method
