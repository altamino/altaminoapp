.class Lcom/narvii/pushservice/ChatPushNotificationVavle$RateControlExpireRunnable;
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
    name = "RateControlExpireRunnable"
.end annotation


# instance fields
.field public key:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/pushservice/ChatPushNotificationVavle;


# direct methods
.method public constructor <init>(Lcom/narvii/pushservice/ChatPushNotificationVavle;Ljava/lang/String;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle$RateControlExpireRunnable;->this$0:Lcom/narvii/pushservice/ChatPushNotificationVavle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p2, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle$RateControlExpireRunnable;->key:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 145
    iget-object v0, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle$RateControlExpireRunnable;->key:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 146
    iget-object v1, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle$RateControlExpireRunnable;->this$0:Lcom/narvii/pushservice/ChatPushNotificationVavle;

    iget-object v1, v1, Lcom/narvii/pushservice/ChatPushNotificationVavle;->rateControlMapper:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle$RateControlExpireRunnable;->this$0:Lcom/narvii/pushservice/ChatPushNotificationVavle;

    iget-object v0, v0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->rateControlCheckTime:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle$RateControlExpireRunnable;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v0, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle$RateControlExpireRunnable;->this$0:Lcom/narvii/pushservice/ChatPushNotificationVavle;

    iget-object v0, v0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->rateControlShownCount:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle$RateControlExpireRunnable;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v0, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle$RateControlExpireRunnable;->this$0:Lcom/narvii/pushservice/ChatPushNotificationVavle;

    iget-object v0, v0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->rateControlRunnableMapper:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle$RateControlExpireRunnable;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle$RateControlExpireRunnable;->this$0:Lcom/narvii/pushservice/ChatPushNotificationVavle;

    iget-object v1, v1, Lcom/narvii/pushservice/ChatPushNotificationVavle;->rateControlRunnableMapper:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle$RateControlExpireRunnable;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
