.class final Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/video/widget/MediaRetrieveController2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CutterTimeInfo"
.end annotation


# instance fields
.field private controllerEndMs:J

.field private controllerStartMs:J

.field private cutterEndMs:J

.field private cutterMaxLengthMs:J

.field private cutterMinLengthMs:J

.field private cutterStartMs:J

.field private offset:F

.field private scale:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method private final getTimeForPosition(F)J
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->offset:F

    .line 3
    sub-float/2addr p1, v0

    .line 4
    .line 5
    iget v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->scale:F

    .line 6
    div-float/2addr p1, v0

    .line 7
    float-to-double v0, p1

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 11
    move-result-wide v0

    .line 12
    double-to-float p1, v0

    .line 13
    float-to-long v0, p1

    .line 14
    return-wide v0
.end method


# virtual methods
.method public final getControllerEndMs()J
    .locals 2

    iget-wide v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->controllerEndMs:J

    return-wide v0
.end method

.method public final getControllerStartMs()J
    .locals 2

    iget-wide v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->controllerStartMs:J

    return-wide v0
.end method

.method public final getCutterEndMs()J
    .locals 2

    iget-wide v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->cutterEndMs:J

    return-wide v0
.end method

.method public final getCutterMaxLengthMs()J
    .locals 2

    iget-wide v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->cutterMaxLengthMs:J

    return-wide v0
.end method

.method public final getCutterMinLengthMs()J
    .locals 2

    iget-wide v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->cutterMinLengthMs:J

    return-wide v0
.end method

.method public final getCutterStartMs()J
    .locals 2

    iget-wide v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->cutterStartMs:J

    return-wide v0
.end method

.method public final getLengthInController(J)F
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->scale:F

    .line 3
    long-to-float p1, p1

    .line 4
    mul-float/2addr v0, p1

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public final getPositionForTime(J)F
    .locals 1

    iget v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->scale:F

    long-to-float p1, p1

    mul-float/2addr v0, p1

    iget p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->offset:F

    add-float/2addr v0, p1

    return v0
.end method

.method public final setControllerEndMs(J)V
    .locals 0

    iput-wide p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->controllerEndMs:J

    return-void
.end method

.method public final setControllerStartMs(J)V
    .locals 0

    iput-wide p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->controllerStartMs:J

    return-void
.end method

.method public final setCutterEndMs(J)V
    .locals 0

    iput-wide p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->cutterEndMs:J

    return-void
.end method

.method public final setCutterMaxLengthMs(J)V
    .locals 0

    iput-wide p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->cutterMaxLengthMs:J

    return-void
.end method

.method public final setCutterMinLengthMs(J)V
    .locals 0

    iput-wide p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->cutterMinLengthMs:J

    return-void
.end method

.method public final setCutterStartMs(J)V
    .locals 0

    iput-wide p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->cutterStartMs:J

    return-void
.end method

.method public final shift(J)V
    .locals 2

    iget-wide v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->controllerStartMs:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->controllerStartMs:J

    iget-wide v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->controllerEndMs:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->controllerEndMs:J

    iget-wide v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->cutterStartMs:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->cutterStartMs:J

    iget-wide v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->cutterEndMs:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->cutterEndMs:J

    return-void
.end method

.method public final updateCutterTime(FF)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p2}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getTimeForPosition(F)J

    .line 10
    move-result-wide v0

    .line 11
    .line 12
    iput-wide v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->cutterStartMs:J

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getTimeForPosition(F)J

    .line 16
    move-result-wide p1

    .line 17
    .line 18
    iput-wide p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->cutterEndMs:J

    .line 19
    goto :goto_0

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getTimeForPosition(F)J

    .line 23
    move-result-wide v0

    .line 24
    .line 25
    iput-wide v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->cutterStartMs:J

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, p2}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getTimeForPosition(F)J

    .line 29
    move-result-wide p1

    .line 30
    .line 31
    iput-wide p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->cutterEndMs:J

    .line 32
    :goto_0
    return-void
.end method

.method public final updateScale(II)V
    .locals 4

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->controllerStartMs:J

    .line 3
    .line 4
    iget-wide v2, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->controllerEndMs:J

    .line 5
    .line 6
    cmp-long v2, v0, v2

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    const/4 p1, 0x0

    .line 10
    .line 11
    iput p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->scale:F

    .line 12
    long-to-float p1, v0

    .line 13
    .line 14
    iput p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->offset:F

    .line 15
    goto :goto_0

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 19
    move-result v0

    .line 20
    .line 21
    const/high16 v1, 0x3f800000    # 1.0f

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    sub-int/2addr p2, p1

    .line 25
    int-to-float p2, p2

    .line 26
    mul-float/2addr p2, v1

    .line 27
    .line 28
    iget-wide v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->controllerStartMs:J

    .line 29
    .line 30
    iget-wide v2, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->controllerEndMs:J

    .line 31
    sub-long/2addr v0, v2

    .line 32
    long-to-float v0, v0

    .line 33
    div-float/2addr p2, v0

    .line 34
    .line 35
    iput p2, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->scale:F

    .line 36
    int-to-float p1, p1

    .line 37
    long-to-float v0, v2

    .line 38
    mul-float/2addr p2, v0

    .line 39
    sub-float/2addr p1, p2

    .line 40
    .line 41
    iput p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->offset:F

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    sub-int/2addr p2, p1

    .line 44
    int-to-float p2, p2

    .line 45
    mul-float/2addr p2, v1

    .line 46
    .line 47
    iget-wide v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->controllerEndMs:J

    .line 48
    .line 49
    iget-wide v2, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->controllerStartMs:J

    .line 50
    sub-long/2addr v0, v2

    .line 51
    long-to-float v0, v0

    .line 52
    div-float/2addr p2, v0

    .line 53
    .line 54
    iput p2, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->scale:F

    .line 55
    int-to-float p1, p1

    .line 56
    long-to-float v0, v2

    .line 57
    mul-float/2addr p2, v0

    .line 58
    sub-float/2addr p1, p2

    .line 59
    .line 60
    iput p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->offset:F

    .line 61
    :goto_0
    return-void
.end method
