.class public Lcom/narvii/community/MyCommunityListService;
.super Ljava/lang/Object;
.source "SourceFile"


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
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/HashMap;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/community/MyCommunityListService;->timestamps:Ljava/util/HashMap;

    .line 11
    .line 12
    new-instance v0, Ljava/util/HashMap;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/community/MyCommunityListService;->userProfiles:Ljava/util/HashMap;

    .line 18
    .line 19
    new-instance v0, Ljava/util/HashMap;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 23
    .line 24
    iput-object v0, p0, Lcom/narvii/community/MyCommunityListService;->userTimestamps:Ljava/util/HashMap;

    .line 25
    .line 26
    new-instance v0, Ljava/util/HashMap;

    .line 27
    .line 28
    .line 29
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 30
    .line 31
    iput-object v0, p0, Lcom/narvii/community/MyCommunityListService;->reminders:Ljava/util/HashMap;

    .line 32
    .line 33
    new-instance v0, Ljava/util/HashMap;

    .line 34
    .line 35
    .line 36
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 37
    .line 38
    iput-object v0, p0, Lcom/narvii/community/MyCommunityListService;->reminderTimestamps:Ljava/util/HashMap;

    .line 39
    .line 40
    new-instance v0, Ljava/util/HashMap;

    .line 41
    .line 42
    .line 43
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 44
    .line 45
    iput-object v0, p0, Lcom/narvii/community/MyCommunityListService;->reminderRequestTimes:Ljava/util/HashMap;

    .line 46
    .line 47
    new-instance v0, Ljava/util/HashMap;

    .line 48
    .line 49
    .line 50
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 51
    .line 52
    iput-object v0, p0, Lcom/narvii/community/MyCommunityListService;->reminderRequests:Ljava/util/HashMap;

    .line 53
    .line 54
    new-instance v0, Ljava/util/HashSet;

    .line 55
    .line 56
    .line 57
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 58
    .line 59
    iput-object v0, p0, Lcom/narvii/community/MyCommunityListService;->invalidateNotificationRequests:Ljava/util/HashSet;

    .line 60
    .line 61
    new-instance v0, Ljava/util/HashSet;

    .line 62
    .line 63
    .line 64
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 65
    .line 66
    iput-object v0, p0, Lcom/narvii/community/MyCommunityListService;->invalidateNoticeRequests:Ljava/util/HashSet;

    .line 67
    .line 68
    new-instance v0, Ljava/util/HashSet;

    .line 69
    .line 70
    .line 71
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 72
    .line 73
    iput-object v0, p0, Lcom/narvii/community/MyCommunityListService;->suggestSeenLogs:Ljava/util/HashSet;

    .line 74
    .line 75
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    .line 76
    .line 77
    .line 78
    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    .line 79
    .line 80
    iput-object v0, p0, Lcom/narvii/community/MyCommunityListService;->observers:Lcom/narvii/util/EventDispatcher;

    .line 81
    .line 82
    new-instance v0, Ljava/util/HashSet;

    .line 83
    .line 84
    .line 85
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 86
    .line 87
    iput-object v0, p0, Lcom/narvii/community/MyCommunityListService;->ndcIds:Ljava/util/HashSet;

    .line 88
    .line 89
    new-instance v0, Lcom/narvii/community/MyCommunityListService$1;

    .line 90
    .line 91
    .line 92
    invoke-direct {v0, p0}, Lcom/narvii/community/MyCommunityListService$1;-><init>(Lcom/narvii/community/MyCommunityListService;)V

    .line 93
    .line 94
    iput-object v0, p0, Lcom/narvii/community/MyCommunityListService;->communityReminderChangeInGlobalListener:Lcom/narvii/account/AccountService$CommunityReminderChangeInGlobalListener;

    .line 95
    .line 96
    new-instance v0, Lcom/narvii/community/MyCommunityListService$2;

    .line 97
    .line 98
    .line 99
    invoke-direct {v0, p0}, Lcom/narvii/community/MyCommunityListService$2;-><init>(Lcom/narvii/community/MyCommunityListService;)V

    .line 100
    .line 101
    iput-object v0, p0, Lcom/narvii/community/MyCommunityListService;->profileListener:Lcom/narvii/account/AccountService$ProfileListener;

    .line 102
    .line 103
    new-instance v0, Lcom/narvii/community/MyCommunityListService$6;

    .line 104
    .line 105
    .line 106
    invoke-direct {v0, p0}, Lcom/narvii/community/MyCommunityListService$6;-><init>(Lcom/narvii/community/MyCommunityListService;)V

    .line 107
    .line 108
    iput-object v0, p0, Lcom/narvii/community/MyCommunityListService;->receiver:Landroid/content/BroadcastReceiver;

    .line 109
    .line 110
    new-instance v1, Lcom/narvii/community/MyCommunityListService$8;

    .line 111
    .line 112
    const-class v2, Lcom/narvii/master/CommunityListResponse;

    .line 113
    .line 114
    .line 115
    invoke-direct {v1, p0, v2}, Lcom/narvii/community/MyCommunityListService$8;-><init>(Lcom/narvii/community/MyCommunityListService;Ljava/lang/Class;)V

    .line 116
    .line 117
    iput-object v1, p0, Lcom/narvii/community/MyCommunityListService;->suggestCommunityListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 118
    .line 119
    new-instance v1, Ljava/util/LinkedList;

    .line 120
    .line 121
    .line 122
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 123
    .line 124
    iput-object v1, p0, Lcom/narvii/community/MyCommunityListService;->reminderRequestQueue:Ljava/util/LinkedList;

    .line 125
    .line 126
    new-instance v1, Lcom/narvii/community/MyCommunityListService$9;

    .line 127
    .line 128
    .line 129
    invoke-direct {v1, p0}, Lcom/narvii/community/MyCommunityListService$9;-><init>(Lcom/narvii/community/MyCommunityListService;)V

    .line 130
    .line 131
    iput-object v1, p0, Lcom/narvii/community/MyCommunityListService;->reminderSendQueue:Ljava/lang/Runnable;

    .line 132
    .line 133
    new-instance v1, Lcom/narvii/community/MyCommunityListService$10;

    .line 134
    .line 135
    const-class v2, Lcom/narvii/community/ReminderCheckMapResponse;

    .line 136
    .line 137
    .line 138
    invoke-direct {v1, p0, v2}, Lcom/narvii/community/MyCommunityListService$10;-><init>(Lcom/narvii/community/MyCommunityListService;Ljava/lang/Class;)V

    .line 139
    .line 140
    iput-object v1, p0, Lcom/narvii/community/MyCommunityListService;->reminderCheckListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 141
    .line 142
    new-instance v1, Lcom/narvii/community/MyCommunityListService$11;

    .line 143
    .line 144
    .line 145
    invoke-direct {v1, p0}, Lcom/narvii/community/MyCommunityListService$11;-><init>(Lcom/narvii/community/MyCommunityListService;)V

    .line 146
    .line 147
    iput-object v1, p0, Lcom/narvii/community/MyCommunityListService;->pushListener:Lcom/narvii/pushservice/PushService$PushListener;

    .line 148
    .line 149
    iput-object p1, p0, Lcom/narvii/community/MyCommunityListService;->context:Lcom/narvii/app/NVContext;

    .line 150
    .line 151
    new-instance v2, Lcom/narvii/util/FilterHelper;

    .line 152
    .line 153
    .line 154
    invoke-direct {v2, p1}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 155
    .line 156
    iput-object v2, p0, Lcom/narvii/community/MyCommunityListService;->filterHelper:Lcom/narvii/util/FilterHelper;

    .line 157
    .line 158
    const-string v2, "api"

    .line 159
    .line 160
    .line 161
    invoke-interface {p1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 162
    move-result-object v2

    .line 163
    .line 164
    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 165
    .line 166
    iput-object v2, p0, Lcom/narvii/community/MyCommunityListService;->api:Lcom/narvii/util/http/ApiService;

    .line 167
    .line 168
    .line 169
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 170
    move-result-object v2

    .line 171
    .line 172
    .line 173
    invoke-static {v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 174
    move-result-object v2

    .line 175
    .line 176
    new-instance v3, Landroid/content/IntentFilter;

    .line 177
    .line 178
    const-string v4, "com.narvii.action.ACCOUNT_CHANGED"

    .line 179
    .line 180
    .line 181
    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v2, v0, v3}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 185
    .line 186
    const-string v0, "push"

    .line 187
    .line 188
    .line 189
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 190
    move-result-object v0

    .line 191
    .line 192
    check-cast v0, Lcom/narvii/pushservice/PushService;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, v1}, Lcom/narvii/pushservice/PushService;->addPushListener(Lcom/narvii/pushservice/PushService$PushListener;)V

    .line 196
    .line 197
    const-string v0, "account"

    .line 198
    .line 199
    .line 200
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 201
    move-result-object v0

    .line 202
    .line 203
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 204
    .line 205
    iget-object v1, p0, Lcom/narvii/community/MyCommunityListService;->communityReminderChangeInGlobalListener:Lcom/narvii/account/AccountService$CommunityReminderChangeInGlobalListener;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0, v1}, Lcom/narvii/account/AccountService;->addCommunityReminderChangeListener(Lcom/narvii/account/AccountService$CommunityReminderChangeInGlobalListener;)V

    .line 209
    .line 210
    iget-object v1, p0, Lcom/narvii/community/MyCommunityListService;->profileListener:Lcom/narvii/account/AccountService$ProfileListener;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0, v1}, Lcom/narvii/account/AccountService;->addProfileListener(Lcom/narvii/account/AccountService$ProfileListener;)V

    .line 214
    .line 215
    new-instance v0, Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;

    .line 216
    .line 217
    .line 218
    invoke-direct {v0, p0, p1}, Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;-><init>(Lcom/narvii/community/MyCommunityListService;Lcom/narvii/app/NVContext;)V

    .line 219
    .line 220
    iput-object v0, p0, Lcom/narvii/community/MyCommunityListService;->adapter:Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;->onAttach()V

    .line 224
    .line 225
    const-string v1, "notification"

    .line 226
    .line 227
    .line 228
    invoke-interface {p1, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 229
    move-result-object v1

    .line 230
    .line 231
    check-cast v1, Lcom/narvii/notification/NotificationCenter;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v1, v0}, Lcom/narvii/notification/NotificationCenter;->registerListener(Lcom/narvii/notification/NotificationListener;)V

    .line 235
    .line 236
    const-string v0, "affiliations"

    .line 237
    .line 238
    .line 239
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 240
    move-result-object v0

    .line 241
    .line 242
    check-cast v0, Lcom/narvii/community/AffiliationsService;

    .line 243
    .line 244
    iput-object v0, p0, Lcom/narvii/community/MyCommunityListService;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    .line 245
    .line 246
    const-string v0, "chat"

    .line 247
    .line 248
    .line 249
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 250
    move-result-object p1

    .line 251
    .line 252
    check-cast p1, Lcom/narvii/chat/core/ChatService;

    .line 253
    .line 254
    iput-object p1, p0, Lcom/narvii/community/MyCommunityListService;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 255
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/community/MyCommunityListService;)Ljava/util/HashSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/community/MyCommunityListService;->ndcIds:Ljava/util/HashSet;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/narvii/community/MyCommunityListService;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/community/MyCommunityListService;->suggestedRequestSent:Z

    return-void
.end method

.method static bridge synthetic c(Lcom/narvii/community/MyCommunityListService;III)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/community/MyCommunityListService;->updateCommunityReminder(III)V

    return-void
.end method

.method static bridge synthetic d(Lcom/narvii/community/MyCommunityListService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/community/MyCommunityListService;->updateNoticeService()V

    return-void
.end method

.method private hasLocalUnreadAlert()Z
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v1, "account"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    return v1

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/community/MyCommunityListService;->list()Ljava/util/List;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v2

    .line 31
    const/4 v3, 0x1

    .line 32
    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    check-cast v2, Lcom/narvii/model/Community;

    .line 40
    .line 41
    iget-object v4, p0, Lcom/narvii/community/MyCommunityListService;->reminders:Ljava/util/HashMap;

    .line 42
    .line 43
    iget v2, v2, Lcom/narvii/model/Community;->id:I

    .line 44
    .line 45
    .line 46
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    move-result-object v2

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    move-result-object v2

    .line 52
    .line 53
    check-cast v2, Lcom/narvii/community/ReminderCheck;

    .line 54
    .line 55
    if-eqz v2, :cond_1

    .line 56
    .line 57
    iget v4, v2, Lcom/narvii/community/ReminderCheck;->noticesCount:I

    .line 58
    .line 59
    iget v2, v2, Lcom/narvii/community/ReminderCheck;->notificationsCount:I

    .line 60
    add-int/2addr v4, v2

    .line 61
    .line 62
    if-lez v4, :cond_1

    .line 63
    return v3

    .line 64
    .line 65
    :cond_2
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->globalReminderCheck:Lcom/narvii/community/ReminderCheck;

    .line 66
    .line 67
    if-eqz v0, :cond_3

    .line 68
    .line 69
    iget v2, v0, Lcom/narvii/community/ReminderCheck;->noticesCount:I

    .line 70
    .line 71
    iget v0, v0, Lcom/narvii/community/ReminderCheck;->notificationsCount:I

    .line 72
    add-int/2addr v2, v0

    .line 73
    .line 74
    if-lez v2, :cond_3

    .line 75
    return v3

    .line 76
    :cond_3
    return v1
.end method

.method private updateCommunityReminder(III)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v1, "account"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_4

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->reminders:Ljava/util/HashMap;

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    check-cast v0, Lcom/narvii/community/ReminderCheck;

    .line 29
    const/4 v1, -0x1

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    new-instance v2, Lcom/narvii/community/ReminderCheck;

    .line 34
    .line 35
    .line 36
    invoke-direct {v2}, Lcom/narvii/community/ReminderCheck;-><init>()V

    .line 37
    .line 38
    if-ne p3, v1, :cond_0

    .line 39
    .line 40
    iput p2, v2, Lcom/narvii/community/ReminderCheck;->notificationsCount:I

    .line 41
    .line 42
    iget v0, v0, Lcom/narvii/community/ReminderCheck;->noticesCount:I

    .line 43
    .line 44
    iput v0, v2, Lcom/narvii/community/ReminderCheck;->noticesCount:I

    .line 45
    goto :goto_0

    .line 46
    .line 47
    :cond_0
    if-ne p2, v1, :cond_1

    .line 48
    .line 49
    iget v0, v0, Lcom/narvii/community/ReminderCheck;->notificationsCount:I

    .line 50
    .line 51
    iput v0, v2, Lcom/narvii/community/ReminderCheck;->notificationsCount:I

    .line 52
    .line 53
    iput p3, v2, Lcom/narvii/community/ReminderCheck;->noticesCount:I

    .line 54
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p1, v2, v0}, Lcom/narvii/community/MyCommunityListService;->setReminder(ILcom/narvii/community/ReminderCheck;Z)Z

    .line 58
    .line 59
    :cond_2
    if-ne p3, v1, :cond_3

    .line 60
    .line 61
    if-le p2, v1, :cond_3

    .line 62
    .line 63
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->reminderRequests:Ljava/util/HashMap;

    .line 64
    .line 65
    .line 66
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    move-result-object v2

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    move-result-object v0

    .line 72
    .line 73
    if-eqz v0, :cond_3

    .line 74
    .line 75
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->invalidateNotificationRequests:Ljava/util/HashSet;

    .line 76
    .line 77
    .line 78
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    move-result-object v2

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    :cond_3
    if-ne p2, v1, :cond_4

    .line 85
    .line 86
    if-le p3, v1, :cond_4

    .line 87
    .line 88
    iget-object p2, p0, Lcom/narvii/community/MyCommunityListService;->reminderRequests:Ljava/util/HashMap;

    .line 89
    .line 90
    .line 91
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    move-result-object p3

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    move-result-object p2

    .line 97
    .line 98
    if-eqz p2, :cond_4

    .line 99
    .line 100
    iget-object p2, p0, Lcom/narvii/community/MyCommunityListService;->invalidateNoticeRequests:Ljava/util/HashSet;

    .line 101
    .line 102
    .line 103
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    move-result-object p1

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_4
    return-void
.end method

.method private updateNoticeService()V
    .locals 3

    .line 1
    .line 2
    sget v0, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    .line 3
    .line 4
    const/16 v1, 0x64

    .line 5
    .line 6
    if-ne v0, v1, :cond_2

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/narvii/community/MyCommunityListService;->hasUnreadAlert:Z

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/narvii/community/MyCommunityListService;->hasLocalUnreadAlert()Z

    .line 12
    move-result v1

    .line 13
    .line 14
    iput-boolean v1, p0, Lcom/narvii/community/MyCommunityListService;->hasUnreadAlert:Z

    .line 15
    .line 16
    if-eq v1, v0, :cond_2

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->context:Lcom/narvii/app/NVContext;

    .line 19
    .line 20
    const-string v1, "_notice"

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    check-cast v0, Lcom/narvii/services/incubator/IncubatorNoticeService;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/narvii/services/incubator/IncubatorNoticeService;->hasReminder()Z

    .line 30
    move-result v1

    .line 31
    .line 32
    iget-boolean v2, p0, Lcom/narvii/community/MyCommunityListService;->hasUnreadAlert:Z

    .line 33
    .line 34
    if-eq v1, v2, :cond_2

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/narvii/services/incubator/IncubatorNoticeService;->isActive()Z

    .line 38
    move-result v1

    .line 39
    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/narvii/services/incubator/IncubatorNoticeService;->isFullCheckRequesting()Z

    .line 44
    move-result v1

    .line 45
    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    iget-boolean v1, p0, Lcom/narvii/community/MyCommunityListService;->hasUnreadAlert:Z

    .line 49
    .line 50
    if-eqz v1, :cond_0

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const/4 v1, 0x1

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lcom/narvii/services/incubator/IncubatorNoticeService;->refresh(Z)V

    .line 56
    goto :goto_0

    .line 57
    .line 58
    .line 59
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/services/incubator/IncubatorNoticeService;->invalidate()V

    .line 60
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public addObserver(Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->observers:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public addReminderRequestQueue(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/narvii/community/MyCommunityListService;->addReminderRequestQueue(IZ)V

    return-void
.end method

.method public addReminderRequestQueue(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->reminderRequests:Ljava/util/HashMap;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiRequest;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/narvii/community/MyCommunityListService;->api:Lcom/narvii/util/http/ApiService;

    iget-object v1, p0, Lcom/narvii/community/MyCommunityListService;->reminderCheckListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 3
    invoke-virtual {p2, v0, v1}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 4
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 5
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/narvii/community/MyCommunityListService;->reminderRequests:Ljava/util/HashMap;

    .line 6
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/narvii/community/MyCommunityListService;->invalidateNotificationRequests:Ljava/util/HashSet;

    .line 7
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/narvii/community/MyCommunityListService;->invalidateNoticeRequests:Ljava/util/HashSet;

    .line 8
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/narvii/community/MyCommunityListService;->reminderRequestTimes:Ljava/util/HashMap;

    .line 9
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    iget-object p2, p0, Lcom/narvii/community/MyCommunityListService;->reminderRequestQueue:Ljava/util/LinkedList;

    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/narvii/community/MyCommunityListService;->reminderRequestQueue:Ljava/util/LinkedList;

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object p1, p0, Lcom/narvii/community/MyCommunityListService;->reminderRequestQueue:Ljava/util/LinkedList;

    .line 12
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/16 p2, 0xf

    if-le p1, p2, :cond_2

    iget-object p1, p0, Lcom/narvii/community/MyCommunityListService;->reminderRequestQueue:Ljava/util/LinkedList;

    .line 13
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_1

    .line 14
    :cond_2
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/narvii/community/MyCommunityListService;->reminderSendQueue:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p2, p0, Lcom/narvii/community/MyCommunityListService;->reminderSendQueue:Ljava/lang/Runnable;

    const-wide/16 v0, 0x190

    .line 15
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method dispatchListChanged(Lcom/narvii/community/MyCommunityListResponse;Ljava/lang/Integer;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->observers:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    new-instance v1, Lcom/narvii/community/MyCommunityListService$4;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p0, p1, p2}, Lcom/narvii/community/MyCommunityListService$4;-><init>(Lcom/narvii/community/MyCommunityListService;Lcom/narvii/community/MyCommunityListResponse;Ljava/lang/Integer;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->safeDispatch(Lcom/narvii/util/Callback;)V

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/community/MyCommunityListService;->suggestT3_oldCount:Ljava/lang/Integer;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 18
    move-result p1

    .line 19
    const/4 p2, 0x3

    .line 20
    .line 21
    if-gt p1, p2, :cond_0

    .line 22
    .line 23
    iget-object p1, p0, Lcom/narvii/community/MyCommunityListService;->context:Lcom/narvii/app/NVContext;

    .line 24
    .line 25
    const-string p2, "recentCommunities"

    .line 26
    .line 27
    .line 28
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    check-cast p1, Lcom/narvii/community/RecentCommunityHelper;

    .line 32
    const/4 p2, 0x6

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p2}, Lcom/narvii/community/RecentCommunityHelper;->getRecentIdList(I)Ljava/util/List;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    .line 39
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 40
    move-result p1

    .line 41
    .line 42
    iget-object p2, p0, Lcom/narvii/community/MyCommunityListService;->suggestT3_oldCount:Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 46
    move-result p2

    .line 47
    .line 48
    if-le p1, p2, :cond_0

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/narvii/community/MyCommunityListService;->refreshSuggestCommunityRequest()V

    .line 52
    :cond_0
    return-void
.end method

.method dispatchReminderChanged()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->observers:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    new-instance v1, Lcom/narvii/community/MyCommunityListService$5;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/narvii/community/MyCommunityListService$5;-><init>(Lcom/narvii/community/MyCommunityListService;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->safeDispatch(Lcom/narvii/util/Callback;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/narvii/community/MyCommunityListService;->updateNoticeService()V

    .line 14
    return-void
.end method

.method dispatchSuggestListChanged(Lcom/narvii/master/CommunityListResponse;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->observers:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    new-instance v1, Lcom/narvii/community/MyCommunityListService$3;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lcom/narvii/community/MyCommunityListService$3;-><init>(Lcom/narvii/community/MyCommunityListService;Lcom/narvii/master/CommunityListResponse;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->safeDispatch(Lcom/narvii/util/Callback;)V

    .line 11
    return-void
.end method

.method public errorMessage()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->adapter:Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->errorMessage()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getCommunityRequestTime()J
    .locals 2

    iget-wide v0, p0, Lcom/narvii/community/MyCommunityListService;->requestTime:J

    return-wide v0
.end method

.method public getCommunityTimestamp(I)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->timestamps:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    check-cast p1, Ljava/lang/String;

    .line 13
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

    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->ndcIds:Ljava/util/HashSet;

    return-object v0
.end method

.method public getReminder(I)Lcom/narvii/community/ReminderCheck;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->reminders:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    check-cast p1, Lcom/narvii/community/ReminderCheck;

    .line 13
    return-object p1
.end method

.method public getReminderRequestTime(I)J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->reminderRequestTimes:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    check-cast p1, Ljava/lang/Long;

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    const-wide/16 v0, 0x0

    .line 17
    goto :goto_0

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 21
    move-result-wide v0

    .line 22
    :goto_0
    return-wide v0
.end method

.method public getReminderTimestamp(I)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->reminderTimestamps:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    check-cast p1, Ljava/lang/String;

    .line 13
    return-object p1
.end method

.method public getSuggestRequestTime()J
    .locals 2

    iget-wide v0, p0, Lcom/narvii/community/MyCommunityListService;->suggestRequestTime:J

    return-wide v0
.end method

.method public getUserInfoTimestamp(I)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->userTimestamps:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    check-cast p1, Ljava/lang/String;

    .line 13
    return-object p1
.end method

.method public getUserProfile(I)Lcom/narvii/model/User;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->userProfiles:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    check-cast p1, Lcom/narvii/model/User;

    .line 13
    return-object p1
.end method

.method public invalidReminders()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->reminderRequestTimes:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/community/MyCommunityListService;->dispatchReminderChanged()V

    .line 9
    return-void
.end method

.method public isEnd()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->adapter:Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->isEnd()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isSuggestedRequestSent()Z
    .locals 1

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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->filterList:Ljava/util/List;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public loadNextPage(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->adapter:Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;->loadNextPage(Z)V

    .line 6
    return-void
.end method

.method public logSuggestSeen(I)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->suggestSeenLogs:Ljava/util/HashSet;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->suggestSeenLogs:Ljava/util/HashSet;

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->context:Lcom/narvii/app/NVContext;

    .line 24
    .line 25
    const-string v1, "logging"

    .line 26
    .line 27
    .line 28
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    check-cast v0, Lcom/narvii/util/logging/LoggingService;

    .line 32
    const/4 v1, 0x4

    .line 33
    .line 34
    new-array v1, v1, [Ljava/lang/Object;

    .line 35
    const/4 v2, 0x0

    .line 36
    .line 37
    const-string v3, "eventOrigin"

    .line 38
    .line 39
    aput-object v3, v1, v2

    .line 40
    const/4 v2, 0x1

    .line 41
    .line 42
    const-string v3, "Suggest"

    .line 43
    .line 44
    aput-object v3, v1, v2

    .line 45
    const/4 v2, 0x2

    .line 46
    .line 47
    const-string v3, "referralObjectId"

    .line 48
    .line 49
    aput-object v3, v1, v2

    .line 50
    const/4 v2, 0x3

    .line 51
    .line 52
    .line 53
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    aput-object p1, v1, v2

    .line 57
    .line 58
    const-string p1, "SuggestAminoSeen"

    .line 59
    .line 60
    .line 61
    invoke-interface {v0, p1, v1}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->adapter:Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 12
    move-result-object v0

    .line 13
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

    .line 1
    .line 2
    and-int/lit8 v0, p1, 0x1

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/community/MyCommunityListService;->invalidReminders()V

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->adapter:Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1, p2}, Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 13
    return-void
.end method

.method public refreshSuggestCommunityRequest()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/narvii/community/MyCommunityListService;->refreshSuggestCommunityRequest(Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public refreshSuggestCommunityRequest(Lcom/narvii/util/Callback;)V
    .locals 5

    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->suggestError:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/narvii/community/MyCommunityListService;->suggestRequest:Lcom/narvii/util/http/ApiRequest;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/narvii/community/MyCommunityListService;->api:Lcom/narvii/util/http/ApiService;

    iget-object v3, p0, Lcom/narvii/community/MyCommunityListService;->suggestCommunityListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 2
    invoke-virtual {v2, v1, v3}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 3
    :cond_1
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "/community/suggested"

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/community/MyCommunityListService;->context:Lcom/narvii/app/NVContext;

    .line 4
    invoke-static {v2}, Lcom/narvii/util/LanguageHelper;->getUserSelectedLanguageCode(Lcom/narvii/app/NVContext;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "language"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/community/MyCommunityListService;->api:Lcom/narvii/util/http/ApiService;

    .line 5
    new-instance v3, Lcom/narvii/community/MyCommunityListService$7;

    const-class v4, Lcom/narvii/master/CommunityListResponse;

    invoke-direct {v3, p0, v4, p1}, Lcom/narvii/community/MyCommunityListService$7;-><init>(Lcom/narvii/community/MyCommunityListService;Ljava/lang/Class;Lcom/narvii/util/Callback;)V

    invoke-virtual {v2, v1, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    iput-object v1, p0, Lcom/narvii/community/MyCommunityListService;->suggestRequest:Lcom/narvii/util/http/ApiRequest;

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/narvii/community/MyCommunityListService;->suggestRequestTime:J

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/narvii/community/MyCommunityListService;->suggestError:Ljava/lang/String;

    .line 7
    invoke-virtual {p0, p1}, Lcom/narvii/community/MyCommunityListService;->dispatchSuggestListChanged(Lcom/narvii/master/CommunityListResponse;)V

    :cond_2
    return-void
.end method

.method public removeObserver(Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->observers:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    .line 6
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->adapter:Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;->reorder(Ljava/util/List;)V

    .line 6
    return-void
.end method

.method public resetList()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->timestamps:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->userProfiles:Ljava/util/HashMap;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->userTimestamps:Ljava/util/HashMap;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->adapter:Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->resetList()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/narvii/community/MyCommunityListService;->resetReminders()V

    .line 24
    return-void
.end method

.method public resetReminders()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->reminders:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->reminderTimestamps:Ljava/util/HashMap;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->reminderRequestTimes:Ljava/util/HashMap;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->reminderRequests:Ljava/util/HashMap;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v1

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    check-cast v1, Lcom/narvii/util/http/ApiRequest;

    .line 38
    .line 39
    iget-object v2, p0, Lcom/narvii/community/MyCommunityListService;->api:Lcom/narvii/util/http/ApiService;

    .line 40
    .line 41
    iget-object v3, p0, Lcom/narvii/community/MyCommunityListService;->reminderCheckListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v1, v3}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 45
    goto :goto_0

    .line 46
    .line 47
    :cond_0
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->invalidateNotificationRequests:Ljava/util/HashSet;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 51
    .line 52
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->invalidateNoticeRequests:Ljava/util/HashSet;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 56
    .line 57
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->reminderRequests:Ljava/util/HashMap;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 61
    .line 62
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->reminderRequestQueue:Ljava/util/LinkedList;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 66
    .line 67
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 68
    .line 69
    iget-object v1, p0, Lcom/narvii/community/MyCommunityListService;->reminderSendQueue:Ljava/lang/Runnable;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/narvii/community/MyCommunityListService;->dispatchReminderChanged()V

    .line 76
    return-void
.end method

.method public resetRequestTime(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->reminderRequestTimes:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    return-void
.end method

.method public retryRetry()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->adapter:Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->onErrorRetry()V

    .line 6
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

    .line 1
    .line 2
    if-eqz p1, :cond_6

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    goto/16 :goto_3

    .line 11
    .line 12
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 16
    move-result v1

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v1

    .line 28
    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    .line 32
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    check-cast v1, Ljava/lang/Integer;

    .line 36
    .line 37
    iget-object v2, p0, Lcom/narvii/community/MyCommunityListService;->reminderRequests:Ljava/util/HashMap;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    move-result-object v2

    .line 42
    .line 43
    if-nez v2, :cond_1

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    goto :goto_0

    .line 48
    .line 49
    .line 50
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 51
    move-result p1

    .line 52
    .line 53
    if-nez p1, :cond_3

    .line 54
    return-void

    .line 55
    .line 56
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 63
    move-result-object v1

    .line 64
    .line 65
    .line 66
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    move-result v2

    .line 68
    .line 69
    if-eqz v2, :cond_5

    .line 70
    .line 71
    .line 72
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    move-result-object v2

    .line 74
    .line 75
    check-cast v2, Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    .line 79
    move-result v3

    .line 80
    .line 81
    if-lez v3, :cond_4

    .line 82
    .line 83
    const/16 v3, 0x2c

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    :cond_4
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    goto :goto_1

    .line 91
    .line 92
    .line 93
    :cond_5
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 94
    move-result-object v1

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 98
    move-result-object v1

    .line 99
    .line 100
    const-string v2, "/reminder/check"

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 104
    move-result-object v1

    .line 105
    .line 106
    const-string v2, "ndcIds"

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object p1

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 114
    move-result-object p1

    .line 115
    .line 116
    const-string v1, "ignoreUnreadChatThreadsCount"

    .line 117
    .line 118
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 122
    move-result-object p1

    .line 123
    .line 124
    .line 125
    invoke-static {}, Lcom/narvii/util/Utils;->getTimeZoneInMin()I

    .line 126
    move-result v1

    .line 127
    .line 128
    .line 129
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    move-result-object v1

    .line 131
    .line 132
    const-string v2, "timezone"

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 136
    move-result-object p1

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 140
    move-result-object p1

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 144
    move-result-object p1

    .line 145
    .line 146
    iget-object v1, p0, Lcom/narvii/community/MyCommunityListService;->api:Lcom/narvii/util/http/ApiService;

    .line 147
    .line 148
    iget-object v2, p0, Lcom/narvii/community/MyCommunityListService;->reminderCheckListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1, p1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 152
    .line 153
    .line 154
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 155
    move-result-object v0

    .line 156
    .line 157
    .line 158
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 159
    move-result v1

    .line 160
    .line 161
    if-eqz v1, :cond_6

    .line 162
    .line 163
    .line 164
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 165
    move-result-object v1

    .line 166
    .line 167
    check-cast v1, Ljava/lang/Integer;

    .line 168
    .line 169
    iget-object v2, p0, Lcom/narvii/community/MyCommunityListService;->reminderRequests:Ljava/util/HashMap;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    iget-object v2, p0, Lcom/narvii/community/MyCommunityListService;->reminderRequestTimes:Ljava/util/HashMap;

    .line 175
    .line 176
    .line 177
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 178
    move-result-wide v3

    .line 179
    .line 180
    .line 181
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 182
    move-result-object v3

    .line 183
    .line 184
    .line 185
    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    goto :goto_2

    .line 187
    :cond_6
    :goto_3
    return-void
.end method

.method public setReminder(ILcom/narvii/community/ReminderCheck;Z)Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->reminders:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/community/ReminderCheck;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v1, p2, Lcom/narvii/community/ReminderCheck;->hasCheckInToday:Ljava/lang/Boolean;

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    iget-object v1, p2, Lcom/narvii/community/ReminderCheck;->consecutiveCheckInDays:Ljava/lang/Integer;

    .line 21
    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    iget-object v1, p2, Lcom/narvii/community/ReminderCheck;->checkInHistory:Lcom/narvii/model/CheckInHistory;

    .line 25
    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    iget-object v1, v0, Lcom/narvii/community/ReminderCheck;->hasCheckInToday:Ljava/lang/Boolean;

    .line 29
    .line 30
    iput-object v1, p2, Lcom/narvii/community/ReminderCheck;->hasCheckInToday:Ljava/lang/Boolean;

    .line 31
    .line 32
    iget-object v1, v0, Lcom/narvii/community/ReminderCheck;->consecutiveCheckInDays:Ljava/lang/Integer;

    .line 33
    .line 34
    iput-object v1, p2, Lcom/narvii/community/ReminderCheck;->consecutiveCheckInDays:Ljava/lang/Integer;

    .line 35
    .line 36
    iget-object v1, v0, Lcom/narvii/community/ReminderCheck;->checkInHistory:Lcom/narvii/model/CheckInHistory;

    .line 37
    .line 38
    iput-object v1, p2, Lcom/narvii/community/ReminderCheck;->checkInHistory:Lcom/narvii/model/CheckInHistory;

    .line 39
    .line 40
    :cond_0
    iget v1, p2, Lcom/narvii/community/ReminderCheck;->notificationsCount:I

    .line 41
    .line 42
    iget v2, v0, Lcom/narvii/community/ReminderCheck;->notificationsCount:I

    .line 43
    .line 44
    if-ne v1, v2, :cond_1

    .line 45
    .line 46
    iget v1, p2, Lcom/narvii/community/ReminderCheck;->noticesCount:I

    .line 47
    .line 48
    iget v2, v0, Lcom/narvii/community/ReminderCheck;->noticesCount:I

    .line 49
    .line 50
    if-ne v1, v2, :cond_1

    .line 51
    .line 52
    iget-object v1, p2, Lcom/narvii/community/ReminderCheck;->hasCheckInToday:Ljava/lang/Boolean;

    .line 53
    .line 54
    iget-object v2, v0, Lcom/narvii/community/ReminderCheck;->hasCheckInToday:Ljava/lang/Boolean;

    .line 55
    .line 56
    .line 57
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    move-result v1

    .line 59
    .line 60
    if-eqz v1, :cond_1

    .line 61
    .line 62
    iget-object v1, p2, Lcom/narvii/community/ReminderCheck;->consecutiveCheckInDays:Ljava/lang/Integer;

    .line 63
    .line 64
    iget-object v2, v0, Lcom/narvii/community/ReminderCheck;->consecutiveCheckInDays:Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    move-result v1

    .line 69
    .line 70
    if-eqz v1, :cond_1

    .line 71
    .line 72
    iget-object v1, p2, Lcom/narvii/community/ReminderCheck;->checkInHistory:Lcom/narvii/model/CheckInHistory;

    .line 73
    .line 74
    .line 75
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 76
    move-result-object v1

    .line 77
    .line 78
    iget-object v0, v0, Lcom/narvii/community/ReminderCheck;->checkInHistory:Lcom/narvii/model/CheckInHistory;

    .line 79
    .line 80
    .line 81
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 82
    move-result-object v0

    .line 83
    .line 84
    .line 85
    invoke-static {v1, v0}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    .line 86
    move-result v0

    .line 87
    .line 88
    if-eqz v0, :cond_1

    .line 89
    const/4 p1, 0x0

    .line 90
    return p1

    .line 91
    .line 92
    :cond_1
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->reminders:Ljava/util/HashMap;

    .line 93
    .line 94
    .line 95
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    move-result-object v1

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    iget-object p2, p0, Lcom/narvii/community/MyCommunityListService;->reminderTimestamps:Ljava/util/HashMap;

    .line 102
    .line 103
    .line 104
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    move-result-object v0

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    if-eqz p3, :cond_2

    .line 111
    .line 112
    iget-object p2, p0, Lcom/narvii/community/MyCommunityListService;->reminderRequestTimes:Ljava/util/HashMap;

    .line 113
    .line 114
    .line 115
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    move-result-object p1

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/community/MyCommunityListService;->dispatchReminderChanged()V

    .line 123
    const/4 p1, 0x1

    .line 124
    return p1
.end method

.method public suggestErrorMessage()Ljava/lang/String;
    .locals 1

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

    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->suggestList:Ljava/util/List;

    return-object v0
.end method

.method public suggestTags()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->suggestTags:Ljava/lang/String;

    return-object v0
.end method

.method public updateUserProfile(ILcom/narvii/model/User;Ljava/lang/String;Z)Z
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService;->userProfiles:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    return v1

    .line 15
    :cond_0
    const/4 v0, 0x1

    .line 16
    const/4 v2, 0x0

    .line 17
    .line 18
    if-nez p3, :cond_2

    .line 19
    .line 20
    iget-object p3, p0, Lcom/narvii/community/MyCommunityListService;->userTimestamps:Ljava/util/HashMap;

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    iget-object p3, p0, Lcom/narvii/community/MyCommunityListService;->userProfiles:Ljava/util/HashMap;

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    if-eqz p4, :cond_1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v2, v2}, Lcom/narvii/community/MyCommunityListService;->dispatchListChanged(Lcom/narvii/community/MyCommunityListResponse;Ljava/lang/Integer;)V

    .line 42
    :cond_1
    return v0

    .line 43
    .line 44
    :cond_2
    iget-object v3, p0, Lcom/narvii/community/MyCommunityListService;->userTimestamps:Ljava/util/HashMap;

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    move-result-object v4

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    move-result-object v3

    .line 53
    .line 54
    check-cast v3, Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    invoke-static {v3}, Lcom/narvii/util/DateTimeFormatter;->parseISO8601(Ljava/lang/String;)Ljava/util/Date;

    .line 58
    move-result-object v3

    .line 59
    .line 60
    .line 61
    invoke-static {p3}, Lcom/narvii/util/DateTimeFormatter;->parseISO8601(Ljava/lang/String;)Ljava/util/Date;

    .line 62
    move-result-object v4

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    .line 66
    move-result-wide v5

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    .line 70
    move-result-wide v3

    .line 71
    .line 72
    cmp-long v3, v5, v3

    .line 73
    .line 74
    if-gez v3, :cond_4

    .line 75
    .line 76
    iget-object v1, p0, Lcom/narvii/community/MyCommunityListService;->userTimestamps:Ljava/util/HashMap;

    .line 77
    .line 78
    .line 79
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    move-result-object v3

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    iget-object p3, p0, Lcom/narvii/community/MyCommunityListService;->userProfiles:Ljava/util/HashMap;

    .line 86
    .line 87
    .line 88
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    move-result-object p1

    .line 90
    .line 91
    .line 92
    invoke-virtual {p3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    if-eqz p4, :cond_3

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, v2, v2}, Lcom/narvii/community/MyCommunityListService;->dispatchListChanged(Lcom/narvii/community/MyCommunityListResponse;Ljava/lang/Integer;)V

    .line 98
    :cond_3
    return v0

    .line 99
    :cond_4
    return v1
.end method
