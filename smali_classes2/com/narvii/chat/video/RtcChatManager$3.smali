.class Lcom/narvii/chat/video/RtcChatManager$3;
.super Ljava/lang/Object;
.source "RtcChatManager.java"

# interfaces
.implements Lcom/narvii/chat/video/CameraRenderer$ICustomCameraPreviewStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/RtcChatManager;->setCustomLocalVideo(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/RtcChatManager;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/RtcChatManager;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/narvii/chat/video/RtcChatManager$3;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEglContextReady(Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 0

    return-void
.end method

.method public onFrameAvailable(ILjavax/microedition/khronos/egl/EGLContext;III)V
    .locals 0

    .line 343
    iget-object p1, p0, Lcom/narvii/chat/video/RtcChatManager$3;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    invoke-static {p1}, Lcom/narvii/chat/video/RtcChatManager;->access$100(Lcom/narvii/chat/video/RtcChatManager;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/narvii/chat/video/RtcChatManager$3;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    invoke-static {p1}, Lcom/narvii/chat/video/RtcChatManager;->access$200(Lcom/narvii/chat/video/RtcChatManager;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 344
    iget-object p1, p0, Lcom/narvii/chat/video/RtcChatManager$3;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/narvii/chat/video/RtcChatManager;->access$202(Lcom/narvii/chat/video/RtcChatManager;Z)Z

    .line 345
    iget-object p1, p0, Lcom/narvii/chat/video/RtcChatManager$3;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    invoke-virtual {p1}, Lcom/narvii/chat/video/RtcChatManager;->getLocalUserInfo()Lcom/narvii/video/ui/UserStatusData;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x2

    .line 347
    iput p2, p1, Lcom/narvii/video/ui/UserStatusData;->videoFrameStatus:I

    .line 349
    :cond_0
    new-instance p1, Lcom/narvii/chat/video/RtcChatManager$3$2;

    invoke-direct {p1, p0}, Lcom/narvii/chat/video/RtcChatManager$3$2;-><init>(Lcom/narvii/chat/video/RtcChatManager$3;)V

    invoke-static {p1}, Lcom/narvii/video/ui/Utils;->post(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onInitResourceFail()V
    .locals 3

    .line 338
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$3;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->access$000(Lcom/narvii/chat/video/RtcChatManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/video/RtcChatManager$3;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    invoke-static {v1}, Lcom/narvii/chat/video/RtcChatManager;->access$000(Lcom/narvii/chat/video/RtcChatManager;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f014d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    return-void
.end method

.method public onPreDraw()V
    .locals 0

    return-void
.end method

.method public onTrackStatusChange(I)V
    .locals 2

    .line 321
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$3;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    invoke-virtual {v0}, Lcom/narvii/chat/video/RtcChatManager;->getLocalUserInfo()Lcom/narvii/video/ui/UserStatusData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {v0}, Lcom/narvii/video/ui/UserStatusData;->getTrackingStatus()I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 323
    invoke-virtual {v0, p1}, Lcom/narvii/video/ui/UserStatusData;->setTrackingStatus(I)V

    .line 324
    new-instance v0, Lcom/narvii/chat/video/RtcChatManager$3$1;

    invoke-direct {v0, p0, p1}, Lcom/narvii/chat/video/RtcChatManager$3$1;-><init>(Lcom/narvii/chat/video/RtcChatManager$3;I)V

    invoke-static {v0}, Lcom/narvii/video/ui/Utils;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
