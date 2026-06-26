.class public Lcom/narvii/chat/ChatListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "ChatListFragment.java"

# interfaces
.implements Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;
.implements Lcom/narvii/chat/core/ChatService$VideoMessageProgressChangeListener;
.implements Lcom/narvii/chat/ChatMessageItem$onMentionedUserClickedListener;
.implements Lcom/narvii/chat/ThreadInfoHost;
.implements Lcom/narvii/chat/ChatMessageItem$OnSeeAllClickedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/ChatListFragment$Adapter;,
        Lcom/narvii/chat/ChatListFragment$TopMarginAdapter;
    }
.end annotation


# instance fields
.field private accountService:Lcom/narvii/account/AccountService;

.field adapter:Lcom/narvii/chat/ChatListFragment$Adapter;

.field audioHelper:Lcom/narvii/chat/audio/AudioHelper;

.field private avatarLongClicked:Z

.field private bubbleIdMapper:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private bubbleVersionMapper:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private chatHelper:Lcom/narvii/chat/util/ChatHelper;

.field chatPreferenceHelper:Lcom/narvii/chat/ChatPreferenceHelper;

.field private chatRequestHelper:Lcom/narvii/chat/util/ChatRequestHelper;

.field chatService:Lcom/narvii/chat/core/ChatService;

.field private chatThread:Lcom/narvii/model/ChatThread;

.field private configService:Lcom/narvii/config/ConfigService;

.field private curBubble:Lcom/narvii/model/ChatBubble;

.field private currentUser:Lcom/narvii/model/User;

.field private globalChatHelper:Lcom/narvii/chat/global/GlobalChatHelper;

.field private inviteMessageDate:Ljava/util/Date;

.field private lastTimeWelcomeMessageShow:J

.field private lbm:Landroid/support/v4/content/LocalBroadcastManager;

.field membershipService:Lcom/narvii/wallet/MembershipService;

.field protected myUid:Ljava/lang/String;

.field private ndcId:I

.field private newMessageCount:I

.field private newMsgContainer:Landroid/view/View;

.field private final pushListener:Lcom/narvii/pushservice/PushService$PushListener;

.field private pushService:Lcom/narvii/pushservice/PushService;

.field private reachBottom:Z

.field receiver:Landroid/content/BroadcastReceiver;

.field scrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field scrollToBottomFlag:Z

.field stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

.field touchMoved:Z

.field private tvNewMessage:Landroid/widget/TextView;

.field private welcomeMessageDate:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 112
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    const/4 v0, 0x1

    .line 120
    iput-boolean v0, p0, Lcom/narvii/chat/ChatListFragment;->scrollToBottomFlag:Z

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/ChatListFragment;->bubbleIdMapper:Ljava/util/HashMap;

    .line 137
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/ChatListFragment;->bubbleVersionMapper:Ljava/util/HashMap;

    .line 247
    new-instance v0, Lcom/narvii/chat/ChatListFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/chat/ChatListFragment$1;-><init>(Lcom/narvii/chat/ChatListFragment;)V

    iput-object v0, p0, Lcom/narvii/chat/ChatListFragment;->pushListener:Lcom/narvii/pushservice/PushService$PushListener;

    .line 342
    new-instance v0, Lcom/narvii/chat/ChatListFragment$3;

    invoke-direct {v0, p0}, Lcom/narvii/chat/ChatListFragment$3;-><init>(Lcom/narvii/chat/ChatListFragment;)V

    iput-object v0, p0, Lcom/narvii/chat/ChatListFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 1802
    new-instance v0, Lcom/narvii/chat/ChatListFragment$6;

    invoke-direct {v0, p0}, Lcom/narvii/chat/ChatListFragment$6;-><init>(Lcom/narvii/chat/ChatListFragment;)V

    iput-object v0, p0, Lcom/narvii/chat/ChatListFragment;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/chat/ChatListFragment;Lcom/narvii/pushservice/PushPayload;)Z
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Lcom/narvii/chat/ChatListFragment;->isCallMessageRelatedPush(Lcom/narvii/pushservice/PushPayload;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/narvii/chat/ChatListFragment;)Z
    .locals 0

    .line 112
    iget-boolean p0, p0, Lcom/narvii/chat/ChatListFragment;->avatarLongClicked:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/narvii/chat/ChatListFragment;)Lcom/narvii/model/User;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/narvii/chat/ChatListFragment;->currentUser:Lcom/narvii/model/User;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/narvii/chat/ChatListFragment;Lcom/narvii/model/User;)Lcom/narvii/model/User;
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/narvii/chat/ChatListFragment;->currentUser:Lcom/narvii/model/User;

    return-object p1
.end method

.method static synthetic access$102(Lcom/narvii/chat/ChatListFragment;Z)Z
    .locals 0

    .line 112
    iput-boolean p1, p0, Lcom/narvii/chat/ChatListFragment;->avatarLongClicked:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/narvii/chat/ChatListFragment;)I
    .locals 0

    .line 112
    iget p0, p0, Lcom/narvii/chat/ChatListFragment;->ndcId:I

    return p0
.end method

.method static synthetic access$1200(Lcom/narvii/chat/ChatListFragment;)Lcom/narvii/chat/util/ChatRequestHelper;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/narvii/chat/ChatListFragment;->chatRequestHelper:Lcom/narvii/chat/util/ChatRequestHelper;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/narvii/chat/ChatListFragment;)Lcom/narvii/model/ChatThread;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/narvii/chat/ChatListFragment;->chatThread:Lcom/narvii/model/ChatThread;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/narvii/chat/ChatListFragment;Lcom/narvii/model/ChatThread;)Lcom/narvii/model/ChatThread;
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/narvii/chat/ChatListFragment;->chatThread:Lcom/narvii/model/ChatThread;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/narvii/chat/ChatListFragment;)Lcom/narvii/model/ChatBubble;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/narvii/chat/ChatListFragment;->curBubble:Lcom/narvii/model/ChatBubble;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/narvii/chat/ChatListFragment;Lcom/narvii/model/ChatBubble;)Lcom/narvii/model/ChatBubble;
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/narvii/chat/ChatListFragment;->curBubble:Lcom/narvii/model/ChatBubble;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/narvii/chat/ChatListFragment;)Z
    .locals 0

    .line 112
    invoke-direct {p0}, Lcom/narvii/chat/ChatListFragment;->shouldShowWelcomeMessage()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcom/narvii/chat/ChatListFragment;)Ljava/util/Date;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/narvii/chat/ChatListFragment;->welcomeMessageDate:Ljava/util/Date;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/narvii/chat/ChatListFragment;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/narvii/chat/ChatListFragment;->welcomeMessageDate:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/narvii/chat/ChatListFragment;)Ljava/util/Date;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/narvii/chat/ChatListFragment;->inviteMessageDate:Ljava/util/Date;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/narvii/chat/ChatListFragment;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/narvii/chat/ChatListFragment;->inviteMessageDate:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/narvii/chat/ChatListFragment;Lcom/narvii/model/ChatMessage;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Lcom/narvii/chat/ChatListFragment;->showNormalMessageDetail(Lcom/narvii/model/ChatMessage;)V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/chat/ChatListFragment;)Z
    .locals 0

    .line 112
    iget-boolean p0, p0, Lcom/narvii/chat/ChatListFragment;->reachBottom:Z

    return p0
.end method

.method static synthetic access$2000(Lcom/narvii/chat/ChatListFragment;)Z
    .locals 0

    .line 112
    invoke-direct {p0}, Lcom/narvii/chat/ChatListFragment;->checkCommunityAvailability()Z

    move-result p0

    return p0
.end method

.method static synthetic access$202(Lcom/narvii/chat/ChatListFragment;Z)Z
    .locals 0

    .line 112
    iput-boolean p1, p0, Lcom/narvii/chat/ChatListFragment;->reachBottom:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/narvii/chat/ChatListFragment;Lcom/narvii/model/User;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Lcom/narvii/chat/ChatListFragment;->startChat(Lcom/narvii/model/User;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/narvii/chat/ChatListFragment;)Z
    .locals 0

    .line 112
    invoke-direct {p0}, Lcom/narvii/chat/ChatListFragment;->checkCommunityJoined()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2600(Lcom/narvii/chat/ChatListFragment;)Lcom/narvii/chat/global/GlobalChatHelper;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/narvii/chat/ChatListFragment;->globalChatHelper:Lcom/narvii/chat/global/GlobalChatHelper;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/chat/ChatListFragment;)I
    .locals 0

    .line 112
    iget p0, p0, Lcom/narvii/chat/ChatListFragment;->newMessageCount:I

    return p0
.end method

.method static synthetic access$302(Lcom/narvii/chat/ChatListFragment;I)I
    .locals 0

    .line 112
    iput p1, p0, Lcom/narvii/chat/ChatListFragment;->newMessageCount:I

    return p1
.end method

.method static synthetic access$308(Lcom/narvii/chat/ChatListFragment;)I
    .locals 2

    .line 112
    iget v0, p0, Lcom/narvii/chat/ChatListFragment;->newMessageCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/narvii/chat/ChatListFragment;->newMessageCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/narvii/chat/ChatListFragment;)V
    .locals 0

    .line 112
    invoke-direct {p0}, Lcom/narvii/chat/ChatListFragment;->updateNewMessage()V

    return-void
.end method

.method static synthetic access$500(Lcom/narvii/chat/ChatListFragment;)Lcom/narvii/config/ConfigService;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/narvii/chat/ChatListFragment;->configService:Lcom/narvii/config/ConfigService;

    return-object p0
.end method

.method static synthetic access$600(Lcom/narvii/chat/ChatListFragment;)Lcom/narvii/chat/util/ChatHelper;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/narvii/chat/ChatListFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    return-object p0
.end method

.method static synthetic access$700(Lcom/narvii/chat/ChatListFragment;)Lcom/narvii/account/AccountService;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/narvii/chat/ChatListFragment;->accountService:Lcom/narvii/account/AccountService;

    return-object p0
.end method

.method static synthetic access$800(Lcom/narvii/chat/ChatListFragment;)Ljava/util/HashMap;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/narvii/chat/ChatListFragment;->bubbleIdMapper:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$900(Lcom/narvii/chat/ChatListFragment;)Ljava/util/HashMap;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/narvii/chat/ChatListFragment;->bubbleVersionMapper:Ljava/util/HashMap;

    return-object p0
.end method

.method private checkCommunityAvailability()Z
    .locals 4

    const-string v0, "config"

    .line 417
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 418
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    .line 419
    iget-object v1, p0, Lcom/narvii/chat/ChatListFragment;->globalChatHelper:Lcom/narvii/chat/global/GlobalChatHelper;

    new-instance v2, Lcom/narvii/chat/ChatListFragment$4;

    invoke-direct {v2, p0}, Lcom/narvii/chat/ChatListFragment$4;-><init>(Lcom/narvii/chat/ChatListFragment;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lcom/narvii/chat/global/GlobalChatHelper;->tryJoinCommunity(IZLcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private checkCommunityJoined()Z
    .locals 3

    const-string v0, "account"

    .line 1747
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 1748
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1749
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v0, "config"

    .line 1752
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 1753
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    .line 1754
    iget-object v1, p0, Lcom/narvii/chat/ChatListFragment;->globalChatHelper:Lcom/narvii/chat/global/GlobalChatHelper;

    new-instance v2, Lcom/narvii/chat/ChatListFragment$5;

    invoke-direct {v2, p0, v0}, Lcom/narvii/chat/ChatListFragment$5;-><init>(Lcom/narvii/chat/ChatListFragment;I)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/chat/global/GlobalChatHelper;->checkCommunityJoined(ILcom/narvii/util/Callback;)Z

    move-result v0

    return v0
.end method

.method private isCallMessageRelatedPush(Lcom/narvii/pushservice/PushPayload;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 270
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/pushservice/PushPayload;->isCallCancelMessage()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/narvii/pushservice/PushPayload;->isTimeoutMessage()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/narvii/pushservice/PushPayload;->isDeclineMessage()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/narvii/pushservice/PushPayload;->isCallInviteType()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private shouldShowWelcomeMessage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private showNormalMessageDetail(Lcom/narvii/model/ChatMessage;)V
    .locals 3

    .line 1795
    const-class v0, Lcom/narvii/chat/MessageContentDetailFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1796
    invoke-virtual {p0}, Lcom/narvii/chat/ChatListFragment;->getThreadId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "threadId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1797
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1798
    invoke-virtual {p0}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "thread"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1799
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private startChat(Lcom/narvii/model/User;)V
    .locals 3

    .line 1773
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "config"

    .line 1774
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 1775
    new-instance v1, Lcom/narvii/chat/util/ChatHelper;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    .line 1776
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1, p1}, Lcom/narvii/chat/util/ChatHelper;->canChatWithCurrentUserInGlobalLevel(Lcom/narvii/model/User;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1777
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "chatInvite"

    .line 1778
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/invite/ChatInviteFragment;

    if-eqz v0, :cond_2

    .line 1780
    invoke-virtual {p1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/chat/invite/ChatInviteFragment;->startChat(Ljava/lang/String;)V

    goto :goto_0

    .line 1784
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "chat"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1785
    invoke-virtual {p1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1786
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateNewMessage()V
    .locals 6

    .line 467
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment;->tvNewMessage:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment;->newMsgContainer:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_1

    .line 470
    :cond_0
    iget v1, p0, Lcom/narvii/chat/ChatListFragment;->newMessageCount:I

    const/4 v2, 0x0

    if-gtz v1, :cond_1

    .line 472
    iput v2, p0, Lcom/narvii/chat/ChatListFragment;->newMessageCount:I

    const/16 v1, 0x8

    .line 473
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 475
    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    if-ne v1, v0, :cond_2

    .line 477
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment;->tvNewMessage:Landroid/widget/TextView;

    const v1, 0x7f0f0c19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 479
    :cond_2
    iget-object v3, p0, Lcom/narvii/chat/ChatListFragment;->tvNewMessage:Landroid/widget/TextView;

    const v4, 0x7f0f0c1a

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v5, 0x1f4

    if-le v1, v5, :cond_3

    const-string v1, "500+ "

    goto :goto_0

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    aput-object v1, v0, v2

    invoke-virtual {p0, v4, v0}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method protected addTopMargin()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 2

    .line 288
    new-instance p1, Lcom/narvii/list/ReverseAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/list/ReverseAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 289
    invoke-virtual {p0}, Lcom/narvii/chat/ChatListFragment;->mainAdapter()Lcom/narvii/chat/ChatListFragment$Adapter;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/ChatListFragment;->adapter:Lcom/narvii/chat/ChatListFragment$Adapter;

    invoke-virtual {p1, v0}, Lcom/narvii/list/ProxyAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 290
    new-instance v0, Lcom/narvii/list/MergeAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 291
    invoke-virtual {p0}, Lcom/narvii/chat/ChatListFragment;->addTopMargin()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 292
    new-instance v1, Lcom/narvii/chat/ChatListFragment$TopMarginAdapter;

    invoke-direct {v1, p0}, Lcom/narvii/chat/ChatListFragment$TopMarginAdapter;-><init>(Lcom/narvii/chat/ChatListFragment;)V

    invoke-virtual {v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    const/4 v1, 0x1

    .line 294
    invoke-virtual {v0, p1, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 297
    new-instance p1, Lcom/narvii/adapter/MarginAdapter;

    const/4 v1, 0x3

    invoke-direct {p1, p0, v1}, Lcom/narvii/adapter/MarginAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    invoke-virtual {v0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    return-object v0
.end method

.method public delete(Lcom/narvii/model/ChatMessage;)V
    .locals 2

    .line 1791
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment;->chatRequestHelper:Lcom/narvii/chat/util/ChatRequestHelper;

    invoke-virtual {p0}, Lcom/narvii/chat/ChatListFragment;->getThreadId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/narvii/chat/util/ChatRequestHelper;->sendDeleteChatMessageRequest(Ljava/lang/String;Lcom/narvii/model/ChatMessage;)V

    return-void
.end method

.method public getThread()Lcom/narvii/model/ChatThread;
    .locals 1

    .line 385
    sget-object v0, Lcom/narvii/chat/util/ChatHelper;->Companion:Lcom/narvii/chat/util/ChatHelper$Companion;

    invoke-virtual {v0, p0}, Lcom/narvii/chat/util/ChatHelper$Companion;->getThreadFromThreadInfoHost(Lcom/narvii/app/NVFragment;)Lcom/narvii/model/ChatThread;

    move-result-object v0

    return-object v0
.end method

.method public getThreadId()Ljava/lang/String;
    .locals 1

    const-string v0, "id"

    .line 380
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isValidPage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$null$0$ChatListFragment()V
    .locals 2

    .line 368
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    return-void
.end method

.method public synthetic lambda$onMentionedUserClicked$2$ChatListFragment(Lcom/narvii/model/User;ILcom/narvii/model/NVObject;)V
    .locals 1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 575
    invoke-static {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p2, "Source"

    const-string p3, "Chat Thread"

    .line 577
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 578
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    .line 580
    instance-of p2, p3, Lcom/narvii/model/User;

    if-eqz p2, :cond_2

    move-object p1, p3

    check-cast p1, Lcom/narvii/model/User;

    .line 581
    :cond_2
    invoke-direct {p0, p1}, Lcom/narvii/chat/ChatListFragment;->startChat(Lcom/narvii/model/User;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public synthetic lambda$onViewCreated$1$ChatListFragment(Landroid/view/View;)V
    .locals 1

    .line 367
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    new-instance v0, Lcom/narvii/chat/-$$Lambda$ChatListFragment$fHj2MxLZ-GBNIGhhJtJBcRm5aCw;

    invoke-direct {v0, p0}, Lcom/narvii/chat/-$$Lambda$ChatListFragment$fHj2MxLZ-GBNIGhhJtJBcRm5aCw;-><init>(Lcom/narvii/chat/ChatListFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected mainAdapter()Lcom/narvii/chat/ChatListFragment$Adapter;
    .locals 1

    .line 306
    new-instance v0, Lcom/narvii/chat/ChatListFragment$Adapter;

    invoke-direct {v0, p0}, Lcom/narvii/chat/ChatListFragment$Adapter;-><init>(Lcom/narvii/chat/ChatListFragment;)V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 163
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "account"

    .line 165
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    iput-object v0, p0, Lcom/narvii/chat/ChatListFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 166
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/ChatListFragment;->currentUser:Lcom/narvii/model/User;

    .line 167
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/ChatListFragment;->myUid:Ljava/lang/String;

    .line 168
    new-instance v0, Lcom/narvii/chat/util/ChatHelper;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/narvii/chat/ChatListFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 169
    new-instance v0, Lcom/narvii/chat/util/ChatRequestHelper;

    invoke-direct {v0, p0}, Lcom/narvii/chat/util/ChatRequestHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/chat/ChatListFragment;->chatRequestHelper:Lcom/narvii/chat/util/ChatRequestHelper;

    const-string v0, "chat"

    .line 170
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/core/ChatService;

    iput-object v0, p0, Lcom/narvii/chat/ChatListFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 172
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    invoke-virtual {p0}, Lcom/narvii/chat/ChatListFragment;->getThreadId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/narvii/chat/core/ChatService;->addThreadLvelRecptor(Ljava/lang/String;Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V

    .line 173
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    invoke-virtual {p0}, Lcom/narvii/chat/ChatListFragment;->getThreadId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/narvii/chat/core/ChatService;->addVideoMessagePostListener(Ljava/lang/String;Lcom/narvii/chat/core/ChatService$VideoMessageProgressChangeListener;)V

    const-string v0, "push"

    .line 174
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/pushservice/PushService;

    iput-object v0, p0, Lcom/narvii/chat/ChatListFragment;->pushService:Lcom/narvii/pushservice/PushService;

    .line 175
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment;->pushService:Lcom/narvii/pushservice/PushService;

    iget-object v1, p0, Lcom/narvii/chat/ChatListFragment;->pushListener:Lcom/narvii/pushservice/PushService$PushListener;

    invoke-virtual {v0, v1}, Lcom/narvii/pushservice/PushService;->addPushListener(Lcom/narvii/pushservice/PushService$PushListener;)V

    const-string v0, "config"

    .line 176
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    iput-object v0, p0, Lcom/narvii/chat/ChatListFragment;->configService:Lcom/narvii/config/ConfigService;

    .line 177
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment;->configService:Lcom/narvii/config/ConfigService;

    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    iput v0, p0, Lcom/narvii/chat/ChatListFragment;->ndcId:I

    .line 179
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 181
    new-instance v0, Lcom/narvii/chat/audio/AudioHelper;

    invoke-direct {v0, p0}, Lcom/narvii/chat/audio/AudioHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/chat/ChatListFragment;->audioHelper:Lcom/narvii/chat/audio/AudioHelper;

    .line 182
    new-instance v0, Lcom/narvii/chat/global/GlobalChatHelper;

    invoke-direct {v0, p0}, Lcom/narvii/chat/global/GlobalChatHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/chat/ChatListFragment;->globalChatHelper:Lcom/narvii/chat/global/GlobalChatHelper;

    const-string v0, "membership"

    .line 183
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/wallet/MembershipService;

    iput-object v0, p0, Lcom/narvii/chat/ChatListFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 185
    new-instance v0, Lcom/narvii/monetization/sticker/StickerHelper;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/sticker/StickerHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/chat/ChatListFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    .line 186
    new-instance v0, Lcom/narvii/chat/ChatPreferenceHelper;

    invoke-direct {v0, p0}, Lcom/narvii/chat/ChatPreferenceHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/chat/ChatListFragment;->chatPreferenceHelper:Lcom/narvii/chat/ChatPreferenceHelper;

    if-nez p1, :cond_0

    .line 189
    new-instance p1, Lcom/narvii/chat/invite/ChatInviteFragment;

    invoke-direct {p1}, Lcom/narvii/chat/invite/ChatInviteFragment;-><init>()V

    .line 190
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "Source"

    const-string v2, "Chat Thread"

    .line 191
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 193
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "chatInvite"

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 195
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/ChatListFragment;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    .line 196
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.narvii.action.BUBBLE_PACKAGE_READY"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 197
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 198
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment;->chatPreferenceHelper:Lcom/narvii/chat/ChatPreferenceHelper;

    invoke-virtual {p0}, Lcom/narvii/chat/ChatListFragment;->getThreadId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/chat/ChatPreferenceHelper;->getLastWelcomeMessageShowTime(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/narvii/chat/ChatListFragment;->lastTimeWelcomeMessageShow:J

    .line 199
    invoke-virtual {p0}, Lcom/narvii/chat/ChatListFragment;->getThreadId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 200
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b00c3

    const/4 v0, 0x0

    .line 276
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 207
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    .line 208
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    invoke-virtual {p0}, Lcom/narvii/chat/ChatListFragment;->getThreadId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/narvii/chat/core/ChatService;->removeThreadLevelReceptor(Ljava/lang/String;Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V

    .line 209
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment;->pushService:Lcom/narvii/pushservice/PushService;

    iget-object v1, p0, Lcom/narvii/chat/ChatListFragment;->pushListener:Lcom/narvii/pushservice/PushService$PushListener;

    invoke-virtual {v0, v1}, Lcom/narvii/pushservice/PushService;->removePushListener(Lcom/narvii/pushservice/PushService$PushListener;)V

    .line 210
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/narvii/chat/ChatListFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 211
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/narvii/chat/ChatListFragment;->getThreadId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/narvii/chat/core/ChatService;->removeVideoMessagePostListener(Ljava/lang/String;Lcom/narvii/chat/core/ChatService$VideoMessageProgressChangeListener;)V

    :cond_0
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 1

    .line 316
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 317
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    .line 318
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 319
    new-instance p2, Lcom/narvii/chat/ChatListFragment$2;

    invoke-direct {p2, p0}, Lcom/narvii/chat/ChatListFragment$2;-><init>(Lcom/narvii/chat/ChatListFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 335
    instance-of p2, p1, Lcom/narvii/chat/ChatListView;

    if-eqz p2, :cond_0

    .line 336
    move-object p2, p1

    check-cast p2, Lcom/narvii/chat/ChatListView;

    iget-boolean v0, p0, Lcom/narvii/list/NVListFragment;->isSwipeRefreshEnabled:Z

    invoke-virtual {p2, v0}, Lcom/narvii/chat/ChatListView;->setRevertedSwipeRefreshEnabled(Z)V

    .line 338
    :cond_0
    iget-object p2, p0, Lcom/narvii/chat/ChatListFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method public onMentionedUserClicked(Ljava/lang/String;)V
    .locals 4

    .line 566
    invoke-direct {p0}, Lcom/narvii/chat/ChatListFragment;->checkCommunityAvailability()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 569
    :cond_0
    new-instance v0, Lcom/narvii/model/User;

    invoke-direct {v0}, Lcom/narvii/model/User;-><init>()V

    .line 570
    iput-object p1, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 571
    new-instance p1, Lcom/narvii/chat/profile/ChatUserInfoEntryHelper;

    invoke-direct {p1, p0}, Lcom/narvii/chat/profile/ChatUserInfoEntryHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 572
    invoke-virtual {p0}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v1

    new-instance v2, Lcom/narvii/chat/-$$Lambda$ChatListFragment$nTiBM0_CxudvmM7xeB_syn1ozNc;

    invoke-direct {v2, p0, v0}, Lcom/narvii/chat/-$$Lambda$ChatListFragment$nTiBM0_CxudvmM7xeB_syn1ozNc;-><init>(Lcom/narvii/chat/ChatListFragment;Lcom/narvii/model/User;)V

    const-string v3, "Chat Thread"

    invoke-virtual {p1, v1, v0, v3, v2}, Lcom/narvii/chat/profile/ChatUserInfoEntryHelper;->showUserInfoInChatThread(Lcom/narvii/model/ChatThread;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/onlinestatus/UserDialog$UserDialogClickListener;)V

    return-void
.end method

.method public onNewChatMessage(ILcom/narvii/chat/util/ChatMessageDto;)V
    .locals 9

    .line 486
    iget-boolean p1, p0, Lcom/narvii/chat/ChatListFragment;->reachBottom:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isResumed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 487
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    invoke-virtual {p1, p2, v0}, Lcom/narvii/chat/core/ChatService;->sendChatMessageAck(Lcom/narvii/chat/util/ChatMessageDto;Z)V

    .line 490
    :cond_0
    iget-object p1, p2, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->isThreadDestroyMessage()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 494
    :cond_1
    iget-object p1, p2, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    iget p1, p1, Lcom/narvii/model/ChatMessage;->type:I

    const/16 v1, 0x78

    const/4 v2, 0x0

    if-ne p1, v1, :cond_3

    .line 495
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/chat/ChatFragment;

    if-eqz p1, :cond_2

    .line 496
    new-instance p1, Lcom/narvii/tipping/model/TipLog;

    invoke-direct {p1}, Lcom/narvii/tipping/model/TipLog;-><init>()V

    .line 497
    iget-object p2, p2, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    iget-object v1, p2, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    iput-object v1, p1, Lcom/narvii/tipping/model/TipLog;->tipper:Lcom/narvii/model/User;

    .line 498
    iget-object p2, p2, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "tippingCoins"

    aput-object v1, v0, v2

    invoke-static {p2, v0}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result p2

    iput p2, p1, Lcom/narvii/tipping/model/TipLog;->totalTippedCoins:I

    .line 499
    iget p2, p1, Lcom/narvii/tipping/model/TipLog;->totalTippedCoins:I

    if-lez p2, :cond_2

    .line 500
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p2

    check-cast p2, Lcom/narvii/chat/ChatFragment;

    invoke-virtual {p2, p1}, Lcom/narvii/chat/ChatFragment;->onNewTipLog(Lcom/narvii/tipping/model/TipLog;)V

    :cond_2
    return-void

    :cond_3
    const/16 v1, 0x80

    if-eq p1, v1, :cond_10

    const/16 v3, 0x81

    if-ne p1, v3, :cond_4

    goto/16 :goto_5

    :cond_4
    const/16 v1, 0x77

    if-eq p1, v1, :cond_c

    const-string/jumbo v3, "update"

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_4

    .line 543
    :pswitch_0
    invoke-virtual {p0}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object p1

    if-nez p1, :cond_5

    move-object p1, v4

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/ChatThread;

    :goto_0
    if-nez p1, :cond_6

    goto :goto_1

    .line 544
    :cond_6
    iget-object v4, p1, Lcom/narvii/model/ChatThread;->membersSummary:Ljava/util/List;

    :goto_1
    if-eqz p1, :cond_d

    if-eqz v4, :cond_d

    .line 546
    iget v2, p1, Lcom/narvii/model/ChatThread;->membersCount:I

    sub-int/2addr v2, v0

    iput v2, p1, Lcom/narvii/model/ChatThread;->membersCount:I

    .line 547
    new-instance v0, Lcom/narvii/notification/Notification;

    invoke-direct {v0, v3, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 548
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->sendNotification(Lcom/narvii/notification/Notification;)V

    goto :goto_4

    .line 521
    :pswitch_1
    invoke-virtual {p0}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object p1

    if-nez p1, :cond_7

    move-object p1, v4

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/ChatThread;

    :goto_2
    if-nez p1, :cond_8

    goto :goto_3

    .line 522
    :cond_8
    iget-object v4, p1, Lcom/narvii/model/ChatThread;->membersSummary:Ljava/util/List;

    :goto_3
    if-eqz p1, :cond_d

    if-eqz v4, :cond_d

    .line 525
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/narvii/model/User;

    .line 526
    iget-object v7, v6, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    iget-object v8, p2, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    invoke-virtual {v8}, Lcom/narvii/model/ChatMessage;->uid()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 527
    iput v0, v6, Lcom/narvii/model/User;->membershipStatus:I

    const/4 v2, 0x1

    :cond_a
    if-nez v2, :cond_b

    .line 532
    iget-object v2, p2, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    iget-object v2, v2, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    if-eqz v2, :cond_b

    .line 533
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 536
    :cond_b
    iget v2, p1, Lcom/narvii/model/ChatThread;->membersCount:I

    add-int/2addr v2, v0

    iput v2, p1, Lcom/narvii/model/ChatThread;->membersCount:I

    .line 537
    new-instance v0, Lcom/narvii/notification/Notification;

    invoke-direct {v0, v3, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 538
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->sendNotification(Lcom/narvii/notification/Notification;)V

    goto :goto_4

    .line 517
    :cond_c
    :pswitch_2
    new-instance p1, Lcom/narvii/notification/Notification;

    iget-object v0, p2, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    const-string v2, "delete"

    invoke-direct {p1, v2, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 518
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 555
    :cond_d
    :goto_4
    iget-object p1, p2, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    iget p2, p1, Lcom/narvii/model/ChatMessage;->type:I

    if-ne p2, v1, :cond_e

    return-void

    .line 558
    :cond_e
    iget-boolean p2, p1, Lcom/narvii/model/ChatMessage;->isHidden:Z

    if-eqz p2, :cond_f

    return-void

    .line 561
    :cond_f
    iget-object p2, p0, Lcom/narvii/chat/ChatListFragment;->adapter:Lcom/narvii/chat/ChatListFragment$Adapter;

    invoke-virtual {p2, p1}, Lcom/narvii/chat/ChatListFragment$Adapter;->appendNewChatMessage(Lcom/narvii/model/ChatMessage;)V

    return-void

    .line 508
    :cond_10
    :goto_5
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/chat/ChatFragment;

    if-eqz p1, :cond_12

    .line 509
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/ChatFragment;

    iget-object p2, p2, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    iget p2, p2, Lcom/narvii/model/ChatMessage;->type:I

    if-ne p2, v1, :cond_11

    goto :goto_6

    :cond_11
    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p1, v0}, Lcom/narvii/chat/ChatFragment;->onTipEnableChanged(Z)V

    :cond_12
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onProgressUpdate(II)V
    .locals 0

    .line 281
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment;->adapter:Lcom/narvii/chat/ChatListFragment$Adapter;

    if-eqz p1, :cond_0

    .line 282
    invoke-virtual {p1}, Lcom/narvii/chat/ChatListFragment$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onResetChatMessageList()V
    .locals 1

    .line 459
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment;->adapter:Lcom/narvii/chat/ChatListFragment$Adapter;

    invoke-virtual {v0}, Lcom/narvii/chat/ChatListFragment$Adapter;->resetChatList()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 218
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onResume()V

    .line 219
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment;->accountService:Lcom/narvii/account/AccountService;

    if-nez v0, :cond_0

    const-string v0, "account"

    .line 220
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    iput-object v0, p0, Lcom/narvii/chat/ChatListFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/ChatListFragment;->myUid:Ljava/lang/String;

    return-void
.end method

.method public onSeeAllClicked(Lcom/narvii/model/ChatMessage;)V
    .locals 0

    .line 592
    invoke-direct {p0, p1}, Lcom/narvii/chat/ChatListFragment;->showNormalMessageDetail(Lcom/narvii/model/ChatMessage;)V

    return-void
.end method

.method public onStop()V
    .locals 4

    .line 227
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onStop()V

    .line 228
    invoke-direct {p0}, Lcom/narvii/chat/ChatListFragment;->shouldShowWelcomeMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment;->chatPreferenceHelper:Lcom/narvii/chat/ChatPreferenceHelper;

    invoke-virtual {p0}, Lcom/narvii/chat/ChatListFragment;->getThreadId()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/chat/ChatPreferenceHelper;->saveLastWelcomeMessageShowTime(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public onThreadChanged(Lcom/narvii/model/ChatThread;)V
    .locals 1

    .line 390
    invoke-virtual {p0}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/ChatListFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 391
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment;->chatThread:Lcom/narvii/model/ChatThread;

    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/model/ChatThread;->getCurBubble(Ljava/lang/String;)Lcom/narvii/model/ChatBubble;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/ChatListFragment;->curBubble:Lcom/narvii/model/ChatBubble;

    .line 393
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment;->adapter:Lcom/narvii/chat/ChatListFragment$Adapter;

    if-eqz p1, :cond_0

    .line 394
    invoke-virtual {p1}, Lcom/narvii/chat/ChatListFragment$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onUnreadThreadCountChanged(I)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 363
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f090759

    .line 364
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/chat/ChatListFragment;->tvNewMessage:Landroid/widget/TextView;

    .line 365
    iget-object p2, p0, Lcom/narvii/chat/ChatListFragment;->tvNewMessage:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    .line 366
    new-instance v0, Lcom/narvii/chat/-$$Lambda$ChatListFragment$u0VDTx5HVm7YGtTqJitSTgHjFQE;

    invoke-direct {v0, p0}, Lcom/narvii/chat/-$$Lambda$ChatListFragment$u0VDTx5HVm7YGtTqJitSTgHjFQE;-><init>(Lcom/narvii/chat/ChatListFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const p2, 0x7f09075a

    .line 372
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/ChatListFragment;->newMsgContainer:Landroid/view/View;

    .line 373
    iget-object p1, p0, Lcom/narvii/list/NVListFragment;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    .line 374
    invoke-virtual {p1, p2}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setReversed(Z)V

    :cond_1
    return-void
.end method

.method public openMiniProfile(Lcom/narvii/model/User;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1824
    :cond_0
    invoke-direct {p0}, Lcom/narvii/chat/ChatListFragment;->checkCommunityAvailability()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 1827
    :cond_1
    new-instance v0, Lcom/narvii/chat/profile/ChatUserInfoEntryHelper;

    invoke-direct {v0, p0}, Lcom/narvii/chat/profile/ChatUserInfoEntryHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 1828
    invoke-virtual {p0}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v1

    new-instance v2, Lcom/narvii/chat/ChatListFragment$7;

    invoke-direct {v2, p0, p1}, Lcom/narvii/chat/ChatListFragment$7;-><init>(Lcom/narvii/chat/ChatListFragment;Lcom/narvii/model/User;)V

    const-string v3, "Chat Thread"

    invoke-virtual {v0, v1, p1, v3, v2}, Lcom/narvii/chat/profile/ChatUserInfoEntryHelper;->showUserInfoInChatThread(Lcom/narvii/model/ChatThread;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/onlinestatus/UserDialog$UserDialogClickListener;)V

    return-void
.end method

.method public resend(Lcom/narvii/model/ChatMessage;)V
    .locals 2

    .line 1766
    iget v0, p1, Lcom/narvii/model/ChatMessage;->_status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget p1, p1, Lcom/narvii/model/ChatMessage;->clientRefId:I

    if-eqz p1, :cond_0

    .line 1767
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    invoke-virtual {v0, p1}, Lcom/narvii/chat/core/ChatService;->retryPost(I)V

    :cond_0
    return-void
.end method

.method public scrollToBottom()V
    .locals 3

    .line 399
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 403
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 407
    :cond_1
    :try_start_0
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 409
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    sub-int/2addr v0, v1

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method protected setListContentBgWhenHasPageBackground()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected shouldInitSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
