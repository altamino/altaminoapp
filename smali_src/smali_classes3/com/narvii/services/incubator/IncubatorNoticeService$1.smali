.class Lcom/narvii/services/incubator/IncubatorNoticeService$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/services/incubator/IncubatorNoticeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/services/incubator/IncubatorNoticeService;


# direct methods
.method constructor <init>(Lcom/narvii/services/incubator/IncubatorNoticeService;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/services/incubator/IncubatorNoticeService$1;->this$0:Lcom/narvii/services/incubator/IncubatorNoticeService;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/narvii/services/incubator/IncubatorNoticeService$1;Lcom/narvii/services/incubator/IncubatorNoticeService$HasReminderChangeListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/services/incubator/IncubatorNoticeService$1;->lambda$onReceive$0(Lcom/narvii/services/incubator/IncubatorNoticeService$HasReminderChangeListener;)V

    return-void
.end method

.method private synthetic lambda$onReceive$0(Lcom/narvii/services/incubator/IncubatorNoticeService$HasReminderChangeListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/services/incubator/IncubatorNoticeService$1;->this$0:Lcom/narvii/services/incubator/IncubatorNoticeService;

    .line 3
    .line 4
    iget-boolean v0, v0, Lcom/narvii/services/incubator/IncubatorNoticeService;->hasReminder:Z

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, v0}, Lcom/narvii/services/incubator/IncubatorNoticeService$HasReminderChangeListener;->onHasReminderChanged(Z)V

    .line 8
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    .line 2
    const-string p1, "com.narvii.action.ACCOUNT_CHANGED"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/services/incubator/IncubatorNoticeService$1;->this$0:Lcom/narvii/services/incubator/IncubatorNoticeService;

    .line 15
    const/4 p2, 0x0

    .line 16
    .line 17
    iput-boolean p2, p1, Lcom/narvii/services/incubator/IncubatorNoticeService;->hasReminder:Z

    .line 18
    .line 19
    const-wide/16 v0, 0x0

    .line 20
    .line 21
    iput-wide v0, p1, Lcom/narvii/services/incubator/IncubatorNoticeService;->lastCheckTime:J

    .line 22
    .line 23
    iget-object p1, p1, Lcom/narvii/services/incubator/IncubatorNoticeService;->dispatcher:Lcom/narvii/util/EventDispatcher;

    .line 24
    .line 25
    new-instance p2, Lcom/narvii/services/incubator/b;

    .line 26
    .line 27
    .line 28
    invoke-direct {p2, p0}, Lcom/narvii/services/incubator/b;-><init>(Lcom/narvii/services/incubator/IncubatorNoticeService$1;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p2}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 32
    .line 33
    iget-object p1, p0, Lcom/narvii/services/incubator/IncubatorNoticeService$1;->this$0:Lcom/narvii/services/incubator/IncubatorNoticeService;

    .line 34
    const/4 p2, 0x1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2}, Lcom/narvii/services/incubator/IncubatorNoticeService;->refresh(Z)V

    .line 38
    :cond_0
    return-void
.end method
