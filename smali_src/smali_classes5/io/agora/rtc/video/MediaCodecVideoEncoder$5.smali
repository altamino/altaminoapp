.class Lio/agora/rtc/video/MediaCodecVideoEncoder$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/video/MediaCodecVideoEncoder;->releaseEncoderTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/rtc/video/MediaCodecVideoEncoder;

.field final synthetic val$caughtException:Lio/agora/rtc/video/MediaCodecVideoEncoder$1CaughtException;

.field final synthetic val$releaseDone:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lio/agora/rtc/video/MediaCodecVideoEncoder;Lio/agora/rtc/video/MediaCodecVideoEncoder$1CaughtException;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$releaseDone",
            "val$caughtException"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$5;->this$0:Lio/agora/rtc/video/MediaCodecVideoEncoder;

    .line 3
    .line 4
    iput-object p2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$5;->val$caughtException:Lio/agora/rtc/video/MediaCodecVideoEncoder$1CaughtException;

    .line 5
    .line 6
    iput-object p3, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$5;->val$releaseDone:Ljava/util/concurrent/CountDownLatch;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    .line 2
    const-string v0, "Java releaseEncoder on release thread"

    .line 3
    .line 4
    const-string v1, "MediaCodecVideoEncoder"

    .line 5
    .line 6
    .line 7
    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    :try_start_0
    iget-object v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$5;->this$0:Lio/agora/rtc/video/MediaCodecVideoEncoder;

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->access$600(Lio/agora/rtc/video/MediaCodecVideoEncoder;)Landroid/media/MediaCodec;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    .line 20
    const-string v2, "Media encoder stop failed"

    .line 21
    .line 22
    .line 23
    invoke-static {v1, v2, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    .line 25
    :goto_0
    :try_start_1
    iget-object v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$5;->this$0:Lio/agora/rtc/video/MediaCodecVideoEncoder;

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->access$600(Lio/agora/rtc/video/MediaCodecVideoEncoder;)Landroid/media/MediaCodec;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 33
    goto :goto_1

    .line 34
    :catch_1
    move-exception v0

    .line 35
    .line 36
    const-string v2, "Media encoder release failed"

    .line 37
    .line 38
    .line 39
    invoke-static {v1, v2, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    .line 41
    iget-object v2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$5;->val$caughtException:Lio/agora/rtc/video/MediaCodecVideoEncoder$1CaughtException;

    .line 42
    .line 43
    iput-object v0, v2, Lio/agora/rtc/video/MediaCodecVideoEncoder$1CaughtException;->e:Ljava/lang/Exception;

    .line 44
    .line 45
    :goto_1
    const-string v0, "Java releaseEncoder on release thread done"

    .line 46
    .line 47
    .line 48
    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    iget-object v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$5;->val$releaseDone:Ljava/util/concurrent/CountDownLatch;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 54
    return-void
.end method
