.class Lcom/narvii/chat/video/CameraRenderer$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/CameraRenderer$1;->this$0:Lcom/narvii/chat/video/CameraRenderer;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/CameraRenderer$1;->this$0:Lcom/narvii/chat/video/CameraRenderer;

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
    iget-object v1, p0, Lcom/narvii/chat/video/CameraRenderer$1;->this$0:Lcom/narvii/chat/video/CameraRenderer;

    .line 10
    .line 11
    .line 12
    invoke-static {v1}, Lcom/narvii/chat/video/CameraRenderer;->f(Lcom/narvii/chat/video/CameraRenderer;)I

    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x2

    .line 15
    .line 16
    if-ne v1, v2, :cond_1

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/chat/video/CameraRenderer$1;->this$0:Lcom/narvii/chat/video/CameraRenderer;

    .line 19
    .line 20
    .line 21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 22
    move-result-wide v2

    .line 23
    .line 24
    .line 25
    invoke-static {v1, v2, v3}, Lcom/narvii/chat/video/CameraRenderer;->i(Lcom/narvii/chat/video/CameraRenderer;J)V

    .line 26
    .line 27
    iget-object v1, p0, Lcom/narvii/chat/video/CameraRenderer$1;->this$0:Lcom/narvii/chat/video/CameraRenderer;

    .line 28
    .line 29
    .line 30
    invoke-static {v1}, Lcom/narvii/chat/video/CameraRenderer;->b(Lcom/narvii/chat/video/CameraRenderer;)J

    .line 31
    move-result-wide v1

    .line 32
    .line 33
    const-wide/16 v3, 0x0

    .line 34
    .line 35
    cmp-long v1, v1, v3

    .line 36
    .line 37
    if-lez v1, :cond_0

    .line 38
    .line 39
    iget-object v1, p0, Lcom/narvii/chat/video/CameraRenderer$1;->this$0:Lcom/narvii/chat/video/CameraRenderer;

    .line 40
    .line 41
    .line 42
    invoke-static {v1}, Lcom/narvii/chat/video/CameraRenderer;->c(Lcom/narvii/chat/video/CameraRenderer;)Ljava/lang/Runnable;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    iget-object v2, p0, Lcom/narvii/chat/video/CameraRenderer$1;->this$0:Lcom/narvii/chat/video/CameraRenderer;

    .line 46
    .line 47
    .line 48
    invoke-static {v2}, Lcom/narvii/chat/video/CameraRenderer;->b(Lcom/narvii/chat/video/CameraRenderer;)J

    .line 49
    move-result-wide v2

    .line 50
    .line 51
    .line 52
    invoke-static {v1, v2, v3}, Lcom/narvii/video/ui/Utils;->postDelayed(Ljava/lang/Runnable;J)V

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
    iget-object v1, p0, Lcom/narvii/chat/video/CameraRenderer$1;->this$0:Lcom/narvii/chat/video/CameraRenderer;

    .line 58
    const/4 v2, 0x3

    .line 59
    .line 60
    .line 61
    invoke-static {v1, v2}, Lcom/narvii/chat/video/CameraRenderer;->j(Lcom/narvii/chat/video/CameraRenderer;I)V

    .line 62
    .line 63
    iget-object v1, p0, Lcom/narvii/chat/video/CameraRenderer$1;->this$0:Lcom/narvii/chat/video/CameraRenderer;

    .line 64
    .line 65
    .line 66
    invoke-static {v1}, Lcom/narvii/chat/video/CameraRenderer;->d(Lcom/narvii/chat/video/CameraRenderer;)Lcom/narvii/util/Callback;

    .line 67
    move-result-object v1

    .line 68
    .line 69
    if-eqz v1, :cond_1

    .line 70
    .line 71
    iget-object v1, p0, Lcom/narvii/chat/video/CameraRenderer$1;->this$0:Lcom/narvii/chat/video/CameraRenderer;

    .line 72
    .line 73
    .line 74
    invoke-static {v1}, Lcom/narvii/chat/video/CameraRenderer;->d(Lcom/narvii/chat/video/CameraRenderer;)Lcom/narvii/util/Callback;

    .line 75
    move-result-object v1

    .line 76
    .line 77
    .line 78
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    move-result-object v2

    .line 80
    .line 81
    .line 82
    invoke-interface {v1, v2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 83
    :cond_1
    monitor-exit v0

    .line 84
    return-void

    .line 85
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    throw v1
.end method
