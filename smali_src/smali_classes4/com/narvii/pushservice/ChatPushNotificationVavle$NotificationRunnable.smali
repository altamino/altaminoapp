.class Lcom/narvii/pushservice/ChatPushNotificationVavle$NotificationRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/pushservice/ChatPushNotificationVavle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NotificationRunnable"
.end annotation


# instance fields
.field public key:Ljava/lang/String;

.field public payload:Lcom/narvii/pushservice/PushPayload;

.field final synthetic this$0:Lcom/narvii/pushservice/ChatPushNotificationVavle;


# direct methods
.method public constructor <init>(Lcom/narvii/pushservice/ChatPushNotificationVavle;Ljava/lang/String;Lcom/narvii/pushservice/PushPayload;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle$NotificationRunnable;->this$0:Lcom/narvii/pushservice/ChatPushNotificationVavle;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle$NotificationRunnable;->key:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle$NotificationRunnable;->payload:Lcom/narvii/pushservice/PushPayload;

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle$NotificationRunnable;->payload:Lcom/narvii/pushservice/PushPayload;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle$NotificationRunnable;->this$0:Lcom/narvii/pushservice/ChatPushNotificationVavle;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->callback:Lcom/narvii/util/Callback;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/narvii/pushservice/ChatPushNotificationVavle;->b()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    const-string v1, "show notification after rate control delay"

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle$NotificationRunnable;->this$0:Lcom/narvii/pushservice/ChatPushNotificationVavle;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->callback:Lcom/narvii/util/Callback;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle$NotificationRunnable;->payload:Lcom/narvii/pushservice/PushPayload;

    .line 26
    .line 27
    .line 28
    invoke-interface {v0, v1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 29
    :cond_0
    return-void
.end method
