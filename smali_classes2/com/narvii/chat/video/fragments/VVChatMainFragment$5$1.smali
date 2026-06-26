.class Lcom/narvii/chat/video/fragments/VVChatMainFragment$5$1;
.super Ljava/lang/Object;
.source "VVChatMainFragment.java"

# interfaces
.implements Lcom/narvii/video/model/ChannelActionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/fragments/VVChatMainFragment$5;->call(Ljava/lang/Boolean;)V
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
.field final synthetic this$1:Lcom/narvii/chat/video/fragments/VVChatMainFragment$5;

.field final synthetic val$channelType:I

.field final synthetic val$thread:Lcom/narvii/model/ChatThread;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/fragments/VVChatMainFragment$5;ILcom/narvii/model/ChatThread;)V
    .locals 0

    .line 798
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$5$1;->this$1:Lcom/narvii/chat/video/fragments/VVChatMainFragment$5;

    iput p2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$5$1;->val$channelType:I

    iput-object p3, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$5$1;->val$thread:Lcom/narvii/model/ChatThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/video/model/ChannelActionResult;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 801
    iget-boolean p1, p1, Lcom/narvii/video/model/ChannelActionResult;->isSuccess:Z

    if-eqz p1, :cond_0

    .line 802
    new-instance p1, Lcom/narvii/chat/video/ChatLogEventHelper;

    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$5$1;->this$1:Lcom/narvii/chat/video/fragments/VVChatMainFragment$5;

    iget-object v0, v0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$5;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    invoke-direct {p1, v0}, Lcom/narvii/chat/video/ChatLogEventHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iget v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$5$1;->val$channelType:I

    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$5$1;->val$thread:Lcom/narvii/model/ChatThread;

    invoke-virtual {p1, v0, v1}, Lcom/narvii/chat/video/ChatLogEventHelper;->logQuitChat(ILcom/narvii/model/ChatThread;)V

    .line 803
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$5$1;->this$1:Lcom/narvii/chat/video/fragments/VVChatMainFragment$5;

    iget-object p1, p1, Lcom/narvii/chat/video/fragments/VVChatMainFragment$5;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    invoke-static {p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->access$100(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)Lcom/narvii/chat/rtc/RtcService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->cleaningAttachedWindows()V

    .line 804
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$5$1;->this$1:Lcom/narvii/chat/video/fragments/VVChatMainFragment$5;

    iget-object p1, p1, Lcom/narvii/chat/video/fragments/VVChatMainFragment$5;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    invoke-virtual {p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->joinLiveChannel()Z

    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 798
    check-cast p1, Lcom/narvii/video/model/ChannelActionResult;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment$5$1;->call(Lcom/narvii/video/model/ChannelActionResult;)V

    return-void
.end method
