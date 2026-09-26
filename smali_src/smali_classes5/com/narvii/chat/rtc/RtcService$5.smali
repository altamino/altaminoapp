.class Lcom/narvii/chat/rtc/RtcService$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/video/ui/floating/FloatingClickEvent;


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
    iput-object p1, p0, Lcom/narvii/chat/rtc/RtcService$5;->this$0:Lcom/narvii/chat/rtc/RtcService;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/narvii/chat/rtc/RtcService$5;Lcom/narvii/chat/signalling/SignallingChannel;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/rtc/RtcService$5;->lambda$onCloseClicked$0(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/lang/Boolean;)V

    return-void
.end method

.method private synthetic lambda$onCloseClicked$0(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    move-result p2

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1}, Lcom/narvii/chat/rtc/RtcService$5;->leaveFromWindow(Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 10
    :cond_0
    return-void
.end method

.method private leaveFromWindow(Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/chat/video/ChatLogEventHelper;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService$5;->this$0:Lcom/narvii/chat/rtc/RtcService;

    .line 5
    .line 6
    .line 7
    invoke-static {v1}, Lcom/narvii/chat/rtc/RtcService;->t(Lcom/narvii/chat/rtc/RtcService;)Lcom/narvii/app/NVContext;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/narvii/chat/video/ChatLogEventHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 12
    .line 13
    iget v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 14
    .line 15
    iget-object v2, p0, Lcom/narvii/chat/rtc/RtcService$5;->this$0:Lcom/narvii/chat/rtc/RtcService;

    .line 16
    .line 17
    .line 18
    invoke-static {v2}, Lcom/narvii/chat/rtc/RtcService;->r(Lcom/narvii/chat/rtc/RtcService;)Lcom/narvii/model/ChatThread;

    .line 19
    move-result-object v2

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Lcom/narvii/chat/video/ChatLogEventHelper;->logQuitChat(ILcom/narvii/model/ChatThread;)V

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$5;->this$0:Lcom/narvii/chat/rtc/RtcService;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->isPresenterInChannel()Z

    .line 28
    move-result v0

    .line 29
    .line 30
    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService$5;->this$0:Lcom/narvii/chat/rtc/RtcService;

    .line 31
    .line 32
    .line 33
    invoke-static {v1}, Lcom/narvii/chat/rtc/RtcService;->m(Lcom/narvii/chat/rtc/RtcService;)Lcom/narvii/chat/call/CallScreenService;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, p1}, Lcom/narvii/chat/call/CallScreenService;->cancelCall(Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 38
    .line 39
    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService$5;->this$0:Lcom/narvii/chat/rtc/RtcService;

    .line 40
    .line 41
    iget v2, p1, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    .line 42
    .line 43
    iget-object v3, p1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2, v3}, Lcom/narvii/chat/rtc/RtcService;->exitLiveChannel(ILjava/lang/String;)V

    .line 47
    .line 48
    new-instance v1, Lcom/narvii/chat/video/utils/VVChatLogHelper;

    .line 49
    .line 50
    iget-object v2, p0, Lcom/narvii/chat/rtc/RtcService$5;->this$0:Lcom/narvii/chat/rtc/RtcService;

    .line 51
    .line 52
    .line 53
    invoke-static {v2}, Lcom/narvii/chat/rtc/RtcService;->t(Lcom/narvii/chat/rtc/RtcService;)Lcom/narvii/app/NVContext;

    .line 54
    move-result-object v2

    .line 55
    .line 56
    .line 57
    invoke-direct {v1, v2}, Lcom/narvii/chat/video/utils/VVChatLogHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 58
    const/4 v2, 0x0

    .line 59
    .line 60
    const-string v3, "Popup Window"

    .line 61
    .line 62
    if-eqz v0, :cond_0

    .line 63
    .line 64
    iget v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v0, v3, v2}, Lcom/narvii/chat/video/utils/VVChatLogHelper;->logStopPresentingLiveChannel(ILjava/lang/String;Lcom/narvii/model/ChatThread;)V

    .line 68
    .line 69
    :cond_0
    iget p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, p1, v3, v2}, Lcom/narvii/chat/video/utils/VVChatLogHelper;->logLeaveLiveChannel(ILjava/lang/String;Lcom/narvii/model/ChatThread;)V

    .line 73
    return-void
.end method


# virtual methods
.method public onCloseClicked()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$5;->this$0:Lcom/narvii/chat/rtc/RtcService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$5;->this$0:Lcom/narvii/chat/rtc/RtcService;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->hideVideoFloatingWindow()V

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$5;->this$0:Lcom/narvii/chat/rtc/RtcService;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->hideAudioFloatingWindow()V

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$5;->this$0:Lcom/narvii/chat/rtc/RtcService;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->hideSRFloatingWindow()V

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$5;->this$0:Lcom/narvii/chat/rtc/RtcService;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->cancelNotification()V

    .line 29
    return-void

    .line 30
    .line 31
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService$5;->this$0:Lcom/narvii/chat/rtc/RtcService;

    .line 32
    .line 33
    iget-object v1, v1, Lcom/narvii/chat/rtc/RtcService;->topActivity:Ljava/lang/ref/WeakReference;

    .line 34
    .line 35
    if-nez v1, :cond_1

    .line 36
    const/4 v1, 0x0

    .line 37
    goto :goto_0

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    check-cast v1, Landroid/app/Activity;

    .line 44
    .line 45
    :goto_0
    if-eqz v1, :cond_8

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    .line 49
    move-result v2

    .line 50
    .line 51
    if-eqz v2, :cond_2

    .line 52
    .line 53
    goto/16 :goto_3

    .line 54
    .line 55
    :cond_2
    iget-object v2, p0, Lcom/narvii/chat/rtc/RtcService$5;->this$0:Lcom/narvii/chat/rtc/RtcService;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelChatThread()Lcom/narvii/model/ChatThread;

    .line 59
    move-result-object v2

    .line 60
    const/4 v3, 0x1

    .line 61
    .line 62
    if-eqz v2, :cond_4

    .line 63
    .line 64
    iget-object v2, p0, Lcom/narvii/chat/rtc/RtcService$5;->this$0:Lcom/narvii/chat/rtc/RtcService;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelChatThread()Lcom/narvii/model/ChatThread;

    .line 68
    move-result-object v2

    .line 69
    .line 70
    iget v2, v2, Lcom/narvii/model/ChatThread;->type:I

    .line 71
    .line 72
    if-nez v2, :cond_4

    .line 73
    .line 74
    iget-object v2, p0, Lcom/narvii/chat/rtc/RtcService$5;->this$0:Lcom/narvii/chat/rtc/RtcService;

    .line 75
    .line 76
    .line 77
    invoke-static {v2}, Lcom/narvii/chat/rtc/RtcService;->m(Lcom/narvii/chat/rtc/RtcService;)Lcom/narvii/chat/call/CallScreenService;

    .line 78
    move-result-object v2

    .line 79
    .line 80
    if-eqz v2, :cond_4

    .line 81
    .line 82
    iget-object v2, p0, Lcom/narvii/chat/rtc/RtcService$5;->this$0:Lcom/narvii/chat/rtc/RtcService;

    .line 83
    .line 84
    .line 85
    invoke-static {v2}, Lcom/narvii/chat/rtc/RtcService;->m(Lcom/narvii/chat/rtc/RtcService;)Lcom/narvii/chat/call/CallScreenService;

    .line 86
    move-result-object v2

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Lcom/narvii/chat/call/CallScreenService;->getCurStatus()I

    .line 90
    move-result v2

    .line 91
    .line 92
    const/16 v4, 0x8

    .line 93
    .line 94
    if-ne v2, v4, :cond_3

    .line 95
    .line 96
    iget-object v2, p0, Lcom/narvii/chat/rtc/RtcService$5;->this$0:Lcom/narvii/chat/rtc/RtcService;

    .line 97
    .line 98
    .line 99
    invoke-static {v2}, Lcom/narvii/chat/rtc/RtcService;->m(Lcom/narvii/chat/rtc/RtcService;)Lcom/narvii/chat/call/CallScreenService;

    .line 100
    move-result-object v2

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2}, Lcom/narvii/chat/call/CallScreenService;->getCurStatus()I

    .line 104
    move-result v2

    .line 105
    const/4 v4, 0x6

    .line 106
    .line 107
    if-ne v2, v4, :cond_4

    .line 108
    :cond_3
    move v2, v3

    .line 109
    goto :goto_1

    .line 110
    :cond_4
    const/4 v2, 0x0

    .line 111
    .line 112
    :goto_1
    iget v4, v0, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    .line 113
    .line 114
    if-ne v4, v3, :cond_7

    .line 115
    .line 116
    if-nez v2, :cond_7

    .line 117
    .line 118
    iget-object v2, v0, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    .line 119
    .line 120
    if-eqz v2, :cond_7

    .line 121
    .line 122
    .line 123
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 124
    move-result v2

    .line 125
    .line 126
    if-gt v2, v3, :cond_5

    .line 127
    goto :goto_2

    .line 128
    .line 129
    :cond_5
    new-instance v2, Lcom/narvii/chat/video/utils/VVChatHelper;

    .line 130
    .line 131
    iget-object v4, p0, Lcom/narvii/chat/rtc/RtcService$5;->this$0:Lcom/narvii/chat/rtc/RtcService;

    .line 132
    .line 133
    .line 134
    invoke-static {v4}, Lcom/narvii/chat/rtc/RtcService;->t(Lcom/narvii/chat/rtc/RtcService;)Lcom/narvii/app/NVContext;

    .line 135
    move-result-object v4

    .line 136
    .line 137
    .line 138
    invoke-direct {v2, v4}, Lcom/narvii/chat/video/utils/VVChatHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 139
    .line 140
    iget-object v4, p0, Lcom/narvii/chat/rtc/RtcService$5;->this$0:Lcom/narvii/chat/rtc/RtcService;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v4}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelChatThread()Lcom/narvii/model/ChatThread;

    .line 144
    move-result-object v4

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2, v4}, Lcom/narvii/chat/video/utils/VVChatHelper;->needShowConfirmDialogWhenLeaveChannel(Lcom/narvii/model/ChatThread;)Z

    .line 148
    move-result v4

    .line 149
    .line 150
    if-eqz v4, :cond_6

    .line 151
    .line 152
    new-instance v4, Lcom/narvii/chat/rtc/l;

    .line 153
    .line 154
    .line 155
    invoke-direct {v4, p0, v0}, Lcom/narvii/chat/rtc/l;-><init>(Lcom/narvii/chat/rtc/RtcService$5;Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2, v1, v3, v4}, Lcom/narvii/chat/video/utils/VVChatHelper;->showLeaveChannelConfirmDialog(Landroid/app/Activity;ZLcom/narvii/util/Callback;)V

    .line 159
    goto :goto_4

    .line 160
    .line 161
    .line 162
    :cond_6
    invoke-direct {p0, v0}, Lcom/narvii/chat/rtc/RtcService$5;->leaveFromWindow(Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 163
    goto :goto_4

    .line 164
    .line 165
    .line 166
    :cond_7
    :goto_2
    invoke-direct {p0, v0}, Lcom/narvii/chat/rtc/RtcService$5;->leaveFromWindow(Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 167
    return-void

    .line 168
    .line 169
    .line 170
    :cond_8
    :goto_3
    invoke-direct {p0, v0}, Lcom/narvii/chat/rtc/RtcService$5;->leaveFromWindow(Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 171
    :goto_4
    return-void
.end method

.method public onTotalClicked()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$5;->this$0:Lcom/narvii/chat/rtc/RtcService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->relaunchRtcMainActivity()V

    .line 6
    return-void
.end method
