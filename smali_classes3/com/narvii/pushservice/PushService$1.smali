.class Lcom/narvii/pushservice/PushService$1;
.super Landroid/content/BroadcastReceiver;
.source "PushService.java"


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

    .line 101
    iput-object p1, p0, Lcom/narvii/pushservice/PushService$1;->this$0:Lcom/narvii/pushservice/PushService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 104
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 105
    iget-object p1, p0, Lcom/narvii/pushservice/PushService$1;->this$0:Lcom/narvii/pushservice/PushService;

    invoke-static {p1}, Lcom/narvii/pushservice/PushService;->access$000(Lcom/narvii/pushservice/PushService;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 106
    iget-object p1, p0, Lcom/narvii/pushservice/PushService$1;->this$0:Lcom/narvii/pushservice/PushService;

    invoke-static {p1}, Lcom/narvii/pushservice/PushService;->access$100(Lcom/narvii/pushservice/PushService;)Landroid/app/NotificationManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/NotificationManager;->cancelAll()V

    goto :goto_0

    .line 108
    :cond_0
    iget-object p1, p0, Lcom/narvii/pushservice/PushService$1;->this$0:Lcom/narvii/pushservice/PushService;

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lcom/narvii/pushservice/PushService;->dismissNotification(II)V

    .line 109
    iget-object p1, p0, Lcom/narvii/pushservice/PushService$1;->this$0:Lcom/narvii/pushservice/PushService;

    const/4 p2, 0x2

    invoke-virtual {p1, v0, p2}, Lcom/narvii/pushservice/PushService;->dismissNotification(II)V

    :cond_1
    :goto_0
    return-void
.end method
