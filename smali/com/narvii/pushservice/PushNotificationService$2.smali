.class Lcom/narvii/pushservice/PushNotificationService$2;
.super Ljava/lang/Thread;
.source "PushNotificationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/pushservice/PushNotificationService;->showPushNotification(Lcom/narvii/pushservice/PushPayload;Landroid/content/Intent;Landroid/app/PendingIntent;Ljava/lang/Integer;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/pushservice/PushNotificationService;

.field final synthetic val$deleteIntent:Landroid/app/PendingIntent;

.field final synthetic val$group:Ljava/lang/String;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$isOngoing:Z

.field final synthetic val$notificationId:Ljava/lang/Integer;

.field final synthetic val$payload:Lcom/narvii/pushservice/PushPayload;


# direct methods
.method constructor <init>(Lcom/narvii/pushservice/PushNotificationService;Ljava/lang/String;Lcom/narvii/pushservice/PushPayload;Landroid/content/Intent;Landroid/app/PendingIntent;Ljava/lang/Integer;Ljava/lang/String;Z)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/narvii/pushservice/PushNotificationService$2;->this$0:Lcom/narvii/pushservice/PushNotificationService;

    iput-object p3, p0, Lcom/narvii/pushservice/PushNotificationService$2;->val$payload:Lcom/narvii/pushservice/PushPayload;

    iput-object p4, p0, Lcom/narvii/pushservice/PushNotificationService$2;->val$intent:Landroid/content/Intent;

    iput-object p5, p0, Lcom/narvii/pushservice/PushNotificationService$2;->val$deleteIntent:Landroid/app/PendingIntent;

    iput-object p6, p0, Lcom/narvii/pushservice/PushNotificationService$2;->val$notificationId:Ljava/lang/Integer;

    iput-object p7, p0, Lcom/narvii/pushservice/PushNotificationService$2;->val$group:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/narvii/pushservice/PushNotificationService$2;->val$isOngoing:Z

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 207
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 208
    iget-object v0, p0, Lcom/narvii/pushservice/PushNotificationService$2;->this$0:Lcom/narvii/pushservice/PushNotificationService;

    iget-object v1, p0, Lcom/narvii/pushservice/PushNotificationService$2;->val$payload:Lcom/narvii/pushservice/PushPayload;

    iget v1, v1, Lcom/narvii/pushservice/PushPayload;->ndcId:I

    invoke-virtual {v0, v1}, Lcom/narvii/pushservice/PushNotificationService;->fetchCommunity(I)V

    .line 209
    iget-object v2, p0, Lcom/narvii/pushservice/PushNotificationService$2;->this$0:Lcom/narvii/pushservice/PushNotificationService;

    iget-object v3, p0, Lcom/narvii/pushservice/PushNotificationService$2;->val$payload:Lcom/narvii/pushservice/PushPayload;

    iget-object v4, p0, Lcom/narvii/pushservice/PushNotificationService$2;->val$intent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/narvii/pushservice/PushNotificationService$2;->val$deleteIntent:Landroid/app/PendingIntent;

    iget-object v6, p0, Lcom/narvii/pushservice/PushNotificationService$2;->val$notificationId:Ljava/lang/Integer;

    iget-object v7, p0, Lcom/narvii/pushservice/PushNotificationService$2;->val$group:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/narvii/pushservice/PushNotificationService$2;->val$isOngoing:Z

    invoke-static/range {v2 .. v8}, Lcom/narvii/pushservice/PushNotificationService;->access$100(Lcom/narvii/pushservice/PushNotificationService;Lcom/narvii/pushservice/PushPayload;Landroid/content/Intent;Landroid/app/PendingIntent;Ljava/lang/Integer;Ljava/lang/String;Z)V

    return-void
.end method
