.class Lcom/narvii/chat/video/RtcChatManager$4$10;
.super Ljava/lang/Object;
.source "RtcChatManager.java"

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

    .line 667
    iput-object p1, p0, Lcom/narvii/chat/video/RtcChatManager$4$10;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    iput p2, p0, Lcom/narvii/chat/video/RtcChatManager$4$10;->val$routing:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 670
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$10;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->access$400(Lcom/narvii/chat/video/RtcChatManager;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/video/RtcChatManager$4$10;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    iget-object v1, v1, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    invoke-virtual {v1}, Lcom/narvii/chat/video/RtcChatManager;->getLocalUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/ui/UserStatusData;

    if-eqz v0, :cond_0

    .line 672
    iget v1, p0, Lcom/narvii/chat/video/RtcChatManager$4$10;->val$routing:I

    iput v1, v0, Lcom/narvii/video/ui/UserStatusData;->audioRoute:I

    .line 673
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$10;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->access$300(Lcom/narvii/chat/video/RtcChatManager;)Lcom/narvii/video/model/RtcEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$10;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->access$300(Lcom/narvii/chat/video/RtcChatManager;)Lcom/narvii/video/model/RtcEventHandler;

    move-result-object v0

    iget v1, p0, Lcom/narvii/chat/video/RtcChatManager$4$10;->val$routing:I

    invoke-interface {v0, v1}, Lcom/narvii/video/model/RtcEventHandler;->onAudioRouteChanged(I)V

    :cond_0
    return-void
.end method
