.class Lcom/narvii/chat/video/RtcChatManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/RtcChatManager$3;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onEglContextReady(Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 0

    return-void
.end method

.method public onFrameAvailable(ILjavax/microedition/khronos/egl/EGLContext;III)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/video/RtcChatManager$3;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/chat/video/RtcChatManager;->d(Lcom/narvii/chat/video/RtcChatManager;)Z

    .line 6
    move-result p1

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/chat/video/RtcChatManager$3;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/narvii/chat/video/RtcChatManager;->e(Lcom/narvii/chat/video/RtcChatManager;)Z

    .line 14
    move-result p1

    .line 15
    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    iget-object p1, p0, Lcom/narvii/chat/video/RtcChatManager$3;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    .line 19
    const/4 p2, 0x1

    .line 20
    .line 21
    .line 22
    invoke-static {p1, p2}, Lcom/narvii/chat/video/RtcChatManager;->l(Lcom/narvii/chat/video/RtcChatManager;Z)V

    .line 23
    .line 24
    iget-object p1, p0, Lcom/narvii/chat/video/RtcChatManager$3;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/narvii/chat/video/RtcChatManager;->getLocalUserInfo()Lcom/narvii/video/ui/UserStatusData;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    if-eqz p1, :cond_0

    .line 31
    const/4 p2, 0x2

    .line 32
    .line 33
    iput p2, p1, Lcom/narvii/video/ui/UserStatusData;->videoFrameStatus:I

    .line 34
    .line 35
    :cond_0
    new-instance p1, Lcom/narvii/chat/video/RtcChatManager$3$2;

    .line 36
    .line 37
    .line 38
    invoke-direct {p1, p0}, Lcom/narvii/chat/video/RtcChatManager$3$2;-><init>(Lcom/narvii/chat/video/RtcChatManager$3;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p1}, Lcom/narvii/video/ui/Utils;->post(Ljava/lang/Runnable;)V

    .line 42
    :cond_1
    return-void
.end method

.method public onInitResourceFail()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$3;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->a(Lcom/narvii/chat/video/RtcChatManager;)Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/chat/video/RtcChatManager$3;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Lcom/narvii/chat/video/RtcChatManager;->a(Lcom/narvii/chat/video/RtcChatManager;)Landroid/content/Context;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    const v2, 0x7f12018b

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x1

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    .line 28
    return-void
.end method

.method public onPreDraw()V
    .locals 0

    return-void
.end method

.method public onTrackStatusChange(I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$3;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/chat/video/RtcChatManager;->getLocalUserInfo()Lcom/narvii/video/ui/UserStatusData;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/video/ui/UserStatusData;->getTrackingStatus()I

    .line 12
    move-result v1

    .line 13
    .line 14
    if-eq v1, p1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/narvii/video/ui/UserStatusData;->setTrackingStatus(I)V

    .line 18
    .line 19
    new-instance v0, Lcom/narvii/chat/video/RtcChatManager$3$1;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/narvii/chat/video/RtcChatManager$3$1;-><init>(Lcom/narvii/chat/video/RtcChatManager$3;I)V

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lcom/narvii/video/ui/Utils;->post(Ljava/lang/Runnable;)V

    .line 26
    :cond_0
    return-void
.end method
