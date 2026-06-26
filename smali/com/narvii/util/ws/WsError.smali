.class public Lcom/narvii/util/ws/WsError;
.super Ljava/lang/Object;
.source "WsError.java"


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

    .line 12
    new-instance v0, Lcom/narvii/util/ws/WsError;

    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v1

    sget v2, Lcom/narvii/lib/R$string;->ws_error_not_connected:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Lcom/narvii/util/ws/WsError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/narvii/util/ws/WsError;->NO_CONNECTION:Lcom/narvii/util/ws/WsError;

    .line 13
    new-instance v0, Lcom/narvii/util/ws/WsError;

    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v1

    sget v2, Lcom/narvii/lib/R$string;->ws_error_connect_fail:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x2

    invoke-direct {v0, v2, v1}, Lcom/narvii/util/ws/WsError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/narvii/util/ws/WsError;->CONNECT_FAIL:Lcom/narvii/util/ws/WsError;

    .line 14
    new-instance v0, Lcom/narvii/util/ws/WsError;

    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v1

    sget v2, Lcom/narvii/lib/R$string;->ws_error_connection_lost:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x5

    invoke-direct {v0, v2, v1}, Lcom/narvii/util/ws/WsError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/narvii/util/ws/WsError;->CONNECTION_LOST:Lcom/narvii/util/ws/WsError;

    .line 15
    new-instance v0, Lcom/narvii/util/ws/WsError;

    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v1

    sget v2, Lcom/narvii/lib/R$string;->ws_error_request_timeout:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x9

    invoke-direct {v0, v2, v1}, Lcom/narvii/util/ws/WsError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/narvii/util/ws/WsError;->TIMEOUT:Lcom/narvii/util/ws/WsError;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Lcom/narvii/util/ws/WsError;->code:I

    .line 43
    iput-object p2, p0, Lcom/narvii/util/ws/WsError;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public code()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/narvii/util/ws/WsError;->code:I

    return v0
.end method

.method public isServerError()Z
    .locals 1

    .line 51
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

    .line 55
    iget-object v0, p0, Lcom/narvii/util/ws/WsError;->message:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 58
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WS_ERR ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/narvii/util/ws/WsError;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/narvii/util/ws/WsError;->message()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
