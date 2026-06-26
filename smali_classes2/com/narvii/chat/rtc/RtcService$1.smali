.class Lcom/narvii/chat/rtc/RtcService$1;
.super Landroid/content/BroadcastReceiver;
.source "RtcService.java"


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

    .line 199
    iput-object p1, p0, Lcom/narvii/chat/rtc/RtcService$1;->this$0:Lcom/narvii/chat/rtc/RtcService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 202
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 203
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcService$1;->this$0:Lcom/narvii/chat/rtc/RtcService;

    invoke-static {p1}, Lcom/narvii/chat/rtc/RtcService;->access$000(Lcom/narvii/chat/rtc/RtcService;)Lcom/narvii/account/AccountService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result p1

    if-nez p1, :cond_4

    .line 204
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcService$1;->this$0:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->cleaningAttachedWindows()V

    .line 205
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcService$1;->this$0:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->hideThreadDetailWindow()V

    .line 206
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcService$1;->this$0:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 208
    iget-object p2, p0, Lcom/narvii/chat/rtc/RtcService$1;->this$0:Lcom/narvii/chat/rtc/RtcService;

    iget v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    iget-object p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Lcom/narvii/chat/rtc/RtcService;->exitLiveChannel(ILjava/lang/String;)V

    goto :goto_0

    .line 211
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 212
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcService$1;->this$0:Lcom/narvii/chat/rtc/RtcService;

    invoke-static {p1}, Lcom/narvii/chat/rtc/RtcService;->access$100(Lcom/narvii/chat/rtc/RtcService;)Lcom/narvii/chat/video/RtcChatManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/chat/video/RtcChatManager;->onResume()V

    goto :goto_0

    .line 213
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 214
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcService$1;->this$0:Lcom/narvii/chat/rtc/RtcService;

    invoke-static {p1}, Lcom/narvii/chat/rtc/RtcService;->access$100(Lcom/narvii/chat/rtc/RtcService;)Lcom/narvii/chat/video/RtcChatManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/chat/video/RtcChatManager;->onPause()V

    goto :goto_0

    .line 215
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.narvii.action.CAMERA_TAKEN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 216
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcService$1;->this$0:Lcom/narvii/chat/rtc/RtcService;

    invoke-static {p1}, Lcom/narvii/chat/rtc/RtcService;->access$100(Lcom/narvii/chat/rtc/RtcService;)Lcom/narvii/chat/video/RtcChatManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/chat/video/RtcChatManager;->onPause()V

    goto :goto_0

    .line 217
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.narvii.action.CAMERA_FREE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 218
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcService$1;->this$0:Lcom/narvii/chat/rtc/RtcService;

    invoke-static {p1}, Lcom/narvii/chat/rtc/RtcService;->access$100(Lcom/narvii/chat/rtc/RtcService;)Lcom/narvii/chat/video/RtcChatManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/chat/video/RtcChatManager;->onResume()V

    :cond_4
    :goto_0
    return-void
.end method
