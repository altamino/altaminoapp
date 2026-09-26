.class Lcom/narvii/chat/video/RtcChatManager$4$5;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/RtcChatManager$4$5;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$5;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/narvii/chat/video/RtcChatManager;->n(Lcom/narvii/chat/video/RtcChatManager;I)V

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$5;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

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
    iget-object v2, p0, Lcom/narvii/chat/video/RtcChatManager$4$5;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    .line 19
    .line 20
    iget-object v2, v2, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    .line 21
    .line 22
    .line 23
    invoke-static {v2}, Lcom/narvii/chat/video/RtcChatManager;->f(Lcom/narvii/chat/video/RtcChatManager;)I

    .line 24
    move-result v2

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    check-cast v0, Lcom/narvii/video/ui/UserStatusData;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$5;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->g(Lcom/narvii/chat/video/RtcChatManager;)Lcom/narvii/chat/video/CameraRenderer;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$5;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    .line 45
    .line 46
    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    .line 47
    .line 48
    .line 49
    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->g(Lcom/narvii/chat/video/RtcChatManager;)Lcom/narvii/chat/video/CameraRenderer;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/narvii/chat/video/CameraRenderer;->onDestroy()V

    .line 54
    .line 55
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$5;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    .line 56
    .line 57
    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    .line 58
    const/4 v2, 0x0

    .line 59
    .line 60
    .line 61
    invoke-static {v0, v2}, Lcom/narvii/chat/video/RtcChatManager;->m(Lcom/narvii/chat/video/RtcChatManager;Lcom/narvii/chat/video/CameraRenderer;)V

    .line 62
    .line 63
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$5;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    .line 64
    .line 65
    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    .line 66
    .line 67
    .line 68
    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->h(Lcom/narvii/chat/video/RtcChatManager;)Landroid/util/SparseArray;

    .line 69
    move-result-object v0

    .line 70
    .line 71
    iget-object v2, p0, Lcom/narvii/chat/video/RtcChatManager$4$5;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    .line 72
    .line 73
    iget-object v2, v2, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    .line 74
    .line 75
    .line 76
    invoke-static {v2}, Lcom/narvii/chat/video/RtcChatManager;->f(Lcom/narvii/chat/video/RtcChatManager;)I

    .line 77
    move-result v2

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 81
    .line 82
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$5;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

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
    if-eqz v0, :cond_2

    .line 91
    .line 92
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$5;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    .line 93
    .line 94
    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    .line 95
    .line 96
    .line 97
    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->i(Lcom/narvii/chat/video/RtcChatManager;)Lcom/narvii/video/model/RtcEventHandler;

    .line 98
    move-result-object v0

    .line 99
    .line 100
    .line 101
    invoke-interface {v0}, Lcom/narvii/video/model/RtcEventHandler;->onLeaveChannel()V

    .line 102
    .line 103
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$5;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    .line 104
    .line 105
    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v1}, Lcom/narvii/chat/video/RtcChatManager;->statUpdate(I)V

    .line 109
    return-void
.end method
