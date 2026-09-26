.class public Lcom/narvii/notification/channel/NotificationChannelHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/services/AutostartServiceProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/notification/channel/NotificationChannelHelper$ChannelId;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/AutostartServiceProvider<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final CHANNEL_ALERT:Ljava/lang/String; = "alert"

.field public static final CHANNEL_BROADCAST:Ljava/lang/String; = "broadcast"

.field public static final CHANNEL_CHAT:Ljava/lang/String; = "chat"

.field public static final CHANNEL_COMMUNITY_MANAGEMENT:Ljava/lang/String; = "community-management"

.field public static final CHANNEL_NORMAL:Ljava/lang/String; = "normal"


# instance fields
.field nvContext:Lcom/narvii/app/NVContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method private createNotificationChannel(Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/narvii/notification/channel/NotificationChannelHelper;->createNotificationChannel(Ljava/lang/String;III)V

    return-void
.end method

.method private createNotificationChannel(Ljava/lang/String;III)V
    .locals 3

    iget-object v0, p0, Lcom/narvii/notification/channel/NotificationChannelHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 2
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_2

    .line 3
    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-static {p1, p2, p4}, Landroidx/browser/trusted/f;->a(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 5
    invoke-virtual {v0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-static {p1, p2}, Landroidx/media3/common/util/h;->a(Landroid/app/NotificationChannel;Ljava/lang/String;)V

    :cond_0
    const/4 p2, 0x2

    if-le p4, p2, :cond_1

    const/4 p3, 0x1

    .line 7
    invoke-static {p1, p3}, Lcom/narvii/notification/channel/a;->a(Landroid/app/NotificationChannel;Z)V

    new-array p2, p2, [J

    fill-array-data p2, :array_0

    .line 8
    invoke-static {p1, p2}, Lcom/narvii/notification/channel/b;->a(Landroid/app/NotificationChannel;[J)V

    :cond_1
    const-class p2, Landroid/app/NotificationManager;

    .line 9
    invoke-virtual {v0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/NotificationManager;

    .line 10
    invoke-static {p2, p1}, Landroidx/browser/trusted/a;->a(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    :cond_2
    return-void

    :array_0
    .array-data 8
        0x0
        0xf0
    .end array-data
.end method

.method private initACMNotificationChannels()V
    .locals 3

    .line 1
    .line 2
    sget v0, Lcom/narvii/lib/R$string;->notification_channel_community_management:I

    .line 3
    const/4 v1, 0x4

    .line 4
    .line 5
    const-string v2, "community-management"

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v2, v0, v1}, Lcom/narvii/notification/channel/NotificationChannelHelper;->createNotificationChannel(Ljava/lang/String;II)V

    .line 9
    return-void
.end method

.method private initNotificationChannels()V
    .locals 4

    .line 1
    .line 2
    sget v0, Lcom/narvii/lib/R$string;->notification_channel_chat:I

    .line 3
    .line 4
    const-string v1, "chat"

    .line 5
    const/4 v2, 0x4

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v1, v0, v2}, Lcom/narvii/notification/channel/NotificationChannelHelper;->createNotificationChannel(Ljava/lang/String;II)V

    .line 9
    .line 10
    sget v0, Lcom/narvii/lib/R$string;->notification_channel_alert:I

    .line 11
    const/4 v1, 0x3

    .line 12
    .line 13
    const-string v3, "alert"

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v3, v0, v1}, Lcom/narvii/notification/channel/NotificationChannelHelper;->createNotificationChannel(Ljava/lang/String;II)V

    .line 17
    .line 18
    const-string v0, "broadcast"

    .line 19
    .line 20
    sget v1, Lcom/narvii/lib/R$string;->notification_channel_broadcast:I

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, v0, v1, v2}, Lcom/narvii/notification/channel/NotificationChannelHelper;->createNotificationChannel(Ljava/lang/String;II)V

    .line 24
    .line 25
    sget v0, Lcom/narvii/lib/R$string;->notification_channel_normal:I

    .line 26
    const/4 v1, 0x2

    .line 27
    .line 28
    const-string v2, "normal"

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, v2, v0, v1}, Lcom/narvii/notification/channel/NotificationChannelHelper;->createNotificationChannel(Ljava/lang/String;II)V

    .line 32
    return-void
.end method

.method public static setAlertChannel(Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "alert"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lcom/narvii/notification/channel/NotificationChannelHelper;->setChannelId(Landroidx/core/app/NotificationCompat$Builder;Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public static setChannelId(Landroidx/core/app/NotificationCompat$Builder;Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x1a

    .line 5
    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->x(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 12
    :cond_0
    return-void
.end method

.method public static setNormalChannel(Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "normal"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lcom/narvii/notification/channel/NotificationChannelHelper;->setChannelId(Landroidx/core/app/NotificationCompat$Builder;Ljava/lang/String;)V

    .line 6
    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/notification/channel/NotificationChannelHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    sget p1, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    .line 5
    .line 6
    const/16 v0, 0xc8

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/narvii/notification/channel/NotificationChannelHelper;->initACMNotificationChannels()V

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-direct {p0}, Lcom/narvii/notification/channel/NotificationChannelHelper;->initNotificationChannels()V

    .line 16
    :goto_0
    return-object p0
.end method

.method public destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
