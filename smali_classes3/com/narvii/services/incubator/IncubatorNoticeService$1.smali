.class Lcom/narvii/services/incubator/IncubatorNoticeService$1;
.super Landroid/content/BroadcastReceiver;
.source "IncubatorNoticeService.java"


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

    .line 36
    iput-object p1, p0, Lcom/narvii/services/incubator/IncubatorNoticeService$1;->this$0:Lcom/narvii/services/incubator/IncubatorNoticeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onReceive$0$IncubatorNoticeService$1(Lcom/narvii/services/incubator/IncubatorNoticeService$HasReminderChangeListener;)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/narvii/services/incubator/IncubatorNoticeService$1;->this$0:Lcom/narvii/services/incubator/IncubatorNoticeService;

    iget-boolean v0, v0, Lcom/narvii/services/incubator/IncubatorNoticeService;->hasReminder:Z

    invoke-interface {p1, v0}, Lcom/narvii/services/incubator/IncubatorNoticeService$HasReminderChangeListener;->onHasReminderChanged(Z)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 39
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 40
    iget-object p1, p0, Lcom/narvii/services/incubator/IncubatorNoticeService$1;->this$0:Lcom/narvii/services/incubator/IncubatorNoticeService;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/narvii/services/incubator/IncubatorNoticeService;->hasReminder:Z

    const-wide/16 v0, 0x0

    .line 41
    iput-wide v0, p1, Lcom/narvii/services/incubator/IncubatorNoticeService;->lastCheckTime:J

    .line 42
    iget-object p1, p1, Lcom/narvii/services/incubator/IncubatorNoticeService;->dispatcher:Lcom/narvii/util/EventDispatcher;

    new-instance p2, Lcom/narvii/services/incubator/-$$Lambda$IncubatorNoticeService$1$7aYMu4WX9CkHV3FEhqcMNp6n3qs;

    invoke-direct {p2, p0}, Lcom/narvii/services/incubator/-$$Lambda$IncubatorNoticeService$1$7aYMu4WX9CkHV3FEhqcMNp6n3qs;-><init>(Lcom/narvii/services/incubator/IncubatorNoticeService$1;)V

    invoke-virtual {p1, p2}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 43
    iget-object p1, p0, Lcom/narvii/services/incubator/IncubatorNoticeService$1;->this$0:Lcom/narvii/services/incubator/IncubatorNoticeService;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/narvii/services/incubator/IncubatorNoticeService;->refresh(Z)V

    :cond_0
    return-void
.end method
