.class public Lcom/narvii/pushservice/PushNotificationService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/services/AutostartServiceProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/pushservice/PushNotificationService$PushFrom;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/AutostartServiceProvider<",
        "Lcom/narvii/pushservice/PushNotificationService;",
        ">;"
    }
.end annotation


# static fields
.field public static FROM_PUSH:Lcom/narvii/util/statistics/TmpValue; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/statistics/TmpValue<",
            "Lcom/narvii/pushservice/PushNotificationService$PushFrom;",
            ">;"
        }
    .end annotation
.end field

.field private static final MUTE_INTERVAL:I = 0x1f40

.field static final NOTIFY_CID_MASK:I = -0x8

.field static final NOTIFY_CID_SHIFT:I = 0x3

.field public static final NOTIFY_TYPE_CHAT:I = 0x2

.field public static final NOTIFY_TYPE_MARKETING:I = 0x4

.field static final NOTIFY_TYPE_MASK:I = 0x7

.field public static final NOTIFY_TYPE_NORMAL:I = 0x1

.field public static final NO_GROUP:Ljava/lang/String; = "null"

.field static final TAG:Ljava/lang/String; = "narvii_push"

.field static isAppActive:Z


# instance fields
.field account:Lcom/narvii/account/AccountService;

.field callback:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/pushservice/PushPayload;",
            ">;"
        }
    .end annotation
.end field

.field chatPushNotificatonVavle:Lcom/narvii/pushservice/ChatPushNotificationVavle;

.field community:Lcom/narvii/community/CommunityService;

.field context:Lcom/narvii/app/NVContext;

.field dateTimeFormatter:Lcom/narvii/util/DateTimeFormatter;

.field iconDir:Ljava/io/File;

.field imageLoader:Lcom/narvii/util/image/NVImageLoader;

.field isMaster:Z

.field lastRing:J

.field notifiManager:Landroid/app/NotificationManager;

.field pushCommunityNamePrefs:Landroid/content/SharedPreferences;

.field stack:Lcom/narvii/util/http/ProxyStack;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/statistics/TmpValue;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/util/statistics/TmpValue;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/narvii/pushservice/PushNotificationService;->FROM_PUSH:Lcom/narvii/util/statistics/TmpValue;

    .line 8
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
    new-instance v0, Lcom/narvii/pushservice/d;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/pushservice/d;-><init>(Lcom/narvii/pushservice/PushNotificationService;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/pushservice/PushNotificationService;->callback:Lcom/narvii/util/Callback;

    .line 11
    return-void
.end method

.method public static synthetic a(Lcom/narvii/pushservice/PushNotificationService;Lcom/narvii/pushservice/PushPayload;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/pushservice/PushNotificationService;->lambda$new$0(Lcom/narvii/pushservice/PushPayload;)V

    return-void
.end method

.method static bridge synthetic b(Lcom/narvii/pushservice/PushNotificationService;Lcom/narvii/pushservice/PushPayload;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/pushservice/PushNotificationService;->needGroup(Lcom/narvii/pushservice/PushPayload;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic c(Lcom/narvii/pushservice/PushNotificationService;Lcom/narvii/pushservice/PushPayload;Landroid/content/Intent;Landroid/app/PendingIntent;Ljava/lang/Integer;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/narvii/pushservice/PushNotificationService;->showPushNotificationInteral(Lcom/narvii/pushservice/PushPayload;Landroid/content/Intent;Landroid/app/PendingIntent;Ljava/lang/Integer;Ljava/lang/String;Z)V

    return-void
.end method

.method private configCustomBuilder(Landroidx/core/app/NotificationCompat$Builder;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    .line 9
    .line 10
    .line 11
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    new-instance v1, Landroid/widget/RemoteViews;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    .line 27
    .line 28
    .line 29
    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    sget v3, Lcom/narvii/pushservice/R$layout;->custom_notification_layout:I

    .line 37
    .line 38
    .line 39
    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 40
    .line 41
    sget v2, Lcom/narvii/pushservice/R$id;->custom_notification_title:I

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2, p5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 48
    move-result p5

    .line 49
    const/4 v3, 0x0

    .line 50
    .line 51
    const/16 v4, 0x8

    .line 52
    .line 53
    if-eqz p5, :cond_0

    .line 54
    move p5, v4

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    move p5, v3

    .line 57
    .line 58
    .line 59
    :goto_0
    invoke-virtual {v1, v2, p5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 60
    .line 61
    sget p5, Lcom/narvii/pushservice/R$id;->custom_notification_body:I

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, p5, p6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 65
    .line 66
    sget p5, Lcom/narvii/pushservice/R$id;->custom_notification_thumbnail:I

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, p5, p2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 70
    .line 71
    if-nez p4, :cond_1

    .line 72
    .line 73
    sget p2, Lcom/narvii/pushservice/R$id;->custom_notification_small_icon:I

    .line 74
    .line 75
    sget p4, Lcom/narvii/pushservice/R$drawable;->ic_notify_ablue:I

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, p2, p4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 79
    goto :goto_1

    .line 80
    .line 81
    :cond_1
    sget p2, Lcom/narvii/pushservice/R$id;->custom_notification_small_icon:I

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, p2, p4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 85
    .line 86
    :goto_1
    sget p2, Lcom/narvii/pushservice/R$id;->custom_notification_title_text:I

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, p2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 90
    .line 91
    sget p2, Lcom/narvii/pushservice/R$id;->custom_notification_title_text2:I

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, p2, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 95
    .line 96
    .line 97
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 98
    move-result p4

    .line 99
    .line 100
    if-eqz p4, :cond_2

    .line 101
    move p4, v4

    .line 102
    goto :goto_2

    .line 103
    :cond_2
    move p4, v3

    .line 104
    .line 105
    .line 106
    :goto_2
    invoke-virtual {v1, p2, p4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 107
    .line 108
    sget p2, Lcom/narvii/pushservice/R$id;->custom_notification_title_dot:I

    .line 109
    .line 110
    .line 111
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 112
    move-result p3

    .line 113
    .line 114
    if-eqz p3, :cond_3

    .line 115
    move v3, v4

    .line 116
    .line 117
    .line 118
    :cond_3
    invoke-virtual {v1, p2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 119
    const/4 p2, 0x0

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->f0(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->F(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    .line 126
    return-void
.end method

.method private getNotifyId(Lcom/narvii/pushservice/PushPayload;Ljava/lang/Integer;)I
    .locals 1

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/narvii/pushservice/PushNotificationService;->getNotifyType(Lcom/narvii/pushservice/PushPayload;)I

    .line 6
    move-result p2

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/narvii/pushservice/PushNotificationService;->isMaster:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget p1, p1, Lcom/narvii/pushservice/PushPayload;->ndcId:I

    .line 13
    .line 14
    shl-int/lit8 p1, p1, 0x3

    .line 15
    .line 16
    and-int/lit8 p1, p1, -0x8

    .line 17
    or-int/2addr p2, p1

    .line 18
    goto :goto_0

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 22
    move-result p2

    .line 23
    :cond_1
    :goto_0
    return p2
.end method

.method private handleSpecificPush(Landroid/content/Intent;Lcom/narvii/pushservice/PushPayload;)Landroid/content/Intent;
    .locals 2

    .line 1
    .line 2
    iget v0, p2, Lcom/narvii/pushservice/PushPayload;->type:I

    .line 3
    .line 4
    const/16 v1, 0x42

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const-string v0, "payload"

    .line 9
    .line 10
    .line 11
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    move-result-object p2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    :cond_0
    return-object p1
.end method

.method private isCommunityIconReady(I)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-gtz p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    new-instance v1, Ljava/io/File;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/pushservice/PushNotificationService;->getIconDir()Ljava/io/File;

    .line 10
    move-result-object v2

    .line 11
    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string/jumbo v4, "x"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/io/File;->length()J

    .line 35
    move-result-wide v1

    .line 36
    .line 37
    const-wide/16 v3, 0x0

    .line 38
    .line 39
    cmp-long p1, v1, v3

    .line 40
    .line 41
    if-lez p1, :cond_1

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 v0, 0x0

    .line 44
    :goto_0
    return v0
.end method

.method private synthetic lambda$new$0(Lcom/narvii/pushservice/PushPayload;)V
    .locals 7

    .line 1
    const/4 v2, 0x0

    .line 2
    const/4 v3, 0x0

    .line 3
    const/4 v4, 0x0

    .line 4
    const/4 v5, 0x0

    .line 5
    const/4 v6, 0x0

    .line 6
    move-object v0, p0

    .line 7
    move-object v1, p1

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {v0 .. v6}, Lcom/narvii/pushservice/PushNotificationService;->showPushNotification(Lcom/narvii/pushservice/PushPayload;Landroid/content/Intent;Landroid/app/PendingIntent;Ljava/lang/Integer;Ljava/lang/String;Z)V

    .line 11
    return-void
.end method

.method private needGroup(Lcom/narvii/pushservice/PushPayload;)Z
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/pushservice/PushNotificationService;->account:Lcom/narvii/account/AccountService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getDir()Ljava/io/File;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1, v1}, Lcom/narvii/pushservice/PushNotificationService;->getNotifyId(Lcom/narvii/pushservice/PushPayload;Ljava/lang/Integer;)I

    .line 11
    move-result p1

    .line 12
    .line 13
    new-instance v2, Ljava/io/File;

    .line 14
    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    const-string v4, "push_"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-direct {v2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/io/File;->length()J

    .line 37
    move-result-wide v3

    .line 38
    .line 39
    const-wide/16 v5, 0x0

    .line 40
    .line 41
    cmp-long p1, v3, v5

    .line 42
    .line 43
    if-lez p1, :cond_0

    .line 44
    .line 45
    :try_start_0
    sget-object p1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 46
    .line 47
    const-class v0, Lcom/narvii/pushservice/PushPayloadSet;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v2, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/io/File;Ljava/lang/Class;)Ljava/lang/Object;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    check-cast p1, Lcom/narvii/pushservice/PushPayloadSet;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    move-object v1, p1

    .line 55
    goto :goto_0

    .line 56
    :catch_0
    move-exception p1

    .line 57
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    const-string v3, "fail to read push payload set from "

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    const-string v2, "narvii_push"

    .line 76
    .line 77
    .line 78
    invoke-static {v2, v0, p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    .line 80
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 81
    const/4 p1, 0x1

    .line 82
    goto :goto_1

    .line 83
    :cond_1
    const/4 p1, 0x0

    .line 84
    :goto_1
    return p1
.end method

.method private showPushNotificationInteral(Lcom/narvii/pushservice/PushPayload;Landroid/content/Intent;Landroid/app/PendingIntent;Ljava/lang/Integer;Ljava/lang/String;Z)V
    .locals 20

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move-object/from16 v0, p5

    iget-object v1, v8, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    .line 1
    invoke-virtual {v9, v1}, Lcom/narvii/pushservice/PushPayload;->message(Lcom/narvii/app/NVContext;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "narvii_push"

    if-nez v11, :cond_0

    const-string v0, "no push message, just ignore"

    .line 2
    invoke-static {v12, v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget v1, v9, Lcom/narvii/pushservice/PushPayload;->type:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_1

    iget-object v1, v9, Lcom/narvii/pushservice/PushPayload;->threadId:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, v8, Lcom/narvii/pushservice/PushNotificationService;->chatPushNotificatonVavle:Lcom/narvii/pushservice/ChatPushNotificationVavle;

    .line 4
    invoke-virtual {v1, v9}, Lcom/narvii/pushservice/ChatPushNotificationVavle;->saveLastShownTime(Lcom/narvii/pushservice/PushPayload;)V

    .line 5
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/narvii/pushservice/PushPayload;->getUri()Landroid/net/Uri;

    move-result-object v1

    .line 6
    invoke-virtual/range {p0 .. p1}, Lcom/narvii/pushservice/PushNotificationService;->getNotifyType(Lcom/narvii/pushservice/PushPayload;)I

    move-result v13

    move-object/from16 v2, p4

    .line 7
    invoke-direct {v8, v9, v2}, Lcom/narvii/pushservice/PushNotificationService;->getNotifyId(Lcom/narvii/pushservice/PushPayload;Ljava/lang/Integer;)I

    move-result v14

    .line 8
    new-instance v15, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v2, v8, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_2

    .line 9
    invoke-virtual/range {p0 .. p1}, Lcom/narvii/pushservice/PushNotificationService;->getChannelId(Lcom/narvii/pushservice/PushPayload;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    const-string v3, ""

    :goto_0
    invoke-direct {v15, v2, v3}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v7, 0x1

    .line 10
    invoke-virtual {v15, v7}, Landroidx/core/app/NotificationCompat$Builder;->t(Z)Landroidx/core/app/NotificationCompat$Builder;

    move/from16 v2, p6

    .line 11
    invoke-virtual {v15, v2}, Landroidx/core/app/NotificationCompat$Builder;->S(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/narvii/pushservice/PushPayload;->isChat()Z

    move-result v2

    const/4 v6, 0x0

    if-nez v2, :cond_4

    sget-boolean v2, Lcom/narvii/pushservice/PushNotificationService;->isAppActive:Z

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    move v2, v6

    goto :goto_2

    :cond_4
    :goto_1
    move v2, v7

    :goto_2
    if-eqz v2, :cond_5

    .line 13
    invoke-virtual {v15, v7}, Landroidx/core/app/NotificationCompat$Builder;->U(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 14
    :cond_5
    iget-object v3, v9, Lcom/narvii/pushservice/PushPayload;->aps:Lcom/narvii/pushservice/PushAPS;

    iget-object v3, v3, Lcom/narvii/pushservice/PushAPS;->sound:Ljava/lang/String;

    if-eqz v3, :cond_8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    iget-wide v4, v8, Lcom/narvii/pushservice/PushNotificationService;->lastRing:J

    const-wide/16 v18, 0x1f40

    add-long v4, v4, v18

    cmp-long v3, v16, v4

    if-lez v3, :cond_8

    .line 15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v8, Lcom/narvii/pushservice/PushNotificationService;->lastRing:J

    :try_start_0
    iget-object v3, v8, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    .line 16
    invoke-interface {v3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 17
    iget-object v4, v9, Lcom/narvii/pushservice/PushPayload;->aps:Lcom/narvii/pushservice/PushAPS;

    iget-object v4, v4, Lcom/narvii/pushservice/PushAPS;->sound:Ljava/lang/String;

    const/16 v5, 0x2e

    .line 18
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-lez v5, :cond_6

    .line 19
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 20
    :cond_6
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 21
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v6, "raw"

    .line 22
    invoke-virtual {v3, v4, v6, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_7

    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "android.resource://"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/raw/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-nez v3, :cond_9

    const/4 v4, 0x2

    .line 24
    invoke-static {v4}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v3

    goto :goto_4

    :cond_8
    const/4 v3, 0x0

    :cond_9
    :goto_4
    if-nez v3, :cond_b

    if-eqz v2, :cond_a

    goto :goto_5

    :cond_a
    const/4 v2, 0x0

    goto :goto_6

    :cond_b
    :goto_5
    move v2, v7

    .line 25
    :goto_6
    invoke-virtual {v15, v3}, Landroidx/core/app/NotificationCompat$Builder;->d0(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    const/4 v3, 0x4

    .line 26
    invoke-virtual {v15, v3}, Landroidx/core/app/NotificationCompat$Builder;->G(I)Landroidx/core/app/NotificationCompat$Builder;

    if-eqz v2, :cond_c

    const/4 v2, 0x2

    new-array v4, v2, [J

    fill-array-data v4, :array_0

    .line 27
    invoke-virtual {v15, v4}, Landroidx/core/app/NotificationCompat$Builder;->k0([J)Landroidx/core/app/NotificationCompat$Builder;

    :cond_c
    iget-boolean v2, v8, Lcom/narvii/pushservice/PushNotificationService;->isMaster:Z

    const-string/jumbo v4, "x"

    if-eqz v2, :cond_f

    .line 28
    iget v2, v9, Lcom/narvii/pushservice/PushPayload;->ndcId:I

    if-lez v2, :cond_f

    iget-object v2, v8, Lcom/narvii/pushservice/PushNotificationService;->pushCommunityNamePrefs:Landroid/content/SharedPreferences;

    .line 29
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v9, Lcom/narvii/pushservice/PushPayload;->ndcId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 30
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v2, v8, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    const-string v5, "community"

    .line 31
    invoke-interface {v2, v5}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/community/CommunityService;

    .line 32
    iget v5, v9, Lcom/narvii/pushservice/PushPayload;->ndcId:I

    invoke-virtual {v2, v5}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object v2

    if-nez v2, :cond_d

    move-object v2, v6

    goto :goto_7

    .line 33
    :cond_d
    iget-object v2, v2, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    :cond_e
    :goto_7
    move-object v5, v2

    goto :goto_8

    :cond_f
    const/4 v6, 0x0

    move-object v5, v6

    .line 34
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcom/narvii/pushservice/PushPayload;->title()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_10

    move-object v2, v5

    :cond_10
    if-nez v2, :cond_11

    iget-object v2, v8, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    .line 35
    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v6, v8, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v6}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_11
    move-object v6, v2

    .line 36
    invoke-virtual {v15, v6}, Landroidx/core/app/NotificationCompat$Builder;->E(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 37
    invoke-virtual {v15, v11}, Landroidx/core/app/NotificationCompat$Builder;->D(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 38
    invoke-virtual {v15, v11}, Landroidx/core/app/NotificationCompat$Builder;->h0(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    if-nez v0, :cond_12

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v9, Lcom/narvii/pushservice/PushPayload;->ndcId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroidx/core/app/NotificationCompat$Builder;->L(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 40
    invoke-virtual {v15, v7}, Landroidx/core/app/NotificationCompat$Builder;->t(Z)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_9

    :cond_12
    const-string v2, "null"

    .line 41
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 42
    invoke-virtual {v15, v0}, Landroidx/core/app/NotificationCompat$Builder;->L(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 43
    invoke-virtual {v15, v7}, Landroidx/core/app/NotificationCompat$Builder;->t(Z)Landroidx/core/app/NotificationCompat$Builder;

    :cond_13
    :goto_9
    if-nez p2, :cond_14

    if-eq v13, v7, :cond_15

    const/4 v2, 0x2

    if-ne v13, v2, :cond_14

    goto :goto_a

    :cond_14
    const/4 v7, 0x0

    goto/16 :goto_11

    :cond_15
    :goto_a
    iget-object v0, v8, Lcom/narvii/pushservice/PushNotificationService;->account:Lcom/narvii/account/AccountService;

    .line 44
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getDir()Ljava/io/File;

    move-result-object v0

    .line 45
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "push_"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 46
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v18, 0x0

    cmp-long v0, v3, v18

    if-lez v0, :cond_16

    .line 47
    :try_start_1
    sget-object v0, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v3, Lcom/narvii/pushservice/PushPayloadSet;

    invoke-virtual {v0, v2, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/io/File;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/pushservice/PushPayloadSet;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_b

    :catch_1
    move-exception v0

    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to read push payload set from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3, v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_16
    const/4 v0, 0x0

    :goto_b
    if-nez v0, :cond_17

    .line 49
    new-instance v0, Lcom/narvii/pushservice/PushPayloadSet;

    invoke-direct {v0}, Lcom/narvii/pushservice/PushPayloadSet;-><init>()V

    :cond_17
    move-object v3, v0

    .line 50
    invoke-virtual {v3, v9}, Lcom/narvii/pushservice/PushPayloadSet;->append(Lcom/narvii/pushservice/PushPayload;)V

    .line 51
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 52
    :try_start_2
    sget-object v0, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, v2, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValue(Ljava/io/File;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_c

    :catch_2
    move-exception v0

    .line 53
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fail to write push payload set to "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2, v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_18
    :goto_c
    iget-object v0, v8, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    .line 54
    invoke-virtual {v3, v0, v15}, Lcom/narvii/pushservice/PushPayloadSet;->setNotificationContent(Lcom/narvii/app/NVContext;Landroidx/core/app/NotificationCompat$Builder;)V

    .line 55
    invoke-virtual {v3}, Lcom/narvii/pushservice/PushPayloadSet;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1e

    const-string v0, "ndc://x"

    const/4 v1, 0x2

    if-ne v13, v1, :cond_1b

    if-nez v5, :cond_19

    iget-object v1, v8, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    .line 56
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v4, Lcom/narvii/pushservice/R$string;->pushservice_chat_title:I

    new-array v7, v2, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/narvii/pushservice/PushPayloadSet;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v16, 0x0

    aput-object v2, v7, v16

    invoke-virtual {v1, v4, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroidx/core/app/NotificationCompat$Builder;->E(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_d

    :cond_19
    const/16 v16, 0x0

    iget-object v1, v8, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    .line 57
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/narvii/pushservice/R$string;->pushservice_chat_title_c:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/narvii/pushservice/PushPayloadSet;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v16

    const/4 v3, 0x1

    aput-object v5, v4, v3

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroidx/core/app/NotificationCompat$Builder;->E(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    :goto_d
    iget-boolean v1, v8, Lcom/narvii/pushservice/PushNotificationService;->isMaster:Z

    if-eqz v1, :cond_1a

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v9, Lcom/narvii/pushservice/PushPayload;->ndcId:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/my-chats"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_e
    const/4 v0, 0x0

    const/4 v7, 0x0

    goto/16 :goto_10

    :cond_1a
    const-string v0, "ndc://my-chats"

    .line 59
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_e

    :cond_1b
    if-nez v5, :cond_1c

    iget-object v1, v8, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    .line 60
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/narvii/pushservice/R$string;->pushservice_normal_title:I

    const/4 v4, 0x1

    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/narvii/pushservice/PushPayloadSet;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v7, v4

    invoke-virtual {v1, v2, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroidx/core/app/NotificationCompat$Builder;->E(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_f

    :cond_1c
    const/4 v4, 0x0

    iget-object v1, v8, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    .line 61
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/narvii/pushservice/R$string;->pushservice_normal_title_c:I

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/narvii/pushservice/PushPayloadSet;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v4

    const/4 v3, 0x1

    aput-object v5, v7, v3

    invoke-virtual {v1, v2, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroidx/core/app/NotificationCompat$Builder;->E(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    :goto_f
    iget-boolean v1, v8, Lcom/narvii/pushservice/PushNotificationService;->isMaster:Z

    if-eqz v1, :cond_1d

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v9, Lcom/narvii/pushservice/PushPayload;->ndcId:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/notifications"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_e

    :cond_1d
    const-string v0, "ndc://notifications"

    .line 63
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_e

    .line 64
    :cond_1e
    invoke-virtual/range {p0 .. p1}, Lcom/narvii/pushservice/PushNotificationService;->hasPic(Lcom/narvii/pushservice/PushPayload;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v2, 0x1

    new-array v0, v2, [Landroid/graphics/Bitmap;

    .line 65
    invoke-virtual {v8, v9, v0}, Lcom/narvii/pushservice/PushNotificationService;->fetchPic(Lcom/narvii/pushservice/PushPayload;[Landroid/graphics/Bitmap;)V

    const/4 v7, 0x0

    aget-object v0, v0, v7

    goto :goto_10

    :cond_1f
    const/4 v7, 0x0

    const/4 v0, 0x0

    :goto_10
    move-object v3, v0

    move-object v7, v1

    const/4 v0, 0x0

    const/16 v16, 0x1

    goto/16 :goto_16

    .line 66
    :goto_11
    invoke-virtual/range {p0 .. p1}, Lcom/narvii/pushservice/PushNotificationService;->hasPic(Lcom/narvii/pushservice/PushPayload;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v2, 0x2

    new-array v0, v2, [Landroid/graphics/Bitmap;

    .line 67
    invoke-virtual {v8, v9, v0}, Lcom/narvii/pushservice/PushNotificationService;->fetchPic(Lcom/narvii/pushservice/PushPayload;[Landroid/graphics/Bitmap;)V

    aget-object v2, v0, v7

    const/16 v16, 0x1

    aget-object v0, v0, v16

    goto :goto_12

    :cond_20
    const/16 v16, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 68
    :goto_12
    :try_start_3
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xa0

    if-le v3, v4, :cond_21

    move-object/from16 v18, v1

    goto :goto_13

    :cond_21
    iget-object v3, v8, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    .line 69
    invoke-interface {v3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "notification_text_size"

    const-string v7, "dimen"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object/from16 v18, v1

    :try_start_4
    const-string v1, "android"

    .line 70
    invoke-virtual {v3, v4, v7, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 71
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 72
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v4, v8, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v4}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const v7, 0x43ed8000    # 475.0f

    invoke-static {v4, v7}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v4

    float-to-int v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 73
    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4}, Landroid/text/TextPaint;-><init>()V

    .line 74
    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 75
    invoke-virtual {v4, v11}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    mul-int/lit8 v3, v3, 0x52

    .line 76
    div-int/lit8 v3, v3, 0x64
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_22

    :goto_13
    move/from16 v1, v16

    goto :goto_14

    :catch_3
    move-object/from16 v18, v1

    :catch_4
    :cond_22
    const/4 v1, 0x0

    :goto_14
    if-eqz v0, :cond_23

    if-nez v1, :cond_23

    .line 77
    new-instance v1, Landroidx/core/app/NotificationCompat$BigPictureStyle;

    invoke-direct {v1}, Landroidx/core/app/NotificationCompat$BigPictureStyle;-><init>()V

    .line 78
    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->z(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$BigPictureStyle;

    .line 79
    invoke-virtual {v1, v11}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->B(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigPictureStyle;

    .line 80
    invoke-virtual {v15, v1}, Landroidx/core/app/NotificationCompat$Builder;->f0(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_15

    .line 81
    :cond_23
    new-instance v1, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v1}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 82
    invoke-virtual {v1, v11}, Landroidx/core/app/NotificationCompat$BigTextStyle;->x(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    .line 83
    invoke-virtual {v15, v1}, Landroidx/core/app/NotificationCompat$Builder;->f0(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    :goto_15
    move-object v3, v2

    move-object/from16 v7, v18

    .line 84
    :goto_16
    iget v1, v9, Lcom/narvii/pushservice/PushPayload;->ndcId:I

    invoke-virtual {v8, v1}, Lcom/narvii/pushservice/PushNotificationService;->getIconBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v4

    sget v1, Lcom/narvii/pushservice/R$drawable;->ic_notify:I

    .line 85
    invoke-virtual {v15, v1}, Landroidx/core/app/NotificationCompat$Builder;->a0(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 86
    sget v1, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_24

    const v1, -0x6ca601

    goto :goto_17

    :cond_24
    iget-object v1, v8, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/narvii/pushservice/R$color;->color_notify:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    :goto_17
    invoke-virtual {v15, v1}, Landroidx/core/app/NotificationCompat$Builder;->z(I)Landroidx/core/app/NotificationCompat$Builder;

    if-eqz v3, :cond_26

    .line 87
    invoke-virtual {v15, v3}, Landroidx/core/app/NotificationCompat$Builder;->N(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    :cond_25
    :goto_18
    const/4 v1, 0x4

    goto :goto_19

    :cond_26
    iget-boolean v1, v8, Lcom/narvii/pushservice/PushNotificationService;->isMaster:Z

    if-eqz v1, :cond_25

    .line 88
    invoke-virtual {v15, v4}, Landroidx/core/app/NotificationCompat$Builder;->N(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_18

    :goto_19
    if-ne v13, v1, :cond_27

    if-eqz v3, :cond_27

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_27

    move-object/from16 v1, p0

    move-object v2, v15

    move-object/from16 v17, v4

    move-object v4, v5

    const/16 v18, 0x0

    move-object/from16 v5, v17

    const/16 v17, 0x0

    move/from16 p4, v14

    move-object v14, v7

    move-object v7, v11

    .line 89
    invoke-direct/range {v1 .. v7}, Lcom/narvii/pushservice/PushNotificationService;->configCustomBuilder(Landroidx/core/app/NotificationCompat$Builder;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_28

    .line 90
    new-instance v1, Landroidx/core/app/NotificationCompat$BigPictureStyle;

    invoke-direct {v1}, Landroidx/core/app/NotificationCompat$BigPictureStyle;-><init>()V

    .line 91
    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->z(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$BigPictureStyle;

    .line 92
    invoke-virtual {v1, v11}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->B(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigPictureStyle;

    .line 93
    invoke-virtual {v15, v1}, Landroidx/core/app/NotificationCompat$Builder;->f0(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_1a

    :cond_27
    move/from16 p4, v14

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v14, v7

    :cond_28
    :goto_1a
    if-nez p2, :cond_2c

    if-nez v14, :cond_29

    iget-object v0, v8, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    .line 94
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, v8, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    .line 95
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    :goto_1b
    const/4 v7, 0x1

    goto :goto_1d

    .line 96
    :cond_29
    invoke-virtual {v8, v14, v9}, Lcom/narvii/pushservice/PushNotificationService;->getIntent(Landroid/net/Uri;Lcom/narvii/pushservice/PushPayload;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_2b

    const-string v0, "ndc"

    .line 97
    invoke-virtual {v14}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unable to mapping "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", use MAIN instead"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v8, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    .line 99
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, v8, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    .line 100
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_1b

    .line 101
    :cond_2a
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_1b

    :cond_2b
    :goto_1c
    move/from16 v7, v17

    goto :goto_1d

    :cond_2c
    move-object/from16 v0, p2

    goto :goto_1c

    :goto_1d
    if-nez v7, :cond_31

    const-string v1, "_pushIntent"

    const/4 v2, 0x1

    .line 102
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz v13, :cond_2d

    const-string v1, "_pushClearType"

    .line 103
    invoke-virtual {v0, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "_pushClearCid"

    .line 104
    iget v2, v9, Lcom/narvii/pushservice/PushPayload;->ndcId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_2d
    const-string v1, "Source"

    .line 105
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2e

    const-string v2, "Push"

    .line 106
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    :cond_2e
    iget-object v1, v9, Lcom/narvii/pushservice/PushPayload;->trackId:Ljava/lang/String;

    if-eqz v1, :cond_2f

    const-string v2, "_pushTrackId"

    .line 108
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    :cond_2f
    iget-object v1, v9, Lcom/narvii/pushservice/PushPayload;->url:Ljava/lang/String;

    if-eqz v1, :cond_30

    const-string v2, "_pushUrl"

    .line 110
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    :cond_30
    new-instance v1, Lcom/narvii/pushservice/PushNotificationService$PushFrom;

    invoke-direct {v1, v9}, Lcom/narvii/pushservice/PushNotificationService$PushFrom;-><init>(Lcom/narvii/pushservice/PushPayload;)V

    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_pushFrom"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_31
    const/high16 v1, 0x10000000

    .line 112
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, -0x10000

    sget v2, Lcom/narvii/pushservice/R$id;->text:I

    and-int/2addr v1, v2

    .line 113
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    long-to-int v2, v2

    const v3, 0xffff

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    iget-object v2, v8, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    .line 114
    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/narvii/util/PendingIntentUtils;->INSTANCE:Lcom/narvii/util/PendingIntentUtils;

    const/high16 v4, 0x48000000    # 131072.0f

    invoke-virtual {v3, v4}, Lcom/narvii/util/PendingIntentUtils;->getCurrentImmutableFlag(I)I

    move-result v3

    invoke-static {v2, v1, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroidx/core/app/NotificationCompat$Builder;->C(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    if-eqz v10, :cond_32

    .line 115
    invoke-virtual {v15, v10}, Landroidx/core/app/NotificationCompat$Builder;->H(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 116
    :cond_32
    :try_start_5
    invoke-virtual {v15}, Landroidx/core/app/NotificationCompat$Builder;->g()Landroid/app/Notification;

    move-result-object v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1e

    :catchall_0
    move-exception v0

    move-object v1, v0

    const-string v0, "fail to build notification"

    .line 117
    invoke-static {v12, v0, v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v5, v18

    :goto_1e
    if-eqz v5, :cond_33

    .line 118
    new-instance v0, Lcom/narvii/pushservice/PushNotificationService$3;

    move/from16 v1, p4

    invoke-direct {v0, v8, v1, v5}, Lcom/narvii/pushservice/PushNotificationService$3;-><init>(Lcom/narvii/pushservice/PushNotificationService;ILandroid/app/Notification;)V

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    :cond_33
    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0xf0
    .end array-data
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/pushservice/PushNotificationService;
    .locals 4

    .line 2
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    .line 3
    sget v1, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v2, 0x64

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/narvii/pushservice/PushNotificationService;->isMaster:Z

    const-string v1, "account"

    .line 4
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    iput-object v0, p0, Lcom/narvii/pushservice/PushNotificationService;->account:Lcom/narvii/account/AccountService;

    iget-object v0, p0, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    const-string v1, "community"

    .line 5
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/community/CommunityService;

    iput-object v0, p0, Lcom/narvii/pushservice/PushNotificationService;->community:Lcom/narvii/community/CommunityService;

    iget-object v0, p0, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    const-string v1, "imageLoader"

    .line 6
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/image/NVImageLoader;

    iput-object v0, p0, Lcom/narvii/pushservice/PushNotificationService;->imageLoader:Lcom/narvii/util/image/NVImageLoader;

    .line 7
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/narvii/pushservice/PushNotificationService;->notifiManager:Landroid/app/NotificationManager;

    .line 8
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "push_cn"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/pushservice/PushNotificationService;->pushCommunityNamePrefs:Landroid/content/SharedPreferences;

    .line 9
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/DateTimeFormatter;->getInstance(Landroid/content/Context;)Lcom/narvii/util/DateTimeFormatter;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/pushservice/PushNotificationService;->dateTimeFormatter:Lcom/narvii/util/DateTimeFormatter;

    .line 10
    new-instance p1, Lcom/narvii/pushservice/ChatPushNotificationVavle;

    invoke-direct {p1}, Lcom/narvii/pushservice/ChatPushNotificationVavle;-><init>()V

    iput-object p1, p0, Lcom/narvii/pushservice/PushNotificationService;->chatPushNotificatonVavle:Lcom/narvii/pushservice/ChatPushNotificationVavle;

    return-object p0
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/narvii/pushservice/PushNotificationService;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/pushservice/PushNotificationService;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/PushNotificationService;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/pushservice/PushNotificationService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/pushservice/PushNotificationService;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/PushNotificationService;)V

    return-void
.end method

.method fetchCommunity(I)V
    .locals 14

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "|"

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    return-void

    .line 7
    .line 8
    :cond_0
    iget-object v1, p0, Lcom/narvii/pushservice/PushNotificationService;->community:Lcom/narvii/community/CommunityService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    new-instance v2, Lcom/narvii/util/BlockingItem;

    .line 17
    .line 18
    .line 19
    invoke-direct {v2}, Lcom/narvii/util/BlockingItem;-><init>()V

    .line 20
    .line 21
    iget-object v3, p0, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    .line 22
    .line 23
    const-string v4, "api"

    .line 24
    .line 25
    .line 26
    invoke-interface {v3, v4}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    move-result-object v3

    .line 28
    .line 29
    check-cast v3, Lcom/narvii/util/http/ApiService;

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 33
    move-result-object v4

    .line 34
    .line 35
    const-string v5, "community/info"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4, v5}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 39
    move-result-object v4

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->scopeCommunityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 43
    move-result-object v4

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 47
    move-result-object v4

    .line 48
    .line 49
    new-instance v5, Lcom/narvii/pushservice/PushNotificationService$4;

    .line 50
    .line 51
    const-class v6, Lcom/narvii/model/api/CommunityResponse;

    .line 52
    .line 53
    .line 54
    invoke-direct {v5, p0, v6, v2}, Lcom/narvii/pushservice/PushNotificationService$4;-><init>(Lcom/narvii/pushservice/PushNotificationService;Ljava/lang/Class;Lcom/narvii/util/BlockingItem;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, v4, v5}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 58
    .line 59
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 60
    .line 61
    const-wide/16 v4, 0x2710

    .line 62
    .line 63
    .line 64
    :try_start_0
    invoke-virtual {v2, v4, v5}, Lcom/narvii/util/BlockingItem;->tryTake(J)Ljava/lang/Object;

    .line 65
    move-result-object v2

    .line 66
    .line 67
    check-cast v2, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    move-object v3, v2

    .line 69
    .line 70
    :catch_0
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 71
    .line 72
    if-ne v3, v2, :cond_1

    .line 73
    .line 74
    iget-object v1, p0, Lcom/narvii/pushservice/PushNotificationService;->community:Lcom/narvii/community/CommunityService;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, p1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 78
    move-result-object v1

    .line 79
    .line 80
    :cond_1
    if-nez v1, :cond_2

    .line 81
    return-void

    .line 82
    .line 83
    :cond_2
    iget-object p1, p0, Lcom/narvii/pushservice/PushNotificationService;->pushCommunityNamePrefs:Landroid/content/SharedPreferences;

    .line 84
    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string/jumbo v3, "x"

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    iget v4, v1, Lcom/narvii/model/Community;->id:I

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    move-result-object v2

    .line 104
    const/4 v4, 0x0

    .line 105
    .line 106
    .line 107
    invoke-interface {p1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 108
    move-result-object p1

    .line 109
    .line 110
    iget-object v2, v1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    invoke-static {p1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 114
    move-result p1

    .line 115
    .line 116
    if-nez p1, :cond_3

    .line 117
    .line 118
    iget-object p1, p0, Lcom/narvii/pushservice/PushNotificationService;->pushCommunityNamePrefs:Landroid/content/SharedPreferences;

    .line 119
    .line 120
    .line 121
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 122
    move-result-object p1

    .line 123
    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    iget v5, v1, Lcom/narvii/model/Community;->id:I

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    move-result-object v2

    .line 140
    .line 141
    iget-object v5, v1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    invoke-interface {p1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 145
    move-result-object p1

    .line 146
    .line 147
    .line 148
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 149
    .line 150
    :cond_3
    iget-object p1, p0, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    .line 151
    .line 152
    .line 153
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 154
    move-result-object p1

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 158
    move-result-object p1

    .line 159
    .line 160
    .line 161
    const v2, 0x1050005

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 165
    move-result p1

    .line 166
    .line 167
    iget-object v2, p0, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    .line 168
    .line 169
    .line 170
    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 171
    move-result-object v2

    .line 172
    .line 173
    .line 174
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 175
    move-result-object v2

    .line 176
    .line 177
    .line 178
    const v5, 0x1050006

    .line 179
    .line 180
    .line 181
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 182
    move-result v2

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0}, Lcom/narvii/pushservice/PushNotificationService;->getIconDir()Ljava/io/File;

    .line 186
    move-result-object v5

    .line 187
    .line 188
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .line 193
    iget v7, v1, Lcom/narvii/model/Community;->id:I

    .line 194
    .line 195
    .line 196
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    iget-object v7, v1, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    move-result-object v0

    .line 221
    .line 222
    new-instance v6, Ljava/io/File;

    .line 223
    .line 224
    new-instance v7, Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    iget v8, v1, Lcom/narvii/model/Community;->id:I

    .line 233
    .line 234
    .line 235
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    const-string v8, ".info"

    .line 238
    .line 239
    .line 240
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    move-result-object v7

    .line 245
    .line 246
    .line 247
    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    invoke-static {v6}, Lcom/narvii/util/Utils;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;

    .line 251
    move-result-object v7

    .line 252
    .line 253
    .line 254
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 255
    move-result v7

    .line 256
    .line 257
    if-eqz v7, :cond_4

    .line 258
    return-void

    .line 259
    .line 260
    :cond_4
    iget-object v7, v1, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    .line 261
    .line 262
    const-string v8, "community-icon"

    .line 263
    .line 264
    .line 265
    invoke-static {v7, v8, p1, v2}, Lcom/narvii/widget/NVImageView;->fitSize(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    .line 266
    move-result-object v7

    .line 267
    .line 268
    iget-object v8, p0, Lcom/narvii/pushservice/PushNotificationService;->imageLoader:Lcom/narvii/util/image/NVImageLoader;

    .line 269
    .line 270
    if-nez v8, :cond_5

    .line 271
    move-object v8, v4

    .line 272
    goto :goto_0

    .line 273
    .line 274
    .line 275
    :cond_5
    invoke-virtual {v8, v7}, Lcom/narvii/util/image/NVImageLoader;->loadDiskCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 276
    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 277
    .line 278
    :goto_0
    if-nez v8, :cond_6

    .line 279
    .line 280
    .line 281
    :try_start_2
    invoke-virtual {p0}, Lcom/narvii/pushservice/PushNotificationService;->getStack()Lcom/narvii/util/http/ProxyStack;

    .line 282
    move-result-object v9

    .line 283
    .line 284
    new-instance v10, Ljava/net/URL;

    .line 285
    .line 286
    .line 287
    invoke-direct {v10, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v9, v10}, Lcom/narvii/util/http/ProxyStack;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    .line 291
    move-result-object v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 292
    .line 293
    .line 294
    :try_start_3
    invoke-static {v7}, Lcom/narvii/volley/util/HurlConnectionHelper;->getInputStream(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    .line 295
    move-result-object v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 296
    .line 297
    .line 298
    :try_start_4
    invoke-static {v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    .line 299
    move-result-object v8

    .line 300
    goto :goto_1

    .line 301
    :catchall_0
    move-exception p1

    .line 302
    move-object v0, v4

    .line 303
    move-object v4, v9

    .line 304
    .line 305
    goto/16 :goto_5

    .line 306
    :catch_1
    move-object p1, v4

    .line 307
    move-object v4, v9

    .line 308
    .line 309
    goto/16 :goto_2

    .line 310
    :catch_2
    move-exception p1

    .line 311
    move-object v0, v4

    .line 312
    move-object v4, v9

    .line 313
    .line 314
    goto/16 :goto_3

    .line 315
    :catchall_1
    move-exception p1

    .line 316
    move-object v0, v4

    .line 317
    .line 318
    goto/16 :goto_5

    .line 319
    :catch_3
    move-object p1, v4

    .line 320
    .line 321
    goto/16 :goto_2

    .line 322
    :catch_4
    move-exception p1

    .line 323
    move-object v0, v4

    .line 324
    .line 325
    goto/16 :goto_3

    .line 326
    :catchall_2
    move-exception p1

    .line 327
    move-object v0, v4

    .line 328
    move-object v7, v0

    .line 329
    .line 330
    goto/16 :goto_5

    .line 331
    :catch_5
    move-object p1, v4

    .line 332
    move-object v7, p1

    .line 333
    .line 334
    goto/16 :goto_2

    .line 335
    :catch_6
    move-exception p1

    .line 336
    move-object v0, v4

    .line 337
    move-object v7, v0

    .line 338
    .line 339
    goto/16 :goto_3

    .line 340
    :cond_6
    move-object v7, v4

    .line 341
    move-object v9, v7

    .line 342
    .line 343
    :goto_1
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 344
    .line 345
    .line 346
    invoke-static {p1, v2, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 347
    move-result-object v4

    .line 348
    .line 349
    new-instance v10, Landroid/graphics/Canvas;

    .line 350
    .line 351
    .line 352
    invoke-direct {v10, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 353
    .line 354
    new-instance v11, Landroid/graphics/Path;

    .line 355
    .line 356
    .line 357
    invoke-direct {v11}, Landroid/graphics/Path;-><init>()V

    .line 358
    .line 359
    new-instance v12, Landroid/graphics/RectF;

    .line 360
    int-to-float p1, p1

    .line 361
    int-to-float v2, v2

    .line 362
    const/4 v13, 0x0

    .line 363
    .line 364
    .line 365
    invoke-direct {v12, v13, v13, p1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 366
    .line 367
    .line 368
    const v13, 0x3e4ccccd    # 0.2f

    .line 369
    mul-float/2addr p1, v13

    .line 370
    mul-float/2addr v2, v13

    .line 371
    .line 372
    sget-object v13, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v11, v12, p1, v2, v13}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 376
    .line 377
    .line 378
    invoke-virtual {v10, v11}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 379
    .line 380
    new-instance p1, Landroid/graphics/Rect;

    .line 381
    .line 382
    .line 383
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    .line 384
    move-result v2

    .line 385
    .line 386
    .line 387
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    .line 388
    move-result v11

    .line 389
    const/4 v13, 0x0

    .line 390
    .line 391
    .line 392
    invoke-direct {p1, v13, v13, v2, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 393
    .line 394
    new-instance v2, Landroid/graphics/Paint;

    .line 395
    .line 396
    .line 397
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 398
    const/4 v11, 0x1

    .line 399
    .line 400
    .line 401
    invoke-virtual {v2, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 402
    .line 403
    const/high16 v11, -0x1000000

    .line 404
    .line 405
    .line 406
    invoke-virtual {v2, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v10, v8, p1, v12, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 410
    .line 411
    .line 412
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 413
    .line 414
    new-instance p1, Ljava/io/File;

    .line 415
    .line 416
    new-instance v2, Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 420
    .line 421
    .line 422
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    iget v3, v1, Lcom/narvii/model/Community;->id:I

    .line 425
    .line 426
    .line 427
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 431
    move-result-object v2

    .line 432
    .line 433
    .line 434
    invoke-direct {p1, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 435
    .line 436
    new-instance v2, Lcom/narvii/util/SafeFileOutputStream;

    .line 437
    .line 438
    .line 439
    invoke-direct {v2, p1}, Lcom/narvii/util/SafeFileOutputStream;-><init>(Ljava/io/File;)V

    .line 440
    .line 441
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 442
    .line 443
    const/16 v3, 0x64

    .line 444
    .line 445
    .line 446
    invoke-virtual {v4, p1, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 447
    .line 448
    .line 449
    invoke-virtual {v2}, Lcom/narvii/util/SafeFileOutputStream;->close()V

    .line 450
    .line 451
    .line 452
    invoke-static {v6, v0}, Lcom/narvii/util/Utils;->writeToFile(Ljava/io/File;Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 453
    .line 454
    if-eqz v9, :cond_7

    .line 455
    .line 456
    .line 457
    :try_start_5
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    .line 458
    .line 459
    :catch_7
    :cond_7
    if-eqz v7, :cond_8

    .line 460
    .line 461
    .line 462
    :try_start_6
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    .line 463
    .line 464
    .line 465
    :catch_8
    :cond_8
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 466
    .line 467
    .line 468
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 469
    goto :goto_4

    .line 470
    :catchall_3
    move-exception p1

    .line 471
    move-object v0, v4

    .line 472
    move-object v7, v0

    .line 473
    move-object v8, v7

    .line 474
    goto :goto_5

    .line 475
    :catch_9
    move-object p1, v4

    .line 476
    move-object v7, p1

    .line 477
    move-object v8, v7

    .line 478
    goto :goto_2

    .line 479
    :catch_a
    move-exception p1

    .line 480
    move-object v0, v4

    .line 481
    move-object v7, v0

    .line 482
    move-object v8, v7

    .line 483
    goto :goto_3

    .line 484
    .line 485
    :goto_2
    if-eqz v4, :cond_9

    .line 486
    .line 487
    .line 488
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_b

    .line 489
    .line 490
    :catch_b
    :cond_9
    if-eqz v7, :cond_a

    .line 491
    .line 492
    .line 493
    :try_start_8
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_c

    .line 494
    .line 495
    :catch_c
    :cond_a
    if-eqz v8, :cond_b

    .line 496
    .line 497
    .line 498
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 499
    .line 500
    :cond_b
    if-eqz p1, :cond_f

    .line 501
    .line 502
    .line 503
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 504
    goto :goto_4

    .line 505
    .line 506
    :goto_3
    :try_start_9
    const-string v2, "narvii_push"

    .line 507
    .line 508
    new-instance v3, Ljava/lang/StringBuilder;

    .line 509
    .line 510
    .line 511
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 512
    .line 513
    const-string v5, "fail to cache icon for x"

    .line 514
    .line 515
    .line 516
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    .line 518
    iget v1, v1, Lcom/narvii/model/Community;->id:I

    .line 519
    .line 520
    .line 521
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 522
    .line 523
    .line 524
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 525
    move-result-object v1

    .line 526
    .line 527
    .line 528
    invoke-static {v2, v1, p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 529
    .line 530
    if-eqz v4, :cond_c

    .line 531
    .line 532
    .line 533
    :try_start_a
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_d

    .line 534
    .line 535
    :catch_d
    :cond_c
    if-eqz v7, :cond_d

    .line 536
    .line 537
    .line 538
    :try_start_b
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_e

    .line 539
    .line 540
    :catch_e
    :cond_d
    if-eqz v8, :cond_e

    .line 541
    .line 542
    .line 543
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 544
    .line 545
    :cond_e
    if-eqz v0, :cond_f

    .line 546
    .line 547
    .line 548
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 549
    :cond_f
    :goto_4
    return-void

    .line 550
    :catchall_4
    move-exception p1

    .line 551
    .line 552
    :goto_5
    if-eqz v4, :cond_10

    .line 553
    .line 554
    .line 555
    :try_start_c
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_f

    .line 556
    .line 557
    :catch_f
    :cond_10
    if-eqz v7, :cond_11

    .line 558
    .line 559
    .line 560
    :try_start_d
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_10

    .line 561
    .line 562
    :catch_10
    :cond_11
    if-eqz v8, :cond_12

    .line 563
    .line 564
    .line 565
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 566
    .line 567
    :cond_12
    if-eqz v0, :cond_13

    .line 568
    .line 569
    .line 570
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 571
    :cond_13
    throw p1
.end method

.method fetchPic(Lcom/narvii/pushservice/PushPayload;[Landroid/graphics/Bitmap;)V
    .locals 16

    .line 1
    .line 2
    move-object/from16 v1, p0

    .line 3
    .line 4
    move-object/from16 v2, p1

    .line 5
    .line 6
    move-object/from16 v3, p2

    .line 7
    .line 8
    const-string v4, "narvii_push"

    .line 9
    .line 10
    iget-object v5, v2, Lcom/narvii/pushservice/PushPayload;->picUrl:Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    return-void

    .line 18
    .line 19
    :cond_0
    :try_start_0
    const-string v0, ".gif"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v5, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 23
    move-result v0

    .line 24
    .line 25
    .line 26
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 27
    move-result-wide v7

    .line 28
    .line 29
    new-instance v9, Lcom/narvii/util/http/ProxyStack;

    .line 30
    .line 31
    iget-object v10, v1, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    .line 32
    .line 33
    .line 34
    invoke-direct {v9, v10}, Lcom/narvii/util/http/ProxyStack;-><init>(Lcom/narvii/app/NVContext;)V

    .line 35
    .line 36
    new-instance v10, Ljava/net/URL;

    .line 37
    .line 38
    .line 39
    invoke-direct {v10, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v9, v10}, Lcom/narvii/util/http/ProxyStack;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    .line 43
    move-result-object v9

    .line 44
    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    const-string v10, "Range"

    .line 48
    .line 49
    const-string v11, "bytes=0-122880"

    .line 50
    .line 51
    .line 52
    invoke-virtual {v9, v10, v11}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception v0

    .line 55
    const/4 v6, 0x0

    .line 56
    .line 57
    goto/16 :goto_c

    .line 58
    .line 59
    :cond_1
    :goto_0
    const/16 v10, 0x3a98

    .line 60
    .line 61
    .line 62
    invoke-virtual {v9, v10}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v9, v10}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 66
    .line 67
    .line 68
    invoke-static {v9}, Lcom/narvii/volley/util/HurlConnectionHelper;->getInputStream(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    .line 69
    move-result-object v10

    .line 70
    .line 71
    .line 72
    invoke-static {}, Lcom/narvii/util/Utils;->createTmpFile()Ljava/io/File;

    .line 73
    move-result-object v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .line 75
    :try_start_1
    new-instance v12, Ljava/io/FileOutputStream;

    .line 76
    .line 77
    .line 78
    invoke-direct {v12, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 79
    .line 80
    if-eqz v0, :cond_2

    .line 81
    .line 82
    .line 83
    const v13, 0xc000

    .line 84
    .line 85
    new-array v13, v13, [B

    .line 86
    goto :goto_1

    .line 87
    :catchall_1
    move-exception v0

    .line 88
    move-object v6, v11

    .line 89
    .line 90
    goto/16 :goto_c

    .line 91
    :cond_2
    const/4 v13, 0x0

    .line 92
    .line 93
    :goto_1
    const/16 v14, 0x1000

    .line 94
    .line 95
    new-array v14, v14, [B

    .line 96
    const/4 v6, 0x0

    .line 97
    .line 98
    .line 99
    :goto_2
    invoke-virtual {v10, v14}, Ljava/io/InputStream;->read([B)I

    .line 100
    move-result v15

    .line 101
    const/4 v3, -0x1

    .line 102
    .line 103
    if-eq v15, v3, :cond_6

    .line 104
    const/4 v3, 0x0

    .line 105
    .line 106
    .line 107
    invoke-virtual {v12, v14, v3, v15}, Ljava/io/FileOutputStream;->write([BII)V

    .line 108
    .line 109
    if-eqz v13, :cond_4

    .line 110
    .line 111
    add-int v3, v6, v15

    .line 112
    array-length v2, v13

    .line 113
    .line 114
    if-lt v3, v2, :cond_4

    .line 115
    array-length v2, v13

    .line 116
    .line 117
    .line 118
    const v3, 0x1e000

    .line 119
    .line 120
    if-lt v2, v3, :cond_3

    .line 121
    goto :goto_3

    .line 122
    :cond_3
    array-length v2, v13

    .line 123
    .line 124
    mul-int/lit8 v2, v2, 0x2

    .line 125
    .line 126
    .line 127
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    .line 128
    move-result v2

    .line 129
    .line 130
    new-array v2, v2, [B

    .line 131
    const/4 v3, 0x0

    .line 132
    .line 133
    .line 134
    invoke-static {v13, v3, v2, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    move-object v13, v2

    .line 136
    .line 137
    :cond_4
    if-eqz v13, :cond_5

    .line 138
    const/4 v2, 0x0

    .line 139
    .line 140
    .line 141
    invoke-static {v14, v2, v13, v6, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 142
    add-int/2addr v6, v15

    .line 143
    .line 144
    :try_start_2
    new-instance v3, Lcom/narvii/pushservice/GifDec;

    .line 145
    .line 146
    .line 147
    invoke-direct {v3}, Lcom/narvii/pushservice/GifDec;-><init>()V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v3, v13, v2, v6}, Lcom/narvii/pushservice/GifDec;->read([BII)I

    .line 151
    move-result v3
    :try_end_2
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 152
    .line 153
    if-nez v3, :cond_5

    .line 154
    const/4 v2, 0x1

    .line 155
    goto :goto_4

    .line 156
    .line 157
    :catch_0
    :cond_5
    move-object/from16 v2, p1

    .line 158
    .line 159
    move-object/from16 v3, p2

    .line 160
    goto :goto_2

    .line 161
    :cond_6
    :goto_3
    const/4 v2, 0x0

    .line 162
    .line 163
    .line 164
    :goto_4
    :try_start_3
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 171
    .line 172
    const-string v3, "ms "

    .line 173
    .line 174
    const/16 v9, 0x400

    .line 175
    .line 176
    if-eqz v0, :cond_8

    .line 177
    .line 178
    const-string v0, "k in "

    .line 179
    .line 180
    if-eqz v2, :cond_7

    .line 181
    .line 182
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .line 187
    const-string v10, "push gif download "

    .line 188
    .line 189
    .line 190
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    div-int/2addr v6, v9

    .line 192
    .line 193
    .line 194
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 201
    move-result-wide v12

    .line 202
    sub-long/2addr v12, v7

    .line 203
    .line 204
    .line 205
    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    move-result-object v0

    .line 216
    .line 217
    .line 218
    invoke-static {v4, v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    goto :goto_5

    .line 220
    .line 221
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .line 226
    const-string v10, "push gif download giveup at "

    .line 227
    .line 228
    .line 229
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    div-int/2addr v6, v9

    .line 231
    .line 232
    .line 233
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 240
    move-result-wide v12

    .line 241
    sub-long/2addr v12, v7

    .line 242
    .line 243
    .line 244
    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    move-result-object v0

    .line 255
    .line 256
    .line 257
    invoke-static {v4, v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    goto :goto_5

    .line 259
    .line 260
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    .line 265
    const-string v2, "push pic download in "

    .line 266
    .line 267
    .line 268
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 272
    move-result-wide v12

    .line 273
    sub-long/2addr v12, v7

    .line 274
    .line 275
    .line 276
    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 286
    move-result-object v0

    .line 287
    .line 288
    .line 289
    invoke-static {v4, v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    .line 291
    :goto_5
    iget-object v0, v1, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    .line 292
    .line 293
    .line 294
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 295
    move-result-object v0

    .line 296
    .line 297
    .line 298
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 299
    move-result-object v0

    .line 300
    .line 301
    .line 302
    const v2, 0x1050005

    .line 303
    .line 304
    .line 305
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 306
    move-result v0

    .line 307
    .line 308
    iget-object v2, v1, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    .line 309
    .line 310
    .line 311
    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 312
    move-result-object v2

    .line 313
    .line 314
    .line 315
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 316
    move-result-object v2

    .line 317
    .line 318
    .line 319
    const v3, 0x1050006

    .line 320
    .line 321
    .line 322
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 323
    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 324
    .line 325
    .line 326
    :try_start_5
    invoke-static {v11, v0, v2}, Lcom/narvii/util/image/BitmapUtils;->openBitmapAtSize(Ljava/io/File;II)Landroid/graphics/Bitmap;

    .line 327
    move-result-object v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 328
    .line 329
    .line 330
    :try_start_6
    invoke-static {v3, v0, v2}, Lcom/narvii/util/image/BitmapUtils;->cropCenterAtSize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    .line 331
    move-result-object v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 332
    .line 333
    move-object/from16 v7, p1

    .line 334
    const/4 v8, 0x1

    .line 335
    .line 336
    :try_start_7
    iget v10, v7, Lcom/narvii/pushservice/PushPayload;->picType:I

    .line 337
    .line 338
    if-ne v10, v8, :cond_9

    .line 339
    .line 340
    .line 341
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 342
    move-result-object v10

    .line 343
    .line 344
    .line 345
    invoke-static {v0, v2, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 346
    move-result-object v10

    .line 347
    const/4 v12, 0x0

    .line 348
    .line 349
    .line 350
    invoke-virtual {v10, v12}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 351
    .line 352
    new-instance v12, Landroid/graphics/Canvas;

    .line 353
    .line 354
    .line 355
    invoke-direct {v12, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 356
    .line 357
    new-instance v13, Landroid/graphics/BitmapShader;

    .line 358
    .line 359
    sget-object v14, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 360
    .line 361
    .line 362
    invoke-direct {v13, v6, v14, v14}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 363
    .line 364
    new-instance v14, Landroid/graphics/Paint;

    .line 365
    .line 366
    .line 367
    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v14, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v14, v8}, Landroid/graphics/Paint;->setDither(Z)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v14, v8}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v14, v13}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 380
    .line 381
    const/high16 v13, -0x10000

    .line 382
    .line 383
    .line 384
    invoke-virtual {v14, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 385
    int-to-float v13, v0

    .line 386
    .line 387
    const/high16 v15, 0x3f000000    # 0.5f

    .line 388
    mul-float/2addr v13, v15

    .line 389
    int-to-float v9, v2

    .line 390
    mul-float/2addr v9, v15

    .line 391
    .line 392
    .line 393
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 394
    move-result v0

    .line 395
    .line 396
    div-int/lit8 v0, v0, 0x2

    .line 397
    int-to-float v0, v0

    .line 398
    .line 399
    .line 400
    invoke-virtual {v12, v13, v9, v0, v14}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 404
    move-object v6, v10

    .line 405
    goto :goto_6

    .line 406
    :catchall_2
    move-exception v0

    .line 407
    .line 408
    move-object/from16 v2, p2

    .line 409
    goto :goto_8

    .line 410
    .line 411
    :cond_9
    :goto_6
    if-eqz v3, :cond_a

    .line 412
    .line 413
    if-eq v3, v6, :cond_a

    .line 414
    .line 415
    .line 416
    :try_start_8
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 417
    .line 418
    :cond_a
    move-object/from16 v2, p2

    .line 419
    const/4 v3, 0x0

    .line 420
    .line 421
    aput-object v6, v2, v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 422
    goto :goto_9

    .line 423
    :catchall_3
    move-exception v0

    .line 424
    .line 425
    move-object/from16 v7, p1

    .line 426
    .line 427
    move-object/from16 v2, p2

    .line 428
    const/4 v8, 0x1

    .line 429
    :goto_7
    const/4 v6, 0x0

    .line 430
    goto :goto_8

    .line 431
    :catchall_4
    move-exception v0

    .line 432
    .line 433
    move-object/from16 v7, p1

    .line 434
    .line 435
    move-object/from16 v2, p2

    .line 436
    const/4 v8, 0x1

    .line 437
    const/4 v3, 0x0

    .line 438
    goto :goto_7

    .line 439
    .line 440
    .line 441
    :goto_8
    :try_start_9
    invoke-static {v0}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    .line 442
    .line 443
    if-eqz v3, :cond_b

    .line 444
    .line 445
    if-eq v3, v6, :cond_b

    .line 446
    .line 447
    .line 448
    :try_start_a
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 449
    :cond_b
    const/4 v3, 0x0

    .line 450
    .line 451
    aput-object v6, v2, v3

    .line 452
    :goto_9
    array-length v0, v2

    .line 453
    .line 454
    if-le v0, v8, :cond_f

    .line 455
    .line 456
    iget v0, v7, Lcom/narvii/pushservice/PushPayload;->picType:I

    .line 457
    .line 458
    if-nez v0, :cond_f

    .line 459
    .line 460
    iget-object v0, v1, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    .line 461
    .line 462
    .line 463
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 464
    move-result-object v0

    .line 465
    .line 466
    .line 467
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 468
    move-result-object v0

    .line 469
    .line 470
    .line 471
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 472
    move-result-object v0

    .line 473
    .line 474
    iget-object v3, v1, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    .line 475
    .line 476
    .line 477
    invoke-interface {v3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 478
    move-result-object v3

    .line 479
    .line 480
    const/high16 v6, 0x43e10000    # 450.0f

    .line 481
    .line 482
    .line 483
    invoke-static {v3, v6}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 484
    move-result v3

    .line 485
    float-to-int v3, v3

    .line 486
    .line 487
    const/16 v6, 0x400

    .line 488
    .line 489
    .line 490
    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    .line 491
    move-result v3

    .line 492
    .line 493
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 494
    .line 495
    .line 496
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    .line 497
    move-result v0

    .line 498
    int-to-float v3, v0

    .line 499
    .line 500
    .line 501
    const v6, 0x3f47ae14    # 0.78f

    .line 502
    mul-float/2addr v3, v6

    .line 503
    .line 504
    .line 505
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 506
    move-result v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 507
    .line 508
    .line 509
    :try_start_b
    invoke-static {v11, v0, v3}, Lcom/narvii/util/image/BitmapUtils;->openBitmapAtSize(Ljava/io/File;II)Landroid/graphics/Bitmap;

    .line 510
    move-result-object v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 511
    .line 512
    .line 513
    :try_start_c
    invoke-static {v6, v0, v3}, Lcom/narvii/util/image/BitmapUtils;->cropCenterAtSize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    .line 514
    move-result-object v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 515
    .line 516
    if-eqz v6, :cond_c

    .line 517
    .line 518
    if-eq v6, v0, :cond_c

    .line 519
    .line 520
    .line 521
    :try_start_d
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 522
    .line 523
    :cond_c
    aput-object v0, v2, v8
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 524
    goto :goto_b

    .line 525
    :catchall_5
    move-exception v0

    .line 526
    goto :goto_a

    .line 527
    :catchall_6
    move-exception v0

    .line 528
    const/4 v6, 0x0

    .line 529
    .line 530
    .line 531
    :goto_a
    :try_start_e
    invoke-static {v0}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    .line 532
    .line 533
    if-eqz v6, :cond_d

    .line 534
    .line 535
    .line 536
    :try_start_f
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 537
    :cond_d
    const/4 v3, 0x0

    .line 538
    .line 539
    aput-object v3, v2, v8

    .line 540
    goto :goto_b

    .line 541
    :catchall_7
    move-exception v0

    .line 542
    move-object v3, v0

    .line 543
    .line 544
    if-eqz v6, :cond_e

    .line 545
    .line 546
    .line 547
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 548
    :cond_e
    const/4 v6, 0x0

    .line 549
    .line 550
    aput-object v6, v2, v8

    .line 551
    throw v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 552
    .line 553
    :cond_f
    :goto_b
    if-eqz v11, :cond_11

    .line 554
    .line 555
    .line 556
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 557
    goto :goto_d

    .line 558
    :catchall_8
    move-exception v0

    .line 559
    move-object v7, v0

    .line 560
    .line 561
    if-eqz v3, :cond_10

    .line 562
    .line 563
    if-eq v3, v6, :cond_10

    .line 564
    .line 565
    .line 566
    :try_start_10
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 567
    :cond_10
    const/4 v3, 0x0

    .line 568
    .line 569
    aput-object v6, v2, v3

    .line 570
    throw v7
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 571
    .line 572
    :goto_c
    :try_start_11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 573
    .line 574
    .line 575
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 576
    .line 577
    const-string v3, "push pic download fail "

    .line 578
    .line 579
    .line 580
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    .line 582
    .line 583
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    .line 585
    .line 586
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 587
    move-result-object v2

    .line 588
    .line 589
    .line 590
    invoke-static {v4, v2, v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 591
    .line 592
    .line 593
    invoke-static {v0}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    .line 594
    .line 595
    if-eqz v6, :cond_11

    .line 596
    .line 597
    .line 598
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 599
    :cond_11
    :goto_d
    return-void

    .line 600
    :catchall_9
    move-exception v0

    .line 601
    .line 602
    if-eqz v6, :cond_12

    .line 603
    .line 604
    .line 605
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 606
    :cond_12
    throw v0
.end method

.method protected getChannelId(Lcom/narvii/pushservice/PushPayload;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    sget v0, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    .line 3
    .line 4
    const/16 v1, 0xc8

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const-string p1, "community-management"

    .line 9
    return-object p1

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/pushservice/PushNotificationService;->getNotifyType(Lcom/narvii/pushservice/PushPayload;)I

    .line 13
    move-result p1

    .line 14
    const/4 v0, 0x1

    .line 15
    .line 16
    if-eq p1, v0, :cond_3

    .line 17
    const/4 v0, 0x2

    .line 18
    .line 19
    if-eq p1, v0, :cond_2

    .line 20
    const/4 v0, 0x4

    .line 21
    .line 22
    if-eq p1, v0, :cond_1

    .line 23
    const/4 p1, 0x0

    .line 24
    return-object p1

    .line 25
    .line 26
    :cond_1
    const-string p1, "broadcast"

    .line 27
    return-object p1

    .line 28
    .line 29
    :cond_2
    const-string p1, "chat"

    .line 30
    return-object p1

    .line 31
    .line 32
    :cond_3
    const-string p1, "alert"

    .line 33
    return-object p1
.end method

.method getIconBitmap(I)Landroid/graphics/Bitmap;
    .locals 5

    .line 1
    .line 2
    new-instance v0, Ljava/io/File;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/pushservice/PushNotificationService;->getIconDir()Ljava/io/File;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string/jumbo v3, "x"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 31
    move-result-wide v1

    .line 32
    .line 33
    const-wide/16 v3, 0x0

    .line 34
    .line 35
    cmp-long p1, v1, v3

    .line 36
    .line 37
    if-lez p1, :cond_0

    .line 38
    .line 39
    .line 40
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    .line 44
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 45
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    return-object p1

    .line 47
    :catch_0
    move-exception p1

    .line 48
    .line 49
    .line 50
    invoke-static {p1}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    .line 51
    :catch_1
    :cond_0
    const/4 p1, 0x0

    .line 52
    return-object p1
.end method

.method getIconDir()Ljava/io/File;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/pushservice/PushNotificationService;->iconDir:Ljava/io/File;

    .line 3
    .line 4
    if-nez v0, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    .line 25
    .line 26
    .line 27
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    :cond_1
    new-instance v1, Ljava/io/File;

    .line 35
    .line 36
    const-string v2, "PushIcon"

    .line 37
    .line 38
    .line 39
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 40
    .line 41
    iput-object v1, p0, Lcom/narvii/pushservice/PushNotificationService;->iconDir:Ljava/io/File;

    .line 42
    .line 43
    :cond_2
    iget-object v0, p0, Lcom/narvii/pushservice/PushNotificationService;->iconDir:Ljava/io/File;

    .line 44
    return-object v0
.end method

.method protected getIntent(Landroid/net/Uri;Lcom/narvii/pushservice/PushPayload;)Landroid/content/Intent;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, v0}, Lcom/narvii/pushservice/PushPayload;->isCurrenVersionPush(Landroid/content/Context;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const-string p1, "ndc://app-upgrade"

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    .line 21
    .line 22
    const-string v1, "navigator"

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    check-cast v0, Lcom/narvii/navigator/Navigator;

    .line 29
    .line 30
    new-instance v1, Landroid/content/Intent;

    .line 31
    .line 32
    const-string v2, "android.intent.action.VIEW"

    .line 33
    .line 34
    .line 35
    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {p0, v1, p2}, Lcom/narvii/pushservice/PushNotificationService;->handleSpecificPush(Landroid/content/Intent;Lcom/narvii/pushservice/PushPayload;)Landroid/content/Intent;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    .line 42
    invoke-interface {v0, p1}, Lcom/narvii/navigator/Navigator;->intentMapping(Landroid/content/Intent;)Landroid/content/Intent;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 47
    move-result-object p2

    .line 48
    .line 49
    if-eqz p2, :cond_1

    .line 50
    return-object p1

    .line 51
    :cond_1
    const/4 p1, 0x0

    .line 52
    return-object p1
.end method

.method protected getNotifyType(Lcom/narvii/pushservice/PushPayload;)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/narvii/pushservice/PushPayload;->isMarketing()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 p1, 0x4

    .line 8
    goto :goto_0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/pushservice/PushPayload;->isChat()Z

    .line 12
    move-result p1

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    const/4 p1, 0x2

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 p1, 0x1

    .line 18
    :goto_0
    return p1
.end method

.method getStack()Lcom/narvii/util/http/ProxyStack;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/pushservice/PushNotificationService;->stack:Lcom/narvii/util/http/ProxyStack;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/narvii/util/http/ProxyStack;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/narvii/util/http/ProxyStack;-><init>(Lcom/narvii/app/NVContext;)V

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/pushservice/PushNotificationService;->stack:Lcom/narvii/util/http/ProxyStack;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/narvii/pushservice/PushNotificationService;->stack:Lcom/narvii/util/http/ProxyStack;

    .line 16
    return-object v0
.end method

.method protected hasPic(Lcom/narvii/pushservice/PushPayload;)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/pushservice/PushPayload;->picUrl:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget p1, p1, Lcom/narvii/pushservice/PushPayload;->picType:I

    .line 11
    const/4 v0, 0x1

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    if-ne p1, v0, :cond_0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :cond_1
    :goto_0
    return v0
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/PushNotificationService;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    sput-boolean p1, Lcom/narvii/pushservice/PushNotificationService;->isAppActive:Z

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/pushservice/PushNotificationService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/pushservice/PushNotificationService;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/PushNotificationService;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/PushNotificationService;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    sput-boolean p1, Lcom/narvii/pushservice/PushNotificationService;->isAppActive:Z

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/pushservice/PushNotificationService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/pushservice/PushNotificationService;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/PushNotificationService;)V

    return-void
.end method

.method public showPushNotification(Lcom/narvii/pushservice/PushPayload;)V
    .locals 9

    .line 1
    iget v0, p1, Lcom/narvii/pushservice/PushPayload;->type:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/narvii/pushservice/PushPayload;->threadId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/pushservice/PushNotificationService;->chatPushNotificatonVavle:Lcom/narvii/pushservice/ChatPushNotificationVavle;

    iget-object v1, p0, Lcom/narvii/pushservice/PushNotificationService;->callback:Lcom/narvii/util/Callback;

    .line 2
    invoke-virtual {v0, p1, v1}, Lcom/narvii/pushservice/ChatPushNotificationVavle;->checkShowNotification(Lcom/narvii/pushservice/PushPayload;Lcom/narvii/util/Callback;)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    .line 3
    invoke-virtual/range {v2 .. v8}, Lcom/narvii/pushservice/PushNotificationService;->showPushNotification(Lcom/narvii/pushservice/PushPayload;Landroid/content/Intent;Landroid/app/PendingIntent;Ljava/lang/Integer;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public showPushNotification(Lcom/narvii/pushservice/PushPayload;Landroid/content/Intent;Landroid/app/PendingIntent;Ljava/lang/Integer;Ljava/lang/String;Z)V
    .locals 11

    move-object v3, p1

    if-nez v3, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/pushservice/PushNotificationService;->hasPic(Lcom/narvii/pushservice/PushPayload;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, v3, Lcom/narvii/pushservice/PushPayload;->picDownloaded:Z

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget v2, v3, Lcom/narvii/pushservice/PushPayload;->ndcId:I

    move-object v9, p0

    invoke-direct {p0, v2}, Lcom/narvii/pushservice/PushNotificationService;->isCommunityIconReady(I)Z

    move-result v2

    xor-int/2addr v1, v2

    if-eqz v0, :cond_2

    .line 6
    new-instance v10, Lcom/narvii/pushservice/PushNotificationService$1;

    const-string v2, "push-pic"

    move-object v0, v10

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/narvii/pushservice/PushNotificationService$1;-><init>(Lcom/narvii/pushservice/PushNotificationService;Ljava/lang/String;Lcom/narvii/pushservice/PushPayload;Landroid/content/Intent;Landroid/app/PendingIntent;Ljava/lang/Integer;Ljava/lang/String;Z)V

    .line 7
    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    .line 8
    new-instance v10, Lcom/narvii/pushservice/PushNotificationService$2;

    const-string v2, "push-communtiy"

    move-object v0, v10

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/narvii/pushservice/PushNotificationService$2;-><init>(Lcom/narvii/pushservice/PushNotificationService;Ljava/lang/String;Lcom/narvii/pushservice/PushPayload;Landroid/content/Intent;Landroid/app/PendingIntent;Ljava/lang/Integer;Ljava/lang/String;Z)V

    .line 9
    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 10
    :cond_3
    invoke-direct/range {p0 .. p6}, Lcom/narvii/pushservice/PushNotificationService;->showPushNotificationInteral(Lcom/narvii/pushservice/PushPayload;Landroid/content/Intent;Landroid/app/PendingIntent;Ljava/lang/Integer;Ljava/lang/String;Z)V

    :goto_1
    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/PushNotificationService;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/pushservice/PushNotificationService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/pushservice/PushNotificationService;->start(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/PushNotificationService;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/PushNotificationService;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/pushservice/PushNotificationService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/pushservice/PushNotificationService;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/PushNotificationService;)V

    return-void
.end method
