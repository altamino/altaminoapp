.class public Lcom/narvii/pushservice/PushPayload;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/pushservice/PushPayload;->threadType:I

    .line 7
    return-void
.end method


# virtual methods
.method public clone()Lcom/narvii/pushservice/PushPayload;
    .locals 2

    .line 2
    invoke-static {p0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

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

    .line 1
    invoke-virtual {p0}, Lcom/narvii/pushservice/PushPayload;->clone()Lcom/narvii/pushservice/PushPayload;

    move-result-object v0

    return-object v0
.end method

.method public getPayloadCallType()I
    .locals 5

    iget v0, p0, Lcom/narvii/pushservice/PushPayload;->type:I

    const/16 v1, 0x12

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/narvii/pushservice/PushPayload;->msgType:I

    const/16 v1, 0x36

    if-eq v0, v1, :cond_4

    const/16 v1, 0x35

    if-eq v0, v1, :cond_4

    const/16 v1, 0x34

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, 0x38

    if-eq v0, v1, :cond_3

    const/16 v1, 0x39

    if-eq v0, v1, :cond_3

    const/16 v1, 0x37

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x3b

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_9

    :cond_2
    return v4

    :cond_3
    :goto_0
    return v3

    :cond_4
    :goto_1
    return v2

    :cond_5
    const/16 v1, 0x1f

    if-eq v0, v1, :cond_d

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_6

    goto :goto_5

    :cond_6
    const/16 v1, 0x20

    if-eq v0, v1, :cond_c

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_7

    goto :goto_4

    :cond_7
    const/16 v1, 0x23

    if-eq v0, v1, :cond_b

    const/16 v1, 0x22

    if-ne v0, v1, :cond_8

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
    return v4

    :cond_c
    :goto_4
    return v3

    :cond_d
    :goto_5
    return v2
.end method

.method public getUri()Landroid/net/Uri;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/narvii/pushservice/PushPayload;->url:Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 9
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception v1

    .line 12
    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    const-string v3, "fail to parse notification url "

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    iget-object v3, p0, Lcom/narvii/pushservice/PushPayload;->url:Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    .line 33
    invoke-static {v2, v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    .line 35
    :cond_0
    :goto_0
    if-nez v0, :cond_4

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/narvii/pushservice/PushPayload;->isChat()Z

    .line 39
    move-result v1

    .line 40
    .line 41
    if-eqz v1, :cond_4

    .line 42
    .line 43
    iget-object v1, p0, Lcom/narvii/pushservice/PushPayload;->threadId:Ljava/lang/String;

    .line 44
    .line 45
    const-string v2, "ndc://x"

    .line 46
    .line 47
    const/16 v3, 0x64

    .line 48
    .line 49
    if-nez v1, :cond_2

    .line 50
    .line 51
    sget v0, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    .line 52
    .line 53
    if-ne v0, v3, :cond_1

    .line 54
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    iget v1, p0, Lcom/narvii/pushservice/PushPayload;->ndcId:I

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v1, "/my-chats"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    .line 78
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 79
    move-result-object v0

    .line 80
    goto :goto_1

    .line 81
    .line 82
    :cond_1
    const-string v0, "ndc://my-chats"

    .line 83
    .line 84
    .line 85
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 86
    move-result-object v0

    .line 87
    goto :goto_1

    .line 88
    .line 89
    :cond_2
    :try_start_1
    sget v1, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    .line 90
    .line 91
    if-ne v1, v3, :cond_3

    .line 92
    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    iget v2, p0, Lcom/narvii/pushservice/PushPayload;->ndcId:I

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    const-string v2, "/chat-thread/"

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    iget-object v2, p0, Lcom/narvii/pushservice/PushPayload;->threadId:Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    move-result-object v1

    .line 119
    .line 120
    .line 121
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 122
    move-result-object v0

    .line 123
    goto :goto_1

    .line 124
    .line 125
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    const-string v2, "ndc://chat-thread/"

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    iget-object v2, p0, Lcom/narvii/pushservice/PushPayload;->threadId:Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    move-result-object v1

    .line 143
    .line 144
    .line 145
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 146
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 147
    :catch_1
    :cond_4
    :goto_1
    return-object v0
.end method

.method public isCallCancelMessage()Z
    .locals 2

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

    iget v0, p0, Lcom/narvii/pushservice/PushPayload;->type:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    const/16 v1, 0x17

    if-le v0, v1, :cond_2

    :cond_0
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/pushservice/PushPayload;->minVersion:Lcom/narvii/pushservice/PayloadVersion;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, v0, Lcom/narvii/pushservice/PayloadVersion;->android:Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/narvii/pushservice/PushPayload;->minVersion:Lcom/narvii/pushservice/PayloadVersion;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/narvii/pushservice/PayloadVersion;->android:Ljava/lang/String;

    .line 19
    .line 20
    new-instance v2, Lcom/narvii/util/PackageUtils;

    .line 21
    .line 22
    .line 23
    invoke-direct {v2, p1}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/narvii/util/PackageUtils;->getVersionName()Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-static {v0, p1}, Lcom/narvii/util/PackageUtils;->compareVersionName(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    move-result p1

    .line 32
    .line 33
    if-lez p1, :cond_1

    .line 34
    const/4 p1, 0x0

    .line 35
    return p1

    .line 36
    :cond_1
    :goto_0
    return v1
.end method

.method public isDeclineMessage()Z
    .locals 2

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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/pushservice/PushPayload;->aps:Lcom/narvii/pushservice/PushAPS;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    :cond_0
    iget-object v0, v0, Lcom/narvii/pushservice/PushAPS;->message:Ljava/lang/String;

    .line 9
    .line 10
    :goto_0
    iget v1, p0, Lcom/narvii/pushservice/PushPayload;->type:I

    .line 11
    const/4 v2, 0x1

    .line 12
    .line 13
    if-ne v1, v2, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Lcom/narvii/pushservice/PushPayload;->nickname:Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    move-result v1

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    sget v0, Lcom/narvii/pushservice/R$string;->pushservice_following_message:I

    .line 28
    .line 29
    new-array v1, v2, [Ljava/lang/Object;

    .line 30
    const/4 v2, 0x0

    .line 31
    .line 32
    iget-object v3, p0, Lcom/narvii/pushservice/PushPayload;->nickname:Ljava/lang/String;

    .line 33
    .line 34
    aput-object v3, v1, v2

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    :cond_1
    return-object v0
.end method

.method public title()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/pushservice/PushPayload;->aps:Lcom/narvii/pushservice/PushAPS;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    :cond_0
    iget-object v0, v0, Lcom/narvii/pushservice/PushAPS;->title:Ljava/lang/String;

    .line 9
    :goto_0
    return-object v0
.end method
