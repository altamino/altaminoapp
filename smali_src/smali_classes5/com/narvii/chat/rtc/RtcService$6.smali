.class Lcom/narvii/chat/rtc/RtcService$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/rtc/RtcService;->stopPresenting()V
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
    iput-object p1, p0, Lcom/narvii/chat/rtc/RtcService$6;->this$0:Lcom/narvii/chat/rtc/RtcService;

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
    instance-of v0, p1, Lcom/narvii/util/ws/WsError;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/util/ws/WsError;

    .line 7
    .line 8
    iget-object v0, p1, Lcom/narvii/util/ws/WsError;->message:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$6;->this$0:Lcom/narvii/chat/rtc/RtcService;

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lcom/narvii/chat/rtc/RtcService;->n(Lcom/narvii/chat/rtc/RtcService;)Landroid/content/Context;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    iget-object p1, p1, Lcom/narvii/util/ws/WsError;->message:Ljava/lang/String;

    .line 23
    const/4 v1, 0x1

    .line 24
    .line 25
    .line 26
    invoke-static {v0, p1, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcService$6;->this$0:Lcom/narvii/chat/rtc/RtcService;

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Lcom/narvii/chat/rtc/RtcService;->u(Lcom/narvii/chat/rtc/RtcService;)Lcom/narvii/chat/video/RtcChatManager;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/narvii/chat/video/RtcChatManager;->requesToBeAudience()V

    .line 41
    :cond_1
    :goto_0
    return-void
.end method
