.class Lcom/narvii/chat/video/RtcChatManager$4$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/RtcChatManager$4;->onRejoinChannelSuccess(Ljava/lang/String;II)V
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
    iput-object p1, p0, Lcom/narvii/chat/video/RtcChatManager$4$4;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/chat/video/RtcChatManager$4$4;->val$uid:I

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/chat/video/RtcChatManager$4$4;->val$channel:Ljava/lang/String;

    .line 7
    .line 8
    iput p4, p0, Lcom/narvii/chat/video/RtcChatManager$4$4;->val$elapsed:I

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$4;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

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
    iget v1, p0, Lcom/narvii/chat/video/RtcChatManager$4$4;->val$uid:I

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
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget v1, v0, Lcom/narvii/video/ui/UserStatusData;->netWorkStatus:I

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    const/4 v1, 0x0

    .line 24
    .line 25
    iput v1, v0, Lcom/narvii/video/ui/UserStatusData;->netWorkStatus:I

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$4;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->i(Lcom/narvii/chat/video/RtcChatManager;)Lcom/narvii/video/model/RtcEventHandler;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$4;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->i(Lcom/narvii/chat/video/RtcChatManager;)Lcom/narvii/video/model/RtcEventHandler;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    iget-object v1, p0, Lcom/narvii/chat/video/RtcChatManager$4$4;->val$channel:Ljava/lang/String;

    .line 46
    .line 47
    iget v2, p0, Lcom/narvii/chat/video/RtcChatManager$4$4;->val$uid:I

    .line 48
    .line 49
    iget v3, p0, Lcom/narvii/chat/video/RtcChatManager$4$4;->val$elapsed:I

    .line 50
    .line 51
    .line 52
    invoke-interface {v0, v1, v2, v3}, Lcom/narvii/video/model/RtcEventHandler;->onRejoinChannelSuccess(Ljava/lang/String;II)V

    .line 53
    :cond_0
    return-void
.end method
