.class Lcom/narvii/chat/rtc/RtcService$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/rtc/RtcService;->dispatchChannelUserListChange(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/Collection;Ljava/util/Collection;Landroid/util/SparseArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/chat/video/events/LiveChannelChangeListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/rtc/RtcService;

.field final synthetic val$channel:Lcom/narvii/chat/signalling/SignallingChannel;

.field final synthetic val$nList:Ljava/util/Collection;

.field final synthetic val$oList:Ljava/util/Collection;

.field final synthetic val$userWrapperList:Landroid/util/SparseArray;


# direct methods
.method constructor <init>(Lcom/narvii/chat/rtc/RtcService;Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/Collection;Ljava/util/Collection;Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/rtc/RtcService$19;->this$0:Lcom/narvii/chat/rtc/RtcService;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/rtc/RtcService$19;->val$channel:Lcom/narvii/chat/signalling/SignallingChannel;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/chat/rtc/RtcService$19;->val$oList:Ljava/util/Collection;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/narvii/chat/rtc/RtcService$19;->val$nList:Ljava/util/Collection;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/narvii/chat/rtc/RtcService$19;->val$userWrapperList:Landroid/util/SparseArray;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/chat/video/events/LiveChannelChangeListener;)V
    .locals 4

    iget-object v0, p0, Lcom/narvii/chat/rtc/RtcService$19;->val$channel:Lcom/narvii/chat/signalling/SignallingChannel;

    iget-object v1, p0, Lcom/narvii/chat/rtc/RtcService$19;->val$oList:Ljava/util/Collection;

    .line 2
    invoke-static {v1}, Lcom/narvii/chat/rtc/RtcService;->getFilteredChannelUserList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/chat/rtc/RtcService$19;->val$nList:Ljava/util/Collection;

    invoke-static {v2}, Lcom/narvii/chat/rtc/RtcService;->getFilteredChannelUserList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/narvii/chat/rtc/RtcService$19;->val$userWrapperList:Landroid/util/SparseArray;

    .line 3
    invoke-static {v3}, Lcom/narvii/chat/rtc/RtcService;->getFilteredUserList(Landroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object v3

    .line 4
    invoke-interface {p1, v0, v1, v2, v3}, Lcom/narvii/chat/video/events/LiveChannelChangeListener;->onChannelUserListChanged(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/Collection;Ljava/util/Collection;Landroid/util/SparseArray;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/chat/video/events/LiveChannelChangeListener;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/rtc/RtcService$19;->call(Lcom/narvii/chat/video/events/LiveChannelChangeListener;)V

    return-void
.end method
