.class Lcom/narvii/chat/video/RtcChatManager$4$4;
.super Ljava/lang/Object;
.source "RtcChatManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/RtcChatManager$4;->onRejoinChannelSuccess(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/chat/video/RtcChatManager$4;

.field final synthetic val$channel:Ljava/lang/String;

.field final synthetic val$elapsed:I

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/RtcChatManager$4;ILjava/lang/String;I)V
    .locals 0

    .line 544
    iput-object p1, p0, Lcom/narvii/chat/video/RtcChatManager$4$4;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    iput p2, p0, Lcom/narvii/chat/video/RtcChatManager$4$4;->val$uid:I

    iput-object p3, p0, Lcom/narvii/chat/video/RtcChatManager$4$4;->val$channel:Ljava/lang/String;

    iput p4, p0, Lcom/narvii/chat/video/RtcChatManager$4$4;->val$elapsed:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 547
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$4;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->access$400(Lcom/narvii/chat/video/RtcChatManager;)Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/narvii/chat/video/RtcChatManager$4$4;->val$uid:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/ui/UserStatusData;

    if-eqz v0, :cond_0

    .line 548
    iget v1, v0, Lcom/narvii/video/ui/UserStatusData;->netWorkStatus:I

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 549
    iput v1, v0, Lcom/narvii/video/ui/UserStatusData;->netWorkStatus:I

    .line 550
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$4;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->access$300(Lcom/narvii/chat/video/RtcChatManager;)Lcom/narvii/video/model/RtcEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$4;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->access$300(Lcom/narvii/chat/video/RtcChatManager;)Lcom/narvii/video/model/RtcEventHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/video/RtcChatManager$4$4;->val$channel:Ljava/lang/String;

    iget v2, p0, Lcom/narvii/chat/video/RtcChatManager$4$4;->val$uid:I

    iget v3, p0, Lcom/narvii/chat/video/RtcChatManager$4$4;->val$elapsed:I

    invoke-interface {v0, v1, v2, v3}, Lcom/narvii/video/model/RtcEventHandler;->onRejoinChannelSuccess(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method
