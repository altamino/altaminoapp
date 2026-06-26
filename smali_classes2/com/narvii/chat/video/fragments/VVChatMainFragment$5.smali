.class Lcom/narvii/chat/video/fragments/VVChatMainFragment$5;
.super Ljava/lang/Object;
.source "VVChatMainFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/fragments/VVChatMainFragment;->joinLiveChannel()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)V
    .locals 0

    .line 788
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$5;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 5

    .line 791
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$5;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    invoke-static {p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->access$100(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)Lcom/narvii/chat/rtc/RtcService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object p1

    .line 792
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$5;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    invoke-static {v0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->access$200(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)V

    if-nez p1, :cond_0

    .line 794
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$5;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    invoke-virtual {p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->joinLiveChannel()Z

    goto :goto_0

    .line 796
    :cond_0
    iget v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 797
    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$5;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    invoke-static {v1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->access$100(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)Lcom/narvii/chat/rtc/RtcService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelChatThread()Lcom/narvii/model/ChatThread;

    move-result-object v1

    .line 798
    iget-object v2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$5;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    invoke-static {v2}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->access$100(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)Lcom/narvii/chat/rtc/RtcService;

    move-result-object v2

    iget v3, p1, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    iget-object p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    new-instance v4, Lcom/narvii/chat/video/fragments/VVChatMainFragment$5$1;

    invoke-direct {v4, p0, v0, v1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment$5$1;-><init>(Lcom/narvii/chat/video/fragments/VVChatMainFragment$5;ILcom/narvii/model/ChatThread;)V

    invoke-virtual {v2, v3, p1, v4}, Lcom/narvii/chat/rtc/RtcService;->exitLiveChannel(ILjava/lang/String;Lcom/narvii/video/model/ChannelActionCallback;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 788
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment$5;->call(Ljava/lang/Boolean;)V

    return-void
.end method
