.class Lcom/narvii/chat/invite/JoinThreadFragment$2;
.super Ljava/lang/Object;
.source "JoinThreadFragment.java"

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

    .line 216
    iput-object p1, p0, Lcom/narvii/chat/invite/JoinThreadFragment$2;->this$0:Lcom/narvii/chat/invite/JoinThreadFragment;

    iput-object p2, p0, Lcom/narvii/chat/invite/JoinThreadFragment$2;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    iput-object p3, p0, Lcom/narvii/chat/invite/JoinThreadFragment$2;->val$thread:Lcom/narvii/model/ChatThread;

    iput p4, p0, Lcom/narvii/chat/invite/JoinThreadFragment$2;->val$fcid:I

    iput-object p5, p0, Lcom/narvii/chat/invite/JoinThreadFragment$2;->val$configService:Lcom/narvii/config/ConfigService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 4

    .line 219
    iget-object v0, p0, Lcom/narvii/chat/invite/JoinThreadFragment$2;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 220
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 221
    iget-object p1, p0, Lcom/narvii/chat/invite/JoinThreadFragment$2;->val$thread:Lcom/narvii/model/ChatThread;

    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 222
    iget-object v0, p0, Lcom/narvii/chat/invite/JoinThreadFragment$2;->this$0:Lcom/narvii/chat/invite/JoinThreadFragment;

    const-string v1, "rtc"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/rtc/RtcService;

    .line 223
    iget-object v1, p0, Lcom/narvii/chat/invite/JoinThreadFragment$2;->this$0:Lcom/narvii/chat/invite/JoinThreadFragment;

    const-string v2, "chat"

    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/core/ChatService;

    .line 224
    iget v2, p0, Lcom/narvii/chat/invite/JoinThreadFragment$2;->val$fcid:I

    iget-object v3, p0, Lcom/narvii/chat/invite/JoinThreadFragment$2;->val$thread:Lcom/narvii/model/ChatThread;

    iget-object v3, v3, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/narvii/chat/core/ChatService;->removeThread(ILjava/lang/String;)V

    if-eqz v0, :cond_1

    .line 226
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v1

    iget-object v1, v1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    iget-object v2, p0, Lcom/narvii/chat/invite/JoinThreadFragment$2;->this$0:Lcom/narvii/chat/invite/JoinThreadFragment;

    invoke-virtual {v2}, Lcom/narvii/chat/invite/JoinThreadFragment;->getThreadId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/narvii/chat/invite/JoinThreadFragment$2;->val$configService:Lcom/narvii/config/ConfigService;

    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v1

    iget-object v2, p0, Lcom/narvii/chat/invite/JoinThreadFragment$2;->this$0:Lcom/narvii/chat/invite/JoinThreadFragment;

    invoke-virtual {v2}, Lcom/narvii/chat/invite/JoinThreadFragment;->getThreadId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/narvii/chat/rtc/RtcService;->exitLiveChannel(ILjava/lang/String;)V

    .line 229
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/invite/JoinThreadFragment$2;->this$0:Lcom/narvii/chat/invite/JoinThreadFragment;

    invoke-virtual {v1}, Lcom/narvii/chat/invite/JoinThreadFragment;->getThreadId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/chat/rtc/RtcService;->cleanMappedWindow(Ljava/lang/String;)V

    .line 230
    iget-object v1, p0, Lcom/narvii/chat/invite/JoinThreadFragment$2;->this$0:Lcom/narvii/chat/invite/JoinThreadFragment;

    invoke-virtual {v1}, Lcom/narvii/chat/invite/JoinThreadFragment;->getThreadId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/chat/rtc/RtcService;->cleanThreadWindow(Ljava/lang/String;)V

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/invite/JoinThreadFragment$2;->this$0:Lcom/narvii/chat/invite/JoinThreadFragment;

    const-string v1, "globalChat"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/util/GlobalChatService;

    .line 233
    iget v1, p0, Lcom/narvii/chat/invite/JoinThreadFragment$2;->val$fcid:I

    iget-object v2, p0, Lcom/narvii/chat/invite/JoinThreadFragment$2;->this$0:Lcom/narvii/chat/invite/JoinThreadFragment;

    .line 234
    invoke-virtual {v2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 233
    invoke-static {p1, v1, v2}, Lcom/narvii/chat/global/GlobalChatThread;->newGlobalChatThread(Lcom/narvii/model/ChatThread;ILandroid/content/Context;)Lcom/narvii/chat/global/GlobalChatThread;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/chat/util/GlobalChatService;->removeRecentChat(Lcom/narvii/chat/global/GlobalChatThread;)V

    :cond_2
    return-void
.end method
