.class Lcom/narvii/chat/rtc/RtcService$5;
.super Ljava/lang/Object;
.source "RtcService.java"

# interfaces
.implements Lcom/narvii/video/ui/floating/FloatingClickEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/rtc/RtcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/rtc/RtcService;


# direct methods
.method constructor <init>(Lcom/narvii/chat/rtc/RtcService;)V
    .locals 0

    .line 634
    iput-object p1, p0, Lcom/narvii/chat/rtc/RtcService$5;->this$0:Lcom/narvii/chat/rtc/RtcService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private leaveFromWindow(Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 4

    .line 677
    new-instance v0, Lcom/narvii/chat/video/ChatLogEventHelper;

    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService$5;->this$0:Lcom/narvii/chat/rtc/RtcService;

    invoke-static {v1}, Lcom/narvii/chat/rtc/RtcService;->access$700(Lcom/narvii/chat/rtc/RtcService;)Lcom/narvii/app/NVContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/chat/video/ChatLogEventHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iget v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    iget-object v2, p0, Lcom/narvii/chat/rtc/RtcService$5;->this$0:Lcom/narvii/chat/rtc/RtcService;

    invoke-static {v2}, Lcom/narvii/chat/rtc/RtcService;->access$800(Lcom/narvii/chat/rtc/RtcService;)Lcom/narvii/model/ChatThread;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/narvii/chat/video/ChatLogEventHelper;->logQuitChat(ILcom/narvii/model/ChatThread;)V

    .line 678
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$5;->this$0:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->isPresenterInChannel()Z

    move-result v0

    .line 679
    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService$5;->this$0:Lcom/narvii/chat/rtc/RtcService;

    invoke-static {v1}, Lcom/narvii/chat/rtc/RtcService;->access$600(Lcom/narvii/chat/rtc/RtcService;)Lcom/narvii/chat/call/CallScreenService;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/narvii/chat/call/CallScreenService;->cancelCall(Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 680
    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService$5;->this$0:Lcom/narvii/chat/rtc/RtcService;

    iget v2, p1, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    iget-object v3, p1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/narvii/chat/rtc/RtcService;->exitLiveChannel(ILjava/lang/String;)V

    .line 681
    new-instance v1, Lcom/narvii/chat/video/utils/VVChatLogHelper;

    iget-object v2, p0, Lcom/narvii/chat/rtc/RtcService$5;->this$0:Lcom/narvii/chat/rtc/RtcService;

    invoke-static {v2}, Lcom/narvii/chat/rtc/RtcService;->access$700(Lcom/narvii/chat/rtc/RtcService;)Lcom/narvii/app/NVContext;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/chat/video/utils/VVChatLogHelper;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 v2, 0x0

    const-string v3, "Popup Window"

    if-eqz v0, :cond_0

    .line 683
    iget v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    invoke-virtual {v1, v0, v3, v2}, Lcom/narvii/chat/video/utils/VVChatLogHelper;->logStopPresentingLiveChannel(ILjava/lang/String;Lcom/narvii/model/ChatThread;)V

    .line 685
    :cond_0
    iget p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    invoke-virtual {v1, p1, v3, v2}, Lcom/narvii/chat/video/utils/VVChatLogHelper;->logLeaveLiveChannel(ILjava/lang/String;Lcom/narvii/model/ChatThread;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onCloseClicked$0$RtcService$5(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/lang/Boolean;)V
    .locals 0

    .line 661
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 662
    invoke-direct {p0, p1}, Lcom/narvii/chat/rtc/RtcService$5;->leaveFromWindow(Lcom/narvii/chat/signalling/SignallingChannel;)V

    :cond_0
    return-void
.end method

.method public onCloseClicked()V
    .locals 5

    .line 637
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$5;->this$0:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$5;->this$0:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->hideVideoFloatingWindow()V

    .line 640
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$5;->this$0:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->hideAudioFloatingWindow()V

    .line 641
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$5;->this$0:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->hideSRFloatingWindow()V

    .line 642
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$5;->this$0:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->cancelNotification()V

    return-void

    .line 646
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService$5;->this$0:Lcom/narvii/chat/rtc/RtcService;

    iget-object v1, v1, Lcom/narvii/chat/rtc/RtcService;->topActivity:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    :goto_0
    if-eqz v1, :cond_8

    .line 647
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_3

    .line 650
    :cond_2
    iget-object v2, p0, Lcom/narvii/chat/rtc/RtcService$5;->this$0:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v2}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelChatThread()Lcom/narvii/model/ChatThread;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/narvii/chat/rtc/RtcService$5;->this$0:Lcom/narvii/chat/rtc/RtcService;

    .line 651
    invoke-virtual {v2}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelChatThread()Lcom/narvii/model/ChatThread;

    move-result-object v2

    iget v2, v2, Lcom/narvii/model/ChatThread;->type:I

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/narvii/chat/rtc/RtcService$5;->this$0:Lcom/narvii/chat/rtc/RtcService;

    .line 652
    invoke-static {v2}, Lcom/narvii/chat/rtc/RtcService;->access$600(Lcom/narvii/chat/rtc/RtcService;)Lcom/narvii/chat/call/CallScreenService;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/narvii/chat/rtc/RtcService$5;->this$0:Lcom/narvii/chat/rtc/RtcService;

    invoke-static {v2}, Lcom/narvii/chat/rtc/RtcService;->access$600(Lcom/narvii/chat/rtc/RtcService;)Lcom/narvii/chat/call/CallScreenService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/chat/call/CallScreenService;->getCurStatus()I

    move-result v2

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    iget-object v2, p0, Lcom/narvii/chat/rtc/RtcService$5;->this$0:Lcom/narvii/chat/rtc/RtcService;

    .line 653
    invoke-static {v2}, Lcom/narvii/chat/rtc/RtcService;->access$600(Lcom/narvii/chat/rtc/RtcService;)Lcom/narvii/chat/call/CallScreenService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/chat/call/CallScreenService;->getCurStatus()I

    move-result v2

    const/4 v4, 0x6

    if-ne v2, v4, :cond_4

    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    .line 654
    :goto_1
    iget v4, v0, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    if-ne v4, v3, :cond_7

    if-nez v2, :cond_7

    iget-object v2, v0, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    if-eqz v2, :cond_7

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, v3, :cond_5

    goto :goto_2

    .line 658
    :cond_5
    new-instance v2, Lcom/narvii/chat/video/utils/VVChatHelper;

    iget-object v4, p0, Lcom/narvii/chat/rtc/RtcService$5;->this$0:Lcom/narvii/chat/rtc/RtcService;

    invoke-static {v4}, Lcom/narvii/chat/rtc/RtcService;->access$700(Lcom/narvii/chat/rtc/RtcService;)Lcom/narvii/app/NVContext;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/narvii/chat/video/utils/VVChatHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 659
    iget-object v4, p0, Lcom/narvii/chat/rtc/RtcService$5;->this$0:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v4}, Lcom/narvii/chat/rtc/RtcService;->getMainChannelChatThread()Lcom/narvii/model/ChatThread;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/narvii/chat/video/utils/VVChatHelper;->needShowConfirmDialogWhenLeaveChannel(Lcom/narvii/model/ChatThread;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 660
    new-instance v4, Lcom/narvii/chat/rtc/-$$Lambda$RtcService$5$pZHUhJoXHGlnz4Y4er7ojsw9jOs;

    invoke-direct {v4, p0, v0}, Lcom/narvii/chat/rtc/-$$Lambda$RtcService$5$pZHUhJoXHGlnz4Y4er7ojsw9jOs;-><init>(Lcom/narvii/chat/rtc/RtcService$5;Lcom/narvii/chat/signalling/SignallingChannel;)V

    invoke-virtual {v2, v1, v3, v4}, Lcom/narvii/chat/video/utils/VVChatHelper;->showLeaveChannelConfirmDialog(Landroid/app/Activity;ZLcom/narvii/util/Callback;)V

    goto :goto_4

    .line 666
    :cond_6
    invoke-direct {p0, v0}, Lcom/narvii/chat/rtc/RtcService$5;->leaveFromWindow(Lcom/narvii/chat/signalling/SignallingChannel;)V

    goto :goto_4

    .line 655
    :cond_7
    :goto_2
    invoke-direct {p0, v0}, Lcom/narvii/chat/rtc/RtcService$5;->leaveFromWindow(Lcom/narvii/chat/signalling/SignallingChannel;)V

    return-void

    .line 648
    :cond_8
    :goto_3
    invoke-direct {p0, v0}, Lcom/narvii/chat/rtc/RtcService$5;->leaveFromWindow(Lcom/narvii/chat/signalling/SignallingChannel;)V

    :goto_4
    return-void
.end method

.method public onTotalClicked()V
    .locals 1

    .line 673
    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$5;->this$0:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->relaunchRtcMainActivity()V

    return-void
.end method
