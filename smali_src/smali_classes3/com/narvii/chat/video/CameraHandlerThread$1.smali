.class Lcom/narvii/chat/video/CameraHandlerThread$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/CameraHandlerThread$1;->this$0:Lcom/narvii/chat/video/CameraHandlerThread;

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/chat/video/CameraHandlerThread$1;->val$cameraId:I

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/chat/video/CameraHandlerThread$1;->val$cameraId:I

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/video/ui/camera/CameraUtils;->getCameraInstance(I)Landroid/hardware/Camera;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    :goto_0
    if-nez v0, :cond_0

    .line 12
    const/4 v2, 0x3

    .line 13
    .line 14
    if-ge v1, v2, :cond_0

    .line 15
    .line 16
    const-wide/16 v2, 0xc8

    .line 17
    .line 18
    .line 19
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    goto :goto_1

    .line 21
    :catch_0
    move-exception v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    .line 26
    :goto_1
    iget v0, p0, Lcom/narvii/chat/video/CameraHandlerThread$1;->val$cameraId:I

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Lcom/narvii/video/ui/camera/CameraUtils;->getCameraInstance(I)Landroid/hardware/Camera;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_0
    new-instance v1, Landroid/os/Handler;

    .line 36
    .line 37
    .line 38
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 39
    move-result-object v2

    .line 40
    .line 41
    .line 42
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 43
    .line 44
    iget-object v2, p0, Lcom/narvii/chat/video/CameraHandlerThread$1;->this$0:Lcom/narvii/chat/video/CameraHandlerThread;

    .line 45
    .line 46
    .line 47
    invoke-static {v2}, Lcom/narvii/chat/video/CameraHandlerThread;->a(Lcom/narvii/chat/video/CameraHandlerThread;)Ljava/lang/ref/WeakReference;

    .line 48
    move-result-object v2

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 52
    move-result-object v2

    .line 53
    .line 54
    if-eqz v2, :cond_1

    .line 55
    .line 56
    new-instance v2, Lcom/narvii/chat/video/CameraHandlerThread$1$1;

    .line 57
    .line 58
    .line 59
    invoke-direct {v2, p0, v0}, Lcom/narvii/chat/video/CameraHandlerThread$1$1;-><init>(Lcom/narvii/chat/video/CameraHandlerThread$1;Landroid/hardware/Camera;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 63
    :cond_1
    return-void
.end method
