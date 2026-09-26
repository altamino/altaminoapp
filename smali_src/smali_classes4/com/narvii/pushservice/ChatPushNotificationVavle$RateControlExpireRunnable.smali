.class Lcom/narvii/pushservice/ChatPushNotificationVavle$RateControlExpireRunnable;
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
    name = "RateControlExpireRunnable"
.end annotation


# instance fields
.field public key:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/pushservice/ChatPushNotificationVavle;


# direct methods
.method public constructor <init>(Lcom/narvii/pushservice/ChatPushNotificationVavle;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle$RateControlExpireRunnable;->this$0:Lcom/narvii/pushservice/ChatPushNotificationVavle;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle$RateControlExpireRunnable;->key:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle$RateControlExpireRunnable;->key:Ljava/lang/String;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle$RateControlExpireRunnable;->this$0:Lcom/narvii/pushservice/ChatPushNotificationVavle;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/narvii/pushservice/ChatPushNotificationVavle;->rateControlMapper:Ljava/util/HashMap;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle$RateControlExpireRunnable;->this$0:Lcom/narvii/pushservice/ChatPushNotificationVavle;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->rateControlCheckTime:Ljava/util/HashMap;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle$RateControlExpireRunnable;->key:Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle$RateControlExpireRunnable;->this$0:Lcom/narvii/pushservice/ChatPushNotificationVavle;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->rateControlShownCount:Ljava/util/HashMap;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle$RateControlExpireRunnable;->key:Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    iget-object v0, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle$RateControlExpireRunnable;->this$0:Lcom/narvii/pushservice/ChatPushNotificationVavle;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->rateControlRunnableMapper:Ljava/util/HashMap;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle$RateControlExpireRunnable;->key:Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle$RateControlExpireRunnable;->this$0:Lcom/narvii/pushservice/ChatPushNotificationVavle;

    .line 46
    .line 47
    iget-object v1, v1, Lcom/narvii/pushservice/ChatPushNotificationVavle;->rateControlRunnableMapper:Ljava/util/HashMap;

    .line 48
    .line 49
    iget-object v2, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle$RateControlExpireRunnable;->key:Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    move-result-object v1

    .line 54
    .line 55
    check-cast v1, Ljava/lang/Runnable;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 59
    :cond_0
    return-void
.end method
