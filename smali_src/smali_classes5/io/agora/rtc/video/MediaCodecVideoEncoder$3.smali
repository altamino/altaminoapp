.class Lio/agora/rtc/video/MediaCodecVideoEncoder$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/video/MediaCodecVideoEncoder;->encodeTexture(ZII[FIIIIIJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/rtc/video/MediaCodecVideoEncoder;

.field final synthetic val$actual_height:I

.field final synthetic val$actual_width:I

.field final synthetic val$isKeyframe:Z

.field final synthetic val$oesTextureId:I

.field final synthetic val$presentationTimestampUs:J

.field final synthetic val$rotation:I

.field final synthetic val$textureHeight:I

.field final synthetic val$textureType:I

.field final synthetic val$textureWidth:I

.field final synthetic val$transformationMatrix:[F


# direct methods
.method constructor <init>(Lio/agora/rtc/video/MediaCodecVideoEncoder;ZII[FIIIIIJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
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
            "val$actual_height",
            "val$actual_width",
            "val$textureHeight",
            "val$textureWidth",
            "val$transformationMatrix",
            "val$textureType",
            "val$oesTextureId",
            "val$isKeyframe"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$3;->this$0:Lio/agora/rtc/video/MediaCodecVideoEncoder;

    .line 3
    .line 4
    iput-boolean p2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$3;->val$isKeyframe:Z

    .line 5
    .line 6
    iput p3, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$3;->val$oesTextureId:I

    .line 7
    .line 8
    iput p4, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$3;->val$textureType:I

    .line 9
    .line 10
    iput-object p5, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$3;->val$transformationMatrix:[F

    .line 11
    .line 12
    iput p6, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$3;->val$textureWidth:I

    .line 13
    .line 14
    iput p7, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$3;->val$textureHeight:I

    .line 15
    .line 16
    iput p8, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$3;->val$actual_width:I

    .line 17
    .line 18
    iput p9, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$3;->val$actual_height:I

    .line 19
    .line 20
    iput p10, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$3;->val$rotation:I

    .line 21
    .line 22
    iput-wide p11, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$3;->val$presentationTimestampUs:J

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$3;->this$0:Lio/agora/rtc/video/MediaCodecVideoEncoder;

    .line 3
    .line 4
    iget-boolean v1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$3;->val$isKeyframe:Z

    .line 5
    .line 6
    iget v2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$3;->val$oesTextureId:I

    .line 7
    .line 8
    iget v3, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$3;->val$textureType:I

    .line 9
    .line 10
    iget-object v4, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$3;->val$transformationMatrix:[F

    .line 11
    .line 12
    iget v5, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$3;->val$textureWidth:I

    .line 13
    .line 14
    iget v6, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$3;->val$textureHeight:I

    .line 15
    .line 16
    iget v7, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$3;->val$actual_width:I

    .line 17
    .line 18
    iget v8, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$3;->val$actual_height:I

    .line 19
    .line 20
    iget v9, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$3;->val$rotation:I

    .line 21
    .line 22
    iget-wide v10, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$3;->val$presentationTimestampUs:J

    .line 23
    .line 24
    .line 25
    invoke-virtual/range {v0 .. v11}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->encodeTexture(ZII[FIIIIIJ)Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$3;->this$0:Lio/agora/rtc/video/MediaCodecVideoEncoder;

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->access$100(Lio/agora/rtc/video/MediaCodecVideoEncoder;)J

    .line 34
    move-result-wide v1

    .line 35
    const/4 v3, 0x0

    .line 36
    const/4 v4, 0x0

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v1, v2, v3, v4}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->access$400(Lio/agora/rtc/video/MediaCodecVideoEncoder;JZLio/agora/rtc/video/MediaCodecVideoEncoder$OutputBufferInfo;)V

    .line 40
    :cond_0
    return-void
.end method
