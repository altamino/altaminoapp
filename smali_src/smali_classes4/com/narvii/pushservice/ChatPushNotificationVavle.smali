.class public Lcom/narvii/pushservice/ChatPushNotificationVavle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/pushservice/ChatPushNotificationVavle$NotificationRunnable;,
        Lcom/narvii/pushservice/ChatPushNotificationVavle$RateControlCheckRunnable;,
        Lcom/narvii/pushservice/ChatPushNotificationVavle$RateControlExpireRunnable;
    }
.end annotation


# static fields
.field private static final CHAT_NOTIFICATION_INTERVAL_MS:J = 0x7d0L

.field private static final CHAT_NOTIFICATION_VAVLE_COUNT:J = 0xaL

.field private static final CHAT_NOTIFICATION_VAVLE_EXPIRE_TIME:J = 0x493e0L

.field private static final CHAT_NOTIFICATION_VAVLE_TIME_MS:J = 0x7d0L

.field private static final TAG:Ljava/lang/String; = "ChatPushNotificationVavle"


# instance fields
.field callback:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/pushservice/PushPayload;",
            ">;"
        }
    .end annotation
.end field

.field lastShownTime:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field notificationRunnableMapper:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/pushservice/ChatPushNotificationVavle$NotificationRunnable;",
            ">;"
        }
    .end annotation
.end field

.field rateControlCheckTime:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field rateControlExpireRunnableMapper:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/pushservice/ChatPushNotificationVavle$RateControlExpireRunnable;",
            ">;"
        }
    .end annotation
.end field

.field rateControlMapper:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field rateControlRunnableMapper:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/pushservice/ChatPushNotificationVavle$RateControlCheckRunnable;",
            ">;"
        }
    .end annotation
.end field

.field rateControlShownCount:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

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
    iput-object v0, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->lastShownTime:Ljava/util/HashMap;

    .line 11
    .line 12
    new-instance v0, Ljava/util/HashMap;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->notificationRunnableMapper:Ljava/util/HashMap;

    .line 18
    .line 19
    new-instance v0, Ljava/util/HashMap;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 23
    .line 24
    iput-object v0, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->rateControlMapper:Ljava/util/HashMap;

    .line 25
    .line 26
    new-instance v0, Ljava/util/HashMap;

    .line 27
    .line 28
    .line 29
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 30
    .line 31
    iput-object v0, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->rateControlShownCount:Ljava/util/HashMap;

    .line 32
    .line 33
    new-instance v0, Ljava/util/HashMap;

    .line 34
    .line 35
    .line 36
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 37
    .line 38
    iput-object v0, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->rateControlCheckTime:Ljava/util/HashMap;

    .line 39
    .line 40
    new-instance v0, Ljava/util/HashMap;

    .line 41
    .line 42
    .line 43
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 44
    .line 45
    iput-object v0, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->rateControlRunnableMapper:Ljava/util/HashMap;

    .line 46
    .line 47
    new-instance v0, Ljava/util/HashMap;

    .line 48
    .line 49
    .line 50
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 51
    .line 52
    iput-object v0, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->rateControlExpireRunnableMapper:Ljava/util/HashMap;

    .line 53
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/pushservice/ChatPushNotificationVavle;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/pushservice/ChatPushNotificationVavle;->enterRateControlMode(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic b()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private enterRateControlMode(Ljava/lang/String;)V
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->TAG:Ljava/lang/String;

    .line 3
    .line 4
    const-string v1, "enter rate control mode"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->rateControlMapper:Ljava/util/HashMap;

    .line 10
    .line 11
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->rateControlCheckTime:Ljava/util/HashMap;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->rateControlShownCount:Ljava/util/HashMap;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->rateControlRunnableMapper:Ljava/util/HashMap;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->rateControlRunnableMapper:Ljava/util/HashMap;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    check-cast v1, Ljava/lang/Runnable;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 46
    .line 47
    :cond_0
    iget-object v0, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->rateControlExpireRunnableMapper:Ljava/util/HashMap;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 56
    .line 57
    iget-object v1, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->rateControlExpireRunnableMapper:Ljava/util/HashMap;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    move-result-object v1

    .line 62
    .line 63
    check-cast v1, Ljava/lang/Runnable;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 67
    .line 68
    :cond_1
    new-instance v0, Lcom/narvii/pushservice/ChatPushNotificationVavle$RateControlExpireRunnable;

    .line 69
    .line 70
    .line 71
    invoke-direct {v0, p0, p1}, Lcom/narvii/pushservice/ChatPushNotificationVavle$RateControlExpireRunnable;-><init>(Lcom/narvii/pushservice/ChatPushNotificationVavle;Ljava/lang/String;)V

    .line 72
    .line 73
    iget-object v1, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->rateControlExpireRunnableMapper:Ljava/util/HashMap;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    const-wide/32 v1, 0x493e0

    .line 80
    .line 81
    .line 82
    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 83
    return-void
.end method


# virtual methods
.method public checkShowNotification(Lcom/narvii/pushservice/PushPayload;Lcom/narvii/util/Callback;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/pushservice/PushPayload;",
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/pushservice/PushPayload;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p2, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->callback:Lcom/narvii/util/Callback;

    .line 3
    .line 4
    if-eqz p1, :cond_c

    .line 5
    .line 6
    iget v0, p1, Lcom/narvii/pushservice/PushPayload;->type:I

    .line 7
    .line 8
    const/16 v1, 0x12

    .line 9
    .line 10
    if-ne v0, v1, :cond_c

    .line 11
    .line 12
    iget-object v0, p1, Lcom/narvii/pushservice/PushPayload;->threadId:Ljava/lang/String;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto/16 :goto_3

    .line 17
    .line 18
    :cond_0
    iget-object v1, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->rateControlMapper:Ljava/util/HashMap;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    const-wide/16 v2, 0x7d0

    .line 25
    .line 26
    if-eqz v1, :cond_4

    .line 27
    .line 28
    iget-object v1, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->rateControlMapper:Ljava/util/HashMap;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    check-cast v1, Ljava/lang/Boolean;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 38
    move-result v1

    .line 39
    .line 40
    if-eqz v1, :cond_4

    .line 41
    .line 42
    iget-object v1, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->lastShownTime:Ljava/util/HashMap;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    check-cast v1, Ljava/lang/Long;

    .line 49
    .line 50
    if-eqz v1, :cond_3

    .line 51
    .line 52
    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 54
    move-result-wide v4

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 58
    move-result-wide v6

    .line 59
    sub-long/2addr v4, v6

    .line 60
    .line 61
    cmp-long v4, v4, v2

    .line 62
    .line 63
    if-lez v4, :cond_1

    .line 64
    goto :goto_0

    .line 65
    .line 66
    .line 67
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 68
    move-result-wide v4

    .line 69
    add-long/2addr v4, v2

    .line 70
    .line 71
    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 73
    move-result-wide v1

    .line 74
    sub-long/2addr v4, v1

    .line 75
    .line 76
    .line 77
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    .line 78
    move-result-wide v1

    .line 79
    .line 80
    iget-object p2, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->notificationRunnableMapper:Ljava/util/HashMap;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    move-result-object p2

    .line 85
    .line 86
    check-cast p2, Ljava/lang/Runnable;

    .line 87
    .line 88
    if-eqz p2, :cond_2

    .line 89
    .line 90
    sget-object v3, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 94
    .line 95
    :cond_2
    new-instance p2, Lcom/narvii/pushservice/ChatPushNotificationVavle$NotificationRunnable;

    .line 96
    .line 97
    .line 98
    invoke-direct {p2, p0, v0, p1}, Lcom/narvii/pushservice/ChatPushNotificationVavle$NotificationRunnable;-><init>(Lcom/narvii/pushservice/ChatPushNotificationVavle;Ljava/lang/String;Lcom/narvii/pushservice/PushPayload;)V

    .line 99
    .line 100
    iget-object p1, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->notificationRunnableMapper:Ljava/util/HashMap;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    invoke-static {p2, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 107
    .line 108
    goto/16 :goto_4

    .line 109
    .line 110
    :cond_3
    :goto_0
    sget-object v0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->TAG:Ljava/lang/String;

    .line 111
    .line 112
    const-string v1, "show push directly "

    .line 113
    .line 114
    .line 115
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    if-eqz p2, :cond_d

    .line 118
    .line 119
    .line 120
    invoke-interface {p2, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 121
    .line 122
    goto/16 :goto_4

    .line 123
    .line 124
    :cond_4
    if-eqz p2, :cond_5

    .line 125
    .line 126
    .line 127
    invoke-interface {p2, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 128
    .line 129
    :cond_5
    iget-object p1, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->rateControlShownCount:Ljava/util/HashMap;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    move-result-object p1

    .line 134
    .line 135
    if-nez p1, :cond_6

    .line 136
    const/4 p1, 0x0

    .line 137
    goto :goto_1

    .line 138
    .line 139
    :cond_6
    iget-object p1, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->rateControlShownCount:Ljava/util/HashMap;

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    move-result-object p1

    .line 144
    .line 145
    check-cast p1, Ljava/lang/Integer;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 149
    move-result p1

    .line 150
    .line 151
    :goto_1
    iget-object p2, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->rateControlShownCount:Ljava/util/HashMap;

    .line 152
    .line 153
    add-int/lit8 p1, p1, 0x1

    .line 154
    .line 155
    .line 156
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 157
    move-result-object v1

    .line 158
    .line 159
    .line 160
    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    iget-object p2, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->rateControlCheckTime:Ljava/util/HashMap;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    move-result-object p2

    .line 167
    .line 168
    if-nez p2, :cond_7

    .line 169
    .line 170
    iget-object p2, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->rateControlCheckTime:Ljava/util/HashMap;

    .line 171
    .line 172
    .line 173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 174
    move-result-wide v4

    .line 175
    .line 176
    .line 177
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 178
    move-result-object v1

    .line 179
    .line 180
    .line 181
    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .line 183
    :cond_7
    iget-object p2, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->rateControlCheckTime:Ljava/util/HashMap;

    .line 184
    .line 185
    .line 186
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    move-result-object p2

    .line 188
    .line 189
    const-wide/16 v4, 0x0

    .line 190
    .line 191
    if-nez p2, :cond_8

    .line 192
    move-wide v6, v4

    .line 193
    goto :goto_2

    .line 194
    .line 195
    :cond_8
    iget-object p2, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->rateControlCheckTime:Ljava/util/HashMap;

    .line 196
    .line 197
    .line 198
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    move-result-object p2

    .line 200
    .line 201
    check-cast p2, Ljava/lang/Long;

    .line 202
    .line 203
    .line 204
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 205
    move-result-wide v6

    .line 206
    :goto_2
    int-to-long p1, p1

    .line 207
    .line 208
    const-wide/16 v8, 0xa

    .line 209
    .line 210
    cmp-long p1, p1, v8

    .line 211
    .line 212
    if-ltz p1, :cond_a

    .line 213
    .line 214
    cmp-long p1, v6, v4

    .line 215
    .line 216
    if-eqz p1, :cond_9

    .line 217
    .line 218
    .line 219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 220
    move-result-wide p1

    .line 221
    sub-long/2addr p1, v6

    .line 222
    .line 223
    cmp-long p1, p1, v2

    .line 224
    .line 225
    if-gez p1, :cond_9

    .line 226
    .line 227
    .line 228
    invoke-direct {p0, v0}, Lcom/narvii/pushservice/ChatPushNotificationVavle;->enterRateControlMode(Ljava/lang/String;)V

    .line 229
    goto :goto_4

    .line 230
    .line 231
    :cond_9
    iget-object p1, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->rateControlShownCount:Ljava/util/HashMap;

    .line 232
    .line 233
    .line 234
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    .line 236
    iget-object p1, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->rateControlCheckTime:Ljava/util/HashMap;

    .line 237
    .line 238
    .line 239
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    goto :goto_4

    .line 241
    .line 242
    :cond_a
    sget-object p1, Lcom/narvii/pushservice/ChatPushNotificationVavle;->TAG:Ljava/lang/String;

    .line 243
    .line 244
    const-string p2, "post runnable to check count"

    .line 245
    .line 246
    .line 247
    invoke-static {p1, p2}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    .line 249
    iget-object p1, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->rateControlRunnableMapper:Ljava/util/HashMap;

    .line 250
    .line 251
    .line 252
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    move-result-object p1

    .line 254
    .line 255
    check-cast p1, Lcom/narvii/pushservice/ChatPushNotificationVavle$RateControlCheckRunnable;

    .line 256
    .line 257
    if-eqz p1, :cond_b

    .line 258
    .line 259
    sget-object p2, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 260
    .line 261
    .line 262
    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 263
    .line 264
    :cond_b
    new-instance p1, Lcom/narvii/pushservice/ChatPushNotificationVavle$RateControlCheckRunnable;

    .line 265
    .line 266
    .line 267
    invoke-direct {p1, p0, v0}, Lcom/narvii/pushservice/ChatPushNotificationVavle$RateControlCheckRunnable;-><init>(Lcom/narvii/pushservice/ChatPushNotificationVavle;Ljava/lang/String;)V

    .line 268
    .line 269
    iget-object p2, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->rateControlRunnableMapper:Ljava/util/HashMap;

    .line 270
    .line 271
    .line 272
    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    invoke-static {p1, v2, v3}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 276
    goto :goto_4

    .line 277
    .line 278
    :cond_c
    :goto_3
    if-eqz p2, :cond_d

    .line 279
    .line 280
    .line 281
    invoke-interface {p2, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 282
    :cond_d
    :goto_4
    return-void
.end method

.method public saveLastShownTime(Lcom/narvii/pushservice/PushPayload;)V
    .locals 3

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->lastShownTime:Ljava/util/HashMap;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/narvii/pushservice/PushPayload;->threadId:Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    move-result-wide v1

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    return-void
.end method
