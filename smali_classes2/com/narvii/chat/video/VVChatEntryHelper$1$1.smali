.class Lcom/narvii/chat/video/VVChatEntryHelper$1$1;
.super Ljava/lang/Object;
.source "VVChatEntryHelper.java"

# interfaces
.implements Lcom/narvii/video/model/ChannelActionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/VVChatEntryHelper$1;->call(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/video/model/ChannelActionCallback<",
        "Lcom/narvii/video/model/ChannelActionResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/chat/video/VVChatEntryHelper$1;

.field final synthetic val$channelType:I

.field final synthetic val$thread:Lcom/narvii/model/ChatThread;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/VVChatEntryHelper$1;ILcom/narvii/model/ChatThread;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/narvii/chat/video/VVChatEntryHelper$1$1;->this$1:Lcom/narvii/chat/video/VVChatEntryHelper$1;

    iput p2, p0, Lcom/narvii/chat/video/VVChatEntryHelper$1$1;->val$channelType:I

    iput-object p3, p0, Lcom/narvii/chat/video/VVChatEntryHelper$1$1;->val$thread:Lcom/narvii/model/ChatThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/video/model/ChannelActionResult;)V
    .locals 6

    .line 64
    new-instance v0, Lcom/narvii/chat/video/ChatLogEventHelper;

    iget-object v1, p0, Lcom/narvii/chat/video/VVChatEntryHelper$1$1;->this$1:Lcom/narvii/chat/video/VVChatEntryHelper$1;

    iget-object v1, v1, Lcom/narvii/chat/video/VVChatEntryHelper$1;->this$0:Lcom/narvii/chat/video/VVChatEntryHelper;

    invoke-static {v1}, Lcom/narvii/chat/video/VVChatEntryHelper;->access$100(Lcom/narvii/chat/video/VVChatEntryHelper;)Lcom/narvii/app/NVContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/chat/video/ChatLogEventHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iget v1, p0, Lcom/narvii/chat/video/VVChatEntryHelper$1$1;->val$channelType:I

    iget-object v2, p0, Lcom/narvii/chat/video/VVChatEntryHelper$1$1;->val$thread:Lcom/narvii/model/ChatThread;

    invoke-virtual {v0, v1, v2}, Lcom/narvii/chat/video/ChatLogEventHelper;->logQuitChat(ILcom/narvii/model/ChatThread;)V

    if-eqz p1, :cond_0

    .line 65
    iget-boolean p1, p1, Lcom/narvii/video/model/ChannelActionResult;->isSuccess:Z

    if-eqz p1, :cond_0

    .line 66
    iget-object p1, p0, Lcom/narvii/chat/video/VVChatEntryHelper$1$1;->this$1:Lcom/narvii/chat/video/VVChatEntryHelper$1;

    iget-object p1, p1, Lcom/narvii/chat/video/VVChatEntryHelper$1;->this$0:Lcom/narvii/chat/video/VVChatEntryHelper;

    iget-object p1, p1, Lcom/narvii/chat/video/VVChatEntryHelper;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->cleaningAttachedWindows()V

    .line 68
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/video/VVChatEntryHelper$1$1;->this$1:Lcom/narvii/chat/video/VVChatEntryHelper$1;

    iget-object v0, p1, Lcom/narvii/chat/video/VVChatEntryHelper$1;->this$0:Lcom/narvii/chat/video/VVChatEntryHelper;

    iget-object v1, p1, Lcom/narvii/chat/video/VVChatEntryHelper$1;->val$chatThread:Lcom/narvii/model/ChatThread;

    iget v2, p0, Lcom/narvii/chat/video/VVChatEntryHelper$1$1;->val$channelType:I

    iget-object v3, p1, Lcom/narvii/chat/video/VVChatEntryHelper$1;->val$source:Ljava/lang/String;

    const/4 v4, 0x1

    iget-object v5, p1, Lcom/narvii/chat/video/VVChatEntryHelper$1;->val$attachBundle:Landroid/os/Bundle;

    invoke-static/range {v0 .. v5}, Lcom/narvii/chat/video/VVChatEntryHelper;->access$000(Lcom/narvii/chat/video/VVChatEntryHelper;Lcom/narvii/model/ChatThread;ILjava/lang/String;ZLandroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 61
    check-cast p1, Lcom/narvii/video/model/ChannelActionResult;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/video/VVChatEntryHelper$1$1;->call(Lcom/narvii/video/model/ChannelActionResult;)V

    return-void
.end method
