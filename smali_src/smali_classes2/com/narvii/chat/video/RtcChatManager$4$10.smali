.class Lcom/narvii/chat/video/RtcChatManager$4$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/RtcChatManager$4;->onAudioRouteChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/chat/video/RtcChatManager$4;

.field final synthetic val$routing:I


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/RtcChatManager$4;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/RtcChatManager$4$10;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/chat/video/RtcChatManager$4$10;->val$routing:I

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$10;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

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
    iget-object v1, p0, Lcom/narvii/chat/video/RtcChatManager$4$10;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/narvii/chat/video/RtcChatManager;->getLocalUid()I

    .line 16
    move-result v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    check-cast v0, Lcom/narvii/video/ui/UserStatusData;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    iget v1, p0, Lcom/narvii/chat/video/RtcChatManager$4$10;->val$routing:I

    .line 27
    .line 28
    iput v1, v0, Lcom/narvii/video/ui/UserStatusData;->audioRoute:I

    .line 29
    .line 30
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$10;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

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
    if-eqz v0, :cond_0

    .line 39
    .line 40
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$10;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    .line 43
    .line 44
    .line 45
    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->i(Lcom/narvii/chat/video/RtcChatManager;)Lcom/narvii/video/model/RtcEventHandler;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    iget v1, p0, Lcom/narvii/chat/video/RtcChatManager$4$10;->val$routing:I

    .line 49
    .line 50
    .line 51
    invoke-interface {v0, v1}, Lcom/narvii/video/model/RtcEventHandler;->onAudioRouteChanged(I)V

    .line 52
    :cond_0
    return-void
.end method
