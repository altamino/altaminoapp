.class Lcom/narvii/chat/video/RtcChatManager$4$3;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/RtcChatManager$4$3;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/chat/video/RtcChatManager$4$3;->val$uid:I

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/chat/video/RtcChatManager$4$3;->val$channel:Ljava/lang/String;

    .line 7
    .line 8
    iput p4, p0, Lcom/narvii/chat/video/RtcChatManager$4$3;->val$elapsed:I

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$3;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/narvii/chat/video/RtcChatManager;->k(Lcom/narvii/chat/video/RtcChatManager;Z)V

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$3;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->h(Lcom/narvii/chat/video/RtcChatManager;)Landroid/util/SparseArray;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    iget v1, p0, Lcom/narvii/chat/video/RtcChatManager$4$3;->val$uid:I

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    check-cast v0, Lcom/narvii/video/ui/UserStatusData;

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$3;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->i(Lcom/narvii/chat/video/RtcChatManager;)Lcom/narvii/video/model/RtcEventHandler;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$3;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    .line 39
    .line 40
    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->i(Lcom/narvii/chat/video/RtcChatManager;)Lcom/narvii/video/model/RtcEventHandler;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    iget-object v1, p0, Lcom/narvii/chat/video/RtcChatManager$4$3;->val$channel:Ljava/lang/String;

    .line 47
    .line 48
    iget v2, p0, Lcom/narvii/chat/video/RtcChatManager$4$3;->val$uid:I

    .line 49
    .line 50
    iget v3, p0, Lcom/narvii/chat/video/RtcChatManager$4$3;->val$elapsed:I

    .line 51
    .line 52
    .line 53
    invoke-interface {v0, v1, v2, v3}, Lcom/narvii/video/model/RtcEventHandler;->onJoinChannelSuccess(Ljava/lang/String;II)V

    .line 54
    goto :goto_0

    .line 55
    .line 56
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$3;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    .line 57
    .line 58
    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    .line 59
    .line 60
    .line 61
    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->h(Lcom/narvii/chat/video/RtcChatManager;)Landroid/util/SparseArray;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    iget v1, p0, Lcom/narvii/chat/video/RtcChatManager$4$3;->val$uid:I

    .line 65
    .line 66
    new-instance v2, Lcom/narvii/video/ui/UserStatusData;

    .line 67
    .line 68
    iget-object v3, p0, Lcom/narvii/chat/video/RtcChatManager$4$3;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    .line 69
    .line 70
    iget-object v3, v3, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    .line 71
    .line 72
    .line 73
    invoke-static {v3}, Lcom/narvii/chat/video/RtcChatManager;->g(Lcom/narvii/chat/video/RtcChatManager;)Lcom/narvii/chat/video/CameraRenderer;

    .line 74
    move-result-object v3

    .line 75
    const/4 v4, 0x0

    .line 76
    .line 77
    .line 78
    invoke-direct {v2, v1, v3, v4}, Lcom/narvii/video/ui/UserStatusData;-><init>(ILandroid/view/SurfaceView;I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 82
    .line 83
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$3;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    .line 84
    .line 85
    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    .line 86
    .line 87
    .line 88
    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->c(Lcom/narvii/chat/video/RtcChatManager;)I

    .line 89
    move-result v1

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1}, Lcom/narvii/chat/video/RtcChatManager;->statUpdate(I)V

    .line 93
    return-void
.end method
