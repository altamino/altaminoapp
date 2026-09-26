.class Lcom/narvii/chat/video/CameraHandlerThread$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/CameraHandlerThread$1$1;->this$1:Lcom/narvii/chat/video/CameraHandlerThread$1;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/video/CameraHandlerThread$1$1;->val$finalCamera:Landroid/hardware/Camera;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/narvii/chat/video/CameraHandlerThread$1$1;->this$1:Lcom/narvii/chat/video/CameraHandlerThread$1;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/chat/video/CameraHandlerThread$1;->this$0:Lcom/narvii/chat/video/CameraHandlerThread;

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/chat/video/CameraHandlerThread;->a(Lcom/narvii/chat/video/CameraHandlerThread;)Ljava/lang/ref/WeakReference;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/chat/video/CameraRenderer;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/chat/video/CameraHandlerThread$1$1;->val$finalCamera:Landroid/hardware/Camera;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/narvii/chat/video/CameraHandlerThread$1$1;->this$1:Lcom/narvii/chat/video/CameraHandlerThread$1;

    .line 19
    .line 20
    iget v2, v2, Lcom/narvii/chat/video/CameraHandlerThread$1;->val$cameraId:I

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Lcom/narvii/chat/video/CameraRenderer;->setupCameraPreview(Landroid/hardware/Camera;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 29
    :goto_0
    return-void
.end method
