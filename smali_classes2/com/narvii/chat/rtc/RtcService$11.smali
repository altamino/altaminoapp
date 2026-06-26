.class Lcom/narvii/chat/rtc/RtcService$11;
.super Ljava/lang/Object;
.source "RtcService.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/rtc/RtcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/rtc/RtcService;


# direct methods
.method constructor <init>(Lcom/narvii/chat/rtc/RtcService;)V
    .locals 0

    .line 950
    iput-object p1, p0, Lcom/narvii/chat/rtc/RtcService$11;->this$0:Lcom/narvii/chat/rtc/RtcService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 2

    .line 953
    instance-of v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;

    if-eqz v0, :cond_0

    .line 954
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$11;->this$0:Lcom/narvii/chat/rtc/RtcService;

    check-cast p1, Lcom/narvii/chat/signalling/SignallingChannel;

    invoke-static {v0, p1}, Lcom/narvii/chat/rtc/RtcService;->access$1300(Lcom/narvii/chat/rtc/RtcService;Lcom/narvii/chat/signalling/SignallingChannel;)V

    goto :goto_0

    .line 955
    :cond_0
    instance-of v0, p1, Lcom/narvii/util/ws/WsError;

    if-eqz v0, :cond_1

    .line 956
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$11;->this$0:Lcom/narvii/chat/rtc/RtcService;

    invoke-static {v0}, Lcom/narvii/chat/rtc/RtcService;->access$900(Lcom/narvii/chat/rtc/RtcService;)Landroid/content/Context;

    move-result-object v0

    check-cast p1, Lcom/narvii/util/ws/WsError;

    invoke-virtual {p1}, Lcom/narvii/util/ws/WsError;->message()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    :cond_1
    :goto_0
    return-void
.end method
