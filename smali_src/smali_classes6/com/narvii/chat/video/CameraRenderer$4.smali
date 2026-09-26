.class Lcom/narvii/chat/video/CameraRenderer$4;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/CameraRenderer$4;->this$0:Lcom/narvii/chat/video/CameraRenderer;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/CameraRenderer$4;->this$0:Lcom/narvii/chat/video/CameraRenderer;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/chat/video/CameraRenderer;->statusListener:Lcom/narvii/chat/video/CameraRenderer$ICustomCameraPreviewStatusListener;

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lcom/narvii/chat/video/CameraRenderer$ICustomCameraPreviewStatusListener;->onInitResourceFail()V

    .line 8
    return-void
.end method
