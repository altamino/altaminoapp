.class Lcom/narvii/chat/video/RtcChatManager$4$15;
.super Ljava/lang/Object;
.source "RtcChatManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/RtcChatManager$4;->onAudioQuality(IISS)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/chat/video/RtcChatManager$4;

.field final synthetic val$delay:S

.field final synthetic val$lost:S

.field final synthetic val$quality:I

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/RtcChatManager$4;IISS)V
    .locals 0

    .line 746
    iput-object p1, p0, Lcom/narvii/chat/video/RtcChatManager$4$15;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    iput p2, p0, Lcom/narvii/chat/video/RtcChatManager$4$15;->val$uid:I

    iput p3, p0, Lcom/narvii/chat/video/RtcChatManager$4$15;->val$quality:I

    iput-short p4, p0, Lcom/narvii/chat/video/RtcChatManager$4$15;->val$delay:S

    iput-short p5, p0, Lcom/narvii/chat/video/RtcChatManager$4$15;->val$lost:S

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 749
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$15;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->access$400(Lcom/narvii/chat/video/RtcChatManager;)Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/narvii/chat/video/RtcChatManager$4$15;->val$uid:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/ui/UserStatusData;

    .line 750
    iget-object v1, p0, Lcom/narvii/chat/video/RtcChatManager$4$15;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    iget-object v1, v1, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    invoke-static {v1}, Lcom/narvii/chat/video/RtcChatManager;->access$400(Lcom/narvii/chat/video/RtcChatManager;)Landroid/util/SparseArray;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/chat/video/RtcChatManager$4$15;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    iget-object v2, v2, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    invoke-static {v2}, Lcom/narvii/chat/video/RtcChatManager;->access$1100(Lcom/narvii/chat/video/RtcChatManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/video/ui/UserStatusData;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 752
    iget v2, p0, Lcom/narvii/chat/video/RtcChatManager$4$15;->val$quality:I

    invoke-virtual {v0, v2}, Lcom/narvii/video/ui/UserStatusData;->setAudioQuality(I)V

    .line 753
    iget v1, v1, Lcom/narvii/video/ui/UserStatusData;->netWorkQuality:I

    invoke-virtual {v0, v1}, Lcom/narvii/video/ui/UserStatusData;->needUpdateNetWorkSummary(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 754
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$15;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->access$300(Lcom/narvii/chat/video/RtcChatManager;)Lcom/narvii/video/model/RtcEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 755
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$15;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->access$300(Lcom/narvii/chat/video/RtcChatManager;)Lcom/narvii/video/model/RtcEventHandler;

    move-result-object v0

    iget v1, p0, Lcom/narvii/chat/video/RtcChatManager$4$15;->val$uid:I

    iget v2, p0, Lcom/narvii/chat/video/RtcChatManager$4$15;->val$quality:I

    iget-short v3, p0, Lcom/narvii/chat/video/RtcChatManager$4$15;->val$delay:S

    iget-short v4, p0, Lcom/narvii/chat/video/RtcChatManager$4$15;->val$lost:S

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/narvii/video/model/RtcEventHandler;->onAudioQuality(IISS)V

    :cond_0
    return-void
.end method
