.class public final Lcom/narvii/chat/video/utils/LiveChannelNotificationHelper;
.super Ljava/lang/Object;
.source "LiveChannelNotificationHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/video/utils/LiveChannelNotificationHelper$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/chat/video/utils/LiveChannelNotificationHelper$Companion;

# The value of this static final field might be set in the static constructor
.field private static final LIVE_CHANNEL_NOTIFY_ID:I = 0x1202


# instance fields
.field private final context:Landroid/content/Context;

.field private final nvContext:Lcom/narvii/app/NVContext;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/chat/video/utils/LiveChannelNotificationHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/chat/video/utils/LiveChannelNotificationHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/chat/video/utils/LiveChannelNotificationHelper;->Companion:Lcom/narvii/chat/video/utils/LiveChannelNotificationHelper$Companion;

    const/16 v0, 0x1202

    .line 60
    sput v0, Lcom/narvii/chat/video/utils/LiveChannelNotificationHelper;->LIVE_CHANNEL_NOTIFY_ID:I

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    const-string v0, "nvContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/video/utils/LiveChannelNotificationHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 24
    iget-object p1, p0, Lcom/narvii/chat/video/utils/LiveChannelNotificationHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "nvContext.context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/chat/video/utils/LiveChannelNotificationHelper;->context:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic access$getLIVE_CHANNEL_NOTIFY_ID$cp()I
    .locals 1

    .line 19
    sget v0, Lcom/narvii/chat/video/utils/LiveChannelNotificationHelper;->LIVE_CHANNEL_NOTIFY_ID:I

    return v0
.end method


# virtual methods
.method public final cancelNotification()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/narvii/chat/video/utils/LiveChannelNotificationHelper;->context:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/app/NotificationManager;

    .line 56
    sget v1, Lcom/narvii/chat/video/utils/LiveChannelNotificationHelper;->LIVE_CHANNEL_NOTIFY_ID:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void

    .line 55
    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getNvContext()Lcom/narvii/app/NVContext;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/narvii/chat/video/utils/LiveChannelNotificationHelper;->nvContext:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final showNotification(Ljava/lang/String;I)V
    .locals 4

    .line 29
    :try_start_0
    new-instance p2, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v0, p0, Lcom/narvii/chat/video/utils/LiveChannelNotificationHelper;->context:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-static {p2}, Lcom/narvii/notification/channel/NotificationChannelHelper;->setNormalChannel(Landroid/support/v4/app/NotificationCompat$Builder;)V

    const v0, 0x7f080413

    .line 31
    invoke-virtual {p2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    const v0, -0xff3183

    .line 32
    invoke-virtual {p2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 33
    new-instance v0, Lcom/narvii/util/PackageUtils;

    iget-object v1, p0, Lcom/narvii/chat/video/utils/LiveChannelNotificationHelper;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/util/PackageUtils;->getAppName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p2, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 35
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/narvii/chat/video/utils/LiveChannelNotificationHelper;->context:Landroid/content/Context;

    const v1, 0x7f0f1095

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \ud83d\ude0a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 36
    invoke-virtual {p2, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 37
    invoke-virtual {p2, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 39
    new-instance v0, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v0, p2}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 40
    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    .line 41
    invoke-virtual {p2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    :cond_1
    const/4 p1, 0x1

    .line 43
    invoke-virtual {p2, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 44
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/narvii/chat/video/utils/LiveChannelNotificationHelper;->context:Landroid/content/Context;

    const-class v1, Lcom/narvii/chat/video/RtcNotificationClickReceiver;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x7f090000

    const v1, 0xffff

    .line 45
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    long-to-int v3, v2

    and-int/2addr v1, v3

    or-int/2addr v0, v1

    .line 46
    iget-object v1, p0, Lcom/narvii/chat/video/utils/LiveChannelNotificationHelper;->context:Landroid/content/Context;

    const/high16 v2, 0x8000000

    invoke-static {v1, v0, p1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 47
    iget-object p1, p0, Lcom/narvii/chat/video/utils/LiveChannelNotificationHelper;->context:Landroid/content/Context;

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Landroid/app/NotificationManager;

    .line 48
    sget v0, Lcom/narvii/chat/video/utils/LiveChannelNotificationHelper;->LIVE_CHANNEL_NOTIFY_ID:I

    invoke-virtual {p2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_1

    .line 47
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_1
    return-void
.end method
