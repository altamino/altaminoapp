.class Lcom/narvii/chat/video/RtcChatManager$3$2;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/RtcChatManager$3$2;->this$1:Lcom/narvii/chat/video/RtcChatManager$3;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$3$2;->this$1:Lcom/narvii/chat/video/RtcChatManager$3;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$3;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->i(Lcom/narvii/chat/video/RtcChatManager;)Lcom/narvii/video/model/RtcEventHandler;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$3$2;->this$1:Lcom/narvii/chat/video/RtcChatManager$3;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$3;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->i(Lcom/narvii/chat/video/RtcChatManager;)Lcom/narvii/video/model/RtcEventHandler;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    iget-object v1, p0, Lcom/narvii/chat/video/RtcChatManager$3$2;->this$1:Lcom/narvii/chat/video/RtcChatManager$3;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/narvii/chat/video/RtcChatManager$3;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/narvii/chat/video/RtcChatManager;->getLocalUid()I

    .line 26
    move-result v1

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, v1}, Lcom/narvii/video/model/RtcEventHandler;->onLocalUserSteamDecoded(I)V

    .line 30
    :cond_0
    return-void
.end method
