.class Lcom/narvii/media/MediaRecordManager$2;
.super Ljava/lang/Object;
.source "MediaRecordManager.java"

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

    .line 59
    iput-object p1, p0, Lcom/narvii/media/MediaRecordManager$2;->this$0:Lcom/narvii/media/MediaRecordManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 62
    iget-object v0, p0, Lcom/narvii/media/MediaRecordManager$2;->this$0:Lcom/narvii/media/MediaRecordManager;

    invoke-static {v0}, Lcom/narvii/media/MediaRecordManager;->access$000(Lcom/narvii/media/MediaRecordManager;)Landroid/media/MediaRecorder;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/media/MediaRecordManager$2;->this$0:Lcom/narvii/media/MediaRecordManager;

    invoke-virtual {v0}, Lcom/narvii/media/MediaRecordManager;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/narvii/media/MediaRecordManager$2;->this$0:Lcom/narvii/media/MediaRecordManager;

    invoke-static {v0}, Lcom/narvii/media/MediaRecordManager;->access$100(Lcom/narvii/media/MediaRecordManager;)Lcom/narvii/media/IMediaRecordListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/narvii/media/MediaRecordManager$2;->this$0:Lcom/narvii/media/MediaRecordManager;

    invoke-static {v0}, Lcom/narvii/media/MediaRecordManager;->access$100(Lcom/narvii/media/MediaRecordManager;)Lcom/narvii/media/IMediaRecordListener;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/narvii/media/MediaRecordManager$2;->this$0:Lcom/narvii/media/MediaRecordManager;

    invoke-static {v3}, Lcom/narvii/media/MediaRecordManager;->access$200(Lcom/narvii/media/MediaRecordManager;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-interface {v0, v1, v2}, Lcom/narvii/media/IMediaRecordListener;->onRecordTimeChange(J)V

    .line 66
    :cond_0
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
