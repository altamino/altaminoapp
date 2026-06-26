.class public Lcom/narvii/notification/channel/NotificationChannelHelper;
.super Ljava/lang/Object;
.source "NotificationChannelHelper.java"

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

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createNotificationChannel(Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/narvii/notification/channel/NotificationChannelHelper;->createNotificationChannel(Ljava/lang/String;III)V

    return-void
.end method

.method private createNotificationChannel(Ljava/lang/String;III)V
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/narvii/notification/channel/NotificationChannelHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 68
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_2

    .line 69
    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 70
    new-instance v1, Landroid/app/NotificationChannel;

    invoke-direct {v1, p1, p2, p4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    if-eqz p3, :cond_0

    .line 72
    invoke-virtual {v0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 73
    invoke-virtual {v1, p1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x2

    if-le p4, p1, :cond_1

    const/4 p2, 0x1

    .line 76
    invoke-virtual {v1, p2}, Landroid/app/NotificationChannel;->enableLights(Z)V

    new-array p1, p1, [J

    .line 77
    fill-array-data p1, :array_0

    invoke-virtual {v1, p1}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    .line 79
    :cond_1
    const-class p1, Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    .line 80
    invoke-virtual {p1, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_2
    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0xf0
    .end array-data
.end method

.method private initACMNotificationChannels()V
    .locals 3

    .line 58
    sget v0, Lcom/narvii/lib/R$string;->notification_channel_community_management:I

    const-string v1, "community-management"

    const/4 v2, 0x4

    invoke-direct {p0, v1, v0, v2}, Lcom/narvii/notification/channel/NotificationChannelHelper;->createNotificationChannel(Ljava/lang/String;II)V

    return-void
.end method

.method private initNotificationChannels()V
    .locals 4

    .line 100
    sget v0, Lcom/narvii/lib/R$string;->notification_channel_chat:I

    const/4 v1, 0x4

    const-string v2, "chat"

    invoke-direct {p0, v2, v0, v1}, Lcom/narvii/notification/channel/NotificationChannelHelper;->createNotificationChannel(Ljava/lang/String;II)V

    .line 101
    sget v0, Lcom/narvii/lib/R$string;->notification_channel_alert:I

    const-string v2, "alert"

    const/4 v3, 0x3

    invoke-direct {p0, v2, v0, v3}, Lcom/narvii/notification/channel/NotificationChannelHelper;->createNotificationChannel(Ljava/lang/String;II)V

    .line 102
    sget v0, Lcom/narvii/lib/R$string;->notification_channel_broadcast:I

    const-string v2, "broadcast"

    invoke-direct {p0, v2, v0, v1}, Lcom/narvii/notification/channel/NotificationChannelHelper;->createNotificationChannel(Ljava/lang/String;II)V

    .line 103
    sget v0, Lcom/narvii/lib/R$string;->notification_channel_normal:I

    const-string v1, "normal"

    const/4 v2, 0x2

    invoke-direct {p0, v1, v0, v2}, Lcom/narvii/notification/channel/NotificationChannelHelper;->createNotificationChannel(Ljava/lang/String;II)V

    return-void
.end method

.method private initStoryEditorNotificationChannels()V
    .locals 3

    .line 52
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 53
    sget v0, Lcom/narvii/lib/R$string;->notification_channel_alert:I

    const/4 v1, 0x3

    const-string v2, "alert"

    invoke-direct {p0, v2, v0, v1}, Lcom/narvii/notification/channel/NotificationChannelHelper;->createNotificationChannel(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public static setAlertChannel(Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 1

    const-string v0, "alert"

    .line 96
    invoke-static {p0, v0}, Lcom/narvii/notification/channel/NotificationChannelHelper;->setChannelId(Landroid/support/v4/app/NotificationCompat$Builder;Ljava/lang/String;)V

    return-void
.end method

.method public static setChannelId(Landroid/support/v4/app/NotificationCompat$Builder;Ljava/lang/String;)V
    .locals 2

    .line 86
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    if-eqz p0, :cond_0

    .line 87
    invoke-virtual {p0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    :cond_0
    return-void
.end method

.method public static setNormalChannel(Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 1

    const-string v0, "normal"

    .line 92
    invoke-static {p0, v0}, Lcom/narvii/notification/channel/NotificationChannelHelper;->setChannelId(Landroid/support/v4/app/NotificationCompat$Builder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 1

    .line 40
    iput-object p1, p0, Lcom/narvii/notification/channel/NotificationChannelHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 41
    sget p1, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 42
    invoke-direct {p0}, Lcom/narvii/notification/channel/NotificationChannelHelper;->initACMNotificationChannels()V

    goto :goto_0

    .line 43
    :cond_0
    invoke-static {}, Lcom/narvii/app/NVApplication;->isStoryEditorApp()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 44
    invoke-direct {p0}, Lcom/narvii/notification/channel/NotificationChannelHelper;->initStoryEditorNotificationChannels()V

    goto :goto_0

    .line 46
    :cond_1
    invoke-direct {p0}, Lcom/narvii/notification/channel/NotificationChannelHelper;->initNotificationChannels()V

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
