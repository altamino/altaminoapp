.class Lcom/narvii/chat/rtc/RtcService$11;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/rtc/RtcService$11;->this$0:Lcom/narvii/chat/rtc/RtcService;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 2

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$11;->this$0:Lcom/narvii/chat/rtc/RtcService;

    .line 7
    .line 8
    check-cast p1, Lcom/narvii/chat/signalling/SignallingChannel;

    .line 9
    .line 10
    .line 11
    invoke-static {v0, p1}, Lcom/narvii/chat/rtc/RtcService;->B(Lcom/narvii/chat/rtc/RtcService;Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    instance-of v0, p1, Lcom/narvii/util/ws/WsError;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$11;->this$0:Lcom/narvii/chat/rtc/RtcService;

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lcom/narvii/chat/rtc/RtcService;->n(Lcom/narvii/chat/rtc/RtcService;)Landroid/content/Context;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    check-cast p1, Lcom/narvii/util/ws/WsError;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/narvii/util/ws/WsError;->message()Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    const/4 v1, 0x1

    .line 30
    .line 31
    .line 32
    invoke-static {v0, p1, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 37
    :cond_1
    :goto_0
    return-void
.end method
