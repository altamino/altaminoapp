.class final Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;
.super Ljava/lang/Object;
.source "MediaRetrieveController2.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/video/widget/MediaRetrieveController2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CutterTimeInfo"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaRetrieveController2.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaRetrieveController2.kt\ncom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo\n*L\n1#1,497:1\n*E\n"
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

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getTimeForPosition(F)J
    .locals 2

    .line 358
    iget v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->offset:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->scale:F

    div-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float p1, v0

    float-to-long v0, p1

    return-wide v0
.end method


# virtual methods
.method public final getControllerEndMs()J
    .locals 2

    .line 313
    iget-wide v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->controllerEndMs:J

    return-wide v0
.end method

.method public final getControllerStartMs()J
    .locals 2

    .line 312
    iget-wide v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->controllerStartMs:J

    return-wide v0
.end method

.method public final getCutterEndMs()J
    .locals 2

    .line 315
    iget-wide v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->cutterEndMs:J

    return-wide v0
.end method

.method public final getCutterMaxLengthMs()J
    .locals 2

    .line 317
    iget-wide v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->cutterMaxLengthMs:J

    return-wide v0
.end method

.method public final getCutterMinLengthMs()J
    .locals 2

    .line 316
    iget-wide v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->cutterMinLengthMs:J

    return-wide v0
.end method

.method public final getCutterStartMs()J
    .locals 2

    .line 314
    iget-wide v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->cutterStartMs:J

    return-wide v0
.end method

.method public final getLengthInController(J)F
    .locals 1

    .line 349
    iget v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->scale:F

    long-to-float p1, p1

    mul-float v0, v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    return p1
.end method

.method public final getPositionForTime(J)F
    .locals 1

    .line 337
    iget v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->scale:F

    long-to-float p1, p1

    mul-float v0, v0, p1

    iget p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->offset:F

    add-float/2addr v0, p1

    return v0
.end method

.method public final setControllerEndMs(J)V
    .locals 0

    .line 313
    iput-wide p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->controllerEndMs:J

    return-void
.end method

.method public final setControllerStartMs(J)V
    .locals 0

    .line 312
    iput-wide p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->controllerStartMs:J

    return-void
.end method

.method public final setCutterEndMs(J)V
    .locals 0

    .line 315
    iput-wide p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->cutterEndMs:J

    return-void
.end method

.method public final setCutterMaxLengthMs(J)V
    .locals 0

    .line 317
    iput-wide p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->cutterMaxLengthMs:J

    return-void
.end method

.method public final setCutterMinLengthMs(J)V
    .locals 0

    .line 316
    iput-wide p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->cutterMinLengthMs:J

    return-void
.end method

.method public final setCutterStartMs(J)V
    .locals 0

    .line 314
    iput-wide p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->cutterStartMs:J

    return-void
.end method

.method public final shift(J)V
    .locals 2

    .line 352
    iget-wide v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->controllerStartMs:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->controllerStartMs:J

    .line 353
    iget-wide v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->controllerEndMs:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->controllerEndMs:J

    .line 354
    iget-wide v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->cutterStartMs:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->cutterStartMs:J

    .line 355
    iget-wide v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->cutterEndMs:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->cutterEndMs:J

    return-void
.end method

.method public final updateCutterTime(FF)V
    .locals 2

    .line 340
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    invoke-direct {p0, p2}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getTimeForPosition(F)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->cutterStartMs:J

    .line 342
    invoke-direct {p0, p1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getTimeForPosition(F)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->cutterEndMs:J

    goto :goto_0

    .line 344
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getTimeForPosition(F)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->cutterStartMs:J

    .line 345
    invoke-direct {p0, p2}, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->getTimeForPosition(F)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->cutterEndMs:J

    :goto_0
    return-void
.end method

.method public final updateScale(II)V
    .locals 5

    .line 323
    iget-wide v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->controllerStartMs:J

    iget-wide v2, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->controllerEndMs:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, 0x0

    .line 324
    iput p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->scale:F

    long-to-float p1, v0

    .line 325
    iput p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->offset:F

    goto :goto_0

    .line 327
    :cond_0
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    sub-int/2addr p2, p1

    int-to-float p2, p2

    mul-float p2, p2, v1

    .line 328
    iget-wide v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->controllerStartMs:J

    iget-wide v2, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->controllerEndMs:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    div-float/2addr p2, v0

    iput p2, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->scale:F

    int-to-float p1, p1

    .line 329
    iget p2, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->scale:F

    long-to-float v0, v2

    mul-float p2, p2, v0

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->offset:F

    goto :goto_0

    :cond_1
    sub-int/2addr p2, p1

    int-to-float p2, p2

    mul-float p2, p2, v1

    .line 331
    iget-wide v0, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->controllerEndMs:J

    iget-wide v2, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->controllerStartMs:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    div-float/2addr p2, v0

    iput p2, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->scale:F

    int-to-float p1, p1

    .line 332
    iget p2, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->scale:F

    long-to-float v0, v2

    mul-float p2, p2, v0

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/narvii/video/widget/MediaRetrieveController2$CutterTimeInfo;->offset:F

    :goto_0
    return-void
.end method
