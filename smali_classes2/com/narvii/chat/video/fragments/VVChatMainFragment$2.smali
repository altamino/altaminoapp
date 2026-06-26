.class Lcom/narvii/chat/video/fragments/VVChatMainFragment$2;
.super Ljava/lang/Object;
.source "VVChatMainFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/fragments/VVChatMainFragment;->tryToAutoJoinCurrentChannel()V
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

    .line 608
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$2;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 3

    .line 611
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$2;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    invoke-static {p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->access$100(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)Lcom/narvii/chat/rtc/RtcService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object p1

    .line 612
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$2;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    invoke-static {v0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->access$200(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)V

    if-nez p1, :cond_0

    .line 614
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$2;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    invoke-static {p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->access$100(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)Lcom/narvii/chat/rtc/RtcService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->cleaningAttachedWindows()V

    .line 615
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$2;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    invoke-static {p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->access$100(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)Lcom/narvii/chat/rtc/RtcService;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$2;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    invoke-static {v0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->access$300(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$2;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    invoke-static {v1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->access$000(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/narvii/chat/rtc/RtcService;->updateJoinRoleWithJoinAgora(ILjava/lang/String;I)V

    goto :goto_0

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$2;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    invoke-static {v0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->access$100(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)Lcom/narvii/chat/rtc/RtcService;

    move-result-object v0

    iget v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    iget-object p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    new-instance v2, Lcom/narvii/chat/video/fragments/VVChatMainFragment$2$1;

    invoke-direct {v2, p0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment$2$1;-><init>(Lcom/narvii/chat/video/fragments/VVChatMainFragment$2;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/narvii/chat/rtc/RtcService;->exitLiveChannel(ILjava/lang/String;Lcom/narvii/video/model/ChannelActionCallback;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 608
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment$2;->call(Ljava/lang/Boolean;)V

    return-void
.end method
