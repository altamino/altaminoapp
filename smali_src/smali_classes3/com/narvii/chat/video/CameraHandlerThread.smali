.class public Lcom/narvii/chat/video/CameraHandlerThread;
.super Landroid/os/HandlerThread;
.source "SourceFile"


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

    .line 1
    .line 2
    const-string v0, "CameraHandlerThread"

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/chat/video/CameraHandlerThread;->renderer:Ljava/lang/ref/WeakReference;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 16
    .line 17
    new-instance p1, Landroid/os/Handler;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 25
    .line 26
    iput-object p1, p0, Lcom/narvii/chat/video/CameraHandlerThread;->localHandler:Landroid/os/Handler;

    .line 27
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/chat/video/CameraHandlerThread;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/video/CameraHandlerThread;->renderer:Ljava/lang/ref/WeakReference;

    return-object p0
.end method


# virtual methods
.method public startCamera(I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/CameraHandlerThread;->localHandler:Landroid/os/Handler;

    .line 3
    .line 4
    new-instance v1, Lcom/narvii/chat/video/CameraHandlerThread$1;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lcom/narvii/chat/video/CameraHandlerThread$1;-><init>(Lcom/narvii/chat/video/CameraHandlerThread;I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    return-void
.end method
