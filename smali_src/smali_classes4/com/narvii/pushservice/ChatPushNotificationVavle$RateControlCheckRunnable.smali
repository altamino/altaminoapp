.class Lcom/narvii/pushservice/ChatPushNotificationVavle$RateControlCheckRunnable;
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
    name = "RateControlCheckRunnable"
.end annotation


# instance fields
.field public key:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/pushservice/ChatPushNotificationVavle;


# direct methods
.method public constructor <init>(Lcom/narvii/pushservice/ChatPushNotificationVavle;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle$RateControlCheckRunnable;->this$0:Lcom/narvii/pushservice/ChatPushNotificationVavle;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle$RateControlCheckRunnable;->key:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle$RateControlCheckRunnable;->this$0:Lcom/narvii/pushservice/ChatPushNotificationVavle;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->rateControlShownCount:Ljava/util/HashMap;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle$RateControlCheckRunnable;->key:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    const/4 v0, 0x0

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle$RateControlCheckRunnable;->this$0:Lcom/narvii/pushservice/ChatPushNotificationVavle;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->rateControlShownCount:Ljava/util/HashMap;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle$RateControlCheckRunnable;->key:Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    check-cast v0, Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 30
    move-result v0

    .line 31
    :goto_0
    int-to-long v0, v0

    .line 32
    .line 33
    const-wide/16 v2, 0xa

    .line 34
    .line 35
    cmp-long v0, v0, v2

    .line 36
    .line 37
    if-ltz v0, :cond_1

    .line 38
    .line 39
    iget-object v0, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle$RateControlCheckRunnable;->this$0:Lcom/narvii/pushservice/ChatPushNotificationVavle;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle$RateControlCheckRunnable;->key:Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    invoke-static {v0, v1}, Lcom/narvii/pushservice/ChatPushNotificationVavle;->a(Lcom/narvii/pushservice/ChatPushNotificationVavle;Ljava/lang/String;)V

    .line 45
    goto :goto_1

    .line 46
    .line 47
    .line 48
    :cond_1
    invoke-static {}, Lcom/narvii/pushservice/ChatPushNotificationVavle;->b()Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    const-string v1, "recount"

    .line 52
    .line 53
    .line 54
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    iget-object v0, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle$RateControlCheckRunnable;->this$0:Lcom/narvii/pushservice/ChatPushNotificationVavle;

    .line 57
    .line 58
    iget-object v0, v0, Lcom/narvii/pushservice/ChatPushNotificationVavle;->rateControlShownCount:Ljava/util/HashMap;

    .line 59
    .line 60
    iget-object v1, p0, Lcom/narvii/pushservice/ChatPushNotificationVavle$RateControlCheckRunnable;->key:Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :goto_1
    return-void
.end method
