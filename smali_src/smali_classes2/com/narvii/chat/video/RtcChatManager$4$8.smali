.class Lcom/narvii/chat/video/RtcChatManager$4$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/RtcChatManager$4;->onUserMuteVideo(IZ)V
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/RtcChatManager$4$8;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/chat/video/RtcChatManager$4$8;->val$uid:I

    .line 5
    .line 6
    iput-boolean p3, p0, Lcom/narvii/chat/video/RtcChatManager$4$8;->val$muted:Z

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$8;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->h(Lcom/narvii/chat/video/RtcChatManager;)Landroid/util/SparseArray;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iget v1, p0, Lcom/narvii/chat/video/RtcChatManager$4$8;->val$uid:I

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Lcom/narvii/video/ui/UserStatusData;

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    return-void

    .line 20
    .line 21
    :cond_0
    iget-boolean v1, p0, Lcom/narvii/chat/video/RtcChatManager$4$8;->val$muted:Z

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/narvii/video/ui/UserStatusData;->isVideoMuted()Z

    .line 25
    move-result v2

    .line 26
    xor-int/2addr v1, v2

    .line 27
    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    iget-boolean v1, p0, Lcom/narvii/chat/video/RtcChatManager$4$8;->val$muted:Z

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/narvii/video/ui/UserStatusData;->setVideoMuted(Z)V

    .line 34
    .line 35
    iget-boolean v1, p0, Lcom/narvii/chat/video/RtcChatManager$4$8;->val$muted:Z

    .line 36
    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    iget v1, v0, Lcom/narvii/video/ui/UserStatusData;->videoFrameStatus:I

    .line 40
    const/4 v2, 0x2

    .line 41
    .line 42
    if-eq v1, v2, :cond_1

    .line 43
    .line 44
    iput v2, v0, Lcom/narvii/video/ui/UserStatusData;->videoFrameStatus:I

    .line 45
    .line 46
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$8;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    .line 47
    .line 48
    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    .line 49
    .line 50
    .line 51
    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->i(Lcom/narvii/chat/video/RtcChatManager;)Lcom/narvii/video/model/RtcEventHandler;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$8;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    .line 57
    .line 58
    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    .line 59
    .line 60
    .line 61
    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->i(Lcom/narvii/chat/video/RtcChatManager;)Lcom/narvii/video/model/RtcEventHandler;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    iget v1, p0, Lcom/narvii/chat/video/RtcChatManager$4$8;->val$uid:I

    .line 65
    .line 66
    iget-boolean v2, p0, Lcom/narvii/chat/video/RtcChatManager$4$8;->val$muted:Z

    .line 67
    .line 68
    .line 69
    invoke-interface {v0, v1, v2}, Lcom/narvii/video/model/RtcEventHandler;->onUserMuteVideo(IZ)V

    .line 70
    :cond_2
    return-void
.end method
