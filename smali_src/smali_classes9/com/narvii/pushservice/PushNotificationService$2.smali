.class Lcom/narvii/pushservice/PushNotificationService$2;
.super Ljava/lang/Thread;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/pushservice/PushNotificationService$2;->this$0:Lcom/narvii/pushservice/PushNotificationService;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/pushservice/PushNotificationService$2;->val$payload:Lcom/narvii/pushservice/PushPayload;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/narvii/pushservice/PushNotificationService$2;->val$intent:Landroid/content/Intent;

    .line 7
    .line 8
    iput-object p5, p0, Lcom/narvii/pushservice/PushNotificationService$2;->val$deleteIntent:Landroid/app/PendingIntent;

    .line 9
    .line 10
    iput-object p6, p0, Lcom/narvii/pushservice/PushNotificationService$2;->val$notificationId:Ljava/lang/Integer;

    .line 11
    .line 12
    iput-object p7, p0, Lcom/narvii/pushservice/PushNotificationService$2;->val$group:Ljava/lang/String;

    .line 13
    .line 14
    iput-boolean p8, p0, Lcom/narvii/pushservice/PushNotificationService$2;->val$isOngoing:Z

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 18
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/pushservice/PushNotificationService$2;->this$0:Lcom/narvii/pushservice/PushNotificationService;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/pushservice/PushNotificationService$2;->val$payload:Lcom/narvii/pushservice/PushPayload;

    .line 8
    .line 9
    iget v1, v1, Lcom/narvii/pushservice/PushPayload;->ndcId:I

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/narvii/pushservice/PushNotificationService;->fetchCommunity(I)V

    .line 13
    .line 14
    iget-object v2, p0, Lcom/narvii/pushservice/PushNotificationService$2;->this$0:Lcom/narvii/pushservice/PushNotificationService;

    .line 15
    .line 16
    iget-object v3, p0, Lcom/narvii/pushservice/PushNotificationService$2;->val$payload:Lcom/narvii/pushservice/PushPayload;

    .line 17
    .line 18
    iget-object v4, p0, Lcom/narvii/pushservice/PushNotificationService$2;->val$intent:Landroid/content/Intent;

    .line 19
    .line 20
    iget-object v5, p0, Lcom/narvii/pushservice/PushNotificationService$2;->val$deleteIntent:Landroid/app/PendingIntent;

    .line 21
    .line 22
    iget-object v6, p0, Lcom/narvii/pushservice/PushNotificationService$2;->val$notificationId:Ljava/lang/Integer;

    .line 23
    .line 24
    iget-object v7, p0, Lcom/narvii/pushservice/PushNotificationService$2;->val$group:Ljava/lang/String;

    .line 25
    .line 26
    iget-boolean v8, p0, Lcom/narvii/pushservice/PushNotificationService$2;->val$isOngoing:Z

    .line 27
    .line 28
    .line 29
    invoke-static/range {v2 .. v8}, Lcom/narvii/pushservice/PushNotificationService;->c(Lcom/narvii/pushservice/PushNotificationService;Lcom/narvii/pushservice/PushPayload;Landroid/content/Intent;Landroid/app/PendingIntent;Ljava/lang/Integer;Ljava/lang/String;Z)V

    .line 30
    return-void
.end method
