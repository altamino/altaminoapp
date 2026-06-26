.class Lcom/narvii/chat/video/RtcChatManager$3$2;
.super Ljava/lang/Object;
.source "RtcChatManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/RtcChatManager$3;->onFrameAvailable(ILjavax/microedition/khronos/egl/EGLContext;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/chat/video/RtcChatManager$3;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/RtcChatManager$3;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lcom/narvii/chat/video/RtcChatManager$3$2;->this$1:Lcom/narvii/chat/video/RtcChatManager$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 352
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$3$2;->this$1:Lcom/narvii/chat/video/RtcChatManager$3;

    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$3;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->access$300(Lcom/narvii/chat/video/RtcChatManager;)Lcom/narvii/video/model/RtcEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$3$2;->this$1:Lcom/narvii/chat/video/RtcChatManager$3;

    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$3;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->access$300(Lcom/narvii/chat/video/RtcChatManager;)Lcom/narvii/video/model/RtcEventHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/video/RtcChatManager$3$2;->this$1:Lcom/narvii/chat/video/RtcChatManager$3;

    iget-object v1, v1, Lcom/narvii/chat/video/RtcChatManager$3;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    invoke-virtual {v1}, Lcom/narvii/chat/video/RtcChatManager;->getLocalUid()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/narvii/video/model/RtcEventHandler;->onLocalUserSteamDecoded(I)V

    :cond_0
    return-void
.end method
