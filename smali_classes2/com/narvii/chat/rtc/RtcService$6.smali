.class Lcom/narvii/chat/rtc/RtcService$6;
.super Ljava/lang/Object;
.source "RtcService.java"

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

    .line 821
    iput-object p1, p0, Lcom/narvii/chat/rtc/RtcService$6;->this$0:Lcom/narvii/chat/rtc/RtcService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 2

    .line 824
    instance-of v0, p1, Lcom/narvii/util/ws/WsError;

    if-eqz v0, :cond_0

    .line 825
    check-cast p1, Lcom/narvii/util/ws/WsError;

    iget-object v0, p1, Lcom/narvii/util/ws/WsError;->message:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 826
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$6;->this$0:Lcom/narvii/chat/rtc/RtcService;

    invoke-static {v0}, Lcom/narvii/chat/rtc/RtcService;->access$900(Lcom/narvii/chat/rtc/RtcService;)Landroid/content/Context;

    move-result-object v0

    iget-object p1, p1, Lcom/narvii/util/ws/WsError;->message:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    goto :goto_0

    .line 829
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcService$6;->this$0:Lcom/narvii/chat/rtc/RtcService;

    invoke-static {p1}, Lcom/narvii/chat/rtc/RtcService;->access$100(Lcom/narvii/chat/rtc/RtcService;)Lcom/narvii/chat/video/RtcChatManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/chat/video/RtcChatManager;->requesToBeAudience()V

    :cond_1
    :goto_0
    return-void
.end method
