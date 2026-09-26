.class Lcom/narvii/chat/rtc/RtcService$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/rtc/RtcService;->requestToBePresenter(Lcom/narvii/video/model/ChannelActionCallback;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/rtc/RtcService;

.field final synthetic val$callback:Lcom/narvii/video/model/ChannelActionCallback;

.field final synthetic val$channel:Lcom/narvii/chat/signalling/SignallingChannel;

.field final synthetic val$enableLocalVideo:Z

.field final synthetic val$muteVideo:Z

.field final synthetic val$tooManyPresenterResult:Lcom/narvii/video/model/ChannelActionResult;


# direct methods
.method constructor <init>(Lcom/narvii/chat/rtc/RtcService;Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/video/model/ChannelActionCallback;Lcom/narvii/video/model/ChannelActionResult;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/rtc/RtcService$3;->this$0:Lcom/narvii/chat/rtc/RtcService;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/rtc/RtcService$3;->val$channel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/chat/rtc/RtcService$3;->val$callback:Lcom/narvii/video/model/ChannelActionCallback;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/narvii/chat/rtc/RtcService$3;->val$tooManyPresenterResult:Lcom/narvii/video/model/ChannelActionResult;

    .line 9
    .line 10
    iput-boolean p5, p0, Lcom/narvii/chat/rtc/RtcService$3;->val$muteVideo:Z

    .line 11
    .line 12
    iput-boolean p6, p0, Lcom/narvii/chat/rtc/RtcService$3;->val$enableLocalVideo:Z

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 5

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/util/ws/WsError;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/util/ws/WsError;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/narvii/util/ws/WsError;->code()I

    .line 10
    move-result p1

    .line 11
    .line 12
    const/16 v0, 0x69

    .line 13
    .line 14
    if-eq p1, v0, :cond_0

    .line 15
    .line 16
    const/16 v0, 0x74

    .line 17
    .line 18
    if-eq p1, v0, :cond_0

    .line 19
    .line 20
    const/16 v0, 0x6e

    .line 21
    .line 22
    if-ne p1, v0, :cond_5

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    const v1, 0x7f12021a

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    new-instance v1, Lcom/narvii/util/ws/WsError;

    .line 36
    .line 37
    .line 38
    invoke-direct {v1, p1, v0}, Lcom/narvii/util/ws/WsError;-><init>(ILjava/lang/String;)V

    .line 39
    .line 40
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$3;->this$0:Lcom/narvii/chat/rtc/RtcService;

    .line 41
    .line 42
    iget-object v2, p0, Lcom/narvii/chat/rtc/RtcService$3;->val$channel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 43
    .line 44
    iget-object v2, v2, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    invoke-static {v0, v2, p1, v1}, Lcom/narvii/chat/rtc/RtcService;->x(Lcom/narvii/chat/rtc/RtcService;Ljava/lang/String;ILcom/narvii/util/ws/WsError;)V

    .line 48
    .line 49
    iget-object p1, p0, Lcom/narvii/chat/rtc/RtcService$3;->val$callback:Lcom/narvii/video/model/ChannelActionCallback;

    .line 50
    .line 51
    if-eqz p1, :cond_5

    .line 52
    .line 53
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$3;->val$tooManyPresenterResult:Lcom/narvii/video/model/ChannelActionResult;

    .line 54
    .line 55
    .line 56
    invoke-interface {p1, v0}, Lcom/narvii/video/model/ChannelActionCallback;->call(Ljava/lang/Object;)V

    .line 57
    goto :goto_1

    .line 58
    .line 59
    :cond_1
    instance-of v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;

    .line 60
    .line 61
    if-eqz v0, :cond_5

    .line 62
    .line 63
    check-cast p1, Lcom/narvii/chat/signalling/SignallingChannel;

    .line 64
    .line 65
    iget v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    .line 66
    const/4 v1, 0x0

    .line 67
    const/4 v2, 0x1

    .line 68
    .line 69
    if-ne v0, v2, :cond_3

    .line 70
    .line 71
    iget-boolean v0, p0, Lcom/narvii/chat/rtc/RtcService$3;->val$muteVideo:Z

    .line 72
    .line 73
    if-nez v0, :cond_2

    .line 74
    .line 75
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$3;->this$0:Lcom/narvii/chat/rtc/RtcService;

    .line 76
    .line 77
    iget-object v3, p0, Lcom/narvii/chat/rtc/RtcService$3;->val$channel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 78
    .line 79
    iget v3, v3, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 80
    .line 81
    .line 82
    invoke-static {v0, v3, v1}, Lcom/narvii/chat/rtc/RtcService;->A(Lcom/narvii/chat/rtc/RtcService;IZ)V

    .line 83
    goto :goto_0

    .line 84
    .line 85
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$3;->this$0:Lcom/narvii/chat/rtc/RtcService;

    .line 86
    .line 87
    .line 88
    invoke-static {v0}, Lcom/narvii/chat/rtc/RtcService;->u(Lcom/narvii/chat/rtc/RtcService;)Lcom/narvii/chat/video/RtcChatManager;

    .line 89
    move-result-object v0

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1}, Lcom/narvii/chat/video/RtcChatManager;->muteLocalAudio(Z)I

    .line 93
    .line 94
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$3;->this$0:Lcom/narvii/chat/rtc/RtcService;

    .line 95
    .line 96
    .line 97
    invoke-static {v0}, Lcom/narvii/chat/rtc/RtcService;->u(Lcom/narvii/chat/rtc/RtcService;)Lcom/narvii/chat/video/RtcChatManager;

    .line 98
    move-result-object v0

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v2}, Lcom/narvii/chat/video/RtcChatManager;->muteLocalVideo(Z)I

    .line 102
    .line 103
    :goto_0
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$3;->this$0:Lcom/narvii/chat/rtc/RtcService;

    .line 104
    .line 105
    iget-object v3, p0, Lcom/narvii/chat/rtc/RtcService$3;->val$channel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 106
    .line 107
    iget v3, v3, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 108
    .line 109
    .line 110
    invoke-static {v0, v3}, Lcom/narvii/chat/rtc/RtcService;->z(Lcom/narvii/chat/rtc/RtcService;I)Z

    .line 111
    move-result v0

    .line 112
    .line 113
    if-eqz v0, :cond_3

    .line 114
    .line 115
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$3;->this$0:Lcom/narvii/chat/rtc/RtcService;

    .line 116
    .line 117
    .line 118
    invoke-static {v0}, Lcom/narvii/chat/rtc/RtcService;->u(Lcom/narvii/chat/rtc/RtcService;)Lcom/narvii/chat/video/RtcChatManager;

    .line 119
    move-result-object v0

    .line 120
    .line 121
    iget-boolean v3, p0, Lcom/narvii/chat/rtc/RtcService$3;->val$enableLocalVideo:Z

    .line 122
    .line 123
    iget-boolean v4, p0, Lcom/narvii/chat/rtc/RtcService$3;->val$muteVideo:Z

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v3, v4}, Lcom/narvii/chat/video/RtcChatManager;->requestToBeBroadcast(ZZ)V

    .line 127
    .line 128
    :cond_3
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$3;->val$callback:Lcom/narvii/video/model/ChannelActionCallback;

    .line 129
    .line 130
    if-eqz v0, :cond_5

    .line 131
    .line 132
    iget p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    .line 133
    .line 134
    if-ne p1, v2, :cond_4

    .line 135
    move v1, v2

    .line 136
    .line 137
    :cond_4
    new-instance p1, Lcom/narvii/video/model/ChannelActionResult;

    .line 138
    const/4 v0, 0x0

    .line 139
    .line 140
    .line 141
    invoke-direct {p1, v1, v0}, Lcom/narvii/video/model/ChannelActionResult;-><init>(ZLcom/narvii/video/model/ChannelActionError;)V

    .line 142
    .line 143
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$3;->val$callback:Lcom/narvii/video/model/ChannelActionCallback;

    .line 144
    .line 145
    .line 146
    invoke-interface {v0, p1}, Lcom/narvii/video/model/ChannelActionCallback;->call(Ljava/lang/Object;)V

    .line 147
    :cond_5
    :goto_1
    return-void
.end method
