.class Lcom/narvii/chat/video/CameraHandlerThread$1;
.super Ljava/lang/Object;
.source "CameraHandlerThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/CameraHandlerThread;->startCamera(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/CameraHandlerThread;

.field final synthetic val$cameraId:I


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/CameraHandlerThread;I)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/narvii/chat/video/CameraHandlerThread$1;->this$0:Lcom/narvii/chat/video/CameraHandlerThread;

    iput p2, p0, Lcom/narvii/chat/video/CameraHandlerThread$1;->val$cameraId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 33
    iget v0, p0, Lcom/narvii/chat/video/CameraHandlerThread$1;->val$cameraId:I

    invoke-static {v0}, Lcom/narvii/video/ui/camera/CameraUtils;->getCameraInstance(I)Landroid/hardware/Camera;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    if-nez v0, :cond_0

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    const-wide/16 v2, 0xc8

    .line 39
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 43
    :goto_1
    iget v0, p0, Lcom/narvii/chat/video/CameraHandlerThread$1;->val$cameraId:I

    invoke-static {v0}, Lcom/narvii/video/ui/camera/CameraUtils;->getCameraInstance(I)Landroid/hardware/Camera;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 48
    iget-object v2, p0, Lcom/narvii/chat/video/CameraHandlerThread$1;->this$0:Lcom/narvii/chat/video/CameraHandlerThread;

    invoke-static {v2}, Lcom/narvii/chat/video/CameraHandlerThread;->access$000(Lcom/narvii/chat/video/CameraHandlerThread;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 50
    new-instance v2, Lcom/narvii/chat/video/CameraHandlerThread$1$1;

    invoke-direct {v2, p0, v0}, Lcom/narvii/chat/video/CameraHandlerThread$1$1;-><init>(Lcom/narvii/chat/video/CameraHandlerThread$1;Landroid/hardware/Camera;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
