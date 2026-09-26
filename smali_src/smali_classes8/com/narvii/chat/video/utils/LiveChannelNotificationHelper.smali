.class public final Lcom/narvii/chat/video/utils/LiveChannelNotificationHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/video/utils/LiveChannelNotificationHelper$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/chat/video/utils/LiveChannelNotificationHelper$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final LIVE_CHANNEL_NOTIFY_ID:I


# instance fields
.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final nvContext:Lcom/narvii/app/NVContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/chat/video/utils/LiveChannelNotificationHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/chat/video/utils/LiveChannelNotificationHelper$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/chat/video/utils/LiveChannelNotificationHelper;->Companion:Lcom/narvii/chat/video/utils/LiveChannelNotificationHelper$Companion;

    const/16 v0, 0x1202

    sput v0, Lcom/narvii/chat/video/utils/LiveChannelNotificationHelper;->LIVE_CHANNEL_NOTIFY_ID:I

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "nvContext"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/chat/video/utils/LiveChannelNotificationHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    const-string v0, "getContext(...)"

    .line 17
    .line 18
    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    iput-object p1, p0, Lcom/narvii/chat/video/utils/LiveChannelNotificationHelper;->context:Landroid/content/Context;

    .line 22
    return-void
.end method

.method public static final synthetic access$getLIVE_CHANNEL_NOTIFY_ID$cp()I
    .locals 1

    sget v0, Lcom/narvii/chat/video/utils/LiveChannelNotificationHelper;->LIVE_CHANNEL_NOTIFY_ID:I

    return v0
.end method


# virtual methods
.method public final cancelNotification()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/utils/LiveChannelNotificationHelper;->context:Landroid/content/Context;

    .line 3
    .line 4
    const-string v1, "notification"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    const-string v1, "null cannot be cast to non-null type android.app.NotificationManager"

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    check-cast v0, Landroid/app/NotificationManager;

    .line 16
    .line 17
    sget v1, Lcom/narvii/chat/video/utils/LiveChannelNotificationHelper;->LIVE_CHANNEL_NOTIFY_ID:I

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 21
    return-void
.end method

.method public final getNvContext()Lcom/narvii/app/NVContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/video/utils/LiveChannelNotificationHelper;->nvContext:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final showNotification(Ljava/lang/String;I)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    :try_start_0
    new-instance p2, Landroidx/core/app/NotificationCompat$Builder;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/chat/video/utils/LiveChannelNotificationHelper;->context:Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    invoke-direct {p2, v0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p2}, Lcom/narvii/notification/channel/NotificationChannelHelper;->setNormalChannel(Landroidx/core/app/NotificationCompat$Builder;)V

    .line 11
    .line 12
    .line 13
    const v0, 0x7f080539

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, v0}, Landroidx/core/app/NotificationCompat$Builder;->a0(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 17
    .line 18
    .line 19
    const v0, -0xff3183

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, v0}, Landroidx/core/app/NotificationCompat$Builder;->z(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 23
    .line 24
    new-instance v0, Lcom/narvii/util/PackageUtils;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/narvii/chat/video/utils/LiveChannelNotificationHelper;->context:Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v1}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 30
    .line 31
    if-nez p1, :cond_0

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/narvii/util/PackageUtils;->getAppName()Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-virtual {p2, p1}, Landroidx/core/app/NotificationCompat$Builder;->E(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 39
    .line 40
    iget-object p1, p0, Lcom/narvii/chat/video/utils/LiveChannelNotificationHelper;->context:Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    const v0, 0x7f121192

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string p1, " \ud83d\ude0a"

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2, p1}, Landroidx/core/app/NotificationCompat$Builder;->D(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2, p1}, Landroidx/core/app/NotificationCompat$Builder;->h0(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 71
    .line 72
    new-instance v0, Landroidx/core/app/NotificationCompat$BigTextStyle;

    .line 73
    .line 74
    .line 75
    invoke-direct {v0, p2}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>(Landroidx/core/app/NotificationCompat$Builder;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$BigTextStyle;->x(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2, v0}, Landroidx/core/app/NotificationCompat$Builder;->f0(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    .line 82
    const/4 p1, 0x1

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2, p1}, Landroidx/core/app/NotificationCompat$Builder;->t(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 86
    .line 87
    new-instance p1, Landroid/content/Intent;

    .line 88
    .line 89
    iget-object v0, p0, Lcom/narvii/chat/video/utils/LiveChannelNotificationHelper;->context:Landroid/content/Context;

    .line 90
    .line 91
    const-class v1, Lcom/narvii/chat/video/RtcNotificationClickReceiver;

    .line 92
    .line 93
    .line 94
    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    .line 96
    .line 97
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 98
    move-result-wide v0

    .line 99
    long-to-int v0, v0

    .line 100
    .line 101
    .line 102
    const v1, 0xffff

    .line 103
    and-int/2addr v0, v1

    .line 104
    .line 105
    const/high16 v1, 0x7f0a0000

    .line 106
    or-int/2addr v0, v1

    .line 107
    .line 108
    iget-object v1, p0, Lcom/narvii/chat/video/utils/LiveChannelNotificationHelper;->context:Landroid/content/Context;

    .line 109
    .line 110
    sget-object v2, Lcom/narvii/util/PendingIntentUtils;->INSTANCE:Lcom/narvii/util/PendingIntentUtils;

    .line 111
    .line 112
    const/high16 v3, 0x8000000

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2, v3}, Lcom/narvii/util/PendingIntentUtils;->getCurrentImmutableFlag(I)I

    .line 116
    move-result v2

    .line 117
    .line 118
    .line 119
    invoke-static {v1, v0, p1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 120
    move-result-object p1

    .line 121
    .line 122
    .line 123
    invoke-virtual {p2, p1}, Landroidx/core/app/NotificationCompat$Builder;->C(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 124
    .line 125
    iget-object p1, p0, Lcom/narvii/chat/video/utils/LiveChannelNotificationHelper;->context:Landroid/content/Context;

    .line 126
    .line 127
    const-string v0, "notification"

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 131
    move-result-object p1

    .line 132
    .line 133
    const-string v0, "null cannot be cast to non-null type android.app.NotificationManager"

    .line 134
    .line 135
    .line 136
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    .line 138
    check-cast p1, Landroid/app/NotificationManager;

    .line 139
    .line 140
    sget v0, Lcom/narvii/chat/video/utils/LiveChannelNotificationHelper;->LIVE_CHANNEL_NOTIFY_ID:I

    .line 141
    .line 142
    .line 143
    invoke-virtual {p2}, Landroidx/core/app/NotificationCompat$Builder;->g()Landroid/app/Notification;

    .line 144
    move-result-object p2

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1, v0, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :catch_0
    return-void
.end method
