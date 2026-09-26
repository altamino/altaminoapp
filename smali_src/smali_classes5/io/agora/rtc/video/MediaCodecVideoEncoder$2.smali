.class Lio/agora/rtc/video/MediaCodecVideoEncoder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/video/MediaCodecVideoEncoder;->encodeBuffer(ZIIIJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/rtc/video/MediaCodecVideoEncoder;

.field final synthetic val$inputBuffer:I

.field final synthetic val$isKeyframe:Z

.field final synthetic val$presentationTimestampUs:J

.field final synthetic val$rotation:I

.field final synthetic val$size:I


# direct methods
.method constructor <init>(Lio/agora/rtc/video/MediaCodecVideoEncoder;ZIIIJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$presentationTimestampUs",
            "val$rotation",
            "val$size",
            "val$inputBuffer",
            "val$isKeyframe"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$2;->this$0:Lio/agora/rtc/video/MediaCodecVideoEncoder;

    .line 3
    .line 4
    iput-boolean p2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$2;->val$isKeyframe:Z

    .line 5
    .line 6
    iput p3, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$2;->val$inputBuffer:I

    .line 7
    .line 8
    iput p4, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$2;->val$size:I

    .line 9
    .line 10
    iput p5, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$2;->val$rotation:I

    .line 11
    .line 12
    iput-wide p6, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$2;->val$presentationTimestampUs:J

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$2;->this$0:Lio/agora/rtc/video/MediaCodecVideoEncoder;

    .line 3
    .line 4
    iget-boolean v1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$2;->val$isKeyframe:Z

    .line 5
    .line 6
    iget v2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$2;->val$inputBuffer:I

    .line 7
    .line 8
    iget v3, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$2;->val$size:I

    .line 9
    .line 10
    iget v4, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$2;->val$rotation:I

    .line 11
    .line 12
    iget-wide v5, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$2;->val$presentationTimestampUs:J

    .line 13
    .line 14
    .line 15
    invoke-virtual/range {v0 .. v6}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->encodeBuffer(ZIIIJ)Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$2;->this$0:Lio/agora/rtc/video/MediaCodecVideoEncoder;

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->access$100(Lio/agora/rtc/video/MediaCodecVideoEncoder;)J

    .line 24
    move-result-wide v1

    .line 25
    const/4 v3, 0x0

    .line 26
    const/4 v4, 0x0

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v1, v2, v3, v4}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->access$400(Lio/agora/rtc/video/MediaCodecVideoEncoder;JZLio/agora/rtc/video/MediaCodecVideoEncoder$OutputBufferInfo;)V

    .line 30
    :cond_0
    return-void
.end method
