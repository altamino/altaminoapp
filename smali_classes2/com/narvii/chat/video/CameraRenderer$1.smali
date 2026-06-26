.class Lcom/narvii/chat/video/CameraRenderer$1;
.super Ljava/lang/Object;
.source "CameraRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/CameraRenderer;->onStartSuccess()V
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

    .line 299
    iput-object p1, p0, Lcom/narvii/chat/video/CameraRenderer$1;->this$0:Lcom/narvii/chat/video/CameraRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 302
    iget-object v0, p0, Lcom/narvii/chat/video/CameraRenderer$1;->this$0:Lcom/narvii/chat/video/CameraRenderer;

    invoke-static {v0}, Lcom/narvii/chat/video/CameraRenderer;->access$000(Lcom/narvii/chat/video/CameraRenderer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 303
    :try_start_0
    iget-object v1, p0, Lcom/narvii/chat/video/CameraRenderer$1;->this$0:Lcom/narvii/chat/video/CameraRenderer;

    invoke-static {v1}, Lcom/narvii/chat/video/CameraRenderer;->access$100(Lcom/narvii/chat/video/CameraRenderer;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 304
    iget-object v1, p0, Lcom/narvii/chat/video/CameraRenderer$1;->this$0:Lcom/narvii/chat/video/CameraRenderer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/narvii/chat/video/CameraRenderer;->access$202(Lcom/narvii/chat/video/CameraRenderer;J)J

    .line 305
    iget-object v1, p0, Lcom/narvii/chat/video/CameraRenderer$1;->this$0:Lcom/narvii/chat/video/CameraRenderer;

    invoke-static {v1}, Lcom/narvii/chat/video/CameraRenderer;->access$300(Lcom/narvii/chat/video/CameraRenderer;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 306
    iget-object v1, p0, Lcom/narvii/chat/video/CameraRenderer$1;->this$0:Lcom/narvii/chat/video/CameraRenderer;

    invoke-static {v1}, Lcom/narvii/chat/video/CameraRenderer;->access$400(Lcom/narvii/chat/video/CameraRenderer;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/chat/video/CameraRenderer$1;->this$0:Lcom/narvii/chat/video/CameraRenderer;

    invoke-static {v2}, Lcom/narvii/chat/video/CameraRenderer;->access$300(Lcom/narvii/chat/video/CameraRenderer;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/narvii/video/ui/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 308
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/video/CameraRenderer$1;->this$0:Lcom/narvii/chat/video/CameraRenderer;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/narvii/chat/video/CameraRenderer;->access$102(Lcom/narvii/chat/video/CameraRenderer;I)I

    .line 309
    iget-object v1, p0, Lcom/narvii/chat/video/CameraRenderer$1;->this$0:Lcom/narvii/chat/video/CameraRenderer;

    invoke-static {v1}, Lcom/narvii/chat/video/CameraRenderer;->access$500(Lcom/narvii/chat/video/CameraRenderer;)Lcom/narvii/util/Callback;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 310
    iget-object v1, p0, Lcom/narvii/chat/video/CameraRenderer$1;->this$0:Lcom/narvii/chat/video/CameraRenderer;

    invoke-static {v1}, Lcom/narvii/chat/video/CameraRenderer;->access$500(Lcom/narvii/chat/video/CameraRenderer;)Lcom/narvii/util/Callback;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 313
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
