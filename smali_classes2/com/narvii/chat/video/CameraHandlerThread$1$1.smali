.class Lcom/narvii/chat/video/CameraHandlerThread$1$1;
.super Ljava/lang/Object;
.source "CameraHandlerThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/CameraHandlerThread$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/chat/video/CameraHandlerThread$1;

.field final synthetic val$finalCamera:Landroid/hardware/Camera;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/CameraHandlerThread$1;Landroid/hardware/Camera;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/narvii/chat/video/CameraHandlerThread$1$1;->this$1:Lcom/narvii/chat/video/CameraHandlerThread$1;

    iput-object p2, p0, Lcom/narvii/chat/video/CameraHandlerThread$1$1;->val$finalCamera:Landroid/hardware/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/narvii/chat/video/CameraHandlerThread$1$1;->this$1:Lcom/narvii/chat/video/CameraHandlerThread$1;

    iget-object v0, v0, Lcom/narvii/chat/video/CameraHandlerThread$1;->this$0:Lcom/narvii/chat/video/CameraHandlerThread;

    invoke-static {v0}, Lcom/narvii/chat/video/CameraHandlerThread;->access$000(Lcom/narvii/chat/video/CameraHandlerThread;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/video/CameraRenderer;

    iget-object v1, p0, Lcom/narvii/chat/video/CameraHandlerThread$1$1;->val$finalCamera:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/narvii/chat/video/CameraHandlerThread$1$1;->this$1:Lcom/narvii/chat/video/CameraHandlerThread$1;

    iget v2, v2, Lcom/narvii/chat/video/CameraHandlerThread$1;->val$cameraId:I

    invoke-virtual {v0, v1, v2}, Lcom/narvii/chat/video/CameraRenderer;->setupCameraPreview(Landroid/hardware/Camera;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 56
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
