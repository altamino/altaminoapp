.class public Lcom/narvii/pushservice/PushPayload;
.super Ljava/lang/Object;
.source "PushPayload.java"


# static fields
.field public static final CALL_TYPE_AVATAR:I = 0x3

.field public static final CALL_TYPE_NONE:I = 0x0

.field public static final CALL_TYPE_SCREEN_ROOM:I = 0x4

.field public static final CALL_TYPE_VIDEO:I = 0x2

.field public static final CALL_TYPE_VOICE:I = 0x1

.field public static final NOTIFICATION_TYPE_CANCEL_VV_CHAT:I = 0x27

.field public static final NOTIFICATION_TYPE_CHAT_ADD_CO_HOST:I = 0x43

.field public static final NOTIFICATION_TYPE_CHAT_REMOVE_CO_HOST:I = 0x44

.field public static final NOTIFICATION_TYPE_CREATE_AUDIO_CHAT:I = 0x1f

.field public static final NOTIFICATION_TYPE_CREATE_AVATAR_CHAT:I = 0x23

.field public static final NOTIFICATION_TYPE_CREATE_SCREENING_ROOM:I = 0x26

.field public static final NOTIFICATION_TYPE_CREATE_VIDEO_CHAT:I = 0x20

.field public static final NOTIFICATION_TYPE_GET_COINS_BY_WATCHING_ADS:I = 0x33

.field public static final NOTIFICATION_TYPE_INVITE_AUDIO_CHAT:I = 0x1d

.field public static final NOTIFICATION_TYPE_INVITE_AVATAR_CHAT:I = 0x22

.field public static final NOTIFICATION_TYPE_INVITE_SCREENING_ROOM:I = 0x25

.field public static final NOTIFICATION_TYPE_INVITE_VIDEO_CHAT:I = 0x1e

.field public static final NOTIFICATION_TYPE_ORGANIZER_TRANSFER_REQUEST_ACCEPTED:I = 0x36

.field public static final NOTIFICATION_TYPE_ORGANIZER_TRANSFER_REQUEST_RECEIVED:I = 0x35

.field public static final NOTIFICATION_TYPE_P2A_TASK_FINISHED:I = 0x32

.field public static final NOTIFICATION_TYPE_VV_CHAT_PRESENTER_INVITE:I = 0x42

.field public static final PUSH_NOTIFICATION_PIC_TYPE_COMMUNITY_ICON:I = 0x2

.field public static final PUSH_NOTIFICATION_PIC_TYPE_NORMAL:I = 0x0

.field public static final PUSH_NOTIFICATION_PIC_TYPE_USER_PROFILE_ICON:I = 0x1

.field public static final TYPE_CHAT_MESSAGE_RECEIVED:I = 0x12

.field public static final TYPE_CHAT_MESSAGE_TYPING:I = 0x13

.field public static final TYPE_CHAT_THREAD_INVITE_RECEIVED:I = 0x15

.field public static final TYPE_CHAT_THREAD_JOIN_REQUEST_APPROVED:I = 0x17

.field public static final TYPE_CHAT_THREAD_JOIN_REQUEST_RECEIVED:I = 0x16

.field public static final TYPE_CHAT_THREAD_USER_OBSERVING:I = 0x14

.field public static final TYPE_COMMENT:I = 0x3

.field public static final TYPE_COMMENT_QUOTED:I = 0x4

.field public static final TYPE_POLL_ENDED_CONTESTANT:I = 0x11

.field public static final TYPE_POLL_ENDED_GENERAL:I = 0xf

.field public static final TYPE_POLL_ENDED_OWNER:I = 0x10

.field public static final TYPE_POLL_OPTION_ADDED:I = 0xc

.field public static final TYPE_POLL_OPTION_APPROVED:I = 0xd

.field public static final TYPE_POLL_OPTION_VOTED_UP:I = 0xe

.field public static final TYPE_REPLY:I = 0x7

.field public static final TYPE_REPLY_QUOTED:I = 0x8

.field public static final TYPE_REPOST:I = 0xb

.field public static final TYPE_RESERVED:I = 0x0

.field public static final TYPE_TOPIC_MEMBERSHIP:I = 0x5

.field public static final TYPE_TOPIC_MEMBERSHIP_INVITATION:I = 0x6

.field public static final TYPE_USER_MEMBERSHIP:I = 0x1

.field public static final TYPE_USER_MEMBERSHIP_INVITATION:I = 0x2

.field public static final TYPE_VOTE_DOWN:I = 0xa

.field public static final TYPE_VOTE_UP:I = 0x9


# instance fields
.field public aps:Lcom/narvii/pushservice/PushAPS;

.field public community:Lcom/narvii/model/Community;

.field public expireTime:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "exp"
    .end annotation
.end field

.field public ext:Lcom/fasterxml/jackson/databind/node/ObjectNode;

.field public fromUser:Lcom/narvii/model/User;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "userProfile"
    .end annotation
.end field

.field public id:Ljava/lang/String;

.field public minVersion:Lcom/narvii/pushservice/PayloadVersion;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "cv"
    .end annotation
.end field

.field public msgType:I

.field public ndcId:I

.field public nickname:Ljava/lang/String;

.field picDownloaded:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation
.end field

.field picFull:Landroid/graphics/Bitmap;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation
.end field

.field picIcon:Landroid/graphics/Bitmap;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation
.end field

.field public picType:I

.field public picUrl:Ljava/lang/String;

.field public threadId:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "tid"
    .end annotation
.end field

.field public threadTime:Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "ts"
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/narvii/util/JacksonUtils$DateDeserializer;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        using = Lcom/narvii/util/JacksonUtils$DateSerializer;
    .end annotation
.end field

.field public threadType:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "ttype"
    .end annotation
.end field

.field public trackId:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "t"
    .end annotation
.end field

.field public type:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "notifType"
    .end annotation
.end field

.field public uid:Ljava/lang/String;

.field public url:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "u"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 123
    iput v0, p0, Lcom/narvii/pushservice/PushPayload;->threadType:I

    return-void
.end method


# virtual methods
.method public clone()Lcom/narvii/pushservice/PushPayload;
    .locals 2

    .line 206
    invoke-static {p0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 207
    const-class v1, Lcom/narvii/pushservice/PushPayload;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/pushservice/PushPayload;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 24
    invoke-virtual {p0}, Lcom/narvii/pushservice/PushPayload;->clone()Lcom/narvii/pushservice/PushPayload;

    move-result-object v0

    return-object v0
.end method

.method public getPayloadCallType()I
    .locals 5

    .line 213
    iget v0, p0, Lcom/narvii/pushservice/PushPayload;->type:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/16 v4, 0x12

    if-ne v0, v4, :cond_5

    .line 214
    iget v0, p0, Lcom/narvii/pushservice/PushPayload;->msgType:I

    const/16 v4, 0x36

    if-eq v0, v4, :cond_4

    const/16 v4, 0x35

    if-eq v0, v4, :cond_4

    const/16 v4, 0x34

    if-ne v0, v4, :cond_0

    goto :goto_1

    :cond_0
    const/16 v3, 0x38

    if-eq v0, v3, :cond_3

    const/16 v3, 0x39

    if-eq v0, v3, :cond_3

    const/16 v3, 0x37

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0x3b

    if-eq v0, v2, :cond_2

    const/16 v2, 0x3c

    if-eq v0, v2, :cond_2

    const/16 v2, 0x3a

    if-ne v0, v2, :cond_9

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v2

    :cond_4
    :goto_1
    return v3

    :cond_5
    const/16 v4, 0x1f

    if-eq v0, v4, :cond_d

    const/16 v4, 0x1d

    if-ne v0, v4, :cond_6

    goto :goto_5

    :cond_6
    const/16 v3, 0x20

    if-eq v0, v3, :cond_c

    const/16 v3, 0x1e

    if-ne v0, v3, :cond_7

    goto :goto_4

    :cond_7
    const/16 v2, 0x23

    if-eq v0, v2, :cond_b

    const/16 v2, 0x22

    if-ne v0, v2, :cond_8

    goto :goto_3

    :cond_8
    const/16 v1, 0x26

    if-eq v0, v1, :cond_a

    const/16 v1, 0x25

    if-ne v0, v1, :cond_9

    goto :goto_2

    :cond_9
    const/4 v0, 0x0

    return v0

    :cond_a
    :goto_2
    const/4 v0, 0x4

    return v0

    :cond_b
    :goto_3
    return v1

    :cond_c
    :goto_4
    return v2

    :cond_d
    :goto_5
    return v3
.end method

.method public getUri()Landroid/net/Uri;
    .locals 4

    const/4 v0, 0x0

    .line 160
    :try_start_0
    iget-object v1, p0, Lcom/narvii/pushservice/PushPayload;->url:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/narvii/pushservice/PushPayload;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to parse notification url "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/narvii/pushservice/PushPayload;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    if-nez v0, :cond_4

    .line 167
    invoke-virtual {p0}, Lcom/narvii/pushservice/PushPayload;->isChat()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 168
    iget-object v1, p0, Lcom/narvii/pushservice/PushPayload;->threadId:Ljava/lang/String;

    const-string v2, "ndc://x"

    const/16 v3, 0x64

    if-nez v1, :cond_2

    .line 169
    sget v0, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    if-ne v0, v3, :cond_1

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/narvii/pushservice/PushPayload;->ndcId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/my-chats"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, "ndc://my-chats"

    .line 172
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    .line 176
    :cond_2
    :try_start_1
    sget v1, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    if-ne v1, v3, :cond_3

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/narvii/pushservice/PushPayload;->ndcId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/chat-thread/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/pushservice/PushPayload;->threadId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    .line 179
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ndc://chat-thread/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/pushservice/PushPayload;->threadId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_4
    :goto_1
    return-object v0
.end method

.method public isCallCancelMessage()Z
    .locals 2

    .line 252
    iget v0, p0, Lcom/narvii/pushservice/PushPayload;->type:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/narvii/pushservice/PushPayload;->msgType:I

    const/16 v1, 0x35

    if-eq v0, v1, :cond_0

    const/16 v1, 0x38

    if-eq v0, v1, :cond_0

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCallInviteType()Z
    .locals 2

    .line 242
    iget v0, p0, Lcom/narvii/pushservice/PushPayload;->type:I

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isChat()Z
    .locals 2

    .line 149
    iget v0, p0, Lcom/narvii/pushservice/PushPayload;->type:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    const/16 v1, 0x17

    if-le v0, v1, :cond_2

    :cond_0
    iget v0, p0, Lcom/narvii/pushservice/PushPayload;->type:I

    const/16 v1, 0x35

    if-eq v0, v1, :cond_2

    const/16 v1, 0x36

    if-eq v0, v1, :cond_2

    const/16 v1, 0x42

    if-eq v0, v1, :cond_2

    const/16 v1, 0x43

    if-eq v0, v1, :cond_2

    const/16 v1, 0x44

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isCurrenVersionPush(Landroid/content/Context;)Z
    .locals 3

    .line 276
    iget-object v0, p0, Lcom/narvii/pushservice/PushPayload;->minVersion:Lcom/narvii/pushservice/PayloadVersion;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/narvii/pushservice/PayloadVersion;->android:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/narvii/pushservice/PushPayload;->minVersion:Lcom/narvii/pushservice/PayloadVersion;

    iget-object v0, v0, Lcom/narvii/pushservice/PayloadVersion;->android:Ljava/lang/String;

    .line 280
    new-instance v2, Lcom/narvii/util/PackageUtils;

    invoke-direct {v2, p1}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 281
    invoke-virtual {v2}, Lcom/narvii/util/PackageUtils;->getVersionName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/narvii/util/PackageUtils;->compareVersionName(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method public isDeclineMessage()Z
    .locals 2

    .line 258
    iget v0, p0, Lcom/narvii/pushservice/PushPayload;->type:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/narvii/pushservice/PushPayload;->msgType:I

    const/16 v1, 0x36

    if-eq v0, v1, :cond_0

    const/16 v1, 0x39

    if-eq v0, v1, :cond_0

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMarketing()Z
    .locals 2

    .line 145
    iget v0, p0, Lcom/narvii/pushservice/PushPayload;->type:I

    if-eqz v0, :cond_1

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isPropTaskFinishType()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isScreenRoomType()Z
    .locals 2

    .line 248
    iget v0, p0, Lcom/narvii/pushservice/PushPayload;->type:I

    const/16 v1, 0x26

    if-eq v0, v1, :cond_1

    const/16 v1, 0x25

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isTimeoutMessage()Z
    .locals 2

    .line 264
    iget v0, p0, Lcom/narvii/pushservice/PushPayload;->type:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/narvii/pushservice/PushPayload;->msgType:I

    const/16 v1, 0x37

    if-eq v0, v1, :cond_0

    const/16 v1, 0x34

    if-eq v0, v1, :cond_0

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public message(Lcom/narvii/app/NVContext;)Ljava/lang/String;
    .locals 4

    .line 190
    iget-object v0, p0, Lcom/narvii/pushservice/PushPayload;->aps:Lcom/narvii/pushservice/PushAPS;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/narvii/pushservice/PushAPS;->message:Ljava/lang/String;

    .line 191
    :goto_0
    iget v1, p0, Lcom/narvii/pushservice/PushPayload;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/narvii/pushservice/PushPayload;->nickname:Ljava/lang/String;

    .line 192
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 193
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/narvii/pushservice/R$string;->pushservice_following_message:I

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/narvii/pushservice/PushPayload;->nickname:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public title()Ljava/lang/String;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/narvii/pushservice/PushPayload;->aps:Lcom/narvii/pushservice/PushAPS;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/narvii/pushservice/PushAPS;->title:Ljava/lang/String;

    :goto_0
    return-object v0
.end method
