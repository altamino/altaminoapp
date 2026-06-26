.class Lcom/narvii/pushservice/ChatPushNotificationVavle$NotificationRunnable;
.super Ljava/lang/Object;
.source "ChatPushNotificationVavle.java"

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

    .line 161
    iput-object p1, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle$NotificationRunnable;->this$0:Lcom/narvii/pushservice/ChatPushNotificationVavle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-object p2, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle$NotificationRunnable;->key:Ljava/lang/String;

    .line 163
    iput-object p3, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle$NotificationRunnable;->payload:Lcom/narvii/pushservice/PushPayload;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle$NotificationRunnable;->payload:Lcom/narvii/pushservice/PushPayload;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle$NotificationRunnable;->this$0:Lcom/narvii/pushservice/ChatPushNotificationVavle;

    iget-object v0, v0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->callback:Lcom/narvii/util/Callback;

    if-eqz v0, :cond_0

    .line 169
    invoke-static {}, Lcom/narvii/pushservice/ChatPushNotificationVavle;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "show notification after rate control delay"

    invoke-static {v0, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle$NotificationRunnable;->this$0:Lcom/narvii/pushservice/ChatPushNotificationVavle;

    iget-object v0, v0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->callback:Lcom/narvii/util/Callback;

    iget-object v1, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle$NotificationRunnable;->payload:Lcom/narvii/pushservice/PushPayload;

    invoke-interface {v0, v1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
