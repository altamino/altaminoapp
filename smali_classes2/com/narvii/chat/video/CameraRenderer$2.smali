.class Lcom/narvii/chat/video/CameraRenderer$2;
.super Ljava/lang/Object;
.source "CameraRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/CameraRenderer;->onStopSuccess()V
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

    .line 320
    iput-object p1, p0, Lcom/narvii/chat/video/CameraRenderer$2;->this$0:Lcom/narvii/chat/video/CameraRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 323
    iget-object v0, p0, Lcom/narvii/chat/video/CameraRenderer$2;->this$0:Lcom/narvii/chat/video/CameraRenderer;

    invoke-static {v0}, Lcom/narvii/chat/video/CameraRenderer;->access$000(Lcom/narvii/chat/video/CameraRenderer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 324
    :try_start_0
    iget-object v1, p0, Lcom/narvii/chat/video/CameraRenderer$2;->this$0:Lcom/narvii/chat/video/CameraRenderer;

    invoke-static {v1}, Lcom/narvii/chat/video/CameraRenderer;->access$100(Lcom/narvii/chat/video/CameraRenderer;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 325
    iget-object v1, p0, Lcom/narvii/chat/video/CameraRenderer$2;->this$0:Lcom/narvii/chat/video/CameraRenderer;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/narvii/chat/video/CameraRenderer;->access$102(Lcom/narvii/chat/video/CameraRenderer;I)I

    .line 326
    iget-object v1, p0, Lcom/narvii/chat/video/CameraRenderer$2;->this$0:Lcom/narvii/chat/video/CameraRenderer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lcom/narvii/chat/video/CameraRenderer;->access$602(Lcom/narvii/chat/video/CameraRenderer;J)J

    .line 327
    iget-object v1, p0, Lcom/narvii/chat/video/CameraRenderer$2;->this$0:Lcom/narvii/chat/video/CameraRenderer;

    invoke-static {v1}, Lcom/narvii/chat/video/CameraRenderer;->access$500(Lcom/narvii/chat/video/CameraRenderer;)Lcom/narvii/util/Callback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 328
    iget-object v1, p0, Lcom/narvii/chat/video/CameraRenderer$2;->this$0:Lcom/narvii/chat/video/CameraRenderer;

    invoke-static {v1}, Lcom/narvii/chat/video/CameraRenderer;->access$500(Lcom/narvii/chat/video/CameraRenderer;)Lcom/narvii/util/Callback;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 331
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/video/CameraRenderer$2;->this$0:Lcom/narvii/chat/video/CameraRenderer;

    invoke-static {v1}, Lcom/narvii/chat/video/CameraRenderer;->access$700(Lcom/narvii/chat/video/CameraRenderer;)Lcom/narvii/video/gles/FullFrameRect;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 332
    iget-object v1, p0, Lcom/narvii/chat/video/CameraRenderer$2;->this$0:Lcom/narvii/chat/video/CameraRenderer;

    invoke-static {v1}, Lcom/narvii/chat/video/CameraRenderer;->access$700(Lcom/narvii/chat/video/CameraRenderer;)Lcom/narvii/video/gles/FullFrameRect;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/narvii/video/gles/FullFrameRect;->release(Z)V

    .line 333
    iget-object v1, p0, Lcom/narvii/chat/video/CameraRenderer$2;->this$0:Lcom/narvii/chat/video/CameraRenderer;

    invoke-static {v1, v3}, Lcom/narvii/chat/video/CameraRenderer;->access$702(Lcom/narvii/chat/video/CameraRenderer;Lcom/narvii/video/gles/FullFrameRect;)Lcom/narvii/video/gles/FullFrameRect;

    .line 335
    :cond_1
    iget-object v1, p0, Lcom/narvii/chat/video/CameraRenderer$2;->this$0:Lcom/narvii/chat/video/CameraRenderer;

    invoke-static {v1}, Lcom/narvii/chat/video/CameraRenderer;->access$800(Lcom/narvii/chat/video/CameraRenderer;)Lcom/narvii/chat/p2a/encoder/Watermark;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 336
    iget-object v1, p0, Lcom/narvii/chat/video/CameraRenderer$2;->this$0:Lcom/narvii/chat/video/CameraRenderer;

    invoke-static {v1}, Lcom/narvii/chat/video/CameraRenderer;->access$800(Lcom/narvii/chat/video/CameraRenderer;)Lcom/narvii/chat/p2a/encoder/Watermark;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/chat/p2a/encoder/Watermark;->destory()V

    .line 337
    iget-object v1, p0, Lcom/narvii/chat/video/CameraRenderer$2;->this$0:Lcom/narvii/chat/video/CameraRenderer;

    invoke-static {v1, v3}, Lcom/narvii/chat/video/CameraRenderer;->access$802(Lcom/narvii/chat/video/CameraRenderer;Lcom/narvii/chat/p2a/encoder/Watermark;)Lcom/narvii/chat/p2a/encoder/Watermark;

    .line 339
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
