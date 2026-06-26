.class Lcom/narvii/chat/video/RtcChatManager$4$6;
.super Ljava/lang/Object;
.source "RtcChatManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/RtcChatManager$4;->onUserOffline(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/chat/video/RtcChatManager$4;

.field final synthetic val$reason:I

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/RtcChatManager$4;II)V
    .locals 0

    .line 582
    iput-object p1, p0, Lcom/narvii/chat/video/RtcChatManager$4$6;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    iput p2, p0, Lcom/narvii/chat/video/RtcChatManager$4$6;->val$uid:I

    iput p3, p0, Lcom/narvii/chat/video/RtcChatManager$4$6;->val$reason:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 585
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$6;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->access$400(Lcom/narvii/chat/video/RtcChatManager;)Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/narvii/chat/video/RtcChatManager$4$6;->val$uid:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 588
    :cond_0
    iget v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$6;->val$reason:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 589
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$6;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->access$400(Lcom/narvii/chat/video/RtcChatManager;)Landroid/util/SparseArray;

    move-result-object v0

    iget v2, p0, Lcom/narvii/chat/video/RtcChatManager$4$6;->val$uid:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/ui/UserStatusData;

    if-eqz v0, :cond_2

    .line 591
    iput v1, v0, Lcom/narvii/video/ui/UserStatusData;->netWorkStatus:I

    goto :goto_0

    .line 594
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$6;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->access$400(Lcom/narvii/chat/video/RtcChatManager;)Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/narvii/chat/video/RtcChatManager$4$6;->val$uid:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 595
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$6;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->access$500(Lcom/narvii/chat/video/RtcChatManager;)I

    move-result v1

    iget v2, p0, Lcom/narvii/chat/video/RtcChatManager$4$6;->val$uid:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/chat/video/RtcChatManager;->muteRemoteUer(IIZ)V

    .line 597
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$6;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->access$300(Lcom/narvii/chat/video/RtcChatManager;)Lcom/narvii/video/model/RtcEventHandler;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 598
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$6;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->access$300(Lcom/narvii/chat/video/RtcChatManager;)Lcom/narvii/video/model/RtcEventHandler;

    move-result-object v0

    iget v1, p0, Lcom/narvii/chat/video/RtcChatManager$4$6;->val$uid:I

    iget v2, p0, Lcom/narvii/chat/video/RtcChatManager$4$6;->val$reason:I

    invoke-interface {v0, v1, v2}, Lcom/narvii/video/model/RtcEventHandler;->onUserOffline(II)V

    :cond_3
    return-void
.end method
