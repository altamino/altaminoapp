.class Lcom/narvii/chat/video/CameraRenderer$2;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/CameraRenderer$2;->this$0:Lcom/narvii/chat/video/CameraRenderer;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/CameraRenderer$2;->this$0:Lcom/narvii/chat/video/CameraRenderer;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/video/CameraRenderer;->e(Lcom/narvii/chat/video/CameraRenderer;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/narvii/chat/video/CameraRenderer$2;->this$0:Lcom/narvii/chat/video/CameraRenderer;

    .line 10
    .line 11
    .line 12
    invoke-static {v1}, Lcom/narvii/chat/video/CameraRenderer;->f(Lcom/narvii/chat/video/CameraRenderer;)I

    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x1

    .line 15
    .line 16
    if-ne v1, v2, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/chat/video/CameraRenderer$2;->this$0:Lcom/narvii/chat/video/CameraRenderer;

    .line 19
    const/4 v3, 0x0

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v3}, Lcom/narvii/chat/video/CameraRenderer;->j(Lcom/narvii/chat/video/CameraRenderer;I)V

    .line 23
    .line 24
    iget-object v1, p0, Lcom/narvii/chat/video/CameraRenderer$2;->this$0:Lcom/narvii/chat/video/CameraRenderer;

    .line 25
    .line 26
    .line 27
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 28
    move-result-wide v4

    .line 29
    .line 30
    .line 31
    invoke-static {v1, v4, v5}, Lcom/narvii/chat/video/CameraRenderer;->k(Lcom/narvii/chat/video/CameraRenderer;J)V

    .line 32
    .line 33
    iget-object v1, p0, Lcom/narvii/chat/video/CameraRenderer$2;->this$0:Lcom/narvii/chat/video/CameraRenderer;

    .line 34
    .line 35
    .line 36
    invoke-static {v1}, Lcom/narvii/chat/video/CameraRenderer;->d(Lcom/narvii/chat/video/CameraRenderer;)Lcom/narvii/util/Callback;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    iget-object v1, p0, Lcom/narvii/chat/video/CameraRenderer$2;->this$0:Lcom/narvii/chat/video/CameraRenderer;

    .line 42
    .line 43
    .line 44
    invoke-static {v1}, Lcom/narvii/chat/video/CameraRenderer;->d(Lcom/narvii/chat/video/CameraRenderer;)Lcom/narvii/util/Callback;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    .line 48
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object v3

    .line 50
    .line 51
    .line 52
    invoke-interface {v1, v3}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception v1

    .line 55
    goto :goto_1

    .line 56
    .line 57
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/narvii/chat/video/CameraRenderer$2;->this$0:Lcom/narvii/chat/video/CameraRenderer;

    .line 58
    .line 59
    .line 60
    invoke-static {v1}, Lcom/narvii/chat/video/CameraRenderer;->a(Lcom/narvii/chat/video/CameraRenderer;)Lcom/narvii/video/gles/FullFrameRect;

    .line 61
    move-result-object v1

    .line 62
    const/4 v3, 0x0

    .line 63
    .line 64
    if-eqz v1, :cond_1

    .line 65
    .line 66
    iget-object v1, p0, Lcom/narvii/chat/video/CameraRenderer$2;->this$0:Lcom/narvii/chat/video/CameraRenderer;

    .line 67
    .line 68
    .line 69
    invoke-static {v1}, Lcom/narvii/chat/video/CameraRenderer;->a(Lcom/narvii/chat/video/CameraRenderer;)Lcom/narvii/video/gles/FullFrameRect;

    .line 70
    move-result-object v1

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v2}, Lcom/narvii/video/gles/FullFrameRect;->release(Z)V

    .line 74
    .line 75
    iget-object v1, p0, Lcom/narvii/chat/video/CameraRenderer$2;->this$0:Lcom/narvii/chat/video/CameraRenderer;

    .line 76
    .line 77
    .line 78
    invoke-static {v1, v3}, Lcom/narvii/chat/video/CameraRenderer;->h(Lcom/narvii/chat/video/CameraRenderer;Lcom/narvii/video/gles/FullFrameRect;)V

    .line 79
    .line 80
    :cond_1
    iget-object v1, p0, Lcom/narvii/chat/video/CameraRenderer$2;->this$0:Lcom/narvii/chat/video/CameraRenderer;

    .line 81
    .line 82
    .line 83
    invoke-static {v1}, Lcom/narvii/chat/video/CameraRenderer;->g(Lcom/narvii/chat/video/CameraRenderer;)Lcom/narvii/chat/p2a/encoder/Watermark;

    .line 84
    move-result-object v1

    .line 85
    .line 86
    if-eqz v1, :cond_2

    .line 87
    .line 88
    iget-object v1, p0, Lcom/narvii/chat/video/CameraRenderer$2;->this$0:Lcom/narvii/chat/video/CameraRenderer;

    .line 89
    .line 90
    .line 91
    invoke-static {v1}, Lcom/narvii/chat/video/CameraRenderer;->g(Lcom/narvii/chat/video/CameraRenderer;)Lcom/narvii/chat/p2a/encoder/Watermark;

    .line 92
    move-result-object v1

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1}, Lcom/narvii/chat/p2a/encoder/Watermark;->destory()V

    .line 96
    .line 97
    iget-object v1, p0, Lcom/narvii/chat/video/CameraRenderer$2;->this$0:Lcom/narvii/chat/video/CameraRenderer;

    .line 98
    .line 99
    .line 100
    invoke-static {v1, v3}, Lcom/narvii/chat/video/CameraRenderer;->l(Lcom/narvii/chat/video/CameraRenderer;Lcom/narvii/chat/p2a/encoder/Watermark;)V

    .line 101
    :cond_2
    monitor-exit v0

    .line 102
    return-void

    .line 103
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    throw v1
.end method
