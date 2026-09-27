.class public final Lcom/narvii/chat/core/ChatService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/ws/WsService$WsListener;
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;,
        Lcom/narvii/chat/core/ChatService$Companion;,
        Lcom/narvii/chat/core/ChatService$DraftMap;,
        Lcom/narvii/chat/core/ChatService$LinkSnippetHandler;,
        Lcom/narvii/chat/core/ChatService$VideoMessagePostListener;,
        Lcom/narvii/chat/core/ChatService$VideoMessageProgressChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatService.kt\ncom/narvii/chat/core/ChatService\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,1873:1\n1855#2,2:1874\n1855#2,2:1878\n1855#2,2:1881\n1855#2,2:1883\n1855#2,2:1885\n1855#2,2:1887\n1855#2,2:1889\n1#3:1876\n215#4:1877\n216#4:1880\n*S KotlinDebug\n*F\n+ 1 ChatService.kt\ncom/narvii/chat/core/ChatService\n*L\n241#1:1874,2\n370#1:1878,2\n389#1:1881,2\n401#1:1883,2\n675#1:1885,2\n832#1:1887,2\n858#1:1889,2\n366#1:1877\n366#1:1880\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/chat/core/ChatService$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final CHAT_RESET_INTERVAL:I

.field private final DONE:Lcom/narvii/util/Tag;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final TAG:Ljava/lang/String;

.field private final THREAD_CHECK_REQUEST_MIN_INTERVAL:I

.field public final bitmapCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final chaHelper:Lcom/narvii/chat/util/ChatHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final chatDraftPrefs:Landroid/content/SharedPreferences;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final communitiesIsRequestingThreadCheck:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final communityLevelReceptors:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final ctx:Lcom/narvii/app/NVContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private curCid:I

.field private curCommunityContext:Lcom/narvii/app/NVContext;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private drafts:Lcom/narvii/chat/core/ChatService$DraftMap;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final globalLevelReceptors:Lcom/narvii/util/EventDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final guestThreadSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final inProcessUploadMediaIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final lastThreadCheckTime:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private lastWsDisconnectTimeMillis:J

.field private final localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final messages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/narvii/model/ChatMessage;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private myUid:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final outboundMessageCreateTime:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final outboundMessagesNdcIdsMapper:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final photoDir:Ljava/io/File;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private photoTouched:Z

.field private final postListener:Lcom/narvii/chat/core/ChatService$postListener$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final prefs:Landroid/content/SharedPreferences;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final recalledMessages:Landroid/util/SparseBooleanArray;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final receiver:Landroid/content/BroadcastReceiver;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final recentMessageTime:[J
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final serialRequestQueue:Lcom/android/volley/RequestQueue;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private setLatestTid:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private setLatestTime:J

.field private final threadCheckInfosMapper:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/chat/core/ThreadCheckInfo;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final threadCheckQueue:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private threadCheckRequest:Lcom/narvii/util/http/ApiRequest;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final threadCheckRunnable:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final threadConfigDispatcher:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/chat/ThreadConfigChangeListener;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final threadLevelReceptor:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final unreadChatCountMapper:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final videoMessageProgressDispatcher:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/chat/core/ChatService$VideoMessageProgressChangeListener;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final videoUploadPercents:Landroid/util/SparseIntArray;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final ws:Lcom/narvii/util/ws/WsService;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/chat/core/ChatService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/chat/core/ChatService$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/chat/core/ChatService;->Companion:Lcom/narvii/chat/core/ChatService$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 5
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/chat/core/ChatService;->ctx:Lcom/narvii/app/NVContext;

    .line 11
    .line 12
    const-string v0, "ws"

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    const-string v1, "getService(...)"

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    check-cast v0, Lcom/narvii/util/ws/WsService;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/chat/core/ChatService;->ws:Lcom/narvii/util/ws/WsService;

    .line 26
    .line 27
    new-instance v1, Lcom/narvii/util/Tag;

    .line 28
    .line 29
    const-string v2, "done"

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, v2}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    iput-object v1, p0, Lcom/narvii/chat/core/ChatService;->DONE:Lcom/narvii/util/Tag;

    .line 35
    .line 36
    const-class v1, Lcom/narvii/chat/core/ChatService;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    iput-object v1, p0, Lcom/narvii/chat/core/ChatService;->TAG:Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    const v1, 0x493e0

    .line 46
    .line 47
    iput v1, p0, Lcom/narvii/chat/core/ChatService;->CHAT_RESET_INTERVAL:I

    .line 48
    .line 49
    .line 50
    const v1, 0x1b7740

    .line 51
    .line 52
    iput v1, p0, Lcom/narvii/chat/core/ChatService;->THREAD_CHECK_REQUEST_MIN_INTERVAL:I

    .line 53
    .line 54
    new-instance v1, Lcom/narvii/util/EventDispatcher;

    .line 55
    .line 56
    .line 57
    invoke-direct {v1}, Lcom/narvii/util/EventDispatcher;-><init>()V

    .line 58
    .line 59
    iput-object v1, p0, Lcom/narvii/chat/core/ChatService;->globalLevelReceptors:Lcom/narvii/util/EventDispatcher;

    .line 60
    .line 61
    new-instance v1, Landroid/util/SparseArray;

    .line 62
    .line 63
    .line 64
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 65
    .line 66
    iput-object v1, p0, Lcom/narvii/chat/core/ChatService;->communityLevelReceptors:Landroid/util/SparseArray;

    .line 67
    .line 68
    new-instance v1, Ljava/util/HashMap;

    .line 69
    .line 70
    .line 71
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 72
    .line 73
    iput-object v1, p0, Lcom/narvii/chat/core/ChatService;->threadLevelReceptor:Ljava/util/HashMap;

    .line 74
    .line 75
    new-instance v1, Landroid/util/SparseArray;

    .line 76
    .line 77
    .line 78
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 79
    .line 80
    iput-object v1, p0, Lcom/narvii/chat/core/ChatService;->threadCheckInfosMapper:Landroid/util/SparseArray;

    .line 81
    .line 82
    new-instance v1, Landroid/util/SparseArray;

    .line 83
    .line 84
    .line 85
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 86
    .line 87
    iput-object v1, p0, Lcom/narvii/chat/core/ChatService;->unreadChatCountMapper:Landroid/util/SparseArray;

    .line 88
    .line 89
    new-instance v1, Landroid/util/SparseArray;

    .line 90
    .line 91
    .line 92
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 93
    .line 94
    iput-object v1, p0, Lcom/narvii/chat/core/ChatService;->lastThreadCheckTime:Landroid/util/SparseArray;

    .line 95
    .line 96
    new-instance v1, Ljava/util/HashSet;

    .line 97
    .line 98
    .line 99
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 100
    .line 101
    iput-object v1, p0, Lcom/narvii/chat/core/ChatService;->threadCheckQueue:Ljava/util/HashSet;

    .line 102
    .line 103
    new-instance v1, Ljava/util/HashSet;

    .line 104
    .line 105
    .line 106
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 107
    .line 108
    iput-object v1, p0, Lcom/narvii/chat/core/ChatService;->communitiesIsRequestingThreadCheck:Ljava/util/HashSet;

    .line 109
    .line 110
    new-instance v1, Landroid/util/SparseArray;

    .line 111
    .line 112
    .line 113
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 114
    .line 115
    iput-object v1, p0, Lcom/narvii/chat/core/ChatService;->outboundMessageCreateTime:Landroid/util/SparseArray;

    .line 116
    .line 117
    new-instance v1, Ljava/util/ArrayList;

    .line 118
    .line 119
    .line 120
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .line 122
    iput-object v1, p0, Lcom/narvii/chat/core/ChatService;->inProcessUploadMediaIds:Ljava/util/ArrayList;

    .line 123
    .line 124
    new-instance v1, Landroid/util/SparseArray;

    .line 125
    .line 126
    .line 127
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 128
    .line 129
    iput-object v1, p0, Lcom/narvii/chat/core/ChatService;->messages:Landroid/util/SparseArray;

    .line 130
    .line 131
    new-instance v1, Ljava/util/HashMap;

    .line 132
    .line 133
    .line 134
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 135
    .line 136
    iput-object v1, p0, Lcom/narvii/chat/core/ChatService;->outboundMessagesNdcIdsMapper:Ljava/util/HashMap;

    .line 137
    .line 138
    new-instance v1, Landroid/util/SparseBooleanArray;

    .line 139
    .line 140
    .line 141
    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 142
    .line 143
    iput-object v1, p0, Lcom/narvii/chat/core/ChatService;->recalledMessages:Landroid/util/SparseBooleanArray;

    .line 144
    .line 145
    new-instance v1, Ljava/util/HashMap;

    .line 146
    .line 147
    .line 148
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 149
    .line 150
    iput-object v1, p0, Lcom/narvii/chat/core/ChatService;->bitmapCache:Ljava/util/HashMap;

    .line 151
    .line 152
    new-instance v1, Landroid/util/SparseIntArray;

    .line 153
    .line 154
    .line 155
    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 156
    .line 157
    iput-object v1, p0, Lcom/narvii/chat/core/ChatService;->videoUploadPercents:Landroid/util/SparseIntArray;

    .line 158
    .line 159
    new-instance v1, Ljava/util/HashMap;

    .line 160
    .line 161
    .line 162
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 163
    .line 164
    iput-object v1, p0, Lcom/narvii/chat/core/ChatService;->videoMessageProgressDispatcher:Ljava/util/HashMap;

    .line 165
    .line 166
    new-instance v1, Ljava/util/HashMap;

    .line 167
    .line 168
    .line 169
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 170
    .line 171
    iput-object v1, p0, Lcom/narvii/chat/core/ChatService;->threadConfigDispatcher:Ljava/util/HashMap;

    .line 172
    .line 173
    new-instance v1, Ljava/util/HashSet;

    .line 174
    .line 175
    .line 176
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 177
    .line 178
    iput-object v1, p0, Lcom/narvii/chat/core/ChatService;->guestThreadSet:Ljava/util/HashSet;

    .line 179
    .line 180
    iget-object v0, v0, Lcom/narvii/util/ws/WsService;->listeners:Lcom/narvii/util/EventDispatcher;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0, p0}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 187
    move-result-object v0

    .line 188
    .line 189
    .line 190
    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 191
    move-result-object v0

    .line 192
    .line 193
    const-string v1, "getInstance(...)"

    .line 194
    .line 195
    .line 196
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    .line 198
    iput-object v0, p0, Lcom/narvii/chat/core/ChatService;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 199
    .line 200
    new-instance v0, Lcom/narvii/chat/util/ChatHelper;

    .line 201
    .line 202
    .line 203
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 204
    move-result-object v1

    .line 205
    .line 206
    const-string v2, "getContext(...)"

    .line 207
    .line 208
    .line 209
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-direct {v0, v1}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    .line 213
    .line 214
    iput-object v0, p0, Lcom/narvii/chat/core/ChatService;->chaHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 215
    .line 216
    .line 217
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 218
    move-result-object v0

    .line 219
    .line 220
    const-string v1, "chat"

    .line 221
    const/4 v2, 0x0

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 225
    move-result-object v0

    .line 226
    .line 227
    const-string v3, "getSharedPreferences(...)"

    .line 228
    .line 229
    .line 230
    invoke-static {v0, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    .line 232
    iput-object v0, p0, Lcom/narvii/chat/core/ChatService;->prefs:Landroid/content/SharedPreferences;

    .line 233
    .line 234
    .line 235
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 236
    move-result-object v0

    .line 237
    .line 238
    const-string v4, "chat_draft"

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 242
    move-result-object v0

    .line 243
    .line 244
    .line 245
    invoke-static {v0, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    .line 247
    iput-object v0, p0, Lcom/narvii/chat/core/ChatService;->chatDraftPrefs:Landroid/content/SharedPreferences;

    .line 248
    .line 249
    new-instance v0, Ljava/io/File;

    .line 250
    .line 251
    new-instance v2, Ljava/io/File;

    .line 252
    .line 253
    .line 254
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 255
    move-result-object v3

    .line 256
    .line 257
    .line 258
    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 259
    move-result-object v3

    .line 260
    .line 261
    const-string v4, "photo"

    .line 262
    .line 263
    .line 264
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 268
    .line 269
    iput-object v0, p0, Lcom/narvii/chat/core/ChatService;->photoDir:Ljava/io/File;

    .line 270
    .line 271
    new-instance v0, Lcom/android/volley/toolbox/BasicNetwork;

    .line 272
    .line 273
    new-instance v1, Lcom/narvii/util/http/ProxyStack;

    .line 274
    .line 275
    .line 276
    invoke-direct {v1, p1}, Lcom/narvii/util/http/ProxyStack;-><init>(Lcom/narvii/app/NVContext;)V

    .line 277
    .line 278
    .line 279
    invoke-direct {v0, v1}, Lcom/android/volley/toolbox/BasicNetwork;-><init>(Lcom/android/volley/toolbox/HttpStack;)V

    .line 280
    .line 281
    new-instance p1, Lcom/android/volley/RequestQueue;

    .line 282
    .line 283
    new-instance v1, Lcom/android/volley/toolbox/NoCache;

    .line 284
    .line 285
    .line 286
    invoke-direct {v1}, Lcom/android/volley/toolbox/NoCache;-><init>()V

    .line 287
    const/4 v2, 0x1

    .line 288
    .line 289
    .line 290
    invoke-direct {p1, v1, v0, v2}, Lcom/android/volley/RequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;I)V

    .line 291
    .line 292
    iput-object p1, p0, Lcom/narvii/chat/core/ChatService;->serialRequestQueue:Lcom/android/volley/RequestQueue;

    .line 293
    .line 294
    .line 295
    invoke-virtual {p1}, Lcom/android/volley/RequestQueue;->start()V

    .line 296
    .line 297
    new-instance p1, Lcom/narvii/chat/core/ChatService$receiver$1;

    .line 298
    .line 299
    .line 300
    invoke-direct {p1, p0}, Lcom/narvii/chat/core/ChatService$receiver$1;-><init>(Lcom/narvii/chat/core/ChatService;)V

    .line 301
    .line 302
    iput-object p1, p0, Lcom/narvii/chat/core/ChatService;->receiver:Landroid/content/BroadcastReceiver;

    .line 303
    .line 304
    new-instance p1, Lcom/narvii/chat/core/k;

    .line 305
    .line 306
    .line 307
    invoke-direct {p1, p0}, Lcom/narvii/chat/core/k;-><init>(Lcom/narvii/chat/core/ChatService;)V

    .line 308
    .line 309
    iput-object p1, p0, Lcom/narvii/chat/core/ChatService;->threadCheckRunnable:Ljava/lang/Runnable;

    .line 310
    .line 311
    new-instance p1, Lcom/narvii/chat/core/ChatService$postListener$1;

    .line 312
    .line 313
    const-class v0, Lcom/narvii/chat/MessageResponse;

    .line 314
    .line 315
    .line 316
    invoke-direct {p1, p0, v0}, Lcom/narvii/chat/core/ChatService$postListener$1;-><init>(Lcom/narvii/chat/core/ChatService;Ljava/lang/Class;)V

    .line 317
    .line 318
    iput-object p1, p0, Lcom/narvii/chat/core/ChatService;->postListener:Lcom/narvii/chat/core/ChatService$postListener$1;

    .line 319
    .line 320
    new-instance p1, Lcom/narvii/chat/core/ChatService$DraftMap;

    .line 321
    .line 322
    .line 323
    invoke-direct {p1}, Lcom/narvii/chat/core/ChatService$DraftMap;-><init>()V

    .line 324
    .line 325
    iput-object p1, p0, Lcom/narvii/chat/core/ChatService;->drafts:Lcom/narvii/chat/core/ChatService$DraftMap;

    .line 326
    const/4 p1, 0x3

    .line 327
    .line 328
    new-array p1, p1, [J

    .line 329
    .line 330
    iput-object p1, p0, Lcom/narvii/chat/core/ChatService;->recentMessageTime:[J

    .line 331
    return-void
.end method

.method public static synthetic a(Lcom/narvii/chat/core/ChatService;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/chat/core/ChatService;->threadCheckRunnable$lambda$13(Lcom/narvii/chat/core/ChatService;)V

    return-void
.end method

.method public static final synthetic access$dispatchVideoMessagePostProgressChange(Lcom/narvii/chat/core/ChatService;Ljava/lang/String;II)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/chat/core/ChatService;->dispatchVideoMessagePostProgressChange(Ljava/lang/String;II)V

    .line 4
    return-void
.end method

.method public static final synthetic access$getCommunitiesIsRequestingThreadCheck$p(Lcom/narvii/chat/core/ChatService;)Ljava/util/HashSet;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/chat/core/ChatService;->communitiesIsRequestingThreadCheck:Ljava/util/HashSet;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getLastThreadCheckTime$p(Lcom/narvii/chat/core/ChatService;)Landroid/util/SparseArray;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/chat/core/ChatService;->lastThreadCheckTime:Landroid/util/SparseArray;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getNdcIdFromMessage(Lcom/narvii/chat/core/ChatService;Lcom/narvii/model/ChatMessage;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/chat/core/ChatService;->getNdcIdFromMessage(Lcom/narvii/model/ChatMessage;)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$getPostListener$p(Lcom/narvii/chat/core/ChatService;)Lcom/narvii/chat/core/ChatService$postListener$1;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/chat/core/ChatService;->postListener:Lcom/narvii/chat/core/ChatService$postListener$1;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getSerialRequestQueue$p(Lcom/narvii/chat/core/ChatService;)Lcom/android/volley/RequestQueue;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/chat/core/ChatService;->serialRequestQueue:Lcom/android/volley/RequestQueue;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getThreadCheckInfosMapper$p(Lcom/narvii/chat/core/ChatService;)Landroid/util/SparseArray;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/chat/core/ChatService;->threadCheckInfosMapper:Landroid/util/SparseArray;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getThreadCheckQueue$p(Lcom/narvii/chat/core/ChatService;)Ljava/util/HashSet;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/chat/core/ChatService;->threadCheckQueue:Ljava/util/HashSet;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getThreadCheckRequest$p(Lcom/narvii/chat/core/ChatService;)Lcom/narvii/util/http/ApiRequest;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/chat/core/ChatService;->threadCheckRequest:Lcom/narvii/util/http/ApiRequest;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getVideoUploadPercents$p(Lcom/narvii/chat/core/ChatService;)Landroid/util/SparseIntArray;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/chat/core/ChatService;->videoUploadPercents:Landroid/util/SparseIntArray;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$onPostFinished(Lcom/narvii/chat/core/ChatService;Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/MessageResponse;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/core/ChatService;->onPostFinished(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/MessageResponse;)V

    .line 4
    return-void
.end method

.method public static final synthetic access$printCurrentThreadCheckTable(Lcom/narvii/chat/core/ChatService;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/core/ChatService;->printCurrentThreadCheckTable()V

    .line 4
    return-void
.end method

.method public static final synthetic access$sendNotification(Lcom/narvii/chat/core/ChatService;ILcom/narvii/notification/Notification;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/core/ChatService;->sendNotification(ILcom/narvii/notification/Notification;)V

    .line 4
    return-void
.end method

.method public static final synthetic access$setMyUid$p(Lcom/narvii/chat/core/ChatService;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/core/ChatService;->myUid:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public static synthetic b(Lcom/narvii/model/ChatMessage;Lcom/narvii/chat/ThreadConfigChangeListener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/core/ChatService;->dispatchAnnouncementChange$lambda$31(Lcom/narvii/model/ChatMessage;Lcom/narvii/chat/ThreadConfigChangeListener;)V

    return-void
.end method

.method public static synthetic buildBaseRequestNode$default(Lcom/narvii/chat/core/ChatService;Lcom/narvii/model/ChatMessage;Lcom/fasterxml/jackson/databind/node/ObjectNode;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p4, p4, 0x4

    .line 3
    .line 4
    if-eqz p4, :cond_0

    .line 5
    const/4 p3, 0x1

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/chat/core/ChatService;->buildBaseRequestNode(Lcom/narvii/model/ChatMessage;Lcom/fasterxml/jackson/databind/node/ObjectNode;Z)V

    .line 9
    return-void
.end method

.method private final buildUnreadThreadMapper(I)I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->threadCheckInfosMapper:Landroid/util/SparseArray;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/collection/ArrayMap;

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->unreadChatCountMapper:Landroid/util/SparseArray;

    .line 14
    .line 15
    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 21
    return v1

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    const-string v2, "<get-values>(...)"

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    check-cast v0, Ljava/lang/Iterable;

    .line 33
    .line 34
    .line 35
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    move-result v2

    .line 41
    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    move-result-object v2

    .line 47
    .line 48
    check-cast v2, Lcom/narvii/chat/core/ThreadCheckInfo;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Lcom/narvii/chat/core/ThreadCheckInfo;->hasUnreadMessage()Z

    .line 52
    move-result v2

    .line 53
    .line 54
    if-eqz v2, :cond_1

    .line 55
    .line 56
    add-int/lit8 v1, v1, 0x1

    .line 57
    goto :goto_0

    .line 58
    .line 59
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->unreadChatCountMapper:Landroid/util/SparseArray;

    .line 60
    .line 61
    .line 62
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    move-result-object v2

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 67
    return v1
.end method

.method private final buildVideoChatRequest(ILcom/narvii/model/ChatMessage;Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/narvii/util/http/ApiRequest;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    return-object v0

    .line 5
    :cond_0
    const/4 v4, 0x0

    .line 6
    const/4 v5, 0x4

    .line 7
    const/4 v6, 0x0

    .line 8
    move-object v1, p0

    .line 9
    move-object v2, p2

    .line 10
    move-object v3, p3

    .line 11
    .line 12
    .line 13
    invoke-static/range {v1 .. v6}, Lcom/narvii/chat/core/ChatService;->buildBaseRequestNode$default(Lcom/narvii/chat/core/ChatService;Lcom/narvii/model/ChatMessage;Lcom/fasterxml/jackson/databind/node/ObjectNode;ZILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/narvii/model/ChatMessage;->media()Lcom/narvii/model/Media;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/narvii/chat/core/ChatService;->photoManager$Amino_bundle()Lcom/narvii/photos/PhotoManager;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    iget-object v3, v1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v3}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/narvii/chat/core/ChatService;->photoManager$Amino_bundle()Lcom/narvii/photos/PhotoManager;

    .line 33
    move-result-object v3

    .line 34
    .line 35
    iget-object v1, v1, Lcom/narvii/model/Media;->coverImage:Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v1}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    .line 39
    move-result-object v1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move-object v1, v0

    .line 42
    move-object v2, v1

    .line 43
    .line 44
    :goto_0
    if-nez v2, :cond_2

    .line 45
    return-object v0

    .line 46
    .line 47
    .line 48
    :cond_2
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    iget-object v3, p2, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    .line 60
    .line 61
    new-instance v4, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    const-string v5, "/chat/thread/"

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v3, "/message"

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object v3

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 85
    move-result-object v0

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 89
    move-result-object p1

    .line 90
    .line 91
    const-string v0, "cover.jpg"

    .line 92
    .line 93
    if-eqz v1, :cond_3

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 97
    move-result v3

    .line 98
    const/4 v4, 0x1

    .line 99
    .line 100
    if-ne v3, v4, :cond_3

    .line 101
    .line 102
    new-instance v3, Lcom/narvii/util/http/ApiRequest$FilePart;

    .line 103
    .line 104
    .line 105
    invoke-direct {v3, v0, v1}, Lcom/narvii/util/http/ApiRequest$FilePart;-><init>(Ljava/lang/String;Ljava/io/File;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->addPart(Lcom/narvii/util/http/ApiRequest$MultiPart;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 109
    .line 110
    .line 111
    :cond_3
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 112
    move-result-object v1

    .line 113
    .line 114
    const-string v3, "contentType"

    .line 115
    .line 116
    const-string v4, "video/mp4"

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, v3, v4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 120
    .line 121
    const-string v3, "cover"

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v3, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 125
    .line 126
    const-string v0, "video"

    .line 127
    .line 128
    const-string v3, "video.mp4"

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, v0, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 132
    .line 133
    const-string v0, "videoUpload"

    .line 134
    .line 135
    .line 136
    invoke-virtual {p3, v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->contentTypeMultiPart()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 140
    move-result-object v0

    .line 141
    .line 142
    new-instance v1, Lcom/narvii/util/http/ApiRequest$FormPart;

    .line 143
    .line 144
    const-string v4, "payload"

    .line 145
    .line 146
    .line 147
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->toString()Ljava/lang/String;

    .line 148
    move-result-object p3

    .line 149
    .line 150
    .line 151
    invoke-direct {v1, v4, p3}, Lcom/narvii/util/http/ApiRequest$FormPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->addPart(Lcom/narvii/util/http/ApiRequest$MultiPart;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 155
    move-result-object p3

    .line 156
    .line 157
    new-instance v0, Lcom/narvii/util/http/ApiRequest$FilePart;

    .line 158
    .line 159
    .line 160
    invoke-direct {v0, v3, v2}, Lcom/narvii/util/http/ApiRequest$FilePart;-><init>(Ljava/lang/String;Ljava/io/File;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p3, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->addPart(Lcom/narvii/util/http/ApiRequest$MultiPart;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 167
    .line 168
    .line 169
    const p2, 0xea60

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->timeout(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 176
    move-result-object p1

    .line 177
    return-object p1
.end method

.method public static synthetic c(Lcom/narvii/chat/core/ChatService;Lcom/narvii/model/ChatMessage;Lcom/narvii/model/ChatMessage;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/chat/core/ChatService;->onPostFinished$lambda$23$lambda$22(Lcom/narvii/chat/core/ChatService;Lcom/narvii/model/ChatMessage;Lcom/narvii/model/ChatMessage;)V

    return-void
.end method

.method private final checkCurCommunityThreadCountChange(I)V
    .locals 2

    .line 1
    .line 2
    if-gez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->unreadChatCountMapper:Landroid/util/SparseArray;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p1}, Lcom/narvii/chat/core/ChatService;->buildUnreadThreadMapper(I)I

    .line 15
    move-result v1

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    goto :goto_0

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 22
    move-result v0

    .line 23
    .line 24
    if-eq v1, v0, :cond_2

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-virtual {p0, p1}, Lcom/narvii/chat/core/ChatService;->dispatchUnreadCountChangeOnCommunityLevel(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/narvii/chat/core/ChatService;->dispatchGlobalThreadCountChange()V

    .line 31
    :cond_2
    return-void
.end method

.method public static synthetic d(Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/chat/core/ChatService;->dispatchChatMessageListReset$lambda$7(Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V

    return-void
.end method

.method private final dispatchAnnouncementChange(Ljava/lang/String;Lcom/narvii/model/ChatMessage;)V
    .locals 1

    .line 1
    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    if-nez p2, :cond_1

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->threadConfigDispatcher:Ljava/util/HashMap;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    check-cast p1, Lcom/narvii/util/EventDispatcher;

    .line 21
    .line 22
    if-nez p1, :cond_2

    .line 23
    return-void

    .line 24
    .line 25
    :cond_2
    new-instance v0, Lcom/narvii/chat/core/a;

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, p2}, Lcom/narvii/chat/core/a;-><init>(Lcom/narvii/model/ChatMessage;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 32
    :cond_3
    :goto_0
    return-void
.end method

.method private static final dispatchAnnouncementChange$lambda$31(Lcom/narvii/model/ChatMessage;Lcom/narvii/chat/ThreadConfigChangeListener;)V
    .locals 1

    .line 1
    .line 2
    iget p0, p0, Lcom/narvii/model/ChatMessage;->type:I

    .line 3
    .line 4
    const/16 v0, 0x79

    .line 5
    .line 6
    if-ne p0, v0, :cond_0

    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-interface {p1, p0}, Lcom/narvii/chat/ThreadConfigChangeListener;->announcementPinBehaviorChanged(Z)V

    .line 13
    return-void
.end method

.method private final dispatchChannelPermissionChange(Ljava/lang/String;Lcom/narvii/model/ChatMessage;)V
    .locals 3

    .line 1
    .line 2
    if-eqz p1, :cond_6

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    goto :goto_1

    .line 10
    .line 11
    :cond_0
    if-nez p2, :cond_1

    .line 12
    goto :goto_1

    .line 13
    .line 14
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->threadConfigDispatcher:Ljava/util/HashMap;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    check-cast p1, Lcom/narvii/util/EventDispatcher;

    .line 21
    .line 22
    if-nez p1, :cond_2

    .line 23
    return-void

    .line 24
    .line 25
    :cond_2
    new-instance v0, Lkotlin/jvm/internal/n0;

    .line 26
    .line 27
    .line 28
    invoke-direct {v0}, Lkotlin/jvm/internal/n0;-><init>()V

    .line 29
    const/4 v1, 0x1

    .line 30
    .line 31
    iput v1, v0, Lkotlin/jvm/internal/n0;->element:I

    .line 32
    .line 33
    iget p2, p2, Lcom/narvii/model/ChatMessage;->type:I

    .line 34
    .line 35
    const/16 v2, 0x7c

    .line 36
    .line 37
    if-ne p2, v2, :cond_3

    .line 38
    const/4 p2, 0x3

    .line 39
    .line 40
    iput p2, v0, Lkotlin/jvm/internal/n0;->element:I

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :cond_3
    const/16 v2, 0x7b

    .line 44
    .line 45
    if-ne p2, v2, :cond_4

    .line 46
    const/4 p2, 0x2

    .line 47
    .line 48
    iput p2, v0, Lkotlin/jvm/internal/n0;->element:I

    .line 49
    goto :goto_0

    .line 50
    .line 51
    :cond_4
    const/16 v2, 0x7a

    .line 52
    .line 53
    if-ne p2, v2, :cond_5

    .line 54
    .line 55
    iput v1, v0, Lkotlin/jvm/internal/n0;->element:I

    .line 56
    .line 57
    :cond_5
    :goto_0
    new-instance p2, Lcom/narvii/chat/core/l;

    .line 58
    .line 59
    .line 60
    invoke-direct {p2, v0}, Lcom/narvii/chat/core/l;-><init>(Lkotlin/jvm/internal/n0;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p2}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 64
    :cond_6
    :goto_1
    return-void
.end method

.method private static final dispatchChannelPermissionChange$lambda$29(Lkotlin/jvm/internal/n0;Lcom/narvii/chat/ThreadConfigChangeListener;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "$p"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget p0, p0, Lkotlin/jvm/internal/n0;->element:I

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, p0}, Lcom/narvii/chat/ThreadConfigChangeListener;->onLivePermissionChanged(I)V

    .line 11
    return-void
.end method

.method private final dispatchChatMessageListChange(Ljava/lang/String;Lcom/narvii/chat/util/ChatMessageDto;)V
    .locals 4

    .line 1
    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    if-nez p2, :cond_1

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->threadLevelReceptor:Ljava/util/HashMap;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Lcom/narvii/util/EventDispatcher;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/narvii/chat/core/ChatService;->TAG:Ljava/lang/String;

    .line 23
    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    const-string v3, "dispatchChatMessageListChange --> "

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    .line 42
    invoke-static {v1, p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    new-instance p1, Lcom/narvii/chat/core/h;

    .line 47
    .line 48
    .line 49
    invoke-direct {p1, p2}, Lcom/narvii/chat/core/h;-><init>(Lcom/narvii/chat/util/ChatMessageDto;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 53
    :cond_2
    :goto_0
    return-void
.end method

.method private static final dispatchChatMessageListChange$lambda$6(Lcom/narvii/chat/util/ChatMessageDto;Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/chat/util/ChatMessageDto;->ndcId:I

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, v0, p0}, Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;->onNewChatMessage(ILcom/narvii/chat/util/ChatMessageDto;)V

    .line 6
    return-void
.end method

.method private final dispatchChatMessageListReset()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->TAG:Ljava/lang/String;

    .line 3
    .line 4
    const-string v1, "dispatchChatMessageListReset"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->threadLevelReceptor:Ljava/util/HashMap;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v1

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    check-cast v1, Lcom/narvii/util/EventDispatcher;

    .line 30
    .line 31
    new-instance v2, Lcom/narvii/chat/core/j;

    .line 32
    .line 33
    .line 34
    invoke-direct {v2}, Lcom/narvii/chat/core/j;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    return-void
.end method

.method private static final dispatchChatMessageListReset$lambda$7(Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;->onResetChatMessageList()V

    .line 4
    return-void
.end method

.method private static final dispatchGlobalOnNewMessage$lambda$2(ILcom/narvii/chat/util/ChatMessageDto;Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "$chatMessageDto"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p2, p0, p1}, Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;->onNewChatMessage(ILcom/narvii/chat/util/ChatMessageDto;)V

    .line 9
    return-void
.end method

.method private static final dispatchGlobalThreadCountChange$lambda$1(Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-interface {p0, v0}, Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;->onUnreadThreadCountChanged(I)V

    .line 5
    return-void
.end method

.method private static final dispatchNewMessageOnCommunityLevel$lambda$3(ILcom/narvii/chat/util/ChatMessageDto;Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p2, p0, p1}, Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;->onNewChatMessage(ILcom/narvii/chat/util/ChatMessageDto;)V

    .line 4
    return-void
.end method

.method private static final dispatchUnreadCountChangeOnCommunityLevel$lambda$4(ILcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p1, p0}, Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;->onUnreadThreadCountChanged(I)V

    .line 4
    return-void
.end method

.method private final dispatchVideoMessagePostProgressChange(Ljava/lang/String;II)V
    .locals 1

    .line 1
    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->videoMessageProgressDispatcher:Ljava/util/HashMap;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    check-cast p1, Lcom/narvii/util/EventDispatcher;

    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    return-void

    .line 21
    .line 22
    :cond_1
    new-instance v0, Lcom/narvii/chat/core/f;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, p2, p3}, Lcom/narvii/chat/core/f;-><init>(II)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 29
    :cond_2
    :goto_0
    return-void
.end method

.method private static final dispatchVideoMessagePostProgressChange$lambda$27(IILcom/narvii/chat/core/ChatService$VideoMessageProgressChangeListener;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p2, p0, p1}, Lcom/narvii/chat/core/ChatService$VideoMessageProgressChangeListener;->onProgressUpdate(II)V

    .line 4
    return-void
.end method

.method private final dispatchViewOnlyChange(Ljava/lang/String;Lcom/narvii/model/ChatMessage;)V
    .locals 1

    .line 1
    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    if-nez p2, :cond_1

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->threadConfigDispatcher:Ljava/util/HashMap;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    check-cast p1, Lcom/narvii/util/EventDispatcher;

    .line 21
    .line 22
    if-nez p1, :cond_2

    .line 23
    return-void

    .line 24
    .line 25
    :cond_2
    new-instance v0, Lcom/narvii/chat/core/d;

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, p2}, Lcom/narvii/chat/core/d;-><init>(Lcom/narvii/model/ChatMessage;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 32
    :cond_3
    :goto_0
    return-void
.end method

.method private static final dispatchViewOnlyChange$lambda$30(Lcom/narvii/model/ChatMessage;Lcom/narvii/chat/ThreadConfigChangeListener;)V
    .locals 1

    .line 1
    .line 2
    iget p0, p0, Lcom/narvii/model/ChatMessage;->type:I

    .line 3
    .line 4
    const/16 v0, 0x7d

    .line 5
    .line 6
    if-ne p0, v0, :cond_0

    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-interface {p1, p0}, Lcom/narvii/chat/ThreadConfigChangeListener;->viewOnlyChanged(Z)V

    .line 13
    return-void
.end method

.method public static synthetic e(ILcom/narvii/chat/util/ChatMessageDto;Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/chat/core/ChatService;->dispatchGlobalOnNewMessage$lambda$2(ILcom/narvii/chat/util/ChatMessageDto;Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V

    return-void
.end method

.method public static synthetic f(Lcom/narvii/chat/util/ChatMessageDto;Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/core/ChatService;->dispatchChatMessageListChange$lambda$6(Lcom/narvii/chat/util/ChatMessageDto;Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V

    return-void
.end method

.method public static synthetic g(Lcom/narvii/model/ChatMessage;Lcom/narvii/chat/ThreadConfigChangeListener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/core/ChatService;->dispatchViewOnlyChange$lambda$30(Lcom/narvii/model/ChatMessage;Lcom/narvii/chat/ThreadConfigChangeListener;)V

    return-void
.end method

.method private final getCurCommunityThreadCheckInfos(I)Landroidx/collection/ArrayMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/chat/core/ThreadCheckInfo;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->threadCheckInfosMapper:Landroid/util/SparseArray;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/collection/ArrayMap;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Landroidx/collection/ArrayMap;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    .line 16
    .line 17
    iget-object v1, p0, Lcom/narvii/chat/core/ChatService;->threadCheckInfosMapper:Landroid/util/SparseArray;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 21
    :cond_0
    return-object v0
.end method

.method private final getNdcIdFromMessage(Lcom/narvii/model/ChatMessage;)I
    .locals 0

    .line 1
    .line 2
    iget p1, p1, Lcom/narvii/model/ChatMessage;->_ndcId:I

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    iget p1, p0, Lcom/narvii/chat/core/ChatService;->curCid:I

    .line 7
    :cond_0
    return p1
.end method

.method private final getVideoMessagePostListener(Lcom/narvii/model/ChatMessage;)Lcom/narvii/util/http/ApiResponseListener;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/model/ChatMessage;",
            ")",
            "Lcom/narvii/util/http/ApiResponseListener<",
            "Lcom/narvii/chat/MessageResponse;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/chat/core/ChatService$VideoMessagePostListener;

    .line 3
    .line 4
    const-class v1, Lcom/narvii/chat/MessageResponse;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, p0, v1, p1}, Lcom/narvii/chat/core/ChatService$VideoMessagePostListener;-><init>(Lcom/narvii/chat/core/ChatService;Ljava/lang/Class;Lcom/narvii/model/ChatMessage;)V

    .line 8
    return-object v0
.end method

.method public static synthetic h(IILcom/narvii/chat/core/ChatService$VideoMessageProgressChangeListener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/chat/core/ChatService;->dispatchVideoMessagePostProgressChange$lambda$27(IILcom/narvii/chat/core/ChatService$VideoMessageProgressChangeListener;)V

    return-void
.end method

.method public static synthetic i(Lkotlin/jvm/internal/n0;Lcom/narvii/chat/ThreadConfigChangeListener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/core/ChatService;->dispatchChannelPermissionChange$lambda$29(Lkotlin/jvm/internal/n0;Lcom/narvii/chat/ThreadConfigChangeListener;)V

    return-void
.end method

.method private final isReadyToRequestThreadCheckForCurCommunity(I)Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->lastThreadCheckTime:Landroid/util/SparseArray;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    move-result-wide v0

    .line 13
    .line 14
    iget-object v2, p0, Lcom/narvii/chat/core/ChatService;->lastThreadCheckTime:Landroid/util/SparseArray;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    const-string v2, "get(...)"

    .line 21
    .line 22
    .line 23
    invoke-static {p1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    check-cast p1, Ljava/lang/Number;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 29
    move-result-wide v2

    .line 30
    sub-long/2addr v0, v2

    .line 31
    .line 32
    iget p1, p0, Lcom/narvii/chat/core/ChatService;->THREAD_CHECK_REQUEST_MIN_INTERVAL:I

    .line 33
    int-to-long v2, p1

    .line 34
    .line 35
    cmp-long p1, v0, v2

    .line 36
    .line 37
    if-lez p1, :cond_0

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 p1, 0x0

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 42
    :goto_1
    return p1
.end method

.method public static synthetic j(Lcom/narvii/chat/core/ChatService;Lcom/narvii/community/AffiliationsService$AffiliationResponse;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/core/ChatService;->refresh$lambda$12(Lcom/narvii/chat/core/ChatService;Lcom/narvii/community/AffiliationsService$AffiliationResponse;)V

    return-void
.end method

.method public static synthetic k(ILcom/narvii/chat/util/ChatMessageDto;Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/chat/core/ChatService;->dispatchNewMessageOnCommunityLevel$lambda$3(ILcom/narvii/chat/util/ChatMessageDto;Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V

    return-void
.end method

.method public static synthetic l(Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/chat/core/ChatService;->dispatchGlobalThreadCountChange$lambda$1(Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V

    return-void
.end method

.method public static synthetic m(Lcom/narvii/chat/core/ChatService;Lcom/narvii/model/ChatMessage;Lcom/narvii/model/ChatMessage;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/narvii/chat/core/ChatService;->onPostFinished$lambda$23(Lcom/narvii/chat/core/ChatService;Lcom/narvii/model/ChatMessage;Lcom/narvii/model/ChatMessage;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic n(ILcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/core/ChatService;->dispatchUnreadCountChangeOnCommunityLevel$lambda$4(ILcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V

    return-void
.end method

.method private final notificationCenter(I)Lcom/narvii/notification/NotificationCenter;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "notification"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1, v1}, Lcom/narvii/app/NVApplication;->getService(ILjava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    const-string v0, "getService(...)"

    .line 13
    .line 14
    .line 15
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    .line 18
    return-object p1
.end method

.method private final onMessagePostSuccess(Lcom/narvii/model/ChatMessage;Lcom/narvii/model/ChatMessage;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->getClientRefIdTmp()I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2, p1}, Lcom/narvii/model/ChatMessage;->setClientRefIdTmp(I)V

    .line 8
    const/4 p1, 0x0

    .line 9
    .line 10
    iput p1, p2, Lcom/narvii/model/ChatMessage;->_status:I

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p2}, Lcom/narvii/chat/core/ChatService;->storeOutboundMessage(Lcom/narvii/model/ChatMessage;)V

    .line 14
    .line 15
    new-instance p1, Lcom/narvii/notification/Notification;

    .line 16
    .line 17
    const-string v0, "update"

    .line 18
    .line 19
    .line 20
    invoke-direct {p1, v0, p2}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p2}, Lcom/narvii/chat/core/ChatService;->getNdcIdFromMessage(Lcom/narvii/model/ChatMessage;)I

    .line 24
    move-result v0

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, v0, p1}, Lcom/narvii/chat/core/ChatService;->sendNotification(ILcom/narvii/notification/Notification;)V

    .line 28
    .line 29
    iget p1, p2, Lcom/narvii/model/ChatMessage;->type:I

    .line 30
    const/4 p2, 0x2

    .line 31
    .line 32
    if-ne p1, p2, :cond_0

    .line 33
    .line 34
    :try_start_0
    iget-object p1, p0, Lcom/narvii/chat/core/ChatService;->ctx:Lcom/narvii/app/NVContext;

    .line 35
    .line 36
    .line 37
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    .line 41
    const p2, 0x7f110027

    .line 42
    .line 43
    .line 44
    invoke-static {p1, p2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    .line 45
    move-result-object p1

    .line 46
    const/4 p2, 0x3

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    goto :goto_0

    .line 54
    :catch_0
    move-exception p1

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    .line 61
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 62
    :cond_0
    :goto_0
    return-void
.end method

.method private final onPostFinished(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/MessageResponse;)V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    const-string v0, "null cannot be cast to non-null type com.narvii.model.ChatMessage"

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    check-cast p1, Lcom/narvii/model/ChatMessage;

    .line 12
    .line 13
    iget-object v0, p1, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    .line 14
    const/4 v1, 0x1

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x2

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const-string v5, "photo"

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v5, v3, v4, v2}, Lkotlin/text/k;->K(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 25
    move-result v0

    .line 26
    .line 27
    if-ne v0, v1, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/narvii/chat/core/ChatService;->photoManager$Amino_bundle()Lcom/narvii/photos/PhotoManager;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    iget-object v5, p1, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v5}, Lcom/narvii/photos/PhotoManager;->remove(Ljava/lang/String;)V

    .line 37
    .line 38
    :cond_0
    iget-object p2, p2, Lcom/narvii/chat/MessageResponse;->message:Lcom/narvii/model/ChatMessage;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->getFirstLinkSnippet()Lcom/narvii/model/LinkSummary;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/narvii/model/LinkSummary;->getFirstMedia()Lcom/narvii/model/Media;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    iget-object v5, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 53
    .line 54
    if-eqz v5, :cond_1

    .line 55
    .line 56
    .line 57
    invoke-static {v5}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 58
    .line 59
    const-string v6, "photo://"

    .line 60
    .line 61
    .line 62
    invoke-static {v5, v6, v3, v4, v2}, Lkotlin/text/k;->K(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 63
    move-result v2

    .line 64
    .line 65
    if-ne v2, v1, :cond_1

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/narvii/chat/core/ChatService;->photoManager$Amino_bundle()Lcom/narvii/photos/PhotoManager;

    .line 69
    move-result-object v1

    .line 70
    .line 71
    iget-object v2, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v2}, Lcom/narvii/photos/PhotoManager;->remove(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :cond_1
    invoke-virtual {p2}, Lcom/narvii/model/ChatMessage;->getFirstLinkSnippet()Lcom/narvii/model/LinkSummary;

    .line 78
    move-result-object v1

    .line 79
    .line 80
    if-eqz v1, :cond_2

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Lcom/narvii/model/LinkSummary;->getFirstMedia()Lcom/narvii/model/Media;

    .line 84
    move-result-object v1

    .line 85
    .line 86
    iget-object v2, p0, Lcom/narvii/chat/core/ChatService;->bitmapCache:Ljava/util/HashMap;

    .line 87
    .line 88
    iget-object v3, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    move-result-object v2

    .line 93
    .line 94
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 95
    .line 96
    if-eqz v2, :cond_2

    .line 97
    .line 98
    if-eqz v1, :cond_2

    .line 99
    .line 100
    iget-object v3, p0, Lcom/narvii/chat/core/ChatService;->bitmapCache:Ljava/util/HashMap;

    .line 101
    .line 102
    iget-object v1, v1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 103
    .line 104
    const-string v5, "url"

    .line 105
    .line 106
    .line 107
    invoke-static {v1, v5}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    iget-object v1, p0, Lcom/narvii/chat/core/ChatService;->bitmapCache:Ljava/util/HashMap;

    .line 113
    .line 114
    iget-object v0, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->recalledMessages:Landroid/util/SparseBooleanArray;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->getClientRefIdTmp()I

    .line 123
    move-result v1

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 127
    move-result v0

    .line 128
    .line 129
    if-eqz v0, :cond_3

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0, p2}, Lcom/narvii/chat/core/ChatService;->sendDeleteMessageRequest(Lcom/narvii/model/ChatMessage;)V

    .line 133
    .line 134
    new-instance p1, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .line 139
    const-string v0, "recall message "

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    move-result-object p1

    .line 150
    .line 151
    .line 152
    invoke-static {p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 153
    goto :goto_0

    .line 154
    .line 155
    :cond_3
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->ctx:Lcom/narvii/app/NVContext;

    .line 156
    .line 157
    const-string v1, "mediaLoader"

    .line 158
    .line 159
    .line 160
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 161
    move-result-object v0

    .line 162
    .line 163
    check-cast v0, Lcom/narvii/media/MediaLoader;

    .line 164
    .line 165
    if-eqz v0, :cond_4

    .line 166
    .line 167
    iget v1, p2, Lcom/narvii/model/ChatMessage;->type:I

    .line 168
    .line 169
    if-ne v1, v4, :cond_4

    .line 170
    .line 171
    iget v1, p1, Lcom/narvii/model/ChatMessage;->type:I

    .line 172
    .line 173
    if-ne v1, v4, :cond_4

    .line 174
    .line 175
    iget-object v1, p2, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    .line 176
    .line 177
    iget-object v2, p1, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    .line 178
    .line 179
    new-instance v3, Lcom/narvii/chat/core/b;

    .line 180
    .line 181
    .line 182
    invoke-direct {v3, p0, p1, p2}, Lcom/narvii/chat/core/b;-><init>(Lcom/narvii/chat/core/ChatService;Lcom/narvii/model/ChatMessage;Lcom/narvii/model/ChatMessage;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/media/MediaLoader;->cacheLocalFile(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/util/Callback;)V

    .line 186
    goto :goto_0

    .line 187
    .line 188
    .line 189
    :cond_4
    invoke-static {p2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/core/ChatService;->onMessagePostSuccess(Lcom/narvii/model/ChatMessage;Lcom/narvii/model/ChatMessage;)V

    .line 193
    :goto_0
    return-void
.end method

.method private static final onPostFinished$lambda$23(Lcom/narvii/chat/core/ChatService;Lcom/narvii/model/ChatMessage;Lcom/narvii/model/ChatMessage;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    .line 2
    const-string p3, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p3, "$orig"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    new-instance p3, Lcom/narvii/chat/core/e;

    .line 13
    .line 14
    .line 15
    invoke-direct {p3, p0, p1, p2}, Lcom/narvii/chat/core/e;-><init>(Lcom/narvii/chat/core/ChatService;Lcom/narvii/model/ChatMessage;Lcom/narvii/model/ChatMessage;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p3}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 19
    return-void
.end method

.method private static final onPostFinished$lambda$23$lambda$22(Lcom/narvii/chat/core/ChatService;Lcom/narvii/model/ChatMessage;Lcom/narvii/model/ChatMessage;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "$orig"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/core/ChatService;->onMessagePostSuccess(Lcom/narvii/model/ChatMessage;Lcom/narvii/model/ChatMessage;)V

    .line 17
    return-void
.end method

.method public static synthetic postMessage$default(Lcom/narvii/chat/core/ChatService;ILcom/narvii/model/ChatMessage;ILjava/lang/Object;)Lcom/narvii/model/ChatMessage;
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p3, p3, 0x1

    .line 3
    .line 4
    if-eqz p3, :cond_0

    .line 5
    .line 6
    iget p1, p0, Lcom/narvii/chat/core/ChatService;->curCid:I

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/core/ChatService;->postMessage(ILcom/narvii/model/ChatMessage;)Lcom/narvii/model/ChatMessage;

    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private final printCurrentThreadCheckTable()V
    .locals 15

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "\n-------------------Thread Check table ------------------\n"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/chat/core/ChatService;->threadCheckInfosMapper:Landroid/util/SparseArray;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    move v3, v2

    .line 19
    .line 20
    :goto_0
    if-ge v3, v1, :cond_1

    .line 21
    .line 22
    iget-object v4, p0, Lcom/narvii/chat/core/ChatService;->threadCheckInfosMapper:Landroid/util/SparseArray;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 26
    move-result v4

    .line 27
    .line 28
    iget-object v5, p0, Lcom/narvii/chat/core/ChatService;->threadCheckInfosMapper:Landroid/util/SparseArray;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 32
    move-result-object v5

    .line 33
    .line 34
    check-cast v5, Landroidx/collection/ArrayMap;

    .line 35
    .line 36
    if-eqz v5, :cond_0

    .line 37
    .line 38
    .line 39
    invoke-virtual {v5}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    .line 40
    move-result-object v5

    .line 41
    .line 42
    if-eqz v5, :cond_0

    .line 43
    .line 44
    check-cast v5, Ljava/lang/Iterable;

    .line 45
    .line 46
    .line 47
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 48
    move-result-object v5

    .line 49
    .line 50
    .line 51
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    move-result v6

    .line 53
    .line 54
    if-eqz v6, :cond_0

    .line 55
    .line 56
    .line 57
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    move-result-object v6

    .line 59
    .line 60
    check-cast v6, Lcom/narvii/chat/core/ThreadCheckInfo;

    .line 61
    .line 62
    sget-object v7, Lkotlin/jvm/internal/u0;->INSTANCE:Lkotlin/jvm/internal/u0;

    .line 63
    const/4 v7, 0x1

    .line 64
    .line 65
    new-array v8, v7, [Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    move-result-object v9

    .line 70
    .line 71
    aput-object v9, v8, v2

    .line 72
    .line 73
    .line 74
    invoke-static {v8, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 75
    move-result-object v8

    .line 76
    .line 77
    const-string v9, "%10d"

    .line 78
    .line 79
    .line 80
    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 81
    move-result-object v8

    .line 82
    .line 83
    const-string v9, "format(...)"

    .line 84
    .line 85
    .line 86
    invoke-static {v8, v9}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    .line 88
    new-array v10, v7, [Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v6}, Lcom/narvii/chat/core/ThreadCheckInfo;->getThreadId()Ljava/lang/String;

    .line 92
    move-result-object v11

    .line 93
    .line 94
    aput-object v11, v10, v2

    .line 95
    .line 96
    .line 97
    invoke-static {v10, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 98
    move-result-object v10

    .line 99
    .line 100
    const-string v11, "%40s"

    .line 101
    .line 102
    .line 103
    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 104
    move-result-object v10

    .line 105
    .line 106
    .line 107
    invoke-static {v10, v9}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    .line 109
    new-array v12, v7, [Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v6}, Lcom/narvii/chat/core/ThreadCheckInfo;->getLatestActivityTime()Ljava/util/Date;

    .line 113
    move-result-object v13

    .line 114
    .line 115
    aput-object v13, v12, v2

    .line 116
    .line 117
    .line 118
    invoke-static {v12, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 119
    move-result-object v12

    .line 120
    .line 121
    .line 122
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 123
    move-result-object v12

    .line 124
    .line 125
    .line 126
    invoke-static {v12, v9}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    .line 128
    new-array v13, v7, [Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v6}, Lcom/narvii/chat/core/ThreadCheckInfo;->getLastReadTime()Ljava/util/Date;

    .line 132
    move-result-object v14

    .line 133
    .line 134
    aput-object v14, v13, v2

    .line 135
    .line 136
    .line 137
    invoke-static {v13, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 138
    move-result-object v7

    .line 139
    .line 140
    .line 141
    invoke-static {v11, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 142
    move-result-object v7

    .line 143
    .line 144
    .line 145
    invoke-static {v7, v9}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v6}, Lcom/narvii/chat/core/ThreadCheckInfo;->getAlertOption()Ljava/lang/Integer;

    .line 149
    move-result-object v6

    .line 150
    .line 151
    new-instance v9, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    const-string v8, " "

    .line 160
    .line 161
    .line 162
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    const-string v7, "     "

    .line 180
    .line 181
    .line 182
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    const-string v6, "\n"

    .line 188
    .line 189
    .line 190
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    move-result-object v6

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    goto/16 :goto_1

    .line 200
    .line 201
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 202
    .line 203
    goto/16 :goto_0

    .line 204
    .line 205
    :cond_1
    iget-object v1, p0, Lcom/narvii/chat/core/ChatService;->TAG:Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    move-result-object v0

    .line 210
    .line 211
    .line 212
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    return-void
.end method

.method public static synthetic queryThreadCheckInfo$default(Lcom/narvii/chat/core/ChatService;IZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/core/ChatService;->queryThreadCheckInfo(IZ)V

    return-void
.end method

.method public static synthetic queryThreadCheckInfo$default(Lcom/narvii/chat/core/ChatService;Ljava/util/Set;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/core/ChatService;->queryThreadCheckInfo(Ljava/util/Set;Z)V

    return-void
.end method

.method private final recordRecentMessage()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->recentMessageTime:[J

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/collections/l;->k0([J)Ljava/lang/Long;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/chat/core/ChatService;->recentMessageTime:[J

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 14
    move-result-wide v2

    .line 15
    .line 16
    .line 17
    invoke-static {v1, v2, v3}, Lkotlin/collections/l;->W([JJ)I

    .line 18
    move-result v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    .line 22
    :goto_0
    iget-object v1, p0, Lcom/narvii/chat/core/ChatService;->recentMessageTime:[J

    .line 23
    .line 24
    .line 25
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 26
    move-result-wide v2

    .line 27
    .line 28
    aput-wide v2, v1, v0

    .line 29
    return-void
.end method

.method private static final refresh$lambda$12(Lcom/narvii/chat/core/ChatService;Lcom/narvii/community/AffiliationsService$AffiliationResponse;)V
    .locals 2

    .line 1
    .line 2
    const-string v0, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Ljava/util/HashSet;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 11
    .line 12
    iget-object p1, p1, Lcom/narvii/community/AffiliationsService$AffiliationResponse;->affiliations:Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    check-cast v1, Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 p1, 0x0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0, p1}, Lcom/narvii/chat/core/ChatService;->queryThreadCheckInfo(Ljava/util/Set;Z)V

    .line 37
    return-void
.end method

.method private final removeOutboundMessage(I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->messages:Landroid/util/SparseArray;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/model/ChatMessage;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/chat/core/ChatService;->messages:Landroid/util/SparseArray;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/narvii/chat/core/ChatService;->outboundMessagesNdcIdsMapper:Ljava/util/HashMap;

    .line 18
    .line 19
    iget v0, v0, Lcom/narvii/model/ChatMessage;->_ndcId:I

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    check-cast v0, Ljava/util/Set;

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    .line 38
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 39
    :cond_0
    return-void
.end method

.method public static synthetic sendChatMessageAck$default(Lcom/narvii/chat/core/ChatService;ILcom/narvii/model/ChatMessage;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/chat/core/ChatService;->sendChatMessageAck(ILcom/narvii/model/ChatMessage;Z)V

    return-void
.end method

.method public static synthetic sendChatMessageAck$default(Lcom/narvii/chat/core/ChatService;Lcom/narvii/chat/util/ChatMessageDto;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/core/ChatService;->sendChatMessageAck(Lcom/narvii/chat/util/ChatMessageDto;Z)V

    return-void
.end method

.method private final sendChatRequest(ILcom/narvii/model/ChatMessage;)Z
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0, p2}, Lcom/narvii/chat/core/ChatService;->parseLinkFirst(Lcom/narvii/model/ChatMessage;)Z

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    return v2

    .line 13
    .line 14
    .line 15
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/core/ChatService;->buildRequest(ILcom/narvii/model/ChatMessage;)Lcom/narvii/util/http/ApiRequest;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    if-nez p1, :cond_2

    .line 19
    .line 20
    iget-object v3, p0, Lcom/narvii/chat/core/ChatService;->postListener:Lcom/narvii/chat/core/ChatService$postListener$1;

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 32
    move-result-object v4

    .line 33
    .line 34
    const-string p1, "build(...)"

    .line 35
    .line 36
    .line 37
    invoke-static {v4, p1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    const/4 v5, 0x0

    .line 39
    const/4 v6, 0x0

    .line 40
    .line 41
    iget-object p1, p0, Lcom/narvii/chat/core/ChatService;->ctx:Lcom/narvii/app/NVContext;

    .line 42
    .line 43
    .line 44
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    .line 48
    const p2, 0x7f12014f

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 52
    move-result-object v7

    .line 53
    .line 54
    const-string p1, "getString(...)"

    .line 55
    .line 56
    .line 57
    invoke-static {v7, p1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    const/4 v8, 0x0

    .line 59
    const/4 v9, 0x0

    .line 60
    .line 61
    .line 62
    invoke-virtual/range {v3 .. v9}, Lcom/narvii/chat/core/ChatService$postListener$1;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 63
    return v0

    .line 64
    .line 65
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->ctx:Lcom/narvii/app/NVContext;

    .line 66
    .line 67
    const-string v1, "api"

    .line 68
    .line 69
    .line 70
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    move-result-object v0

    .line 72
    .line 73
    const-string v1, "getService(...)"

    .line 74
    .line 75
    .line 76
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, p2}, Lcom/narvii/chat/core/ChatService;->isVideoUploadRequest(Lcom/narvii/model/ChatMessage;)Z

    .line 82
    move-result v1

    .line 83
    .line 84
    if-eqz v1, :cond_3

    .line 85
    .line 86
    .line 87
    invoke-direct {p0, p2}, Lcom/narvii/chat/core/ChatService;->getVideoMessagePostListener(Lcom/narvii/model/ChatMessage;)Lcom/narvii/util/http/ApiResponseListener;

    .line 88
    move-result-object v1

    .line 89
    goto :goto_0

    .line 90
    .line 91
    :cond_3
    iget-object v1, p0, Lcom/narvii/chat/core/ChatService;->postListener:Lcom/narvii/chat/core/ChatService$postListener$1;

    .line 92
    .line 93
    .line 94
    :goto_0
    invoke-virtual {p2}, Lcom/narvii/model/ChatMessage;->isSerialExecutorRequired()Z

    .line 95
    move-result v3

    .line 96
    .line 97
    if-eqz v3, :cond_4

    .line 98
    .line 99
    iget-object v3, p0, Lcom/narvii/chat/core/ChatService;->serialRequestQueue:Lcom/android/volley/RequestQueue;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, p1, v1, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;Lcom/android/volley/RequestQueue;)V

    .line 103
    goto :goto_1

    .line 104
    .line 105
    .line 106
    :cond_4
    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 107
    .line 108
    .line 109
    :goto_1
    invoke-virtual {p0, p2}, Lcom/narvii/chat/core/ChatService;->recordOutBoundCreatedTime(Lcom/narvii/model/ChatMessage;)V

    .line 110
    return v2
.end method

.method private final sendNotification(ILcom/narvii/notification/Notification;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "notification"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1, v1}, Lcom/narvii/app/NVApplication;->getService(ILjava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    const-string v0, "getService(...)"

    .line 13
    .line 14
    .line 15
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    .line 18
    .line 19
    .line 20
    invoke-static {p1, p2}, Lcom/narvii/util/NotificationUtils;->sendNotificationIncludeGlobal(Lcom/narvii/notification/NotificationCenter;Lcom/narvii/notification/Notification;)V

    .line 21
    return-void
.end method

.method private static final threadCheckRunnable$lambda$13(Lcom/narvii/chat/core/ChatService;)V
    .locals 4

    .line 1
    .line 2
    const-string v0, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->threadCheckQueue:Ljava/util/HashSet;

    .line 8
    const/4 v1, 0x2

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    .line 12
    .line 13
    invoke-static {p0, v0, v3, v1, v2}, Lcom/narvii/chat/core/ChatService;->queryThreadCheckInfo$default(Lcom/narvii/chat/core/ChatService;Ljava/util/Set;ZILjava/lang/Object;)V

    .line 14
    return-void
.end method

.method public static synthetic updateReadTime$default(Lcom/narvii/chat/core/ChatService;ILjava/lang/String;Ljava/util/Date;ZLcom/narvii/model/ChatThread;ILjava/lang/Object;)V
    .locals 6

    .line 1
    .line 2
    and-int/lit8 p7, p6, 0x8

    .line 3
    .line 4
    if-eqz p7, :cond_0

    .line 5
    const/4 p4, 0x0

    .line 6
    :cond_0
    move v4, p4

    .line 7
    .line 8
    and-int/lit8 p4, p6, 0x10

    .line 9
    .line 10
    if-eqz p4, :cond_1

    .line 11
    const/4 p5, 0x0

    .line 12
    :cond_1
    move-object v5, p5

    .line 13
    move-object v0, p0

    .line 14
    move v1, p1

    .line 15
    move-object v2, p2

    .line 16
    move-object v3, p3

    .line 17
    .line 18
    .line 19
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/chat/core/ChatService;->updateReadTime(ILjava/lang/String;Ljava/util/Date;ZLcom/narvii/model/ChatThread;)V

    .line 20
    return-void
.end method

.method private final updateThreadCheckInfo(Landroidx/collection/ArrayMap;Lcom/narvii/chat/core/ThreadCheckInfo;)Lcom/narvii/chat/core/ThreadCheckInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/chat/core/ThreadCheckInfo;",
            ">;",
            "Lcom/narvii/chat/core/ThreadCheckInfo;",
            ")",
            "Lcom/narvii/chat/core/ThreadCheckInfo;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    invoke-virtual {p2}, Lcom/narvii/chat/core/ThreadCheckInfo;->getThreadId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/core/ThreadCheckInfo;

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {v1}, Lcom/narvii/chat/core/ThreadCheckInfo;->getLastReadTime()Ljava/util/Date;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {v1}, Lcom/narvii/chat/core/ThreadCheckInfo;->getLatestActivityTime()Ljava/util/Date;

    move-result-object v0

    .line 4
    :cond_2
    invoke-virtual {p2}, Lcom/narvii/chat/core/ThreadCheckInfo;->getLastReadTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/narvii/chat/util/ChatHelperKt;->isNewer(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5
    invoke-virtual {p2, v2}, Lcom/narvii/chat/core/ThreadCheckInfo;->setLastReadTime(Ljava/util/Date;)V

    .line 6
    :cond_3
    invoke-virtual {p2}, Lcom/narvii/chat/core/ThreadCheckInfo;->getLatestActivityTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/chat/util/ChatHelperKt;->isNewer(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7
    invoke-virtual {p2, v0}, Lcom/narvii/chat/core/ThreadCheckInfo;->setLatestActivityTime(Ljava/util/Date;)V

    .line 8
    :cond_4
    invoke-virtual {p2}, Lcom/narvii/chat/core/ThreadCheckInfo;->getThreadId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    :cond_5
    :goto_1
    return-object v0
.end method

.method private final updateThreadCheckInfo(Landroidx/collection/ArrayMap;Lcom/narvii/model/ChatThread;)Lcom/narvii/chat/core/ThreadCheckInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/chat/core/ThreadCheckInfo;",
            ">;",
            "Lcom/narvii/model/ChatThread;",
            ")",
            "Lcom/narvii/chat/core/ThreadCheckInfo;"
        }
    .end annotation

    if-eqz p2, :cond_4

    if-nez p1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p2, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/core/ThreadCheckInfo;

    if-nez v0, :cond_1

    .line 10
    new-instance v0, Lcom/narvii/chat/core/ThreadCheckInfo;

    iget-object v1, p2, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    iget-object v2, p2, Lcom/narvii/model/ChatThread;->latestActivityTime:Ljava/util/Date;

    .line 11
    iget-object v3, p2, Lcom/narvii/model/ChatThread;->lastReadTime:Ljava/util/Date;

    iget v4, p2, Lcom/narvii/model/ChatThread;->alertOption:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 12
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/narvii/chat/core/ThreadCheckInfo;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/Integer;)V

    .line 13
    iget-object p2, p2, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 14
    :cond_1
    iget-object p1, p2, Lcom/narvii/model/ChatThread;->latestActivityTime:Ljava/util/Date;

    invoke-virtual {v0}, Lcom/narvii/chat/core/ThreadCheckInfo;->getLatestActivityTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/narvii/chat/util/ChatHelperKt;->isNewer(Ljava/util/Date;Ljava/util/Date;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 15
    iget-object p1, p2, Lcom/narvii/model/ChatThread;->latestActivityTime:Ljava/util/Date;

    invoke-virtual {v0, p1}, Lcom/narvii/chat/core/ThreadCheckInfo;->setLatestActivityTime(Ljava/util/Date;)V

    .line 16
    :cond_2
    iget-object p1, p2, Lcom/narvii/model/ChatThread;->lastReadTime:Ljava/util/Date;

    invoke-virtual {v0}, Lcom/narvii/chat/core/ThreadCheckInfo;->getLastReadTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/narvii/chat/util/ChatHelperKt;->isNewer(Ljava/util/Date;Ljava/util/Date;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 17
    iget-object p1, p2, Lcom/narvii/model/ChatThread;->lastReadTime:Ljava/util/Date;

    invoke-virtual {v0, p1}, Lcom/narvii/chat/core/ThreadCheckInfo;->setLastReadTime(Ljava/util/Date;)V

    :cond_3
    return-object v0

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final addCommunityLevelReceptor(ILcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V
    .locals 1
    .param p2    # Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-ltz p1, :cond_2

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    goto :goto_0

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->communityLevelReceptors:Landroid/util/SparseArray;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/util/EventDispatcher;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-virtual {v0, p2}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 24
    .line 25
    iget-object p2, p0, Lcom/narvii/chat/core/ChatService;->communityLevelReceptors:Landroid/util/SparseArray;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 29
    :cond_2
    :goto_0
    return-void
.end method

.method public final addGlobalChatMessageReceptor(Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V
    .locals 1
    .param p1    # Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "listener"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->globalLevelReceptors:Lcom/narvii/util/EventDispatcher;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 11
    return-void
.end method

.method public final addGuestThreadId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->guestThreadSet:Ljava/util/HashSet;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_0
    return-void
.end method

.method public final addInProcessUploadMedia(I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->inProcessUploadMediaIds:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    return-void

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->inProcessUploadMediaIds:Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    return-void
.end method

.method public final addLiveChannelPermissionListener(Ljava/lang/String;Lcom/narvii/chat/ThreadConfigChangeListener;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/chat/ThreadConfigChangeListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    if-nez p2, :cond_1

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->threadConfigDispatcher:Ljava/util/HashMap;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    .line 26
    :cond_2
    move-object v1, v0

    .line 27
    .line 28
    check-cast v1, Lcom/narvii/util/EventDispatcher;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p2}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 32
    .line 33
    iget-object p2, p0, Lcom/narvii/chat/core/ChatService;->threadConfigDispatcher:Ljava/util/HashMap;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    check-cast p1, Lcom/narvii/util/EventDispatcher;

    .line 40
    :cond_3
    :goto_0
    return-void
.end method

.method public final addThreadCheckQueue(I)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->communitiesIsRequestingThreadCheck:Ljava/util/HashSet;

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
    if-nez v0, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1}, Lcom/narvii/chat/core/ChatService;->isReadyToRequestThreadCheckForCurCommunity(I)Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->threadCheckQueue:Ljava/util/HashSet;

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->threadCheckRunnable:Ljava/lang/Runnable;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 36
    .line 37
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->threadCheckRunnable:Ljava/lang/Runnable;

    .line 38
    .line 39
    const-wide/16 v1, 0x190

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 43
    :cond_1
    :goto_0
    return-void
.end method

.method public final addThreadLvelRecptor(Ljava/lang/String;Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    if-nez p2, :cond_1

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->threadLevelReceptor:Ljava/util/HashMap;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Lcom/narvii/util/EventDispatcher;

    .line 21
    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    .line 25
    .line 26
    .line 27
    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    .line 28
    .line 29
    .line 30
    :cond_2
    invoke-virtual {v0, p2}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 31
    .line 32
    iget-object p2, p0, Lcom/narvii/chat/core/ChatService;->threadLevelReceptor:Ljava/util/HashMap;

    .line 33
    .line 34
    .line 35
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :cond_3
    :goto_0
    return-void
.end method

.method public final addVideoMessagePostListener(Ljava/lang/String;Lcom/narvii/chat/core/ChatService$VideoMessageProgressChangeListener;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/chat/core/ChatService$VideoMessageProgressChangeListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    if-nez p2, :cond_1

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->videoMessageProgressDispatcher:Ljava/util/HashMap;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    .line 26
    :cond_2
    move-object v1, v0

    .line 27
    .line 28
    check-cast v1, Lcom/narvii/util/EventDispatcher;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p2}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 32
    .line 33
    iget-object p2, p0, Lcom/narvii/chat/core/ChatService;->videoMessageProgressDispatcher:Ljava/util/HashMap;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    check-cast p1, Lcom/narvii/util/EventDispatcher;

    .line 40
    :cond_3
    :goto_0
    return-void
.end method

.method public final buildBaseRequestNode(Lcom/narvii/model/ChatMessage;Lcom/fasterxml/jackson/databind/node/ObjectNode;Z)V
    .locals 2
    .param p1    # Lcom/narvii/model/ChatMessage;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/fasterxml/jackson/databind/node/ObjectNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "node"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    return-void

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->getReplyMessageId()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    const-string v0, "replyMessageId"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->getReplyMessageId()Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 28
    .line 29
    :cond_1
    const-string v0, "type"

    .line 30
    .line 31
    iget v1, p1, Lcom/narvii/model/ChatMessage;->type:I

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 35
    .line 36
    const-string v0, "content"

    .line 37
    .line 38
    iget-object v1, p1, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 42
    .line 43
    const-string v0, "clientRefId"

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->getClientRefIdTmp()I

    .line 47
    move-result v1

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 51
    .line 52
    iget-object v0, p1, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 53
    .line 54
    const-string v1, "attachedObjectInfo"

    .line 55
    .line 56
    .line 57
    filled-new-array {v1}, [Ljava/lang/String;

    .line 58
    move-result-object v1

    .line 59
    .line 60
    .line 61
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    const-string v1, "attachedObject"

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2, v1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 68
    .line 69
    iget v0, p1, Lcom/narvii/model/ChatMessage;->mediaType:I

    .line 70
    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    const-string v1, "mediaType"

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, v1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 77
    .line 78
    iget-object v0, p1, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 82
    move-result v0

    .line 83
    .line 84
    if-nez v0, :cond_2

    .line 85
    .line 86
    if-eqz p3, :cond_2

    .line 87
    .line 88
    const-string p3, "mediaValue"

    .line 89
    .line 90
    iget-object p1, p1, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2, p3, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 94
    :cond_2
    return-void
.end method

.method public final buildRequest(ILcom/narvii/model/ChatMessage;)Lcom/narvii/util/http/ApiRequest;
    .locals 21
    .param p2    # Lcom/narvii/model/ChatMessage;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v7, p0

    .line 3
    .line 4
    move/from16 v8, p1

    .line 5
    .line 6
    move-object/from16 v9, p2

    .line 7
    const/4 v10, 0x0

    .line 8
    .line 9
    if-nez v9, :cond_0

    .line 10
    return-object v10

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 14
    move-result-object v11

    .line 15
    .line 16
    iget v0, v9, Lcom/narvii/model/ChatMessage;->type:I

    .line 17
    const/4 v1, 0x1

    .line 18
    .line 19
    if-ne v0, v1, :cond_2

    .line 20
    .line 21
    .line 22
    invoke-static {v11}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 23
    const/4 v4, 0x0

    .line 24
    const/4 v5, 0x4

    .line 25
    const/4 v6, 0x0

    .line 26
    .line 27
    move-object/from16 v1, p0

    .line 28
    .line 29
    move-object/from16 v2, p2

    .line 30
    move-object v3, v11

    .line 31
    .line 32
    .line 33
    invoke-static/range {v1 .. v6}, Lcom/narvii/chat/core/ChatService;->buildBaseRequestNode$default(Lcom/narvii/chat/core/ChatService;Lcom/narvii/model/ChatMessage;Lcom/fasterxml/jackson/databind/node/ObjectNode;ZILjava/lang/Object;)V

    .line 34
    :cond_1
    :goto_0
    move-object v1, v10

    .line 35
    .line 36
    goto/16 :goto_9

    .line 37
    .line 38
    :cond_2
    const-string v2, "clientRefId"

    .line 39
    .line 40
    const-string v3, "type"

    .line 41
    const/4 v4, 0x3

    .line 42
    .line 43
    if-ne v0, v4, :cond_3

    .line 44
    .line 45
    const-string v0, "stickerId"

    .line 46
    .line 47
    iget-object v1, v9, Lcom/narvii/model/ChatMessage;->stickerId:Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v11, v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v11, v3, v4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 54
    .line 55
    .line 56
    invoke-virtual/range {p2 .. p2}, Lcom/narvii/model/ChatMessage;->getClientRefIdTmp()I

    .line 57
    move-result v0

    .line 58
    .line 59
    .line 60
    invoke-virtual {v11, v2, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 61
    goto :goto_0

    .line 62
    .line 63
    .line 64
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/narvii/model/ChatMessage;->isCallRelatedMessage()Z

    .line 65
    move-result v0

    .line 66
    .line 67
    if-eqz v0, :cond_4

    .line 68
    .line 69
    iget v0, v9, Lcom/narvii/model/ChatMessage;->type:I

    .line 70
    .line 71
    .line 72
    invoke-virtual {v11, v3, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 73
    .line 74
    .line 75
    invoke-virtual/range {p2 .. p2}, Lcom/narvii/model/ChatMessage;->getClientRefIdTmp()I

    .line 76
    move-result v0

    .line 77
    .line 78
    .line 79
    invoke-virtual {v11, v2, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 80
    goto :goto_0

    .line 81
    .line 82
    :cond_4
    iget v0, v9, Lcom/narvii/model/ChatMessage;->mediaType:I

    .line 83
    .line 84
    const-string v2, "mediaUploadValueContentType"

    .line 85
    .line 86
    const/16 v3, 0x64

    .line 87
    .line 88
    const-wide/16 v4, 0x0

    .line 89
    .line 90
    const-string v6, "fail to write body"

    .line 91
    .line 92
    const-string v12, "mediaUploadValue"

    .line 93
    const/4 v13, 0x0

    .line 94
    .line 95
    const-string v14, "toString(...)"

    .line 96
    .line 97
    if-nez v0, :cond_b

    .line 98
    .line 99
    iget-object v0, v9, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    .line 100
    .line 101
    if-eqz v0, :cond_b

    .line 102
    .line 103
    .line 104
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 105
    move-result v0

    .line 106
    .line 107
    if-nez v0, :cond_5

    .line 108
    .line 109
    goto/16 :goto_5

    .line 110
    .line 111
    .line 112
    :cond_5
    invoke-static {v11}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v7, v9, v11, v13}, Lcom/narvii/chat/core/ChatService;->buildBaseRequestNode(Lcom/narvii/model/ChatMessage;Lcom/fasterxml/jackson/databind/node/ObjectNode;Z)V

    .line 116
    .line 117
    iget-object v0, v9, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 118
    .line 119
    const-string v1, "mentionedArray"

    .line 120
    .line 121
    .line 122
    filled-new-array {v1}, [Ljava/lang/String;

    .line 123
    move-result-object v13

    .line 124
    .line 125
    .line 126
    invoke-static {v0, v13}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 127
    move-result-object v0

    .line 128
    .line 129
    const-string v13, "extensions"

    .line 130
    .line 131
    if-eqz v0, :cond_6

    .line 132
    .line 133
    .line 134
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 135
    move-result-object v15

    .line 136
    .line 137
    .line 138
    invoke-virtual {v11, v13, v15}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v15, v1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 142
    .line 143
    .line 144
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/narvii/model/ChatMessage;->getFirstLinkSnippet()Lcom/narvii/model/LinkSummary;

    .line 145
    move-result-object v0

    .line 146
    .line 147
    if-eqz v0, :cond_1

    .line 148
    .line 149
    .line 150
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/chat/core/ChatService;->photoManager$Amino_bundle()Lcom/narvii/photos/PhotoManager;

    .line 151
    move-result-object v1

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0}, Lcom/narvii/model/LinkSummary;->getFirstMedia()Lcom/narvii/model/Media;

    .line 155
    move-result-object v15

    .line 156
    .line 157
    if-nez v15, :cond_7

    .line 158
    return-object v10

    .line 159
    .line 160
    .line 161
    :cond_7
    invoke-virtual {v0}, Lcom/narvii/model/LinkSummary;->getFirstMedia()Lcom/narvii/model/Media;

    .line 162
    move-result-object v15

    .line 163
    .line 164
    iget-object v15, v15, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1, v15}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    .line 168
    move-result-object v1

    .line 169
    .line 170
    if-eqz v1, :cond_a

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1}, Ljava/io/File;->length()J

    .line 174
    move-result-wide v15

    .line 175
    .line 176
    cmp-long v4, v15, v4

    .line 177
    .line 178
    if-nez v4, :cond_8

    .line 179
    goto :goto_4

    .line 180
    .line 181
    .line 182
    :cond_8
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 183
    move-result-object v4

    .line 184
    .line 185
    .line 186
    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 187
    move-result-object v4

    .line 188
    .line 189
    .line 190
    invoke-static {v4, v14}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    filled-new-array {v13}, [Ljava/lang/String;

    .line 194
    move-result-object v5

    .line 195
    .line 196
    .line 197
    invoke-static {v11, v5}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 198
    move-result-object v5

    .line 199
    .line 200
    if-nez v5, :cond_9

    .line 201
    .line 202
    .line 203
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 204
    move-result-object v5

    .line 205
    .line 206
    .line 207
    invoke-virtual {v11, v13, v5}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 208
    .line 209
    .line 210
    :cond_9
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 211
    move-result-object v13

    .line 212
    .line 213
    const-string v15, "null cannot be cast to non-null type com.fasterxml.jackson.databind.node.ObjectNode"

    .line 214
    .line 215
    .line 216
    invoke-static {v5, v15}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    .line 218
    check-cast v5, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 219
    .line 220
    const-string v15, "linkSnippetList"

    .line 221
    .line 222
    .line 223
    invoke-virtual {v5, v15, v13}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 224
    .line 225
    .line 226
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 227
    move-result-object v5

    .line 228
    .line 229
    const-string v15, "link"

    .line 230
    .line 231
    iget-object v0, v0, Lcom/narvii/model/LinkSummary;->link:Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v5, v15, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 235
    .line 236
    const-string v0, "mediaType"

    .line 237
    .line 238
    .line 239
    invoke-virtual {v5, v0, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v5, v12, v4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 243
    .line 244
    const-string v0, "image/png"

    .line 245
    .line 246
    .line 247
    invoke-virtual {v5, v2, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v13, v5}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 251
    .line 252
    .line 253
    invoke-static {}, Lcom/narvii/util/Utils;->createTmpFile()Ljava/io/File;

    .line 254
    move-result-object v2

    .line 255
    .line 256
    :try_start_0
    sget-object v0, Lcom/narvii/chat/util/ChatHelper;->Companion:Lcom/narvii/chat/util/ChatHelper$Companion;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v11}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->toString()Ljava/lang/String;

    .line 260
    move-result-object v3

    .line 261
    .line 262
    .line 263
    invoke-static {v3, v14}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v0, v3, v1, v4, v2}, Lcom/narvii/chat/util/ChatHelper$Companion;->buildBodyFile(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    :goto_1
    move-object v10, v2

    .line 268
    .line 269
    goto/16 :goto_10

    .line 270
    :catchall_0
    move-exception v0

    .line 271
    goto :goto_2

    .line 272
    :catch_0
    move-exception v0

    .line 273
    goto :goto_3

    .line 274
    :goto_2
    throw v0

    .line 275
    .line 276
    .line 277
    :goto_3
    invoke-static {v6, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 281
    :cond_a
    :goto_4
    return-object v10

    .line 282
    .line 283
    :cond_b
    :goto_5
    iget v0, v9, Lcom/narvii/model/ChatMessage;->mediaType:I

    .line 284
    const/4 v15, 0x2

    .line 285
    .line 286
    if-ne v0, v3, :cond_11

    .line 287
    .line 288
    iget-object v3, v9, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    .line 289
    .line 290
    if-eqz v3, :cond_11

    .line 291
    .line 292
    const-string v0, "mediaValue"

    .line 293
    .line 294
    .line 295
    invoke-static {v3, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    .line 297
    const-string v0, "photo://"

    .line 298
    .line 299
    .line 300
    invoke-static {v3, v0, v13, v15, v10}, Lkotlin/text/k;->K(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 301
    move-result v0

    .line 302
    .line 303
    if-eqz v0, :cond_10

    .line 304
    .line 305
    .line 306
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/chat/core/ChatService;->photoManager$Amino_bundle()Lcom/narvii/photos/PhotoManager;

    .line 307
    move-result-object v15

    .line 308
    .line 309
    .line 310
    invoke-static {}, Lcom/narvii/util/Utils;->createTmpFile()Ljava/io/File;

    .line 311
    move-result-object v3

    .line 312
    .line 313
    new-array v1, v1, [Ljava/lang/String;

    .line 314
    .line 315
    :try_start_1
    iget-object v0, v9, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    .line 316
    .line 317
    const-string v17, "chat-message"

    .line 318
    .line 319
    iget-boolean v10, v9, Lcom/narvii/model/ChatMessage;->mediaUhqEnabled:Z

    .line 320
    .line 321
    move-object/from16 v16, v0

    .line 322
    .line 323
    move-object/from16 v18, v3

    .line 324
    .line 325
    move-object/from16 v19, v1

    .line 326
    .line 327
    move/from16 v20, v10

    .line 328
    .line 329
    .line 330
    invoke-virtual/range {v15 .. v20}, Lcom/narvii/photos/PhotoManager;->writeUploadDataTo(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;[Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 331
    goto :goto_8

    .line 332
    :catch_1
    move-exception v0

    .line 333
    goto :goto_6

    .line 334
    :catch_2
    move-exception v0

    .line 335
    goto :goto_7

    .line 336
    .line 337
    :goto_6
    const-string v10, "unable to encode bitmap"

    .line 338
    .line 339
    .line 340
    invoke-static {v10, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 341
    .line 342
    if-eqz v3, :cond_c

    .line 343
    .line 344
    .line 345
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 346
    goto :goto_8

    .line 347
    .line 348
    :goto_7
    const-string v10, "out of memory when encode bitmap to base64"

    .line 349
    .line 350
    .line 351
    invoke-static {v10, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 352
    .line 353
    if-eqz v3, :cond_c

    .line 354
    .line 355
    .line 356
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 357
    .line 358
    :cond_c
    :goto_8
    if-eqz v3, :cond_d

    .line 359
    .line 360
    .line 361
    invoke-virtual {v3}, Ljava/io/File;->length()J

    .line 362
    move-result-wide v15

    .line 363
    .line 364
    cmp-long v0, v15, v4

    .line 365
    .line 366
    if-nez v0, :cond_e

    .line 367
    :cond_d
    const/4 v1, 0x0

    .line 368
    goto :goto_b

    .line 369
    .line 370
    .line 371
    :cond_e
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 372
    move-result-object v0

    .line 373
    .line 374
    .line 375
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 376
    move-result-object v0

    .line 377
    .line 378
    .line 379
    invoke-static {v0, v14}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    invoke-static {v11}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v7, v9, v11, v13}, Lcom/narvii/chat/core/ChatService;->buildBaseRequestNode(Lcom/narvii/model/ChatMessage;Lcom/fasterxml/jackson/databind/node/ObjectNode;Z)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v11, v12, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 389
    .line 390
    const-string v4, "mediaUhqEnabled"

    .line 391
    .line 392
    iget-boolean v5, v9, Lcom/narvii/model/ChatMessage;->mediaUhqEnabled:Z

    .line 393
    .line 394
    .line 395
    invoke-virtual {v11, v4, v5}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 396
    .line 397
    aget-object v1, v1, v13

    .line 398
    .line 399
    .line 400
    invoke-virtual {v11, v2, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 401
    .line 402
    .line 403
    invoke-static {}, Lcom/narvii/util/Utils;->createTmpFile()Ljava/io/File;

    .line 404
    move-result-object v1

    .line 405
    .line 406
    :try_start_2
    sget-object v2, Lcom/narvii/chat/util/ChatHelper;->Companion:Lcom/narvii/chat/util/ChatHelper$Companion;

    .line 407
    .line 408
    .line 409
    invoke-virtual {v11}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->toString()Ljava/lang/String;

    .line 410
    move-result-object v4

    .line 411
    .line 412
    .line 413
    invoke-static {v4, v14}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    invoke-virtual {v2, v4, v3, v0, v1}, Lcom/narvii/chat/util/ChatHelper$Companion;->buildBodyFile(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 417
    .line 418
    .line 419
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 420
    :goto_9
    move-object v10, v1

    .line 421
    .line 422
    goto/16 :goto_10

    .line 423
    :catchall_1
    move-exception v0

    .line 424
    goto :goto_a

    .line 425
    :catch_3
    move-exception v0

    .line 426
    .line 427
    .line 428
    :try_start_3
    invoke-static {v6, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 429
    .line 430
    if-eqz v1, :cond_f

    .line 431
    .line 432
    .line 433
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 434
    .line 435
    .line 436
    :cond_f
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 437
    const/4 v1, 0x0

    .line 438
    return-object v1

    .line 439
    .line 440
    .line 441
    :goto_a
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 442
    throw v0

    .line 443
    :goto_b
    return-object v1

    .line 444
    .line 445
    .line 446
    :cond_10
    invoke-static {v11}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 447
    const/4 v4, 0x0

    .line 448
    const/4 v5, 0x4

    .line 449
    const/4 v6, 0x0

    .line 450
    .line 451
    move-object/from16 v1, p0

    .line 452
    .line 453
    move-object/from16 v2, p2

    .line 454
    move-object v3, v11

    .line 455
    .line 456
    .line 457
    invoke-static/range {v1 .. v6}, Lcom/narvii/chat/core/ChatService;->buildBaseRequestNode$default(Lcom/narvii/chat/core/ChatService;Lcom/narvii/model/ChatMessage;Lcom/fasterxml/jackson/databind/node/ObjectNode;ZILjava/lang/Object;)V

    .line 458
    :goto_c
    const/4 v1, 0x0

    .line 459
    goto :goto_9

    .line 460
    .line 461
    :cond_11
    const/16 v1, 0x67

    .line 462
    .line 463
    if-ne v0, v1, :cond_12

    .line 464
    .line 465
    iget-object v0, v9, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    .line 466
    .line 467
    if-eqz v0, :cond_12

    .line 468
    .line 469
    .line 470
    invoke-static {v0}, Lcom/narvii/util/YoutubeUtils;->isYtvScheme(Ljava/lang/String;)Z

    .line 471
    move-result v0

    .line 472
    .line 473
    if-eqz v0, :cond_12

    .line 474
    .line 475
    .line 476
    invoke-static {v11}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 477
    const/4 v4, 0x0

    .line 478
    const/4 v5, 0x4

    .line 479
    const/4 v6, 0x0

    .line 480
    .line 481
    move-object/from16 v1, p0

    .line 482
    .line 483
    move-object/from16 v2, p2

    .line 484
    move-object v3, v11

    .line 485
    .line 486
    .line 487
    invoke-static/range {v1 .. v6}, Lcom/narvii/chat/core/ChatService;->buildBaseRequestNode$default(Lcom/narvii/chat/core/ChatService;Lcom/narvii/model/ChatMessage;Lcom/fasterxml/jackson/databind/node/ObjectNode;ZILjava/lang/Object;)V

    .line 488
    goto :goto_c

    .line 489
    .line 490
    .line 491
    :cond_12
    invoke-virtual {v7, v9}, Lcom/narvii/chat/core/ChatService;->isVideoUploadRequest(Lcom/narvii/model/ChatMessage;)Z

    .line 492
    move-result v0

    .line 493
    .line 494
    if-eqz v0, :cond_13

    .line 495
    .line 496
    .line 497
    invoke-static {v11}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 498
    .line 499
    .line 500
    invoke-direct {v7, v8, v9, v11}, Lcom/narvii/chat/core/ChatService;->buildVideoChatRequest(ILcom/narvii/model/ChatMessage;Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/narvii/util/http/ApiRequest;

    .line 501
    move-result-object v0

    .line 502
    return-object v0

    .line 503
    .line 504
    :cond_13
    iget v0, v9, Lcom/narvii/model/ChatMessage;->type:I

    .line 505
    .line 506
    if-ne v0, v15, :cond_17

    .line 507
    .line 508
    iget v0, v9, Lcom/narvii/model/ChatMessage;->mediaType:I

    .line 509
    .line 510
    const/16 v1, 0x6e

    .line 511
    .line 512
    if-ne v0, v1, :cond_17

    .line 513
    .line 514
    iget-object v0, v9, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    .line 515
    .line 516
    if-eqz v0, :cond_17

    .line 517
    .line 518
    .line 519
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 520
    move-result-object v0

    .line 521
    .line 522
    .line 523
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 524
    move-result-object v1

    .line 525
    .line 526
    const-string v2, "file"

    .line 527
    .line 528
    .line 529
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 530
    move-result-object v0

    .line 531
    .line 532
    .line 533
    invoke-static {v2, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 534
    move-result v0

    .line 535
    .line 536
    if-eqz v0, :cond_16

    .line 537
    .line 538
    if-eqz v1, :cond_16

    .line 539
    .line 540
    .line 541
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 542
    move-result v0

    .line 543
    .line 544
    if-nez v0, :cond_14

    .line 545
    goto :goto_f

    .line 546
    .line 547
    :cond_14
    new-instance v0, Ljava/io/File;

    .line 548
    .line 549
    .line 550
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 551
    .line 552
    .line 553
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 554
    move-result v1

    .line 555
    .line 556
    if-nez v1, :cond_15

    .line 557
    const/4 v1, 0x0

    .line 558
    return-object v1

    .line 559
    .line 560
    .line 561
    :cond_15
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 562
    move-result-object v1

    .line 563
    .line 564
    .line 565
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 566
    move-result-object v1

    .line 567
    .line 568
    .line 569
    invoke-static {v1, v14}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 570
    .line 571
    .line 572
    invoke-static {v11}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 573
    .line 574
    .line 575
    invoke-virtual {v7, v9, v11, v13}, Lcom/narvii/chat/core/ChatService;->buildBaseRequestNode(Lcom/narvii/model/ChatMessage;Lcom/fasterxml/jackson/databind/node/ObjectNode;Z)V

    .line 576
    .line 577
    .line 578
    invoke-virtual {v11, v12, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 579
    .line 580
    .line 581
    invoke-static {}, Lcom/narvii/util/Utils;->createTmpFile()Ljava/io/File;

    .line 582
    move-result-object v2

    .line 583
    .line 584
    :try_start_4
    sget-object v3, Lcom/narvii/chat/util/ChatHelper;->Companion:Lcom/narvii/chat/util/ChatHelper$Companion;

    .line 585
    .line 586
    .line 587
    invoke-virtual {v11}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->toString()Ljava/lang/String;

    .line 588
    move-result-object v4

    .line 589
    .line 590
    .line 591
    invoke-static {v4, v14}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 592
    .line 593
    .line 594
    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/narvii/chat/util/ChatHelper$Companion;->buildBodyFile(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 595
    .line 596
    goto/16 :goto_1

    .line 597
    :catchall_2
    move-exception v0

    .line 598
    goto :goto_d

    .line 599
    :catch_4
    move-exception v0

    .line 600
    goto :goto_e

    .line 601
    :goto_d
    throw v0

    .line 602
    .line 603
    .line 604
    :goto_e
    invoke-static {v6, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 605
    .line 606
    .line 607
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 608
    const/4 v1, 0x0

    .line 609
    return-object v1

    .line 610
    :cond_16
    :goto_f
    const/4 v1, 0x0

    .line 611
    return-object v1

    .line 612
    :cond_17
    const/4 v1, 0x0

    .line 613
    .line 614
    const-string v0, "unsupported chat message"

    .line 615
    .line 616
    .line 617
    invoke-static {v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 618
    .line 619
    goto/16 :goto_9

    .line 620
    .line 621
    .line 622
    :goto_10
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 623
    move-result-object v0

    .line 624
    .line 625
    .line 626
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 627
    move-result-object v0

    .line 628
    .line 629
    .line 630
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 631
    move-result-object v0

    .line 632
    .line 633
    iget-object v1, v9, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    .line 634
    .line 635
    new-instance v2, Ljava/lang/StringBuilder;

    .line 636
    .line 637
    .line 638
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 639
    .line 640
    const-string v3, "/chat/thread/"

    .line 641
    .line 642
    .line 643
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    .line 645
    .line 646
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    .line 648
    const-string v1, "/message"

    .line 649
    .line 650
    .line 651
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    .line 653
    .line 654
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 655
    move-result-object v1

    .line 656
    .line 657
    .line 658
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 659
    move-result-object v0

    .line 660
    .line 661
    .line 662
    invoke-virtual {v0, v8}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 663
    move-result-object v0

    .line 664
    .line 665
    if-nez v10, :cond_18

    .line 666
    .line 667
    .line 668
    invoke-virtual {v0, v11}, Lcom/narvii/util/http/ApiRequest$Builder;->body(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 669
    goto :goto_11

    .line 670
    .line 671
    .line 672
    :cond_18
    invoke-virtual {v0, v10}, Lcom/narvii/util/http/ApiRequest$Builder;->body(Ljava/io/File;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 673
    move-result-object v1

    .line 674
    .line 675
    .line 676
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->deleteBodyAfterDone()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 677
    .line 678
    .line 679
    const v1, 0xea60

    .line 680
    .line 681
    .line 682
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->timeout(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 683
    .line 684
    .line 685
    :goto_11
    invoke-virtual {v0, v9}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 686
    .line 687
    .line 688
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 689
    move-result-object v0

    .line 690
    return-object v0
.end method

.method public final clear()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->threadCheckInfosMapper:Landroid/util/SparseArray;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->threadCheckQueue:Ljava/util/HashSet;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->communitiesIsRequestingThreadCheck:Ljava/util/HashSet;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->unreadChatCountMapper:Landroid/util/SparseArray;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->bitmapCache:Ljava/util/HashMap;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->messages:Landroid/util/SparseArray;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 31
    .line 32
    iget-boolean v0, p0, Lcom/narvii/chat/core/ChatService;->photoTouched:Z

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->photoDir:Ljava/io/File;

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lcom/narvii/util/Utils;->deleteDir(Ljava/io/File;)Z

    .line 40
    :cond_0
    return-void
.end method

.method public final clearCommunityLevelData(I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->outboundMessagesNdcIdsMapper:Ljava/util/HashMap;

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
    check-cast p1, Ljava/util/Set;

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    return-void

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v0

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    check-cast v0, Ljava/lang/Number;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 35
    move-result v0

    .line 36
    .line 37
    iget-object v1, p0, Lcom/narvii/chat/core/ChatService;->outboundMessageCreateTime:Landroid/util/SparseArray;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 41
    .line 42
    iget-object v1, p0, Lcom/narvii/chat/core/ChatService;->messages:Landroid/util/SparseArray;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 46
    goto :goto_0

    .line 47
    .line 48
    .line 49
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/chat/core/ChatService;->storeDraft()V

    .line 50
    return-void
.end method

.method public final containGuestThreadId(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    .line 6
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->guestThreadSet:Ljava/util/HashSet;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public final dispatchGlobalOnNewMessage(ILcom/narvii/chat/util/ChatMessageDto;)V
    .locals 2
    .param p2    # Lcom/narvii/chat/util/ChatMessageDto;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "chatMessageDto"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->globalLevelReceptors:Lcom/narvii/util/EventDispatcher;

    .line 8
    .line 9
    new-instance v1, Lcom/narvii/chat/core/m;

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, p1, p2}, Lcom/narvii/chat/core/m;-><init>(ILcom/narvii/chat/util/ChatMessageDto;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 16
    return-void
.end method

.method public final dispatchGlobalThreadCountChange()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->globalLevelReceptors:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    new-instance v1, Lcom/narvii/chat/core/c;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Lcom/narvii/chat/core/c;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 11
    return-void
.end method

.method public final dispatchNewMessageOnCommunityLevel(ILcom/narvii/chat/util/ChatMessageDto;)V
    .locals 4
    .param p2    # Lcom/narvii/chat/util/ChatMessageDto;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-ltz p1, :cond_2

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    goto :goto_0

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->communityLevelReceptors:Landroid/util/SparseArray;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/util/EventDispatcher;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    return-void

    .line 17
    .line 18
    :cond_1
    iget-object v1, p0, Lcom/narvii/chat/core/ChatService;->TAG:Ljava/lang/String;

    .line 19
    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    const-string v3, "dispatchNewMessageOnCommunityLevel --> "

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v2

    .line 36
    .line 37
    .line 38
    invoke-static {v1, v2}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    new-instance v1, Lcom/narvii/chat/core/n;

    .line 41
    .line 42
    .line 43
    invoke-direct {v1, p1, p2}, Lcom/narvii/chat/core/n;-><init>(ILcom/narvii/chat/util/ChatMessageDto;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 47
    :cond_2
    :goto_0
    return-void
.end method

.method public final dispatchUnreadCountChangeOnCommunityLevel(I)V
    .locals 4

    .line 1
    .line 2
    if-gez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->communityLevelReceptors:Landroid/util/SparseArray;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Lcom/narvii/util/EventDispatcher;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    return-void

    .line 15
    .line 16
    :cond_1
    iget-object v1, p0, Lcom/narvii/chat/core/ChatService;->TAG:Ljava/lang/String;

    .line 17
    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    const-string v3, "dispatchUnreadCountChangeOnCommunityLevel --> "

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    .line 36
    invoke-static {v1, v2}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    new-instance v1, Lcom/narvii/chat/core/i;

    .line 39
    .line 40
    .line 41
    invoke-direct {v1, p1}, Lcom/narvii/chat/core/i;-><init>(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 45
    return-void
.end method

.method public final getAllUnreadThreadCount()I
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->unreadChatCountMapper:Landroid/util/SparseArray;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    .line 10
    :goto_0
    if-ge v1, v0, :cond_0

    .line 11
    .line 12
    iget-object v3, p0, Lcom/narvii/chat/core/ChatService;->unreadChatCountMapper:Landroid/util/SparseArray;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 16
    move-result-object v3

    .line 17
    .line 18
    const-string v4, "valueAt(...)"

    .line 19
    .line 20
    .line 21
    invoke-static {v3, v4}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    check-cast v3, Ljava/lang/Number;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 27
    move-result v3

    .line 28
    add-int/2addr v2, v3

    .line 29
    .line 30
    add-int/lit8 v1, v1, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return v2
.end method

.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final getCurCid()I
    .locals 1

    iget v0, p0, Lcom/narvii/chat/core/ChatService;->curCid:I

    return v0
.end method

.method public final getCurCommunityContext()Lcom/narvii/app/NVContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->curCommunityContext:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final getCurNvContext()Lcom/narvii/app/NVContext;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->curCommunityContext:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 8
    return-object v0

    .line 9
    .line 10
    :cond_0
    iget v0, p0, Lcom/narvii/chat/core/ChatService;->curCid:I

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    new-instance v0, Lcom/narvii/services/incubator/CommunityContext;

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    iget v2, p0, Lcom/narvii/chat/core/ChatService;->curCid:I

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, v1, v2}, Lcom/narvii/services/incubator/CommunityContext;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 24
    return-object v0

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    const-string v1, "instance(...)"

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    return-object v0
.end method

.method public final getCurVideoUploadProgress(Lcom/narvii/model/ChatMessage;)I
    .locals 3
    .param p1    # Lcom/narvii/model/ChatMessage;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    iget v1, p1, Lcom/narvii/model/ChatMessage;->_status:I

    .line 7
    .line 8
    if-eqz v1, :cond_3

    .line 9
    const/4 v2, 0x2

    .line 10
    .line 11
    if-eq v1, v2, :cond_2

    .line 12
    .line 13
    iget-object v1, p0, Lcom/narvii/chat/core/ChatService;->videoUploadPercents:Landroid/util/SparseIntArray;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->getClientRefIdTmp()I

    .line 17
    move-result v2

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    .line 21
    move-result v1

    .line 22
    .line 23
    if-gez v1, :cond_1

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->videoUploadPercents:Landroid/util/SparseIntArray;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->getClientRefIdTmp()I

    .line 30
    move-result p1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    .line 34
    move-result v0

    .line 35
    :cond_2
    :goto_0
    return v0

    .line 36
    .line 37
    :cond_3
    const/16 p1, 0x64

    .line 38
    return p1
.end method

.method public final getDraft(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 7
    move-result v1

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/core/ChatService;->drafts:Lcom/narvii/chat/core/ChatService$DraftMap;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Lcom/narvii/chat/core/ChatService$DraftMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object p1

    .line 19
    move-object v0, p1

    .line 20
    .line 21
    check-cast v0, Ljava/lang/String;

    .line 22
    :cond_1
    :goto_0
    return-object v0
.end method

.method public final getLatestSendElapse()J
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->recentMessageTime:[J

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/collections/l;->j0([J)Ljava/lang/Long;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    const-wide v0, 0x7fffffffffffffffL

    .line 14
    goto :goto_0

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 18
    move-result-wide v1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 22
    move-result-wide v3

    .line 23
    .line 24
    sub-long v0, v1, v3

    .line 25
    :goto_0
    return-wide v0
.end method

.method public final getOutBoundCreatedTime(Lcom/narvii/model/ChatMessage;)Ljava/util/Date;
    .locals 1
    .param p1    # Lcom/narvii/model/ChatMessage;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    .line 6
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->outboundMessageCreateTime:Landroid/util/SparseArray;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->getClientRefIdTmp()I

    .line 10
    move-result p1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    check-cast p1, Ljava/util/Date;

    .line 17
    return-object p1
.end method

.method public final getOutboundMessages(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/narvii/model/ChatMessage;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_5

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    goto :goto_2

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->messages:Landroid/util/SparseArray;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    const/4 v2, 0x0

    .line 18
    .line 19
    :goto_0
    if-ge v2, v0, :cond_3

    .line 20
    .line 21
    iget-object v3, p0, Lcom/narvii/chat/core/ChatService;->messages:Landroid/util/SparseArray;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 25
    move-result-object v3

    .line 26
    .line 27
    check-cast v3, Lcom/narvii/model/ChatMessage;

    .line 28
    .line 29
    iget-object v4, v3, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    invoke-static {v4, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    move-result v4

    .line 34
    .line 35
    if-eqz v4, :cond_2

    .line 36
    .line 37
    if-nez v1, :cond_1

    .line 38
    .line 39
    new-instance v1, Ljava/util/ArrayList;

    .line 40
    .line 41
    .line 42
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 48
    goto :goto_0

    .line 49
    .line 50
    :cond_3
    if-eqz v1, :cond_4

    .line 51
    goto :goto_1

    .line 52
    .line 53
    .line 54
    :cond_4
    invoke-static {}, Lkotlin/collections/t;->m()Ljava/util/List;

    .line 55
    move-result-object v1

    .line 56
    :goto_1
    return-object v1

    .line 57
    .line 58
    .line 59
    :cond_5
    :goto_2
    invoke-static {}, Lkotlin/collections/t;->m()Ljava/util/List;

    .line 60
    move-result-object p1

    .line 61
    return-object p1
.end method

.method public final getPhotoDir()Ljava/io/File;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->photoDir:Ljava/io/File;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 6
    const/4 v0, 0x1

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/narvii/chat/core/ChatService;->photoTouched:Z

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->photoDir:Ljava/io/File;

    .line 11
    return-object v0
.end method

.method public final getReadTime(Ljava/lang/String;)J
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    if-eqz p1, :cond_3

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 8
    move-result v2

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    iget-object v2, p0, Lcom/narvii/chat/core/ChatService;->prefs:Landroid/content/SharedPreferences;

    .line 14
    .line 15
    const-string v3, "lastReadTime"

    .line 16
    const/4 v4, 0x0

    .line 17
    .line 18
    .line 19
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    .line 23
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    move-result v3

    .line 25
    .line 26
    if-eqz v3, :cond_1

    .line 27
    return-wide v0

    .line 28
    .line 29
    :cond_1
    :try_start_0
    new-instance v3, Ljava/util/StringTokenizer;

    .line 30
    .line 31
    .line 32
    invoke-static {v2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 33
    .line 34
    const-string v4, "|"

    .line 35
    .line 36
    .line 37
    invoke-direct {v3, v2, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_2
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    .line 41
    move-result v2

    .line 42
    .line 43
    if-eqz v2, :cond_3

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 47
    move-result-object v2

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    .line 51
    move-result v4

    .line 52
    .line 53
    if-eqz v4, :cond_3

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 57
    move-result-object v4

    .line 58
    .line 59
    .line 60
    invoke-static {p1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    move-result v2

    .line 62
    .line 63
    if-eqz v2, :cond_2

    .line 64
    .line 65
    .line 66
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 67
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :catch_0
    :cond_3
    :goto_0
    return-wide v0
.end method

.method public final getReceiver$Amino_bundle()Landroid/content/BroadcastReceiver;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->receiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method public final getThreadLastReadTime(ILjava/lang/String;)Ljava/util/Date;
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    .line 6
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 7
    move-result v1

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/chat/core/ChatService;->getCurCommunityThreadCheckInfos(I)Landroidx/collection/ArrayMap;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    check-cast p1, Lcom/narvii/chat/core/ThreadCheckInfo;

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/narvii/chat/core/ThreadCheckInfo;->getLastReadTime()Ljava/util/Date;

    .line 26
    move-result-object v0

    .line 27
    :cond_1
    :goto_0
    return-object v0
.end method

.method public final getUnreadChatCountInCurCommunity(I)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->unreadChatCountMapper:Landroid/util/SparseArray;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-ltz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->unreadChatCountMapper:Landroid/util/SparseArray;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    const-string v0, "get(...)"

    .line 17
    .line 18
    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    check-cast p1, Ljava/lang/Number;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 25
    move-result p1

    .line 26
    return p1

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/chat/core/ChatService;->buildUnreadThreadMapper(I)I

    .line 30
    move-result p1

    .line 31
    return p1
.end method

.method public final handleQuitMessage(Lcom/narvii/chat/util/ChatMessageDto;)V
    .locals 4
    .param p1    # Lcom/narvii/chat/util/ChatMessageDto;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object v1, p1, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    move-object v1, v0

    .line 8
    .line 9
    :goto_0
    if-nez v1, :cond_1

    .line 10
    return-void

    .line 11
    .line 12
    :cond_1
    iget-object v1, p1, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 13
    .line 14
    iget v2, v1, Lcom/narvii/model/ChatMessage;->type:I

    .line 15
    .line 16
    const/16 v3, 0x66

    .line 17
    .line 18
    if-eq v2, v3, :cond_2

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/narvii/model/ChatMessage;->isThreadDestroyMessage()Z

    .line 22
    move-result v2

    .line 23
    .line 24
    if-eqz v2, :cond_5

    .line 25
    .line 26
    :cond_2
    iget-object v2, p0, Lcom/narvii/chat/core/ChatService;->ctx:Lcom/narvii/app/NVContext;

    .line 27
    .line 28
    const-string v3, "account"

    .line 29
    .line 30
    .line 31
    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    check-cast v2, Lcom/narvii/account/AccountService;

    .line 35
    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    .line 43
    :cond_3
    invoke-virtual {v1}, Lcom/narvii/model/ChatMessage;->uid()Ljava/lang/String;

    .line 44
    move-result-object v2

    .line 45
    .line 46
    .line 47
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    move-result v0

    .line 49
    .line 50
    if-nez v0, :cond_4

    .line 51
    .line 52
    iget v0, v1, Lcom/narvii/model/ChatMessage;->type:I

    .line 53
    .line 54
    const/16 v2, 0x76

    .line 55
    .line 56
    if-ne v0, v2, :cond_5

    .line 57
    .line 58
    :cond_4
    iget v0, p1, Lcom/narvii/chat/util/ChatMessageDto;->ndcId:I

    .line 59
    .line 60
    iget-object v1, v1, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v0, v1}, Lcom/narvii/chat/core/ChatService;->removeThread(ILjava/lang/String;)V

    .line 64
    .line 65
    new-instance v0, Lcom/narvii/model/ChatThread;

    .line 66
    .line 67
    .line 68
    invoke-direct {v0}, Lcom/narvii/model/ChatThread;-><init>()V

    .line 69
    .line 70
    iget-object v1, p1, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 71
    .line 72
    iget-object v1, v1, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    .line 73
    .line 74
    iput-object v1, v0, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 75
    .line 76
    new-instance v1, Lcom/narvii/notification/Notification;

    .line 77
    .line 78
    const-string v2, "delete"

    .line 79
    .line 80
    .line 81
    invoke-direct {v1, v2, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 82
    .line 83
    iget p1, p1, Lcom/narvii/chat/util/ChatMessageDto;->ndcId:I

    .line 84
    .line 85
    .line 86
    invoke-direct {p0, p1, v1}, Lcom/narvii/chat/core/ChatService;->sendNotification(ILcom/narvii/notification/Notification;)V

    .line 87
    :cond_5
    return-void
.end method

.method public final isCurThreadUnread(ILjava/lang/String;)Z
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    .line 6
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 7
    move-result v1

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/chat/core/ChatService;->getCurCommunityThreadCheckInfos(I)Landroidx/collection/ArrayMap;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    check-cast p1, Lcom/narvii/chat/core/ThreadCheckInfo;

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/narvii/chat/core/ThreadCheckInfo;->hasUnreadMessage()Z

    .line 26
    move-result v0

    .line 27
    :cond_1
    :goto_0
    return v0
.end method

.method public final isMediaUploadingStillInProcess(I)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->inProcessUploadMediaIds:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public final isSendTooFast()Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->recentMessageTime:[J

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/collections/l;->k0([J)Ljava/lang/Long;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 12
    move-result-wide v0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 22
    move-result-wide v2

    .line 23
    sub-long/2addr v2, v0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->recentMessageTime:[J

    .line 26
    array-length v0, v0

    .line 27
    .line 28
    mul-int/lit16 v0, v0, 0x9c4

    .line 29
    int-to-long v0, v0

    .line 30
    .line 31
    cmp-long v0, v2, v0

    .line 32
    .line 33
    if-gez v0, :cond_1

    .line 34
    const/4 v0, 0x1

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const/4 v0, 0x0

    .line 37
    :goto_1
    return v0
.end method

.method public final isVideoUploadRequest(Lcom/narvii/model/ChatMessage;)Z
    .locals 2
    .param p1    # Lcom/narvii/model/ChatMessage;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    iget v0, p1, Lcom/narvii/model/ChatMessage;->type:I

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 v1, 0x4

    .line 8
    .line 9
    if-ne v0, v1, :cond_2

    .line 10
    .line 11
    :cond_0
    iget v0, p1, Lcom/narvii/model/ChatMessage;->mediaType:I

    .line 12
    .line 13
    const/16 v1, 0x7b

    .line 14
    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    .line 17
    const/16 v1, 0x66

    .line 18
    .line 19
    if-ne v0, v1, :cond_2

    .line 20
    .line 21
    :cond_1
    iget-object p1, p1, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    .line 22
    .line 23
    if-eqz p1, :cond_2

    .line 24
    const/4 p1, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_2
    const/4 p1, 0x0

    .line 27
    :goto_0
    return p1
.end method

.method public onConnect(Lcom/narvii/util/ws/WsService;)V
    .locals 6
    .param p1    # Lcom/narvii/util/ws/WsService;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/core/ChatService;->TAG:Ljava/lang/String;

    .line 3
    .line 4
    const-string v0, "WS Connected"

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    iget-wide v0, p0, Lcom/narvii/chat/core/ChatService;->lastWsDisconnectTimeMillis:J

    .line 10
    .line 11
    const-wide/16 v2, 0x0

    .line 12
    .line 13
    cmp-long p1, v0, v2

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 19
    move-result-wide v0

    .line 20
    .line 21
    iget-wide v4, p0, Lcom/narvii/chat/core/ChatService;->lastWsDisconnectTimeMillis:J

    .line 22
    sub-long/2addr v0, v4

    .line 23
    .line 24
    iget p1, p0, Lcom/narvii/chat/core/ChatService;->CHAT_RESET_INTERVAL:I

    .line 25
    int-to-long v4, p1

    .line 26
    .line 27
    cmp-long p1, v0, v4

    .line 28
    .line 29
    if-lez p1, :cond_0

    .line 30
    .line 31
    iput-wide v2, p0, Lcom/narvii/chat/core/ChatService;->lastWsDisconnectTimeMillis:J

    .line 32
    .line 33
    .line 34
    invoke-direct {p0}, Lcom/narvii/chat/core/ChatService;->dispatchChatMessageListReset()V

    .line 35
    .line 36
    iget-object p1, p0, Lcom/narvii/chat/core/ChatService;->threadCheckQueue:Ljava/util/HashSet;

    .line 37
    const/4 v0, 0x1

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1, v0}, Lcom/narvii/chat/core/ChatService;->queryThreadCheckInfo(Ljava/util/Set;Z)V

    .line 41
    :cond_0
    return-void
.end method

.method public onDisconnect(Lcom/narvii/util/ws/WsService;Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Lcom/narvii/util/ws/WsService;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-wide p1, p0, Lcom/narvii/chat/core/ChatService;->lastWsDisconnectTimeMillis:J

    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    cmp-long p1, p1, v0

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/chat/core/ChatService;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    const-string p2, "WS disconnect"

    .line 13
    .line 14
    .line 15
    invoke-static {p1, p2}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 19
    move-result-wide p1

    .line 20
    .line 21
    iput-wide p1, p0, Lcom/narvii/chat/core/ChatService;->lastWsDisconnectTimeMillis:J

    .line 22
    :cond_0
    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 4
    .param p1    # Lcom/narvii/notification/Notification;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 6
    .line 7
    const-string v1, "delete"

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->messages:Landroid/util/SparseArray;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 19
    move-result v0

    .line 20
    .line 21
    add-int/lit8 v0, v0, -0x1

    .line 22
    :goto_0
    const/4 v1, -0x1

    .line 23
    .line 24
    if-ge v1, v0, :cond_2

    .line 25
    .line 26
    iget-object v1, p0, Lcom/narvii/chat/core/ChatService;->messages:Landroid/util/SparseArray;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    check-cast v1, Lcom/narvii/model/ChatMessage;

    .line 33
    .line 34
    iget-object v2, v1, Lcom/narvii/model/ChatMessage;->messageId:Ljava/lang/String;

    .line 35
    .line 36
    iget-object v3, p1, Lcom/narvii/notification/Notification;->id:Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    move-result v2

    .line 41
    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/narvii/model/ChatMessage;->getClientRefIdTmp()I

    .line 46
    move-result v1

    .line 47
    .line 48
    .line 49
    invoke-direct {p0, v1}, Lcom/narvii/chat/core/ChatService;->removeOutboundMessage(I)V

    .line 50
    .line 51
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    return-void
.end method

.method public final onOpenCommunity()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/core/ChatService;->readDraft()V

    .line 4
    return-void
.end method

.method public final onPostFailed(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/model/api/ApiResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "I",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/util/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/narvii/model/api/ApiResponse;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string p3, "req"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p3, "message"

    .line 8
    .line 9
    .line 10
    invoke-static {p4, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    const-string p3, "null cannot be cast to non-null type com.narvii.model.ChatMessage"

    .line 17
    .line 18
    .line 19
    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    check-cast p1, Lcom/narvii/model/ChatMessage;

    .line 22
    .line 23
    iget-object p5, p0, Lcom/narvii/chat/core/ChatService;->recalledMessages:Landroid/util/SparseBooleanArray;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->getClientRefIdTmp()I

    .line 27
    move-result p6

    .line 28
    .line 29
    .line 30
    invoke-virtual {p5, p6}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 31
    move-result p5

    .line 32
    .line 33
    if-nez p5, :cond_0

    .line 34
    .line 35
    iget-object p5, p0, Lcom/narvii/chat/core/ChatService;->ctx:Lcom/narvii/app/NVContext;

    .line 36
    .line 37
    .line 38
    invoke-interface {p5}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 39
    move-result-object p5

    .line 40
    const/4 p6, 0x0

    .line 41
    .line 42
    .line 43
    invoke-static {p5, p4, p6}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 44
    move-result-object p4

    .line 45
    .line 46
    .line 47
    invoke-virtual {p4}, Lcom/narvii/util/NVToast;->show()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    .line 54
    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    check-cast p1, Lcom/narvii/model/ChatMessage;

    .line 57
    const/4 p3, 0x2

    .line 58
    .line 59
    iput p3, p1, Lcom/narvii/model/ChatMessage;->_status:I

    .line 60
    .line 61
    iput p2, p1, Lcom/narvii/model/ChatMessage;->_errorCode:I

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, p1}, Lcom/narvii/chat/core/ChatService;->storeOutboundMessage(Lcom/narvii/model/ChatMessage;)V

    .line 65
    .line 66
    new-instance p2, Lcom/narvii/notification/Notification;

    .line 67
    .line 68
    const-string p3, "update"

    .line 69
    .line 70
    .line 71
    invoke-direct {p2, p3, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 72
    .line 73
    .line 74
    invoke-direct {p0, p1}, Lcom/narvii/chat/core/ChatService;->getNdcIdFromMessage(Lcom/narvii/model/ChatMessage;)I

    .line 75
    move-result p1

    .line 76
    .line 77
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/core/ChatService;->sendNotification(ILcom/narvii/notification/Notification;)V

    .line 79
    :cond_0
    return-void
.end method

.method public onWsError(Lcom/narvii/util/ws/WsService;Lcom/narvii/util/ws/WsError;)V
    .locals 2
    .param p1    # Lcom/narvii/util/ws/WsService;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/util/ws/WsError;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    sget-object p1, Lcom/narvii/util/ws/WsError;->CONNECTION_LOST:Lcom/narvii/util/ws/WsError;

    .line 3
    .line 4
    .line 5
    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-wide p1, p0, Lcom/narvii/chat/core/ChatService;->lastWsDisconnectTimeMillis:J

    .line 11
    .line 12
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    cmp-long p1, p1, v0

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/narvii/chat/core/ChatService;->TAG:Ljava/lang/String;

    .line 19
    .line 20
    const-string p2, "WS connection lost"

    .line 21
    .line 22
    .line 23
    invoke-static {p1, p2}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 27
    move-result-wide p1

    .line 28
    .line 29
    iput-wide p1, p0, Lcom/narvii/chat/core/ChatService;->lastWsDisconnectTimeMillis:J

    .line 30
    :cond_0
    return-void
.end method

.method public onWsMessage(Lcom/narvii/util/ws/WsService;Lcom/narvii/util/ws/WsMessage;)V
    .locals 6
    .param p1    # Lcom/narvii/util/ws/WsService;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/util/ws/WsMessage;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p2, :cond_13

    .line 3
    .line 4
    iget-object p1, p2, Lcom/narvii/util/ws/WsMessage;->tag:Ljava/lang/Object;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->DONE:Lcom/narvii/util/Tag;

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    goto/16 :goto_9

    .line 15
    .line 16
    :cond_0
    iget p1, p2, Lcom/narvii/util/ws/WsMessage;->type:I

    .line 17
    .line 18
    const/16 v0, 0x3e8

    .line 19
    .line 20
    if-ne p1, v0, :cond_13

    .line 21
    .line 22
    iget-object p1, p2, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 23
    .line 24
    if-nez p1, :cond_1

    .line 25
    return-void

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->toString()Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    const-class p2, Lcom/narvii/chat/util/ChatMessageDto;

    .line 32
    .line 33
    .line 34
    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    check-cast p1, Lcom/narvii/chat/util/ChatMessageDto;

    .line 38
    const/4 p2, 0x0

    .line 39
    const/4 v0, 0x2

    .line 40
    const/4 v1, 0x0

    .line 41
    .line 42
    .line 43
    invoke-static {p0, p1, p2, v0, v1}, Lcom/narvii/chat/core/ChatService;->sendChatMessageAck$default(Lcom/narvii/chat/core/ChatService;Lcom/narvii/chat/util/ChatMessageDto;ZILjava/lang/Object;)V

    .line 44
    const/4 v2, 0x1

    .line 45
    .line 46
    if-eqz p1, :cond_3

    .line 47
    .line 48
    iget-object v3, p1, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 49
    .line 50
    if-eqz v3, :cond_3

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3}, Lcom/narvii/model/ChatMessage;->isPermissionRelatedMessage()Z

    .line 54
    move-result v3

    .line 55
    .line 56
    if-ne v3, v2, :cond_3

    .line 57
    .line 58
    iget-object v3, p1, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 59
    .line 60
    if-eqz v3, :cond_2

    .line 61
    .line 62
    iget-object v4, v3, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    move-object v4, v1

    .line 65
    .line 66
    .line 67
    :goto_0
    invoke-direct {p0, v4, v3}, Lcom/narvii/chat/core/ChatService;->dispatchChannelPermissionChange(Ljava/lang/String;Lcom/narvii/model/ChatMessage;)V

    .line 68
    goto :goto_5

    .line 69
    .line 70
    :cond_3
    if-eqz p1, :cond_4

    .line 71
    .line 72
    iget-object v3, p1, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 73
    .line 74
    if-eqz v3, :cond_4

    .line 75
    .line 76
    iget v3, v3, Lcom/narvii/model/ChatMessage;->type:I

    .line 77
    .line 78
    const/16 v4, 0x79

    .line 79
    .line 80
    if-ne v3, v4, :cond_4

    .line 81
    goto :goto_1

    .line 82
    .line 83
    :cond_4
    if-eqz p1, :cond_6

    .line 84
    .line 85
    iget-object v3, p1, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 86
    .line 87
    if-eqz v3, :cond_6

    .line 88
    .line 89
    iget v3, v3, Lcom/narvii/model/ChatMessage;->type:I

    .line 90
    .line 91
    const/16 v4, 0x7f

    .line 92
    .line 93
    if-ne v3, v4, :cond_6

    .line 94
    .line 95
    :goto_1
    iget-object v3, p1, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 96
    .line 97
    if-eqz v3, :cond_5

    .line 98
    .line 99
    iget-object v4, v3, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    .line 100
    goto :goto_2

    .line 101
    :cond_5
    move-object v4, v1

    .line 102
    .line 103
    .line 104
    :goto_2
    invoke-direct {p0, v4, v3}, Lcom/narvii/chat/core/ChatService;->dispatchAnnouncementChange(Ljava/lang/String;Lcom/narvii/model/ChatMessage;)V

    .line 105
    goto :goto_5

    .line 106
    .line 107
    :cond_6
    if-eqz p1, :cond_7

    .line 108
    .line 109
    iget-object v3, p1, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 110
    .line 111
    if-eqz v3, :cond_7

    .line 112
    .line 113
    iget v3, v3, Lcom/narvii/model/ChatMessage;->type:I

    .line 114
    .line 115
    const/16 v4, 0x7d

    .line 116
    .line 117
    if-ne v3, v4, :cond_7

    .line 118
    goto :goto_3

    .line 119
    .line 120
    :cond_7
    if-eqz p1, :cond_9

    .line 121
    .line 122
    iget-object v3, p1, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 123
    .line 124
    if-eqz v3, :cond_9

    .line 125
    .line 126
    iget v3, v3, Lcom/narvii/model/ChatMessage;->type:I

    .line 127
    .line 128
    const/16 v4, 0x7e

    .line 129
    .line 130
    if-ne v3, v4, :cond_9

    .line 131
    .line 132
    :goto_3
    iget-object v3, p1, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 133
    .line 134
    if-eqz v3, :cond_8

    .line 135
    .line 136
    iget-object v4, v3, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    .line 137
    goto :goto_4

    .line 138
    :cond_8
    move-object v4, v1

    .line 139
    .line 140
    .line 141
    :goto_4
    invoke-direct {p0, v4, v3}, Lcom/narvii/chat/core/ChatService;->dispatchViewOnlyChange(Ljava/lang/String;Lcom/narvii/model/ChatMessage;)V

    .line 142
    .line 143
    :cond_9
    :goto_5
    if-eqz p1, :cond_a

    .line 144
    .line 145
    iget-object v3, p1, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 146
    .line 147
    if-eqz v3, :cond_a

    .line 148
    .line 149
    iget-object v3, v3, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    .line 150
    goto :goto_6

    .line 151
    :cond_a
    move-object v3, v1

    .line 152
    .line 153
    :goto_6
    if-eqz v3, :cond_b

    .line 154
    .line 155
    iget-object v4, p0, Lcom/narvii/chat/core/ChatService;->guestThreadSet:Ljava/util/HashSet;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 159
    move-result v4

    .line 160
    .line 161
    if-eqz v4, :cond_b

    .line 162
    move v4, v2

    .line 163
    goto :goto_7

    .line 164
    :cond_b
    move v4, p2

    .line 165
    .line 166
    iget-object v5, p1, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    if-eqz v5, :cond_ws_not_edit

    iget-boolean v5, v5, Lcom/narvii/model/ChatMessage;->isEdited:Z

    if-eqz v5, :cond_ws_not_edit

    invoke-direct {p0, v3, p1}, Lcom/narvii/chat/core/ChatService;->dispatchChatMessageListChange(Ljava/lang/String;Lcom/narvii/chat/util/ChatMessageDto;)V

    return-void

    :cond_ws_not_edit
    :goto_7
    if-eqz p1, :cond_e

    .line 167
    .line 168
    iget v5, p1, Lcom/narvii/chat/util/ChatMessageDto;->ndcId:I

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0, v5, p1}, Lcom/narvii/chat/core/ChatService;->dispatchGlobalOnNewMessage(ILcom/narvii/chat/util/ChatMessageDto;)V

    .line 172
    .line 173
    iget-object v5, p1, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 174
    .line 175
    if-eqz v5, :cond_c

    .line 176
    .line 177
    iget-object v1, v5, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    :cond_c
    invoke-direct {p0, v1, p1}, Lcom/narvii/chat/core/ChatService;->dispatchChatMessageListChange(Ljava/lang/String;Lcom/narvii/chat/util/ChatMessageDto;)V

    .line 181
    .line 182
    if-eqz v4, :cond_d

    .line 183
    .line 184
    iget v1, p1, Lcom/narvii/chat/util/ChatMessageDto;->membershipStatus:I

    .line 185
    .line 186
    if-ne v1, v2, :cond_e

    .line 187
    .line 188
    :cond_d
    iget v1, p1, Lcom/narvii/chat/util/ChatMessageDto;->ndcId:I

    .line 189
    .line 190
    .line 191
    invoke-virtual {p0, v1, p1}, Lcom/narvii/chat/core/ChatService;->dispatchNewMessageOnCommunityLevel(ILcom/narvii/chat/util/ChatMessageDto;)V

    .line 192
    .line 193
    .line 194
    :cond_e
    invoke-virtual {p0, p1}, Lcom/narvii/chat/core/ChatService;->handleQuitMessage(Lcom/narvii/chat/util/ChatMessageDto;)V

    .line 195
    .line 196
    iget-object v1, p1, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 197
    .line 198
    iget v1, v1, Lcom/narvii/model/ChatMessage;->type:I

    .line 199
    .line 200
    const/16 v5, 0x77

    .line 201
    .line 202
    if-ne v1, v5, :cond_f

    .line 203
    move v1, v2

    .line 204
    goto :goto_8

    .line 205
    :cond_f
    move v1, p2

    .line 206
    .line 207
    :goto_8
    iget v5, p1, Lcom/narvii/chat/util/ChatMessageDto;->membershipStatus:I

    .line 208
    .line 209
    if-eq v5, v2, :cond_10

    .line 210
    .line 211
    if-ne v5, v0, :cond_11

    .line 212
    :cond_10
    move p2, v2

    .line 213
    .line 214
    :cond_11
    if-nez v4, :cond_12

    .line 215
    .line 216
    if-nez v1, :cond_12

    .line 217
    .line 218
    if-eqz p2, :cond_12

    .line 219
    .line 220
    .line 221
    invoke-virtual {p0, p1}, Lcom/narvii/chat/core/ChatService;->updateThreadCheckTable(Lcom/narvii/chat/util/ChatMessageDto;)V

    .line 222
    goto :goto_9

    .line 223
    .line 224
    :cond_12
    new-instance p1, Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    .line 229
    const-string p2, "Is guest role in this thread "

    .line 230
    .line 231
    .line 232
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    move-result-object p1

    .line 240
    .line 241
    const-string p2, "websocket"

    .line 242
    .line 243
    .line 244
    invoke-static {p2, p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :cond_13
    :goto_9
    return-void
.end method

.method public final parseLinkFirst(Lcom/narvii/model/ChatMessage;)Z
    .locals 4
    .param p1    # Lcom/narvii/model/ChatMessage;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget v0, p1, Lcom/narvii/model/ChatMessage;->type:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p1, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p1, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->hasAttachment()Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->hasLinkSnippet()Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    iget-object v0, p1, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lcom/narvii/util/UriUtils;->extractUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    move-result v1

    .line 37
    .line 38
    if-nez v1, :cond_0

    .line 39
    const/4 v1, 0x1

    .line 40
    .line 41
    iput-boolean v1, p1, Lcom/narvii/model/ChatMessage;->_linkParsing:Z

    .line 42
    .line 43
    new-instance v2, Lcom/narvii/link/LinkSnippetHelper;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/narvii/chat/core/ChatService;->getCurNvContext()Lcom/narvii/app/NVContext;

    .line 47
    move-result-object v3

    .line 48
    .line 49
    .line 50
    invoke-direct {v2, v3}, Lcom/narvii/link/LinkSnippetHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 51
    .line 52
    new-instance v3, Lcom/narvii/chat/core/ChatService$LinkSnippetHandler;

    .line 53
    .line 54
    .line 55
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-direct {v3, p0, p1, v0, v2}, Lcom/narvii/chat/core/ChatService$LinkSnippetHandler;-><init>(Lcom/narvii/chat/core/ChatService;Lcom/narvii/model/ChatMessage;Ljava/lang/String;Lcom/narvii/link/LinkSnippetHelper;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v0, v3}, Lcom/narvii/link/LinkSnippetHelper;->getLinkSnippet(Ljava/lang/String;Lcom/narvii/link/LinkSnippetListener;)V

    .line 62
    return v1

    .line 63
    :cond_0
    const/4 p1, 0x0

    .line 64
    return p1
.end method

.method public final pause()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/chat/core/ChatService;->receiver:Landroid/content/BroadcastReceiver;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->f(Landroid/content/BroadcastReceiver;)V

    .line 8
    .line 9
    iget v0, p0, Lcom/narvii/chat/core/ChatService;->curCid:I

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, v0}, Lcom/narvii/chat/core/ChatService;->notificationCenter(I)Lcom/narvii/notification/NotificationCenter;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p0}, Lcom/narvii/notification/NotificationCenter;->unregisterListener(Lcom/narvii/notification/NotificationListener;)V

    .line 17
    return-void
.end method

.method public final photoManager$Amino_bundle()Lcom/narvii/photos/PhotoManager;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/chat/core/ChatService;->photoTouched:Z

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->ctx:Lcom/narvii/app/NVContext;

    .line 6
    .line 7
    const-string v1, "photo"

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    const-string v1, "getService(...)"

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    check-cast v0, Lcom/narvii/photos/PhotoManager;

    .line 19
    return-object v0
.end method

.method public final postMessage(ILcom/narvii/model/ChatMessage;)Lcom/narvii/model/ChatMessage;
    .locals 3
    .param p2    # Lcom/narvii/model/ChatMessage;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p2}, Lcom/narvii/model/ChatMessage;->getClientRefIdTmp()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "post message clientRefId = 0"

    .line 3
    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 4
    :cond_1
    iget-object v0, p2, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, "post message threadId = null"

    .line 5
    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 6
    :cond_2
    iput p1, p2, Lcom/narvii/model/ChatMessage;->_ndcId:I

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/core/ChatService;->sendChatRequest(ILcom/narvii/model/ChatMessage;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p1, p0, Lcom/narvii/chat/core/ChatService;->messages:Landroid/util/SparseArray;

    .line 8
    invoke-virtual {p2}, Lcom/narvii/model/ChatMessage;->getClientRefIdTmp()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/ChatMessage;

    return-object p1

    .line 9
    :cond_3
    invoke-virtual {p2}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.narvii.model.ChatMessage"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/narvii/model/ChatMessage;

    const/4 v1, 0x1

    .line 10
    iput v1, v0, Lcom/narvii/model/ChatMessage;->_status:I

    .line 11
    invoke-virtual {p0, v0}, Lcom/narvii/chat/core/ChatService;->storeOutboundMessage(Lcom/narvii/model/ChatMessage;)V

    .line 12
    invoke-direct {p0}, Lcom/narvii/chat/core/ChatService;->recordRecentMessage()V

    .line 13
    new-instance v1, Lcom/narvii/notification/Notification;

    const-string v2, "new"

    invoke-direct {v1, v2, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 14
    invoke-direct {p0, p1, v1}, Lcom/narvii/chat/core/ChatService;->sendNotification(ILcom/narvii/notification/Notification;)V

    .line 15
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 16
    iget-object v1, p2, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v0, v0}, Lcom/narvii/chat/core/ChatService;->updateThreadReadAndActivityTime(ILjava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    return-object p2
.end method

.method public final postMessage(Lcom/narvii/model/ChatMessage;)Lcom/narvii/model/ChatMessage;
    .locals 3
    .param p1    # Lcom/narvii/model/ChatMessage;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, p1, v0, v1}, Lcom/narvii/chat/core/ChatService;->postMessage$default(Lcom/narvii/chat/core/ChatService;ILcom/narvii/model/ChatMessage;ILjava/lang/Object;)Lcom/narvii/model/ChatMessage;

    move-result-object p1

    return-object p1
.end method

.method public final queryThreadCheckInfo(I)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/narvii/chat/core/ChatService;->queryThreadCheckInfo$default(Lcom/narvii/chat/core/ChatService;IZILjava/lang/Object;)V

    return-void
.end method

.method public final queryThreadCheckInfo(IZ)V
    .locals 1

    if-nez p2, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/chat/core/ChatService;->isReadyToRequestThreadCheckForCurCommunity(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {p0, v0, p2}, Lcom/narvii/chat/core/ChatService;->queryThreadCheckInfo(Ljava/util/Set;Z)V

    :cond_1
    return-void
.end method

.method public final queryThreadCheckInfo(Ljava/util/Set;)V
    .locals 3
    .param p1    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 2
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/narvii/chat/core/ChatService;->queryThreadCheckInfo$default(Lcom/narvii/chat/core/ChatService;Ljava/util/Set;ZILjava/lang/Object;)V

    return-void
.end method

.method public final queryThreadCheckInfo(Ljava/util/Set;Z)V
    .locals 4
    .param p1    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_8

    .line 7
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    if-nez p2, :cond_3

    .line 8
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 9
    invoke-direct {p0, v0}, Lcom/narvii/chat/core/ChatService;->isReadyToRequestThreadCheckForCurCommunity(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/narvii/chat/core/ChatService;->ctx:Lcom/narvii/app/NVContext;

    const-string v0, "api"

    .line 10
    invoke-interface {p2, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "getService(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/narvii/util/http/ApiService;

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    sget v1, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_4

    const-string v1, "0"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    :cond_4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 15
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_5

    const/16 v3, 0x2c

    .line 16
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    :cond_5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 18
    :cond_6
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "/chat/thread-check/human-readable"

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->retry(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    .line 19
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_7

    const-string v2, "ndcIds"

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    :cond_7
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->communitiesIsRequestingThreadCheck:Ljava/util/HashSet;

    .line 21
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 22
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/core/ChatService;->threadCheckRequest:Lcom/narvii/util/http/ApiRequest;

    .line 23
    new-instance v0, Lcom/narvii/chat/core/ChatService$queryThreadCheckInfo$2;

    const-class v1, Lcom/narvii/chat/core/GlobalThreadCheckResultMapResponse;

    invoke-direct {v0, p0, v1}, Lcom/narvii/chat/core/ChatService$queryThreadCheckInfo$2;-><init>(Lcom/narvii/chat/core/ChatService;Ljava/lang/Class;)V

    invoke-virtual {p2, p1, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    :cond_8
    :goto_2
    return-void
.end method

.method public final readDraft()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->drafts:Lcom/narvii/chat/core/ChatService$DraftMap;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/narvii/chat/core/ChatService$DraftMap;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Lcom/narvii/chat/core/ChatService$DraftMap;-><init>()V

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/chat/core/ChatService;->drafts:Lcom/narvii/chat/core/ChatService$DraftMap;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->drafts:Lcom/narvii/chat/core/ChatService$DraftMap;

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x1

    .line 21
    .line 22
    if-ne v0, v1, :cond_2

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->chatDraftPrefs:Landroid/content/SharedPreferences;

    .line 25
    .line 26
    const-string v1, "chat_draft"

    .line 27
    const/4 v2, 0x0

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    const-class v1, Lcom/narvii/chat/core/ChatService$DraftMap;

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    check-cast v0, Lcom/narvii/chat/core/ChatService$DraftMap;

    .line 40
    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    new-instance v0, Lcom/narvii/chat/core/ChatService$DraftMap;

    .line 44
    .line 45
    .line 46
    invoke-direct {v0}, Lcom/narvii/chat/core/ChatService$DraftMap;-><init>()V

    .line 47
    .line 48
    :cond_1
    iput-object v0, p0, Lcom/narvii/chat/core/ChatService;->drafts:Lcom/narvii/chat/core/ChatService$DraftMap;

    .line 49
    :cond_2
    return-void
.end method

.method public final recallMessage(I)Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->messages:Landroid/util/SparseArray;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/model/ChatMessage;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    const/4 p1, 0x0

    .line 12
    return p1

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/chat/core/ChatService;->removeOutboundMessage(I)V

    .line 16
    .line 17
    iget v1, v0, Lcom/narvii/model/ChatMessage;->_status:I

    .line 18
    const/4 v2, 0x1

    .line 19
    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    if-eq v1, v2, :cond_1

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_1
    iget-object v1, p0, Lcom/narvii/chat/core/ChatService;->recalledMessages:Landroid/util/SparseBooleanArray;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 29
    goto :goto_0

    .line 30
    .line 31
    .line 32
    :cond_2
    invoke-virtual {p0, v0}, Lcom/narvii/chat/core/ChatService;->sendDeleteMessageRequest(Lcom/narvii/model/ChatMessage;)V

    .line 33
    .line 34
    :goto_0
    new-instance p1, Lcom/narvii/notification/Notification;

    .line 35
    .line 36
    const-string v1, "delete"

    .line 37
    .line 38
    .line 39
    invoke-direct {p1, v1, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0, v0}, Lcom/narvii/chat/core/ChatService;->getNdcIdFromMessage(Lcom/narvii/model/ChatMessage;)I

    .line 43
    move-result v0

    .line 44
    .line 45
    .line 46
    invoke-direct {p0, v0, p1}, Lcom/narvii/chat/core/ChatService;->sendNotification(ILcom/narvii/notification/Notification;)V

    .line 47
    return v2
.end method

.method public final recordOutBoundCreatedTime(Lcom/narvii/model/ChatMessage;)V
    .locals 2
    .param p1    # Lcom/narvii/model/ChatMessage;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object v0, p1, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    .line 8
    :goto_0
    if-nez v0, :cond_1

    .line 9
    return-void

    .line 10
    .line 11
    :cond_1
    iget-object v1, p0, Lcom/narvii/chat/core/ChatService;->outboundMessageCreateTime:Landroid/util/SparseArray;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->getClientRefIdTmp()I

    .line 15
    move-result p1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 19
    return-void
.end method

.method public final refresh(Z)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/core/ChatService;->ctx:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v0, "affiliations"

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    check-cast p1, Lcom/narvii/community/AffiliationsService;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/narvii/community/AffiliationsService;->getTimeStamp()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    .line 20
    :goto_0
    if-nez v0, :cond_1

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    new-instance v0, Lcom/narvii/chat/core/g;

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/narvii/chat/core/g;-><init>(Lcom/narvii/chat/core/ChatService;)V

    .line 28
    const/4 v1, 0x1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v1, v0}, Lcom/narvii/community/AffiliationsService;->refresh(ZLcom/narvii/util/Callback;)V

    .line 32
    :cond_1
    return-void
.end method

.method public final removeCommunityLevelReceptor(ILcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V
    .locals 1
    .param p2    # Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-ltz p1, :cond_2

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    goto :goto_0

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->communityLevelReceptors:Landroid/util/SparseArray;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    check-cast p1, Lcom/narvii/util/EventDispatcher;

    .line 14
    .line 15
    if-nez p1, :cond_1

    .line 16
    return-void

    .line 17
    .line 18
    .line 19
    :cond_1
    invoke-virtual {p1, p2}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    .line 20
    :cond_2
    :goto_0
    return-void
.end method

.method public final removeGlobalChatMessageReceptor(Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V
    .locals 1
    .param p1    # Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "listener"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->globalLevelReceptors:Lcom/narvii/util/EventDispatcher;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    .line 11
    return-void
.end method

.method public final removeGuestThreadId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->guestThreadSet:Ljava/util/HashSet;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 8
    :cond_0
    return-void
.end method

.method public final removeInProcessUploadMedia(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->inProcessUploadMediaIds:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 10
    return-void
.end method

.method public final removeLiveChannelPermissionListener(Ljava/lang/String;Lcom/narvii/chat/ThreadConfigChangeListener;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/chat/ThreadConfigChangeListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->threadConfigDispatcher:Ljava/util/HashMap;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    check-cast p1, Lcom/narvii/util/EventDispatcher;

    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    return-void

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-virtual {p1, p2}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    .line 24
    :cond_2
    :goto_0
    return-void
.end method

.method public final removeThread(ILjava/lang/String;)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p2, :cond_2

    .line 3
    .line 4
    .line 5
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/chat/core/ChatService;->getCurCommunityThreadCheckInfos(I)Landroidx/collection/ArrayMap;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    check-cast v1, Lcom/narvii/chat/core/ThreadCheckInfo;

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    return-void

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-virtual {v1}, Lcom/narvii/chat/core/ThreadCheckInfo;->hasUnreadMessage()Z

    .line 26
    move-result v1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p2}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, p1}, Lcom/narvii/chat/core/ChatService;->checkCurCommunityThreadCountChange(I)V

    .line 35
    :cond_2
    :goto_0
    return-void
.end method

.method public final removeThreadLevelReceptor(Ljava/lang/String;Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    if-nez p2, :cond_1

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->threadLevelReceptor:Ljava/util/HashMap;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    check-cast p1, Lcom/narvii/util/EventDispatcher;

    .line 21
    .line 22
    if-nez p1, :cond_2

    .line 23
    return-void

    .line 24
    .line 25
    .line 26
    :cond_2
    invoke-virtual {p1, p2}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    .line 27
    :cond_3
    :goto_0
    return-void
.end method

.method public final removeVideoMessagePostListener(Ljava/lang/String;Lcom/narvii/chat/core/ChatService$VideoMessageProgressChangeListener;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/chat/core/ChatService$VideoMessageProgressChangeListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->videoMessageProgressDispatcher:Ljava/util/HashMap;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    check-cast p1, Lcom/narvii/util/EventDispatcher;

    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    return-void

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-virtual {p1, p2}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    .line 24
    :cond_2
    :goto_0
    return-void
.end method

.method public final resume()V
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/chat/core/ChatService;->curCid:I

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/narvii/chat/core/ChatService;->notificationCenter(I)Lcom/narvii/notification/NotificationCenter;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p0}, Lcom/narvii/notification/NotificationCenter;->registerListener(Lcom/narvii/notification/NotificationListener;)V

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/narvii/chat/core/ChatService;->receiver:Landroid/content/BroadcastReceiver;

    .line 14
    .line 15
    new-instance v2, Landroid/content/IntentFilter;

    .line 16
    .line 17
    const-string v3, "com.narvii.action.ACCOUNT_CHANGED"

    .line 18
    .line 19
    .line 20
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 24
    return-void
.end method

.method public final retryPost(I)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->messages:Landroid/util/SparseArray;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/model/ChatMessage;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    const-string v1, "retryPost fail, message not found: "

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 31
    return-void

    .line 32
    .line 33
    :cond_0
    iget p1, v0, Lcom/narvii/model/ChatMessage;->_status:I

    .line 34
    const/4 v1, 0x2

    .line 35
    .line 36
    if-eq p1, v1, :cond_1

    .line 37
    .line 38
    const-string p1, "retryPost fail, message status != STATUS_FAILED"

    .line 39
    .line 40
    .line 41
    invoke-static {p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 42
    return-void

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-direct {p0, v0}, Lcom/narvii/chat/core/ChatService;->getNdcIdFromMessage(Lcom/narvii/model/ChatMessage;)I

    .line 46
    move-result p1

    .line 47
    .line 48
    .line 49
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/core/ChatService;->sendChatRequest(ILcom/narvii/model/ChatMessage;)Z

    .line 50
    move-result v1

    .line 51
    .line 52
    if-nez v1, :cond_2

    .line 53
    return-void

    .line 54
    .line 55
    .line 56
    :cond_2
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    const-string v1, "null cannot be cast to non-null type com.narvii.model.ChatMessage"

    .line 60
    .line 61
    .line 62
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    check-cast v0, Lcom/narvii/model/ChatMessage;

    .line 65
    const/4 v1, 0x1

    .line 66
    .line 67
    iput v1, v0, Lcom/narvii/model/ChatMessage;->_status:I

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v0}, Lcom/narvii/chat/core/ChatService;->storeOutboundMessage(Lcom/narvii/model/ChatMessage;)V

    .line 71
    .line 72
    new-instance v1, Lcom/narvii/notification/Notification;

    .line 73
    .line 74
    const-string v2, "update"

    .line 75
    .line 76
    .line 77
    invoke-direct {v1, v2, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 78
    .line 79
    .line 80
    invoke-direct {p0, p1, v1}, Lcom/narvii/chat/core/ChatService;->sendNotification(ILcom/narvii/notification/Notification;)V

    .line 81
    return-void
.end method

.method public final sendChatMessageAck(ILcom/narvii/model/ChatMessage;Z)V
    .locals 1
    .param p2    # Lcom/narvii/model/ChatMessage;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-ltz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Lcom/narvii/chat/util/ChatMessageDto;

    invoke-direct {v0}, Lcom/narvii/chat/util/ChatMessageDto;-><init>()V

    iput-object p2, v0, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    iput p1, v0, Lcom/narvii/chat/util/ChatMessageDto;->ndcId:I

    .line 2
    invoke-virtual {p0, v0, p3}, Lcom/narvii/chat/core/ChatService;->sendChatMessageAck(Lcom/narvii/chat/util/ChatMessageDto;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final sendChatMessageAck(Lcom/narvii/chat/util/ChatMessageDto;Z)V
    .locals 12
    .param p1    # Lcom/narvii/chat/util/ChatMessageDto;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3
    iget-object v1, p1, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_1

    return-void

    .line 4
    :cond_1
    new-instance v1, Lcom/narvii/util/ws/WsRequest;

    invoke-direct {v1}, Lcom/narvii/util/ws/WsRequest;-><init>()V

    const/16 v2, 0x3e9

    iput v2, v1, Lcom/narvii/util/ws/WsMessage;->type:I

    .line 5
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v2

    .line 6
    iget v3, p1, Lcom/narvii/chat/util/ChatMessageDto;->ndcId:I

    const-string v4, "ndcId"

    invoke-virtual {v2, v4, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 7
    iget-object v3, p1, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    if-eqz v3, :cond_2

    iget-object v3, v3, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v3, v0

    :goto_1
    const-string v4, "threadId"

    invoke-virtual {v2, v4, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 8
    iget-object v3, p1, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    if-eqz v3, :cond_3

    iget-object v0, v3, Lcom/narvii/model/ChatMessage;->messageId:Ljava/lang/String;

    :cond_3
    const-string v3, "messageId"

    invoke-virtual {v2, v3, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v0, "markHasRead"

    .line 9
    invoke-virtual {v2, v0, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 10
    iget-object v0, p1, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    iget-object v0, v0, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    if-eqz v0, :cond_4

    const-string v3, "createdTime"

    .line 11
    invoke-static {v0}, Lcom/narvii/util/DateTimeFormatter;->formatISO8601(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    :cond_4
    iput-object v2, v1, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-eqz p2, :cond_5

    .line 12
    iget v5, p1, Lcom/narvii/chat/util/ChatMessageDto;->ndcId:I

    iget-object p2, p1, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    iget-object v6, p2, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    iget-object v7, p2, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x18

    const/4 v11, 0x0

    move-object v4, p0

    invoke-static/range {v4 .. v11}, Lcom/narvii/chat/core/ChatService;->updateReadTime$default(Lcom/narvii/chat/core/ChatService;ILjava/lang/String;Ljava/util/Date;ZLcom/narvii/model/ChatThread;ILjava/lang/Object;)V

    .line 13
    new-instance p2, Lcom/narvii/chat/core/ThreadUpdateObject;

    invoke-direct {p2}, Lcom/narvii/chat/core/ThreadUpdateObject;-><init>()V

    .line 14
    new-instance v0, Lcom/narvii/model/ChatThread;

    invoke-direct {v0}, Lcom/narvii/model/ChatThread;-><init>()V

    .line 15
    iget-object v2, p1, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    iget-object v3, v2, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    iput-object v3, v0, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 16
    iget-object v2, v2, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    iput-object v2, v0, Lcom/narvii/model/ChatThread;->lastReadTime:Ljava/util/Date;

    iput-object v0, p2, Lcom/narvii/chat/core/ThreadUpdateObject;->chatThread:Lcom/narvii/model/ChatThread;

    const/4 v0, 0x0

    iput v0, p2, Lcom/narvii/chat/core/ThreadUpdateObject;->action:I

    .line 17
    new-instance v0, Lcom/narvii/notification/Notification;

    const-string v2, "update"

    invoke-direct {v0, v2, p2}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 18
    iget p1, p1, Lcom/narvii/chat/util/ChatMessageDto;->ndcId:I

    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/core/ChatService;->sendNotification(ILcom/narvii/notification/Notification;)V

    :cond_5
    iget-object p1, p0, Lcom/narvii/chat/core/ChatService;->ws:Lcom/narvii/util/ws/WsService;

    .line 19
    invoke-virtual {p1, v1}, Lcom/narvii/util/ws/WsService;->sendRequest(Lcom/narvii/util/ws/WsRequest;)V

    return-void
.end method

.method public final sendDeleteMessageRequest(Lcom/narvii/model/ChatMessage;)V
    .locals 5
    .param p1    # Lcom/narvii/model/ChatMessage;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->delete()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    iget-object v1, p1, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v2, p1, Lcom/narvii/model/ChatMessage;->messageId:Ljava/lang/String;

    .line 20
    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    const-string v4, "/chat/thread/"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v1, "/message/"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    .line 51
    invoke-direct {p0, p1}, Lcom/narvii/chat/core/ChatService;->getNdcIdFromMessage(Lcom/narvii/model/ChatMessage;)I

    .line 52
    move-result p1

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->ctx:Lcom/narvii/app/NVContext;

    .line 63
    .line 64
    const-string v1, "api"

    .line 65
    .line 66
    .line 67
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    const-string v1, "getService(...)"

    .line 71
    .line 72
    .line 73
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 76
    .line 77
    sget-object v1, Lcom/narvii/util/http/ApiResponseListener;->IGNORE_RESPONSE_LISTENER:Lcom/narvii/util/http/ApiResponseListener;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 81
    return-void
.end method

.method public final setCurCid(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/chat/core/ChatService;->curCid:I

    return-void
.end method

.method public final setCurCommunityContext(Lcom/narvii/app/NVContext;)V
    .locals 0
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/chat/core/ChatService;->curCommunityContext:Lcom/narvii/app/NVContext;

    return-void
.end method

.method public final setDraft(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "tid"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "msg"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p2}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object p2, p0, Lcom/narvii/chat/core/ChatService;->drafts:Lcom/narvii/chat/core/ChatService$DraftMap;

    .line 19
    .line 20
    if-eqz p2, :cond_2

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, p1}, Lcom/narvii/chat/core/ChatService$DraftMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    check-cast p1, Ljava/lang/String;

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->drafts:Lcom/narvii/chat/core/ChatService$DraftMap;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1}, Lcom/narvii/chat/core/ChatService$DraftMap;->containsKey(Ljava/lang/Object;)Z

    .line 35
    move-result v0

    .line 36
    const/4 v1, 0x1

    .line 37
    .line 38
    if-ne v0, v1, :cond_1

    .line 39
    .line 40
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->drafts:Lcom/narvii/chat/core/ChatService$DraftMap;

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p1}, Lcom/narvii/chat/core/ChatService$DraftMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    check-cast v0, Ljava/lang/String;

    .line 49
    .line 50
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->drafts:Lcom/narvii/chat/core/ChatService$DraftMap;

    .line 51
    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    check-cast p1, Ljava/lang/String;

    .line 59
    :cond_2
    :goto_0
    return-void
.end method

.method public final setReadTime(Ljava/lang/String;J)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_6

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto/16 :goto_1

    .line 11
    .line 12
    :cond_0
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    cmp-long v0, p2, v0

    .line 15
    .line 16
    if-gtz v0, :cond_1

    .line 17
    .line 18
    goto/16 :goto_1

    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->setLatestTid:Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    iget-wide v0, p0, Lcom/narvii/chat/core/ChatService;->setLatestTime:J

    .line 29
    .line 30
    cmp-long v0, p2, v0

    .line 31
    .line 32
    if-gtz v0, :cond_2

    .line 33
    return-void

    .line 34
    .line 35
    :cond_2
    iput-object p1, p0, Lcom/narvii/chat/core/ChatService;->setLatestTid:Ljava/lang/String;

    .line 36
    .line 37
    iput-wide p2, p0, Lcom/narvii/chat/core/ChatService;->setLatestTime:J

    .line 38
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    iget-object v1, p0, Lcom/narvii/chat/core/ChatService;->prefs:Landroid/content/SharedPreferences;

    .line 45
    const/4 v2, 0x0

    .line 46
    .line 47
    const-string v3, "lastReadTime"

    .line 48
    .line 49
    .line 50
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const/16 v2, 0x7c

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 69
    move-result v4

    .line 70
    .line 71
    if-nez v4, :cond_5

    .line 72
    .line 73
    new-instance v4, Ljava/util/StringTokenizer;

    .line 74
    .line 75
    .line 76
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 77
    .line 78
    const-string v5, "|"

    .line 79
    .line 80
    .line 81
    invoke-direct {v4, v1, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const/4 v1, 0x0

    .line 83
    .line 84
    :goto_0
    add-int/lit8 v5, v1, 0x1

    .line 85
    .line 86
    const/16 v6, 0x9

    .line 87
    .line 88
    if-ge v1, v6, :cond_5

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    .line 92
    move-result v1

    .line 93
    .line 94
    if-eqz v1, :cond_5

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 98
    move-result-object v1

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    .line 102
    move-result v6

    .line 103
    .line 104
    if-eqz v6, :cond_5

    .line 105
    .line 106
    .line 107
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 108
    move-result-object v6

    .line 109
    .line 110
    .line 111
    invoke-static {v1, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 112
    move-result v7

    .line 113
    .line 114
    if-eqz v7, :cond_3

    .line 115
    .line 116
    .line 117
    :try_start_0
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 118
    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .line 120
    cmp-long v1, v6, p2

    .line 121
    .line 122
    if-ltz v1, :cond_4

    .line 123
    return-void

    .line 124
    .line 125
    .line 126
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 136
    :catch_0
    :cond_4
    move v1, v5

    .line 137
    goto :goto_0

    .line 138
    .line 139
    :cond_5
    iget-object p1, p0, Lcom/narvii/chat/core/ChatService;->prefs:Landroid/content/SharedPreferences;

    .line 140
    .line 141
    .line 142
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 143
    move-result-object p1

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    move-result-object p2

    .line 148
    .line 149
    .line 150
    invoke-interface {p1, v3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 151
    move-result-object p1

    .line 152
    .line 153
    .line 154
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 155
    :cond_6
    :goto_1
    return-void
.end method

.method public final storeDraft()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->chatDraftPrefs:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/chat/core/ChatService;->drafts:Lcom/narvii/chat/core/ChatService$DraftMap;

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    const-string v2, "chat_draft"

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 26
    return-void
.end method

.method public final storeOutboundMessage(Lcom/narvii/model/ChatMessage;)V
    .locals 3
    .param p1    # Lcom/narvii/model/ChatMessage;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->messages:Landroid/util/SparseArray;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->getClientRefIdTmp()I

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->outboundMessagesNdcIdsMapper:Ljava/util/HashMap;

    .line 14
    .line 15
    iget v1, p1, Lcom/narvii/model/ChatMessage;->_ndcId:I

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    check-cast v0, Ljava/util/Set;

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    new-instance v0, Ljava/util/HashSet;

    .line 30
    .line 31
    .line 32
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 33
    .line 34
    iget-object v1, p0, Lcom/narvii/chat/core/ChatService;->outboundMessagesNdcIdsMapper:Ljava/util/HashMap;

    .line 35
    .line 36
    iget v2, p1, Lcom/narvii/model/ChatMessage;->_ndcId:I

    .line 37
    .line 38
    .line 39
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object v2

    .line 41
    .line 42
    .line 43
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->getClientRefIdTmp()I

    .line 47
    move-result p1

    .line 48
    .line 49
    .line 50
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    .line 54
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_1
    return-void
.end method

.method public final updateLatestActivityTime(ILjava/lang/String;Ljava/util/Date;)V
    .locals 9
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-ltz p1, :cond_4

    .line 3
    .line 4
    if-eqz p2, :cond_4

    .line 5
    .line 6
    .line 7
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    if-nez p3, :cond_1

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->TAG:Ljava/lang/String;

    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    const-string v2, "update latest activity time for "

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v2, " with time "

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    .line 44
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-direct {p0, p1}, Lcom/narvii/chat/core/ChatService;->getCurCommunityThreadCheckInfos(I)Landroidx/collection/ArrayMap;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p2}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    check-cast v1, Lcom/narvii/chat/core/ThreadCheckInfo;

    .line 55
    .line 56
    if-nez v1, :cond_2

    .line 57
    .line 58
    new-instance p1, Lcom/narvii/chat/core/ThreadCheckInfo;

    .line 59
    const/4 v5, 0x0

    .line 60
    const/4 v6, 0x0

    .line 61
    .line 62
    const/16 v7, 0xc

    .line 63
    const/4 v8, 0x0

    .line 64
    move-object v2, p1

    .line 65
    move-object v3, p2

    .line 66
    move-object v4, p3

    .line 67
    .line 68
    .line 69
    invoke-direct/range {v2 .. v8}, Lcom/narvii/chat/core/ThreadCheckInfo;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/Integer;ILkotlin/jvm/internal/k;)V

    .line 70
    .line 71
    .line 72
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-void

    .line 74
    .line 75
    .line 76
    :cond_2
    invoke-virtual {v1}, Lcom/narvii/chat/core/ThreadCheckInfo;->hasUnreadMessage()Z

    .line 77
    move-result p2

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Lcom/narvii/chat/core/ThreadCheckInfo;->getLatestActivityTime()Ljava/util/Date;

    .line 81
    move-result-object v0

    .line 82
    .line 83
    .line 84
    invoke-static {p3, v0}, Lcom/narvii/chat/util/ChatHelperKt;->isNewer(Ljava/util/Date;Ljava/util/Date;)Z

    .line 85
    move-result v0

    .line 86
    .line 87
    if-eqz v0, :cond_3

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, p3}, Lcom/narvii/chat/core/ThreadCheckInfo;->setLatestActivityTime(Ljava/util/Date;)V

    .line 91
    .line 92
    .line 93
    :cond_3
    invoke-virtual {v1}, Lcom/narvii/chat/core/ThreadCheckInfo;->hasUnreadMessage()Z

    .line 94
    move-result p3

    .line 95
    xor-int/2addr p2, p3

    .line 96
    .line 97
    if-eqz p2, :cond_4

    .line 98
    .line 99
    .line 100
    invoke-direct {p0, p1}, Lcom/narvii/chat/core/ChatService;->checkCurCommunityThreadCountChange(I)V

    .line 101
    :cond_4
    :goto_0
    return-void
.end method

.method public final updateReadTime(ILjava/lang/String;Ljava/util/Date;ZLcom/narvii/model/ChatThread;)V
    .locals 3
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/model/ChatThread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-ltz p1, :cond_9

    .line 3
    .line 4
    if-eqz p2, :cond_9

    .line 5
    .line 6
    .line 7
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto/16 :goto_2

    .line 13
    .line 14
    :cond_0
    if-nez p3, :cond_1

    .line 15
    .line 16
    goto/16 :goto_2

    .line 17
    .line 18
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->TAG:Ljava/lang/String;

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    const-string v2, "update read time for "

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v2, " with time "

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    .line 46
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-direct {p0, p1}, Lcom/narvii/chat/core/ChatService;->getCurCommunityThreadCheckInfos(I)Landroidx/collection/ArrayMap;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p2}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    move-result-object v1

    .line 55
    .line 56
    check-cast v1, Lcom/narvii/chat/core/ThreadCheckInfo;

    .line 57
    .line 58
    if-nez v1, :cond_5

    .line 59
    const/4 p4, 0x0

    .line 60
    .line 61
    if-eqz p5, :cond_2

    .line 62
    .line 63
    iget-object v1, p5, Lcom/narvii/model/ChatThread;->latestActivityTime:Ljava/util/Date;

    .line 64
    goto :goto_0

    .line 65
    :cond_2
    move-object v1, p4

    .line 66
    .line 67
    :goto_0
    if-eqz p5, :cond_3

    .line 68
    .line 69
    iget p4, p5, Lcom/narvii/model/ChatThread;->alertOption:I

    .line 70
    .line 71
    .line 72
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    move-result-object p4

    .line 74
    .line 75
    :cond_3
    new-instance p5, Lcom/narvii/chat/core/ThreadCheckInfo;

    .line 76
    .line 77
    .line 78
    invoke-direct {p5, p2, v1, p3, p4}, Lcom/narvii/chat/core/ThreadCheckInfo;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/Integer;)V

    .line 79
    .line 80
    .line 81
    invoke-interface {v0, p2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p5}, Lcom/narvii/chat/core/ThreadCheckInfo;->hasUnreadMessage()Z

    .line 85
    move-result p2

    .line 86
    .line 87
    if-eqz p2, :cond_4

    .line 88
    .line 89
    .line 90
    invoke-direct {p0, p1}, Lcom/narvii/chat/core/ChatService;->checkCurCommunityThreadCountChange(I)V

    .line 91
    :cond_4
    return-void

    .line 92
    .line 93
    .line 94
    :cond_5
    invoke-virtual {v1}, Lcom/narvii/chat/core/ThreadCheckInfo;->hasUnreadMessage()Z

    .line 95
    move-result p2

    .line 96
    .line 97
    if-eqz p4, :cond_6

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, p3}, Lcom/narvii/chat/core/ThreadCheckInfo;->setLastReadTime(Ljava/util/Date;)V

    .line 101
    goto :goto_1

    .line 102
    .line 103
    .line 104
    :cond_6
    invoke-virtual {v1}, Lcom/narvii/chat/core/ThreadCheckInfo;->getLastReadTime()Ljava/util/Date;

    .line 105
    move-result-object p4

    .line 106
    .line 107
    .line 108
    invoke-static {p3, p4}, Lcom/narvii/chat/util/ChatHelperKt;->isNewer(Ljava/util/Date;Ljava/util/Date;)Z

    .line 109
    move-result p4

    .line 110
    .line 111
    if-eqz p4, :cond_7

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, p3}, Lcom/narvii/chat/core/ThreadCheckInfo;->setLastReadTime(Ljava/util/Date;)V

    .line 115
    .line 116
    :cond_7
    :goto_1
    if-eqz p5, :cond_8

    .line 117
    .line 118
    iget-object p3, p5, Lcom/narvii/model/ChatThread;->latestActivityTime:Ljava/util/Date;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1}, Lcom/narvii/chat/core/ThreadCheckInfo;->getLatestActivityTime()Ljava/util/Date;

    .line 122
    move-result-object p4

    .line 123
    .line 124
    .line 125
    invoke-static {p3, p4}, Lcom/narvii/chat/util/ChatHelperKt;->isNewer(Ljava/util/Date;Ljava/util/Date;)Z

    .line 126
    move-result p3

    .line 127
    .line 128
    if-eqz p3, :cond_8

    .line 129
    .line 130
    iget-object p3, p5, Lcom/narvii/model/ChatThread;->latestActivityTime:Ljava/util/Date;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1, p3}, Lcom/narvii/chat/core/ThreadCheckInfo;->setLatestActivityTime(Ljava/util/Date;)V

    .line 134
    .line 135
    .line 136
    :cond_8
    invoke-virtual {v1}, Lcom/narvii/chat/core/ThreadCheckInfo;->hasUnreadMessage()Z

    .line 137
    move-result p3

    .line 138
    xor-int/2addr p2, p3

    .line 139
    .line 140
    if-eqz p2, :cond_9

    .line 141
    .line 142
    .line 143
    invoke-direct {p0, p1}, Lcom/narvii/chat/core/ChatService;->checkCurCommunityThreadCountChange(I)V

    .line 144
    :cond_9
    :goto_2
    return-void
.end method

.method public final updateThreadCheckTable(ILjava/util/List;Z)V
    .locals 6
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/model/ChatThread;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_8

    if-gez p1, :cond_0

    goto/16 :goto_5

    .line 14
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/chat/core/ChatService;->getCurCommunityThreadCheckInfos(I)Landroidx/collection/ArrayMap;

    move-result-object v0

    .line 15
    check-cast p2, Ljava/lang/Iterable;

    .line 16
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/ChatThread;

    .line 17
    iget-object v5, v4, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/narvii/chat/core/ChatService;->containGuestThreadId(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 18
    iget-object v5, v4, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/narvii/chat/core/ChatService;->removeGuestThreadId(Ljava/lang/String;)V

    .line 19
    :cond_1
    iget-object v5, v4, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/chat/core/ThreadCheckInfo;

    if-eqz v5, :cond_2

    .line 20
    invoke-virtual {v5}, Lcom/narvii/chat/core/ThreadCheckInfo;->hasUnreadMessage()Z

    move-result v5

    goto :goto_1

    :cond_2
    move v5, v2

    .line 21
    :goto_1
    invoke-direct {p0, v0, v4}, Lcom/narvii/chat/core/ChatService;->updateThreadCheckInfo(Landroidx/collection/ArrayMap;Lcom/narvii/model/ChatThread;)Lcom/narvii/chat/core/ThreadCheckInfo;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 22
    invoke-virtual {v4}, Lcom/narvii/chat/core/ThreadCheckInfo;->hasUnreadMessage()Z

    move-result v4

    goto :goto_2

    :cond_3
    move v4, v2

    :goto_2
    xor-int/2addr v4, v5

    or-int/2addr v3, v4

    goto :goto_0

    :cond_4
    if-eqz p3, :cond_7

    .line 23
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    .line 24
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/ChatThread;

    .line 25
    iget-object v1, v1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 26
    :cond_5
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 27
    :cond_6
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 28
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 29
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 30
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    const/4 v3, 0x1

    goto :goto_4

    .line 31
    :cond_7
    invoke-direct {p0}, Lcom/narvii/chat/core/ChatService;->printCurrentThreadCheckTable()V

    if-eqz v3, :cond_8

    .line 32
    invoke-direct {p0, p1}, Lcom/narvii/chat/core/ChatService;->checkCurCommunityThreadCountChange(I)V

    :cond_8
    :goto_5
    return-void
.end method

.method public final updateThreadCheckTable(Lcom/narvii/chat/core/GlobalThreadCheckResultMapResponse;)V
    .locals 9
    .param p1    # Lcom/narvii/chat/core/GlobalThreadCheckResultMapResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/narvii/chat/core/GlobalThreadCheckResultMapResponse;->getThreadCheckResultInCommunities()Ljava/util/HashMap;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/chat/core/GlobalThreadCheckResultMapResponse;->getThreadCheckResultInCommunities()Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 3
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_2
    move v1, v0

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iget-object v4, p0, Lcom/narvii/chat/core/ChatService;->unreadChatCountMapper:Landroid/util/SparseArray;

    .line 5
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 6
    invoke-direct {p0, v3}, Lcom/narvii/chat/core/ChatService;->getCurCommunityThreadCheckInfos(I)Landroidx/collection/ArrayMap;

    move-result-object v5

    .line 7
    check-cast v2, Ljava/lang/Iterable;

    .line 8
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v6, v0

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/narvii/chat/core/ThreadCheckInfo;

    .line 9
    invoke-direct {p0, v5, v7}, Lcom/narvii/chat/core/ChatService;->updateThreadCheckInfo(Landroidx/collection/ArrayMap;Lcom/narvii/chat/core/ThreadCheckInfo;)Lcom/narvii/chat/core/ThreadCheckInfo;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 10
    invoke-virtual {v7}, Lcom/narvii/chat/core/ThreadCheckInfo;->hasUnreadMessage()Z

    move-result v7

    if-ne v7, v8, :cond_3

    goto :goto_3

    :cond_3
    move v8, v0

    :goto_3
    add-int/2addr v6, v8

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/narvii/chat/core/ChatService;->unreadChatCountMapper:Landroid/util/SparseArray;

    .line 11
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-nez v1, :cond_6

    if-nez v4, :cond_5

    goto :goto_4

    .line 12
    :cond_5
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v6, :cond_2

    :cond_6
    :goto_4
    move v1, v8

    goto :goto_1

    :cond_7
    if-eqz v1, :cond_8

    .line 13
    invoke-virtual {p0}, Lcom/narvii/chat/core/ChatService;->dispatchGlobalThreadCountChange()V

    :cond_8
    return-void
.end method

.method public final updateThreadCheckTable(Lcom/narvii/chat/util/ChatMessageDto;)V
    .locals 11
    .param p1    # Lcom/narvii/chat/util/ChatMessageDto;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_6

    .line 33
    iget v0, p1, Lcom/narvii/chat/util/ChatMessageDto;->ndcId:I

    if-ltz v0, :cond_6

    iget-object v0, p1, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    if-eqz v0, :cond_6

    .line 34
    iget-boolean v0, v0, Lcom/narvii/model/ChatMessage;->includedInSummary:Z

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->myUid:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->ctx:Lcom/narvii/app/NVContext;

    const-string v1, "account"

    .line 35
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 36
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/core/ChatService;->myUid:Ljava/lang/String;

    .line 37
    :cond_1
    iget-object v0, p1, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/narvii/model/ChatMessage;->uid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/narvii/chat/core/ChatService;->myUid:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 38
    iget v1, p1, Lcom/narvii/chat/util/ChatMessageDto;->ndcId:I

    invoke-direct {p0, v1}, Lcom/narvii/chat/core/ChatService;->getCurCommunityThreadCheckInfos(I)Landroidx/collection/ArrayMap;

    move-result-object v1

    .line 39
    iget-object v2, p1, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    iget-object v3, v2, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    .line 40
    iget-object v2, v2, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    .line 41
    invoke-virtual {v1, v2}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/chat/core/ThreadCheckInfo;

    if-nez v4, :cond_4

    .line 42
    new-instance v3, Lcom/narvii/chat/core/ThreadCheckInfo;

    .line 43
    iget-object v4, p1, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    iget-object v6, v4, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xc

    const/4 v10, 0x0

    move-object v4, v3

    move-object v5, v2

    .line 44
    invoke-direct/range {v4 .. v10}, Lcom/narvii/chat/core/ThreadCheckInfo;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/Integer;ILkotlin/jvm/internal/k;)V

    if-eqz v0, :cond_3

    .line 45
    iget-object v0, p1, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    iget-object v0, v0, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    invoke-virtual {v3, v0}, Lcom/narvii/chat/core/ThreadCheckInfo;->setLastReadTime(Ljava/util/Date;)V

    .line 46
    :cond_3
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget p1, p1, Lcom/narvii/chat/util/ChatMessageDto;->ndcId:I

    invoke-direct {p0, p1}, Lcom/narvii/chat/core/ChatService;->checkCurCommunityThreadCountChange(I)V

    return-void

    .line 48
    :cond_4
    invoke-virtual {v4}, Lcom/narvii/chat/core/ThreadCheckInfo;->hasUnreadMessage()Z

    move-result v1

    .line 49
    invoke-virtual {v4}, Lcom/narvii/chat/core/ThreadCheckInfo;->getLatestActivityTime()Ljava/util/Date;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/narvii/chat/util/ChatHelperKt;->isNewer(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 50
    invoke-virtual {v4, v3}, Lcom/narvii/chat/core/ThreadCheckInfo;->setLatestActivityTime(Ljava/util/Date;)V

    if-eqz v0, :cond_5

    .line 51
    invoke-virtual {v4}, Lcom/narvii/chat/core/ThreadCheckInfo;->getLastReadTime()Ljava/util/Date;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/narvii/chat/util/ChatHelperKt;->isNewer(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 52
    invoke-virtual {v4, v3}, Lcom/narvii/chat/core/ThreadCheckInfo;->setLastReadTime(Ljava/util/Date;)V

    .line 53
    :cond_5
    invoke-virtual {v4}, Lcom/narvii/chat/core/ThreadCheckInfo;->hasUnreadMessage()Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_6

    .line 54
    iget p1, p1, Lcom/narvii/chat/util/ChatMessageDto;->ndcId:I

    invoke-direct {p0, p1}, Lcom/narvii/chat/core/ChatService;->checkCurCommunityThreadCountChange(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method public final updateThreadReadAndActivityTime(ILjava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
    .locals 9
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-ltz p1, :cond_5

    .line 3
    .line 4
    if-eqz p2, :cond_5

    .line 5
    .line 6
    .line 7
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto/16 :goto_0

    .line 13
    .line 14
    :cond_0
    if-nez p4, :cond_1

    .line 15
    .line 16
    goto/16 :goto_0

    .line 17
    .line 18
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->TAG:Ljava/lang/String;

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    const-string v2, "update read time for "

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v2, " with time "

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    .line 46
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->TAG:Ljava/lang/String;

    .line 49
    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    const-string v3, "update latest activity time for "

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object v1

    .line 72
    .line 73
    .line 74
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-direct {p0, p1}, Lcom/narvii/chat/core/ChatService;->getCurCommunityThreadCheckInfos(I)Landroidx/collection/ArrayMap;

    .line 78
    move-result-object v0

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, p2}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    move-result-object v1

    .line 83
    .line 84
    check-cast v1, Lcom/narvii/chat/core/ThreadCheckInfo;

    .line 85
    .line 86
    if-nez v1, :cond_2

    .line 87
    .line 88
    new-instance p1, Lcom/narvii/chat/core/ThreadCheckInfo;

    .line 89
    const/4 v6, 0x0

    .line 90
    .line 91
    const/16 v7, 0x8

    .line 92
    const/4 v8, 0x0

    .line 93
    move-object v2, p1

    .line 94
    move-object v3, p2

    .line 95
    move-object v4, p4

    .line 96
    move-object v5, p3

    .line 97
    .line 98
    .line 99
    invoke-direct/range {v2 .. v8}, Lcom/narvii/chat/core/ThreadCheckInfo;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/Integer;ILkotlin/jvm/internal/k;)V

    .line 100
    .line 101
    .line 102
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    return-void

    .line 104
    .line 105
    .line 106
    :cond_2
    invoke-virtual {v1}, Lcom/narvii/chat/core/ThreadCheckInfo;->hasUnreadMessage()Z

    .line 107
    move-result p2

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1}, Lcom/narvii/chat/core/ThreadCheckInfo;->getLatestActivityTime()Ljava/util/Date;

    .line 111
    move-result-object v0

    .line 112
    .line 113
    .line 114
    invoke-static {p4, v0}, Lcom/narvii/chat/util/ChatHelperKt;->isNewer(Ljava/util/Date;Ljava/util/Date;)Z

    .line 115
    move-result v0

    .line 116
    .line 117
    if-eqz v0, :cond_3

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, p4}, Lcom/narvii/chat/core/ThreadCheckInfo;->setLatestActivityTime(Ljava/util/Date;)V

    .line 121
    .line 122
    .line 123
    :cond_3
    invoke-virtual {v1}, Lcom/narvii/chat/core/ThreadCheckInfo;->getLastReadTime()Ljava/util/Date;

    .line 124
    move-result-object p4

    .line 125
    .line 126
    .line 127
    invoke-static {p3, p4}, Lcom/narvii/chat/util/ChatHelperKt;->isNewer(Ljava/util/Date;Ljava/util/Date;)Z

    .line 128
    move-result p4

    .line 129
    .line 130
    if-eqz p4, :cond_4

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1, p3}, Lcom/narvii/chat/core/ThreadCheckInfo;->setLastReadTime(Ljava/util/Date;)V

    .line 134
    .line 135
    .line 136
    :cond_4
    invoke-virtual {v1}, Lcom/narvii/chat/core/ThreadCheckInfo;->hasUnreadMessage()Z

    .line 137
    move-result p3

    .line 138
    xor-int/2addr p2, p3

    .line 139
    .line 140
    if-eqz p2, :cond_5

    .line 141
    .line 142
    .line 143
    invoke-direct {p0, p1}, Lcom/narvii/chat/core/ChatService;->checkCurCommunityThreadCountChange(I)V

    .line 144
    :cond_5
    :goto_0
    return-void
.end method
