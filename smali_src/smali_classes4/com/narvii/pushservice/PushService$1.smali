.class Lcom/narvii/pushservice/PushService$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/pushservice/PushService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/pushservice/PushService;


# direct methods
.method constructor <init>(Lcom/narvii/pushservice/PushService;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/pushservice/PushService$1;->this$0:Lcom/narvii/pushservice/PushService;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

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
    if-eqz p1, :cond_1

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/pushservice/PushService$1;->this$0:Lcom/narvii/pushservice/PushService;

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lcom/narvii/pushservice/PushService;->c(Lcom/narvii/pushservice/PushService;)Z

    .line 18
    move-result p1

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Lcom/narvii/pushservice/PushService$1;->this$0:Lcom/narvii/pushservice/PushService;

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lcom/narvii/pushservice/PushService;->d(Lcom/narvii/pushservice/PushService;)Landroid/app/NotificationManager;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/app/NotificationManager;->cancelAll()V

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_0
    iget-object p1, p0, Lcom/narvii/pushservice/PushService$1;->this$0:Lcom/narvii/pushservice/PushService;

    .line 33
    const/4 p2, 0x1

    .line 34
    const/4 v0, 0x0

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0, p2}, Lcom/narvii/pushservice/PushService;->dismissNotification(II)V

    .line 38
    .line 39
    iget-object p1, p0, Lcom/narvii/pushservice/PushService$1;->this$0:Lcom/narvii/pushservice/PushService;

    .line 40
    const/4 p2, 0x2

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0, p2}, Lcom/narvii/pushservice/PushService;->dismissNotification(II)V

    .line 44
    :cond_1
    :goto_0
    return-void
.end method
