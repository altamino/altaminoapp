.class Lio/agora/rtc/video/MediaCodecVideoEncoder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/video/MediaCodecVideoEncoder;->initEncoder(Lio/agora/rtc/video/MediaCodecVideoEncoder$InitParameters;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/rtc/video/MediaCodecVideoEncoder;

.field final synthetic val$initParams:Lio/agora/rtc/video/MediaCodecVideoEncoder$InitParameters;


# direct methods
.method constructor <init>(Lio/agora/rtc/video/MediaCodecVideoEncoder;Lio/agora/rtc/video/MediaCodecVideoEncoder$InitParameters;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$initParams"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$1;->this$0:Lio/agora/rtc/video/MediaCodecVideoEncoder;

    .line 3
    .line 4
    iput-object p2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$1;->val$initParams:Lio/agora/rtc/video/MediaCodecVideoEncoder$InitParameters;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    .line 2
    const-string v0, "MediaCodecVideoEncoder"

    .line 3
    .line 4
    const-string v1, "Init encoder start, in async thread"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    iget-object v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$1;->this$0:Lio/agora/rtc/video/MediaCodecVideoEncoder;

    .line 10
    .line 11
    iget-object v1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$1;->val$initParams:Lio/agora/rtc/video/MediaCodecVideoEncoder$InitParameters;

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->access$000(Lio/agora/rtc/video/MediaCodecVideoEncoder;Lio/agora/rtc/video/MediaCodecVideoEncoder$InitParameters;)Z

    .line 15
    move-result v0

    .line 16
    .line 17
    iget-object v1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$1;->this$0:Lio/agora/rtc/video/MediaCodecVideoEncoder;

    .line 18
    .line 19
    .line 20
    invoke-static {v1}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->access$100(Lio/agora/rtc/video/MediaCodecVideoEncoder;)J

    .line 21
    move-result-wide v2

    .line 22
    .line 23
    .line 24
    invoke-static {v1, v2, v3, v0}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->access$200(Lio/agora/rtc/video/MediaCodecVideoEncoder;JZ)V

    .line 25
    return-void
.end method
