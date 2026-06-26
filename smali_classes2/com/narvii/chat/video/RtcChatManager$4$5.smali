.class Lcom/narvii/chat/video/RtcChatManager$4$5;
.super Ljava/lang/Object;
.source "RtcChatManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/RtcChatManager$4;->onLeaveChannel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/chat/video/RtcChatManager$4;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/RtcChatManager$4;)V
    .locals 0

    .line 560
    iput-object p1, p0, Lcom/narvii/chat/video/RtcChatManager$4$5;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 563
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$5;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/narvii/chat/video/RtcChatManager;->access$1002(Lcom/narvii/chat/video/RtcChatManager;I)I

    .line 564
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$5;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->access$400(Lcom/narvii/chat/video/RtcChatManager;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v2, p0, Lcom/narvii/chat/video/RtcChatManager$4$5;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    iget-object v2, v2, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    invoke-static {v2}, Lcom/narvii/chat/video/RtcChatManager;->access$1100(Lcom/narvii/chat/video/RtcChatManager;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/ui/UserStatusData;

    if-eqz v0, :cond_1

    .line 566
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$5;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->access$800(Lcom/narvii/chat/video/RtcChatManager;)Lcom/narvii/chat/video/CameraRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$5;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->access$800(Lcom/narvii/chat/video/RtcChatManager;)Lcom/narvii/chat/video/CameraRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/chat/video/CameraRenderer;->onDestroy()V

    .line 568
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$5;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/narvii/chat/video/RtcChatManager;->access$802(Lcom/narvii/chat/video/RtcChatManager;Lcom/narvii/chat/video/CameraRenderer;)Lcom/narvii/chat/video/CameraRenderer;

    .line 570
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$5;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->access$400(Lcom/narvii/chat/video/RtcChatManager;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v2, p0, Lcom/narvii/chat/video/RtcChatManager$4$5;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    iget-object v2, v2, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    invoke-static {v2}, Lcom/narvii/chat/video/RtcChatManager;->access$1100(Lcom/narvii/chat/video/RtcChatManager;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 572
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$5;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->access$300(Lcom/narvii/chat/video/RtcChatManager;)Lcom/narvii/video/model/RtcEventHandler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 573
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$5;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->access$300(Lcom/narvii/chat/video/RtcChatManager;)Lcom/narvii/video/model/RtcEventHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/video/model/RtcEventHandler;->onLeaveChannel()V

    .line 575
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$5;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    invoke-virtual {v0, v1}, Lcom/narvii/chat/video/RtcChatManager;->statUpdate(I)V

    return-void
.end method
