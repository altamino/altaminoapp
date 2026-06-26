.class public Lcom/narvii/chat/input/ChatInputTypingUserHelper;
.super Ljava/lang/Object;
.source "ChatInputTypingUserHelper.java"


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

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->showTyping:Z

    .line 57
    new-instance v0, Lcom/narvii/chat/input/ChatInputTypingUserHelper$1;

    invoke-direct {v0, p0}, Lcom/narvii/chat/input/ChatInputTypingUserHelper$1;-><init>(Lcom/narvii/chat/input/ChatInputTypingUserHelper;)V

    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->liveLayerEventListener:Lcom/narvii/livelayer/ws/LiveLayerEventListener;

    .line 112
    new-instance v0, Lcom/narvii/chat/input/ChatInputTypingUserHelper$2;

    invoke-direct {v0, p0}, Lcom/narvii/chat/input/ChatInputTypingUserHelper$2;-><init>(Lcom/narvii/chat/input/ChatInputTypingUserHelper;)V

    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->typingTimeOutRunnable:Ljava/lang/Runnable;

    .line 118
    new-instance v0, Lcom/narvii/chat/input/ChatInputTypingUserHelper$3;

    invoke-direct {v0, p0}, Lcom/narvii/chat/input/ChatInputTypingUserHelper$3;-><init>(Lcom/narvii/chat/input/ChatInputTypingUserHelper;)V

    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->typingEndCheckRunnable:Ljava/lang/Runnable;

    const-string v0, "liveLayer"

    .line 128
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/livelayer/LiveLayerService;

    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->liveLayerService:Lcom/narvii/livelayer/LiveLayerService;

    const-string v0, "account"

    .line 129
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->accountService:Lcom/narvii/account/AccountService;

    .line 130
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 131
    iput-object p2, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->threadId:Ljava/lang/String;

    .line 132
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->typingUser:Ljava/util/List;

    .line 133
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->recordingUser:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/chat/input/ChatInputTypingUserHelper;)Lcom/narvii/account/AccountService;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->accountService:Lcom/narvii/account/AccountService;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/chat/input/ChatInputTypingUserHelper;)Ljava/util/List;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->typingUser:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$102(Lcom/narvii/chat/input/ChatInputTypingUserHelper;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->typingUser:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lcom/narvii/chat/input/ChatInputTypingUserHelper;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->showTyping:Z

    return p0
.end method

.method static synthetic access$202(Lcom/narvii/chat/input/ChatInputTypingUserHelper;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->showTyping:Z

    return p1
.end method

.method static synthetic access$300(Lcom/narvii/chat/input/ChatInputTypingUserHelper;)Ljava/util/List;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->recordingUser:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$302(Lcom/narvii/chat/input/ChatInputTypingUserHelper;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->recordingUser:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$400(Lcom/narvii/chat/input/ChatInputTypingUserHelper;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->updateTypingLayout()V

    return-void
.end method

.method static synthetic access$500(Lcom/narvii/chat/input/ChatInputTypingUserHelper;)Landroid/widget/EditText;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->edit:Landroid/widget/EditText;

    return-object p0
.end method

.method private updateTypingLayout()V
    .locals 7

    .line 162
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->tvUserTyping:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 166
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->showTyping:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->typingUser:Ljava/util/List;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->recordingUser:Ljava/util/List;

    :goto_0
    if-eqz v0, :cond_6

    .line 167
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_4

    .line 170
    :cond_2
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->tvUserTyping:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-lt v1, v3, :cond_4

    .line 173
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->tvUserTyping:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean v3, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->showTyping:Z

    if-eqz v3, :cond_3

    const v3, 0x7f0f1143

    goto :goto_1

    :cond_3
    const v3, 0x7f0f1138

    :goto_1
    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 175
    :cond_4
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->tvUserTyping:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean v3, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->showTyping:Z

    if-eqz v3, :cond_5

    const v3, 0x7f0f1142

    goto :goto_2

    :cond_5
    const v3, 0x7f0f1137

    :goto_2
    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/User;

    invoke-virtual {v0}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 177
    :goto_3
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->tvUserTyping:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 168
    :cond_6
    :goto_4
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->tvUserTyping:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_5
    return-void
.end method


# virtual methods
.method public checkInputTypingStatus(Landroid/text/Editable;)V
    .locals 2

    .line 209
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->typingEndCheckRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 212
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->typingEndCheckRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0xbb8

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 214
    :cond_0
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->typingEndCheckRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 215
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->reportTypingStart(Ljava/lang/String;)V

    .line 217
    :goto_0
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->reportTarget:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 218
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->typingTimeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 219
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->typingTimeOutRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x2710

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method

.method public dislinkLivelayer()V
    .locals 4

    .line 149
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->getThreadId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->liveLayerService:Lcom/narvii/livelayer/LiveLayerService;

    if-eqz v1, :cond_0

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "users-start-typing-at:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->liveLayerEventListener:Lcom/narvii/livelayer/ws/LiveLayerEventListener;

    invoke-virtual {v1, v2, v3}, Lcom/narvii/livelayer/LiveLayerService;->unsubscribe(Ljava/lang/String;Lcom/narvii/livelayer/ws/LiveLayerEventListener;)V

    .line 152
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->liveLayerService:Lcom/narvii/livelayer/LiveLayerService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "users-end-typing-at:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->liveLayerEventListener:Lcom/narvii/livelayer/ws/LiveLayerEventListener;

    invoke-virtual {v1, v2, v3}, Lcom/narvii/livelayer/LiveLayerService;->unsubscribe(Ljava/lang/String;Lcom/narvii/livelayer/ws/LiveLayerEventListener;)V

    .line 153
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->liveLayerService:Lcom/narvii/livelayer/LiveLayerService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "users-start-recording-at:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->liveLayerEventListener:Lcom/narvii/livelayer/ws/LiveLayerEventListener;

    invoke-virtual {v1, v2, v3}, Lcom/narvii/livelayer/LiveLayerService;->unsubscribe(Ljava/lang/String;Lcom/narvii/livelayer/ws/LiveLayerEventListener;)V

    .line 154
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->liveLayerService:Lcom/narvii/livelayer/LiveLayerService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "users-end-recording-at:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->liveLayerEventListener:Lcom/narvii/livelayer/ws/LiveLayerEventListener;

    invoke-virtual {v1, v0, v2}, Lcom/narvii/livelayer/LiveLayerService;->unsubscribe(Ljava/lang/String;Lcom/narvii/livelayer/ws/LiveLayerEventListener;)V

    :cond_0
    return-void
.end method

.method public getThread()Lcom/narvii/model/ChatThread;
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->thread:Lcom/narvii/model/ChatThread;

    if-eqz v0, :cond_0

    return-object v0

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->nvContext:Lcom/narvii/app/NVContext;

    instance-of v1, v0, Lcom/narvii/chat/input/ChatInputFragment;

    if-eqz v1, :cond_1

    .line 187
    check-cast v0, Lcom/narvii/chat/input/ChatInputFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/input/ChatInputFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->thread:Lcom/narvii/model/ChatThread;

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->thread:Lcom/narvii/model/ChatThread;

    return-object v0
.end method

.method public getThreadId()Ljava/lang/String;
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->threadId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->threadId:Ljava/lang/String;

    return-object v0

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->nvContext:Lcom/narvii/app/NVContext;

    instance-of v1, v0, Lcom/narvii/chat/input/ChatInputFragment;

    if-eqz v1, :cond_1

    .line 202
    check-cast v0, Lcom/narvii/chat/input/ChatInputFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/input/ChatInputFragment;->getThreadId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->threadId:Ljava/lang/String;

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->threadId:Ljava/lang/String;

    return-object v0
.end method

.method public linkLivelayer(Landroid/widget/TextView;Landroid/widget/EditText;)V
    .locals 2

    .line 137
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->tvUserTyping:Landroid/widget/TextView;

    .line 138
    iput-object p2, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->edit:Landroid/widget/EditText;

    .line 139
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->getThreadId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 140
    iget-object p2, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->liveLayerService:Lcom/narvii/livelayer/LiveLayerService;

    if-eqz p2, :cond_0

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "users-start-typing-at:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->liveLayerEventListener:Lcom/narvii/livelayer/ws/LiveLayerEventListener;

    invoke-virtual {p2, v0, v1}, Lcom/narvii/livelayer/LiveLayerService;->subscribe(Ljava/lang/String;Lcom/narvii/livelayer/ws/LiveLayerEventListener;)V

    .line 142
    iget-object p2, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->liveLayerService:Lcom/narvii/livelayer/LiveLayerService;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "users-end-typing-at:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->liveLayerEventListener:Lcom/narvii/livelayer/ws/LiveLayerEventListener;

    invoke-virtual {p2, v0, v1}, Lcom/narvii/livelayer/LiveLayerService;->subscribe(Ljava/lang/String;Lcom/narvii/livelayer/ws/LiveLayerEventListener;)V

    .line 143
    iget-object p2, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->liveLayerService:Lcom/narvii/livelayer/LiveLayerService;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "users-start-recording-at:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->liveLayerEventListener:Lcom/narvii/livelayer/ws/LiveLayerEventListener;

    invoke-virtual {p2, v0, v1}, Lcom/narvii/livelayer/LiveLayerService;->subscribe(Ljava/lang/String;Lcom/narvii/livelayer/ws/LiveLayerEventListener;)V

    .line 144
    iget-object p2, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->liveLayerService:Lcom/narvii/livelayer/LiveLayerService;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "users-end-recording-at:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->liveLayerEventListener:Lcom/narvii/livelayer/ws/LiveLayerEventListener;

    invoke-virtual {p2, p1, v0}, Lcom/narvii/livelayer/LiveLayerService;->subscribe(Ljava/lang/String;Lcom/narvii/livelayer/ws/LiveLayerEventListener;)V

    :cond_0
    return-void
.end method

.method public reportRecordingEnd()V
    .locals 5

    .line 237
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 242
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 243
    sget-object v2, Lcom/narvii/livelayer/LiveLayerService;->ACTION_RECORDING:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 245
    iget v3, v0, Lcom/narvii/model/ChatThread;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "threadType"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0xc

    invoke-static {v4}, Lcom/narvii/model/NVObject;->objectTypeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 247
    iget-object v3, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->liveLayerService:Lcom/narvii/livelayer/LiveLayerService;

    invoke-virtual {v3, v1, v0, v2}, Lcom/narvii/livelayer/LiveLayerService;->reportInactive(Ljava/util/List;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public reportRecordingStart()V
    .locals 5

    .line 224
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 228
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 229
    sget-object v2, Lcom/narvii/livelayer/LiveLayerService;->ACTION_RECORDING:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0xc

    invoke-static {v3}, Lcom/narvii/model/NVObject;->objectTypeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 231
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 232
    iget v0, v0, Lcom/narvii/model/ChatThread;->type:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v4, "threadType"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->liveLayerService:Lcom/narvii/livelayer/LiveLayerService;

    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/livelayer/LiveLayerService;->reportActive(Ljava/util/List;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public reportTypingEnd()V
    .locals 4

    .line 269
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 271
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->reportTarget:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    .line 274
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 275
    iget v0, v0, Lcom/narvii/model/ChatThread;->type:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "threadType"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 277
    sget-object v2, Lcom/narvii/livelayer/LiveLayerService;->ACTION_TYPING:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    iget-object v2, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->liveLayerService:Lcom/narvii/livelayer/LiveLayerService;

    iget-object v3, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->reportTarget:Ljava/lang/String;

    invoke-virtual {v2, v0, v3, v1}, Lcom/narvii/livelayer/LiveLayerService;->reportInactive(Ljava/util/List;Ljava/lang/String;Ljava/util/HashMap;)V

    const/4 v0, 0x0

    .line 279
    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->reportTarget:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method public reportTypingStart(Ljava/lang/String;)V
    .locals 5

    .line 251
    invoke-virtual {p0}, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 256
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->lastTypingReportTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    return-void

    .line 259
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0xc

    invoke-static {v1}, Lcom/narvii/model/NVObject;->objectTypeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->reportTarget:Ljava/lang/String;

    .line 260
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 261
    iget p1, p1, Lcom/narvii/model/ChatThread;->type:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "threadType"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 263
    sget-object v1, Lcom/narvii/livelayer/LiveLayerService;->ACTION_TYPING:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    iget-object v1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->liveLayerService:Lcom/narvii/livelayer/LiveLayerService;

    iget-object v2, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->reportTarget:Ljava/lang/String;

    invoke-virtual {v1, p1, v2, v0}, Lcom/narvii/livelayer/LiveLayerService;->reportActive(Ljava/util/List;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 265
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->lastTypingReportTime:J

    return-void
.end method

.method public setThread(Lcom/narvii/model/ChatThread;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputTypingUserHelper;->thread:Lcom/narvii/model/ChatThread;

    return-void
.end method
