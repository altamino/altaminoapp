.class final Lcom/narvii/chat/setting/LiveWaitingListFragment$clearWaitingList$2;
.super Ljava/lang/Object;
.source "LiveWaitingListFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/setting/LiveWaitingListFragment;->clearWaitingList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/setting/LiveWaitingListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$clearWaitingList$2;->this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 376
    iget-object p1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$clearWaitingList$2;->this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment;

    const-string v0, "ClearAllButton"

    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 377
    iget-object p1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$clearWaitingList$2;->this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment;

    invoke-static {p1}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->access$getRtcService$p(Lcom/narvii/chat/setting/LiveWaitingListFragment;)Lcom/narvii/chat/rtc/RtcService;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$clearWaitingList$2;->this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment;

    invoke-static {v0}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->access$getThread$p(Lcom/narvii/chat/setting/LiveWaitingListFragment;)Lcom/narvii/model/ChatThread;

    move-result-object v0

    iget v0, v0, Lcom/narvii/model/ChatThread;->ndcId:I

    iget-object v1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$clearWaitingList$2;->this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment;

    invoke-static {v1}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->access$getThread$p(Lcom/narvii/chat/setting/LiveWaitingListFragment;)Lcom/narvii/model/ChatThread;

    move-result-object v1

    iget-object v1, v1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    new-instance v2, Lcom/narvii/chat/setting/LiveWaitingListFragment$clearWaitingList$2$1;

    invoke-direct {v2, p0}, Lcom/narvii/chat/setting/LiveWaitingListFragment$clearWaitingList$2$1;-><init>(Lcom/narvii/chat/setting/LiveWaitingListFragment$clearWaitingList$2;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/narvii/chat/rtc/RtcService;->waitListClean(ILjava/lang/String;Lcom/narvii/util/Callback;)V

    return-void
.end method
