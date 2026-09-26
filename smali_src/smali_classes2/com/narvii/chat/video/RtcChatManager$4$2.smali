.class Lcom/narvii/chat/video/RtcChatManager$4$2;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/RtcChatManager$4$2;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/chat/video/RtcChatManager$4$2;->val$uid:I

    .line 5
    .line 6
    iput p3, p0, Lcom/narvii/chat/video/RtcChatManager$4$2;->val$width:I

    .line 7
    .line 8
    iput p4, p0, Lcom/narvii/chat/video/RtcChatManager$4$2;->val$height:I

    .line 9
    .line 10
    iput p5, p0, Lcom/narvii/chat/video/RtcChatManager$4$2;->val$elapsed:I

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$2;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->j(Lcom/narvii/chat/video/RtcChatManager;)Lcom/narvii/video/model/WorkerThread;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/video/model/WorkerThread;->getEngineConfig()Lcom/narvii/video/model/EngineConfig;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iget v0, v0, Lcom/narvii/video/model/EngineConfig;->mUid:I

    .line 15
    .line 16
    iget v1, p0, Lcom/narvii/chat/video/RtcChatManager$4$2;->val$uid:I

    .line 17
    .line 18
    if-eq v0, v1, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$2;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->i(Lcom/narvii/chat/video/RtcChatManager;)Lcom/narvii/video/model/RtcEventHandler;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$2;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->i(Lcom/narvii/chat/video/RtcChatManager;)Lcom/narvii/video/model/RtcEventHandler;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    iget v1, p0, Lcom/narvii/chat/video/RtcChatManager$4$2;->val$uid:I

    .line 39
    .line 40
    iget v2, p0, Lcom/narvii/chat/video/RtcChatManager$4$2;->val$width:I

    .line 41
    .line 42
    iget v3, p0, Lcom/narvii/chat/video/RtcChatManager$4$2;->val$height:I

    .line 43
    .line 44
    iget v4, p0, Lcom/narvii/chat/video/RtcChatManager$4$2;->val$elapsed:I

    .line 45
    .line 46
    .line 47
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/narvii/video/model/RtcEventHandler;->onFirstRemoteVideoDecoded(IIII)V

    .line 48
    :cond_0
    return-void
.end method
