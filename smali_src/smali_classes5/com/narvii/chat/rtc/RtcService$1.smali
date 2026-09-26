.class Lcom/narvii/chat/rtc/RtcService$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


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
    iput-object p1, p0, Lcom/narvii/chat/rtc/RtcService$1;->this$0:Lcom/narvii/chat/rtc/RtcService;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    const-string v0, "com.narvii.action.ACCOUNT_CHANGED"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcService$1;->this$0:Lcom/narvii/chat/rtc/RtcService;

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lcom/narvii/chat/rtc/RtcService;->l(Lcom/narvii/chat/rtc/RtcService;)Lcom/narvii/account/AccountService;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 22
    move-result p1

    .line 23
    .line 24
    if-nez p1, :cond_4

    .line 25
    .line 26
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcService$1;->this$0:Lcom/narvii/chat/rtc/RtcService;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->cleaningAttachedWindows()V

    .line 30
    .line 31
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcService$1;->this$0:Lcom/narvii/chat/rtc/RtcService;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->hideThreadDetailWindow()V

    .line 35
    .line 36
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcService$1;->this$0:Lcom/narvii/chat/rtc/RtcService;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    if-eqz p1, :cond_4

    .line 43
    .line 44
    iget-object p2, p0, Lcom/narvii/chat/rtc/RtcService$1;->this$0:Lcom/narvii/chat/rtc/RtcService;

    .line 45
    .line 46
    iget v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    .line 47
    .line 48
    iget-object p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, v0, p1}, Lcom/narvii/chat/rtc/RtcService;->exitLiveChannel(ILjava/lang/String;)V

    .line 52
    goto :goto_0

    .line 53
    .line 54
    :cond_0
    const-string p1, "android.intent.action.SCREEN_ON"

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    move-result p1

    .line 63
    .line 64
    if-eqz p1, :cond_1

    .line 65
    .line 66
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcService$1;->this$0:Lcom/narvii/chat/rtc/RtcService;

    .line 67
    .line 68
    .line 69
    invoke-static {p1}, Lcom/narvii/chat/rtc/RtcService;->u(Lcom/narvii/chat/rtc/RtcService;)Lcom/narvii/chat/video/RtcChatManager;

    .line 70
    move-result-object p1

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/narvii/chat/video/RtcChatManager;->onResume()V

    .line 74
    goto :goto_0

    .line 75
    .line 76
    :cond_1
    const-string p1, "android.intent.action.SCREEN_OFF"

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 80
    move-result-object v0

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    move-result p1

    .line 85
    .line 86
    if-eqz p1, :cond_2

    .line 87
    .line 88
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcService$1;->this$0:Lcom/narvii/chat/rtc/RtcService;

    .line 89
    .line 90
    .line 91
    invoke-static {p1}, Lcom/narvii/chat/rtc/RtcService;->u(Lcom/narvii/chat/rtc/RtcService;)Lcom/narvii/chat/video/RtcChatManager;

    .line 92
    move-result-object p1

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/narvii/chat/video/RtcChatManager;->onPause()V

    .line 96
    goto :goto_0

    .line 97
    .line 98
    :cond_2
    const-string p1, "com.narvii.action.CAMERA_TAKEN"

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 102
    move-result-object v0

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    move-result p1

    .line 107
    .line 108
    if-eqz p1, :cond_3

    .line 109
    .line 110
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcService$1;->this$0:Lcom/narvii/chat/rtc/RtcService;

    .line 111
    .line 112
    .line 113
    invoke-static {p1}, Lcom/narvii/chat/rtc/RtcService;->u(Lcom/narvii/chat/rtc/RtcService;)Lcom/narvii/chat/video/RtcChatManager;

    .line 114
    move-result-object p1

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1}, Lcom/narvii/chat/video/RtcChatManager;->onPause()V

    .line 118
    goto :goto_0

    .line 119
    .line 120
    :cond_3
    const-string p1, "com.narvii.action.CAMERA_FREE"

    .line 121
    .line 122
    .line 123
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 124
    move-result-object p2

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    move-result p1

    .line 129
    .line 130
    if-eqz p1, :cond_4

    .line 131
    .line 132
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcService$1;->this$0:Lcom/narvii/chat/rtc/RtcService;

    .line 133
    .line 134
    .line 135
    invoke-static {p1}, Lcom/narvii/chat/rtc/RtcService;->u(Lcom/narvii/chat/rtc/RtcService;)Lcom/narvii/chat/video/RtcChatManager;

    .line 136
    move-result-object p1

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1}, Lcom/narvii/chat/video/RtcChatManager;->onResume()V

    .line 140
    :cond_4
    :goto_0
    return-void
.end method
