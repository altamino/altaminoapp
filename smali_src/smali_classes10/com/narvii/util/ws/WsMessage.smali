.class public Lcom/narvii/util/ws/WsMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AGORA_TOKEN_REQUEST:I = 0xc8

.field public static final AGORA_TOKEN_RESPONSE:I = 0xc9

.field public static final CHAT_MESSAGE_ACK_DTO:I = 0x3e9

.field public static final CHAT_MESSAGE_DTO:I = 0x3e8

.field public static final CHAT_THREAD_MEMBERSHIP_BANNED:I = 0x5

.field public static final CHAT_THREAD_NOT_AVAILABLE:I = 0x3

.field public static final CHAT_THREAD_NO_PRESENTER:I = 0x6

.field public static final CHAT_THREAD_ORGANIZER_LEFT:I = 0x2

.field public static final CHAT_THREAD_PRIVATE_NOT_ACCEPT:I = 0x63

.field public static final COMMUNITY_DISABLED:I = 0x1

.field public static final ERROR_MESSAGE:I = 0x1

.field public static final FETCH_PLAY_LIST_REQUEST:I = 0x7a

.field public static final FETCH_THREAD_CHANNEL_USER_LIST_REQUEST:I = 0x69

.field public static final FORCE_UPDATE_USER_ROLE_MESSAGE:I = 0x80

.field public static final FORCE_UPDATE_USER_ROLE_REQ:I = 0x7e

.field public static final FORCE_UPDATE_USER_ROLE_RESP:I = 0x7f

.field public static final JOIN_THREAD_CHANNEL_REQUEST:I = 0x64

.field public static final JOIN_THREAD_CHANNEL_RESPONSE:I = 0x65

.field public static final LEAVE_THREAD_CHANNEL_REQUEST:I = 0x67

.field public static final LEAVE_THREAD_CHANNEL_RESPONSE:I = 0x68

.field public static final LIVE_LAYER_USER_JOINED_EVENT:I = 0x190

.field public static final LIVE_LAYER_USER_LEFT_EVENT:I = 0x191

.field public static final MULTI_DEVICE_ERROR:I = 0x76

.field public static final REPORT_LIVE_LAYER_ACTIVE_REQUEST:I = 0x130

.field public static final REPORT_LIVE_LAYER_ACTIVE_RESPONSE:I = 0x131

.field public static final REPORT_LIVE_LAYER_INACTIVE_REQUEST:I = 0x132

.field public static final REPORT_LIVE_LAYER_INACTIVE_RESPONSE:I = 0x133

.field public static final SCREEN_RROM_PLAY_LIST_RESPONSE:I = 0x77

.field public static final SUBSCRIBE_LIVE_LAYER_REQUEST:I = 0x12c

.field public static final SUBSCRIBE_LIVE_LAYER_RESPONSE:I = 0x12d

.field public static final THREAD_CHANNEL_FORCE_QUIT_MESSAGE:I = 0x73

.field public static final THREAD_CHANNEL_USER_JOINED_MESSAGE:I = 0x6a

.field public static final THREAD_CHANNEL_USER_LEFT_MESSAGE:I = 0x6b

.field public static final THREAD_CHANNEL_USER_LIST_MESSAGE:I = 0x66

.field public static final THREAD_CHANNEL_USER_PING_REQUEST:I = 0x74

.field public static final THREAD_CHANNEL_USER_PING_RESPONSE:I = 0x75

.field public static final THREAD_CHANNEL_USER_STATUS_CHANGED_MESSAGE:I = 0x72

.field public static final THREAD_STATUS_CHANGED_MESSAGE:I = 0x6f

.field public static final THREAD_WAIT_LIST_APPROVE_MESSAGE:I = 0x82

.field public static final THREAD_WAIT_LIST_CHANGED_MESSAGE:I = 0x83

.field public static final THREAD_WAIT_LIST_CLEAN_REQUEST:I = 0x84

.field public static final THREAD_WAIT_LIST_CLEAN_RESPONSE:I = 0x85

.field public static final THREAD_WAIT_LIST_JOIN_APPROVE_REQUEST:I = 0x86

.field public static final THREAD_WAIT_LIST_JOIN_APPROVE_RESPONSE:I = 0x87

.field public static final THREAD_WAIT_LIST_JOIN_CANCEL_REQUEST:I = 0x88

.field public static final THREAD_WAIT_LIST_JOIN_CANCEL_RESPENSE:I = 0x89

.field public static final THREAD_WAIT_LIST_JOIN_REQUEST:I = 0x8a

.field public static final THREAD_WAIT_LIST_JOIN_RESPONSE:I = 0x8b

.field public static final UNSUBSCRIBE_LIVE_LAYER_REQUEST:I = 0x12e

.field public static final UNSUBSCRIBE_LIVE_LAYER_RESPONSE:I = 0x12f

.field public static final UPDATE_PLAY_LIST_REQUEST:I = 0x78

.field public static final UPDATE_PLAY_LIST_RESPONSE:I = 0x79

.field public static final UPDATE_THREAD_CHANNEL_REQUEST:I = 0x6c

.field public static final UPDATE_THREAD_CHANNEL_RESPONSE:I = 0x6d

.field public static final UPDATE_USER_ROLE_REQUEST:I = 0x70

.field public static final UPDATE_USER_ROLE_RESPONSE:I = 0x71

.field public static final USER_PROFILE_BANNED:I = 0x4

.field private static final idc:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public object:Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "o"
    .end annotation
.end field

.field public tag:Ljava/lang/Object;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation
.end field

.field public type:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "t"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/narvii/util/ws/WsMessage;->idc:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method private static newId()Ljava/lang/String;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    sget-object v2, Lcom/narvii/util/ws/WsMessage;->idc:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 10
    move-result v2

    .line 11
    int-to-long v2, v2

    .line 12
    add-long/2addr v0, v2

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method


# virtual methods
.method public genId()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 13
    .line 14
    const-string v1, "id"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lcom/narvii/util/ws/WsMessage;->newId()Ljava/lang/String;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 30
    :cond_1
    return-void
.end method

.method public id()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 3
    .line 4
    const-string v1, "id"

    .line 5
    .line 6
    .line 7
    filled-new-array {v1}, [Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
