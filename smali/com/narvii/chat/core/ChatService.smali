.class public final Lcom/narvii/chat/core/ChatService;
.super Ljava/lang/Object;
.source "ChatService.kt"

# interfaces
.implements Lcom/narvii/util/ws/WsService$WsListener;
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;,
        Lcom/narvii/chat/core/ChatService$VideoMessageProgressChangeListener;,
        Lcom/narvii/chat/core/ChatService$LinkSnippetHandler;,
        Lcom/narvii/chat/core/ChatService$DraftMap;,
        Lcom/narvii/chat/core/ChatService$VideoMessagePostListener;,
        Lcom/narvii/chat/core/ChatService$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatService.kt\ncom/narvii/chat/core/ChatService\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,1870:1\n1587#2,2:1871\n1587#2,2:1874\n1587#2,2:1877\n1587#2,2:1879\n1587#2,2:1881\n1587#2,2:1883\n1587#2,2:1885\n149#3:1873\n150#3:1876\n*E\n*S KotlinDebug\n*F\n+ 1 ChatService.kt\ncom/narvii/chat/core/ChatService\n*L\n241#1,2:1871\n374#1,2:1874\n401#1,2:1877\n413#1,2:1879\n687#1,2:1881\n844#1,2:1883\n870#1,2:1885\n374#1:1873\n374#1:1876\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/chat/core/ChatService$Companion;


# instance fields
.field private final CHAT_RESET_INTERVAL:I

.field private final DONE:Lcom/narvii/util/Tag;

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
.end field

.field private final chaHelper:Lcom/narvii/chat/util/ChatHelper;

.field private final chatDraftPrefs:Landroid/content/SharedPreferences;

.field private final communitiesIsRequestingThreadCheck:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
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
.end field

.field private final ctx:Lcom/narvii/app/NVContext;

.field private curCid:I

.field private curCommunityContext:Lcom/narvii/app/NVContext;

.field private drafts:Lcom/narvii/chat/core/ChatService$DraftMap;

.field private final globalLevelReceptors:Lcom/narvii/util/EventDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;",
            ">;"
        }
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
.end field

.field private final inProcessUploadMediaIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
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
.end field

.field private lastWsDisconnectTimeMillis:J

.field private final localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

.field private final messages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/narvii/model/ChatMessage;",
            ">;"
        }
    .end annotation
.end field

.field private myUid:Ljava/lang/String;

.field private final outboundMessageCreateTime:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Date;",
            ">;"
        }
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
.end field

.field private final photoDir:Ljava/io/File;

.field private photoTouched:Z

.field private final postListener:Lcom/narvii/chat/core/ChatService$postListener$1;

.field private final prefs:Landroid/content/SharedPreferences;

.field private final recalledMessages:Landroid/util/SparseBooleanArray;

.field private final receiver:Landroid/content/BroadcastReceiver;

.field private final recentMessageTime:[J

.field private final serialRequestQueue:Lcom/android/volley/RequestQueue;

.field private setLatestTid:Ljava/lang/String;

.field private setLatestTime:J

.field private final threadCheckInfosMapper:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/chat/core/ThreadCheckInfo;",
            ">;>;"
        }
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
.end field

.field private threadCheckRequest:Lcom/narvii/util/http/ApiRequest;

.field private final threadCheckRunnable:Ljava/lang/Runnable;

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
.end field

.field private final unreadChatCountMapper:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
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
.end field

.field private final videoUploadPercents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final ws:Lcom/narvii/util/ws/WsService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/chat/core/ChatService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/chat/core/ChatService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/chat/core/ChatService;->Companion:Lcom/narvii/chat/core/ChatService$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 4

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/core/ChatService;->ctx:Lcom/narvii/app/NVContext;

    .line 126
    new-instance p1, Lcom/narvii/util/Tag;

    const-string v0, "done"

    invoke-direct {p1, v0}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/chat/core/ChatService;->DONE:Lcom/narvii/util/Tag;

    .line 130
    const-class p1, Lcom/narvii/chat/core/ChatService;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ChatService::class.java.name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/chat/core/ChatService;->TAG:Ljava/lang/String;

    const p1, 0x493e0

    .line 131
    iput p1, p0, Lcom/narvii/chat/core/ChatService;->CHAT_RESET_INTERVAL:I

    const p1, 0x1b7740

    .line 134
    iput p1, p0, Lcom/narvii/chat/core/ChatService;->THREAD_CHECK_REQUEST_MIN_INTERVAL:I

    .line 136
    new-instance p1, Lcom/narvii/util/EventDispatcher;

    invoke-direct {p1}, Lcom/narvii/util/EventDispatcher;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/core/ChatService;->globalLevelReceptors:Lcom/narvii/util/EventDispatcher;

    .line 138
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/core/ChatService;->communityLevelReceptors:Landroid/util/SparseArray;

    .line 140
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/core/ChatService;->threadLevelReceptor:Ljava/util/HashMap;

    .line 142
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/core/ChatService;->threadCheckInfosMapper:Landroid/util/SparseArray;

    .line 144
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/core/ChatService;->unreadChatCountMapper:Landroid/util/SparseArray;

    .line 146
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/core/ChatService;->lastThreadCheckTime:Landroid/util/SparseArray;

    .line 154
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/core/ChatService;->threadCheckQueue:Ljava/util/HashSet;

    .line 155
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/core/ChatService;->communitiesIsRequestingThreadCheck:Ljava/util/HashSet;

    .line 160
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/core/ChatService;->outboundMessageCreateTime:Landroid/util/SparseArray;

    .line 161
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/core/ChatService;->inProcessUploadMediaIds:Ljava/util/ArrayList;

    .line 165
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/core/ChatService;->messages:Landroid/util/SparseArray;

    .line 166
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/core/ChatService;->outboundMessagesNdcIdsMapper:Ljava/util/HashMap;

    .line 168
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/core/ChatService;->recalledMessages:Landroid/util/SparseBooleanArray;

    .line 170
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/core/ChatService;->bitmapCache:Ljava/util/HashMap;

    .line 173
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/core/ChatService;->videoUploadPercents:Landroid/util/SparseArray;

    .line 174
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/core/ChatService;->videoMessageProgressDispatcher:Ljava/util/HashMap;

    .line 177
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/core/ChatService;->threadConfigDispatcher:Ljava/util/HashMap;

    .line 180
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/core/ChatService;->guestThreadSet:Ljava/util/HashSet;

    .line 185
    iget-object p1, p0, Lcom/narvii/chat/core/ChatService;->ctx:Lcom/narvii/app/NVContext;

    const-string/jumbo v0, "ws"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "ctx.getService(\"ws\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/util/ws/WsService;

    iput-object p1, p0, Lcom/narvii/chat/core/ChatService;->ws:Lcom/narvii/util/ws/WsService;

    .line 186
    iget-object p1, p0, Lcom/narvii/chat/core/ChatService;->ws:Lcom/narvii/util/ws/WsService;

    iget-object p1, p1, Lcom/narvii/util/ws/WsService;->listeners:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {p1, p0}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 187
    iget-object p1, p0, Lcom/narvii/chat/core/ChatService;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p1

    const-string v0, "LocalBroadcastManager.getInstance(ctx.context)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/chat/core/ChatService;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    .line 188
    new-instance p1, Lcom/narvii/chat/util/ChatHelper;

    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ctx.context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/narvii/chat/core/ChatService;->chaHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 189
    iget-object p1, p0, Lcom/narvii/chat/core/ChatService;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    const-string v2, "chat"

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v3, "ctx.context.getSharedPreferences(\"chat\", 0)"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/chat/core/ChatService;->prefs:Landroid/content/SharedPreferences;

    .line 190
    iget-object p1, p0, Lcom/narvii/chat/core/ChatService;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v3, "chat_draft"

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "ctx.context.getSharedPreferences(\"chat_draft\", 0)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/chat/core/ChatService;->chatDraftPrefs:Landroid/content/SharedPreferences;

    .line 191
    new-instance p1, Ljava/io/File;

    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/narvii/chat/core/ChatService;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v3, "photo"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/chat/core/ChatService;->photoDir:Ljava/io/File;

    .line 192
    new-instance p1, Lcom/android/volley/toolbox/BasicNetwork;

    new-instance v0, Lcom/narvii/util/http/ProxyStack;

    iget-object v1, p0, Lcom/narvii/chat/core/ChatService;->ctx:Lcom/narvii/app/NVContext;

    invoke-direct {v0, v1}, Lcom/narvii/util/http/ProxyStack;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-direct {p1, v0}, Lcom/android/volley/toolbox/BasicNetwork;-><init>(Lcom/android/volley/toolbox/HttpStack;)V

    .line 193
    new-instance v0, Lcom/android/volley/RequestQueue;

    new-instance v1, Lcom/android/volley/toolbox/NoCache;

    invoke-direct {v1}, Lcom/android/volley/toolbox/NoCache;-><init>()V

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, v2}, Lcom/android/volley/RequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;I)V

    iput-object v0, p0, Lcom/narvii/chat/core/ChatService;->serialRequestQueue:Lcom/android/volley/RequestQueue;

    .line 194
    iget-object p1, p0, Lcom/narvii/chat/core/ChatService;->serialRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {p1}, Lcom/android/volley/RequestQueue;->start()V

    .line 248
    new-instance p1, Lcom/narvii/chat/core/ChatService$receiver$1;

    invoke-direct {p1, p0}, Lcom/narvii/chat/core/ChatService$receiver$1;-><init>(Lcom/narvii/chat/core/ChatService;)V

    iput-object p1, p0, Lcom/narvii/chat/core/ChatService;->receiver:Landroid/content/BroadcastReceiver;

    .line 647
    new-instance p1, Lcom/narvii/chat/core/ChatService$threadCheckRunnable$1;

    invoke-direct {p1, p0}, Lcom/narvii/chat/core/ChatService$threadCheckRunnable$1;-><init>(Lcom/narvii/chat/core/ChatService;)V

    iput-object p1, p0, Lcom/narvii/chat/core/ChatService;->threadCheckRunnable:Ljava/lang/Runnable;

    .line 1072
    new-instance p1, Lcom/narvii/chat/core/ChatService$postListener$1;

    const-class v0, Lcom/narvii/chat/MessageResponse;

    invoke-direct {p1, p0, v0}, Lcom/narvii/chat/core/ChatService$postListener$1;-><init>(Lcom/narvii/chat/core/ChatService;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/narvii/chat/core/ChatService;->postListener:Lcom/narvii/chat/core/ChatService$postListener$1;

    .line 1552
    new-instance p1, Lcom/narvii/chat/core/ChatService$DraftMap;

    invoke-direct {p1}, Lcom/narvii/chat/core/ChatService$DraftMap;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/core/ChatService;->drafts:Lcom/narvii/chat/core/ChatService$DraftMap;

    const/4 p1, 0x3

    new-array p1, p1, [J

    .line 1586
    iput-object p1, p0, Lcom/narvii/chat/core/ChatService;->recentMessageTime:[J

    return-void
.end method

.method public static final synthetic access$dispatchVideoMessagePostProgressChange(Lcom/narvii/chat/core/ChatService;Ljava/lang/String;II)V
    .locals 0

    .line 107
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/chat/core/ChatService;->dispatchVideoMessagePostProgressChange(Ljava/lang/String;II)V

    return-void
.end method

.method public static final synthetic access$getCommunitiesIsRequestingThreadCheck$p(Lcom/narvii/chat/core/ChatService;)Ljava/util/HashSet;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/narvii/chat/core/ChatService;->communitiesIsRequestingThreadCheck:Ljava/util/HashSet;

    return-object p0
.end method

.method public static final synthetic access$getLastThreadCheckTime$p(Lcom/narvii/chat/core/ChatService;)Landroid/util/SparseArray;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/narvii/chat/core/ChatService;->lastThreadCheckTime:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static final synthetic access$getMyUid$p(Lcom/narvii/chat/core/ChatService;)Ljava/lang/String;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/narvii/chat/core/ChatService;->myUid:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getNdcIdFromMessage(Lcom/narvii/chat/core/ChatService;Lcom/narvii/model/ChatMessage;)I
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Lcom/narvii/chat/core/ChatService;->getNdcIdFromMessage(Lcom/narvii/model/ChatMessage;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getPostListener$p(Lcom/narvii/chat/core/ChatService;)Lcom/narvii/chat/core/ChatService$postListener$1;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/narvii/chat/core/ChatService;->postListener:Lcom/narvii/chat/core/ChatService$postListener$1;

    return-object p0
.end method

.method public static final synthetic access$getSerialRequestQueue$p(Lcom/narvii/chat/core/ChatService;)Lcom/android/volley/RequestQueue;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/narvii/chat/core/ChatService;->serialRequestQueue:Lcom/android/volley/RequestQueue;

    return-object p0
.end method

.method public static final synthetic access$getThreadCheckInfosMapper$p(Lcom/narvii/chat/core/ChatService;)Landroid/util/SparseArray;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/narvii/chat/core/ChatService;->threadCheckInfosMapper:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static final synthetic access$getThreadCheckQueue$p(Lcom/narvii/chat/core/ChatService;)Ljava/util/HashSet;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/narvii/chat/core/ChatService;->threadCheckQueue:Ljava/util/HashSet;

    return-object p0
.end method

.method public static final synthetic access$getThreadCheckRequest$p(Lcom/narvii/chat/core/ChatService;)Lcom/narvii/util/http/ApiRequest;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/narvii/chat/core/ChatService;->threadCheckRequest:Lcom/narvii/util/http/ApiRequest;

    return-object p0
.end method

.method public static final synthetic access$getVideoUploadPercents$p(Lcom/narvii/chat/core/ChatService;)Landroid/util/SparseArray;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/narvii/chat/core/ChatService;->videoUploadPercents:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static final synthetic access$onMessagePostSuccess(Lcom/narvii/chat/core/ChatService;Lcom/narvii/model/ChatMessage;Lcom/narvii/model/ChatMessage;)V
    .locals 0

    .line 107
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/core/ChatService;->onMessagePostSuccess(Lcom/narvii/model/ChatMessage;Lcom/narvii/model/ChatMessage;)V

    return-void
.end method

.method public static final synthetic access$onPostFinished(Lcom/narvii/chat/core/ChatService;Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/MessageResponse;)V
    .locals 0

    .line 107
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/core/ChatService;->onPostFinished(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/MessageResponse;)V

    return-void
.end method

.method public static final synthetic access$printCurrentThreadCheckTable(Lcom/narvii/chat/core/ChatService;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/narvii/chat/core/ChatService;->printCurrentThreadCheckTable()V

    return-void
.end method

.method public static final synthetic access$sendNotification(Lcom/narvii/chat/core/ChatService;ILcom/narvii/notification/Notification;)V
    .locals 0

    .line 107
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/core/ChatService;->sendNotification(ILcom/narvii/notification/Notification;)V

    return-void
.end method

.method public static final synthetic access$setMyUid$p(Lcom/narvii/chat/core/ChatService;Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/narvii/chat/core/ChatService;->myUid:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setThreadCheckRequest$p(Lcom/narvii/chat/core/ChatService;Lcom/narvii/util/http/ApiRequest;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/narvii/chat/core/ChatService;->threadCheckRequest:Lcom/narvii/util/http/ApiRequest;

    return-void
.end method

.method public static synthetic buildBaseRequestNode$default(Lcom/narvii/chat/core/ChatService;Lcom/narvii/model/ChatMessage;Lcom/fasterxml/jackson/databind/node/ObjectNode;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    .line 1372
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/chat/core/ChatService;->buildBaseRequestNode(Lcom/narvii/model/ChatMessage;Lcom/fasterxml/jackson/databind/node/ObjectNode;Z)V

    return-void
.end method

.method private final buildUnreadThreadMapper(I)I
    .locals 3

    .line 838
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->threadCheckInfosMapper:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/ArrayMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 840
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->unreadChatCountMapper:Landroid/util/SparseArray;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return v1

    .line 844
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v2, "currentCommunityMapper.values"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1883
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/chat/core/ThreadCheckInfo;

    .line 845
    invoke-virtual {v2}, Lcom/narvii/chat/core/ThreadCheckInfo;->hasUnreadMessage()Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 849
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->unreadChatCountMapper:Landroid/util/SparseArray;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return v1
.end method

.method private final buildVideoChatRequest(ILcom/narvii/model/ChatMessage;Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/narvii/util/http/ApiRequest;
    .locals 7

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    .line 1395
    invoke-static/range {v1 .. v6}, Lcom/narvii/chat/core/ChatService;->buildBaseRequestNode$default(Lcom/narvii/chat/core/ChatService;Lcom/narvii/model/ChatMessage;Lcom/fasterxml/jackson/databind/node/ObjectNode;ZILjava/lang/Object;)V

    .line 1396
    invoke-virtual {p2}, Lcom/narvii/model/ChatMessage;->media()Lcom/narvii/model/Media;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1400
    invoke-virtual {p0}, Lcom/narvii/chat/core/ChatService;->photoManager$Amino_bundle()Lcom/narvii/photos/PhotoManager;

    move-result-object v2

    iget-object v3, v1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 1401
    invoke-virtual {p0}, Lcom/narvii/chat/core/ChatService;->photoManager$Amino_bundle()Lcom/narvii/photos/PhotoManager;

    move-result-object v3

    iget-object v1, v1, Lcom/narvii/model/Media;->coverImage:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    move-object v2, v1

    :goto_0
    if-nez v2, :cond_2

    return-object v0

    :cond_2
    const-string/jumbo v0, "video.mp4"

    const-string v3, "cover.jpg"

    .line 1410
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v4

    .line 1411
    invoke-virtual {v4}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v4

    .line 1412
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/chat/thread/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p2, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/message"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    if-eqz v1, :cond_3

    .line 1414
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 1415
    new-instance v4, Lcom/narvii/util/http/ApiRequest$FilePart;

    invoke-direct {v4, v3, v1}, Lcom/narvii/util/http/ApiRequest$FilePart;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {p1, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->addPart(Lcom/narvii/util/http/ApiRequest$MultiPart;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 1418
    :cond_3
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v1

    const-string v4, "contentType"

    const-string/jumbo v5, "video/mp4"

    .line 1419
    invoke-virtual {v1, v4, v5}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v4, "cover"

    .line 1420
    invoke-virtual {v1, v4, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string/jumbo v3, "video"

    .line 1421
    invoke-virtual {v1, v3, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string/jumbo v3, "videoUpload"

    .line 1422
    invoke-virtual {p3, v3, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 1423
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->contentTypeMultiPart()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    .line 1424
    new-instance v3, Lcom/narvii/util/http/ApiRequest$FormPart;

    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->toString()Ljava/lang/String;

    move-result-object p3

    const-string/jumbo v4, "payload"

    invoke-direct {v3, v4, p3}, Lcom/narvii/util/http/ApiRequest$FormPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->addPart(Lcom/narvii/util/http/ApiRequest$MultiPart;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p3

    .line 1425
    new-instance v1, Lcom/narvii/util/http/ApiRequest$FilePart;

    invoke-direct {v1, v0, v2}, Lcom/narvii/util/http/ApiRequest$FilePart;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {p3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->addPart(Lcom/narvii/util/http/ApiRequest$MultiPart;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 1426
    invoke-virtual {p1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const p2, 0xea60

    .line 1427
    invoke-virtual {p1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->timeout(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 1428
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method private final checkCurCommunityThreadCountChange(I)V
    .locals 2

    if-gez p1, :cond_0

    return-void

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->unreadChatCountMapper:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 487
    invoke-direct {p0, p1}, Lcom/narvii/chat/core/ChatService;->buildUnreadThreadMapper(I)I

    move-result v1

    if-nez v0, :cond_1

    goto :goto_0

    .line 488
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v1, v0, :cond_2

    .line 489
    :goto_0
    invoke-virtual {p0, p1}, Lcom/narvii/chat/core/ChatService;->dispatchUnreadCountChangeOnCommunityLevel(I)V

    .line 490
    invoke-virtual {p0}, Lcom/narvii/chat/core/ChatService;->dispatchGlobalThreadCountChange()V

    :cond_2
    return-void
.end method

.method private final dispatchAnnouncementChange(Ljava/lang/String;Lcom/narvii/model/ChatMessage;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1864
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    if-nez p2, :cond_2

    goto :goto_2

    .line 1867
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->threadConfigDispatcher:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/EventDispatcher;

    if-eqz p1, :cond_3

    const-string/jumbo v0, "threadConfigDispatcher.get(threadId) ?: return"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1868
    new-instance v0, Lcom/narvii/chat/core/ChatService$dispatchAnnouncementChange$1;

    invoke-direct {v0, p2}, Lcom/narvii/chat/core/ChatService$dispatchAnnouncementChange$1;-><init>(Lcom/narvii/model/ChatMessage;)V

    invoke-virtual {p1, v0}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    :cond_3
    :goto_2
    return-void
.end method

.method private final dispatchChannelPermissionChange(Ljava/lang/String;Lcom/narvii/model/ChatMessage;)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 1840
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_6

    if-nez p2, :cond_2

    goto :goto_3

    .line 1843
    :cond_2
    iget-object v1, p0, Lcom/narvii/chat/core/ChatService;->threadConfigDispatcher:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/EventDispatcher;

    if-eqz p1, :cond_6

    const-string/jumbo v1, "threadConfigDispatcher.get(threadId) ?: return"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1844
    new-instance v1, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iput v0, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 1845
    iget p2, p2, Lcom/narvii/model/ChatMessage;->type:I

    const/16 v2, 0x7c

    if-ne p2, v2, :cond_3

    const/4 p2, 0x3

    .line 1846
    iput p2, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_2

    :cond_3
    const/16 v2, 0x7b

    if-ne p2, v2, :cond_4

    const/4 p2, 0x2

    .line 1848
    iput p2, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_2

    :cond_4
    const/16 v2, 0x7a

    if-ne p2, v2, :cond_5

    .line 1850
    iput v0, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 1852
    :cond_5
    :goto_2
    new-instance p2, Lcom/narvii/chat/core/ChatService$dispatchChannelPermissionChange$1;

    invoke-direct {p2, v1}, Lcom/narvii/chat/core/ChatService$dispatchChannelPermissionChange$1;-><init>(Lkotlin/jvm/internal/Ref$IntRef;)V

    invoke-virtual {p1, p2}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    :cond_6
    :goto_3
    return-void
.end method

.method private final dispatchChatMessageListChange(Ljava/lang/String;Lcom/narvii/chat/util/ChatMessageDto;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 346
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    if-nez p2, :cond_2

    goto :goto_2

    .line 349
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->threadLevelReceptor:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/EventDispatcher;

    .line 350
    iget-object v1, p0, Lcom/narvii/chat/core/ChatService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchChatMessageListChange --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    .line 351
    new-instance p1, Lcom/narvii/chat/core/ChatService$dispatchChatMessageListChange$1;

    invoke-direct {p1, p2}, Lcom/narvii/chat/core/ChatService$dispatchChatMessageListChange$1;-><init>(Lcom/narvii/chat/util/ChatMessageDto;)V

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    :cond_3
    :goto_2
    return-void
.end method

.method private final dispatchChatMessageListReset()V
    .locals 3

    .line 355
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->TAG:Ljava/lang/String;

    const-string v1, "dispatchChatMessageListReset"

    invoke-static {v0, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->threadLevelReceptor:Ljava/util/HashMap;

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

    check-cast v1, Lcom/narvii/util/EventDispatcher;

    .line 357
    sget-object v2, Lcom/narvii/chat/core/ChatService$dispatchChatMessageListReset$1;->INSTANCE:Lcom/narvii/chat/core/ChatService$dispatchChatMessageListReset$1;

    invoke-virtual {v1, v2}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final dispatchVideoMessagePostProgressChange(Ljava/lang/String;II)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1794
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    return-void

    .line 1797
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->videoMessageProgressDispatcher:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/EventDispatcher;

    if-eqz p1, :cond_3

    const-string/jumbo v0, "videoMessageProgressDisp\u2026r.get(threadId) ?: return"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1798
    new-instance v0, Lcom/narvii/chat/core/ChatService$dispatchVideoMessagePostProgressChange$1;

    invoke-direct {v0, p2, p3}, Lcom/narvii/chat/core/ChatService$dispatchVideoMessagePostProgressChange$1;-><init>(II)V

    invoke-virtual {p1, v0}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    :cond_3
    return-void
.end method

.method private final dispatchViewOnlyChange(Ljava/lang/String;Lcom/narvii/model/ChatMessage;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1856
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    if-nez p2, :cond_2

    goto :goto_2

    .line 1859
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->threadConfigDispatcher:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/EventDispatcher;

    if-eqz p1, :cond_3

    const-string/jumbo v0, "threadConfigDispatcher.get(threadId) ?: return"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1860
    new-instance v0, Lcom/narvii/chat/core/ChatService$dispatchViewOnlyChange$1;

    invoke-direct {v0, p2}, Lcom/narvii/chat/core/ChatService$dispatchViewOnlyChange$1;-><init>(Lcom/narvii/model/ChatMessage;)V

    invoke-virtual {p1, v0}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    :cond_3
    :goto_2
    return-void
.end method

.method private final getCurCommunityThreadCheckInfos(I)Landroid/support/v4/util/ArrayMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/chat/core/ThreadCheckInfo;",
            ">;"
        }
    .end annotation

    .line 854
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->threadCheckInfosMapper:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/ArrayMap;

    if-nez v0, :cond_0

    .line 856
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 857
    iget-object v1, p0, Lcom/narvii/chat/core/ChatService;->threadCheckInfosMapper:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private final getNdcIdFromMessage(Lcom/narvii/model/ChatMessage;)I
    .locals 0

    .line 786
    iget p1, p1, Lcom/narvii/model/ChatMessage;->_ndcId:I

    if-nez p1, :cond_0

    iget p1, p0, Lcom/narvii/chat/core/ChatService;->curCid:I

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

    .line 1768
    new-instance v0, Lcom/narvii/chat/core/ChatService$VideoMessagePostListener;

    const-class v1, Lcom/narvii/chat/MessageResponse;

    invoke-direct {v0, p0, v1, p1}, Lcom/narvii/chat/core/ChatService$VideoMessagePostListener;-><init>(Lcom/narvii/chat/core/ChatService;Ljava/lang/Class;Lcom/narvii/model/ChatMessage;)V

    return-object v0
.end method

.method private final notificationCenter(I)Lcom/narvii/notification/NotificationCenter;
    .locals 2

    .line 790
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, p1, v1}, Lcom/narvii/app/NVApplication;->getService(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "NVApplication.instance()\u2026vice(cid, \"notification\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    return-object p1
.end method

.method private final onMessagePostSuccess(Lcom/narvii/model/ChatMessage;Lcom/narvii/model/ChatMessage;)V
    .locals 1

    .line 1128
    iget p1, p1, Lcom/narvii/model/ChatMessage;->clientRefId:I

    iput p1, p2, Lcom/narvii/model/ChatMessage;->clientRefId:I

    const/4 p1, 0x0

    .line 1129
    iput p1, p2, Lcom/narvii/model/ChatMessage;->_status:I

    .line 1130
    invoke-virtual {p0, p2}, Lcom/narvii/chat/core/ChatService;->storeOutboundMessage(Lcom/narvii/model/ChatMessage;)V

    .line 1131
    new-instance p1, Lcom/narvii/notification/Notification;

    const-string/jumbo v0, "update"

    invoke-direct {p1, v0, p2}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 1132
    invoke-direct {p0, p2}, Lcom/narvii/chat/core/ChatService;->getNdcIdFromMessage(Lcom/narvii/model/ChatMessage;)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/narvii/chat/core/ChatService;->sendNotification(ILcom/narvii/notification/Notification;)V

    .line 1133
    iget p1, p2, Lcom/narvii/model/ChatMessage;->type:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 1135
    :try_start_0
    iget-object p1, p0, Lcom/narvii/chat/core/ChatService;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0e001a

    invoke-static {p1, p2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object p1

    const/4 p2, 0x3

    .line 1136
    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 1137
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1139
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private final onPostFinished(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/MessageResponse;)V
    .locals 8

    .line 1089
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    check-cast p1, Lcom/narvii/model/ChatMessage;

    .line 1090
    iget-object v0, p1, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v0, :cond_0

    const-string/jumbo v5, "photo"

    invoke-static {v0, v5, v3, v4, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1091
    invoke-virtual {p0}, Lcom/narvii/chat/core/ChatService;->photoManager$Amino_bundle()Lcom/narvii/photos/PhotoManager;

    move-result-object v0

    .line 1092
    iget-object v5, p1, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/narvii/photos/PhotoManager;->remove(Ljava/lang/String;)V

    .line 1094
    :cond_0
    iget-object p2, p2, Lcom/narvii/chat/MessageResponse;->message:Lcom/narvii/model/ChatMessage;

    .line 1095
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->getFirstLinkSnippet()Lcom/narvii/model/LinkSummary;

    move-result-object v0

    const-string v5, "msg"

    if-eqz v0, :cond_2

    .line 1097
    invoke-virtual {v0}, Lcom/narvii/model/LinkSummary;->getFirstMedia()Lcom/narvii/model/Media;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1098
    iget-object v6, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    if-eqz v6, :cond_1

    const-string/jumbo v7, "photo://"

    invoke-static {v6, v7, v3, v4, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-ne v2, v1, :cond_1

    .line 1099
    invoke-virtual {p0}, Lcom/narvii/chat/core/ChatService;->photoManager$Amino_bundle()Lcom/narvii/photos/PhotoManager;

    move-result-object v1

    .line 1100
    iget-object v2, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/narvii/photos/PhotoManager;->remove(Ljava/lang/String;)V

    .line 1103
    :cond_1
    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/narvii/model/ChatMessage;->getFirstLinkSnippet()Lcom/narvii/model/LinkSummary;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1105
    invoke-virtual {v1}, Lcom/narvii/model/LinkSummary;->getFirstMedia()Lcom/narvii/model/Media;

    move-result-object v1

    .line 1106
    iget-object v2, p0, Lcom/narvii/chat/core/ChatService;->bitmapCache:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 1108
    iget-object v3, p0, Lcom/narvii/chat/core/ChatService;->bitmapCache:Ljava/util/HashMap;

    iget-object v1, v1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    const-string v6, "media.url"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1109
    iget-object v1, p0, Lcom/narvii/chat/core/ChatService;->bitmapCache:Ljava/util/HashMap;

    iget-object v0, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1114
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->recalledMessages:Landroid/util/SparseBooleanArray;

    iget v1, p1, Lcom/narvii/model/ChatMessage;->clientRefId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1115
    invoke-virtual {p0, p2}, Lcom/narvii/chat/core/ChatService;->sendDeleteMessageRequest(Lcom/narvii/model/ChatMessage;)V

    .line 1116
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "recall message "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 1118
    :cond_3
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->ctx:Lcom/narvii/app/NVContext;

    const-string v1, "mediaLoader"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/media/MediaLoader;

    if-eqz v0, :cond_4

    .line 1119
    iget v1, p2, Lcom/narvii/model/ChatMessage;->type:I

    if-ne v1, v4, :cond_4

    iget v1, p1, Lcom/narvii/model/ChatMessage;->type:I

    if-ne v1, v4, :cond_4

    .line 1120
    iget-object v1, p2, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    iget-object v2, p1, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    new-instance v3, Lcom/narvii/chat/core/ChatService$onPostFinished$2;

    invoke-direct {v3, p0, p1, p2}, Lcom/narvii/chat/core/ChatService$onPostFinished$2;-><init>(Lcom/narvii/chat/core/ChatService;Lcom/narvii/model/ChatMessage;Lcom/narvii/model/ChatMessage;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/media/MediaLoader;->cacheLocalFile(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/util/Callback;)V

    goto :goto_0

    .line 1122
    :cond_4
    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/core/ChatService;->onMessagePostSuccess(Lcom/narvii/model/ChatMessage;Lcom/narvii/model/ChatMessage;)V

    :goto_0
    return-void

    .line 1089
    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.narvii.model.ChatMessage"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic postMessage$default(Lcom/narvii/chat/core/ChatService;ILcom/narvii/model/ChatMessage;ILjava/lang/Object;)Lcom/narvii/model/ChatMessage;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 926
    iget p1, p0, Lcom/narvii/chat/core/ChatService;->curCid:I

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/core/ChatService;->postMessage(ILcom/narvii/model/ChatMessage;)Lcom/narvii/model/ChatMessage;

    move-result-object p0

    return-object p0
.end method

.method private final printCurrentThreadCheckTable()V
    .locals 14

    .line 864
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n-------------------Thread Check table ------------------\n"

    .line 865
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 866
    iget-object v1, p0, Lcom/narvii/chat/core/ChatService;->threadCheckInfosMapper:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 868
    iget-object v4, p0, Lcom/narvii/chat/core/ChatService;->threadCheckInfosMapper:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 869
    iget-object v5, p0, Lcom/narvii/chat/core/ChatService;->threadCheckInfosMapper:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/util/ArrayMap;

    if-eqz v5, :cond_0

    .line 870
    invoke-virtual {v5}, Landroid/support/v4/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1885
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/narvii/chat/core/ThreadCheckInfo;

    .line 871
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    array-length v10, v9

    invoke-static {v9, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    const-string v10, "%10d"

    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "java.lang.String.format(format, *args)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x20

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v11, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v11, v8, [Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/narvii/chat/core/ThreadCheckInfo;->getThreadId()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v2

    array-length v12, v11

    invoke-static {v11, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v11

    const-string v12, "%40s"

    invoke-static {v12, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v11, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v11, v8, [Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/narvii/chat/core/ThreadCheckInfo;->getLatestActivityTime()Ljava/util/Date;

    move-result-object v13

    aput-object v13, v11, v2

    array-length v13, v11

    invoke-static {v11, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v11

    invoke-static {v12, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v9, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/narvii/chat/core/ThreadCheckInfo;->getLastReadTime()Ljava/util/Date;

    move-result-object v9

    aput-object v9, v8, v2

    array-length v9, v8

    invoke-static {v8, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    invoke-static {v12, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "     "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/narvii/chat/core/ThreadCheckInfo;->getAlertOption()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v6, 0xa

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 874
    :cond_1
    iget-object v1, p0, Lcom/narvii/chat/core/ChatService;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic queryThreadCheckInfo$default(Lcom/narvii/chat/core/ChatService;IZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 656
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/core/ChatService;->queryThreadCheckInfo(IZ)V

    return-void
.end method

.method public static synthetic queryThreadCheckInfo$default(Lcom/narvii/chat/core/ChatService;Ljava/util/Set;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 665
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/core/ChatService;->queryThreadCheckInfo(Ljava/util/Set;Z)V

    return-void
.end method

.method private final recordRecentMessage()V
    .locals 4

    .line 1589
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->recentMessageTime:[J

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->min([J)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->recentMessageTime:[J

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->min([J)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lkotlin/collections/ArraysKt;->indexOf([JJ)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 v0, 0x0

    throw v0

    :cond_1
    const/4 v0, 0x0

    .line 1590
    :goto_0
    iget-object v1, p0, Lcom/narvii/chat/core/ChatService;->recentMessageTime:[J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    aput-wide v2, v1, v0

    return-void
.end method

.method public static synthetic sendChatMessageAck$default(Lcom/narvii/chat/core/ChatService;ILcom/narvii/model/ChatMessage;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 1614
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/chat/core/ChatService;->sendChatMessageAck(ILcom/narvii/model/ChatMessage;Z)V

    return-void
.end method

.method public static synthetic sendChatMessageAck$default(Lcom/narvii/chat/core/ChatService;Lcom/narvii/chat/util/ChatMessageDto;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1624
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/core/ChatService;->sendChatMessageAck(Lcom/narvii/chat/util/ChatMessageDto;Z)V

    return-void
.end method

.method private final sendChatRequest(ILcom/narvii/model/ChatMessage;)Z
    .locals 10

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 999
    :cond_0
    invoke-virtual {p0, p2}, Lcom/narvii/chat/core/ChatService;->parseLinkFirst(Lcom/narvii/model/ChatMessage;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 1002
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/core/ChatService;->buildRequest(ILcom/narvii/model/ChatMessage;)Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    if-nez p1, :cond_2

    .line 1004
    iget-object v3, p0, Lcom/narvii/chat/core/ChatService;->postListener:Lcom/narvii/chat/core/ChatService$postListener$1;

    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v4

    const-string p1, "ApiRequest.builder().tag(message).build()"

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1005
    iget-object p1, p0, Lcom/narvii/chat/core/ChatService;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0f0118

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string p1, "ctx.context.getString(R.string.api_request_fail)"

    invoke-static {v7, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1004
    invoke-virtual/range {v3 .. v9}, Lcom/narvii/chat/core/ChatService$postListener$1;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    return v0

    .line 1008
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->ctx:Lcom/narvii/app/NVContext;

    const-string v1, "api"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ctx.getService(\"api\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 1009
    invoke-virtual {p0, p2}, Lcom/narvii/chat/core/ChatService;->isVideoUploadRequest(Lcom/narvii/model/ChatMessage;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, p2}, Lcom/narvii/chat/core/ChatService;->getVideoMessagePostListener(Lcom/narvii/model/ChatMessage;)Lcom/narvii/util/http/ApiResponseListener;

    move-result-object v1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/narvii/chat/core/ChatService;->postListener:Lcom/narvii/chat/core/ChatService$postListener$1;

    .line 1010
    :goto_0
    invoke-virtual {p2}, Lcom/narvii/model/ChatMessage;->isSerialExecutorRequired()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1013
    iget-object v3, p0, Lcom/narvii/chat/core/ChatService;->serialRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0, p1, v1, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;Lcom/android/volley/RequestQueue;)V

    goto :goto_1

    .line 1015
    :cond_4
    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 1017
    :goto_1
    invoke-virtual {p0, p2}, Lcom/narvii/chat/core/ChatService;->recordOutBoundCreatedTime(Lcom/narvii/model/ChatMessage;)V

    return v2
.end method

.method private final sendNotification(ILcom/narvii/notification/Notification;)V
    .locals 2

    .line 794
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, p1, v1}, Lcom/narvii/app/NVApplication;->getService(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "NVApplication.instance()\u2026vice(cid, \"notification\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    .line 795
    invoke-static {p1, p2}, Lcom/narvii/util/NotificationUtils;->sendNotificationIncludeGlobal(Lcom/narvii/notification/NotificationCenter;Lcom/narvii/notification/Notification;)V

    return-void
.end method

.method public static synthetic updateReadTime$default(Lcom/narvii/chat/core/ChatService;ILjava/lang/String;Ljava/util/Date;ZLcom/narvii/model/ChatThread;ILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_0

    const/4 p4, 0x0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    move v4, p4

    :goto_0
    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    const/4 p5, 0x0

    :cond_1
    move-object v5, p5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 500
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/chat/core/ChatService;->updateReadTime(ILjava/lang/String;Ljava/util/Date;ZLcom/narvii/model/ChatThread;)V

    return-void
.end method

.method private final updateThreadCheckInfo(Landroid/support/v4/util/ArrayMap;Lcom/narvii/chat/core/ThreadCheckInfo;)Lcom/narvii/chat/core/ThreadCheckInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap<",
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

    .line 803
    :cond_0
    invoke-virtual {p2}, Lcom/narvii/chat/core/ThreadCheckInfo;->getThreadId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/core/ThreadCheckInfo;

    if-eqz v1, :cond_1

    .line 804
    invoke-virtual {v1}, Lcom/narvii/chat/core/ThreadCheckInfo;->getLastReadTime()Ljava/util/Date;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    if-eqz v1, :cond_2

    .line 805
    invoke-virtual {v1}, Lcom/narvii/chat/core/ThreadCheckInfo;->getLatestActivityTime()Ljava/util/Date;

    move-result-object v0

    .line 806
    :cond_2
    invoke-virtual {p2}, Lcom/narvii/chat/core/ThreadCheckInfo;->getLastReadTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/narvii/chat/util/ChatHelperKt;->isNewer(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 807
    invoke-virtual {p2, v2}, Lcom/narvii/chat/core/ThreadCheckInfo;->setLastReadTime(Ljava/util/Date;)V

    .line 809
    :cond_3
    invoke-virtual {p2}, Lcom/narvii/chat/core/ThreadCheckInfo;->getLatestActivityTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/chat/util/ChatHelperKt;->isNewer(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 810
    invoke-virtual {p2, v0}, Lcom/narvii/chat/core/ThreadCheckInfo;->setLatestActivityTime(Ljava/util/Date;)V

    .line 812
    :cond_4
    invoke-virtual {p2}, Lcom/narvii/chat/core/ThreadCheckInfo;->getThreadId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    :cond_5
    :goto_1
    return-object v0
.end method

.method private final updateThreadCheckInfo(Landroid/support/v4/util/ArrayMap;Lcom/narvii/model/ChatThread;)Lcom/narvii/chat/core/ThreadCheckInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap<",
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

    .line 821
    :cond_0
    iget-object v0, p2, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/core/ThreadCheckInfo;

    if-nez v0, :cond_1

    .line 823
    new-instance v0, Lcom/narvii/chat/core/ThreadCheckInfo;

    iget-object v1, p2, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    iget-object v2, p2, Lcom/narvii/model/ChatThread;->latestActivityTime:Ljava/util/Date;

    .line 824
    iget-object v3, p2, Lcom/narvii/model/ChatThread;->lastReadTime:Ljava/util/Date;

    iget v4, p2, Lcom/narvii/model/ChatThread;->alertOption:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 823
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/narvii/chat/core/ThreadCheckInfo;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/Integer;)V

    .line 825
    iget-object p2, p2, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 828
    :cond_1
    iget-object p1, p2, Lcom/narvii/model/ChatThread;->latestActivityTime:Ljava/util/Date;

    invoke-virtual {v0}, Lcom/narvii/chat/core/ThreadCheckInfo;->getLatestActivityTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/narvii/chat/util/ChatHelperKt;->isNewer(Ljava/util/Date;Ljava/util/Date;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 829
    iget-object p1, p2, Lcom/narvii/model/ChatThread;->latestActivityTime:Ljava/util/Date;

    invoke-virtual {v0, p1}, Lcom/narvii/chat/core/ThreadCheckInfo;->setLatestActivityTime(Ljava/util/Date;)V

    .line 831
    :cond_2
    iget-object p1, p2, Lcom/narvii/model/ChatThread;->lastReadTime:Ljava/util/Date;

    invoke-virtual {v0}, Lcom/narvii/chat/core/ThreadCheckInfo;->getLastReadTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/narvii/chat/util/ChatHelperKt;->isNewer(Ljava/util/Date;Ljava/util/Date;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 832
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

    if-ltz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->communityLevelReceptors:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/EventDispatcher;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    .line 295
    :goto_0
    invoke-virtual {v0, p2}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 296
    iget-object p2, p0, Lcom/narvii/chat/core/ChatService;->communityLevelReceptors:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final addGlobalChatMessageReceptor(Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->globalLevelReceptors:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    return-void
.end method

.method public final addGuestThreadId(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 739
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->guestThreadSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final addInProcessUploadMedia(I)V
    .locals 2

    .line 1447
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->inProcessUploadMediaIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1450
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->inProcessUploadMediaIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addLiveChannelPermissionListener(Ljava/lang/String;Lcom/narvii/chat/ThreadConfigChangeListener;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1818
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_4

    if-nez p2, :cond_2

    goto :goto_2

    .line 1821
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->threadConfigDispatcher:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/EventDispatcher;

    if-nez v0, :cond_3

    .line 1823
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    .line 1825
    :cond_3
    invoke-virtual {v0, p2}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    if-eqz p1, :cond_4

    .line 1827
    iget-object p2, p0, Lcom/narvii/chat/core/ChatService;->threadConfigDispatcher:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/EventDispatcher;

    :cond_4
    :goto_2
    return-void
.end method

.method public final addThreadCheckQueue(I)V
    .locals 3

    .line 639
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->communitiesIsRequestingThreadCheck:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/narvii/chat/core/ChatService;->isReadyToRequestThreadCheckForCurCommunity(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 642
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->threadCheckQueue:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 643
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->threadCheckRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 644
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->threadCheckRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x190

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final addThreadLvelRecptor(Ljava/lang/String;Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 326
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_4

    if-nez p2, :cond_2

    goto :goto_3

    .line 329
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->threadLevelReceptor:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/EventDispatcher;

    if-eqz v0, :cond_3

    goto :goto_2

    .line 330
    :cond_3
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    .line 331
    :goto_2
    invoke-virtual {v0, p2}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    if-eqz p1, :cond_4

    .line 333
    iget-object p2, p0, Lcom/narvii/chat/core/ChatService;->threadLevelReceptor:Ljava/util/HashMap;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_3
    return-void
.end method

.method public final addVideoMessagePostListener(Ljava/lang/String;Lcom/narvii/chat/core/ChatService$VideoMessageProgressChangeListener;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1772
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_4

    if-nez p2, :cond_2

    goto :goto_2

    .line 1775
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->videoMessageProgressDispatcher:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/EventDispatcher;

    if-nez v0, :cond_3

    .line 1777
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    .line 1779
    :cond_3
    invoke-virtual {v0, p2}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    if-eqz p1, :cond_4

    .line 1781
    iget-object p2, p0, Lcom/narvii/chat/core/ChatService;->videoMessageProgressDispatcher:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/EventDispatcher;

    :cond_4
    :goto_2
    return-void
.end method

.method public final buildBaseRequestNode(Lcom/narvii/model/ChatMessage;Lcom/fasterxml/jackson/databind/node/ObjectNode;Z)V
    .locals 4

    const-string v0, "node"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 1376
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->getReplyMessageId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1377
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->getReplyMessageId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "replyMessageId"

    invoke-virtual {p2, v1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 1379
    :cond_1
    iget v0, p1, Lcom/narvii/model/ChatMessage;->type:I

    const-string/jumbo v1, "type"

    invoke-virtual {p2, v1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 1380
    iget-object v0, p1, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    const-string v1, "content"

    invoke-virtual {p2, v1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 1381
    iget v0, p1, Lcom/narvii/model/ChatMessage;->clientRefId:I

    const-string v1, "clientRefId"

    invoke-virtual {p2, v1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 1382
    iget-object v0, p1, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "attachedObjectInfo"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const-string v1, "attachedObject"

    invoke-virtual {p2, v1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 1383
    iget v0, p1, Lcom/narvii/model/ChatMessage;->mediaType:I

    if-eqz v0, :cond_2

    const-string v1, "mediaType"

    .line 1384
    invoke-virtual {p2, v1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 1385
    iget-object v0, p1, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p3, :cond_2

    .line 1386
    iget-object p1, p1, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    const-string p3, "mediaValue"

    invoke-virtual {p2, p3, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    :cond_2
    return-void
.end method

.method public final buildRequest(ILcom/narvii/model/ChatMessage;)Lcom/narvii/util/http/ApiRequest;
    .locals 20

    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    const/4 v10, 0x0

    if-nez v9, :cond_0

    return-object v10

    .line 1213
    :cond_0
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v11

    .line 1216
    iget v0, v9, Lcom/narvii/model/ChatMessage;->type:I

    const-string v1, "node"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1217
    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v3, v11

    invoke-static/range {v1 .. v6}, Lcom/narvii/chat/core/ChatService;->buildBaseRequestNode$default(Lcom/narvii/chat/core/ChatService;Lcom/narvii/model/ChatMessage;Lcom/fasterxml/jackson/databind/node/ObjectNode;ZILjava/lang/Object;)V

    goto/16 :goto_a

    :cond_1
    const-string v3, "clientRefId"

    const-string/jumbo v4, "type"

    const/4 v5, 0x3

    if-ne v0, v5, :cond_2

    .line 1221
    iget-object v0, v9, Lcom/narvii/model/ChatMessage;->stickerId:Ljava/lang/String;

    const-string/jumbo v1, "stickerId"

    invoke-virtual {v11, v1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 1222
    invoke-virtual {v11, v4, v5}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 1223
    iget v0, v9, Lcom/narvii/model/ChatMessage;->clientRefId:I

    invoke-virtual {v11, v3, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto/16 :goto_a

    .line 1226
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/narvii/model/ChatMessage;->isCallRelatedMessage()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1227
    iget v0, v9, Lcom/narvii/model/ChatMessage;->type:I

    invoke-virtual {v11, v4, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 1228
    iget v0, v9, Lcom/narvii/model/ChatMessage;->clientRefId:I

    invoke-virtual {v11, v3, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto/16 :goto_a

    .line 1232
    :cond_3
    iget v0, v9, Lcom/narvii/model/ChatMessage;->mediaType:I

    const/16 v3, 0x64

    const-string v4, "node.toString()"

    const-string v5, "fail to write body"

    const-string v6, "mediaUploadValue"

    const-string v12, "UUID.randomUUID().toString()"

    const/4 v13, 0x0

    if-nez v0, :cond_c

    iget-object v0, v9, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_c

    .line 1233
    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v9, v11, v13}, Lcom/narvii/chat/core/ChatService;->buildBaseRequestNode(Lcom/narvii/model/ChatMessage;Lcom/fasterxml/jackson/databind/node/ObjectNode;Z)V

    .line 1234
    iget-object v0, v9, Lcom/narvii/model/ChatMessage;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    new-array v1, v2, [Ljava/lang/String;

    const-string v14, "mentionedArray"

    aput-object v14, v1, v13

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const-string v1, "extensions"

    if-eqz v0, :cond_6

    .line 1236
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v15

    .line 1237
    invoke-virtual {v11, v1, v15}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 1238
    invoke-virtual {v15, v14, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 1240
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/narvii/model/ChatMessage;->getFirstLinkSnippet()Lcom/narvii/model/LinkSummary;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 1242
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/chat/core/ChatService;->photoManager$Amino_bundle()Lcom/narvii/photos/PhotoManager;

    move-result-object v14

    .line 1243
    invoke-virtual {v0}, Lcom/narvii/model/LinkSummary;->getFirstMedia()Lcom/narvii/model/Media;

    move-result-object v15

    if-nez v15, :cond_7

    return-object v10

    .line 1246
    :cond_7
    invoke-virtual {v0}, Lcom/narvii/model/LinkSummary;->getFirstMedia()Lcom/narvii/model/Media;

    move-result-object v15

    iget-object v15, v15, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-virtual {v14, v15}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    if-eqz v14, :cond_b

    .line 1247
    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v15

    const-wide/16 v17, 0x0

    cmp-long v19, v15, v17

    if-nez v19, :cond_8

    goto :goto_3

    .line 1250
    :cond_8
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v12}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v2, v2, [Ljava/lang/String;

    aput-object v1, v2, v13

    .line 1252
    invoke-static {v11, v2}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    if-nez v2, :cond_9

    .line 1254
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v2

    .line 1255
    invoke-virtual {v11, v1, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 1257
    :cond_9
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v1

    if-eqz v2, :cond_a

    .line 1258
    check-cast v2, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v12, "linkSnippetList"

    invoke-virtual {v2, v12, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 1259
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v2

    .line 1260
    iget-object v0, v0, Lcom/narvii/model/LinkSummary;->link:Ljava/lang/String;

    const-string v12, "link"

    invoke-virtual {v2, v12, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v0, "mediaType"

    .line 1261
    invoke-virtual {v2, v0, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 1262
    invoke-virtual {v2, v6, v15}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v0, "mediaUploadValueContentType"

    const-string v3, "image/png"

    .line 1263
    invoke-virtual {v2, v0, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 1264
    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 1266
    invoke-static {}, Lcom/narvii/util/Utils;->createTmpFile()Ljava/io/File;

    move-result-object v1

    .line 1268
    :try_start_0
    sget-object v0, Lcom/narvii/chat/util/ChatHelper;->Companion:Lcom/narvii/chat/util/ChatHelper$Companion;

    invoke-virtual {v11}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v14, v15, v1}, Lcom/narvii/chat/util/ChatHelper$Companion;->buildBodyFile(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_b

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 1270
    :try_start_1
    invoke-static {v5, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1271
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v10

    .line 1274
    :goto_2
    throw v0

    .line 1258
    :cond_a
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.fasterxml.jackson.databind.node.ObjectNode"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    :goto_3
    return-object v10

    .line 1281
    :cond_c
    iget v0, v9, Lcom/narvii/model/ChatMessage;->mediaType:I

    const/4 v14, 0x2

    if-ne v0, v3, :cond_12

    iget-object v0, v9, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    if-eqz v0, :cond_12

    const-string v3, "message.mediaValue"

    .line 1282
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "photo://"

    invoke-static {v0, v3, v13, v14, v10}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1283
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/chat/core/ChatService;->photoManager$Amino_bundle()Lcom/narvii/photos/PhotoManager;

    move-result-object v14

    .line 1284
    invoke-static {}, Lcom/narvii/util/Utils;->createTmpFile()Ljava/io/File;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/String;

    .line 1287
    :try_start_2
    iget-object v15, v9, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    const-string v16, "chat-message"

    iget-boolean v0, v9, Lcom/narvii/model/ChatMessage;->mediaUhqEnabled:Z

    move-object/from16 v17, v3

    move-object/from16 v18, v2

    move/from16 v19, v0

    invoke-virtual/range {v14 .. v19}, Lcom/narvii/photos/PhotoManager;->writeUploadDataTo(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;[Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    const-string/jumbo v14, "unable to encode bitmap"

    .line 1292
    invoke-static {v14, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v3, :cond_d

    .line 1293
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_4

    :catch_2
    move-exception v0

    const-string/jumbo v14, "out of memory when encode bitmap to base64"

    .line 1289
    invoke-static {v14, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v3, :cond_d

    .line 1290
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_d
    :goto_4
    if-eqz v3, :cond_10

    .line 1295
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v0, v14, v16

    if-nez v0, :cond_e

    goto :goto_6

    .line 1298
    :cond_e
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1299
    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v9, v11, v13}, Lcom/narvii/chat/core/ChatService;->buildBaseRequestNode(Lcom/narvii/model/ChatMessage;Lcom/fasterxml/jackson/databind/node/ObjectNode;Z)V

    .line 1300
    invoke-virtual {v11, v6, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 1301
    iget-boolean v1, v9, Lcom/narvii/model/ChatMessage;->mediaUhqEnabled:Z

    const-string v6, "mediaUhqEnabled"

    invoke-virtual {v11, v6, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 1302
    aget-object v1, v2, v13

    const-string v2, "mediaUploadValueContentType"

    invoke-virtual {v11, v2, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 1303
    invoke-static {}, Lcom/narvii/util/Utils;->createTmpFile()Ljava/io/File;

    move-result-object v1

    .line 1305
    :try_start_3
    sget-object v2, Lcom/narvii/chat/util/ChatHelper;->Companion:Lcom/narvii/chat/util/ChatHelper$Companion;

    invoke-virtual {v11}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v6, v3, v0, v1}, Lcom/narvii/chat/util/ChatHelper$Companion;->buildBodyFile(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1311
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto/16 :goto_b

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    .line 1307
    :try_start_4
    invoke-static {v5, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v1, :cond_f

    .line 1308
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1311
    :cond_f
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    return-object v10

    :goto_5
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    throw v0

    :cond_10
    :goto_6
    return-object v10

    .line 1315
    :cond_11
    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v3, v11

    invoke-static/range {v1 .. v6}, Lcom/narvii/chat/core/ChatService;->buildBaseRequestNode$default(Lcom/narvii/chat/core/ChatService;Lcom/narvii/model/ChatMessage;Lcom/fasterxml/jackson/databind/node/ObjectNode;ZILjava/lang/Object;)V

    goto/16 :goto_a

    .line 1321
    :cond_12
    iget v0, v9, Lcom/narvii/model/ChatMessage;->mediaType:I

    const/16 v3, 0x67

    if-ne v0, v3, :cond_13

    iget-object v0, v9, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    if-eqz v0, :cond_13

    invoke-static {v0}, Lcom/narvii/util/YoutubeUtils;->isYtvScheme(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1322
    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v3, v11

    invoke-static/range {v1 .. v6}, Lcom/narvii/chat/core/ChatService;->buildBaseRequestNode$default(Lcom/narvii/chat/core/ChatService;Lcom/narvii/model/ChatMessage;Lcom/fasterxml/jackson/databind/node/ObjectNode;ZILjava/lang/Object;)V

    goto/16 :goto_a

    .line 1325
    :cond_13
    invoke-virtual {v7, v9}, Lcom/narvii/chat/core/ChatService;->isVideoUploadRequest(Lcom/narvii/model/ChatMessage;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1326
    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v7, v8, v9, v11}, Lcom/narvii/chat/core/ChatService;->buildVideoChatRequest(ILcom/narvii/model/ChatMessage;Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    return-object v0

    .line 1331
    :cond_14
    iget v0, v9, Lcom/narvii/model/ChatMessage;->type:I

    if-ne v0, v14, :cond_1a

    iget v0, v9, Lcom/narvii/model/ChatMessage;->mediaType:I

    const/16 v3, 0x6e

    if-ne v0, v3, :cond_1a

    iget-object v0, v9, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    if-eqz v0, :cond_1a

    .line 1332
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v3, "uri"

    .line 1333
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v14, "file"

    invoke-static {v14, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v2

    if-nez v3, :cond_19

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_16

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_15

    goto :goto_7

    :cond_15
    const/4 v2, 0x0

    :cond_16
    :goto_7
    if-eqz v2, :cond_17

    goto :goto_9

    .line 1336
    :cond_17
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1337
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_18

    return-object v10

    .line 1341
    :cond_18
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1342
    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v9, v11, v13}, Lcom/narvii/chat/core/ChatService;->buildBaseRequestNode(Lcom/narvii/model/ChatMessage;Lcom/fasterxml/jackson/databind/node/ObjectNode;Z)V

    .line 1343
    invoke-virtual {v11, v6, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 1344
    invoke-static {}, Lcom/narvii/util/Utils;->createTmpFile()Ljava/io/File;

    move-result-object v1

    .line 1346
    :try_start_5
    sget-object v3, Lcom/narvii/chat/util/ChatHelper;->Companion:Lcom/narvii/chat/util/ChatHelper$Companion;

    invoke-virtual {v11}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v6, v2, v0, v1}, Lcom/narvii/chat/util/ChatHelper$Companion;->buildBodyFile(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/io/File;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_b

    :catchall_2
    move-exception v0

    goto :goto_8

    :catch_4
    move-exception v0

    .line 1348
    :try_start_6
    invoke-static {v5, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1349
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    return-object v10

    .line 1353
    :goto_8
    throw v0

    :cond_19
    :goto_9
    return-object v10

    :cond_1a
    const-string/jumbo v0, "unsupported chat message"

    .line 1357
    invoke-static {v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    :cond_1b
    :goto_a
    move-object v1, v10

    .line 1361
    :goto_b
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/chat/thread/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v9, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/message"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    if-nez v1, :cond_1c

    .line 1363
    invoke-virtual {v0, v11}, Lcom/narvii/util/http/ApiRequest$Builder;->body(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/narvii/util/http/ApiRequest$Builder;

    goto :goto_c

    .line 1365
    :cond_1c
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->body(Ljava/io/File;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->deleteBodyAfterDone()Lcom/narvii/util/http/ApiRequest$Builder;

    const v1, 0xea60

    .line 1366
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->timeout(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 1368
    :goto_c
    invoke-virtual {v0, v9}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 1369
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public final clear()V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->threadCheckInfosMapper:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 226
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->threadCheckQueue:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 227
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->communitiesIsRequestingThreadCheck:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 228
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->unreadChatCountMapper:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 229
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->bitmapCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 230
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->messages:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 231
    iget-boolean v0, p0, Lcom/narvii/chat/core/ChatService;->photoTouched:Z

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->photoDir:Ljava/io/File;

    invoke-static {v0}, Lcom/narvii/util/Utils;->deleteDir(Ljava/io/File;)Z

    :cond_0
    return-void
.end method

.method public final clearCommunityLevelData(I)V
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->outboundMessagesNdcIdsMapper:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-eqz p1, :cond_1

    const-string/jumbo v0, "outboundMessagesNdcIdsMapper[ndcId] ?: return"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1871
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 242
    iget-object v1, p0, Lcom/narvii/chat/core/ChatService;->outboundMessageCreateTime:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 243
    iget-object v1, p0, Lcom/narvii/chat/core/ChatService;->messages:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    .line 245
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/core/ChatService;->storeDraft()V

    :cond_1
    return-void
.end method

.method public final containGuestThreadId(Ljava/lang/String;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 753
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->guestThreadSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final dispatchGlobalOnNewMessage(ILcom/narvii/chat/util/ChatMessageDto;)V
    .locals 2

    const-string v0, "chatMessageDto"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->globalLevelReceptors:Lcom/narvii/util/EventDispatcher;

    new-instance v1, Lcom/narvii/chat/core/ChatService$dispatchGlobalOnNewMessage$1;

    invoke-direct {v1, p1, p2}, Lcom/narvii/chat/core/ChatService$dispatchGlobalOnNewMessage$1;-><init>(ILcom/narvii/chat/util/ChatMessageDto;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public final dispatchGlobalThreadCountChange()V
    .locals 2

    .line 282
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->globalLevelReceptors:Lcom/narvii/util/EventDispatcher;

    sget-object v1, Lcom/narvii/chat/core/ChatService$dispatchGlobalThreadCountChange$1;->INSTANCE:Lcom/narvii/chat/core/ChatService$dispatchGlobalThreadCountChange$1;

    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public final dispatchNewMessageOnCommunityLevel(ILcom/narvii/chat/util/ChatMessageDto;)V
    .locals 4

    if-ltz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->communityLevelReceptors:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/EventDispatcher;

    if-eqz v0, :cond_1

    .line 312
    iget-object v1, p0, Lcom/narvii/chat/core/ChatService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchNewMessageOnCommunityLevel --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    new-instance v1, Lcom/narvii/chat/core/ChatService$dispatchNewMessageOnCommunityLevel$1;

    invoke-direct {v1, p1, p2}, Lcom/narvii/chat/core/ChatService$dispatchNewMessageOnCommunityLevel$1;-><init>(ILcom/narvii/chat/util/ChatMessageDto;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final dispatchUnreadCountChangeOnCommunityLevel(I)V
    .locals 4

    if-gez p1, :cond_0

    return-void

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->communityLevelReceptors:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/EventDispatcher;

    if-eqz v0, :cond_1

    .line 321
    iget-object v1, p0, Lcom/narvii/chat/core/ChatService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchUnreadCountChangeOnCommunityLevel --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    new-instance v1, Lcom/narvii/chat/core/ChatService$dispatchUnreadCountChangeOnCommunityLevel$1;

    invoke-direct {v1, p1}, Lcom/narvii/chat/core/ChatService$dispatchUnreadCountChangeOnCommunityLevel$1;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    :cond_1
    return-void
.end method

.method public final getAllUnreadThreadCount()I
    .locals 5

    .line 476
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->unreadChatCountMapper:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 477
    iget-object v3, p0, Lcom/narvii/chat/core/ChatService;->unreadChatCountMapper:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v4, "unreadChatCountMapper.valueAt(i)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final getCurCid()I
    .locals 1

    .line 128
    iget v0, p0, Lcom/narvii/chat/core/ChatService;->curCid:I

    return v0
.end method

.method public final getCurCommunityContext()Lcom/narvii/app/NVContext;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->curCommunityContext:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final getCurNvContext()Lcom/narvii/app/NVContext;
    .locals 3

    .line 757
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->curCommunityContext:Lcom/narvii/app/NVContext;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    return-object v0

    .line 758
    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 v0, 0x0

    throw v0

    .line 760
    :cond_1
    iget v0, p0, Lcom/narvii/chat/core/ChatService;->curCid:I

    if-eqz v0, :cond_2

    .line 761
    new-instance v0, Lcom/narvii/services/incubator/CommunityContext;

    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v1

    iget v2, p0, Lcom/narvii/chat/core/ChatService;->curCid:I

    invoke-direct {v0, v1, v2}, Lcom/narvii/services/incubator/CommunityContext;-><init>(Lcom/narvii/app/NVContext;I)V

    return-object v0

    .line 763
    :cond_2
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    const-string v1, "NVApplication.instance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getCurVideoUploadProgress(Lcom/narvii/model/ChatMessage;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1805
    :cond_0
    iget v1, p1, Lcom/narvii/model/ChatMessage;->_status:I

    if-eqz v1, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 1809
    iget-object v1, p0, Lcom/narvii/chat/core/ChatService;->videoUploadPercents:Landroid/util/SparseArray;

    iget v2, p1, Lcom/narvii/model/ChatMessage;->clientRefId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->videoUploadPercents:Landroid/util/SparseArray;

    iget p1, p1, Lcom/narvii/model/ChatMessage;->clientRefId:I

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v0, "videoUploadPercents.get(message.clientRefId)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    :cond_2
    :goto_0
    return v0

    :cond_3
    const/16 p1, 0x64

    return p1
.end method

.method public final getDraft(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_1

    .line 1555
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->drafts:Lcom/narvii/chat/core/ChatService$DraftMap;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/narvii/chat/core/ChatService$DraftMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    :cond_3
    :goto_2
    return-object v1
.end method

.method public final getLatestSendElapse()J
    .locals 5

    .line 1597
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->recentMessageTime:[J

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->max([J)Ljava/lang/Long;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_1

    .line 1598
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, v3

    :goto_1
    return-wide v0
.end method

.method public final getOutBoundCreatedTime(Lcom/narvii/model/ChatMessage;)Ljava/util/Date;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1040
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->outboundMessageCreateTime:Landroid/util/SparseArray;

    iget p1, p1, Lcom/narvii/model/ChatMessage;->clientRefId:I

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    return-object p1
.end method

.method public final getOutboundMessages(Ljava/lang/String;)Ljava/util/List;
    .locals 5
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

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 904
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    .line 905
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v1, 0x0

    .line 908
    iget-object v2, p0, Lcom/narvii/chat/core/ChatService;->messages:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    :goto_2
    if-ge v0, v2, :cond_5

    .line 909
    iget-object v3, p0, Lcom/narvii/chat/core/ChatService;->messages:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/ChatMessage;

    .line 910
    iget-object v4, v3, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    invoke-static {v4, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-nez v1, :cond_3

    .line 912
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 914
    :cond_3
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    if-eqz v1, :cond_6

    goto :goto_3

    .line 917
    :cond_6
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    :goto_3
    return-object v1
.end method

.method public final getPhotoDir()Ljava/io/File;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->photoDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    const/4 v0, 0x1

    .line 205
    iput-boolean v0, p0, Lcom/narvii/chat/core/ChatService;->photoTouched:Z

    .line 206
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->photoDir:Ljava/io/File;

    return-object v0
.end method

.method public final getReadTime(Ljava/lang/String;)J
    .locals 5

    if-eqz p1, :cond_1

    .line 1466
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-wide/16 v1, 0x0

    if-eqz v0, :cond_2

    return-wide v1

    .line 1470
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->prefs:Landroid/content/SharedPreferences;

    const/4 v3, 0x0

    const-string v4, "lastReadTime"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1471
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    return-wide v1

    .line 1476
    :cond_3
    :try_start_0
    new-instance v4, Ljava/util/StringTokenizer;

    if-eqz v0, :cond_5

    const-string/jumbo v3, "|"

    invoke-direct {v4, v0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1477
    :cond_4
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1478
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 1479
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1480
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 1481
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1482
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 1476
    :cond_5
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    throw v3

    :catch_0
    :cond_6
    return-wide v1
.end method

.method public final getReceiver$Amino_bundle()Landroid/content/BroadcastReceiver;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->receiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method public final getThreadCheckRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 647
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->threadCheckRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public final getThreadLastReadTime(ILjava/lang/String;)Ljava/util/Date;
    .locals 2

    if-eqz p2, :cond_1

    .line 767
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    return-object v1

    .line 770
    :cond_2
    invoke-direct {p0, p1}, Lcom/narvii/chat/core/ChatService;->getCurCommunityThreadCheckInfos(I)Landroid/support/v4/util/ArrayMap;

    move-result-object p1

    .line 771
    invoke-virtual {p1, p2}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/core/ThreadCheckInfo;

    if-eqz p1, :cond_3

    .line 772
    invoke-virtual {p1}, Lcom/narvii/chat/core/ThreadCheckInfo;->getLastReadTime()Ljava/util/Date;

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method public final getUnreadChatCountInCurCommunity(I)I
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->unreadChatCountMapper:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->unreadChatCountMapper:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v0, "unreadChatCountMapper.get(cid)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1

    .line 471
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/chat/core/ChatService;->buildUnreadThreadMapper(I)I

    move-result p1

    return p1
.end method

.method public final handleQuitMessage(Lcom/narvii/chat/util/ChatMessageDto;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 600
    iget-object v1, p1, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_1

    return-void

    .line 603
    :cond_1
    iget-object v1, p1, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 605
    iget v2, v1, Lcom/narvii/model/ChatMessage;->type:I

    const/16 v3, 0x66

    if-eq v2, v3, :cond_3

    const-string v2, "message"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/narvii/model/ChatMessage;->isThreadDestroyMessage()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_6

    .line 607
    iget-object v2, p0, Lcom/narvii/chat/core/ChatService;->ctx:Lcom/narvii/app/NVContext;

    const-string v3, "account"

    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/account/AccountService;

    if-eqz v2, :cond_4

    .line 608
    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    :cond_4
    invoke-virtual {v1}, Lcom/narvii/model/ChatMessage;->uid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 609
    iget v0, v1, Lcom/narvii/model/ChatMessage;->type:I

    const/16 v2, 0x76

    if-ne v0, v2, :cond_6

    .line 610
    :cond_5
    iget v0, p1, Lcom/narvii/chat/util/ChatMessageDto;->ndcId:I

    iget-object v1, v1, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/narvii/chat/core/ChatService;->removeThread(ILjava/lang/String;)V

    .line 611
    new-instance v0, Lcom/narvii/model/ChatThread;

    invoke-direct {v0}, Lcom/narvii/model/ChatThread;-><init>()V

    .line 612
    iget-object v1, p1, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    iget-object v1, v1, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    iput-object v1, v0, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 613
    new-instance v1, Lcom/narvii/notification/Notification;

    const-string v2, "delete"

    invoke-direct {v1, v2, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 614
    iget p1, p1, Lcom/narvii/chat/util/ChatMessageDto;->ndcId:I

    invoke-direct {p0, p1, v1}, Lcom/narvii/chat/core/ChatService;->sendNotification(ILcom/narvii/notification/Notification;)V

    :cond_6
    return-void
.end method

.method public final isCurThreadUnread(ILjava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 776
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    return v0

    .line 780
    :cond_2
    invoke-direct {p0, p1}, Lcom/narvii/chat/core/ChatService;->getCurCommunityThreadCheckInfos(I)Landroid/support/v4/util/ArrayMap;

    move-result-object p1

    .line 781
    invoke-virtual {p1, p2}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/core/ThreadCheckInfo;

    if-eqz p1, :cond_3

    .line 782
    invoke-virtual {p1}, Lcom/narvii/chat/core/ThreadCheckInfo;->hasUnreadMessage()Z

    move-result v0

    :cond_3
    return v0
.end method

.method public final isMediaUploadingStillInProcess(I)Z
    .locals 1

    .line 1458
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->inProcessUploadMediaIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final isReadyToRequestThreadCheckForCurCommunity(I)Z
    .locals 4

    .line 652
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->lastThreadCheckTime:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/narvii/chat/core/ChatService;->lastThreadCheckTime:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "lastThreadCheckTime.get(ndcId)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget p1, p0, Lcom/narvii/chat/core/ChatService;->THREAD_CHECK_REQUEST_MIN_INTERVAL:I

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final isSendTooFast()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isVideoUploadRequest(Lcom/narvii/model/ChatMessage;)Z
    .locals 2

    if-eqz p1, :cond_2

    .line 1764
    iget v0, p1, Lcom/narvii/model/ChatMessage;->type:I

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    :cond_0
    iget v0, p1, Lcom/narvii/model/ChatMessage;->mediaType:I

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_1

    const/16 v1, 0x66

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object p1, p1, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onConnect(Lcom/narvii/util/ws/WsService;)V
    .locals 6

    .line 1707
    iget-object p1, p0, Lcom/narvii/chat/core/ChatService;->TAG:Ljava/lang/String;

    const-string v0, "WS Connected"

    invoke-static {p1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1708
    iget-wide v0, p0, Lcom/narvii/chat/core/ChatService;->lastWsDisconnectTimeMillis:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/narvii/chat/core/ChatService;->lastWsDisconnectTimeMillis:J

    sub-long/2addr v0, v4

    iget p1, p0, Lcom/narvii/chat/core/ChatService;->CHAT_RESET_INTERVAL:I

    int-to-long v4, p1

    cmp-long p1, v0, v4

    if-lez p1, :cond_0

    .line 1709
    iput-wide v2, p0, Lcom/narvii/chat/core/ChatService;->lastWsDisconnectTimeMillis:J

    .line 1710
    invoke-direct {p0}, Lcom/narvii/chat/core/ChatService;->dispatchChatMessageListReset()V

    .line 1711
    iget-object p1, p0, Lcom/narvii/chat/core/ChatService;->threadCheckQueue:Ljava/util/HashSet;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/narvii/chat/core/ChatService;->queryThreadCheckInfo(Ljava/util/Set;Z)V

    :cond_0
    return-void
.end method

.method public onDisconnect(Lcom/narvii/util/ws/WsService;Ljava/lang/Throwable;)V
    .locals 3

    .line 1716
    iget-wide p1, p0, Lcom/narvii/chat/core/ChatService;->lastWsDisconnectTimeMillis:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 1717
    iget-object p1, p0, Lcom/narvii/chat/core/ChatService;->TAG:Ljava/lang/String;

    const-string p2, "WS disconnect"

    invoke-static {p1, p2}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1718
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/narvii/chat/core/ChatService;->lastWsDisconnectTimeMillis:J

    :cond_0
    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1436
    :cond_0
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v1, "delete"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1437
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->messages:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 1438
    iget-object v1, p0, Lcom/narvii/chat/core/ChatService;->messages:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/ChatMessage;

    .line 1439
    iget-object v2, v1, Lcom/narvii/model/ChatMessage;->messageId:Ljava/lang/String;

    iget-object v3, p1, Lcom/narvii/notification/Notification;->id:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1440
    iget v1, v1, Lcom/narvii/model/ChatMessage;->clientRefId:I

    invoke-virtual {p0, v1}, Lcom/narvii/chat/core/ChatService;->removeOutboundMessage(I)V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final onOpenCommunity()V
    .locals 0

    .line 221
    invoke-virtual {p0}, Lcom/narvii/chat/core/ChatService;->readDraft()V

    return-void
.end method

.method public final onPostFailed(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0
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

    const-string/jumbo p3, "req"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "message"

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1147
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    move-result-object p1

    const-string p3, "null cannot be cast to non-null type com.narvii.model.ChatMessage"

    if-eqz p1, :cond_2

    check-cast p1, Lcom/narvii/model/ChatMessage;

    .line 1148
    iget-object p5, p0, Lcom/narvii/chat/core/ChatService;->recalledMessages:Landroid/util/SparseBooleanArray;

    iget p6, p1, Lcom/narvii/model/ChatMessage;->clientRefId:I

    invoke-virtual {p5, p6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p5

    if-nez p5, :cond_1

    .line 1149
    iget-object p5, p0, Lcom/narvii/chat/core/ChatService;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {p5}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p5

    const/4 p6, 0x0

    invoke-static {p5, p4, p6}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p4

    invoke-virtual {p4}, Lcom/narvii/util/NVToast;->show()V

    .line 1150
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lcom/narvii/model/ChatMessage;

    const/4 p3, 0x2

    .line 1151
    iput p3, p1, Lcom/narvii/model/ChatMessage;->_status:I

    .line 1152
    iput p2, p1, Lcom/narvii/model/ChatMessage;->_errorCode:I

    .line 1153
    invoke-virtual {p0, p1}, Lcom/narvii/chat/core/ChatService;->storeOutboundMessage(Lcom/narvii/model/ChatMessage;)V

    .line 1154
    new-instance p2, Lcom/narvii/notification/Notification;

    const-string/jumbo p3, "update"

    invoke-direct {p2, p3, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 1155
    invoke-direct {p0, p1}, Lcom/narvii/chat/core/ChatService;->getNdcIdFromMessage(Lcom/narvii/model/ChatMessage;)I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/core/ChatService;->sendNotification(ILcom/narvii/notification/Notification;)V

    goto :goto_0

    .line 1150
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, p3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void

    .line 1147
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, p3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onWsError(Lcom/narvii/util/ws/WsService;Lcom/narvii/util/ws/WsError;)V
    .locals 3

    .line 1723
    sget-object p1, Lcom/narvii/util/ws/WsError;->CONNECTION_LOST:Lcom/narvii/util/ws/WsError;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-wide p1, p0, Lcom/narvii/chat/core/ChatService;->lastWsDisconnectTimeMillis:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 1724
    iget-object p1, p0, Lcom/narvii/chat/core/ChatService;->TAG:Ljava/lang/String;

    const-string p2, "WS connection lost"

    invoke-static {p1, p2}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1725
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/narvii/chat/core/ChatService;->lastWsDisconnectTimeMillis:J

    :cond_0
    return-void
.end method

.method public onWsMessage(Lcom/narvii/util/ws/WsService;Lcom/narvii/util/ws/WsMessage;)V
    .locals 6

    if-eqz p2, :cond_17

    .line 1655
    iget-object p1, p2, Lcom/narvii/util/ws/WsMessage;->tag:Ljava/lang/Object;

    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->DONE:Lcom/narvii/util/Tag;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_7

    .line 1658
    :cond_0
    iget p1, p2, Lcom/narvii/util/ws/WsMessage;->type:I

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_1

    goto/16 :goto_7

    .line 1660
    :cond_1
    iget-object p1, p2, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez p1, :cond_2

    return-void

    .line 1663
    :cond_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->toString()Ljava/lang/String;

    move-result-object p1

    const-class p2, Lcom/narvii/chat/util/ChatMessageDto;

    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/util/ChatMessageDto;

    .line 1664
    sget p2, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v0, 0x65

    if-ne p2, v0, :cond_3

    .line 1665
    iget-object p2, p0, Lcom/narvii/chat/core/ChatService;->ctx:Lcom/narvii/app/NVContext;

    const-string v0, "config"

    invoke-interface {p2, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "ctx.getService<ConfigService>(\"config\")"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/narvii/config/ConfigService;

    invoke-virtual {p2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p2

    .line 1666
    iget v0, p1, Lcom/narvii/chat/util/ChatMessageDto;->ndcId:I

    if-eq p2, v0, :cond_3

    return-void

    :cond_3
    const/4 p2, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1671
    invoke-static {p0, p1, v0, p2, v1}, Lcom/narvii/chat/core/ChatService;->sendChatMessageAck$default(Lcom/narvii/chat/core/ChatService;Lcom/narvii/chat/util/ChatMessageDto;ZILjava/lang/Object;)V

    const/4 v2, 0x1

    if-eqz p1, :cond_5

    .line 1673
    iget-object v3, p1, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/narvii/model/ChatMessage;->isPermissionRelatedMessage()Z

    move-result v3

    if-ne v3, v2, :cond_5

    .line 1674
    iget-object v3, p1, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    if-eqz v3, :cond_4

    iget-object v3, v3, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    goto :goto_0

    :cond_4
    move-object v3, v1

    :goto_0
    iget-object v4, p1, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    invoke-direct {p0, v3, v4}, Lcom/narvii/chat/core/ChatService;->dispatchChannelPermissionChange(Ljava/lang/String;Lcom/narvii/model/ChatMessage;)V

    goto :goto_3

    :cond_5
    if-eqz p1, :cond_6

    .line 1676
    iget-object v3, p1, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    if-eqz v3, :cond_6

    iget v3, v3, Lcom/narvii/model/ChatMessage;->type:I

    const/16 v4, 0x79

    if-eq v3, v4, :cond_7

    :cond_6
    if-eqz p1, :cond_9

    iget-object v3, p1, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    if-eqz v3, :cond_9

    iget v3, v3, Lcom/narvii/model/ChatMessage;->type:I

    const/16 v4, 0x7f

    if-ne v3, v4, :cond_9

    .line 1677
    :cond_7
    iget-object v3, p1, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    if-eqz v3, :cond_8

    iget-object v3, v3, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    goto :goto_1

    :cond_8
    move-object v3, v1

    :goto_1
    iget-object v4, p1, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    invoke-direct {p0, v3, v4}, Lcom/narvii/chat/core/ChatService;->dispatchAnnouncementChange(Ljava/lang/String;Lcom/narvii/model/ChatMessage;)V

    goto :goto_3

    :cond_9
    if-eqz p1, :cond_a

    .line 1679
    iget-object v3, p1, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    if-eqz v3, :cond_a

    iget v3, v3, Lcom/narvii/model/ChatMessage;->type:I

    const/16 v4, 0x7d

    if-eq v3, v4, :cond_b

    :cond_a
    if-eqz p1, :cond_d

    iget-object v3, p1, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    if-eqz v3, :cond_d

    iget v3, v3, Lcom/narvii/model/ChatMessage;->type:I

    const/16 v4, 0x7e

    if-ne v3, v4, :cond_d

    .line 1680
    :cond_b
    iget-object v3, p1, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    if-eqz v3, :cond_c

    iget-object v3, v3, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    goto :goto_2

    :cond_c
    move-object v3, v1

    :goto_2
    iget-object v4, p1, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    invoke-direct {p0, v3, v4}, Lcom/narvii/chat/core/ChatService;->dispatchViewOnlyChange(Ljava/lang/String;Lcom/narvii/model/ChatMessage;)V

    :cond_d
    :goto_3
    if-eqz p1, :cond_e

    .line 1682
    iget-object v3, p1, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    if-eqz v3, :cond_e

    iget-object v3, v3, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    goto :goto_4

    :cond_e
    move-object v3, v1

    :goto_4
    if-eqz v3, :cond_f

    .line 1683
    iget-object v4, p0, Lcom/narvii/chat/core/ChatService;->guestThreadSet:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v4, 0x1

    goto :goto_5

    :cond_f
    const/4 v4, 0x0

    :goto_5
    if-eqz p1, :cond_12

    .line 1686
    iget v5, p1, Lcom/narvii/chat/util/ChatMessageDto;->ndcId:I

    invoke-virtual {p0, v5, p1}, Lcom/narvii/chat/core/ChatService;->dispatchGlobalOnNewMessage(ILcom/narvii/chat/util/ChatMessageDto;)V

    .line 1687
    iget-object v5, p1, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    if-eqz v5, :cond_10

    iget-object v1, v5, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    :cond_10
    invoke-direct {p0, v1, p1}, Lcom/narvii/chat/core/ChatService;->dispatchChatMessageListChange(Ljava/lang/String;Lcom/narvii/chat/util/ChatMessageDto;)V

    if-eqz v4, :cond_11

    .line 1688
    iget v1, p1, Lcom/narvii/chat/util/ChatMessageDto;->membershipStatus:I

    if-ne v1, v2, :cond_12

    .line 1689
    :cond_11
    iget v1, p1, Lcom/narvii/chat/util/ChatMessageDto;->ndcId:I

    invoke-virtual {p0, v1, p1}, Lcom/narvii/chat/core/ChatService;->dispatchNewMessageOnCommunityLevel(ILcom/narvii/chat/util/ChatMessageDto;)V

    .line 1692
    :cond_12
    invoke-virtual {p0, p1}, Lcom/narvii/chat/core/ChatService;->handleQuitMessage(Lcom/narvii/chat/util/ChatMessageDto;)V

    .line 1694
    iget-object v1, p1, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    iget v1, v1, Lcom/narvii/model/ChatMessage;->type:I

    const/16 v5, 0x77

    if-ne v1, v5, :cond_13

    const/4 v1, 0x1

    goto :goto_6

    :cond_13
    const/4 v1, 0x0

    .line 1695
    :goto_6
    iget v5, p1, Lcom/narvii/chat/util/ChatMessageDto;->membershipStatus:I

    if-eq v5, v2, :cond_14

    if-ne v5, p2, :cond_15

    :cond_14
    const/4 v0, 0x1

    :cond_15
    if-nez v4, :cond_16

    if-nez v1, :cond_16

    if-eqz v0, :cond_16

    .line 1698
    invoke-virtual {p0, p1}, Lcom/narvii/chat/core/ChatService;->updateThreadCheckTable(Lcom/narvii/chat/util/ChatMessageDto;)V

    goto :goto_7

    .line 1700
    :cond_16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Is guest role in this thread "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "websocket"

    invoke-static {p2, p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    :goto_7
    return-void
.end method

.method public final parseLinkFirst(Lcom/narvii/model/ChatMessage;)Z
    .locals 5

    if-eqz p1, :cond_0

    .line 1050
    iget v0, p1, Lcom/narvii/model/ChatMessage;->type:I

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1049
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->hasAttachment()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1050
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->hasLinkSnippet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1051
    iget-object v0, p1, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/UriUtils;->extractUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1052
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 1053
    iput-boolean v1, p1, Lcom/narvii/model/ChatMessage;->_linkParsing:Z

    .line 1054
    new-instance v2, Lcom/narvii/link/LinkSnippetHelper;

    invoke-virtual {p0}, Lcom/narvii/chat/core/ChatService;->getCurNvContext()Lcom/narvii/app/NVContext;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/narvii/link/LinkSnippetHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 1055
    new-instance v3, Lcom/narvii/chat/core/ChatService$LinkSnippetHandler;

    const-string v4, "link"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, p0, p1, v0, v2}, Lcom/narvii/chat/core/ChatService$LinkSnippetHandler;-><init>(Lcom/narvii/chat/core/ChatService;Lcom/narvii/model/ChatMessage;Ljava/lang/String;Lcom/narvii/link/LinkSnippetHelper;)V

    invoke-virtual {v2, v0, v3}, Lcom/narvii/link/LinkSnippetHelper;->getLinkSnippet(Ljava/lang/String;Lcom/narvii/link/LinkSnippetListener;)V

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final pause()V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/narvii/chat/core/ChatService;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 217
    iget v0, p0, Lcom/narvii/chat/core/ChatService;->curCid:I

    invoke-direct {p0, v0}, Lcom/narvii/chat/core/ChatService;->notificationCenter(I)Lcom/narvii/notification/NotificationCenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/narvii/notification/NotificationCenter;->unregisterListener(Lcom/narvii/notification/NotificationListener;)V

    return-void
.end method

.method public final photoManager$Amino_bundle()Lcom/narvii/photos/PhotoManager;
    .locals 2

    const/4 v0, 0x1

    .line 921
    iput-boolean v0, p0, Lcom/narvii/chat/core/ChatService;->photoTouched:Z

    .line 922
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->ctx:Lcom/narvii/app/NVContext;

    const-string/jumbo v1, "photo"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ctx.getService(\"photo\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/narvii/photos/PhotoManager;

    return-object v0
.end method

.method public final postMessage(ILcom/narvii/model/ChatMessage;)Lcom/narvii/model/ChatMessage;
    .locals 3

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 930
    :cond_0
    iget v0, p2, Lcom/narvii/model/ChatMessage;->clientRefId:I

    if-nez v0, :cond_1

    const-string/jumbo v0, "post message clientRefId = 0"

    .line 931
    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 933
    :cond_1
    iget-object v0, p2, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string/jumbo v0, "post message threadId = null"

    .line 934
    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 936
    :cond_2
    iput p1, p2, Lcom/narvii/model/ChatMessage;->_ndcId:I

    .line 937
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/core/ChatService;->sendChatRequest(ILcom/narvii/model/ChatMessage;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 939
    iget-object p1, p0, Lcom/narvii/chat/core/ChatService;->messages:Landroid/util/SparseArray;

    iget p2, p2, Lcom/narvii/model/ChatMessage;->clientRefId:I

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/ChatMessage;

    return-object p1

    .line 942
    :cond_3
    invoke-virtual {p2}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Lcom/narvii/model/ChatMessage;

    const/4 v1, 0x1

    .line 943
    iput v1, v0, Lcom/narvii/model/ChatMessage;->_status:I

    .line 944
    invoke-virtual {p0, v0}, Lcom/narvii/chat/core/ChatService;->storeOutboundMessage(Lcom/narvii/model/ChatMessage;)V

    .line 945
    invoke-direct {p0}, Lcom/narvii/chat/core/ChatService;->recordRecentMessage()V

    .line 947
    new-instance v1, Lcom/narvii/notification/Notification;

    const-string v2, "new"

    invoke-direct {v1, v2, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 948
    invoke-direct {p0, p1, v1}, Lcom/narvii/chat/core/ChatService;->sendNotification(ILcom/narvii/notification/Notification;)V

    .line 950
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 951
    iget-object v1, p2, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v0, v0}, Lcom/narvii/chat/core/ChatService;->updateThreadReadAndActivityTime(ILjava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    return-object p2

    .line 942
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.narvii.model.ChatMessage"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final postMessage(Lcom/narvii/model/ChatMessage;)Lcom/narvii/model/ChatMessage;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, p1, v1, v2}, Lcom/narvii/chat/core/ChatService;->postMessage$default(Lcom/narvii/chat/core/ChatService;ILcom/narvii/model/ChatMessage;ILjava/lang/Object;)Lcom/narvii/model/ChatMessage;

    move-result-object p1

    return-object p1
.end method

.method public final queryThreadCheckInfo(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/narvii/chat/core/ChatService;->queryThreadCheckInfo$default(Lcom/narvii/chat/core/ChatService;IZILjava/lang/Object;)V

    return-void
.end method

.method public final queryThreadCheckInfo(IZ)V
    .locals 1

    if-nez p2, :cond_0

    .line 657
    invoke-virtual {p0, p1}, Lcom/narvii/chat/core/ChatService;->isReadyToRequestThreadCheckForCurCommunity(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 658
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 659
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 660
    invoke-virtual {p0, v0, p2}, Lcom/narvii/chat/core/ChatService;->queryThreadCheckInfo(Ljava/util/Set;Z)V

    :cond_1
    return-void
.end method

.method public final queryThreadCheckInfo(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/narvii/chat/core/ChatService;->queryThreadCheckInfo$default(Lcom/narvii/chat/core/ChatService;Ljava/util/Set;ZILjava/lang/Object;)V

    return-void
.end method

.method public final queryThreadCheckInfo(Ljava/util/Set;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_a

    .line 666
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_3

    .line 671
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 672
    invoke-virtual {p0, v2}, Lcom/narvii/chat/core/ChatService;->isReadyToRequestThreadCheckForCurCommunity(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_2
    const/4 p2, 0x1

    :goto_0
    if-eqz p2, :cond_3

    return-void

    .line 682
    :cond_3
    iget-object p2, p0, Lcom/narvii/chat/core/ChatService;->ctx:Lcom/narvii/app/NVContext;

    const-string v2, "api"

    invoke-interface {p2, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const-string v2, "ctx.getService(\"api\")"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/narvii/util/http/ApiService;

    .line 683
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 684
    sget v3, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v4, 0x64

    if-ne v3, v4, :cond_4

    const-string v3, "0"

    .line 685
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1881
    :cond_4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 688
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_5

    const/4 v5, 0x1

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_6

    const/16 v5, 0x2c

    .line 689
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 691
    :cond_6
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 694
    :cond_7
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v3

    const-string v4, "/chat/thread-check/human-readable"

    invoke-virtual {v3, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->retry(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v3

    .line 695
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_8

    const/4 v0, 0x1

    :cond_8
    if-eqz v0, :cond_9

    .line 696
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ndcIds"

    invoke-virtual {v3, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 698
    :cond_9
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->communitiesIsRequestingThreadCheck:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 699
    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/core/ChatService;->threadCheckRequest:Lcom/narvii/util/http/ApiRequest;

    .line 700
    iget-object p1, p0, Lcom/narvii/chat/core/ChatService;->threadCheckRequest:Lcom/narvii/util/http/ApiRequest;

    new-instance v0, Lcom/narvii/chat/core/ChatService$queryThreadCheckInfo$2;

    const-class v1, Lcom/narvii/chat/core/GlobalThreadCheckResultMapResponse;

    invoke-direct {v0, p0, v1}, Lcom/narvii/chat/core/ChatService$queryThreadCheckInfo$2;-><init>(Lcom/narvii/chat/core/ChatService;Ljava/lang/Class;)V

    invoke-virtual {p2, p1, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    :cond_a
    :goto_3
    return-void
.end method

.method public final readDraft()V
    .locals 3

    .line 1574
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->drafts:Lcom/narvii/chat/core/ChatService$DraftMap;

    if-nez v0, :cond_0

    .line 1575
    new-instance v0, Lcom/narvii/chat/core/ChatService$DraftMap;

    invoke-direct {v0}, Lcom/narvii/chat/core/ChatService$DraftMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/core/ChatService;->drafts:Lcom/narvii/chat/core/ChatService$DraftMap;

    .line 1577
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->drafts:Lcom/narvii/chat/core/ChatService$DraftMap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1578
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->chatDraftPrefs:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const-string v2, "chat_draft"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1579
    const-class v1, Lcom/narvii/chat/core/ChatService$DraftMap;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/core/ChatService$DraftMap;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/narvii/chat/core/ChatService$DraftMap;

    invoke-direct {v0}, Lcom/narvii/chat/core/ChatService$DraftMap;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/narvii/chat/core/ChatService;->drafts:Lcom/narvii/chat/core/ChatService$DraftMap;

    :cond_2
    return-void
.end method

.method public final recallMessage(I)Z
    .locals 3

    .line 956
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->messages:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/ChatMessage;

    if-eqz v0, :cond_2

    .line 957
    invoke-virtual {p0, p1}, Lcom/narvii/chat/core/ChatService;->removeOutboundMessage(I)V

    .line 958
    iget v1, v0, Lcom/narvii/model/ChatMessage;->_status:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 964
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/core/ChatService;->recalledMessages:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0

    .line 960
    :cond_1
    invoke-virtual {p0, v0}, Lcom/narvii/chat/core/ChatService;->sendDeleteMessageRequest(Lcom/narvii/model/ChatMessage;)V

    .line 967
    :goto_0
    new-instance p1, Lcom/narvii/notification/Notification;

    const-string v1, "delete"

    invoke-direct {p1, v1, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 968
    invoke-direct {p0, v0}, Lcom/narvii/chat/core/ChatService;->getNdcIdFromMessage(Lcom/narvii/model/ChatMessage;)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/narvii/chat/core/ChatService;->sendNotification(ILcom/narvii/notification/Notification;)V

    return v2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final recordOutBoundCreatedTime(Lcom/narvii/model/ChatMessage;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1029
    iget-object v0, p1, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 1030
    iget-object v1, p0, Lcom/narvii/chat/core/ChatService;->outboundMessageCreateTime:Landroid/util/SparseArray;

    iget p1, p1, Lcom/narvii/model/ChatMessage;->clientRefId:I

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final refresh(Z)V
    .locals 2

    .line 620
    iget-object p1, p0, Lcom/narvii/chat/core/ChatService;->ctx:Lcom/narvii/app/NVContext;

    const-string v0, "affiliations"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/AffiliationsService;

    if-eqz p1, :cond_0

    .line 621
    invoke-virtual {p1}, Lcom/narvii/community/AffiliationsService;->getTimeStamp()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 623
    new-instance v1, Lcom/narvii/chat/core/ChatService$refresh$1;

    invoke-direct {v1, p0}, Lcom/narvii/chat/core/ChatService$refresh$1;-><init>(Lcom/narvii/chat/core/ChatService;)V

    invoke-virtual {p1, v0, v1}, Lcom/narvii/community/AffiliationsService;->refresh(ZLcom/narvii/util/Callback;)V

    :cond_1
    return-void
.end method

.method public final removeCommunityLevelReceptor(ILcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V
    .locals 1

    if-ltz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->communityLevelReceptors:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/EventDispatcher;

    if-eqz p1, :cond_1

    .line 304
    invoke-virtual {p1, p2}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final removeGlobalChatMessageReceptor(Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->globalLevelReceptors:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    return-void
.end method

.method public final removeGuestThreadId(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 745
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->guestThreadSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final removeInProcessUploadMedia(I)V
    .locals 1

    .line 1454
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->inProcessUploadMediaIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final removeLiveChannelPermissionListener(Ljava/lang/String;Lcom/narvii/chat/ThreadConfigChangeListener;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1832
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    return-void

    .line 1835
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->threadConfigDispatcher:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/EventDispatcher;

    if-eqz p1, :cond_3

    const-string/jumbo v0, "threadConfigDispatcher.get(threadId) ?: return"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1836
    invoke-virtual {p1, p2}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final removeOutboundMessage(I)V
    .locals 2

    .line 895
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->messages:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/ChatMessage;

    .line 896
    iget-object v1, p0, Lcom/narvii/chat/core/ChatService;->messages:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    if-eqz v0, :cond_0

    .line 898
    iget-object v1, p0, Lcom/narvii/chat/core/ChatService;->outboundMessagesNdcIdsMapper:Ljava/util/HashMap;

    iget v0, v0, Lcom/narvii/model/ChatMessage;->_ndcId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 899
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final removeThread(ILjava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 586
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    return-void

    .line 589
    :cond_2
    invoke-direct {p0, p1}, Lcom/narvii/chat/core/ChatService;->getCurCommunityThreadCheckInfos(I)Landroid/support/v4/util/ArrayMap;

    move-result-object v1

    .line 590
    invoke-virtual {v1, p2}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/chat/core/ThreadCheckInfo;

    if-eqz v2, :cond_4

    if-eqz v2, :cond_3

    .line 592
    invoke-virtual {v2}, Lcom/narvii/chat/core/ThreadCheckInfo;->hasUnreadMessage()Z

    move-result v0

    .line 593
    :cond_3
    invoke-virtual {v1, p2}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 595
    invoke-direct {p0, p1}, Lcom/narvii/chat/core/ChatService;->checkCurCommunityThreadCountChange(I)V

    :cond_4
    return-void
.end method

.method public final removeThreadLevelReceptor(Ljava/lang/String;Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 338
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    if-nez p2, :cond_2

    goto :goto_2

    .line 341
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->threadLevelReceptor:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/EventDispatcher;

    if-eqz p1, :cond_3

    const-string/jumbo v0, "threadLevelReceptor[threatId] ?: return"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    invoke-virtual {p1, p2}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final removeVideoMessagePostListener(Ljava/lang/String;Lcom/narvii/chat/core/ChatService$VideoMessageProgressChangeListener;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1786
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    return-void

    .line 1789
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->videoMessageProgressDispatcher:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/EventDispatcher;

    if-eqz p1, :cond_3

    const-string/jumbo v0, "videoMessageProgressDisp\u2026r.get(threadId) ?: return"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1790
    invoke-virtual {p1, p2}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final resume()V
    .locals 4

    .line 210
    iget v0, p0, Lcom/narvii/chat/core/ChatService;->curCid:I

    invoke-direct {p0, v0}, Lcom/narvii/chat/core/ChatService;->notificationCenter(I)Lcom/narvii/notification/NotificationCenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/narvii/notification/NotificationCenter;->registerListener(Lcom/narvii/notification/NotificationListener;)V

    .line 211
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/narvii/chat/core/ChatService;->receiver:Landroid/content/BroadcastReceiver;

    .line 212
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public final retryPost(I)V
    .locals 3

    .line 973
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->messages:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/ChatMessage;

    if-nez v0, :cond_0

    .line 975
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "retryPost fail, message not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    return-void

    .line 978
    :cond_0
    iget p1, v0, Lcom/narvii/model/ChatMessage;->_status:I

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const-string/jumbo p1, "retryPost fail, message status != STATUS_FAILED"

    .line 979
    invoke-static {p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    return-void

    .line 982
    :cond_1
    invoke-direct {p0, v0}, Lcom/narvii/chat/core/ChatService;->getNdcIdFromMessage(Lcom/narvii/model/ChatMessage;)I

    move-result p1

    .line 983
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/core/ChatService;->sendChatRequest(ILcom/narvii/model/ChatMessage;)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 987
    :cond_2
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Lcom/narvii/model/ChatMessage;

    const/4 v1, 0x1

    .line 988
    iput v1, v0, Lcom/narvii/model/ChatMessage;->_status:I

    .line 989
    invoke-virtual {p0, v0}, Lcom/narvii/chat/core/ChatService;->storeOutboundMessage(Lcom/narvii/model/ChatMessage;)V

    .line 991
    new-instance v1, Lcom/narvii/notification/Notification;

    const-string/jumbo v2, "update"

    invoke-direct {v1, v2, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 992
    invoke-direct {p0, p1, v1}, Lcom/narvii/chat/core/ChatService;->sendNotification(ILcom/narvii/notification/Notification;)V

    return-void

    .line 987
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.narvii.model.ChatMessage"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final sendChatMessageAck(ILcom/narvii/model/ChatMessage;Z)V
    .locals 1

    if-ltz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1618
    :cond_0
    new-instance v0, Lcom/narvii/chat/util/ChatMessageDto;

    invoke-direct {v0}, Lcom/narvii/chat/util/ChatMessageDto;-><init>()V

    .line 1619
    iput-object p2, v0, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 1620
    iput p1, v0, Lcom/narvii/chat/util/ChatMessageDto;->ndcId:I

    .line 1621
    invoke-virtual {p0, v0, p3}, Lcom/narvii/chat/core/ChatService;->sendChatMessageAck(Lcom/narvii/chat/util/ChatMessageDto;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final sendChatMessageAck(Lcom/narvii/chat/util/ChatMessageDto;Z)V
    .locals 12

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1625
    iget-object v1, p1, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_1

    return-void

    .line 1628
    :cond_1
    new-instance v1, Lcom/narvii/util/ws/WsRequest;

    invoke-direct {v1}, Lcom/narvii/util/ws/WsRequest;-><init>()V

    const/16 v2, 0x3e9

    .line 1629
    iput v2, v1, Lcom/narvii/util/ws/WsMessage;->type:I

    .line 1630
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v2

    .line 1631
    iget v3, p1, Lcom/narvii/chat/util/ChatMessageDto;->ndcId:I

    const-string v4, "ndcId"

    invoke-virtual {v2, v4, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 1632
    iget-object v3, p1, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    if-eqz v3, :cond_2

    iget-object v3, v3, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v3, v0

    :goto_1
    const-string/jumbo v4, "threadId"

    invoke-virtual {v2, v4, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 1633
    iget-object v3, p1, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    if-eqz v3, :cond_3

    iget-object v0, v3, Lcom/narvii/model/ChatMessage;->messageId:Ljava/lang/String;

    :cond_3
    const-string v3, "messageId"

    invoke-virtual {v2, v3, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v0, "markHasRead"

    .line 1634
    invoke-virtual {v2, v0, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 1635
    iget-object v0, p1, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    iget-object v0, v0, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    if-eqz v0, :cond_4

    .line 1636
    invoke-static {v0}, Lcom/narvii/util/DateTimeFormatter;->formatISO8601(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "createdTime"

    invoke-virtual {v2, v3, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 1638
    :cond_4
    iput-object v2, v1, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-eqz p2, :cond_5

    .line 1640
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

    .line 1642
    new-instance p2, Lcom/narvii/chat/core/ThreadUpdateObject;

    invoke-direct {p2}, Lcom/narvii/chat/core/ThreadUpdateObject;-><init>()V

    .line 1643
    new-instance v0, Lcom/narvii/model/ChatThread;

    invoke-direct {v0}, Lcom/narvii/model/ChatThread;-><init>()V

    .line 1644
    iget-object v2, p1, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    iget-object v3, v2, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    iput-object v3, v0, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 1645
    iget-object v2, v2, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    iput-object v2, v0, Lcom/narvii/model/ChatThread;->lastReadTime:Ljava/util/Date;

    .line 1646
    iput-object v0, p2, Lcom/narvii/chat/core/ThreadUpdateObject;->chatThread:Lcom/narvii/model/ChatThread;

    const/4 v0, 0x0

    .line 1647
    iput v0, p2, Lcom/narvii/chat/core/ThreadUpdateObject;->action:I

    .line 1648
    new-instance v0, Lcom/narvii/notification/Notification;

    const-string/jumbo v2, "update"

    invoke-direct {v0, v2, p2}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 1649
    iget p1, p1, Lcom/narvii/chat/util/ChatMessageDto;->ndcId:I

    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/core/ChatService;->sendNotification(ILcom/narvii/notification/Notification;)V

    .line 1651
    :cond_5
    iget-object p1, p0, Lcom/narvii/chat/core/ChatService;->ws:Lcom/narvii/util/ws/WsService;

    invoke-virtual {p1, v1}, Lcom/narvii/util/ws/WsService;->sendRequest(Lcom/narvii/util/ws/WsRequest;)V

    return-void
.end method

.method public final sendDeleteMessageRequest(Lcom/narvii/model/ChatMessage;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1066
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->delete()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 1067
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/chat/thread/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/message/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/narvii/model/ChatMessage;->messageId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/narvii/chat/core/ChatService;->getNdcIdFromMessage(Lcom/narvii/model/ChatMessage;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    .line 1068
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->ctx:Lcom/narvii/app/NVContext;

    const-string v1, "api"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ctx.getService(\"api\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 1069
    sget-object v1, Lcom/narvii/util/http/ApiResponseListener;->IGNORE_RESPONSE_LISTENER:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method public final setCurCid(I)V
    .locals 0

    .line 128
    iput p1, p0, Lcom/narvii/chat/core/ChatService;->curCid:I

    return-void
.end method

.method public final setCurCommunityContext(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/narvii/chat/core/ChatService;->curCommunityContext:Lcom/narvii/app/NVContext;

    return-void
.end method

.method public final setDraft(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "tid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1559
    invoke-static {p2}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1560
    iget-object p2, p0, Lcom/narvii/chat/core/ChatService;->drafts:Lcom/narvii/chat/core/ChatService$DraftMap;

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Lcom/narvii/chat/core/ChatService$DraftMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    .line 1562
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->drafts:Lcom/narvii/chat/core/ChatService$DraftMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/narvii/chat/core/ChatService$DraftMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1563
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->drafts:Lcom/narvii/chat/core/ChatService$DraftMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/narvii/chat/core/ChatService$DraftMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1565
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->drafts:Lcom/narvii/chat/core/ChatService$DraftMap;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :cond_2
    :goto_0
    return-void
.end method

.method public final setReadTime(Ljava/lang/String;J)V
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1499
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_8

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-gtz v3, :cond_2

    goto/16 :goto_3

    .line 1502
    :cond_2
    iget-object v1, p0, Lcom/narvii/chat/core/ChatService;->setLatestTid:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-wide v1, p0, Lcom/narvii/chat/core/ChatService;->setLatestTime:J

    cmp-long v3, p2, v1

    if-gtz v3, :cond_3

    return-void

    .line 1505
    :cond_3
    iput-object p1, p0, Lcom/narvii/chat/core/ChatService;->setLatestTid:Ljava/lang/String;

    .line 1506
    iput-wide p2, p0, Lcom/narvii/chat/core/ChatService;->setLatestTime:J

    .line 1508
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1509
    iget-object v2, p0, Lcom/narvii/chat/core/ChatService;->prefs:Landroid/content/SharedPreferences;

    const/4 v3, 0x0

    const-string v4, "lastReadTime"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1512
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x7c

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1513
    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1514
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 1516
    new-instance v6, Ljava/util/StringTokenizer;

    if-eqz v2, :cond_6

    const-string/jumbo v3, "|"

    invoke-direct {v6, v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x9

    if-ge v0, v3, :cond_7

    .line 1517
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1518
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 1519
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1520
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 1521
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1523
    :try_start_0
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v0, v7, p2

    if-ltz v0, :cond_5

    return-void

    .line 1530
    :cond_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1531
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "sb.append(`val`).append(\'|\')"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :catch_0
    :cond_5
    move v0, v2

    goto :goto_2

    .line 1516
    :cond_6
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    .line 1539
    :cond_7
    iget-object p1, p0, Lcom/narvii/chat/core/ChatService;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v4, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_8
    :goto_3
    return-void
.end method

.method public final storeDraft()V
    .locals 3

    .line 1570
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->chatDraftPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/core/ChatService;->drafts:Lcom/narvii/chat/core/ChatService$DraftMap;

    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "chat_draft"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final storeOutboundMessage(Lcom/narvii/model/ChatMessage;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 884
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->messages:Landroid/util/SparseArray;

    iget v1, p1, Lcom/narvii/model/ChatMessage;->clientRefId:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 885
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->outboundMessagesNdcIdsMapper:Ljava/util/HashMap;

    iget v1, p1, Lcom/narvii/model/ChatMessage;->_ndcId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_0

    .line 887
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 888
    iget-object v1, p0, Lcom/narvii/chat/core/ChatService;->outboundMessagesNdcIdsMapper:Ljava/util/HashMap;

    iget v2, p1, Lcom/narvii/model/ChatMessage;->_ndcId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    :cond_0
    iget p1, p1, Lcom/narvii/model/ChatMessage;->clientRefId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final updateLatestActivityTime(ILjava/lang/String;Ljava/util/Date;)V
    .locals 9

    if-ltz p1, :cond_5

    if-eqz p2, :cond_1

    .line 537
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_5

    if-nez p3, :cond_2

    goto :goto_2

    .line 541
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update latest activity time for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with time "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    invoke-direct {p0, p1}, Lcom/narvii/chat/core/ChatService;->getCurCommunityThreadCheckInfos(I)Landroid/support/v4/util/ArrayMap;

    move-result-object v0

    .line 543
    invoke-virtual {v0, p2}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/core/ThreadCheckInfo;

    if-nez v1, :cond_3

    .line 545
    new-instance p1, Lcom/narvii/chat/core/ThreadCheckInfo;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v2 .. v8}, Lcom/narvii/chat/core/ThreadCheckInfo;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 546
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 549
    :cond_3
    invoke-virtual {v1}, Lcom/narvii/chat/core/ThreadCheckInfo;->hasUnreadMessage()Z

    move-result p2

    .line 550
    invoke-virtual {v1}, Lcom/narvii/chat/core/ThreadCheckInfo;->getLatestActivityTime()Ljava/util/Date;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/narvii/chat/util/ChatHelperKt;->isNewer(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 551
    invoke-virtual {v1, p3}, Lcom/narvii/chat/core/ThreadCheckInfo;->setLatestActivityTime(Ljava/util/Date;)V

    .line 553
    :cond_4
    invoke-virtual {v1}, Lcom/narvii/chat/core/ThreadCheckInfo;->hasUnreadMessage()Z

    move-result p3

    xor-int/2addr p2, p3

    if-eqz p2, :cond_5

    .line 555
    invoke-direct {p0, p1}, Lcom/narvii/chat/core/ChatService;->checkCurCommunityThreadCountChange(I)V

    :cond_5
    :goto_2
    return-void
.end method

.method public final updateReadTime(ILjava/lang/String;Ljava/util/Date;ZLcom/narvii/model/ChatThread;)V
    .locals 3

    if-ltz p1, :cond_a

    if-eqz p2, :cond_1

    .line 501
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_a

    if-nez p3, :cond_2

    goto/16 :goto_4

    .line 505
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update read time for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with time "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    invoke-direct {p0, p1}, Lcom/narvii/chat/core/ChatService;->getCurCommunityThreadCheckInfos(I)Landroid/support/v4/util/ArrayMap;

    move-result-object v0

    .line 507
    invoke-virtual {v0, p2}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/core/ThreadCheckInfo;

    if-nez v1, :cond_6

    .line 509
    new-instance p4, Lcom/narvii/chat/core/ThreadCheckInfo;

    const/4 v1, 0x0

    if-eqz p5, :cond_3

    .line 510
    iget-object v2, p5, Lcom/narvii/model/ChatThread;->latestActivityTime:Ljava/util/Date;

    goto :goto_2

    :cond_3
    move-object v2, v1

    :goto_2
    if-eqz p5, :cond_4

    iget p5, p5, Lcom/narvii/model/ChatThread;->alertOption:I

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 509
    :cond_4
    invoke-direct {p4, p2, v2, p3, v1}, Lcom/narvii/chat/core/ThreadCheckInfo;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/Integer;)V

    .line 511
    invoke-interface {v0, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    invoke-virtual {p4}, Lcom/narvii/chat/core/ThreadCheckInfo;->hasUnreadMessage()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 514
    invoke-direct {p0, p1}, Lcom/narvii/chat/core/ChatService;->checkCurCommunityThreadCountChange(I)V

    :cond_5
    return-void

    .line 518
    :cond_6
    invoke-virtual {v1}, Lcom/narvii/chat/core/ThreadCheckInfo;->hasUnreadMessage()Z

    move-result p2

    if-eqz p4, :cond_7

    .line 520
    invoke-virtual {v1, p3}, Lcom/narvii/chat/core/ThreadCheckInfo;->setLastReadTime(Ljava/util/Date;)V

    goto :goto_3

    .line 522
    :cond_7
    invoke-virtual {v1}, Lcom/narvii/chat/core/ThreadCheckInfo;->getLastReadTime()Ljava/util/Date;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/narvii/chat/util/ChatHelperKt;->isNewer(Ljava/util/Date;Ljava/util/Date;)Z

    move-result p4

    if-eqz p4, :cond_8

    .line 523
    invoke-virtual {v1, p3}, Lcom/narvii/chat/core/ThreadCheckInfo;->setLastReadTime(Ljava/util/Date;)V

    :cond_8
    :goto_3
    if-eqz p5, :cond_9

    .line 527
    iget-object p3, p5, Lcom/narvii/model/ChatThread;->latestActivityTime:Ljava/util/Date;

    invoke-virtual {v1}, Lcom/narvii/chat/core/ThreadCheckInfo;->getLatestActivityTime()Ljava/util/Date;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/narvii/chat/util/ChatHelperKt;->isNewer(Ljava/util/Date;Ljava/util/Date;)Z

    move-result p3

    if-eqz p3, :cond_9

    .line 528
    iget-object p3, p5, Lcom/narvii/model/ChatThread;->latestActivityTime:Ljava/util/Date;

    invoke-virtual {v1, p3}, Lcom/narvii/chat/core/ThreadCheckInfo;->setLatestActivityTime(Ljava/util/Date;)V

    .line 530
    :cond_9
    invoke-virtual {v1}, Lcom/narvii/chat/core/ThreadCheckInfo;->hasUnreadMessage()Z

    move-result p3

    xor-int/2addr p2, p3

    if-eqz p2, :cond_a

    .line 532
    invoke-direct {p0, p1}, Lcom/narvii/chat/core/ChatService;->checkCurCommunityThreadCountChange(I)V

    :cond_a
    :goto_4
    return-void
.end method

.method public final updateThreadCheckTable(ILjava/util/List;Z)V
    .locals 6
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

    .line 399
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/chat/core/ChatService;->getCurCommunityThreadCheckInfos(I)Landroid/support/v4/util/ArrayMap;

    move-result-object v0

    .line 1877
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/ChatThread;

    .line 402
    iget-object v5, v4, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/narvii/chat/core/ChatService;->containGuestThreadId(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 403
    iget-object v5, v4, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/narvii/chat/core/ChatService;->removeGuestThreadId(Ljava/lang/String;)V

    .line 405
    :cond_1
    iget-object v5, v4, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/chat/core/ThreadCheckInfo;

    if-eqz v5, :cond_2

    .line 406
    invoke-virtual {v5}, Lcom/narvii/chat/core/ThreadCheckInfo;->hasUnreadMessage()Z

    move-result v5

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    .line 407
    :goto_1
    invoke-direct {p0, v0, v4}, Lcom/narvii/chat/core/ChatService;->updateThreadCheckInfo(Landroid/support/v4/util/ArrayMap;Lcom/narvii/model/ChatThread;)Lcom/narvii/chat/core/ThreadCheckInfo;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 408
    invoke-virtual {v4}, Lcom/narvii/chat/core/ThreadCheckInfo;->hasUnreadMessage()Z

    move-result v4

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    xor-int/2addr v4, v5

    or-int/2addr v3, v4

    goto :goto_0

    :cond_4
    if-eqz p3, :cond_7

    .line 412
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    .line 1879
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/ChatThread;

    .line 413
    iget-object v1, v1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 414
    :cond_5
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 415
    :cond_6
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 416
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 417
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 418
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    const/4 v3, 0x1

    goto :goto_4

    .line 423
    :cond_7
    invoke-direct {p0}, Lcom/narvii/chat/core/ChatService;->printCurrentThreadCheckTable()V

    if-eqz v3, :cond_8

    .line 425
    invoke-direct {p0, p1}, Lcom/narvii/chat/core/ChatService;->checkCurCommunityThreadCountChange(I)V

    :cond_8
    :goto_5
    return-void
.end method

.method public final updateThreadCheckTable(Lcom/narvii/chat/core/GlobalThreadCheckResultMapResponse;)V
    .locals 9

    if-eqz p1, :cond_0

    .line 369
    invoke-virtual {p1}, Lcom/narvii/chat/core/GlobalThreadCheckResultMapResponse;->getThreadCheckResultInCommunities()Ljava/util/HashMap;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 373
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/chat/core/GlobalThreadCheckResultMapResponse;->getThreadCheckResultInCommunities()Ljava/util/HashMap;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 1873
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 376
    iget-object v4, p0, Lcom/narvii/chat/core/ChatService;->unreadChatCountMapper:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 377
    invoke-direct {p0, v3}, Lcom/narvii/chat/core/ChatService;->getCurCommunityThreadCheckInfos(I)Landroid/support/v4/util/ArrayMap;

    move-result-object v5

    .line 1874
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v6, 0x0

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/narvii/chat/core/ThreadCheckInfo;

    .line 379
    invoke-direct {p0, v5, v7}, Lcom/narvii/chat/core/ChatService;->updateThreadCheckInfo(Landroid/support/v4/util/ArrayMap;Lcom/narvii/chat/core/ThreadCheckInfo;)Lcom/narvii/chat/core/ThreadCheckInfo;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 380
    invoke-virtual {v7}, Lcom/narvii/chat/core/ThreadCheckInfo;->hasUnreadMessage()Z

    move-result v7

    if-ne v7, v8, :cond_3

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    :goto_3
    add-int/2addr v6, v8

    goto :goto_2

    .line 382
    :cond_4
    iget-object v2, p0, Lcom/narvii/chat/core/ChatService;->unreadChatCountMapper:Landroid/util/SparseArray;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-nez v1, :cond_6

    if-nez v4, :cond_5

    goto :goto_4

    .line 383
    :cond_5
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v6, :cond_2

    :cond_6
    :goto_4
    const/4 v1, 0x1

    goto :goto_1

    :cond_7
    move v0, v1

    :cond_8
    if-eqz v0, :cond_9

    .line 386
    invoke-virtual {p0}, Lcom/narvii/chat/core/ChatService;->dispatchGlobalThreadCountChange()V

    .line 387
    sget p1, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v0, 0x65

    if-ne p1, v0, :cond_9

    .line 388
    iget-object p1, p0, Lcom/narvii/chat/core/ChatService;->ctx:Lcom/narvii/app/NVContext;

    const-string v0, "config"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 389
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/narvii/chat/core/ChatService;->dispatchUnreadCountChangeOnCommunityLevel(I)V

    :cond_9
    return-void
.end method

.method public final updateThreadCheckTable(Lcom/narvii/chat/util/ChatMessageDto;)V
    .locals 11

    if-eqz p1, :cond_6

    .line 432
    iget v0, p1, Lcom/narvii/chat/util/ChatMessageDto;->ndcId:I

    if-ltz v0, :cond_6

    iget-object v0, p1, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    if-eqz v0, :cond_6

    iget-boolean v0, v0, Lcom/narvii/model/ChatMessage;->includedInSummary:Z

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->myUid:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 436
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->ctx:Lcom/narvii/app/NVContext;

    const-string v1, "account"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    const-string v1, "accountService"

    .line 437
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/core/ChatService;->myUid:Ljava/lang/String;

    .line 439
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

    .line 440
    iget v1, p1, Lcom/narvii/chat/util/ChatMessageDto;->ndcId:I

    invoke-direct {p0, v1}, Lcom/narvii/chat/core/ChatService;->getCurCommunityThreadCheckInfos(I)Landroid/support/v4/util/ArrayMap;

    move-result-object v1

    .line 441
    iget-object v2, p1, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    iget-object v3, v2, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    .line 442
    iget-object v2, v2, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    .line 443
    invoke-virtual {v1, v2}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/chat/core/ThreadCheckInfo;

    if-nez v4, :cond_4

    .line 445
    new-instance v3, Lcom/narvii/chat/core/ThreadCheckInfo;

    .line 446
    iget-object v4, p1, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    iget-object v6, v4, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xc

    const/4 v10, 0x0

    move-object v4, v3

    move-object v5, v2

    .line 445
    invoke-direct/range {v4 .. v10}, Lcom/narvii/chat/core/ThreadCheckInfo;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    if-eqz v0, :cond_3

    .line 448
    iget-object v0, p1, Lcom/narvii/chat/util/ChatMessageDto;->chatMessage:Lcom/narvii/model/ChatMessage;

    iget-object v0, v0, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    invoke-virtual {v3, v0}, Lcom/narvii/chat/core/ThreadCheckInfo;->setLastReadTime(Ljava/util/Date;)V

    .line 450
    :cond_3
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    iget p1, p1, Lcom/narvii/chat/util/ChatMessageDto;->ndcId:I

    invoke-direct {p0, p1}, Lcom/narvii/chat/core/ChatService;->checkCurCommunityThreadCountChange(I)V

    return-void

    .line 454
    :cond_4
    invoke-virtual {v4}, Lcom/narvii/chat/core/ThreadCheckInfo;->hasUnreadMessage()Z

    move-result v1

    .line 455
    invoke-virtual {v4}, Lcom/narvii/chat/core/ThreadCheckInfo;->getLatestActivityTime()Ljava/util/Date;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/narvii/chat/util/ChatHelperKt;->isNewer(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 456
    invoke-virtual {v4, v3}, Lcom/narvii/chat/core/ThreadCheckInfo;->setLatestActivityTime(Ljava/util/Date;)V

    if-eqz v0, :cond_5

    .line 457
    invoke-virtual {v4}, Lcom/narvii/chat/core/ThreadCheckInfo;->getLastReadTime()Ljava/util/Date;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/narvii/chat/util/ChatHelperKt;->isNewer(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 458
    invoke-virtual {v4, v3}, Lcom/narvii/chat/core/ThreadCheckInfo;->setLastReadTime(Ljava/util/Date;)V

    .line 461
    :cond_5
    invoke-virtual {v4}, Lcom/narvii/chat/core/ThreadCheckInfo;->hasUnreadMessage()Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_6

    .line 463
    iget p1, p1, Lcom/narvii/chat/util/ChatMessageDto;->ndcId:I

    invoke-direct {p0, p1}, Lcom/narvii/chat/core/ChatService;->checkCurCommunityThreadCountChange(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method public final updateThreadReadAndActivityTime(ILjava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
    .locals 9

    if-ltz p1, :cond_6

    if-eqz p2, :cond_1

    .line 560
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_6

    if-nez p4, :cond_2

    goto/16 :goto_2

    .line 563
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update read time for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with time "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update latest activity time for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    invoke-direct {p0, p1}, Lcom/narvii/chat/core/ChatService;->getCurCommunityThreadCheckInfos(I)Landroid/support/v4/util/ArrayMap;

    move-result-object v0

    .line 566
    invoke-virtual {v0, p2}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/core/ThreadCheckInfo;

    if-nez v1, :cond_3

    .line 568
    new-instance p1, Lcom/narvii/chat/core/ThreadCheckInfo;

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p3

    invoke-direct/range {v2 .. v8}, Lcom/narvii/chat/core/ThreadCheckInfo;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 569
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 572
    :cond_3
    invoke-virtual {v1}, Lcom/narvii/chat/core/ThreadCheckInfo;->hasUnreadMessage()Z

    move-result p2

    .line 573
    invoke-virtual {v1}, Lcom/narvii/chat/core/ThreadCheckInfo;->getLatestActivityTime()Ljava/util/Date;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/narvii/chat/util/ChatHelperKt;->isNewer(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 574
    invoke-virtual {v1, p4}, Lcom/narvii/chat/core/ThreadCheckInfo;->setLatestActivityTime(Ljava/util/Date;)V

    .line 576
    :cond_4
    invoke-virtual {v1}, Lcom/narvii/chat/core/ThreadCheckInfo;->getLastReadTime()Ljava/util/Date;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/narvii/chat/util/ChatHelperKt;->isNewer(Ljava/util/Date;Ljava/util/Date;)Z

    move-result p4

    if-eqz p4, :cond_5

    .line 577
    invoke-virtual {v1, p3}, Lcom/narvii/chat/core/ThreadCheckInfo;->setLastReadTime(Ljava/util/Date;)V

    .line 579
    :cond_5
    invoke-virtual {v1}, Lcom/narvii/chat/core/ThreadCheckInfo;->hasUnreadMessage()Z

    move-result p3

    xor-int/2addr p2, p3

    if-eqz p2, :cond_6

    .line 581
    invoke-direct {p0, p1}, Lcom/narvii/chat/core/ChatService;->checkCurCommunityThreadCountChange(I)V

    :cond_6
    :goto_2
    return-void
.end method
