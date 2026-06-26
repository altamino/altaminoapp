.class Lcom/narvii/chat/video/RtcChatManager$4$7;
.super Ljava/lang/Object;
.source "RtcChatManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/RtcChatManager$4;->onUserMuteAudio(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/chat/video/RtcChatManager$4;

.field final synthetic val$muted:Z

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/RtcChatManager$4;IZ)V
    .locals 0

    .line 613
    iput-object p1, p0, Lcom/narvii/chat/video/RtcChatManager$4$7;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    iput p2, p0, Lcom/narvii/chat/video/RtcChatManager$4$7;->val$uid:I

    iput-boolean p3, p0, Lcom/narvii/chat/video/RtcChatManager$4$7;->val$muted:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 616
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$7;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->access$400(Lcom/narvii/chat/video/RtcChatManager;)Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/narvii/chat/video/RtcChatManager$4$7;->val$uid:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/ui/UserStatusData;

    if-nez v0, :cond_0

    return-void

    .line 620
    :cond_0
    iget-boolean v1, p0, Lcom/narvii/chat/video/RtcChatManager$4$7;->val$muted:Z

    invoke-virtual {v0}, Lcom/narvii/video/ui/UserStatusData;->isVoiceMuted()Z

    move-result v2

    xor-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 621
    iget-boolean v1, p0, Lcom/narvii/chat/video/RtcChatManager$4$7;->val$muted:Z

    invoke-virtual {v0, v1}, Lcom/narvii/video/ui/UserStatusData;->setVoiceMuted(Z)V

    const/4 v1, 0x0

    .line 622
    iput v1, v0, Lcom/narvii/video/ui/UserStatusData;->mVolume:I

    .line 623
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$7;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->access$300(Lcom/narvii/chat/video/RtcChatManager;)Lcom/narvii/video/model/RtcEventHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 624
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$7;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->access$300(Lcom/narvii/chat/video/RtcChatManager;)Lcom/narvii/video/model/RtcEventHandler;

    move-result-object v0

    iget v1, p0, Lcom/narvii/chat/video/RtcChatManager$4$7;->val$uid:I

    iget-boolean v2, p0, Lcom/narvii/chat/video/RtcChatManager$4$7;->val$muted:Z

    invoke-interface {v0, v1, v2}, Lcom/narvii/video/model/RtcEventHandler;->onUserMuteAudio(IZ)V

    :cond_1
    return-void
.end method
