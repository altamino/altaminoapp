.class Lcom/narvii/chat/video/RtcChatManager$4$11;
.super Ljava/lang/Object;
.source "RtcChatManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/RtcChatManager$4;->onExtraCallback(I[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/chat/video/RtcChatManager$4;

.field final synthetic val$data:[Ljava/lang/Object;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/RtcChatManager$4;I[Ljava/lang/Object;)V
    .locals 0

    .line 683
    iput-object p1, p0, Lcom/narvii/chat/video/RtcChatManager$4$11;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    iput p2, p0, Lcom/narvii/chat/video/RtcChatManager$4$11;->val$type:I

    iput-object p3, p0, Lcom/narvii/chat/video/RtcChatManager$4$11;->val$data:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 686
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$11;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->access$300(Lcom/narvii/chat/video/RtcChatManager;)Lcom/narvii/video/model/RtcEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 687
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$11;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->access$300(Lcom/narvii/chat/video/RtcChatManager;)Lcom/narvii/video/model/RtcEventHandler;

    move-result-object v0

    iget v1, p0, Lcom/narvii/chat/video/RtcChatManager$4$11;->val$type:I

    iget-object v2, p0, Lcom/narvii/chat/video/RtcChatManager$4$11;->val$data:[Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/narvii/video/model/RtcEventHandler;->onExtraCallback(I[Ljava/lang/Object;)V

    .line 689
    :cond_0
    iget v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$11;->val$type:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 690
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$11;->val$data:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lio/agora/rtc/IRtcEngineEventHandler$RemoteVideoStats;

    .line 691
    iget v1, v0, Lio/agora/rtc/IRtcEngineEventHandler$RemoteVideoStats;->uid:I

    .line 692
    iget-object v2, p0, Lcom/narvii/chat/video/RtcChatManager$4$11;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    iget-object v2, v2, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    invoke-static {v2}, Lcom/narvii/chat/video/RtcChatManager;->access$400(Lcom/narvii/chat/video/RtcChatManager;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/video/ui/UserStatusData;

    if-eqz v1, :cond_1

    .line 693
    iget v2, v1, Lcom/narvii/video/ui/UserStatusData;->streamType:I

    iget v0, v0, Lio/agora/rtc/IRtcEngineEventHandler$RemoteVideoStats;->rxStreamType:I

    if-eq v2, v0, :cond_1

    .line 694
    iput v0, v1, Lcom/narvii/video/ui/UserStatusData;->streamType:I

    :cond_1
    return-void
.end method
