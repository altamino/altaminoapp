.class public Lcom/narvii/community/MyCommunityListService;
.super Ljava/lang/Object;
.source "MyCommunityListService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;,
        Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;
    }
.end annotation


# instance fields
.field final adapter:Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;

.field affiliationsService:Lcom/narvii/community/AffiliationsService;

.field api:Lcom/narvii/util/http/ApiService;

.field chatService:Lcom/narvii/chat/core/ChatService;

.field communityReminderChangeInGlobalListener:Lcom/narvii/account/AccountService$CommunityReminderChangeInGlobalListener;

.field context:Lcom/narvii/app/NVContext;

.field filterHelper:Lcom/narvii/util/FilterHelper;

.field filterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation
.end field

.field globalReminderCheck:Lcom/narvii/community/ReminderCheck;

.field hasUnreadAlert:Z

.field final invalidateNoticeRequests:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final invalidateNotificationRequests:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private ndcIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final observers:Lcom/narvii/util/EventDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;",
            ">;"
        }
    .end annotation
.end field

.field profileListener:Lcom/narvii/account/AccountService$ProfileListener;

.field private final pushListener:Lcom/narvii/pushservice/PushService$PushListener;

.field final receiver:Landroid/content/BroadcastReceiver;

.field final reminderCheckListener:Lcom/narvii/util/http/ApiResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/http/ApiResponseListener<",
            "Lcom/narvii/community/ReminderCheckMapResponse;",
            ">;"
        }
    .end annotation
.end field

.field final reminderRequestQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final reminderRequestTimes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final reminderRequests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/narvii/util/http/ApiRequest;",
            ">;"
        }
    .end annotation
.end field

.field final reminderSendQueue:Ljava/lang/Runnable;

.field final reminderTimestamps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final reminders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/narvii/community/ReminderCheck;",
            ">;"
        }
    .end annotation
.end field

.field requestTime:J

.field final suggestCommunityListener:Lcom/narvii/util/http/ApiResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/http/ApiResponseListener<",
            "Lcom/narvii/master/CommunityListResponse;",
            ">;"
        }
    .end annotation
.end field

.field suggestError:Ljava/lang/String;

.field suggestList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation
.end field

.field suggestRequest:Lcom/narvii/util/http/ApiRequest;

.field suggestRequestTime:J

.field final suggestSeenLogs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field suggestT3_oldCount:Ljava/lang/Integer;

.field suggestTags:Ljava/lang/String;

.field private suggestedRequestSent:Z

.field final timestamps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final userProfiles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation
.end field

.field final userTimestamps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 4

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/community/MyCommunityListService;->timestamps:Ljava/util/HashMap;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/community/MyCommunityListService;->userProfiles:Ljava/util/HashMap;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/community/MyCommunityListService;->userTimestamps:Ljava/util/HashMap;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/community/MyCommunityListService;->reminders:Ljava/util/HashMap;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/community/MyCommunityListService;->reminderTimestamps:Ljava/util/HashMap;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/community/MyCommunityListService;->reminderRequestTimes:Ljava/util/HashMap;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/community/MyCommunityListService;->reminderRequests:Ljava/util/HashMap;

    .line 67
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/narvii/community/MyCommunityListService;->invalidateNotificationRequests:Ljava/util/HashSet;

    .line 68
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/narvii/community/MyCommunityListService;->invalidateNoticeRequests:Ljava/util/HashSet;

    .line 77
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/narvii/community/MyCommunityListService;->suggestSeenLogs:Ljava/util/HashSet;

    .line 84
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    iput-object v0, p0, Lcom/narvii/community/MyCommunityListService;->observers:Lcom/narvii/util/EventDispatcher;

    .line 85
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/narvii/community/MyCommunityListService;->ndcIds:Ljava/util/HashSet;

    .line 87
    new-instance v0, Lcom/narvii/community/MyCommunityListService$1;

    invoke-direct {v0, p0}, Lcom/narvii/community/MyCommunityListService$1;-><init>(Lcom/narvii/community/MyCommunityListService;)V

    iput-object v0, p0, Lcom/narvii/community/MyCommunityListService;->communityReminderChangeInGlobalListener:Lcom/narvii/account/AccountService$CommunityReminderChangeInGlobalListener;

    .line 99
    new-instance v0, Lcom/narvii/community/MyCommunityListService$2;

    invoke-direct {v0, p0}, Lcom/narvii/community/MyCommunityListService$2;-><init>(Lcom/narvii/community/MyCommunityListService;)V

    iput-object v0, p0, Lcom/narvii/community/MyCommunityListService;->profileListener:Lcom/narvii/account/AccountService$ProfileListener;

    .line 244
    new-instance v0, Lcom/narvii/community/MyCommunityListService$6;

    invoke-direct {v0, p0}, Lcom/narvii/community/MyCommunityListService$6;-><init>(Lcom/narvii/community/MyCommunityListService;)V

    iput-object v0, p0, Lcom/narvii/community/MyCommunityListService;->receiver:Landroid/content/BroadcastReceiver;

    .line 319
    new-instance v0, Lcom/narvii/community/MyCommunityListService$8;

    const-class v1, Lcom/narvii/master/CommunityListResponse;

    invoke-direct {v0, p0, v1}, Lcom/narvii/community/MyCommunityListService$8;-><init>(Lcom/narvii/community/MyCommunityListService;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/narvii/community/MyCommunityListService;->suggestCommunityListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 755
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/narvii/community/MyCommunityListService;->reminderRequestQueue:Ljava/util/LinkedList;

    .line 756
    new-instance v0, Lcom/narvii/community/MyCommunityListService$9;

    invoke-direct {v0, p0}, Lcom/narvii/community/MyCommunityListService$9;-><init>(Lcom/narvii/community/MyCommunityListService;)V

    iput-object v0, p0, Lcom/narvii/community/MyCommunityListService;->reminderSendQueue:Ljava/lang/Runnable;

    .line 764
    new-instance v0, Lcom/narvii/community/MyCommunityListService$10;

    const-class v1, Lcom/narvii/community/ReminderCheckMapResponse;

    invoke-direct {v0, p0, v1}, Lcom/narvii/community/MyCommunityListService$10;-><init>(Lcom/narvii/community/MyCommunityListService;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/narvii/community/MyCommunityListService;->reminderCheckListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 804
    new-instance v0, Lcom/narvii/community/MyCommunityListService$11;

    invoke-direct {v0, p0}, Lcom/narvii/community/MyCommunityListService$11;-><init>(Lcom/narvii/community/MyCommunityListService;)V

    iput-object v0, p0, Lcom/narvii/community/MyCommunityListService;->pushListener:Lcom/narvii/pushservice/PushService$PushListener;

    .line 135
    iput-object p1, p0, Lcom/narvii/community/MyCommunityListService;->context:Lcom/narvii/app/NVContext;

    .line 136
    new-instance v0, Lcom/narvii/util/FilterHelper;

    iget-object v1, p0, Lcom/narvii/community/MyCommunityListService;->context:Lcom/narvii/app/NVContext;

    invoke-direct {v0, v1}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/community/MyCommunityListService;->filterHelper:Lcom/narvii/util/FilterHelper;

    const-string v0, "api"

    .line 137
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    iput-object v0, p0, Lcom/narvii/community/MyCommunityListService;->api:Lcom/narvii/util/http/ApiService;

    .line 138
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 139
    iget-object v1, p0, Lcom/narvii/community/MyCommunityListService;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    const-string/jumbo v0, "push"

    .line 141
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/pushservice/PushService;

    .line 142
    iget-object v1, p0, Lcom/narvii/community/MyCommunityListService;->pushListener:Lcom/narvii/pushservice/PushService$PushListener;

    invoke-virtual {v0, v1}, Lcom/narvii/pushservice/PushService;->addPushListener(Lcom/narvii/pushservice/PushService$PushListener;)V

    const-string v0, "account"

    .line 144
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 145
    iget-object v1, p0, Lcom/narvii/community/MyCommunityListService;->communityReminderChangeInGlobalListener:Lcom/narvii/account/AccountService$CommunityReminderChangeInGlobalListener;

    invoke-virtual {v0, v1}, Lcom/narvii/account/AccountService;->addCommunityReminderChangeListener(Lcom/narvii/account/AccountService$CommunityReminderChangeInGlobalListener;)V

    .line 146
    iget-object v1, p0, Lcom/narvii/community/MyCommunityListService;->profileListener:Lcom/narvii/account/AccountService$ProfileListener;

    invoke-virtual {v0, v1}, Lcom/narvii/account/AccountService;->addProfileListener(Lcom/narvii/account/AccountService$ProfileListener;)V

    .line 148
    new-instance v0, Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;

    invoke-direct {v0, p0, p1}, Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;-><init>(Lcom/narvii/community/MyCommunityListService;Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/community/MyCommunityListService;->adapter:Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;

    .line 149
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->adapter:Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;

    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;->onAttach()V

    const-string v0, "notification"

    .line 150
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/notification/NotificationCenter;

    .line 151
    iget-object v1, p0, Lcom/narvii/community/MyCommunityListService;->adapter:Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;

    invoke-virtual {v0, v1}, Lcom/narvii/notification/NotificationCenter;->registerListener(Lcom/narvii/notification/NotificationListener;)V

    const-string v0, "affiliations"

    .line 152
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/community/AffiliationsService;

    iput-object v0, p0, Lcom/narvii/community/MyCommunityListService;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    const-string v0, "chat"

    .line 153
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/core/ChatService;

    iput-object p1, p0, Lcom/narvii/community/MyCommunityListService;->chatService:Lcom/narvii/chat/core/ChatService;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/community/MyCommunityListService;III)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/community/MyCommunityListService;->updateCommunityReminder(III)V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/community/MyCommunityListService;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/narvii/community/MyCommunityListService;->updateNoticeService()V

    return-void
.end method

.method static synthetic access$202(Lcom/narvii/community/MyCommunityListService;Z)Z
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/narvii/community/MyCommunityListService;->suggestedRequestSent:Z

    return p1
.end method

.method static synthetic access$300(Lcom/narvii/community/MyCommunityListService;)Ljava/util/HashSet;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/narvii/community/MyCommunityListService;->ndcIds:Ljava/util/HashSet;

    return-object p0
.end method

.method private hasLocalUnreadAlert()Z
    .locals 5

    .line 224
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->context:Lcom/narvii/app/NVContext;

    const-string v1, "account"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 225
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 228
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/community/MyCommunityListService;->list()Ljava/util/List;

    move-result-object v0

    .line 230
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/Community;

    .line 231
    iget-object v4, p0, Lcom/narvii/community/MyCommunityListService;->reminders:Ljava/util/HashMap;

    iget v2, v2, Lcom/narvii/model/Community;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/community/ReminderCheck;

    if-eqz v2, :cond_1

    .line 232
    iget v4, v2, Lcom/narvii/community/ReminderCheck;->noticesCount:I

    iget v2, v2, Lcom/narvii/community/ReminderCheck;->notificationsCount:I

    add-int/2addr v4, v2

    if-lez v4, :cond_1

    return v3

    .line 236
    :cond_2
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->globalReminderCheck:Lcom/narvii/community/ReminderCheck;

    if-eqz v0, :cond_3

    .line 237
    iget v2, v0, Lcom/narvii/community/ReminderCheck;->noticesCount:I

    iget v0, v0, Lcom/narvii/community/ReminderCheck;->notificationsCount:I

    add-int/2addr v2, v0

    if-lez v2, :cond_3

    return v3

    :cond_3
    return v1
.end method

.method private updateCommunityReminder(III)V
    .locals 3

    .line 835
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->context:Lcom/narvii/app/NVContext;

    const-string v1, "account"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 836
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 837
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->reminders:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/community/ReminderCheck;

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    .line 839
    new-instance v2, Lcom/narvii/community/ReminderCheck;

    invoke-direct {v2}, Lcom/narvii/community/ReminderCheck;-><init>()V

    if-ne p3, v1, :cond_0

    .line 841
    iput p2, v2, Lcom/narvii/community/ReminderCheck;->notificationsCount:I

    .line 842
    iget v0, v0, Lcom/narvii/community/ReminderCheck;->noticesCount:I

    iput v0, v2, Lcom/narvii/community/ReminderCheck;->noticesCount:I

    goto :goto_0

    :cond_0
    if-ne p2, v1, :cond_1

    .line 844
    iget v0, v0, Lcom/narvii/community/ReminderCheck;->notificationsCount:I

    iput v0, v2, Lcom/narvii/community/ReminderCheck;->notificationsCount:I

    .line 845
    iput p3, v2, Lcom/narvii/community/ReminderCheck;->noticesCount:I

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 847
    invoke-virtual {p0, p1, v2, v0}, Lcom/narvii/community/MyCommunityListService;->setReminder(ILcom/narvii/community/ReminderCheck;Z)Z

    :cond_2
    if-ne p3, v1, :cond_3

    if-le p2, v1, :cond_3

    .line 852
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->reminderRequests:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 853
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->invalidateNotificationRequests:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    if-ne p2, v1, :cond_4

    if-le p3, v1, :cond_4

    .line 858
    iget-object p2, p0, Lcom/narvii/community/MyCommunityListService;->reminderRequests:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 859
    iget-object p2, p0, Lcom/narvii/community/MyCommunityListService;->invalidateNoticeRequests:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method private updateNoticeService()V
    .locals 3

    .line 201
    sget v0, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_2

    .line 202
    iget-boolean v0, p0, Lcom/narvii/community/MyCommunityListService;->hasUnreadAlert:Z

    .line 203
    invoke-direct {p0}, Lcom/narvii/community/MyCommunityListService;->hasLocalUnreadAlert()Z

    move-result v1

    iput-boolean v1, p0, Lcom/narvii/community/MyCommunityListService;->hasUnreadAlert:Z

    .line 204
    iget-boolean v1, p0, Lcom/narvii/community/MyCommunityListService;->hasUnreadAlert:Z

    if-eq v1, v0, :cond_2

    .line 205
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->context:Lcom/narvii/app/NVContext;

    const-string v1, "_notice"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/services/incubator/IncubatorNoticeService;

    .line 206
    invoke-virtual {v0}, Lcom/narvii/services/incubator/IncubatorNoticeService;->hasReminder()Z

    move-result v1

    iget-boolean v2, p0, Lcom/narvii/community/MyCommunityListService;->hasUnreadAlert:Z

    if-eq v1, v2, :cond_2

    .line 207
    invoke-virtual {v0}, Lcom/narvii/services/incubator/IncubatorNoticeService;->isActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 209
    invoke-virtual {v0}, Lcom/narvii/services/incubator/IncubatorNoticeService;->isFullCheckRequesting()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/narvii/community/MyCommunityListService;->hasUnreadAlert:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 212
    invoke-virtual {v0, v1}, Lcom/narvii/services/incubator/IncubatorNoticeService;->refresh(Z)V

    goto :goto_0

    .line 215
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/services/incubator/IncubatorNoticeService;->invalidate()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public addObserver(Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;)V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->observers:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    return-void
.end method

.method public addReminderRequestQueue(I)V
    .locals 1

    const/4 v0, 0x0

    .line 677
    invoke-virtual {p0, p1, v0}, Lcom/narvii/community/MyCommunityListService;->addReminderRequestQueue(IZ)V

    return-void
.end method

.method public addReminderRequestQueue(IZ)V
    .locals 2

    .line 682
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->reminderRequests:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiRequest;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 685
    iget-object p2, p0, Lcom/narvii/community/MyCommunityListService;->api:Lcom/narvii/util/http/ApiService;

    iget-object v1, p0, Lcom/narvii/community/MyCommunityListService;->reminderCheckListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {p2, v0, v1}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 686
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 687
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 688
    iget-object v1, p0, Lcom/narvii/community/MyCommunityListService;->reminderRequests:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    iget-object v1, p0, Lcom/narvii/community/MyCommunityListService;->invalidateNotificationRequests:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 690
    iget-object v1, p0, Lcom/narvii/community/MyCommunityListService;->invalidateNoticeRequests:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 691
    iget-object v1, p0, Lcom/narvii/community/MyCommunityListService;->reminderRequestTimes:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void

    .line 697
    :cond_1
    iget-object p2, p0, Lcom/narvii/community/MyCommunityListService;->reminderRequestQueue:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 698
    iget-object p2, p0, Lcom/narvii/community/MyCommunityListService;->reminderRequestQueue:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 699
    :goto_1
    iget-object p1, p0, Lcom/narvii/community/MyCommunityListService;->reminderRequestQueue:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/16 p2, 0xf

    if-le p1, p2, :cond_2

    .line 700
    iget-object p1, p0, Lcom/narvii/community/MyCommunityListService;->reminderRequestQueue:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_1

    .line 702
    :cond_2
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/narvii/community/MyCommunityListService;->reminderSendQueue:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 703
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/narvii/community/MyCommunityListService;->reminderSendQueue:Ljava/lang/Runnable;

    const-wide/16 v0, 0x190

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method dispatchListChanged(Lcom/narvii/community/MyCommunityListResponse;Ljava/lang/Integer;)V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->observers:Lcom/narvii/util/EventDispatcher;

    new-instance v1, Lcom/narvii/community/MyCommunityListService$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/narvii/community/MyCommunityListService$4;-><init>(Lcom/narvii/community/MyCommunityListService;Lcom/narvii/community/MyCommunityListResponse;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->safeDispatch(Lcom/narvii/util/Callback;)V

    .line 180
    iget-object p1, p0, Lcom/narvii/community/MyCommunityListService;->suggestT3_oldCount:Ljava/lang/Integer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x3

    if-gt p1, p2, :cond_0

    .line 181
    iget-object p1, p0, Lcom/narvii/community/MyCommunityListService;->context:Lcom/narvii/app/NVContext;

    const-string/jumbo p2, "recentCommunities"

    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/RecentCommunityHelper;

    const/4 p2, 0x6

    .line 182
    invoke-virtual {p1, p2}, Lcom/narvii/community/RecentCommunityHelper;->getRecentIdList(I)Ljava/util/List;

    move-result-object p1

    .line 183
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object p2, p0, Lcom/narvii/community/MyCommunityListService;->suggestT3_oldCount:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-le p1, p2, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/narvii/community/MyCommunityListService;->refreshSuggestCommunityRequest()V

    :cond_0
    return-void
.end method

.method dispatchReminderChanged()V
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->observers:Lcom/narvii/util/EventDispatcher;

    new-instance v1, Lcom/narvii/community/MyCommunityListService$5;

    invoke-direct {v1, p0}, Lcom/narvii/community/MyCommunityListService$5;-><init>(Lcom/narvii/community/MyCommunityListService;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->safeDispatch(Lcom/narvii/util/Callback;)V

    .line 197
    invoke-direct {p0}, Lcom/narvii/community/MyCommunityListService;->updateNoticeService()V

    return-void
.end method

.method dispatchSuggestListChanged(Lcom/narvii/master/CommunityListResponse;)V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->observers:Lcom/narvii/util/EventDispatcher;

    new-instance v1, Lcom/narvii/community/MyCommunityListService$3;

    invoke-direct {v1, p0, p1}, Lcom/narvii/community/MyCommunityListService$3;-><init>(Lcom/narvii/community/MyCommunityListService;Lcom/narvii/master/CommunityListResponse;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->safeDispatch(Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public errorMessage()Ljava/lang/String;
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->adapter:Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->errorMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCommunityRequestTime()J
    .locals 2

    .line 389
    iget-wide v0, p0, Lcom/narvii/community/MyCommunityListService;->requestTime:J

    return-wide v0
.end method

.method public getCommunityTimestamp(I)Ljava/lang/String;
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->timestamps:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getNdcIds()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 831
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->ndcIds:Ljava/util/HashSet;

    return-object v0
.end method

.method public getReminder(I)Lcom/narvii/community/ReminderCheck;
    .locals 1

    .line 631
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->reminders:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/ReminderCheck;

    return-object p1
.end method

.method public getReminderRequestTime(I)J
    .locals 2

    .line 642
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->reminderRequestTimes:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 643
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getReminderTimestamp(I)Ljava/lang/String;
    .locals 1

    .line 635
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->reminderTimestamps:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getSuggestRequestTime()J
    .locals 2

    .line 316
    iget-wide v0, p0, Lcom/narvii/community/MyCommunityListService;->suggestRequestTime:J

    return-wide v0
.end method

.method public getUserInfoTimestamp(I)Ljava/lang/String;
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->userTimestamps:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getUserProfile(I)Lcom/narvii/model/User;
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->userProfiles:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/User;

    return-object p1
.end method

.method public invalidReminders()V
    .locals 1

    .line 707
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->reminderRequestTimes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 708
    invoke-virtual {p0}, Lcom/narvii/community/MyCommunityListService;->dispatchReminderChanged()V

    return-void
.end method

.method public isEnd()Z
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->adapter:Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->isEnd()Z

    move-result v0

    return v0
.end method

.method public isSuggestedRequestSent()Z
    .locals 1

    .line 312
    iget-boolean v0, p0, Lcom/narvii/community/MyCommunityListService;->suggestedRequestSent:Z

    return v0
.end method

.method public list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation

    .line 356
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->filterList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 357
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public loadNextPage(Z)V
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->adapter:Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;

    invoke-virtual {v0, p1}, Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;->loadNextPage(Z)V

    return-void
.end method

.method public logSuggestSeen(I)V
    .locals 4

    .line 344
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->suggestSeenLogs:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->suggestSeenLogs:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 346
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->context:Lcom/narvii/app/NVContext;

    const-string v1, "logging"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/logging/LoggingService;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "eventOrigin"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Suggest"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "referralObjectId"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 347
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "SuggestAminoSeen"

    invoke-interface {v0, p1, v1}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public rawList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation

    .line 365
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->adapter:Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 367
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public refresh(ILcom/narvii/util/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 450
    invoke-virtual {p0}, Lcom/narvii/community/MyCommunityListService;->invalidReminders()V

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->adapter:Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;->refresh(ILcom/narvii/util/Callback;)V

    return-void
.end method

.method public refreshSuggestCommunityRequest()V
    .locals 1

    const/4 v0, 0x0

    .line 260
    invoke-virtual {p0, v0}, Lcom/narvii/community/MyCommunityListService;->refreshSuggestCommunityRequest(Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public refreshSuggestCommunityRequest(Lcom/narvii/util/Callback;)V
    .locals 5

    .line 264
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->suggestError:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 265
    :goto_0
    iget-object v1, p0, Lcom/narvii/community/MyCommunityListService;->suggestRequest:Lcom/narvii/util/http/ApiRequest;

    if-eqz v1, :cond_1

    .line 266
    iget-object v2, p0, Lcom/narvii/community/MyCommunityListService;->api:Lcom/narvii/util/http/ApiService;

    iget-object v3, p0, Lcom/narvii/community/MyCommunityListService;->suggestCommunityListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v2, v1, v3}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 268
    :cond_1
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "/community/suggested"

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/community/MyCommunityListService;->context:Lcom/narvii/app/NVContext;

    .line 269
    invoke-static {v2}, Lcom/narvii/util/LanguageHelper;->getUserSelectedLanguageCode(Lcom/narvii/app/NVContext;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "language"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    .line 270
    iget-object v2, p0, Lcom/narvii/community/MyCommunityListService;->api:Lcom/narvii/util/http/ApiService;

    new-instance v3, Lcom/narvii/community/MyCommunityListService$7;

    const-class v4, Lcom/narvii/master/CommunityListResponse;

    invoke-direct {v3, p0, v4, p1}, Lcom/narvii/community/MyCommunityListService$7;-><init>(Lcom/narvii/community/MyCommunityListService;Ljava/lang/Class;Lcom/narvii/util/Callback;)V

    invoke-virtual {v2, v1, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 291
    iput-object v1, p0, Lcom/narvii/community/MyCommunityListService;->suggestRequest:Lcom/narvii/util/http/ApiRequest;

    .line 292
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/narvii/community/MyCommunityListService;->suggestRequestTime:J

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    .line 294
    iput-object p1, p0, Lcom/narvii/community/MyCommunityListService;->suggestError:Ljava/lang/String;

    .line 295
    invoke-virtual {p0, p1}, Lcom/narvii/community/MyCommunityListService;->dispatchSuggestListChanged(Lcom/narvii/master/CommunityListResponse;)V

    :cond_2
    return-void
.end method

.method public removeObserver(Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;)V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->observers:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    return-void
.end method

.method public reorder(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Community;",
            ">;)V"
        }
    .end annotation

    .line 445
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->adapter:Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;

    invoke-virtual {v0, p1}, Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;->reorder(Ljava/util/List;)V

    return-void
.end method

.method public resetList()V
    .locals 1

    .line 409
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->timestamps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 410
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->userProfiles:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 411
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->userTimestamps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 412
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->adapter:Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->resetList()V

    .line 413
    invoke-virtual {p0}, Lcom/narvii/community/MyCommunityListService;->resetReminders()V

    return-void
.end method

.method public resetReminders()V
    .locals 4

    .line 712
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->reminders:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 713
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->reminderTimestamps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 714
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->reminderRequestTimes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 715
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->reminderRequests:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiRequest;

    .line 716
    iget-object v2, p0, Lcom/narvii/community/MyCommunityListService;->api:Lcom/narvii/util/http/ApiService;

    iget-object v3, p0, Lcom/narvii/community/MyCommunityListService;->reminderCheckListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v2, v1, v3}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    goto :goto_0

    .line 718
    :cond_0
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->invalidateNotificationRequests:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 719
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->invalidateNoticeRequests:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 720
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->reminderRequests:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 721
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->reminderRequestQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 722
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/community/MyCommunityListService;->reminderSendQueue:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 723
    invoke-virtual {p0}, Lcom/narvii/community/MyCommunityListService;->dispatchReminderChanged()V

    return-void
.end method

.method public resetRequestTime(I)V
    .locals 1

    .line 752
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->reminderRequestTimes:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public retryRetry()V
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->adapter:Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->onErrorRetry()V

    return-void
.end method

.method public sendReminderRequest(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_6

    .line 647
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 649
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 650
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 651
    iget-object v2, p0, Lcom/narvii/community/MyCommunityListService;->reminderRequests:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 652
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 656
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_3

    return-void

    .line 658
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 659
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 660
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_4

    const/16 v3, 0x2c

    .line 661
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 663
    :cond_4
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 665
    :cond_5
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "/reminder/check"

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    .line 666
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "ndcIds"

    invoke-virtual {v1, v2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const/4 v1, 0x1

    .line 667
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "ignoreUnreadChatThreadsCount"

    invoke-virtual {p1, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 668
    invoke-static {}, Lcom/narvii/util/Utils;->getTimeZoneInMin()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "timezone"

    invoke-virtual {p1, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    .line 669
    iget-object v1, p0, Lcom/narvii/community/MyCommunityListService;->api:Lcom/narvii/util/http/ApiService;

    iget-object v2, p0, Lcom/narvii/community/MyCommunityListService;->reminderCheckListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v1, p1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 670
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 671
    iget-object v2, p0, Lcom/narvii/community/MyCommunityListService;->reminderRequests:Ljava/util/HashMap;

    invoke-virtual {v2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    iget-object v2, p0, Lcom/narvii/community/MyCommunityListService;->reminderRequestTimes:Ljava/util/HashMap;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    :goto_3
    return-void
.end method

.method public setReminder(ILcom/narvii/community/ReminderCheck;Z)Z
    .locals 3

    .line 727
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->reminders:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/community/ReminderCheck;

    if-eqz v0, :cond_1

    .line 729
    iget-object v1, p2, Lcom/narvii/community/ReminderCheck;->hasCheckInToday:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    iget-object v1, p2, Lcom/narvii/community/ReminderCheck;->consecutiveCheckInDays:Ljava/lang/Integer;

    if-nez v1, :cond_0

    iget-object v1, p2, Lcom/narvii/community/ReminderCheck;->checkInHistory:Lcom/narvii/model/CheckInHistory;

    if-nez v1, :cond_0

    .line 730
    iget-object v1, v0, Lcom/narvii/community/ReminderCheck;->hasCheckInToday:Ljava/lang/Boolean;

    iput-object v1, p2, Lcom/narvii/community/ReminderCheck;->hasCheckInToday:Ljava/lang/Boolean;

    .line 731
    iget-object v1, v0, Lcom/narvii/community/ReminderCheck;->consecutiveCheckInDays:Ljava/lang/Integer;

    iput-object v1, p2, Lcom/narvii/community/ReminderCheck;->consecutiveCheckInDays:Ljava/lang/Integer;

    .line 732
    iget-object v1, v0, Lcom/narvii/community/ReminderCheck;->checkInHistory:Lcom/narvii/model/CheckInHistory;

    iput-object v1, p2, Lcom/narvii/community/ReminderCheck;->checkInHistory:Lcom/narvii/model/CheckInHistory;

    .line 734
    :cond_0
    iget v1, p2, Lcom/narvii/community/ReminderCheck;->notificationsCount:I

    iget v2, v0, Lcom/narvii/community/ReminderCheck;->notificationsCount:I

    if-ne v1, v2, :cond_1

    iget v1, p2, Lcom/narvii/community/ReminderCheck;->noticesCount:I

    iget v2, v0, Lcom/narvii/community/ReminderCheck;->noticesCount:I

    if-ne v1, v2, :cond_1

    iget-object v1, p2, Lcom/narvii/community/ReminderCheck;->hasCheckInToday:Ljava/lang/Boolean;

    iget-object v2, v0, Lcom/narvii/community/ReminderCheck;->hasCheckInToday:Ljava/lang/Boolean;

    .line 736
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p2, Lcom/narvii/community/ReminderCheck;->consecutiveCheckInDays:Ljava/lang/Integer;

    iget-object v2, v0, Lcom/narvii/community/ReminderCheck;->consecutiveCheckInDays:Ljava/lang/Integer;

    .line 737
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p2, Lcom/narvii/community/ReminderCheck;->checkInHistory:Lcom/narvii/model/CheckInHistory;

    .line 738
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/narvii/community/ReminderCheck;->checkInHistory:Lcom/narvii/model/CheckInHistory;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 742
    :cond_1
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->reminders:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    iget-object p2, p0, Lcom/narvii/community/MyCommunityListService;->reminderTimestamps:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_2

    .line 745
    iget-object p2, p0, Lcom/narvii/community/MyCommunityListService;->reminderRequestTimes:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/community/MyCommunityListService;->dispatchReminderChanged()V

    const/4 p1, 0x1

    return p1
.end method

.method public suggestErrorMessage()Ljava/lang/String;
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->suggestError:Ljava/lang/String;

    return-object v0
.end method

.method public suggestList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation

    .line 300
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->suggestList:Ljava/util/List;

    return-object v0
.end method

.method public suggestTags()Ljava/lang/String;
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->suggestTags:Ljava/lang/String;

    return-object v0
.end method

.method public updateUserProfile(ILcom/narvii/model/User;Ljava/lang/String;Z)Z
    .locals 8

    .line 417
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->userProfiles:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    const/4 v2, 0x0

    if-nez p3, :cond_2

    .line 421
    iget-object p3, p0, Lcom/narvii/community/MyCommunityListService;->userTimestamps:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    iget-object p3, p0, Lcom/narvii/community/MyCommunityListService;->userProfiles:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_1

    .line 424
    invoke-virtual {p0, v2, v2}, Lcom/narvii/community/MyCommunityListService;->dispatchListChanged(Lcom/narvii/community/MyCommunityListResponse;Ljava/lang/Integer;)V

    :cond_1
    return v0

    .line 428
    :cond_2
    iget-object v3, p0, Lcom/narvii/community/MyCommunityListService;->userTimestamps:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 429
    invoke-static {v3}, Lcom/narvii/util/DateTimeFormatter;->parseISO8601(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 430
    invoke-static {p3}, Lcom/narvii/util/DateTimeFormatter;->parseISO8601(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    .line 431
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    cmp-long v7, v5, v3

    if-gez v7, :cond_4

    .line 432
    iget-object v1, p0, Lcom/narvii/community/MyCommunityListService;->userTimestamps:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    iget-object p3, p0, Lcom/narvii/community/MyCommunityListService;->userProfiles:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_3

    .line 435
    invoke-virtual {p0, v2, v2}, Lcom/narvii/community/MyCommunityListService;->dispatchListChanged(Lcom/narvii/community/MyCommunityListResponse;Ljava/lang/Integer;)V

    :cond_3
    return v0

    :cond_4
    return v1
.end method
