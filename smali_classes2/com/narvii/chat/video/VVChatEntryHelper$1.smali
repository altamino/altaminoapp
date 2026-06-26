.class Lcom/narvii/chat/video/VVChatEntryHelper$1;
.super Ljava/lang/Object;
.source "VVChatEntryHelper.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/VVChatEntryHelper;->launchLiveChannelFromLaunchEvent(Lcom/narvii/model/ChatThread;ILjava/lang/String;ZLandroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/narvii/chat/video/VVChatEntryHelper;

.field final synthetic val$attachBundle:Landroid/os/Bundle;

.field final synthetic val$channelType:I

.field final synthetic val$chatThread:Lcom/narvii/model/ChatThread;

.field final synthetic val$source:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/VVChatEntryHelper;Lcom/narvii/model/ChatThread;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/narvii/chat/video/VVChatEntryHelper$1;->this$0:Lcom/narvii/chat/video/VVChatEntryHelper;

    iput-object p2, p0, Lcom/narvii/chat/video/VVChatEntryHelper$1;->val$chatThread:Lcom/narvii/model/ChatThread;

    iput p3, p0, Lcom/narvii/chat/video/VVChatEntryHelper$1;->val$channelType:I

    iput-object p4, p0, Lcom/narvii/chat/video/VVChatEntryHelper$1;->val$source:Ljava/lang/String;

    iput-object p5, p0, Lcom/narvii/chat/video/VVChatEntryHelper$1;->val$attachBundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 6

    .line 54
    iget-object p1, p0, Lcom/narvii/chat/video/VVChatEntryHelper$1;->this$0:Lcom/narvii/chat/video/VVChatEntryHelper;

    iget-object p1, p1, Lcom/narvii/chat/video/VVChatEntryHelper;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object p1

    if-nez p1, :cond_0

    .line 57
    iget-object v0, p0, Lcom/narvii/chat/video/VVChatEntryHelper$1;->this$0:Lcom/narvii/chat/video/VVChatEntryHelper;

    iget-object v1, p0, Lcom/narvii/chat/video/VVChatEntryHelper$1;->val$chatThread:Lcom/narvii/model/ChatThread;

    iget v2, p0, Lcom/narvii/chat/video/VVChatEntryHelper$1;->val$channelType:I

    iget-object v3, p0, Lcom/narvii/chat/video/VVChatEntryHelper$1;->val$source:Ljava/lang/String;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/narvii/chat/video/VVChatEntryHelper$1;->val$attachBundle:Landroid/os/Bundle;

    invoke-static/range {v0 .. v5}, Lcom/narvii/chat/video/VVChatEntryHelper;->access$000(Lcom/narvii/chat/video/VVChatEntryHelper;Lcom/narvii/model/ChatThread;ILjava/lang/String;ZLandroid/os/Bundle;)V

    goto :goto_0

    .line 59
    :cond_0
    iget v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 60
    iget-object v1, p0, Lcom/narvii/chat/video/VVChatEntryHelper$1;->this$0:Lcom/narvii/chat/video/VVChatEntryHelper;

    iget-object v1, v1, Lcom/narvii/chat/video/VVChatEntryHelper;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v1}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelChatThread()Lcom/narvii/model/ChatThread;

    move-result-object v1

    .line 61
    iget-object v2, p0, Lcom/narvii/chat/video/VVChatEntryHelper$1;->this$0:Lcom/narvii/chat/video/VVChatEntryHelper;

    iget-object v2, v2, Lcom/narvii/chat/video/VVChatEntryHelper;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    iget v3, p1, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    iget-object p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    new-instance v4, Lcom/narvii/chat/video/VVChatEntryHelper$1$1;

    invoke-direct {v4, p0, v0, v1}, Lcom/narvii/chat/video/VVChatEntryHelper$1$1;-><init>(Lcom/narvii/chat/video/VVChatEntryHelper$1;ILcom/narvii/model/ChatThread;)V

    invoke-virtual {v2, v3, p1, v4}, Lcom/narvii/chat/rtc/RtcService;->exitLiveChannel(ILjava/lang/String;Lcom/narvii/video/model/ChannelActionCallback;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 51
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/video/VVChatEntryHelper$1;->call(Ljava/lang/Boolean;)V

    return-void
.end method
