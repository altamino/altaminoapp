.class public Lcom/narvii/util/ws/WsError;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CHANGE_CHANNEL_JOIN_ROLE_NOT_MATCH:I = 0x6c

.field public static final CHANGE_CHANNEL_TYPE_NOT_MATCH:I = 0x6a

.field public static final CHANGE_CHANNEL_TYPE_NO_PERMISSION:I = 0x6b

.field public static final CONNECTION_LOST:Lcom/narvii/util/ws/WsError;

.field public static final CONNECT_FAIL:Lcom/narvii/util/ws/WsError;

.field public static final INTERNAL_SERVER_EXCEPTION:I = 0x1

.field public static final INVALID_LIVE_STREAM_ACTION:I = 0x72

.field public static final INVALID_LIVE_STREAM_TOPIC:I = 0x71

.field public static final NO_CONNECTION:Lcom/narvii/util/ws/WsError;

.field public static final NO_PRESENTERS:I = 0x6d

.field public static final THREAD_CHANNEL_USER_BUSY:I = 0x6f

.field public static final THREAD_CHANNEL_USER_NOT_ACTIVE:I = 0x70

.field public static final THREAD_MEMBERSHIP_NOT_ACTIVE:I = 0x66

.field public static final THREAD_MEMBERSHIP_NO_PERMISSION:I = 0x6e

.field public static final THREAD_NOT_AVAILABLE:I = 0x65

.field public static final TIMEOUT:Lcom/narvii/util/ws/WsError;

.field public static final TOO_MANY_PRESENTERS:I = 0x69

.field public static final TOO_MANY_PRESENTERS_IN_SCREENING_ROOM:I = 0x74

.field public static final UPDATE_PLAY_LIST_NO_PERMISSION:I = 0x73

.field public static final USER_PROFILE_NOT_AVAILABLE:I = 0x67

.field public static final VV_CHAT_CLOSED:I = 0x75


# instance fields
.field public code:I

.field public message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/ws/WsError;

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    sget v2, Lcom/narvii/lib/R$string;->ws_error_not_connected:I

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    const/4 v2, -0x1

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v2, v1}, Lcom/narvii/util/ws/WsError;-><init>(ILjava/lang/String;)V

    .line 17
    .line 18
    sput-object v0, Lcom/narvii/util/ws/WsError;->NO_CONNECTION:Lcom/narvii/util/ws/WsError;

    .line 19
    .line 20
    new-instance v0, Lcom/narvii/util/ws/WsError;

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    sget v2, Lcom/narvii/lib/R$string;->ws_error_connect_fail:I

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    const/4 v2, -0x2

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, v2, v1}, Lcom/narvii/util/ws/WsError;-><init>(ILjava/lang/String;)V

    .line 35
    .line 36
    sput-object v0, Lcom/narvii/util/ws/WsError;->CONNECT_FAIL:Lcom/narvii/util/ws/WsError;

    .line 37
    .line 38
    new-instance v0, Lcom/narvii/util/ws/WsError;

    .line 39
    .line 40
    .line 41
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    sget v2, Lcom/narvii/lib/R$string;->ws_error_connection_lost:I

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 48
    move-result-object v1

    .line 49
    const/4 v2, -0x5

    .line 50
    .line 51
    .line 52
    invoke-direct {v0, v2, v1}, Lcom/narvii/util/ws/WsError;-><init>(ILjava/lang/String;)V

    .line 53
    .line 54
    sput-object v0, Lcom/narvii/util/ws/WsError;->CONNECTION_LOST:Lcom/narvii/util/ws/WsError;

    .line 55
    .line 56
    new-instance v0, Lcom/narvii/util/ws/WsError;

    .line 57
    .line 58
    .line 59
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 60
    move-result-object v1

    .line 61
    .line 62
    sget v2, Lcom/narvii/lib/R$string;->ws_error_request_timeout:I

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 66
    move-result-object v1

    .line 67
    .line 68
    const/16 v2, -0x9

    .line 69
    .line 70
    .line 71
    invoke-direct {v0, v2, v1}, Lcom/narvii/util/ws/WsError;-><init>(ILjava/lang/String;)V

    .line 72
    .line 73
    sput-object v0, Lcom/narvii/util/ws/WsError;->TIMEOUT:Lcom/narvii/util/ws/WsError;

    .line 74
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/narvii/util/ws/WsError;->code:I

    iput-object p2, p0, Lcom/narvii/util/ws/WsError;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public code()I
    .locals 1

    iget v0, p0, Lcom/narvii/util/ws/WsError;->code:I

    return v0
.end method

.method public isServerError()Z
    .locals 1

    iget v0, p0, Lcom/narvii/util/ws/WsError;->code:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public message()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/ws/WsError;->message:Ljava/lang/String;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    const-string v1, "WS_ERR ("

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    iget v1, p0, Lcom/narvii/util/ws/WsError;->code:I

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v1, ")"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/util/ws/WsError;->message()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
