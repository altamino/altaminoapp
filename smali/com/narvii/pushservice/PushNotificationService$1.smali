.class Lcom/narvii/pushservice/PushNotificationService$1;
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

    .line 191
    iput-object p1, p0, Lcom/narvii/pushservice/PushNotificationService$1;->this$0:Lcom/narvii/pushservice/PushNotificationService;

    iput-object p3, p0, Lcom/narvii/pushservice/PushNotificationService$1;->val$payload:Lcom/narvii/pushservice/PushPayload;

    iput-object p4, p0, Lcom/narvii/pushservice/PushNotificationService$1;->val$intent:Landroid/content/Intent;

    iput-object p5, p0, Lcom/narvii/pushservice/PushNotificationService$1;->val$deleteIntent:Landroid/app/PendingIntent;

    iput-object p6, p0, Lcom/narvii/pushservice/PushNotificationService$1;->val$notificationId:Ljava/lang/Integer;

    iput-object p7, p0, Lcom/narvii/pushservice/PushNotificationService$1;->val$group:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/narvii/pushservice/PushNotificationService$1;->val$isOngoing:Z

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 194
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 195
    iget-object v0, p0, Lcom/narvii/pushservice/PushNotificationService$1;->this$0:Lcom/narvii/pushservice/PushNotificationService;

    iget-object v1, p0, Lcom/narvii/pushservice/PushNotificationService$1;->val$payload:Lcom/narvii/pushservice/PushPayload;

    iget v1, v1, Lcom/narvii/pushservice/PushPayload;->ndcId:I

    invoke-virtual {v0, v1}, Lcom/narvii/pushservice/PushNotificationService;->fetchCommunity(I)V

    .line 198
    iget-object v0, p0, Lcom/narvii/pushservice/PushNotificationService$1;->this$0:Lcom/narvii/pushservice/PushNotificationService;

    iget-object v1, p0, Lcom/narvii/pushservice/PushNotificationService$1;->val$payload:Lcom/narvii/pushservice/PushPayload;

    invoke-static {v0, v1}, Lcom/narvii/pushservice/PushNotificationService;->access$000(Lcom/narvii/pushservice/PushNotificationService;Lcom/narvii/pushservice/PushPayload;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    new-array v2, v4, [Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/narvii/pushservice/PushNotificationService$1;->val$payload:Lcom/narvii/pushservice/PushPayload;

    iget-object v5, v5, Lcom/narvii/pushservice/PushPayload;->picIcon:Landroid/graphics/Bitmap;

    aput-object v5, v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/narvii/pushservice/PushNotificationService$1;->val$payload:Lcom/narvii/pushservice/PushPayload;

    iget-object v6, v5, Lcom/narvii/pushservice/PushPayload;->picIcon:Landroid/graphics/Bitmap;

    aput-object v6, v2, v3

    iget-object v3, v5, Lcom/narvii/pushservice/PushPayload;->picFull:Landroid/graphics/Bitmap;

    aput-object v3, v2, v4

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/narvii/pushservice/PushNotificationService;->fetchPic(Lcom/narvii/pushservice/PushPayload;[Landroid/graphics/Bitmap;)V

    .line 199
    iget-object v6, p0, Lcom/narvii/pushservice/PushNotificationService$1;->val$payload:Lcom/narvii/pushservice/PushPayload;

    iput-boolean v4, v6, Lcom/narvii/pushservice/PushPayload;->picDownloaded:Z

    .line 200
    iget-object v5, p0, Lcom/narvii/pushservice/PushNotificationService$1;->this$0:Lcom/narvii/pushservice/PushNotificationService;

    iget-object v7, p0, Lcom/narvii/pushservice/PushNotificationService$1;->val$intent:Landroid/content/Intent;

    iget-object v8, p0, Lcom/narvii/pushservice/PushNotificationService$1;->val$deleteIntent:Landroid/app/PendingIntent;

    iget-object v9, p0, Lcom/narvii/pushservice/PushNotificationService$1;->val$notificationId:Ljava/lang/Integer;

    iget-object v10, p0, Lcom/narvii/pushservice/PushNotificationService$1;->val$group:Ljava/lang/String;

    iget-boolean v11, p0, Lcom/narvii/pushservice/PushNotificationService$1;->val$isOngoing:Z

    invoke-static/range {v5 .. v11}, Lcom/narvii/pushservice/PushNotificationService;->access$100(Lcom/narvii/pushservice/PushNotificationService;Lcom/narvii/pushservice/PushPayload;Landroid/content/Intent;Landroid/app/PendingIntent;Ljava/lang/Integer;Ljava/lang/String;Z)V

    return-void
.end method
