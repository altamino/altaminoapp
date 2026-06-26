.class Lcom/narvii/pushservice/PushNotificationService$3;
.super Ljava/lang/Object;
.source "PushNotificationService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/pushservice/PushNotificationService;->showPushNotificationInteral(Lcom/narvii/pushservice/PushPayload;Landroid/content/Intent;Landroid/app/PendingIntent;Ljava/lang/Integer;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/pushservice/PushNotificationService;

.field final synthetic val$finalNo:Landroid/app/Notification;

.field final synthetic val$nid:I


# direct methods
.method constructor <init>(Lcom/narvii/pushservice/PushNotificationService;ILandroid/app/Notification;)V
    .locals 0

    .line 601
    iput-object p1, p0, Lcom/narvii/pushservice/PushNotificationService$3;->this$0:Lcom/narvii/pushservice/PushNotificationService;

    iput p2, p0, Lcom/narvii/pushservice/PushNotificationService$3;->val$nid:I

    iput-object p3, p0, Lcom/narvii/pushservice/PushNotificationService$3;->val$finalNo:Landroid/app/Notification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 605
    :try_start_0
    iget-object v0, p0, Lcom/narvii/pushservice/PushNotificationService$3;->this$0:Lcom/narvii/pushservice/PushNotificationService;

    iget-object v0, v0, Lcom/narvii/pushservice/PushNotificationService;->notifiManager:Landroid/app/NotificationManager;

    iget v1, p0, Lcom/narvii/pushservice/PushNotificationService$3;->val$nid:I

    iget-object v2, p0, Lcom/narvii/pushservice/PushNotificationService$3;->val$finalNo:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "narvii_push"

    const-string v2, "fail to notify notification"

    .line 607
    invoke-static {v1, v2, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
