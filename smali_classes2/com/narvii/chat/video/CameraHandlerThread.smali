.class public Lcom/narvii/chat/video/CameraHandlerThread;
.super Landroid/os/HandlerThread;
.source "CameraHandlerThread.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CameraHandlerThread"


# instance fields
.field localHandler:Landroid/os/Handler;

.field private renderer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/narvii/chat/video/CameraRenderer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/chat/video/CameraRenderer;)V
    .locals 1

    const-string v0, "CameraHandlerThread"

    .line 23
    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 24
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/narvii/chat/video/CameraHandlerThread;->renderer:Ljava/lang/ref/WeakReference;

    .line 25
    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    .line 26
    new-instance p1, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/narvii/chat/video/CameraHandlerThread;->localHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/chat/video/CameraHandlerThread;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/narvii/chat/video/CameraHandlerThread;->renderer:Ljava/lang/ref/WeakReference;

    return-object p0
.end method


# virtual methods
.method public startCamera(I)V
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/narvii/chat/video/CameraHandlerThread;->localHandler:Landroid/os/Handler;

    new-instance v1, Lcom/narvii/chat/video/CameraHandlerThread$1;

    invoke-direct {v1, p0, p1}, Lcom/narvii/chat/video/CameraHandlerThread$1;-><init>(Lcom/narvii/chat/video/CameraHandlerThread;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
