.class final Lcom/narvii/chat/video/utils/VVChatHelper$quitAsPresenter$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "VVChatHelper.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/utils/VVChatHelper;->quitAsPresenter(ILcom/narvii/model/ChatThread;Lcom/narvii/chat/rtc/ChannelUserWrapper;Lcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $callback$inlined:Lcom/narvii/util/Callback;

.field final synthetic $channelType$inlined:I

.field final synthetic $chatThread$inlined:Lcom/narvii/model/ChatThread;

.field final synthetic $curChannelUser$inlined:Lcom/narvii/chat/rtc/ChannelUserWrapper;

.field final synthetic $rtcService:Lcom/narvii/chat/rtc/RtcService;

.field final synthetic $this_apply:Lcom/narvii/widget/ACMAlertDialog;

.field final synthetic this$0:Lcom/narvii/chat/video/utils/VVChatHelper;


# direct methods
.method constructor <init>(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/chat/rtc/RtcService;Lcom/narvii/chat/video/utils/VVChatHelper;Lcom/narvii/chat/rtc/ChannelUserWrapper;ILcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/video/utils/VVChatHelper$quitAsPresenter$$inlined$apply$lambda$1;->$this_apply:Lcom/narvii/widget/ACMAlertDialog;

    iput-object p2, p0, Lcom/narvii/chat/video/utils/VVChatHelper$quitAsPresenter$$inlined$apply$lambda$1;->$rtcService:Lcom/narvii/chat/rtc/RtcService;

    iput-object p3, p0, Lcom/narvii/chat/video/utils/VVChatHelper$quitAsPresenter$$inlined$apply$lambda$1;->this$0:Lcom/narvii/chat/video/utils/VVChatHelper;

    iput-object p4, p0, Lcom/narvii/chat/video/utils/VVChatHelper$quitAsPresenter$$inlined$apply$lambda$1;->$curChannelUser$inlined:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    iput p5, p0, Lcom/narvii/chat/video/utils/VVChatHelper$quitAsPresenter$$inlined$apply$lambda$1;->$channelType$inlined:I

    iput-object p6, p0, Lcom/narvii/chat/video/utils/VVChatHelper$quitAsPresenter$$inlined$apply$lambda$1;->$chatThread$inlined:Lcom/narvii/model/ChatThread;

    iput-object p7, p0, Lcom/narvii/chat/video/utils/VVChatHelper$quitAsPresenter$$inlined$apply$lambda$1;->$callback$inlined:Lcom/narvii/util/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 444
    iget-object p1, p0, Lcom/narvii/chat/video/utils/VVChatHelper$quitAsPresenter$$inlined$apply$lambda$1;->$this_apply:Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {p1}, Lcom/narvii/widget/ACMAlertDialog;->dismiss()V

    .line 445
    iget-object p1, p0, Lcom/narvii/chat/video/utils/VVChatHelper$quitAsPresenter$$inlined$apply$lambda$1;->$callback$inlined:Lcom/narvii/util/Callback;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 446
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/video/utils/VVChatHelper$quitAsPresenter$$inlined$apply$lambda$1;->$chatThread$inlined:Lcom/narvii/model/ChatThread;

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/narvii/chat/util/ChatHelperKt;->isSingleChat(Lcom/narvii/model/ChatThread;)Z

    move-result p1

    if-ne p1, v0, :cond_2

    .line 447
    iget-object p1, p0, Lcom/narvii/chat/video/utils/VVChatHelper$quitAsPresenter$$inlined$apply$lambda$1;->$this_apply:Lcom/narvii/widget/ACMAlertDialog;

    const-string v0, "callScreen"

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVDialog;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/call/CallScreenService;

    if-eqz p1, :cond_1

    .line 448
    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatHelper$quitAsPresenter$$inlined$apply$lambda$1;->$rtcService:Lcom/narvii/chat/rtc/RtcService;

    const-string v1, "rtcService"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/chat/call/CallScreenService;->cancelCall(Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 449
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/video/utils/VVChatHelper$quitAsPresenter$$inlined$apply$lambda$1;->$rtcService:Lcom/narvii/chat/rtc/RtcService;

    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatHelper$quitAsPresenter$$inlined$apply$lambda$1;->$chatThread$inlined:Lcom/narvii/model/ChatThread;

    iget v1, v0, Lcom/narvii/model/ChatThread;->ndcId:I

    iget-object v0, v0, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/narvii/chat/rtc/RtcService;->exitLiveChannel(ILjava/lang/String;)V

    goto :goto_0

    .line 451
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/video/utils/VVChatHelper$quitAsPresenter$$inlined$apply$lambda$1;->$rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->stopPresenting()V

    :goto_0
    return-void
.end method
