.class Lcom/narvii/chat/video/RtcChatManager$4$14;
.super Ljava/lang/Object;
.source "RtcChatManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/RtcChatManager$4;->onNetworkQuality(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/chat/video/RtcChatManager$4;

.field final synthetic val$rxQuality:I

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/RtcChatManager$4;II)V
    .locals 0

    .line 728
    iput-object p1, p0, Lcom/narvii/chat/video/RtcChatManager$4$14;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    iput p2, p0, Lcom/narvii/chat/video/RtcChatManager$4$14;->val$uid:I

    iput p3, p0, Lcom/narvii/chat/video/RtcChatManager$4$14;->val$rxQuality:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 731
    iget v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$14;->val$uid:I

    iget-object v1, p0, Lcom/narvii/chat/video/RtcChatManager$4$14;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    iget-object v1, v1, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    invoke-static {v1}, Lcom/narvii/chat/video/RtcChatManager;->access$1100(Lcom/narvii/chat/video/RtcChatManager;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$14;->val$uid:I

    if-nez v0, :cond_1

    .line 732
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$14;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->access$400(Lcom/narvii/chat/video/RtcChatManager;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/video/RtcChatManager$4$14;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    iget-object v1, v1, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    invoke-static {v1}, Lcom/narvii/chat/video/RtcChatManager;->access$1100(Lcom/narvii/chat/video/RtcChatManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/ui/UserStatusData;

    if-eqz v0, :cond_1

    .line 734
    iget v1, p0, Lcom/narvii/chat/video/RtcChatManager$4$14;->val$rxQuality:I

    iput v1, v0, Lcom/narvii/video/ui/UserStatusData;->netWorkQuality:I

    :cond_1
    return-void
.end method
