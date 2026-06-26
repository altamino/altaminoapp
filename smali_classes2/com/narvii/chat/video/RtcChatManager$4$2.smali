.class Lcom/narvii/chat/video/RtcChatManager$4$2;
.super Ljava/lang/Object;
.source "RtcChatManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/RtcChatManager$4;->onFirstRemoteVideoDecoded(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/chat/video/RtcChatManager$4;

.field final synthetic val$elapsed:I

.field final synthetic val$height:I

.field final synthetic val$uid:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/RtcChatManager$4;IIII)V
    .locals 0

    .line 509
    iput-object p1, p0, Lcom/narvii/chat/video/RtcChatManager$4$2;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    iput p2, p0, Lcom/narvii/chat/video/RtcChatManager$4$2;->val$uid:I

    iput p3, p0, Lcom/narvii/chat/video/RtcChatManager$4$2;->val$width:I

    iput p4, p0, Lcom/narvii/chat/video/RtcChatManager$4$2;->val$height:I

    iput p5, p0, Lcom/narvii/chat/video/RtcChatManager$4$2;->val$elapsed:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 512
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$2;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->access$600(Lcom/narvii/chat/video/RtcChatManager;)Lcom/narvii/video/model/WorkerThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/video/model/WorkerThread;->getEngineConfig()Lcom/narvii/video/model/EngineConfig;

    move-result-object v0

    iget v0, v0, Lcom/narvii/video/model/EngineConfig;->mUid:I

    iget v1, p0, Lcom/narvii/chat/video/RtcChatManager$4$2;->val$uid:I

    if-eq v0, v1, :cond_0

    .line 513
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$2;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->access$300(Lcom/narvii/chat/video/RtcChatManager;)Lcom/narvii/video/model/RtcEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$2;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->access$300(Lcom/narvii/chat/video/RtcChatManager;)Lcom/narvii/video/model/RtcEventHandler;

    move-result-object v0

    iget v1, p0, Lcom/narvii/chat/video/RtcChatManager$4$2;->val$uid:I

    iget v2, p0, Lcom/narvii/chat/video/RtcChatManager$4$2;->val$width:I

    iget v3, p0, Lcom/narvii/chat/video/RtcChatManager$4$2;->val$height:I

    iget v4, p0, Lcom/narvii/chat/video/RtcChatManager$4$2;->val$elapsed:I

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/narvii/video/model/RtcEventHandler;->onFirstRemoteVideoDecoded(IIII)V

    :cond_0
    return-void
.end method
