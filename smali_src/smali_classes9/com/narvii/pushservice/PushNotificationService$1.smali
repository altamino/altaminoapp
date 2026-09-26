.class Lcom/narvii/pushservice/PushNotificationService$1;
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
    iput-object p1, p0, Lcom/narvii/pushservice/PushNotificationService$1;->this$0:Lcom/narvii/pushservice/PushNotificationService;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/pushservice/PushNotificationService$1;->val$payload:Lcom/narvii/pushservice/PushPayload;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/narvii/pushservice/PushNotificationService$1;->val$intent:Landroid/content/Intent;

    .line 7
    .line 8
    iput-object p5, p0, Lcom/narvii/pushservice/PushNotificationService$1;->val$deleteIntent:Landroid/app/PendingIntent;

    .line 9
    .line 10
    iput-object p6, p0, Lcom/narvii/pushservice/PushNotificationService$1;->val$notificationId:Ljava/lang/Integer;

    .line 11
    .line 12
    iput-object p7, p0, Lcom/narvii/pushservice/PushNotificationService$1;->val$group:Ljava/lang/String;

    .line 13
    .line 14
    iput-boolean p8, p0, Lcom/narvii/pushservice/PushNotificationService$1;->val$isOngoing:Z

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 18
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/pushservice/PushNotificationService$1;->this$0:Lcom/narvii/pushservice/PushNotificationService;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/pushservice/PushNotificationService$1;->val$payload:Lcom/narvii/pushservice/PushPayload;

    .line 8
    .line 9
    iget v1, v1, Lcom/narvii/pushservice/PushPayload;->ndcId:I

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/narvii/pushservice/PushNotificationService;->fetchCommunity(I)V

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/pushservice/PushNotificationService$1;->this$0:Lcom/narvii/pushservice/PushNotificationService;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/pushservice/PushNotificationService$1;->val$payload:Lcom/narvii/pushservice/PushPayload;

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/narvii/pushservice/PushNotificationService;->b(Lcom/narvii/pushservice/PushNotificationService;Lcom/narvii/pushservice/PushPayload;)Z

    .line 20
    move-result v2

    .line 21
    const/4 v3, 0x0

    .line 22
    const/4 v4, 0x1

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    new-array v2, v4, [Landroid/graphics/Bitmap;

    .line 27
    .line 28
    iget-object v5, p0, Lcom/narvii/pushservice/PushNotificationService$1;->val$payload:Lcom/narvii/pushservice/PushPayload;

    .line 29
    .line 30
    iget-object v5, v5, Lcom/narvii/pushservice/PushPayload;->picIcon:Landroid/graphics/Bitmap;

    .line 31
    .line 32
    aput-object v5, v2, v3

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v2, 0x2

    .line 35
    .line 36
    new-array v2, v2, [Landroid/graphics/Bitmap;

    .line 37
    .line 38
    iget-object v5, p0, Lcom/narvii/pushservice/PushNotificationService$1;->val$payload:Lcom/narvii/pushservice/PushPayload;

    .line 39
    .line 40
    iget-object v6, v5, Lcom/narvii/pushservice/PushPayload;->picIcon:Landroid/graphics/Bitmap;

    .line 41
    .line 42
    aput-object v6, v2, v3

    .line 43
    .line 44
    iget-object v3, v5, Lcom/narvii/pushservice/PushPayload;->picFull:Landroid/graphics/Bitmap;

    .line 45
    .line 46
    aput-object v3, v2, v4

    .line 47
    .line 48
    .line 49
    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/narvii/pushservice/PushNotificationService;->fetchPic(Lcom/narvii/pushservice/PushPayload;[Landroid/graphics/Bitmap;)V

    .line 50
    .line 51
    iget-object v6, p0, Lcom/narvii/pushservice/PushNotificationService$1;->val$payload:Lcom/narvii/pushservice/PushPayload;

    .line 52
    .line 53
    iput-boolean v4, v6, Lcom/narvii/pushservice/PushPayload;->picDownloaded:Z

    .line 54
    .line 55
    iget-object v5, p0, Lcom/narvii/pushservice/PushNotificationService$1;->this$0:Lcom/narvii/pushservice/PushNotificationService;

    .line 56
    .line 57
    iget-object v7, p0, Lcom/narvii/pushservice/PushNotificationService$1;->val$intent:Landroid/content/Intent;

    .line 58
    .line 59
    iget-object v8, p0, Lcom/narvii/pushservice/PushNotificationService$1;->val$deleteIntent:Landroid/app/PendingIntent;

    .line 60
    .line 61
    iget-object v9, p0, Lcom/narvii/pushservice/PushNotificationService$1;->val$notificationId:Ljava/lang/Integer;

    .line 62
    .line 63
    iget-object v10, p0, Lcom/narvii/pushservice/PushNotificationService$1;->val$group:Ljava/lang/String;

    .line 64
    .line 65
    iget-boolean v11, p0, Lcom/narvii/pushservice/PushNotificationService$1;->val$isOngoing:Z

    .line 66
    .line 67
    .line 68
    invoke-static/range {v5 .. v11}, Lcom/narvii/pushservice/PushNotificationService;->c(Lcom/narvii/pushservice/PushNotificationService;Lcom/narvii/pushservice/PushPayload;Landroid/content/Intent;Landroid/app/PendingIntent;Ljava/lang/Integer;Ljava/lang/String;Z)V

    .line 69
    return-void
.end method
