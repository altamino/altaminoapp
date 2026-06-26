.class public final Lcom/narvii/chat/setting/LiveWaitingListFragment$onClick$1;
.super Ljava/lang/Object;
.source "LiveWaitingListFragment.kt"

# interfaces
.implements Lcom/narvii/chat/input/ChatThreadCheckFragment$LiveChatCheckData;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/setting/LiveWaitingListFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/setting/LiveWaitingListFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 154
    iput-object p1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$onClick$1;->this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSignallingChannel()Lcom/narvii/chat/signalling/SignallingChannel;
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$onClick$1;->this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment;

    invoke-static {v0}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->access$getRtcService$p(Lcom/narvii/chat/setting/LiveWaitingListFragment;)Lcom/narvii/chat/rtc/RtcService;

    move-result-object v0

    invoke-virtual {p0}, Lcom/narvii/chat/setting/LiveWaitingListFragment$onClick$1;->getThreadId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/chat/rtc/RtcService;->getMappedSignallingChannel(Ljava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    const-string v1, "rtcService.getMappedSignallingChannel(threadId)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getThread()Lcom/narvii/model/ChatThread;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$onClick$1;->this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment;

    invoke-static {v0}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->access$getThread$p(Lcom/narvii/chat/setting/LiveWaitingListFragment;)Lcom/narvii/model/ChatThread;

    move-result-object v0

    return-object v0
.end method

.method public getThreadId()Ljava/lang/String;
    .locals 2

    .line 156
    invoke-virtual {p0}, Lcom/narvii/chat/setting/LiveWaitingListFragment$onClick$1;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    iget-object v0, v0, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    const-string v1, "thread.threadId"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
