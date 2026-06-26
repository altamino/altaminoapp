.class Lcom/narvii/chat/video/RtcChatManager$4$3;
.super Ljava/lang/Object;
.source "RtcChatManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/RtcChatManager$4;->onJoinChannelSuccess(Ljava/lang/String;II)V
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

    .line 525
    iput-object p1, p0, Lcom/narvii/chat/video/RtcChatManager$4$3;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    iput p2, p0, Lcom/narvii/chat/video/RtcChatManager$4$3;->val$uid:I

    iput-object p3, p0, Lcom/narvii/chat/video/RtcChatManager$4$3;->val$channel:Ljava/lang/String;

    iput p4, p0, Lcom/narvii/chat/video/RtcChatManager$4$3;->val$elapsed:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 528
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$3;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/narvii/chat/video/RtcChatManager;->access$702(Lcom/narvii/chat/video/RtcChatManager;Z)Z

    .line 529
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$3;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->access$400(Lcom/narvii/chat/video/RtcChatManager;)Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/narvii/chat/video/RtcChatManager$4$3;->val$uid:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/ui/UserStatusData;

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$3;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->access$300(Lcom/narvii/chat/video/RtcChatManager;)Lcom/narvii/video/model/RtcEventHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 532
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$3;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->access$300(Lcom/narvii/chat/video/RtcChatManager;)Lcom/narvii/video/model/RtcEventHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/video/RtcChatManager$4$3;->val$channel:Ljava/lang/String;

    iget v2, p0, Lcom/narvii/chat/video/RtcChatManager$4$3;->val$uid:I

    iget v3, p0, Lcom/narvii/chat/video/RtcChatManager$4$3;->val$elapsed:I

    invoke-interface {v0, v1, v2, v3}, Lcom/narvii/video/model/RtcEventHandler;->onJoinChannelSuccess(Ljava/lang/String;II)V

    goto :goto_0

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$3;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->access$400(Lcom/narvii/chat/video/RtcChatManager;)Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/narvii/chat/video/RtcChatManager$4$3;->val$uid:I

    new-instance v2, Lcom/narvii/video/ui/UserStatusData;

    iget-object v3, p0, Lcom/narvii/chat/video/RtcChatManager$4$3;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    iget-object v3, v3, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    invoke-static {v3}, Lcom/narvii/chat/video/RtcChatManager;->access$800(Lcom/narvii/chat/video/RtcChatManager;)Lcom/narvii/chat/video/CameraRenderer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4}, Lcom/narvii/video/ui/UserStatusData;-><init>(ILandroid/view/SurfaceView;I)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 537
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$3;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->access$900(Lcom/narvii/chat/video/RtcChatManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/chat/video/RtcChatManager;->statUpdate(I)V

    return-void
.end method
