.class Lio/agora/rtc/video/MediaCodecVideoEncoder$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/video/MediaCodecVideoEncoder;->setRates(II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/rtc/video/MediaCodecVideoEncoder;

.field final synthetic val$Kbps:I

.field final synthetic val$fps:I


# direct methods
.method constructor <init>(Lio/agora/rtc/video/MediaCodecVideoEncoder;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$fps",
            "val$Kbps"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$6;->this$0:Lio/agora/rtc/video/MediaCodecVideoEncoder;

    .line 3
    .line 4
    iput p2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$6;->val$Kbps:I

    .line 5
    .line 6
    iput p3, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$6;->val$fps:I

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$6;->this$0:Lio/agora/rtc/video/MediaCodecVideoEncoder;

    .line 3
    .line 4
    iget v1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$6;->val$Kbps:I

    .line 5
    .line 6
    iget v2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$6;->val$fps:I

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1, v2}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->access$700(Lio/agora/rtc/video/MediaCodecVideoEncoder;II)I

    .line 10
    move-result v0

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    const-string v2, "setRates async, ret: "

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    const-string v2, "MediaCodecVideoEncoder"

    .line 30
    .line 31
    .line 32
    invoke-static {v2, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    iget-object v1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$6;->this$0:Lio/agora/rtc/video/MediaCodecVideoEncoder;

    .line 35
    .line 36
    .line 37
    invoke-static {v1}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->access$100(Lio/agora/rtc/video/MediaCodecVideoEncoder;)J

    .line 38
    move-result-wide v2

    .line 39
    .line 40
    .line 41
    invoke-static {v1, v2, v3, v0}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->access$800(Lio/agora/rtc/video/MediaCodecVideoEncoder;JI)V

    .line 42
    return-void
.end method
