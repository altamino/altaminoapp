.class Lcom/narvii/chat/video/RtcChatManager$4$6;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/RtcChatManager$4$6;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/chat/video/RtcChatManager$4$6;->val$uid:I

    .line 5
    .line 6
    iput p3, p0, Lcom/narvii/chat/video/RtcChatManager$4$6;->val$reason:I

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$6;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

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
    iget v1, p0, Lcom/narvii/chat/video/RtcChatManager$4$6;->val$uid:I

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    return-void

    .line 18
    .line 19
    :cond_0
    iget v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$6;->val$reason:I

    .line 20
    const/4 v1, 0x1

    .line 21
    .line 22
    if-ne v0, v1, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$6;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->h(Lcom/narvii/chat/video/RtcChatManager;)Landroid/util/SparseArray;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    iget v2, p0, Lcom/narvii/chat/video/RtcChatManager$4$6;->val$uid:I

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    check-cast v0, Lcom/narvii/video/ui/UserStatusData;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    iput v1, v0, Lcom/narvii/video/ui/UserStatusData;->netWorkStatus:I

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$6;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    .line 48
    .line 49
    .line 50
    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->h(Lcom/narvii/chat/video/RtcChatManager;)Landroid/util/SparseArray;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    iget v1, p0, Lcom/narvii/chat/video/RtcChatManager$4$6;->val$uid:I

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 57
    .line 58
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$6;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    .line 59
    .line 60
    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    .line 61
    .line 62
    .line 63
    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->b(Lcom/narvii/chat/video/RtcChatManager;)I

    .line 64
    move-result v1

    .line 65
    .line 66
    iget v2, p0, Lcom/narvii/chat/video/RtcChatManager$4$6;->val$uid:I

    .line 67
    const/4 v3, 0x0

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/chat/video/RtcChatManager;->muteRemoteUer(IIZ)V

    .line 71
    .line 72
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$6;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    .line 73
    .line 74
    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    .line 75
    .line 76
    .line 77
    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->i(Lcom/narvii/chat/video/RtcChatManager;)Lcom/narvii/video/model/RtcEventHandler;

    .line 78
    move-result-object v0

    .line 79
    .line 80
    if-eqz v0, :cond_3

    .line 81
    .line 82
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$6;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    .line 83
    .line 84
    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    .line 85
    .line 86
    .line 87
    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->i(Lcom/narvii/chat/video/RtcChatManager;)Lcom/narvii/video/model/RtcEventHandler;

    .line 88
    move-result-object v0

    .line 89
    .line 90
    iget v1, p0, Lcom/narvii/chat/video/RtcChatManager$4$6;->val$uid:I

    .line 91
    .line 92
    iget v2, p0, Lcom/narvii/chat/video/RtcChatManager$4$6;->val$reason:I

    .line 93
    .line 94
    .line 95
    invoke-interface {v0, v1, v2}, Lcom/narvii/video/model/RtcEventHandler;->onUserOffline(II)V

    .line 96
    :cond_3
    return-void
.end method
