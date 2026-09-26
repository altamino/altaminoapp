.class public Lcom/narvii/chat/input/ChatInputTypingUserHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TOPIC_RECORD_END:Ljava/lang/String; = "users-end-recording-at"

.field private static final TOPIC_RECORD_START:Ljava/lang/String; = "users-start-recording-at"

.field private static final TOPIC_TYPING_END:Ljava/lang/String; = "users-end-typing-at"

.field private static final TOPIC_TYPING_START:Ljava/lang/String; = "users-start-typing-at"

.field private static final TYPING_INTERVAL:J = 0xbb8L

.field private static final TYPING_TIMEOUT:J = 0x2710L


# instance fields
.field private accountService:Lcom/narvii/account/AccountService;

.field private edit:Landroid/widget/EditText;

.field private lastTypingReportTime:J

.field private liveLayerEventListener:Lcom/narvii/livelayer/ws/LiveLayerEventListener;

.field private liveLayerService:Lcom/narvii/livelayer/LiveLayerService;

.field private nvContext:Lcom/narvii/app/NVContext;

.field private recordingUser:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation
.end field

.field private reportTarget:Ljava/lang/String;

.field private showTyping:Z

.field private thread:Lcom/narvii/model/ChatThread;

.field private threadId:Ljava/lang/String;

.field private tvUserTyping:Landroid/widget/TextView;

.field private typingEndCheckRunnable:Ljava/lang/Runnable;

.field private typingTimeOutRunnable:Ljava/lang/Runnable;

.field private typingUser:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->showTyping:Z

    .line 7
    .line 8
    new-instance v0, Lcom/narvii/chat/input/ChatInputTypingUserHelper$1;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/narvii/chat/input/ChatInputTypingUserHelper$1;-><init>(Lcom/narvii/chat/input/ChatInputTypingUserHelper;)V

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->liveLayerEventListener:Lcom/narvii/livelayer/ws/LiveLayerEventListener;

    .line 14
    .line 15
    new-instance v0, Lcom/narvii/chat/input/ChatInputTypingUserHelper$2;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/narvii/chat/input/ChatInputTypingUserHelper$2;-><init>(Lcom/narvii/chat/input/ChatInputTypingUserHelper;)V

    .line 19
    .line 20
    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->typingTimeOutRunnable:Ljava/lang/Runnable;

    .line 21
    .line 22
    new-instance v0, Lcom/narvii/chat/input/ChatInputTypingUserHelper$3;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, p0}, Lcom/narvii/chat/input/ChatInputTypingUserHelper$3;-><init>(Lcom/narvii/chat/input/ChatInputTypingUserHelper;)V

    .line 26
    .line 27
    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->typingEndCheckRunnable:Ljava/lang/Runnable;

    .line 28
    .line 29
    const-string v0, "liveLayer"

    .line 30
    .line 31
    .line 32
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    check-cast v0, Lcom/narvii/livelayer/LiveLayerService;

    .line 36
    .line 37
    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->liveLayerService:Lcom/narvii/livelayer/LiveLayerService;

    .line 38
    .line 39
    const-string v0, "account"

    .line 40
    .line 41
    .line 42
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 46
    .line 47
    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->accountService:Lcom/narvii/account/AccountService;

    .line 48
    .line 49
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 50
    .line 51
    iput-object p2, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->threadId:Ljava/lang/String;

    .line 52
    .line 53
    new-instance p1, Ljava/util/ArrayList;

    .line 54
    .line 55
    .line 56
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .line 58
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->typingUser:Ljava/util/List;

    .line 59
    .line 60
    new-instance p1, Ljava/util/ArrayList;

    .line 61
    .line 62
    .line 63
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .line 65
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->recordingUser:Ljava/util/List;

    .line 66
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/chat/input/ChatInputTypingUserHelper;)Lcom/narvii/account/AccountService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->accountService:Lcom/narvii/account/AccountService;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/narvii/chat/input/ChatInputTypingUserHelper;)Landroid/widget/EditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->edit:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/narvii/chat/input/ChatInputTypingUserHelper;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->recordingUser:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/narvii/chat/input/ChatInputTypingUserHelper;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->showTyping:Z

    return p0
.end method

.method static bridge synthetic e(Lcom/narvii/chat/input/ChatInputTypingUserHelper;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->typingUser:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/narvii/chat/input/ChatInputTypingUserHelper;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->recordingUser:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic g(Lcom/narvii/chat/input/ChatInputTypingUserHelper;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->showTyping:Z

    return-void
.end method

.method static bridge synthetic h(Lcom/narvii/chat/input/ChatInputTypingUserHelper;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->typingUser:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic i(Lcom/narvii/chat/input/ChatInputTypingUserHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->updateTypingLayout()V

    return-void
.end method

.method private updateTypingLayout()V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->tvUserTyping:Landroid/widget/TextView;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->showTyping:Z

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->typingUser:Ljava/util/List;

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->recordingUser:Ljava/util/List;

    .line 15
    .line 16
    :goto_0
    if-eqz v0, :cond_6

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 20
    move-result v1

    .line 21
    .line 22
    if-nez v1, :cond_2

    .line 23
    goto :goto_4

    .line 24
    .line 25
    :cond_2
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->tvUserTyping:Landroid/widget/TextView;

    .line 26
    const/4 v2, 0x0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 33
    move-result v1

    .line 34
    const/4 v3, 0x2

    .line 35
    const/4 v4, 0x1

    .line 36
    .line 37
    if-lt v1, v3, :cond_4

    .line 38
    .line 39
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->tvUserTyping:Landroid/widget/TextView;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    iget-boolean v3, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->showTyping:Z

    .line 46
    .line 47
    if-eqz v3, :cond_3

    .line 48
    .line 49
    .line 50
    const v3, 0x7f12124e

    .line 51
    goto :goto_1

    .line 52
    .line 53
    .line 54
    :cond_3
    const v3, 0x7f121243

    .line 55
    .line 56
    :goto_1
    new-array v4, v4, [Ljava/lang/Object;

    .line 57
    .line 58
    new-instance v5, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    const-string v6, ""

    .line 64
    .line 65
    .line 66
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 70
    move-result v0

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object v0

    .line 78
    .line 79
    aput-object v0, v4, v2

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 83
    move-result-object v0

    .line 84
    goto :goto_3

    .line 85
    .line 86
    :cond_4
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->tvUserTyping:Landroid/widget/TextView;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 90
    move-result-object v1

    .line 91
    .line 92
    iget-boolean v3, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->showTyping:Z

    .line 93
    .line 94
    if-eqz v3, :cond_5

    .line 95
    .line 96
    .line 97
    const v3, 0x7f12124d

    .line 98
    goto :goto_2

    .line 99
    .line 100
    .line 101
    :cond_5
    const v3, 0x7f121242

    .line 102
    .line 103
    :goto_2
    new-array v4, v4, [Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 107
    move-result-object v0

    .line 108
    .line 109
    check-cast v0, Lcom/narvii/model/User;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    .line 113
    move-result-object v0

    .line 114
    .line 115
    aput-object v0, v4, v2

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 119
    move-result-object v0

    .line 120
    .line 121
    :goto_3
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->tvUserTyping:Landroid/widget/TextView;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    goto :goto_5

    .line 126
    .line 127
    :cond_6
    :goto_4
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->tvUserTyping:Landroid/widget/TextView;

    .line 128
    .line 129
    const/16 v1, 0x8

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 133
    :goto_5
    return-void
.end method


# virtual methods
.method public checkInputTypingStatus(Landroid/text/Editable;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->typingEndCheckRunnable:Ljava/lang/Runnable;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->typingEndCheckRunnable:Ljava/lang/Runnable;

    .line 20
    .line 21
    const-wide/16 v0, 0xbb8

    .line 22
    .line 23
    .line 24
    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_0
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->typingEndCheckRunnable:Ljava/lang/Runnable;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->reportTypingStart(Ljava/lang/String;)V

    .line 40
    .line 41
    :goto_0
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->reportTarget:Ljava/lang/String;

    .line 42
    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 46
    .line 47
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->typingTimeOutRunnable:Ljava/lang/Runnable;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 51
    .line 52
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->typingTimeOutRunnable:Ljava/lang/Runnable;

    .line 53
    .line 54
    const-wide/16 v0, 0x2710

    .line 55
    .line 56
    .line 57
    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 58
    :cond_1
    return-void
.end method

.method public dislinkLivelayer()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->getThreadId()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->liveLayerService:Lcom/narvii/livelayer/LiveLayerService;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    const-string v3, "users-start-typing-at:"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    iget-object v3, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->liveLayerEventListener:Lcom/narvii/livelayer/ws/LiveLayerEventListener;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2, v3}, Lcom/narvii/livelayer/LiveLayerService;->unsubscribe(Ljava/lang/String;Lcom/narvii/livelayer/ws/LiveLayerEventListener;)V

    .line 33
    .line 34
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->liveLayerService:Lcom/narvii/livelayer/LiveLayerService;

    .line 35
    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    const-string v3, "users-end-typing-at:"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v2

    .line 52
    .line 53
    iget-object v3, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->liveLayerEventListener:Lcom/narvii/livelayer/ws/LiveLayerEventListener;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2, v3}, Lcom/narvii/livelayer/LiveLayerService;->unsubscribe(Ljava/lang/String;Lcom/narvii/livelayer/ws/LiveLayerEventListener;)V

    .line 57
    .line 58
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->liveLayerService:Lcom/narvii/livelayer/LiveLayerService;

    .line 59
    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    const-string v3, "users-start-recording-at:"

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object v2

    .line 76
    .line 77
    iget-object v3, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->liveLayerEventListener:Lcom/narvii/livelayer/ws/LiveLayerEventListener;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v2, v3}, Lcom/narvii/livelayer/LiveLayerService;->unsubscribe(Ljava/lang/String;Lcom/narvii/livelayer/ws/LiveLayerEventListener;)V

    .line 81
    .line 82
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->liveLayerService:Lcom/narvii/livelayer/LiveLayerService;

    .line 83
    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    const-string v3, "users-end-recording-at:"

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object v0

    .line 100
    .line 101
    iget-object v2, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->liveLayerEventListener:Lcom/narvii/livelayer/ws/LiveLayerEventListener;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v0, v2}, Lcom/narvii/livelayer/LiveLayerService;->unsubscribe(Ljava/lang/String;Lcom/narvii/livelayer/ws/LiveLayerEventListener;)V

    .line 105
    :cond_0
    return-void
.end method

.method public getThread()Lcom/narvii/model/ChatThread;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->thread:Lcom/narvii/model/ChatThread;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 8
    .line 9
    instance-of v1, v0, Lcom/narvii/chat/input/ChatInputFragment;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/chat/input/ChatInputFragment;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/narvii/chat/input/ChatInputFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->thread:Lcom/narvii/model/ChatThread;

    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->thread:Lcom/narvii/model/ChatThread;

    .line 22
    return-object v0
.end method

.method public getThreadId()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->threadId:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->threadId:Ljava/lang/String;

    .line 11
    return-object v0

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 14
    .line 15
    instance-of v1, v0, Lcom/narvii/chat/input/ChatInputFragment;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    check-cast v0, Lcom/narvii/chat/input/ChatInputFragment;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/narvii/chat/input/ChatInputFragment;->getThreadId()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->threadId:Ljava/lang/String;

    .line 26
    .line 27
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->threadId:Ljava/lang/String;

    .line 28
    return-object v0
.end method

.method public linkLivelayer(Landroid/widget/TextView;Landroid/widget/EditText;)V
    .locals 2

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->tvUserTyping:Landroid/widget/TextView;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->edit:Landroid/widget/EditText;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->getThreadId()Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p2, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->liveLayerService:Lcom/narvii/livelayer/LiveLayerService;

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    const-string v1, "users-start-typing-at:"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->liveLayerEventListener:Lcom/narvii/livelayer/ws/LiveLayerEventListener;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, v0, v1}, Lcom/narvii/livelayer/LiveLayerService;->subscribe(Ljava/lang/String;Lcom/narvii/livelayer/ws/LiveLayerEventListener;)V

    .line 37
    .line 38
    iget-object p2, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->liveLayerService:Lcom/narvii/livelayer/LiveLayerService;

    .line 39
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    const-string v1, "users-end-typing-at:"

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->liveLayerEventListener:Lcom/narvii/livelayer/ws/LiveLayerEventListener;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, v0, v1}, Lcom/narvii/livelayer/LiveLayerService;->subscribe(Ljava/lang/String;Lcom/narvii/livelayer/ws/LiveLayerEventListener;)V

    .line 61
    .line 62
    iget-object p2, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->liveLayerService:Lcom/narvii/livelayer/LiveLayerService;

    .line 63
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    const-string v1, "users-start-recording-at:"

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object v0

    .line 80
    .line 81
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->liveLayerEventListener:Lcom/narvii/livelayer/ws/LiveLayerEventListener;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2, v0, v1}, Lcom/narvii/livelayer/LiveLayerService;->subscribe(Ljava/lang/String;Lcom/narvii/livelayer/ws/LiveLayerEventListener;)V

    .line 85
    .line 86
    iget-object p2, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->liveLayerService:Lcom/narvii/livelayer/LiveLayerService;

    .line 87
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    const-string v1, "users-end-recording-at:"

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    move-result-object p1

    .line 104
    .line 105
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->liveLayerEventListener:Lcom/narvii/livelayer/ws/LiveLayerEventListener;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2, p1, v0}, Lcom/narvii/livelayer/LiveLayerService;->subscribe(Ljava/lang/String;Lcom/narvii/livelayer/ws/LiveLayerEventListener;)V

    .line 109
    :cond_0
    return-void
.end method

.method public reportRecordingEnd()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->getThread()Lcom/narvii/model/ChatThread;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    sget-object v2, Lcom/narvii/livelayer/LiveLayerService;->ACTION_RECORDING:Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    new-instance v2, Ljava/util/HashMap;

    .line 20
    .line 21
    .line 22
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 23
    .line 24
    iget v3, v0, Lcom/narvii/model/ChatThread;->type:I

    .line 25
    .line 26
    .line 27
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    move-result-object v3

    .line 29
    .line 30
    const-string v4, "threadType"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    const/16 v4, 0xc

    .line 41
    .line 42
    .line 43
    invoke-static {v4}, Lcom/narvii/model/NVObject;->objectTypeName(I)Ljava/lang/String;

    .line 44
    move-result-object v4

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v4, "/"

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    iget-object v3, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->liveLayerService:Lcom/narvii/livelayer/LiveLayerService;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, v1, v0, v2}, Lcom/narvii/livelayer/LiveLayerService;->reportInactive(Ljava/util/List;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 69
    return-void
.end method

.method public reportRecordingStart()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->getThread()Lcom/narvii/model/ChatThread;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    sget-object v2, Lcom/narvii/livelayer/LiveLayerService;->ACTION_RECORDING:Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    const/16 v3, 0xc

    .line 25
    .line 26
    .line 27
    invoke-static {v3}, Lcom/narvii/model/NVObject;->objectTypeName(I)Ljava/lang/String;

    .line 28
    move-result-object v3

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v3, "/"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    .line 40
    move-result-object v3

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object v2

    .line 48
    .line 49
    new-instance v3, Ljava/util/HashMap;

    .line 50
    .line 51
    .line 52
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 53
    .line 54
    iget v0, v0, Lcom/narvii/model/ChatThread;->type:I

    .line 55
    .line 56
    .line 57
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    const-string v4, "threadType"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->liveLayerService:Lcom/narvii/livelayer/LiveLayerService;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/livelayer/LiveLayerService;->reportActive(Ljava/util/List;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 69
    return-void
.end method

.method public reportTypingEnd()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->getThread()Lcom/narvii/model/ChatThread;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->reportTarget:Ljava/lang/String;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .line 14
    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 17
    .line 18
    iget v0, v0, Lcom/narvii/model/ChatThread;->type:I

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    const-string v2, "threadType"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    new-instance v0, Ljava/util/ArrayList;

    .line 30
    .line 31
    .line 32
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    sget-object v2, Lcom/narvii/livelayer/LiveLayerService;->ACTION_TYPING:Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    iget-object v2, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->liveLayerService:Lcom/narvii/livelayer/LiveLayerService;

    .line 40
    .line 41
    iget-object v3, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->reportTarget:Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v0, v3, v1}, Lcom/narvii/livelayer/LiveLayerService;->reportInactive(Ljava/util/List;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 45
    const/4 v0, 0x0

    .line 46
    .line 47
    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->reportTarget:Ljava/lang/String;

    .line 48
    :cond_1
    :goto_0
    return-void
.end method

.method public reportTypingStart(Ljava/lang/String;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->getThread()Lcom/narvii/model/ChatThread;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 11
    move-result-wide v0

    .line 12
    .line 13
    iget-wide v2, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->lastTypingReportTime:J

    .line 14
    sub-long/2addr v0, v2

    .line 15
    .line 16
    const-wide/16 v2, 0xbb8

    .line 17
    .line 18
    cmp-long v0, v0, v2

    .line 19
    .line 20
    if-gtz v0, :cond_1

    .line 21
    return-void

    .line 22
    .line 23
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    const/16 v1, 0xc

    .line 29
    .line 30
    .line 31
    invoke-static {v1}, Lcom/narvii/model/NVObject;->objectTypeName(I)Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v1, "/"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->reportTarget:Ljava/lang/String;

    .line 54
    .line 55
    new-instance v0, Ljava/util/HashMap;

    .line 56
    .line 57
    .line 58
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 59
    .line 60
    iget p1, p1, Lcom/narvii/model/ChatThread;->type:I

    .line 61
    .line 62
    .line 63
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    const-string v1, "threadType"

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    new-instance p1, Ljava/util/ArrayList;

    .line 72
    .line 73
    .line 74
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .line 76
    sget-object v1, Lcom/narvii/livelayer/LiveLayerService;->ACTION_TYPING:Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->liveLayerService:Lcom/narvii/livelayer/LiveLayerService;

    .line 82
    .line 83
    iget-object v2, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->reportTarget:Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, p1, v2, v0}, Lcom/narvii/livelayer/LiveLayerService;->reportActive(Ljava/util/List;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 87
    .line 88
    .line 89
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 90
    move-result-wide v0

    .line 91
    .line 92
    iput-wide v0, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->lastTypingReportTime:J

    .line 93
    return-void
.end method

.method public setThread(Lcom/narvii/model/ChatThread;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->thread:Lcom/narvii/model/ChatThread;

    return-void
.end method
