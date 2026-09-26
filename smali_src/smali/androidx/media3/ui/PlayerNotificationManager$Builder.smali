.class public Landroidx/media3/ui/PlayerNotificationManager$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/ui/PlayerNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected channelDescriptionResourceId:I

.field protected final channelId:Ljava/lang/String;

.field protected channelImportance:I

.field protected channelNameResourceId:I

.field protected final context:Landroid/content/Context;

.field protected customActionReceiver:Landroidx/media3/ui/PlayerNotificationManager$CustomActionReceiver;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field protected fastForwardActionIconResourceId:I

.field protected groupKey:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field protected mediaDescriptionAdapter:Landroidx/media3/ui/PlayerNotificationManager$MediaDescriptionAdapter;

.field protected nextActionIconResourceId:I

.field protected final notificationId:I

.field protected notificationListener:Landroidx/media3/ui/PlayerNotificationManager$NotificationListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field protected pauseActionIconResourceId:I

.field protected playActionIconResourceId:I

.field protected previousActionIconResourceId:I

.field protected rewindActionIconResourceId:I

.field protected smallIconResourceId:I

.field protected stopActionIconResourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->a(Z)V

    iput-object p1, p0, Landroidx/media3/ui/PlayerNotificationManager$Builder;->context:Landroid/content/Context;

    iput p2, p0, Landroidx/media3/ui/PlayerNotificationManager$Builder;->notificationId:I

    iput-object p3, p0, Landroidx/media3/ui/PlayerNotificationManager$Builder;->channelId:Ljava/lang/String;

    const/4 p1, 0x2

    iput p1, p0, Landroidx/media3/ui/PlayerNotificationManager$Builder;->channelImportance:I

    .line 4
    new-instance p1, Landroidx/media3/ui/DefaultMediaDescriptionAdapter;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroidx/media3/ui/DefaultMediaDescriptionAdapter;-><init>(Landroid/app/PendingIntent;)V

    iput-object p1, p0, Landroidx/media3/ui/PlayerNotificationManager$Builder;->mediaDescriptionAdapter:Landroidx/media3/ui/PlayerNotificationManager$MediaDescriptionAdapter;

    sget p1, Landroidx/media3/ui/R$drawable;->exo_notification_small_icon:I

    iput p1, p0, Landroidx/media3/ui/PlayerNotificationManager$Builder;->smallIconResourceId:I

    sget p1, Landroidx/media3/ui/R$drawable;->exo_notification_play:I

    iput p1, p0, Landroidx/media3/ui/PlayerNotificationManager$Builder;->playActionIconResourceId:I

    sget p1, Landroidx/media3/ui/R$drawable;->exo_notification_pause:I

    iput p1, p0, Landroidx/media3/ui/PlayerNotificationManager$Builder;->pauseActionIconResourceId:I

    sget p1, Landroidx/media3/ui/R$drawable;->exo_notification_stop:I

    iput p1, p0, Landroidx/media3/ui/PlayerNotificationManager$Builder;->stopActionIconResourceId:I

    sget p1, Landroidx/media3/ui/R$drawable;->exo_notification_rewind:I

    iput p1, p0, Landroidx/media3/ui/PlayerNotificationManager$Builder;->rewindActionIconResourceId:I

    sget p1, Landroidx/media3/ui/R$drawable;->exo_notification_fastforward:I

    iput p1, p0, Landroidx/media3/ui/PlayerNotificationManager$Builder;->fastForwardActionIconResourceId:I

    sget p1, Landroidx/media3/ui/R$drawable;->exo_notification_previous:I

    iput p1, p0, Landroidx/media3/ui/PlayerNotificationManager$Builder;->previousActionIconResourceId:I

    sget p1, Landroidx/media3/ui/R$drawable;->exo_notification_next:I

    iput p1, p0, Landroidx/media3/ui/PlayerNotificationManager$Builder;->nextActionIconResourceId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Landroidx/media3/ui/PlayerNotificationManager$MediaDescriptionAdapter;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/ui/PlayerNotificationManager$Builder;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iput-object p4, p0, Landroidx/media3/ui/PlayerNotificationManager$Builder;->mediaDescriptionAdapter:Landroidx/media3/ui/PlayerNotificationManager$MediaDescriptionAdapter;

    return-void
.end method
