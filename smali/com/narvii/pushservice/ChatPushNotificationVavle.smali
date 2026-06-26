.class public Lcom/narvii/pushservice/ChatPushNotificationVavle;
.super Ljava/lang/Object;
.source "ChatPushNotificationVavle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/pushservice/ChatPushNotificationVavle$NotificationRunnable;,
        Lcom/narvii/pushservice/ChatPushNotificationVavle$RateControlExpireRunnable;,
        Lcom/narvii/pushservice/ChatPushNotificationVavle$RateControlCheckRunnable;
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

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->lastShownTime:Ljava/util/HashMap;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->notificationRunnableMapper:Ljava/util/HashMap;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->rateControlMapper:Ljava/util/HashMap;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->rateControlShownCount:Ljava/util/HashMap;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->rateControlCheckTime:Ljava/util/HashMap;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->rateControlRunnableMapper:Ljava/util/HashMap;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->rateControlExpireRunnableMapper:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/pushservice/ChatPushNotificationVavle;Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/narvii/pushservice/ChatPushNotificationVavle;->enterRateControlMode(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 12
    sget-object v0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private enterRateControlMode(Ljava/lang/String;)V
    .locals 3

    .line 101
    sget-object v0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->TAG:Ljava/lang/String;

    const-string v1, "enter rate control mode"

    invoke-static {v0, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->rateControlMapper:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->rateControlCheckTime:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->rateControlShownCount:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->rateControlRunnableMapper:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->rateControlRunnableMapper:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->rateControlExpireRunnableMapper:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 109
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->rateControlExpireRunnableMapper:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 111
    :cond_1
    new-instance v0, Lcom/narvii/pushservice/ChatPushNotificationVavle$RateControlExpireRunnable;

    invoke-direct {v0, p0, p1}, Lcom/narvii/pushservice/ChatPushNotificationVavle$RateControlExpireRunnable;-><init>(Lcom/narvii/pushservice/ChatPushNotificationVavle;Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->rateControlExpireRunnableMapper:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/32 v1, 0x493e0

    .line 113
    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

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

    .line 35
    iput-object p2, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->callback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_e

    .line 36
    iget v0, p1, Lcom/narvii/pushservice/PushPayload;->type:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_e

    iget-object v0, p1, Lcom/narvii/pushservice/PushPayload;->threadId:Ljava/lang/String;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 42
    :cond_0
    iget-object v1, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->rateControlMapper:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->rateControlMapper:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-wide/16 v4, 0x7d0

    if-eqz v1, :cond_6

    .line 44
    iget-object v1, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->lastShownTime:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_3

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v6, v8

    cmp-long v8, v6, v4

    if-lez v8, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    .line 47
    sget-object v0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "show push directly "

    invoke-static {v0, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_f

    .line 49
    invoke-interface {p2, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 52
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    add-long/2addr v1, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    .line 53
    iget-object p2, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->notificationRunnableMapper:Ljava/util/HashMap;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Runnable;

    if-eqz p2, :cond_5

    .line 55
    sget-object v3, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    invoke-virtual {v3, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 57
    :cond_5
    new-instance p2, Lcom/narvii/pushservice/ChatPushNotificationVavle$NotificationRunnable;

    invoke-direct {p2, p0, v0, p1}, Lcom/narvii/pushservice/ChatPushNotificationVavle$NotificationRunnable;-><init>(Lcom/narvii/pushservice/ChatPushNotificationVavle;Ljava/lang/String;Lcom/narvii/pushservice/PushPayload;)V

    .line 58
    iget-object p1, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->notificationRunnableMapper:Ljava/util/HashMap;

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-static {p2, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    goto/16 :goto_5

    :cond_6
    if-eqz p2, :cond_7

    .line 63
    invoke-interface {p2, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 65
    :cond_7
    iget-object p1, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->rateControlShownCount:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_8

    goto :goto_2

    :cond_8
    iget-object p1, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->rateControlShownCount:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 66
    :goto_2
    iget-object p1, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->rateControlShownCount:Ljava/util/HashMap;

    add-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object p1, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->rateControlCheckTime:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_9

    .line 68
    iget-object p1, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->rateControlCheckTime:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_9
    iget-object p1, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->rateControlCheckTime:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-wide/16 v1, 0x0

    if-nez p1, :cond_a

    move-wide p1, v1

    goto :goto_3

    :cond_a
    iget-object p1, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->rateControlCheckTime:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    :goto_3
    int-to-long v6, v3

    const-wide/16 v8, 0xa

    cmp-long v3, v6, v8

    if-ltz v3, :cond_c

    cmp-long v3, p1, v1

    if-eqz v3, :cond_b

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p1

    cmp-long p1, v1, v4

    if-gez p1, :cond_b

    .line 74
    invoke-direct {p0, v0}, Lcom/narvii/pushservice/ChatPushNotificationVavle;->enterRateControlMode(Ljava/lang/String;)V

    goto :goto_5

    .line 76
    :cond_b
    iget-object p1, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->rateControlShownCount:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object p1, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->rateControlCheckTime:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 80
    :cond_c
    sget-object p1, Lcom/narvii/pushservice/ChatPushNotificationVavle;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "post runnable to check count"

    invoke-static {p1, p2}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object p1, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->rateControlRunnableMapper:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/pushservice/ChatPushNotificationVavle$RateControlCheckRunnable;

    if-eqz p1, :cond_d

    .line 83
    sget-object p2, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 85
    :cond_d
    new-instance p1, Lcom/narvii/pushservice/ChatPushNotificationVavle$RateControlCheckRunnable;

    invoke-direct {p1, p0, v0}, Lcom/narvii/pushservice/ChatPushNotificationVavle$RateControlCheckRunnable;-><init>(Lcom/narvii/pushservice/ChatPushNotificationVavle;Ljava/lang/String;)V

    .line 86
    iget-object p2, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->rateControlRunnableMapper:Ljava/util/HashMap;

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-static {p1, v4, v5}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_5

    :cond_e
    :goto_4
    if-eqz p2, :cond_f

    .line 38
    invoke-interface {p2, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_f
    :goto_5
    return-void
.end method

.method public saveLastShownTime(Lcom/narvii/pushservice/PushPayload;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->lastShownTime:Ljava/util/HashMap;

    iget-object p1, p1, Lcom/narvii/pushservice/PushPayload;->threadId:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
