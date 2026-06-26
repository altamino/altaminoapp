.class Lcom/narvii/chat/video/CameraRenderer$4;
.super Ljava/lang/Object;
.source "CameraRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/CameraRenderer;->onInitFuSourceResult(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/CameraRenderer;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/CameraRenderer;)V
    .locals 0

    .line 395
    iput-object p1, p0, Lcom/narvii/chat/video/CameraRenderer$4;->this$0:Lcom/narvii/chat/video/CameraRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/narvii/chat/video/CameraRenderer$4;->this$0:Lcom/narvii/chat/video/CameraRenderer;

    iget-object v0, v0, Lcom/narvii/chat/video/CameraRenderer;->statusListener:Lcom/narvii/chat/video/CameraRenderer$ICustomCameraPreviewStatusListener;

    invoke-interface {v0}, Lcom/narvii/chat/video/CameraRenderer$ICustomCameraPreviewStatusListener;->onInitResourceFail()V

    return-void
.end method
