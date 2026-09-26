.class Lcom/narvii/pushservice/PushNotificationService$3;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/pushservice/PushNotificationService$3;->this$0:Lcom/narvii/pushservice/PushNotificationService;

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/pushservice/PushNotificationService$3;->val$nid:I

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/pushservice/PushNotificationService$3;->val$finalNo:Landroid/app/Notification;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/narvii/pushservice/PushNotificationService$3;->this$0:Lcom/narvii/pushservice/PushNotificationService;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/pushservice/PushNotificationService;->notifiManager:Landroid/app/NotificationManager;

    .line 5
    .line 6
    iget v1, p0, Lcom/narvii/pushservice/PushNotificationService$3;->val$nid:I

    .line 7
    .line 8
    iget-object v2, p0, Lcom/narvii/pushservice/PushNotificationService$3;->val$finalNo:Landroid/app/Notification;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception v0

    .line 14
    .line 15
    const-string v1, "narvii_push"

    .line 16
    .line 17
    const-string v2, "fail to notify notification"

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v2, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    :goto_0
    return-void
.end method
