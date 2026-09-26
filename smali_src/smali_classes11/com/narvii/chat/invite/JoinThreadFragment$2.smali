.class Lcom/narvii/chat/invite/JoinThreadFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/invite/JoinThreadFragment;->sendLeaveRequest(Lcom/narvii/model/ChatThread;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/invite/JoinThreadFragment;

.field final synthetic val$configService:Lcom/narvii/config/ConfigService;

.field final synthetic val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

.field final synthetic val$fcid:I

.field final synthetic val$thread:Lcom/narvii/model/ChatThread;


# direct methods
.method constructor <init>(Lcom/narvii/chat/invite/JoinThreadFragment;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/model/ChatThread;ILcom/narvii/config/ConfigService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/invite/JoinThreadFragment$2;->this$0:Lcom/narvii/chat/invite/JoinThreadFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/invite/JoinThreadFragment$2;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/chat/invite/JoinThreadFragment$2;->val$thread:Lcom/narvii/model/ChatThread;

    .line 7
    .line 8
    iput p4, p0, Lcom/narvii/chat/invite/JoinThreadFragment$2;->val$fcid:I

    .line 9
    .line 10
    iput-object p5, p0, Lcom/narvii/chat/invite/JoinThreadFragment$2;->val$configService:Lcom/narvii/config/ConfigService;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/invite/JoinThreadFragment$2;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 6
    .line 7
    instance-of v0, p1, Ljava/lang/Boolean;

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    check-cast p1, Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 15
    move-result p1

    .line 16
    .line 17
    if-eqz p1, :cond_2

    .line 18
    .line 19
    iget-object p1, p0, Lcom/narvii/chat/invite/JoinThreadFragment$2;->val$thread:Lcom/narvii/model/ChatThread;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/chat/invite/JoinThreadFragment$2;->this$0:Lcom/narvii/chat/invite/JoinThreadFragment;

    .line 28
    .line 29
    const-string v1, "rtc"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    check-cast v0, Lcom/narvii/chat/rtc/RtcService;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/narvii/chat/invite/JoinThreadFragment$2;->this$0:Lcom/narvii/chat/invite/JoinThreadFragment;

    .line 38
    .line 39
    const-string v2, "chat"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    check-cast v1, Lcom/narvii/chat/core/ChatService;

    .line 46
    .line 47
    iget v2, p0, Lcom/narvii/chat/invite/JoinThreadFragment$2;->val$fcid:I

    .line 48
    .line 49
    iget-object v3, p0, Lcom/narvii/chat/invite/JoinThreadFragment$2;->val$thread:Lcom/narvii/model/ChatThread;

    .line 50
    .line 51
    iget-object v3, v3, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2, v3}, Lcom/narvii/chat/core/ChatService;->removeThread(ILjava/lang/String;)V

    .line 55
    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 60
    move-result-object v1

    .line 61
    .line 62
    if-eqz v1, :cond_0

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 66
    move-result-object v1

    .line 67
    .line 68
    iget-object v1, v1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 69
    .line 70
    iget-object v2, p0, Lcom/narvii/chat/invite/JoinThreadFragment$2;->this$0:Lcom/narvii/chat/invite/JoinThreadFragment;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2}, Lcom/narvii/chat/invite/JoinThreadFragment;->getThreadId()Ljava/lang/String;

    .line 74
    move-result-object v2

    .line 75
    .line 76
    .line 77
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 78
    move-result v1

    .line 79
    .line 80
    if-eqz v1, :cond_0

    .line 81
    .line 82
    iget-object v1, p0, Lcom/narvii/chat/invite/JoinThreadFragment$2;->val$configService:Lcom/narvii/config/ConfigService;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 86
    move-result v1

    .line 87
    .line 88
    iget-object v2, p0, Lcom/narvii/chat/invite/JoinThreadFragment$2;->this$0:Lcom/narvii/chat/invite/JoinThreadFragment;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2}, Lcom/narvii/chat/invite/JoinThreadFragment;->getThreadId()Ljava/lang/String;

    .line 92
    move-result-object v2

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v1, v2}, Lcom/narvii/chat/rtc/RtcService;->exitLiveChannel(ILjava/lang/String;)V

    .line 96
    .line 97
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/invite/JoinThreadFragment$2;->this$0:Lcom/narvii/chat/invite/JoinThreadFragment;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Lcom/narvii/chat/invite/JoinThreadFragment;->getThreadId()Ljava/lang/String;

    .line 101
    move-result-object v1

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v1}, Lcom/narvii/chat/rtc/RtcService;->cleanMappedWindow(Ljava/lang/String;)V

    .line 105
    .line 106
    iget-object v1, p0, Lcom/narvii/chat/invite/JoinThreadFragment$2;->this$0:Lcom/narvii/chat/invite/JoinThreadFragment;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1}, Lcom/narvii/chat/invite/JoinThreadFragment;->getThreadId()Ljava/lang/String;

    .line 110
    move-result-object v1

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v1}, Lcom/narvii/chat/rtc/RtcService;->cleanThreadWindow(Ljava/lang/String;)V

    .line 114
    .line 115
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/invite/JoinThreadFragment$2;->this$0:Lcom/narvii/chat/invite/JoinThreadFragment;

    .line 116
    .line 117
    const-string v1, "globalChat"

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 121
    move-result-object v0

    .line 122
    .line 123
    check-cast v0, Lcom/narvii/chat/util/GlobalChatService;

    .line 124
    .line 125
    iget v1, p0, Lcom/narvii/chat/invite/JoinThreadFragment$2;->val$fcid:I

    .line 126
    .line 127
    iget-object v2, p0, Lcom/narvii/chat/invite/JoinThreadFragment$2;->this$0:Lcom/narvii/chat/invite/JoinThreadFragment;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 131
    move-result-object v2

    .line 132
    .line 133
    .line 134
    invoke-static {p1, v1, v2}, Lcom/narvii/chat/global/GlobalChatThread;->newGlobalChatThread(Lcom/narvii/model/ChatThread;ILandroid/content/Context;)Lcom/narvii/chat/global/GlobalChatThread;

    .line 135
    move-result-object p1

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, p1}, Lcom/narvii/chat/util/GlobalChatService;->removeRecentChat(Lcom/narvii/chat/global/GlobalChatThread;)V

    .line 139
    :cond_2
    return-void
.end method
