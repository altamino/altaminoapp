.class Lcom/narvii/pushservice/ChatPushNotificationVavle$RateControlCheckRunnable;
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
    name = "RateControlCheckRunnable"
.end annotation


# instance fields
.field public key:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/pushservice/ChatPushNotificationVavle;


# direct methods
.method public constructor <init>(Lcom/narvii/pushservice/ChatPushNotificationVavle;Ljava/lang/String;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle$RateControlCheckRunnable;->this$0:Lcom/narvii/pushservice/ChatPushNotificationVavle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p2, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle$RateControlCheckRunnable;->key:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 126
    iget-object v0, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle$RateControlCheckRunnable;->this$0:Lcom/narvii/pushservice/ChatPushNotificationVavle;

    iget-object v0, v0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->rateControlShownCount:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle$RateControlCheckRunnable;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle$RateControlCheckRunnable;->this$0:Lcom/narvii/pushservice/ChatPushNotificationVavle;

    iget-object v0, v0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->rateControlShownCount:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle$RateControlCheckRunnable;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    int-to-long v0, v0

    const-wide/16 v2, 0xa

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    .line 128
    iget-object v0, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle$RateControlCheckRunnable;->this$0:Lcom/narvii/pushservice/ChatPushNotificationVavle;

    iget-object v1, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle$RateControlCheckRunnable;->key:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/narvii/pushservice/ChatPushNotificationVavle;->access$000(Lcom/narvii/pushservice/ChatPushNotificationVavle;Ljava/lang/String;)V

    goto :goto_1

    .line 130
    :cond_1
    invoke-static {}, Lcom/narvii/pushservice/ChatPushNotificationVavle;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "recount"

    invoke-static {v0, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle$RateControlCheckRunnable;->this$0:Lcom/narvii/pushservice/ChatPushNotificationVavle;

    iget-object v0, v0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->rateControlShownCount:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle$RateControlCheckRunnable;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method
