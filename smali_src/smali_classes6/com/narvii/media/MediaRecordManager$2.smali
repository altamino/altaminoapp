.class Lcom/narvii/media/MediaRecordManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/media/MediaRecordManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/media/MediaRecordManager;


# direct methods
.method constructor <init>(Lcom/narvii/media/MediaRecordManager;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/MediaRecordManager$2;->this$0:Lcom/narvii/media/MediaRecordManager;

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
    iget-object v0, p0, Lcom/narvii/media/MediaRecordManager$2;->this$0:Lcom/narvii/media/MediaRecordManager;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/media/MediaRecordManager;->c(Lcom/narvii/media/MediaRecordManager;)Landroid/media/MediaRecorder;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/media/MediaRecordManager$2;->this$0:Lcom/narvii/media/MediaRecordManager;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/media/MediaRecordManager;->isRecording()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/media/MediaRecordManager$2;->this$0:Lcom/narvii/media/MediaRecordManager;

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lcom/narvii/media/MediaRecordManager;->a(Lcom/narvii/media/MediaRecordManager;)Lcom/narvii/media/IMediaRecordListener;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/media/MediaRecordManager$2;->this$0:Lcom/narvii/media/MediaRecordManager;

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Lcom/narvii/media/MediaRecordManager;->a(Lcom/narvii/media/MediaRecordManager;)Lcom/narvii/media/IMediaRecordListener;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 34
    move-result-wide v1

    .line 35
    .line 36
    iget-object v3, p0, Lcom/narvii/media/MediaRecordManager$2;->this$0:Lcom/narvii/media/MediaRecordManager;

    .line 37
    .line 38
    .line 39
    invoke-static {v3}, Lcom/narvii/media/MediaRecordManager;->d(Lcom/narvii/media/MediaRecordManager;)J

    .line 40
    move-result-wide v3

    .line 41
    sub-long/2addr v1, v3

    .line 42
    .line 43
    .line 44
    invoke-interface {v0, v1, v2}, Lcom/narvii/media/IMediaRecordListener;->onRecordTimeChange(J)V

    .line 45
    .line 46
    :cond_0
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 47
    .line 48
    const-wide/16 v1, 0xc8

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 52
    :cond_1
    return-void
.end method
