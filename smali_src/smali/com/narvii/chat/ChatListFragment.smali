.class public Lcom/narvii/chat/ChatListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"

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


# static fields
.field private static final AD_UNIT_FIREBASE:Ljava/lang/String; = "AM_2985_android_ads_on_chat_thread_screen"


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

.field private lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/chat/ChatListFragment;->scrollToBottomFlag:Z

    .line 7
    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/chat/ChatListFragment;->bubbleIdMapper:Ljava/util/HashMap;

    .line 14
    .line 15
    new-instance v0, Ljava/util/HashMap;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 19
    .line 20
    iput-object v0, p0, Lcom/narvii/chat/ChatListFragment;->bubbleVersionMapper:Ljava/util/HashMap;

    .line 21
    .line 22
    new-instance v0, Lcom/narvii/chat/ChatListFragment$1;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, p0}, Lcom/narvii/chat/ChatListFragment$1;-><init>(Lcom/narvii/chat/ChatListFragment;)V

    .line 26
    .line 27
    iput-object v0, p0, Lcom/narvii/chat/ChatListFragment;->pushListener:Lcom/narvii/pushservice/PushService$PushListener;

    .line 28
    .line 29
    new-instance v0, Lcom/narvii/chat/ChatListFragment$3;

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, p0}, Lcom/narvii/chat/ChatListFragment$3;-><init>(Lcom/narvii/chat/ChatListFragment;)V

    .line 33
    .line 34
    iput-object v0, p0, Lcom/narvii/chat/ChatListFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 35
    .line 36
    new-instance v0, Lcom/narvii/chat/ChatListFragment$6;

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, p0}, Lcom/narvii/chat/ChatListFragment$6;-><init>(Lcom/narvii/chat/ChatListFragment;)V

    .line 40
    .line 41
    iput-object v0, p0, Lcom/narvii/chat/ChatListFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 42
    return-void
.end method

.method static bridge synthetic A(Lcom/narvii/chat/ChatListFragment;)Lcom/narvii/chat/util/ChatHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/ChatListFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    return-object p0
.end method

.method static bridge synthetic B(Lcom/narvii/chat/ChatListFragment;)Lcom/narvii/chat/util/ChatRequestHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/ChatListFragment;->chatRequestHelper:Lcom/narvii/chat/util/ChatRequestHelper;

    return-object p0
.end method

.method static bridge synthetic C(Lcom/narvii/chat/ChatListFragment;)Lcom/narvii/model/ChatThread;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/ChatListFragment;->chatThread:Lcom/narvii/model/ChatThread;

    return-object p0
.end method

.method static bridge synthetic D(Lcom/narvii/chat/ChatListFragment;)Lcom/narvii/config/ConfigService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/ChatListFragment;->configService:Lcom/narvii/config/ConfigService;

    return-object p0
.end method

.method static bridge synthetic E(Lcom/narvii/chat/ChatListFragment;)Lcom/narvii/model/ChatBubble;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/ChatListFragment;->curBubble:Lcom/narvii/model/ChatBubble;

    return-object p0
.end method

.method static bridge synthetic F(Lcom/narvii/chat/ChatListFragment;)Lcom/narvii/model/User;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/ChatListFragment;->currentUser:Lcom/narvii/model/User;

    return-object p0
.end method

.method static bridge synthetic G(Lcom/narvii/chat/ChatListFragment;)Lcom/narvii/chat/global/GlobalChatHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/ChatListFragment;->globalChatHelper:Lcom/narvii/chat/global/GlobalChatHelper;

    return-object p0
.end method

.method static bridge synthetic H(Lcom/narvii/chat/ChatListFragment;)Ljava/util/Date;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/ChatListFragment;->inviteMessageDate:Ljava/util/Date;

    return-object p0
.end method

.method static bridge synthetic I(Lcom/narvii/chat/ChatListFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/chat/ChatListFragment;->ndcId:I

    return p0
.end method

.method static bridge synthetic J(Lcom/narvii/chat/ChatListFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/chat/ChatListFragment;->newMessageCount:I

    return p0
.end method

.method static bridge synthetic K(Lcom/narvii/chat/ChatListFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/chat/ChatListFragment;->reachBottom:Z

    return p0
.end method

.method static bridge synthetic L(Lcom/narvii/chat/ChatListFragment;)Ljava/util/Date;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/ChatListFragment;->welcomeMessageDate:Ljava/util/Date;

    return-object p0
.end method

.method static bridge synthetic M(Lcom/narvii/chat/ChatListFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/chat/ChatListFragment;->avatarLongClicked:Z

    return-void
.end method

.method static bridge synthetic N(Lcom/narvii/chat/ChatListFragment;Lcom/narvii/model/ChatThread;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/chat/ChatListFragment;->chatThread:Lcom/narvii/model/ChatThread;

    return-void
.end method

.method static bridge synthetic O(Lcom/narvii/chat/ChatListFragment;Lcom/narvii/model/ChatBubble;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/chat/ChatListFragment;->curBubble:Lcom/narvii/model/ChatBubble;

    return-void
.end method

.method static bridge synthetic P(Lcom/narvii/chat/ChatListFragment;Lcom/narvii/model/User;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/chat/ChatListFragment;->currentUser:Lcom/narvii/model/User;

    return-void
.end method

.method static bridge synthetic Q(Lcom/narvii/chat/ChatListFragment;Ljava/util/Date;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/chat/ChatListFragment;->inviteMessageDate:Ljava/util/Date;

    return-void
.end method

.method static bridge synthetic R(Lcom/narvii/chat/ChatListFragment;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/chat/ChatListFragment;->newMessageCount:I

    return-void
.end method

.method static bridge synthetic S(Lcom/narvii/chat/ChatListFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/chat/ChatListFragment;->reachBottom:Z

    return-void
.end method

.method static bridge synthetic T(Lcom/narvii/chat/ChatListFragment;Ljava/util/Date;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/chat/ChatListFragment;->welcomeMessageDate:Ljava/util/Date;

    return-void
.end method

.method static bridge synthetic U(Lcom/narvii/chat/ChatListFragment;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/ChatListFragment;->checkCommunityAvailability()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic V(Lcom/narvii/chat/ChatListFragment;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/ChatListFragment;->checkCommunityJoined()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic W(Lcom/narvii/chat/ChatListFragment;Lcom/narvii/pushservice/PushPayload;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/ChatListFragment;->isCallMessageRelatedPush(Lcom/narvii/pushservice/PushPayload;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic X(Lcom/narvii/chat/ChatListFragment;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/ChatListFragment;->shouldShowWelcomeMessage()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic Y(Lcom/narvii/chat/ChatListFragment;Lcom/narvii/model/ChatMessage;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/ChatListFragment;->showNormalMessageDetail(Lcom/narvii/model/ChatMessage;)V

    return-void
.end method

.method static bridge synthetic Z(Lcom/narvii/chat/ChatListFragment;Lcom/narvii/model/User;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/ChatListFragment;->startChat(Lcom/narvii/model/User;)V

    return-void
.end method

.method static bridge synthetic a0(Lcom/narvii/chat/ChatListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/ChatListFragment;->updateNewMessage()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/chat/ChatListFragment;)Lai/medialab/medialabads2/banners/MediaLabAdView;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/list/NVListFragment;->adView:Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/chat/ChatListFragment;)Lai/medialab/medialabads2/banners/MediaLabAdView;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/list/NVListFragment;->adView:Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/chat/ChatListFragment;)Lai/medialab/medialabads2/banners/MediaLabAdView;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/list/NVListFragment;->adView:Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/chat/ChatListFragment;)Lai/medialab/medialabads2/banners/MediaLabAdView;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/list/NVListFragment;->adView:Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 3
    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/chat/ChatListFragment;)Lai/medialab/medialabads2/banners/MediaLabAdView;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/list/NVListFragment;->adView:Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 3
    return-object p0
.end method

.method static synthetic access$500(Lcom/narvii/chat/ChatListFragment;)Lai/medialab/medialabads2/banners/MediaLabAdView;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/list/NVListFragment;->adView:Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 3
    return-object p0
.end method

.method private checkCommunityAvailability()Z
    .locals 4

    .line 1
    .line 2
    const-string v0, "config"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 12
    move-result v0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/chat/ChatListFragment;->globalChatHelper:Lcom/narvii/chat/global/GlobalChatHelper;

    .line 15
    .line 16
    new-instance v2, Lcom/narvii/chat/ChatListFragment$4;

    .line 17
    .line 18
    .line 19
    invoke-direct {v2, p0}, Lcom/narvii/chat/ChatListFragment$4;-><init>(Lcom/narvii/chat/ChatListFragment;)V

    .line 20
    const/4 v3, 0x0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0, v3, v2}, Lcom/narvii/chat/global/GlobalChatHelper;->tryJoinCommunity(IZLcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;)Z

    .line 24
    move-result v0

    .line 25
    .line 26
    xor-int/lit8 v0, v0, 0x1

    .line 27
    return v0
.end method

.method private checkCommunityJoined()Z
    .locals 3

    .line 1
    .line 2
    const-string v0, "account"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    new-instance v0, Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    .line 23
    const/4 v0, 0x0

    .line 24
    return v0

    .line 25
    .line 26
    :cond_0
    const-string v0, "config"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 36
    move-result v0

    .line 37
    .line 38
    iget-object v1, p0, Lcom/narvii/chat/ChatListFragment;->globalChatHelper:Lcom/narvii/chat/global/GlobalChatHelper;

    .line 39
    .line 40
    new-instance v2, Lcom/narvii/chat/ChatListFragment$5;

    .line 41
    .line 42
    .line 43
    invoke-direct {v2, p0, v0}, Lcom/narvii/chat/ChatListFragment$5;-><init>(Lcom/narvii/chat/ChatListFragment;I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v0, v2}, Lcom/narvii/chat/global/GlobalChatHelper;->checkCommunityJoined(ILcom/narvii/util/Callback;)Z

    .line 47
    move-result v0

    .line 48
    return v0
.end method

.method private isCallMessageRelatedPush(Lcom/narvii/pushservice/PushPayload;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/pushservice/PushPayload;->isCallCancelMessage()Z

    .line 8
    move-result v1

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/narvii/pushservice/PushPayload;->isTimeoutMessage()Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/pushservice/PushPayload;->isDeclineMessage()Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/narvii/pushservice/PushPayload;->isCallInviteType()Z

    .line 26
    move-result p1

    .line 27
    .line 28
    if-eqz p1, :cond_2

    .line 29
    :cond_1
    const/4 v0, 0x1

    .line 30
    :cond_2
    return v0
.end method

.method private synthetic lambda$onMentionedUserClicked$2(Lcom/narvii/model/User;ILcom/narvii/model/NVObject;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    if-ne p2, v0, :cond_1

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    return-void

    .line 11
    .line 12
    :cond_0
    const-string p2, "Source"

    .line 13
    .line 14
    const-string p3, "Chat Thread"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    invoke-static {p0, p1}, Lcom/narvii/chat/ChatListFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 v0, 0x1

    .line 23
    .line 24
    if-ne p2, v0, :cond_3

    .line 25
    .line 26
    instance-of p2, p3, Lcom/narvii/model/User;

    .line 27
    .line 28
    if-eqz p2, :cond_2

    .line 29
    move-object p1, p3

    .line 30
    .line 31
    check-cast p1, Lcom/narvii/model/User;

    .line 32
    .line 33
    .line 34
    :cond_2
    invoke-direct {p0, p1}, Lcom/narvii/chat/ChatListFragment;->startChat(Lcom/narvii/model/User;)V

    .line 35
    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic lambda$onViewCreated$0()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getCount()I

    .line 12
    move-result v1

    .line 13
    .line 14
    add-int/lit8 v1, v1, -0x1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 18
    return-void
.end method

.method private synthetic lambda$onViewCreated$1(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    new-instance v0, Lcom/narvii/chat/q;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/narvii/chat/q;-><init>(Lcom/narvii/chat/ChatListFragment;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 13
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

.method private shouldShowWelcomeMessage()Z
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget v3, v0, Lcom/narvii/model/ChatThread;->type:I

    .line 11
    .line 12
    if-eqz v3, :cond_0

    .line 13
    move v3, v2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v3, v1

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 19
    move-result-wide v4

    .line 20
    .line 21
    iget-wide v6, p0, Lcom/narvii/chat/ChatListFragment;->lastTimeWelcomeMessageShow:J

    .line 22
    sub-long/2addr v4, v6

    .line 23
    .line 24
    .line 25
    const-wide/32 v6, 0x5265c00

    .line 26
    .line 27
    cmp-long v4, v4, v6

    .line 28
    .line 29
    if-lez v4, :cond_1

    .line 30
    move v4, v2

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move v4, v1

    .line 33
    .line 34
    :goto_1
    if-eqz v0, :cond_2

    .line 35
    .line 36
    iget v5, v0, Lcom/narvii/model/ChatThread;->membershipStatus:I

    .line 37
    .line 38
    if-eq v5, v2, :cond_2

    .line 39
    move v5, v2

    .line 40
    goto :goto_2

    .line 41
    :cond_2
    move v5, v1

    .line 42
    .line 43
    :goto_2
    if-eqz v0, :cond_3

    .line 44
    .line 45
    iget-object v0, v0, Lcom/narvii/model/ChatThread;->content:Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->compactContent(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 53
    move-result v0

    .line 54
    .line 55
    if-nez v0, :cond_3

    .line 56
    move v0, v2

    .line 57
    goto :goto_3

    .line 58
    :cond_3
    move v0, v1

    .line 59
    .line 60
    :goto_3
    if-eqz v3, :cond_5

    .line 61
    .line 62
    if-nez v5, :cond_4

    .line 63
    .line 64
    if-eqz v4, :cond_5

    .line 65
    .line 66
    :cond_4
    if-eqz v0, :cond_5

    .line 67
    move v1, v2

    .line 68
    :cond_5
    return v1
.end method

.method private showNormalMessageDetail(Lcom/narvii/model/ChatMessage;)V
    .locals 3

    .line 1
    .line 2
    const-class v0, Lcom/narvii/chat/MessageContentDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string/jumbo v1, "threadId"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/chat/ChatListFragment;->getThreadId()Ljava/lang/String;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    .line 17
    const-string v1, "message"

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    const-string/jumbo v1, "thread"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    invoke-static {p0, v0}, Lcom/narvii/chat/ChatListFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 41
    return-void
.end method

.method private startChat(Lcom/narvii/model/User;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    const-string v0, "config"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 17
    .line 18
    new-instance v1, Lcom/narvii/chat/util/ChatHelper;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    .line 25
    invoke-direct {v1, v2}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 29
    move-result v0

    .line 30
    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p1}, Lcom/narvii/chat/util/ChatHelper;->canChatWithCurrentUserInGlobalLevel(Lcom/narvii/model/User;)Z

    .line 35
    move-result v0

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    const-string v1, "chatInvite"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    check-cast v0, Lcom/narvii/chat/invite/ChatInviteFragment;

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, p1}, Lcom/narvii/chat/invite/ChatInviteFragment;->startChat(Ljava/lang/String;)V

    .line 59
    goto :goto_0

    .line 60
    .line 61
    :cond_1
    new-instance v0, Landroid/content/Intent;

    .line 62
    .line 63
    const-string v1, "chat"

    .line 64
    .line 65
    .line 66
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    const-string/jumbo v1, "uid"

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    .line 72
    move-result-object p1

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    .line 79
    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic t(Lcom/narvii/chat/ChatListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/ChatListFragment;->lambda$onViewCreated$0()V

    return-void
.end method

.method public static synthetic u(Lcom/narvii/chat/ChatListFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/ChatListFragment;->lambda$onViewCreated$1(Landroid/view/View;)V

    return-void
.end method

.method private updateNewMessage()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment;->tvNewMessage:Landroid/widget/TextView;

    .line 3
    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment;->newMsgContainer:Landroid/view/View;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    goto :goto_1

    .line 10
    .line 11
    :cond_0
    iget v1, p0, Lcom/narvii/chat/ChatListFragment;->newMessageCount:I

    .line 12
    const/4 v2, 0x0

    .line 13
    .line 14
    if-gtz v1, :cond_1

    .line 15
    .line 16
    iput v2, p0, Lcom/narvii/chat/ChatListFragment;->newMessageCount:I

    .line 17
    .line 18
    const/16 v1, 0x8

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    goto :goto_1

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 26
    const/4 v0, 0x1

    .line 27
    .line 28
    if-ne v1, v0, :cond_2

    .line 29
    .line 30
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment;->tvNewMessage:Landroid/widget/TextView;

    .line 31
    .line 32
    .line 33
    const v1, 0x7f120d49

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 37
    goto :goto_1

    .line 38
    .line 39
    :cond_2
    iget-object v3, p0, Lcom/narvii/chat/ChatListFragment;->tvNewMessage:Landroid/widget/TextView;

    .line 40
    .line 41
    new-array v0, v0, [Ljava/lang/Object;

    .line 42
    .line 43
    const/16 v4, 0x1f4

    .line 44
    .line 45
    if-le v1, v4, :cond_3

    .line 46
    .line 47
    const-string v1, "500+ "

    .line 48
    goto :goto_0

    .line 49
    .line 50
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v1, " "

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object v1

    .line 66
    .line 67
    :goto_0
    aput-object v1, v0, v2

    .line 68
    .line 69
    .line 70
    const v1, 0x7f120d4a

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    :cond_4
    :goto_1
    return-void
.end method

.method public static synthetic v(Lcom/narvii/chat/ChatListFragment;Lcom/narvii/model/User;ILcom/narvii/model/NVObject;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/chat/ChatListFragment;->lambda$onMentionedUserClicked$2(Lcom/narvii/model/User;ILcom/narvii/model/NVObject;)V

    return-void
.end method

.method static bridge synthetic w(Lcom/narvii/chat/ChatListFragment;)Lcom/narvii/account/AccountService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/ChatListFragment;->accountService:Lcom/narvii/account/AccountService;

    return-object p0
.end method

.method static bridge synthetic x(Lcom/narvii/chat/ChatListFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/chat/ChatListFragment;->avatarLongClicked:Z

    return p0
.end method

.method static bridge synthetic y(Lcom/narvii/chat/ChatListFragment;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/ChatListFragment;->bubbleIdMapper:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic z(Lcom/narvii/chat/ChatListFragment;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/ChatListFragment;->bubbleVersionMapper:Ljava/util/HashMap;

    return-object p0
.end method


# virtual methods
.method protected addTopMargin()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 2

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/list/ReverseAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/list/ReverseAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/chat/ChatListFragment;->mainAdapter()Lcom/narvii/chat/ChatListFragment$Adapter;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/chat/ChatListFragment;->adapter:Lcom/narvii/chat/ChatListFragment$Adapter;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lcom/narvii/list/ProxyAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 15
    .line 16
    new-instance v0, Lcom/narvii/list/MergeAdapter;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/narvii/chat/ChatListFragment;->addTopMargin()Z

    .line 23
    move-result v1

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    new-instance v1, Lcom/narvii/chat/ChatListFragment$TopMarginAdapter;

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, p0}, Lcom/narvii/chat/ChatListFragment$TopMarginAdapter;-><init>(Lcom/narvii/chat/ChatListFragment;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 34
    :cond_0
    const/4 v1, 0x1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p1, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 38
    .line 39
    new-instance p1, Lcom/narvii/adapter/MarginAdapter;

    .line 40
    const/4 v1, 0x3

    .line 41
    .line 42
    .line 43
    invoke-direct {p1, p0, v1}, Lcom/narvii/adapter/MarginAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 47
    return-object v0
.end method

.method public delete(Lcom/narvii/model/ChatMessage;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment;->chatRequestHelper:Lcom/narvii/chat/util/ChatRequestHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/chat/ChatListFragment;->getThreadId()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, p1}, Lcom/narvii/chat/util/ChatRequestHelper;->sendDeleteChatMessageRequest(Ljava/lang/String;Lcom/narvii/model/ChatMessage;)V

    .line 10
    return-void
.end method

.method public getThread()Lcom/narvii/model/ChatThread;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/chat/util/ChatHelper;->Companion:Lcom/narvii/chat/util/ChatHelper$Companion;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/narvii/chat/util/ChatHelper$Companion;->getThreadFromThreadInfoHost(Lcom/narvii/app/NVFragment;)Lcom/narvii/model/ChatThread;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getThreadId()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    const-string v0, "id"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
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

.method protected mainAdapter()Lcom/narvii/chat/ChatListFragment$Adapter;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/chat/ChatListFragment$Adapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/chat/ChatListFragment$Adapter;-><init>(Lcom/narvii/chat/ChatListFragment;)V

    .line 6
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "account"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/chat/ChatListFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    iput-object v0, p0, Lcom/narvii/chat/ChatListFragment;->currentUser:Lcom/narvii/model/User;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    iput-object v0, p0, Lcom/narvii/chat/ChatListFragment;->myUid:Ljava/lang/String;

    .line 28
    .line 29
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
    iput-object v0, p0, Lcom/narvii/chat/ChatListFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 39
    .line 40
    new-instance v0, Lcom/narvii/chat/util/ChatRequestHelper;

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, p0}, Lcom/narvii/chat/util/ChatRequestHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 44
    .line 45
    iput-object v0, p0, Lcom/narvii/chat/ChatListFragment;->chatRequestHelper:Lcom/narvii/chat/util/ChatRequestHelper;

    .line 46
    .line 47
    const-string v0, "chat"

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    check-cast v0, Lcom/narvii/chat/core/ChatService;

    .line 54
    .line 55
    iput-object v0, p0, Lcom/narvii/chat/ChatListFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/narvii/chat/ChatListFragment;->getThreadId()Ljava/lang/String;

    .line 59
    move-result-object v1

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1, p0}, Lcom/narvii/chat/core/ChatService;->addThreadLvelRecptor(Ljava/lang/String;Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V

    .line 63
    .line 64
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/narvii/chat/ChatListFragment;->getThreadId()Ljava/lang/String;

    .line 68
    move-result-object v1

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1, p0}, Lcom/narvii/chat/core/ChatService;->addVideoMessagePostListener(Ljava/lang/String;Lcom/narvii/chat/core/ChatService$VideoMessageProgressChangeListener;)V

    .line 72
    .line 73
    const-string v0, "push"

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 77
    move-result-object v0

    .line 78
    .line 79
    check-cast v0, Lcom/narvii/pushservice/PushService;

    .line 80
    .line 81
    iput-object v0, p0, Lcom/narvii/chat/ChatListFragment;->pushService:Lcom/narvii/pushservice/PushService;

    .line 82
    .line 83
    iget-object v1, p0, Lcom/narvii/chat/ChatListFragment;->pushListener:Lcom/narvii/pushservice/PushService$PushListener;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1}, Lcom/narvii/pushservice/PushService;->addPushListener(Lcom/narvii/pushservice/PushService$PushListener;)V

    .line 87
    .line 88
    const-string v0, "config"

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 92
    move-result-object v0

    .line 93
    .line 94
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 95
    .line 96
    iput-object v0, p0, Lcom/narvii/chat/ChatListFragment;->configService:Lcom/narvii/config/ConfigService;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 100
    move-result v0

    .line 101
    .line 102
    iput v0, p0, Lcom/narvii/chat/ChatListFragment;->ndcId:I

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 106
    move-result-object v0

    .line 107
    const/4 v1, 0x3

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 111
    .line 112
    new-instance v0, Lcom/narvii/chat/audio/AudioHelper;

    .line 113
    .line 114
    .line 115
    invoke-direct {v0, p0}, Lcom/narvii/chat/audio/AudioHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 116
    .line 117
    iput-object v0, p0, Lcom/narvii/chat/ChatListFragment;->audioHelper:Lcom/narvii/chat/audio/AudioHelper;

    .line 118
    .line 119
    new-instance v0, Lcom/narvii/chat/global/GlobalChatHelper;

    .line 120
    .line 121
    .line 122
    invoke-direct {v0, p0}, Lcom/narvii/chat/global/GlobalChatHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 123
    .line 124
    iput-object v0, p0, Lcom/narvii/chat/ChatListFragment;->globalChatHelper:Lcom/narvii/chat/global/GlobalChatHelper;

    .line 125
    .line 126
    const-string v0, "membership"

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 130
    move-result-object v0

    .line 131
    .line 132
    check-cast v0, Lcom/narvii/wallet/MembershipService;

    .line 133
    .line 134
    iput-object v0, p0, Lcom/narvii/chat/ChatListFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 135
    .line 136
    new-instance v0, Lcom/narvii/monetization/sticker/StickerHelper;

    .line 137
    .line 138
    .line 139
    invoke-direct {v0, p0}, Lcom/narvii/monetization/sticker/StickerHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 140
    .line 141
    iput-object v0, p0, Lcom/narvii/chat/ChatListFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    .line 142
    .line 143
    new-instance v0, Lcom/narvii/chat/ChatPreferenceHelper;

    .line 144
    .line 145
    .line 146
    invoke-direct {v0, p0}, Lcom/narvii/chat/ChatPreferenceHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 147
    .line 148
    iput-object v0, p0, Lcom/narvii/chat/ChatListFragment;->chatPreferenceHelper:Lcom/narvii/chat/ChatPreferenceHelper;

    .line 149
    .line 150
    if-nez p1, :cond_0

    .line 151
    .line 152
    new-instance p1, Lcom/narvii/chat/invite/ChatInviteFragment;

    .line 153
    .line 154
    .line 155
    invoke-direct {p1}, Lcom/narvii/chat/invite/ChatInviteFragment;-><init>()V

    .line 156
    .line 157
    new-instance v0, Landroid/os/Bundle;

    .line 158
    .line 159
    .line 160
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 161
    .line 162
    const-string v1, "Source"

    .line 163
    .line 164
    const-string v2, "Chat Thread"

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 174
    move-result-object v0

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 178
    move-result-object v0

    .line 179
    .line 180
    const-string v1, "chatInvite"

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 184
    move-result-object p1

    .line 185
    .line 186
    .line 187
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 188
    .line 189
    .line 190
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 191
    move-result-object p1

    .line 192
    .line 193
    .line 194
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 195
    move-result-object p1

    .line 196
    .line 197
    iput-object p1, p0, Lcom/narvii/chat/ChatListFragment;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 198
    .line 199
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 200
    .line 201
    new-instance v1, Landroid/content/IntentFilter;

    .line 202
    .line 203
    const-string v2, "com.narvii.action.BUBBLE_PACKAGE_READY"

    .line 204
    .line 205
    .line 206
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p1, v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 210
    .line 211
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 212
    .line 213
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 214
    .line 215
    new-instance v1, Landroid/content/IntentFilter;

    .line 216
    .line 217
    const-string v2, "com.narvii.action.ACCOUNT_CHANGED"

    .line 218
    .line 219
    .line 220
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p1, v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 224
    .line 225
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment;->chatPreferenceHelper:Lcom/narvii/chat/ChatPreferenceHelper;

    .line 226
    .line 227
    .line 228
    invoke-virtual {p0}, Lcom/narvii/chat/ChatListFragment;->getThreadId()Ljava/lang/String;

    .line 229
    move-result-object v0

    .line 230
    .line 231
    .line 232
    invoke-virtual {p1, v0}, Lcom/narvii/chat/ChatPreferenceHelper;->getLastWelcomeMessageShowTime(Ljava/lang/String;)J

    .line 233
    move-result-wide v0

    .line 234
    .line 235
    iput-wide v0, p0, Lcom/narvii/chat/ChatListFragment;->lastTimeWelcomeMessageShow:J

    .line 236
    .line 237
    .line 238
    invoke-virtual {p0}, Lcom/narvii/chat/ChatListFragment;->getThreadId()Ljava/lang/String;

    .line 239
    move-result-object p1

    .line 240
    .line 241
    .line 242
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 243
    move-result p1

    .line 244
    .line 245
    if-eqz p1, :cond_1

    .line 246
    .line 247
    .line 248
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 249
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d00d9

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
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/chat/ChatListFragment;->getThreadId()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, p0}, Lcom/narvii/chat/core/ChatService;->removeThreadLevelReceptor(Ljava/lang/String;Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment;->pushService:Lcom/narvii/pushservice/PushService;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/chat/ChatListFragment;->pushListener:Lcom/narvii/pushservice/PushService$PushListener;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/narvii/pushservice/PushService;->removePushListener(Lcom/narvii/pushservice/PushService$PushListener;)V

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/narvii/chat/ChatListFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->f(Landroid/content/BroadcastReceiver;)V

    .line 27
    .line 28
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/narvii/chat/ChatListFragment;->getThreadId()Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1, p0}, Lcom/narvii/chat/core/ChatService;->removeVideoMessagePostListener(Ljava/lang/String;Lcom/narvii/chat/core/ChatService$VideoMessageProgressChangeListener;)V

    .line 38
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
    const/4 p2, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 8
    const/4 p2, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 12
    .line 13
    new-instance p2, Lcom/narvii/chat/ChatListFragment$2;

    .line 14
    .line 15
    .line 16
    invoke-direct {p2, p0}, Lcom/narvii/chat/ChatListFragment$2;-><init>(Lcom/narvii/chat/ChatListFragment;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 20
    .line 21
    instance-of p2, p1, Lcom/narvii/chat/ChatListView;

    .line 22
    .line 23
    if-eqz p2, :cond_0

    .line 24
    move-object p2, p1

    .line 25
    .line 26
    check-cast p2, Lcom/narvii/chat/ChatListView;

    .line 27
    .line 28
    iget-boolean v0, p0, Lcom/narvii/list/NVListFragment;->isSwipeRefreshEnabled:Z

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, v0}, Lcom/narvii/chat/ChatListView;->setRevertedSwipeRefreshEnabled(Z)V

    .line 32
    .line 33
    :cond_0
    iget-object p2, p0, Lcom/narvii/chat/ChatListFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 37
    return-void
.end method

.method public onMentionedUserClicked(Ljava/lang/String;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/ChatListFragment;->checkCommunityAvailability()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    new-instance v0, Lcom/narvii/model/User;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Lcom/narvii/model/User;-><init>()V

    .line 13
    .line 14
    iput-object p1, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 15
    .line 16
    new-instance p1, Lcom/narvii/chat/profile/ChatUserInfoEntryHelper;

    .line 17
    .line 18
    .line 19
    invoke-direct {p1, p0}, Lcom/narvii/chat/profile/ChatUserInfoEntryHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    new-instance v2, Lcom/narvii/chat/p;

    .line 26
    .line 27
    .line 28
    invoke-direct {v2, p0, v0}, Lcom/narvii/chat/p;-><init>(Lcom/narvii/chat/ChatListFragment;Lcom/narvii/model/User;)V

    .line 29
    .line 30
    const-string v3, "Chat Thread"

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v1, v0, v3, v2}, Lcom/narvii/chat/profile/ChatUserInfoEntryHelper;->showUserInfoInChatThread(Lcom/narvii/model/ChatThread;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/onlinestatus/UserDialog$UserDialogClickListener;)V

    .line 34
    return-void
.end method

.method public onNewChatMessage(ILcom/narvii/chat/util/ChatMessageDto;)V
    .locals 8
    .param p2    # Lcom/narvii/chat/util/ChatMessageDto;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-boolean p1, p0, Lcom/narvii/chat/ChatListFragment;->reachBottom:Z

    .line 3
    const/4 v0, 0x1

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 11
    move-result p1

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    .line 17
    move-result p1

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2, v0}, Lcom/narvii/chat/core/ChatService;->sendChatMessageAck(Lcom/narvii/chat/util/ChatMessageDto;Z)V

    .line 25
    .line 26
    :cond_0
    iget-object p1, p2, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->isThreadDestroyMessage()Z

    .line 30
    move-result p1

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    return-void

    .line 34
    .line 35
    :cond_1
    iget-object p1, p2, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 36
    .line 37
    iget p1, p1, Lcom/narvii/model/ChatMessage;->type:I

    .line 38
    .line 39
    const/16 v1, 0x78

    .line 40
    .line 41
    if-ne p1, v1, :cond_3

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    instance-of p1, p1, Lcom/narvii/chat/ChatFragment;

    .line 48
    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    new-instance p1, Lcom/narvii/tipping/model/TipLog;

    .line 52
    .line 53
    .line 54
    invoke-direct {p1}, Lcom/narvii/tipping/model/TipLog;-><init>()V

    .line 55
    .line 56
    iget-object p2, p2, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 57
    .line 58
    iget-object v0, p2, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    .line 59
    .line 60
    iput-object v0, p1, Lcom/narvii/tipping/model/TipLog;->tipper:Lcom/narvii/model/User;

    .line 61
    .line 62
    iget-object p2, p2, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 63
    .line 64
    const-string/jumbo v0, "tippingCoins"

    .line 65
    .line 66
    .line 67
    filled-new-array {v0}, [Ljava/lang/String;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    .line 71
    invoke-static {p2, v0}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    .line 72
    move-result p2

    .line 73
    .line 74
    iput p2, p1, Lcom/narvii/tipping/model/TipLog;->totalTippedCoins:I

    .line 75
    .line 76
    if-lez p2, :cond_2

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 80
    move-result-object p2

    .line 81
    .line 82
    check-cast p2, Lcom/narvii/chat/ChatFragment;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2, p1}, Lcom/narvii/chat/ChatFragment;->onNewTipLog(Lcom/narvii/tipping/model/TipLog;)V

    .line 86
    :cond_2
    return-void

    .line 87
    .line 88
    :cond_3
    const/16 v1, 0x80

    .line 89
    .line 90
    if-eq p1, v1, :cond_10

    .line 91
    .line 92
    const/16 v2, 0x81

    .line 93
    .line 94
    if-ne p1, v2, :cond_4

    .line 95
    .line 96
    goto/16 :goto_6

    .line 97
    .line 98
    :cond_4
    const/16 v1, 0x77

    .line 99
    .line 100
    if-eq p1, v1, :cond_c

    .line 101
    .line 102
    const-string/jumbo v2, "update"

    .line 103
    const/4 v3, 0x0

    .line 104
    .line 105
    .line 106
    packed-switch p1, :pswitch_data_0

    .line 107
    .line 108
    goto/16 :goto_5

    .line 109
    .line 110
    .line 111
    :pswitch_0
    invoke-virtual {p0}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 112
    move-result-object p1

    .line 113
    .line 114
    if-nez p1, :cond_5

    .line 115
    move-object p1, v3

    .line 116
    goto :goto_0

    .line 117
    .line 118
    .line 119
    :cond_5
    invoke-virtual {p0}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 120
    move-result-object p1

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    .line 124
    move-result-object p1

    .line 125
    .line 126
    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 127
    .line 128
    :goto_0
    if-nez p1, :cond_6

    .line 129
    goto :goto_1

    .line 130
    .line 131
    :cond_6
    iget-object v3, p1, Lcom/narvii/model/ChatThread;->membersSummary:Ljava/util/List;

    .line 132
    .line 133
    :goto_1
    if-eqz p1, :cond_d

    .line 134
    .line 135
    if-eqz v3, :cond_d

    .line 136
    .line 137
    iget v3, p1, Lcom/narvii/model/ChatThread;->membersCount:I

    .line 138
    sub-int/2addr v3, v0

    .line 139
    .line 140
    iput v3, p1, Lcom/narvii/model/ChatThread;->membersCount:I

    .line 141
    .line 142
    new-instance v0, Lcom/narvii/notification/Notification;

    .line 143
    .line 144
    .line 145
    invoke-direct {v0, v2, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 149
    goto :goto_5

    .line 150
    .line 151
    .line 152
    :pswitch_1
    invoke-virtual {p0}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 153
    move-result-object p1

    .line 154
    .line 155
    if-nez p1, :cond_7

    .line 156
    move-object p1, v3

    .line 157
    goto :goto_2

    .line 158
    .line 159
    .line 160
    :cond_7
    invoke-virtual {p0}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 161
    move-result-object p1

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    .line 165
    move-result-object p1

    .line 166
    .line 167
    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 168
    .line 169
    :goto_2
    if-nez p1, :cond_8

    .line 170
    goto :goto_3

    .line 171
    .line 172
    :cond_8
    iget-object v3, p1, Lcom/narvii/model/ChatThread;->membersSummary:Ljava/util/List;

    .line 173
    .line 174
    :goto_3
    if-eqz p1, :cond_d

    .line 175
    .line 176
    if-eqz v3, :cond_d

    .line 177
    .line 178
    .line 179
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 180
    move-result-object v4

    .line 181
    .line 182
    .line 183
    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 184
    move-result v5

    .line 185
    .line 186
    if-eqz v5, :cond_a

    .line 187
    .line 188
    .line 189
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 190
    move-result-object v5

    .line 191
    .line 192
    check-cast v5, Lcom/narvii/model/User;

    .line 193
    .line 194
    iget-object v6, v5, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 195
    .line 196
    iget-object v7, p2, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v7}, Lcom/narvii/model/ChatMessage;->uid()Ljava/lang/String;

    .line 200
    move-result-object v7

    .line 201
    .line 202
    .line 203
    invoke-static {v6, v7}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 204
    move-result v6

    .line 205
    .line 206
    if-eqz v6, :cond_9

    .line 207
    .line 208
    iput v0, v5, Lcom/narvii/model/User;->membershipStatus:I

    .line 209
    goto :goto_4

    .line 210
    .line 211
    :cond_a
    iget-object v4, p2, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 212
    .line 213
    iget-object v4, v4, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    .line 214
    .line 215
    if-eqz v4, :cond_b

    .line 216
    .line 217
    .line 218
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    .line 220
    :cond_b
    :goto_4
    iget v3, p1, Lcom/narvii/model/ChatThread;->membersCount:I

    .line 221
    add-int/2addr v3, v0

    .line 222
    .line 223
    iput v3, p1, Lcom/narvii/model/ChatThread;->membersCount:I

    .line 224
    .line 225
    new-instance v0, Lcom/narvii/notification/Notification;

    .line 226
    .line 227
    .line 228
    invoke-direct {v0, v2, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 232
    goto :goto_5

    .line 233
    .line 234
    :cond_c
    :pswitch_2
    new-instance p1, Lcom/narvii/notification/Notification;

    .line 235
    .line 236
    const-string v0, "delete"

    .line 237
    .line 238
    iget-object v2, p2, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 239
    .line 240
    .line 241
    invoke-direct {p1, v0, v2}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 245
    .line 246
    :cond_d
    :goto_5
    iget-object p1, p2, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 247
    .line 248
    iget p2, p1, Lcom/narvii/model/ChatMessage;->type:I

    .line 249
    .line 250
    if-ne p2, v1, :cond_e

    .line 251
    return-void

    .line 252
    .line 253
    :cond_e
    iget-boolean p2, p1, Lcom/narvii/model/ChatMessage;->isHidden:Z

    .line 254
    .line 255
    if-eqz p2, :cond_f

    .line 256
    return-void

    .line 257
    .line 258
    :cond_f
    iget-object p2, p0, Lcom/narvii/chat/ChatListFragment;->adapter:Lcom/narvii/chat/ChatListFragment$Adapter;

    .line 259
    .line 260
    .line 261
    invoke-virtual {p2, p1}, Lcom/narvii/chat/ChatListFragment$Adapter;->appendNewChatMessage(Lcom/narvii/model/ChatMessage;)V

    .line 262
    return-void

    .line 263
    .line 264
    .line 265
    :cond_10
    :goto_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 266
    move-result-object p1

    .line 267
    .line 268
    instance-of p1, p1, Lcom/narvii/chat/ChatFragment;

    .line 269
    .line 270
    if-eqz p1, :cond_12

    .line 271
    .line 272
    .line 273
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 274
    move-result-object p1

    .line 275
    .line 276
    check-cast p1, Lcom/narvii/chat/ChatFragment;

    .line 277
    .line 278
    iget-object p2, p2, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 279
    .line 280
    iget p2, p2, Lcom/narvii/model/ChatMessage;->type:I

    .line 281
    .line 282
    if-ne p2, v1, :cond_11

    .line 283
    goto :goto_7

    .line 284
    :cond_11
    const/4 v0, 0x0

    .line 285
    .line 286
    .line 287
    :goto_7
    invoke-virtual {p1, v0}, Lcom/narvii/chat/ChatFragment;->onTipEnableChanged(Z)V

    .line 288
    :cond_12
    return-void

    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onProgressUpdate(II)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment;->adapter:Lcom/narvii/chat/ChatListFragment$Adapter;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/narvii/chat/ChatListFragment$Adapter;->notifyDataSetChanged()V

    .line 8
    :cond_0
    return-void
.end method

.method public onResetChatMessageList()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment;->adapter:Lcom/narvii/chat/ChatListFragment$Adapter;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/narvii/chat/ChatListFragment$Adapter;->resetChatList()V

    .line 13
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onResume()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "account"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/chat/ChatListFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/chat/ChatListFragment;->myUid:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public onSeeAllClicked(Lcom/narvii/model/ChatMessage;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/chat/ChatListFragment;->showNormalMessageDetail(Lcom/narvii/model/ChatMessage;)V

    .line 4
    return-void
.end method

.method public onStop()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onStop()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/chat/ChatListFragment;->shouldShowWelcomeMessage()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment;->chatPreferenceHelper:Lcom/narvii/chat/ChatPreferenceHelper;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/chat/ChatListFragment;->getThreadId()Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 19
    move-result-wide v2

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/chat/ChatPreferenceHelper;->saveLastWelcomeMessageShowTime(Ljava/lang/String;J)V

    .line 23
    :cond_0
    return-void
.end method

.method public onThreadChanged(Lcom/narvii/model/ChatThread;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iput-object p1, p0, Lcom/narvii/chat/ChatListFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/narvii/model/ChatThread;->getCurBubble(Ljava/lang/String;)Lcom/narvii/model/ChatBubble;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    iput-object p1, p0, Lcom/narvii/chat/ChatListFragment;->curBubble:Lcom/narvii/model/ChatBubble;

    .line 19
    .line 20
    iget-object p1, p0, Lcom/narvii/chat/ChatListFragment;->adapter:Lcom/narvii/chat/ChatListFragment$Adapter;

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/narvii/chat/ChatListFragment$Adapter;->notifyDataSetChanged()V

    .line 26
    :cond_0
    return-void
.end method

.method public onUnreadThreadCountChanged(I)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p2, 0x7f0a09ef

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    check-cast p2, Landroid/widget/TextView;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/narvii/chat/ChatListFragment;->tvNewMessage:Landroid/widget/TextView;

    .line 15
    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    new-instance v0, Lcom/narvii/chat/r;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, p0}, Lcom/narvii/chat/r;-><init>(Lcom/narvii/chat/ChatListFragment;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    const p2, 0x7f0a09f0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    iput-object p1, p0, Lcom/narvii/chat/ChatListFragment;->newMsgContainer:Landroid/view/View;

    .line 34
    .line 35
    iget-object p1, p0, Lcom/narvii/list/NVListFragment;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 36
    .line 37
    if-eqz p1, :cond_1

    .line 38
    const/4 p2, 0x1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setReversed(Z)V

    .line 42
    :cond_1
    return-void
.end method

.method public openMiniProfile(Lcom/narvii/model/User;)V
    .locals 4

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/narvii/chat/ChatListFragment;->checkCommunityAvailability()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    return-void

    .line 11
    .line 12
    :cond_1
    new-instance v0, Lcom/narvii/chat/profile/ChatUserInfoEntryHelper;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/narvii/chat/profile/ChatUserInfoEntryHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/chat/ChatListFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    new-instance v2, Lcom/narvii/chat/ChatListFragment$7;

    .line 22
    .line 23
    .line 24
    invoke-direct {v2, p0, p1}, Lcom/narvii/chat/ChatListFragment$7;-><init>(Lcom/narvii/chat/ChatListFragment;Lcom/narvii/model/User;)V

    .line 25
    .line 26
    const-string v3, "Chat Thread"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1, p1, v3, v2}, Lcom/narvii/chat/profile/ChatUserInfoEntryHelper;->showUserInfoInChatThread(Lcom/narvii/model/ChatThread;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/onlinestatus/UserDialog$UserDialogClickListener;)V

    .line 30
    return-void
.end method

.method public resend(Lcom/narvii/model/ChatMessage;)V
    .locals 2

    .line 1
    .line 2
    iget v0, p1, Lcom/narvii/model/ChatMessage;->_status:I

    .line 3
    const/4 v1, 0x2

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->getClientRefIdTmp()I

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->getClientRefIdTmp()I

    .line 17
    move-result p1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/narvii/chat/core/ChatService;->retryPost(I)V

    .line 21
    :cond_0
    return-void
.end method

.method public scrollToBottom()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    return-void

    .line 15
    .line 16
    .line 17
    :cond_1
    :try_start_0
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x1

    .line 20
    .line 21
    if-le v0, v1, :cond_2

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 25
    move-result-object v2

    .line 26
    sub-int/2addr v0, v1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
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
