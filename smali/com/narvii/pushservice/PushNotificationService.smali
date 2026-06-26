.class public Lcom/narvii/pushservice/PushNotificationService;
.super Ljava/lang/Object;
.source "PushNotificationService.java"

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

    .line 110
    new-instance v0, Lcom/narvii/util/statistics/TmpValue;

    invoke-direct {v0}, Lcom/narvii/util/statistics/TmpValue;-><init>()V

    sput-object v0, Lcom/narvii/pushservice/PushNotificationService;->FROM_PUSH:Lcom/narvii/util/statistics/TmpValue;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    new-instance v0, Lcom/narvii/pushservice/-$$Lambda$PushNotificationService$YieLhpj2zsi1FWzEtccGiiQq9aQ;

    invoke-direct {v0, p0}, Lcom/narvii/pushservice/-$$Lambda$PushNotificationService$YieLhpj2zsi1FWzEtccGiiQq9aQ;-><init>(Lcom/narvii/pushservice/PushNotificationService;)V

    iput-object v0, p0, Lcom/narvii/pushservice/PushNotificationService;->callback:Lcom/narvii/util/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/pushservice/PushNotificationService;Lcom/narvii/pushservice/PushPayload;)Z
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/narvii/pushservice/PushNotificationService;->needGroup(Lcom/narvii/pushservice/PushPayload;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/narvii/pushservice/PushNotificationService;Lcom/narvii/pushservice/PushPayload;Landroid/content/Intent;Landroid/app/PendingIntent;Ljava/lang/Integer;Ljava/lang/String;Z)V
    .locals 0

    .line 82
    invoke-direct/range {p0 .. p6}, Lcom/narvii/pushservice/PushNotificationService;->showPushNotificationInteral(Lcom/narvii/pushservice/PushPayload;Landroid/content/Intent;Landroid/app/PendingIntent;Ljava/lang/Integer;Ljava/lang/String;Z)V

    return-void
.end method

.method private configCustomBuilder(Landroid/support/v4/app/NotificationCompat$Builder;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 616
    iget-object v0, p0, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 618
    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/narvii/pushservice/R$layout;->custom_notification_layout:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 619
    sget v2, Lcom/narvii/pushservice/R$id;->custom_notification_title:I

    invoke-virtual {v1, v2, p5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 620
    sget v2, Lcom/narvii/pushservice/R$id;->custom_notification_title:I

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz p5, :cond_0

    const/16 p5, 0x8

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    :goto_0
    invoke-virtual {v1, v2, p5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 621
    sget p5, Lcom/narvii/pushservice/R$id;->custom_notification_body:I

    invoke-virtual {v1, p5, p6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 622
    sget p5, Lcom/narvii/pushservice/R$id;->custom_notification_thumbnail:I

    invoke-virtual {v1, p5, p2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    if-nez p4, :cond_1

    .line 624
    sget p2, Lcom/narvii/pushservice/R$id;->custom_notification_small_icon:I

    sget p4, Lcom/narvii/pushservice/R$drawable;->ic_notify_ablue:I

    invoke-virtual {v1, p2, p4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1

    .line 626
    :cond_1
    sget p2, Lcom/narvii/pushservice/R$id;->custom_notification_small_icon:I

    invoke-virtual {v1, p2, p4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 628
    :goto_1
    sget p2, Lcom/narvii/pushservice/R$id;->custom_notification_title_text:I

    invoke-virtual {v1, p2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 629
    sget p2, Lcom/narvii/pushservice/R$id;->custom_notification_title_text2:I

    invoke-virtual {v1, p2, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 630
    sget p2, Lcom/narvii/pushservice/R$id;->custom_notification_title_text2:I

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_2

    const/16 p4, 0x8

    goto :goto_2

    :cond_2
    const/4 p4, 0x0

    :goto_2
    invoke-virtual {v1, p2, p4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 631
    sget p2, Lcom/narvii/pushservice/R$id;->custom_notification_title_dot:I

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v1, p2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const/4 p2, 0x0

    .line 633
    invoke-virtual {p1, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 634
    invoke-virtual {p1, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroid/support/v4/app/NotificationCompat$Builder;

    return-void
.end method

.method private getNotifyId(Lcom/narvii/pushservice/PushPayload;Ljava/lang/Integer;)I
    .locals 1

    if-nez p2, :cond_0

    .line 242
    invoke-virtual {p0, p1}, Lcom/narvii/pushservice/PushNotificationService;->getNotifyType(Lcom/narvii/pushservice/PushPayload;)I

    move-result p2

    .line 244
    iget-boolean v0, p0, Lcom/narvii/pushservice/PushNotificationService;->isMaster:Z

    if-eqz v0, :cond_1

    .line 245
    iget p1, p1, Lcom/narvii/pushservice/PushPayload;->ndcId:I

    shl-int/lit8 p1, p1, 0x3

    and-int/lit8 p1, p1, -0x8

    or-int/2addr p2, p1

    goto :goto_0

    .line 248
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :cond_1
    :goto_0
    return p2
.end method

.method private handleSpecificPush(Landroid/content/Intent;Lcom/narvii/pushservice/PushPayload;)Landroid/content/Intent;
    .locals 2

    .line 296
    iget v0, p2, Lcom/narvii/pushservice/PushPayload;->type:I

    const/16 v1, 0x42

    if-ne v0, v1, :cond_0

    .line 297
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "payload"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-object p1
.end method

.method private isCommunityIconReady(I)Z
    .locals 5

    const/4 v0, 0x1

    if-gtz p1, :cond_0

    return v0

    .line 811
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/narvii/pushservice/PushNotificationService;->getIconDir()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 812
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private needGroup(Lcom/narvii/pushservice/PushPayload;)Z
    .locals 7

    .line 221
    iget-object v0, p0, Lcom/narvii/pushservice/PushNotificationService;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getDir()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    .line 222
    invoke-direct {p0, p1, v1}, Lcom/narvii/pushservice/PushNotificationService;->getNotifyId(Lcom/narvii/pushservice/PushPayload;Ljava/lang/Integer;)I

    move-result p1

    .line 223
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "push_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 224
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-lez p1, :cond_0

    .line 226
    :try_start_0
    sget-object p1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v0, Lcom/narvii/pushservice/PushPayloadSet;

    invoke-virtual {p1, v2, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/io/File;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/pushservice/PushPayloadSet;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to read push payload set from "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "narvii_push"

    invoke-static {v2, v0, p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method private showPushNotificationInteral(Lcom/narvii/pushservice/PushPayload;Landroid/content/Intent;Landroid/app/PendingIntent;Ljava/lang/Integer;Ljava/lang/String;Z)V
    .locals 21

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move-object/from16 v0, p5

    .line 308
    iget-object v1, v8, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    invoke-virtual {v9, v1}, Lcom/narvii/pushservice/PushPayload;->message(Lcom/narvii/app/NVContext;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "narvii_push"

    if-nez v11, :cond_0

    const-string v0, "no push message, just ignore"

    .line 310
    invoke-static {v12, v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 313
    :cond_0
    iget v1, v9, Lcom/narvii/pushservice/PushPayload;->type:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_1

    iget-object v1, v9, Lcom/narvii/pushservice/PushPayload;->threadId:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 314
    iget-object v1, v8, Lcom/narvii/pushservice/PushNotificationService;->chatPushNotificatonVavle:Lcom/narvii/pushservice/ChatPushNotificationVavle;

    invoke-virtual {v1, v9}, Lcom/narvii/pushservice/ChatPushNotificationVavle;->saveLastShownTime(Lcom/narvii/pushservice/PushPayload;)V

    .line 316
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/narvii/pushservice/PushPayload;->getUri()Landroid/net/Uri;

    move-result-object v1

    .line 318
    invoke-virtual/range {p0 .. p1}, Lcom/narvii/pushservice/PushNotificationService;->getNotifyType(Lcom/narvii/pushservice/PushPayload;)I

    move-result v13

    move-object/from16 v2, p4

    .line 319
    invoke-direct {v8, v9, v2}, Lcom/narvii/pushservice/PushNotificationService;->getNotifyId(Lcom/narvii/pushservice/PushPayload;Ljava/lang/Integer;)I

    move-result v14

    .line 328
    new-instance v15, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v2, v8, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v15, v2}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x1

    .line 329
    invoke-virtual {v15, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move/from16 v2, p6

    .line 330
    invoke-virtual {v15, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 332
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_2

    .line 333
    invoke-virtual/range {p0 .. p1}, Lcom/narvii/pushservice/PushNotificationService;->getChannelId(Lcom/narvii/pushservice/PushPayload;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 335
    invoke-virtual {v15, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 339
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/narvii/pushservice/PushPayload;->isChat()Z

    move-result v2

    const/4 v6, 0x0

    if-nez v2, :cond_4

    sget-boolean v2, Lcom/narvii/pushservice/PushNotificationService;->isAppActive:Z

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v2, 0x1

    :goto_1
    const/16 v3, 0x10

    if-eqz v2, :cond_5

    .line 340
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v3, :cond_5

    .line 341
    invoke-virtual {v15, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 348
    :cond_5
    iget-object v4, v9, Lcom/narvii/pushservice/PushPayload;->aps:Lcom/narvii/pushservice/PushAPS;

    iget-object v4, v4, Lcom/narvii/pushservice/PushAPS;->sound:Ljava/lang/String;

    const/4 v5, 0x2

    if-eqz v4, :cond_8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    iget-wide v3, v8, Lcom/narvii/pushservice/PushNotificationService;->lastRing:J

    const-wide/16 v18, 0x1f40

    add-long v3, v3, v18

    cmp-long v18, v16, v3

    if-lez v18, :cond_8

    .line 349
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v8, Lcom/narvii/pushservice/PushNotificationService;->lastRing:J

    .line 351
    :try_start_0
    iget-object v3, v8, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 352
    iget-object v4, v9, Lcom/narvii/pushservice/PushPayload;->aps:Lcom/narvii/pushservice/PushAPS;

    iget-object v4, v4, Lcom/narvii/pushservice/PushAPS;->sound:Ljava/lang/String;

    const/16 v7, 0x2e

    .line 353
    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-lez v7, :cond_6

    .line 355
    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 357
    :cond_6
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 358
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string/jumbo v6, "raw"

    .line 359
    invoke-virtual {v3, v4, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_7

    .line 361
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "android.resource://"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/raw/"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    :cond_7
    const/4 v3, 0x0

    :goto_2
    if-nez v3, :cond_9

    .line 366
    invoke-static {v5}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v3

    goto :goto_3

    :cond_8
    const/4 v3, 0x0

    :cond_9
    :goto_3
    if-nez v3, :cond_b

    if-eqz v2, :cond_a

    goto :goto_4

    :cond_a
    const/4 v2, 0x0

    goto :goto_5

    :cond_b
    :goto_4
    const/4 v2, 0x1

    .line 373
    :goto_5
    invoke-virtual {v15, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    const/4 v3, 0x4

    .line 374
    invoke-virtual {v15, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    if-eqz v2, :cond_c

    new-array v2, v5, [J

    .line 376
    fill-array-data v2, :array_0

    invoke-virtual {v15, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 383
    :cond_c
    iget-boolean v2, v8, Lcom/narvii/pushservice/PushNotificationService;->isMaster:Z

    const-string/jumbo v4, "x"

    if-eqz v2, :cond_f

    iget v2, v9, Lcom/narvii/pushservice/PushPayload;->ndcId:I

    if-lez v2, :cond_f

    .line 384
    iget-object v2, v8, Lcom/narvii/pushservice/PushNotificationService;->pushCommunityNamePrefs:Landroid/content/SharedPreferences;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v9, Lcom/narvii/pushservice/PushPayload;->ndcId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 385
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 387
    iget-object v2, v8, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    const-string v6, "community"

    invoke-interface {v2, v6}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/community/CommunityService;

    .line 388
    iget v6, v9, Lcom/narvii/pushservice/PushPayload;->ndcId:I

    invoke-virtual {v2, v6}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object v2

    if-nez v2, :cond_d

    move-object v2, v7

    goto :goto_6

    .line 389
    :cond_d
    iget-object v2, v2, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    :cond_e
    :goto_6
    move-object v6, v2

    goto :goto_7

    :cond_f
    const/4 v7, 0x0

    move-object v6, v7

    .line 392
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/narvii/pushservice/PushPayload;->title()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_10

    move-object v2, v6

    :cond_10
    if-nez v2, :cond_11

    .line 397
    iget-object v2, v8, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v7, v8, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v7}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_11
    move-object v7, v2

    .line 399
    invoke-virtual {v15, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 400
    invoke-virtual {v15, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 401
    invoke-virtual {v15, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 402
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_13

    if-nez v0, :cond_12

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v9, Lcom/narvii/pushservice/PushPayload;->ndcId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    const/4 v2, 0x1

    .line 405
    invoke-virtual {v15, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_8

    :cond_12
    const/4 v2, 0x1

    const-string v3, "null"

    .line 406
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 407
    invoke-virtual {v15, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 408
    invoke-virtual {v15, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_8

    :cond_13
    const/4 v2, 0x1

    :cond_14
    :goto_8
    if-nez p2, :cond_20

    if-eq v13, v2, :cond_15

    if-ne v13, v5, :cond_20

    .line 417
    :cond_15
    iget-object v0, v8, Lcom/narvii/pushservice/PushNotificationService;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getDir()Ljava/io/File;

    move-result-object v0

    .line 418
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "push_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 419
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v19, 0x0

    cmp-long v0, v3, v19

    if-lez v0, :cond_16

    .line 421
    :try_start_1
    sget-object v0, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v3, Lcom/narvii/pushservice/PushPayloadSet;

    invoke-virtual {v0, v2, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/io/File;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/narvii/pushservice/PushPayloadSet;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_9

    :catch_1
    move-exception v0

    .line 423
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to read push payload set from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3, v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_16
    const/4 v3, 0x0

    :goto_9
    if-nez v3, :cond_17

    .line 428
    new-instance v3, Lcom/narvii/pushservice/PushPayloadSet;

    invoke-direct {v3}, Lcom/narvii/pushservice/PushPayloadSet;-><init>()V

    .line 430
    :cond_17
    invoke-virtual {v3, v9}, Lcom/narvii/pushservice/PushPayloadSet;->append(Lcom/narvii/pushservice/PushPayload;)V

    .line 432
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 434
    :try_start_2
    sget-object v0, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, v2, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValue(Ljava/io/File;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_a

    :catch_2
    move-exception v0

    .line 436
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail to write push payload set to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2, v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 440
    :cond_18
    :goto_a
    iget-object v0, v8, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    invoke-virtual {v3, v0, v15}, Lcom/narvii/pushservice/PushPayloadSet;->setNotificationContent(Lcom/narvii/app/NVContext;Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 442
    invoke-virtual {v3}, Lcom/narvii/pushservice/PushPayloadSet;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1e

    const-string v0, "ndc://x"

    const/4 v1, 0x2

    if-ne v13, v1, :cond_1b

    if-nez v6, :cond_19

    .line 445
    iget-object v1, v8, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v4, Lcom/narvii/pushservice/R$string;->pushservice_chat_title:I

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/narvii/pushservice/PushPayloadSet;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v17, 0x0

    aput-object v2, v5, v17

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_b

    :cond_19
    const/16 v17, 0x0

    .line 447
    iget-object v1, v8, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/narvii/pushservice/R$string;->pushservice_chat_title_c:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/narvii/pushservice/PushPayloadSet;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v17

    const/4 v3, 0x1

    aput-object v6, v4, v3

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 449
    :goto_b
    iget-boolean v1, v8, Lcom/narvii/pushservice/PushNotificationService;->isMaster:Z

    if-eqz v1, :cond_1a

    .line 450
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

    goto :goto_d

    :cond_1a
    const-string v0, "ndc://my-chats"

    .line 452
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_d

    :cond_1b
    if-nez v6, :cond_1c

    .line 456
    iget-object v1, v8, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/narvii/pushservice/R$string;->pushservice_normal_title:I

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/narvii/pushservice/PushPayloadSet;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v5, v4

    invoke-virtual {v1, v2, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_c

    :cond_1c
    const/4 v4, 0x0

    .line 458
    iget-object v1, v8, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/narvii/pushservice/R$string;->pushservice_normal_title_c:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/narvii/pushservice/PushPayloadSet;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v4

    const/4 v3, 0x1

    aput-object v6, v5, v3

    invoke-virtual {v1, v2, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 460
    :goto_c
    iget-boolean v1, v8, Lcom/narvii/pushservice/PushNotificationService;->isMaster:Z

    if-eqz v1, :cond_1d

    .line 461
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

    goto :goto_d

    :cond_1d
    const-string v0, "ndc://notifications"

    .line 463
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_d
    const/4 v3, 0x0

    const/16 v17, 0x0

    goto :goto_e

    .line 468
    :cond_1e
    invoke-virtual/range {p0 .. p1}, Lcom/narvii/pushservice/PushNotificationService;->hasPic(Lcom/narvii/pushservice/PushPayload;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v2, 0x1

    new-array v0, v2, [Landroid/graphics/Bitmap;

    .line 470
    invoke-virtual {v8, v9, v0}, Lcom/narvii/pushservice/PushNotificationService;->fetchPic(Lcom/narvii/pushservice/PushPayload;[Landroid/graphics/Bitmap;)V

    const/16 v17, 0x0

    .line 471
    aget-object v3, v0, v17

    goto :goto_e

    :cond_1f
    const/16 v17, 0x0

    const/4 v3, 0x0

    :goto_e
    move-object v5, v1

    const/4 v0, 0x0

    const/16 v16, 0x1

    goto/16 :goto_13

    :cond_20
    const/16 v17, 0x0

    .line 476
    invoke-virtual/range {p0 .. p1}, Lcom/narvii/pushservice/PushNotificationService;->hasPic(Lcom/narvii/pushservice/PushPayload;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v2, 0x2

    new-array v0, v2, [Landroid/graphics/Bitmap;

    .line 478
    invoke-virtual {v8, v9, v0}, Lcom/narvii/pushservice/PushNotificationService;->fetchPic(Lcom/narvii/pushservice/PushPayload;[Landroid/graphics/Bitmap;)V

    .line 479
    aget-object v3, v0, v17

    const/16 v16, 0x1

    .line 480
    aget-object v0, v0, v16

    goto :goto_f

    :cond_21
    const/16 v16, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 482
    :goto_f
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v2, v4, :cond_25

    .line 485
    :try_start_3
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0xa0

    if-le v2, v4, :cond_22

    move-object/from16 v19, v1

    goto :goto_10

    .line 488
    :cond_22
    iget-object v2, v8, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v4, "notification_text_size"

    const-string v5, "dimen"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object/from16 v19, v1

    :try_start_4
    const-string v1, "android"

    .line 489
    invoke-virtual {v2, v4, v5, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 490
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 491
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v4, v8, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v4}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x43ed8000    # 475.0f

    invoke-static {v4, v5}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v4

    float-to-int v4, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 492
    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4}, Landroid/text/TextPaint;-><init>()V

    .line 493
    invoke-virtual {v4, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 494
    invoke-virtual {v4, v11}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    mul-int/lit8 v2, v2, 0x52

    .line 495
    div-int/lit8 v2, v2, 0x64
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_23

    :goto_10
    const/4 v1, 0x1

    goto :goto_11

    :catch_3
    move-object/from16 v19, v1

    :catch_4
    :cond_23
    const/4 v1, 0x0

    :goto_11
    if-eqz v0, :cond_24

    if-nez v1, :cond_24

    .line 500
    new-instance v1, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    invoke-direct {v1}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;-><init>()V

    .line 501
    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    .line 502
    invoke-virtual {v1, v11}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    .line 503
    invoke-virtual {v15, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_12

    .line 505
    :cond_24
    new-instance v1, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v1}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 506
    invoke-virtual {v1, v11}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    .line 507
    invoke-virtual {v15, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_12

    :cond_25
    move-object/from16 v19, v1

    :goto_12
    move-object/from16 v5, v19

    .line 516
    :goto_13
    iget v1, v9, Lcom/narvii/pushservice/PushPayload;->ndcId:I

    invoke-virtual {v8, v1}, Lcom/narvii/pushservice/PushNotificationService;->getIconBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 519
    sget v1, Lcom/narvii/pushservice/R$drawable;->ic_notify:I

    invoke-virtual {v15, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 520
    sget v1, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_26

    const v1, -0x6ca601

    goto :goto_14

    :cond_26
    iget-object v1, v8, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/narvii/pushservice/R$color;->color_notify:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    :goto_14
    invoke-virtual {v15, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    if-eqz v3, :cond_27

    .line 523
    invoke-virtual {v15, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_15

    .line 524
    :cond_27
    iget-boolean v1, v8, Lcom/narvii/pushservice/PushNotificationService;->isMaster:Z

    if-eqz v1, :cond_28

    .line 525
    invoke-virtual {v15, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    :cond_28
    :goto_15
    const/4 v1, 0x4

    if-ne v13, v1, :cond_29

    if-eqz v3, :cond_29

    .line 531
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_29

    move-object/from16 v1, p0

    move-object v2, v15

    const/16 v18, 0x0

    move-object/from16 v19, v4

    move-object v4, v6

    move-object v6, v5

    move-object/from16 v5, v19

    move/from16 p4, v14

    move-object v14, v6

    move-object v6, v7

    const/4 v10, 0x1

    move-object v7, v11

    .line 532
    invoke-direct/range {v1 .. v7}, Lcom/narvii/pushservice/PushNotificationService;->configCustomBuilder(Landroid/support/v4/app/NotificationCompat$Builder;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2a

    .line 534
    new-instance v1, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    invoke-direct {v1}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;-><init>()V

    .line 535
    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    .line 536
    invoke-virtual {v1, v11}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    .line 537
    invoke-virtual {v15, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_16

    :cond_29
    move/from16 p4, v14

    const/4 v10, 0x1

    const/16 v18, 0x0

    move-object v14, v5

    :cond_2a
    :goto_16
    if-nez p2, :cond_2d

    if-nez v14, :cond_2b

    .line 547
    iget-object v0, v8, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 548
    iget-object v1, v8, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    :goto_17
    const/16 v17, 0x1

    goto :goto_18

    .line 551
    :cond_2b
    invoke-virtual {v8, v14, v9}, Lcom/narvii/pushservice/PushNotificationService;->getIntent(Landroid/net/Uri;Lcom/narvii/pushservice/PushPayload;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_2e

    .line 553
    invoke-virtual {v14}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ndc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 554
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

    .line 555
    iget-object v0, v8, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 556
    iget-object v1, v8, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_17

    .line 558
    :cond_2c
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_17

    :cond_2d
    move-object/from16 v0, p2

    :cond_2e
    :goto_18
    if-nez v17, :cond_33

    const-string v1, "_pushIntent"

    .line 566
    invoke-virtual {v0, v1, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz v13, :cond_2f

    const-string v1, "_pushClearType"

    .line 568
    invoke-virtual {v0, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 569
    iget v1, v9, Lcom/narvii/pushservice/PushPayload;->ndcId:I

    const-string v2, "_pushClearCid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_2f
    const-string v1, "Source"

    .line 572
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_30

    const-string v2, "Push"

    .line 573
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 575
    :cond_30
    iget-object v1, v9, Lcom/narvii/pushservice/PushPayload;->trackId:Ljava/lang/String;

    if-eqz v1, :cond_31

    const-string v2, "_pushTrackId"

    .line 576
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 578
    :cond_31
    iget-object v1, v9, Lcom/narvii/pushservice/PushPayload;->url:Ljava/lang/String;

    if-eqz v1, :cond_32

    const-string v2, "_pushUrl"

    .line 579
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 582
    :cond_32
    new-instance v1, Lcom/narvii/pushservice/PushNotificationService$PushFrom;

    invoke-direct {v1, v9}, Lcom/narvii/pushservice/PushNotificationService$PushFrom;-><init>(Lcom/narvii/pushservice/PushPayload;)V

    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_pushFrom"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_33
    const/high16 v1, 0x10000000

    .line 585
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, -0x10000

    .line 586
    sget v2, Lcom/narvii/pushservice/R$id;->text:I

    and-int/2addr v1, v2

    const v2, 0xffff

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    long-to-int v4, v3

    and-int/2addr v2, v4

    or-int/2addr v1, v2

    .line 587
    iget-object v2, v8, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x48000000    # 131072.0f

    invoke-static {v2, v1, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v1, p3

    if-eqz v1, :cond_34

    .line 589
    invoke-virtual {v15, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 595
    :cond_34
    :try_start_5
    invoke-virtual {v15}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_19

    :catchall_0
    move-exception v0

    move-object v1, v0

    const-string v0, "fail to build notification"

    .line 597
    invoke-static {v12, v0, v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v3, v18

    :goto_19
    if-eqz v3, :cond_35

    .line 601
    new-instance v0, Lcom/narvii/pushservice/PushNotificationService$3;

    move/from16 v1, p4

    invoke-direct {v0, v8, v1, v3}, Lcom/narvii/pushservice/PushNotificationService$3;-><init>(Lcom/narvii/pushservice/PushNotificationService;ILandroid/app/Notification;)V

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    :cond_35
    return-void

    :array_0
    .array-data 8
        0x0
        0xf0
    .end array-data
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/pushservice/PushNotificationService;
    .locals 3

    .line 130
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    .line 131
    sget v0, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/4 v1, 0x0

    const/16 v2, 0x64

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/narvii/pushservice/PushNotificationService;->isMaster:Z

    .line 132
    iget-object v0, p0, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    const-string v2, "account"

    invoke-interface {v0, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    iput-object v0, p0, Lcom/narvii/pushservice/PushNotificationService;->account:Lcom/narvii/account/AccountService;

    .line 133
    iget-object v0, p0, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    const-string v2, "community"

    invoke-interface {v0, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/community/CommunityService;

    iput-object v0, p0, Lcom/narvii/pushservice/PushNotificationService;->community:Lcom/narvii/community/CommunityService;

    .line 134
    iget-object v0, p0, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    const-string v2, "imageLoader"

    invoke-interface {v0, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/image/NVImageLoader;

    iput-object v0, p0, Lcom/narvii/pushservice/PushNotificationService;->imageLoader:Lcom/narvii/util/image/NVImageLoader;

    .line 135
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/narvii/pushservice/PushNotificationService;->notifiManager:Landroid/app/NotificationManager;

    .line 136
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "push_cn"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/pushservice/PushNotificationService;->pushCommunityNamePrefs:Landroid/content/SharedPreferences;

    .line 137
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/DateTimeFormatter;->getInstance(Landroid/content/Context;)Lcom/narvii/util/DateTimeFormatter;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/pushservice/PushNotificationService;->dateTimeFormatter:Lcom/narvii/util/DateTimeFormatter;

    .line 138
    new-instance p1, Lcom/narvii/pushservice/ChatPushNotificationVavle;

    invoke-direct {p1}, Lcom/narvii/pushservice/ChatPushNotificationVavle;-><init>()V

    iput-object p1, p0, Lcom/narvii/pushservice/PushNotificationService;->chatPushNotificatonVavle:Lcom/narvii/pushservice/ChatPushNotificationVavle;

    return-object p0
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/narvii/pushservice/PushNotificationService;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/pushservice/PushNotificationService;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/PushNotificationService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 82
    check-cast p2, Lcom/narvii/pushservice/PushNotificationService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/pushservice/PushNotificationService;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/PushNotificationService;)V

    return-void
.end method

.method fetchCommunity(I)V
    .locals 16

    move-object/from16 v1, p0

    move/from16 v0, p1

    const-string/jumbo v2, "|"

    if-nez v0, :cond_0

    return-void

    .line 819
    :cond_0
    iget-object v3, v1, Lcom/narvii/pushservice/PushNotificationService;->community:Lcom/narvii/community/CommunityService;

    invoke-virtual {v3, v0}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 822
    new-instance v5, Lcom/narvii/util/BlockingItem;

    invoke-direct {v5}, Lcom/narvii/util/BlockingItem;-><init>()V

    .line 823
    iget-object v6, v1, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    const-string v7, "api"

    invoke-interface {v6, v7}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/narvii/util/http/ApiService;

    .line 824
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v7

    const-string v8, "community/info"

    invoke-virtual {v7, v8}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->scopeCommunityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v7

    .line 825
    new-instance v8, Lcom/narvii/pushservice/PushNotificationService$4;

    const-class v9, Lcom/narvii/model/api/CommunityResponse;

    invoke-direct {v8, v1, v9, v5}, Lcom/narvii/pushservice/PushNotificationService$4;-><init>(Lcom/narvii/pushservice/PushNotificationService;Ljava/lang/Class;Lcom/narvii/util/BlockingItem;)V

    invoke-virtual {v6, v7, v8}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 837
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-wide/16 v7, 0x2710

    .line 839
    :try_start_0
    invoke-virtual {v5, v7, v8}, Lcom/narvii/util/BlockingItem;->tryTake(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v5, v6

    .line 842
    :goto_0
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v5, v6, :cond_1

    .line 843
    iget-object v3, v1, Lcom/narvii/pushservice/PushNotificationService;->community:Lcom/narvii/community/CommunityService;

    invoke-virtual {v3, v0}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object v3

    :cond_1
    if-nez v3, :cond_2

    return-void

    .line 851
    :cond_2
    iget-object v0, v1, Lcom/narvii/pushservice/PushNotificationService;->pushCommunityNamePrefs:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-interface {v0, v5, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v5, v3, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 852
    iget-object v0, v1, Lcom/narvii/pushservice/PushNotificationService;->pushCommunityNamePrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v3, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v8, v3, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    invoke-interface {v0, v5, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 859
    :cond_3
    iget-object v0, v1, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x1050005

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 860
    iget-object v5, v1, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v5}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x1050006

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 861
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/pushservice/PushNotificationService;->getIconDir()Ljava/io/File;

    move-result-object v8

    .line 865
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, v3, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v3, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 868
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v3, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ".info"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v8, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 869
    invoke-static {v9}, Lcom/narvii/util/Utils;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    return-void

    .line 873
    :cond_4
    iget-object v10, v3, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    const-string v11, "community-icon"

    invoke-static {v10, v11, v0, v5}, Lcom/narvii/widget/NVImageView;->fitSize(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v10

    .line 876
    iget-object v11, v1, Lcom/narvii/pushservice/PushNotificationService;->imageLoader:Lcom/narvii/util/image/NVImageLoader;

    if-nez v11, :cond_5

    move-object v11, v7

    goto :goto_1

    :cond_5
    iget-object v11, v1, Lcom/narvii/pushservice/PushNotificationService;->imageLoader:Lcom/narvii/util/image/NVImageLoader;

    invoke-virtual {v11, v10}, Lcom/narvii/util/image/NVImageLoader;->loadDiskCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :goto_1
    if-nez v11, :cond_6

    .line 878
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/pushservice/PushNotificationService;->getStack()Lcom/narvii/util/http/ProxyStack;

    move-result-object v12

    new-instance v13, Ljava/net/URL;

    invoke-direct {v13, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Lcom/narvii/util/http/ProxyStack;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 879
    :try_start_3
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 880
    :try_start_4
    invoke-static {v12}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v11

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v7

    goto/16 :goto_d

    :catch_1
    move-object v12, v7

    goto/16 :goto_5

    :catch_2
    move-exception v0

    move-object v2, v7

    goto/16 :goto_9

    :catchall_1
    move-exception v0

    move-object v2, v7

    move-object v10, v2

    goto/16 :goto_d

    :catch_3
    move-object v10, v7

    move-object v12, v10

    goto/16 :goto_5

    :catch_4
    move-exception v0

    move-object v2, v7

    move-object v10, v2

    goto/16 :goto_9

    :cond_6
    move-object v10, v7

    move-object v12, v10

    .line 884
    :goto_2
    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v5, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 885
    new-instance v13, Landroid/graphics/Canvas;

    invoke-direct {v13, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 886
    new-instance v14, Landroid/graphics/Path;

    invoke-direct {v14}, Landroid/graphics/Path;-><init>()V

    .line 887
    new-instance v15, Landroid/graphics/RectF;

    int-to-float v0, v0

    int-to-float v5, v5

    const/4 v4, 0x0

    invoke-direct {v15, v4, v4, v0, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    const v4, 0x3e4ccccd    # 0.2f

    mul-float v0, v0, v4

    mul-float v5, v5, v4

    .line 888
    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v14, v15, v0, v5, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 889
    invoke-virtual {v13, v14}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 890
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v14, 0x0

    invoke-direct {v0, v14, v14, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 891
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    const/4 v5, 0x1

    .line 892
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 v5, -0x1000000

    .line 893
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 894
    invoke-virtual {v13, v11, v0, v15, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 897
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 898
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v8, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 899
    new-instance v4, Lcom/narvii/util/SafeFileOutputStream;

    invoke-direct {v4, v0}, Lcom/narvii/util/SafeFileOutputStream;-><init>(Ljava/io/File;)V

    .line 900
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v7, v0, v5, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 901
    invoke-virtual {v4}, Lcom/narvii/util/SafeFileOutputStream;->close()V

    .line 902
    invoke-static {v9, v2}, Lcom/narvii/util/Utils;->writeToFile(Ljava/io/File;Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v12, :cond_7

    .line 910
    :try_start_5
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_3

    :catch_5
    nop

    :cond_7
    :goto_3
    if-eqz v10, :cond_8

    .line 916
    :try_start_6
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_4

    :catch_6
    nop

    :cond_8
    :goto_4
    if-eqz v11, :cond_9

    .line 921
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    :cond_9
    if-eqz v7, :cond_10

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v2, v7

    move-object v7, v12

    goto/16 :goto_d

    :catch_7
    nop

    goto :goto_5

    :catch_8
    move-exception v0

    move-object v2, v7

    move-object v7, v12

    goto :goto_9

    :catchall_3
    move-exception v0

    move-object v2, v7

    move-object v10, v2

    move-object v11, v10

    goto :goto_d

    :catch_9
    move-object v10, v7

    move-object v11, v10

    move-object v12, v11

    :goto_5
    if-eqz v12, :cond_a

    .line 910
    :try_start_7
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_a

    goto :goto_6

    :catch_a
    nop

    :cond_a
    :goto_6
    if-eqz v10, :cond_b

    .line 916
    :try_start_8
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_b

    goto :goto_7

    :catch_b
    nop

    :cond_b
    :goto_7
    if-eqz v11, :cond_c

    .line 921
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    :cond_c
    if-eqz v7, :cond_10

    .line 924
    :goto_8
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_c

    :catch_c
    move-exception v0

    move-object v2, v7

    move-object v10, v2

    move-object v11, v10

    :goto_9
    :try_start_9
    const-string v4, "narvii_push"

    .line 905
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fail to cache icon for x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    if-eqz v7, :cond_d

    .line 910
    :try_start_a
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_d

    goto :goto_a

    :catch_d
    nop

    :cond_d
    :goto_a
    if-eqz v10, :cond_e

    .line 916
    :try_start_b
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_e

    goto :goto_b

    :catch_e
    nop

    :cond_e
    :goto_b
    if-eqz v11, :cond_f

    .line 921
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    :cond_f
    if-eqz v2, :cond_10

    .line 924
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_10
    :goto_c
    return-void

    :catchall_4
    move-exception v0

    :goto_d
    if-eqz v7, :cond_11

    .line 910
    :try_start_c
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_f

    goto :goto_e

    :catch_f
    nop

    :cond_11
    :goto_e
    if-eqz v10, :cond_12

    .line 916
    :try_start_d
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_10

    goto :goto_f

    :catch_10
    nop

    :cond_12
    :goto_f
    if-eqz v11, :cond_13

    .line 921
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    :cond_13
    if-eqz v2, :cond_14

    .line 924
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 926
    :cond_14
    throw v0
.end method

.method fetchPic(Lcom/narvii/pushservice/PushPayload;[Landroid/graphics/Bitmap;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, "narvii_push"

    .line 651
    iget-object v5, v2, Lcom/narvii/pushservice/PushPayload;->picUrl:Ljava/lang/String;

    .line 652
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, ".gif"

    .line 658
    invoke-virtual {v5, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    .line 659
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 660
    new-instance v9, Lcom/narvii/util/http/ProxyStack;

    iget-object v10, v1, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    invoke-direct {v9, v10}, Lcom/narvii/util/http/ProxyStack;-><init>(Lcom/narvii/app/NVContext;)V

    .line 661
    new-instance v10, Ljava/net/URL;

    invoke-direct {v10, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Lcom/narvii/util/http/ProxyStack;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    if-eqz v0, :cond_1

    :try_start_1
    const-string v10, "Range"

    const-string v11, "bytes=0-122880"

    .line 664
    invoke-virtual {v9, v10, v11}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v11, 0x0

    goto/16 :goto_a

    :cond_1
    :goto_0
    const/16 v10, 0x3a98

    .line 666
    :try_start_2
    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 667
    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 668
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    .line 669
    invoke-static {}, Lcom/narvii/util/Utils;->createTmpFile()Ljava/io/File;

    move-result-object v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    .line 670
    :try_start_3
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    if-eqz v0, :cond_2

    const v13, 0xc000

    new-array v13, v13, [B

    goto :goto_1

    :cond_2
    const/4 v13, 0x0

    :goto_1
    const/16 v14, 0x1000

    new-array v14, v14, [B

    const/4 v6, 0x0

    .line 676
    :goto_2
    invoke-virtual {v10, v14}, Ljava/io/InputStream;->read([B)I

    move-result v15

    const/4 v3, -0x1

    if-eq v15, v3, :cond_6

    const/4 v3, 0x0

    .line 677
    invoke-virtual {v12, v14, v3, v15}, Ljava/io/FileOutputStream;->write([BII)V

    if-eqz v13, :cond_4

    add-int v3, v6, v15

    .line 678
    array-length v2, v13

    if-lt v3, v2, :cond_4

    .line 679
    array-length v2, v13

    const v3, 0x1e000

    if-lt v2, v3, :cond_3

    goto :goto_3

    .line 683
    :cond_3
    array-length v2, v13

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    new-array v2, v2, [B

    const/4 v3, 0x0

    .line 684
    invoke-static {v13, v3, v2, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v13, v2

    :cond_4
    if-eqz v13, :cond_5

    const/4 v2, 0x0

    .line 689
    invoke-static {v14, v2, v13, v6, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    add-int/2addr v6, v15

    .line 692
    :try_start_4
    new-instance v3, Lcom/narvii/pushservice/GifDec;

    invoke-direct {v3}, Lcom/narvii/pushservice/GifDec;-><init>()V

    invoke-virtual {v3, v13, v2, v6}, Lcom/narvii/pushservice/GifDec;->read([BII)I

    move-result v3
    :try_end_4
    .catch Ljava/nio/BufferUnderflowException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    if-nez v3, :cond_5

    const/4 v2, 0x1

    goto :goto_4

    :catch_0
    :cond_5
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    goto :goto_2

    :cond_6
    :goto_3
    const/4 v2, 0x0

    .line 701
    :goto_4
    :try_start_5
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    .line 702
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 703
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    const-string v3, "ms "

    const/16 v9, 0x400

    if-eqz v0, :cond_8

    const-string v0, "k in "

    if-eqz v2, :cond_7

    .line 706
    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "push gif download "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/2addr v6, v9

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long/2addr v12, v7

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 708
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "push gif download giveup at "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/2addr v6, v9

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long/2addr v12, v7

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 711
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "push pic download in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long/2addr v12, v7

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    :goto_5
    iget-object v0, v1, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1050005

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 715
    iget-object v2, v1, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_8

    .line 720
    :try_start_7
    invoke-static {v11, v0, v2}, Lcom/narvii/util/image/BitmapUtils;->openBitmapAtSize(Ljava/io/File;II)Landroid/graphics/Bitmap;

    move-result-object v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 721
    :try_start_8
    invoke-static {v6, v0, v2}, Lcom/narvii/util/image/BitmapUtils;->cropCenterAtSize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-object/from16 v7, p1

    const/4 v8, 0x1

    .line 722
    :try_start_9
    iget v10, v7, Lcom/narvii/pushservice/PushPayload;->picType:I

    if-ne v10, v8, :cond_9

    .line 723
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v10

    invoke-static {v0, v2, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    const/4 v12, 0x0

    .line 724
    invoke-virtual {v10, v12}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 725
    new-instance v12, Landroid/graphics/Canvas;

    invoke-direct {v12, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 726
    new-instance v13, Landroid/graphics/BitmapShader;

    sget-object v14, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v15, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v13, v3, v14, v15}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 727
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    .line 728
    invoke-virtual {v14, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 729
    invoke-virtual {v14, v8}, Landroid/graphics/Paint;->setDither(Z)V

    .line 730
    invoke-virtual {v14, v8}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 731
    invoke-virtual {v14, v13}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/high16 v13, -0x10000

    .line 732
    invoke-virtual {v14, v13}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v13, v0

    const/high16 v15, 0x3f000000    # 0.5f

    mul-float v13, v13, v15

    int-to-float v9, v2

    mul-float v9, v9, v15

    .line 733
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {v12, v13, v9, v0, v14}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 734
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-object v3, v10

    :cond_9
    if-eqz v6, :cond_a

    if-eq v6, v3, :cond_a

    .line 741
    :try_start_a
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    :cond_a
    move-object/from16 v2, p2

    const/4 v6, 0x0

    .line 743
    aput-object v3, v2, v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object/from16 v2, p2

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object/from16 v7, p1

    move-object/from16 v2, p2

    const/4 v8, 0x1

    const/4 v3, 0x0

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object/from16 v7, p1

    move-object/from16 v2, p2

    const/4 v8, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 738
    :goto_6
    :try_start_b
    invoke-static {v0}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    if-eqz v6, :cond_b

    if-eq v6, v3, :cond_b

    .line 741
    :try_start_c
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    :cond_b
    const/4 v6, 0x0

    .line 743
    aput-object v3, v2, v6

    .line 746
    :goto_7
    array-length v0, v2

    if-le v0, v8, :cond_f

    iget v0, v7, Lcom/narvii/pushservice/PushPayload;->picType:I

    if-nez v0, :cond_f

    .line 747
    iget-object v0, v1, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 748
    iget-object v3, v1, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v6, 0x43e10000    # 450.0f

    invoke-static {v3, v6}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v3

    float-to-int v3, v3

    const/16 v6, 0x400

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v3, v0

    const v6, 0x3f47ae14    # 0.78f

    mul-float v3, v3, v6

    .line 749
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    .line 754
    :try_start_d
    invoke-static {v11, v0, v3}, Lcom/narvii/util/image/BitmapUtils;->openBitmapAtSize(Ljava/io/File;II)Landroid/graphics/Bitmap;

    move-result-object v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 755
    :try_start_e
    invoke-static {v6, v0, v3}, Lcom/narvii/util/image/BitmapUtils;->cropCenterAtSize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    if-eqz v6, :cond_c

    if-eq v6, v0, :cond_c

    .line 760
    :try_start_f
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 762
    :cond_c
    aput-object v0, v2, v8
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    goto :goto_9

    :catchall_4
    move-exception v0

    goto :goto_8

    :catchall_5
    move-exception v0

    const/4 v6, 0x0

    .line 757
    :goto_8
    :try_start_10
    invoke-static {v0}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    if-eqz v6, :cond_d

    if-eqz v6, :cond_d

    .line 760
    :try_start_11
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    :cond_d
    const/4 v3, 0x0

    .line 762
    aput-object v3, v2, v8

    goto :goto_9

    :catchall_6
    move-exception v0

    move-object v3, v0

    if-eqz v6, :cond_e

    if-eqz v6, :cond_e

    .line 760
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    :cond_e
    const/4 v6, 0x0

    .line 762
    aput-object v6, v2, v8

    .line 763
    throw v3

    :cond_f
    :goto_9
    if-eqz v11, :cond_11

    goto :goto_b

    :catchall_7
    move-exception v0

    move-object v7, v0

    if-eqz v6, :cond_10

    if-eq v6, v3, :cond_10

    .line 741
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    :cond_10
    const/4 v6, 0x0

    .line 743
    aput-object v3, v2, v6

    .line 744
    throw v7
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    :catchall_8
    move-exception v0

    goto :goto_a

    :catchall_9
    move-exception v0

    const/4 v6, 0x0

    move-object v11, v6

    .line 767
    :goto_a
    :try_start_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "push pic download fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 768
    invoke-static {v0}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    if-eqz v11, :cond_11

    .line 771
    :goto_b
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    :cond_11
    return-void

    :catchall_a
    move-exception v0

    if-eqz v11, :cond_12

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 773
    :cond_12
    goto :goto_d

    :goto_c
    throw v0

    :goto_d
    goto :goto_c
.end method

.method protected getChannelId(Lcom/narvii/pushservice/PushPayload;)Ljava/lang/String;
    .locals 2

    .line 254
    sget v0, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    const-string p1, "community-management"

    return-object p1

    .line 257
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/pushservice/PushNotificationService;->getNotifyType(Lcom/narvii/pushservice/PushPayload;)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    const-string p1, "broadcast"

    return-object p1

    :cond_2
    const-string p1, "chat"

    return-object p1

    :cond_3
    const-string p1, "alert"

    return-object p1
.end method

.method getIconBitmap(I)Landroid/graphics/Bitmap;
    .locals 5

    .line 792
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/narvii/pushservice/PushNotificationService;->getIconDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 793
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_0

    .line 797
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 801
    invoke-static {p1}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    :catch_1
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method getIconDir()Ljava/io/File;
    .locals 3

    .line 781
    iget-object v0, p0, Lcom/narvii/pushservice/PushNotificationService;->iconDir:Ljava/io/File;

    if-nez v0, :cond_2

    .line 782
    iget-object v0, p0, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 783
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 784
    :cond_0
    iget-object v0, p0, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 786
    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v2, "PushIcon"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/narvii/pushservice/PushNotificationService;->iconDir:Ljava/io/File;

    .line 788
    :cond_2
    iget-object v0, p0, Lcom/narvii/pushservice/PushNotificationService;->iconDir:Ljava/io/File;

    return-object v0
.end method

.method protected getIntent(Landroid/net/Uri;Lcom/narvii/pushservice/PushPayload;)Landroid/content/Intent;
    .locals 3

    .line 280
    iget-object v0, p0, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/narvii/pushservice/PushPayload;->isCurrenVersionPush(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "ndc://app-upgrade"

    .line 281
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    const-string v1, "navigator"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/navigator/Navigator;

    .line 284
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-direct {p0, v1, p2}, Lcom/narvii/pushservice/PushNotificationService;->handleSpecificPush(Landroid/content/Intent;Lcom/narvii/pushservice/PushPayload;)Landroid/content/Intent;

    move-result-object p2

    .line 285
    sget v1, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v2, 0x65

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ndc"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    const-string v1, "__forward"

    .line 286
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 288
    :cond_1
    invoke-interface {v0, p2}, Lcom/narvii/navigator/Navigator;->intentMapping(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    .line 289
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_2

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getNotifyType(Lcom/narvii/pushservice/PushPayload;)I
    .locals 1

    .line 236
    invoke-virtual {p1}, Lcom/narvii/pushservice/PushPayload;->isMarketing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/narvii/pushservice/PushPayload;->isChat()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method getStack()Lcom/narvii/util/http/ProxyStack;
    .locals 2

    .line 639
    iget-object v0, p0, Lcom/narvii/pushservice/PushNotificationService;->stack:Lcom/narvii/util/http/ProxyStack;

    if-nez v0, :cond_0

    .line 640
    new-instance v0, Lcom/narvii/util/http/ProxyStack;

    iget-object v1, p0, Lcom/narvii/pushservice/PushNotificationService;->context:Lcom/narvii/app/NVContext;

    invoke-direct {v0, v1}, Lcom/narvii/util/http/ProxyStack;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/pushservice/PushNotificationService;->stack:Lcom/narvii/util/http/ProxyStack;

    .line 642
    :cond_0
    iget-object v0, p0, Lcom/narvii/pushservice/PushNotificationService;->stack:Lcom/narvii/util/http/ProxyStack;

    return-object v0
.end method

.method protected hasPic(Lcom/narvii/pushservice/PushPayload;)Z
    .locals 3

    .line 271
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-lt v0, v2, :cond_1

    .line 272
    iget-object v0, p1, Lcom/narvii/pushservice/PushPayload;->picUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget p1, p1, Lcom/narvii/pushservice/PushPayload;->picType:I

    if-eqz p1, :cond_0

    if-ne p1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public synthetic lambda$new$0$PushNotificationService(Lcom/narvii/pushservice/PushPayload;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 176
    invoke-virtual/range {v0 .. v6}, Lcom/narvii/pushservice/PushNotificationService;->showPushNotification(Lcom/narvii/pushservice/PushPayload;Landroid/content/Intent;Landroid/app/PendingIntent;Ljava/lang/Integer;Ljava/lang/String;Z)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/PushNotificationService;)V
    .locals 0

    const/4 p1, 0x0

    .line 154
    sput-boolean p1, Lcom/narvii/pushservice/PushNotificationService;->isAppActive:Z

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 82
    check-cast p2, Lcom/narvii/pushservice/PushNotificationService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/pushservice/PushNotificationService;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/PushNotificationService;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/PushNotificationService;)V
    .locals 0

    const/4 p1, 0x1

    .line 149
    sput-boolean p1, Lcom/narvii/pushservice/PushNotificationService;->isAppActive:Z

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 82
    check-cast p2, Lcom/narvii/pushservice/PushNotificationService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/pushservice/PushNotificationService;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/PushNotificationService;)V

    return-void
.end method

.method public showPushNotification(Lcom/narvii/pushservice/PushPayload;)V
    .locals 9

    .line 169
    iget v0, p1, Lcom/narvii/pushservice/PushPayload;->type:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/narvii/pushservice/PushPayload;->threadId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/narvii/pushservice/PushNotificationService;->chatPushNotificatonVavle:Lcom/narvii/pushservice/ChatPushNotificationVavle;

    iget-object v1, p0, Lcom/narvii/pushservice/PushNotificationService;->callback:Lcom/narvii/util/Callback;

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

    .line 172
    invoke-virtual/range {v2 .. v8}, Lcom/narvii/pushservice/PushNotificationService;->showPushNotification(Lcom/narvii/pushservice/PushPayload;Landroid/content/Intent;Landroid/app/PendingIntent;Ljava/lang/Integer;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public showPushNotification(Lcom/narvii/pushservice/PushPayload;Landroid/content/Intent;Landroid/app/PendingIntent;Ljava/lang/Integer;Ljava/lang/String;Z)V
    .locals 11

    move-object v3, p1

    if-nez v3, :cond_0

    return-void

    .line 188
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/pushservice/PushNotificationService;->hasPic(Lcom/narvii/pushservice/PushPayload;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, v3, Lcom/narvii/pushservice/PushPayload;->picDownloaded:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 189
    :goto_0
    iget v2, v3, Lcom/narvii/pushservice/PushPayload;->ndcId:I

    move-object v9, p0

    invoke-direct {p0, v2}, Lcom/narvii/pushservice/PushNotificationService;->isCommunityIconReady(I)Z

    move-result v2

    xor-int/2addr v1, v2

    if-eqz v0, :cond_2

    .line 191
    new-instance v10, Lcom/narvii/pushservice/PushNotificationService$1;

    const-string/jumbo v2, "push-pic"

    move-object v0, v10

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/narvii/pushservice/PushNotificationService$1;-><init>(Lcom/narvii/pushservice/PushNotificationService;Ljava/lang/String;Lcom/narvii/pushservice/PushPayload;Landroid/content/Intent;Landroid/app/PendingIntent;Ljava/lang/Integer;Ljava/lang/String;Z)V

    .line 202
    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    .line 204
    new-instance v10, Lcom/narvii/pushservice/PushNotificationService$2;

    const-string/jumbo v2, "push-communtiy"

    move-object v0, v10

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/narvii/pushservice/PushNotificationService$2;-><init>(Lcom/narvii/pushservice/PushNotificationService;Ljava/lang/String;Lcom/narvii/pushservice/PushPayload;Landroid/content/Intent;Landroid/app/PendingIntent;Ljava/lang/Integer;Ljava/lang/String;Z)V

    .line 211
    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 213
    :cond_3
    invoke-direct/range {p0 .. p6}, Lcom/narvii/pushservice/PushNotificationService;->showPushNotificationInteral(Lcom/narvii/pushservice/PushPayload;Landroid/content/Intent;Landroid/app/PendingIntent;Ljava/lang/Integer;Ljava/lang/String;Z)V

    :goto_1
    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/PushNotificationService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 82
    check-cast p2, Lcom/narvii/pushservice/PushNotificationService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/pushservice/PushNotificationService;->start(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/PushNotificationService;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/PushNotificationService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 82
    check-cast p2, Lcom/narvii/pushservice/PushNotificationService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/pushservice/PushNotificationService;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/PushNotificationService;)V

    return-void
.end method
