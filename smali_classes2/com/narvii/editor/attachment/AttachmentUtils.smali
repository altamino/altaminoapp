.class public Lcom/narvii/editor/attachment/AttachmentUtils;
.super Ljava/lang/Object;
.source "AttachmentUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNvsColor(I)Lcom/meicam/sdk/NvsColor;
    .locals 5

    .line 17
    new-instance v0, Lcom/meicam/sdk/NvsColor;

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v2

    invoke-direct {v0, v1, v3, v4, p0}, Lcom/meicam/sdk/NvsColor;-><init>(FFFF)V

    return-object v0
.end method

.method public static updateTimelineCaption(Lcom/meicam/sdk/NvsTimelineCaption;Lcom/narvii/video/model/Caption;)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-static {p0, p1, v0}, Lcom/narvii/editor/attachment/AttachmentUtils;->updateTimelineCaption(Lcom/meicam/sdk/NvsTimelineCaption;Lcom/narvii/video/model/Caption;Z)V

    return-void
.end method

.method public static updateTimelineCaption(Lcom/meicam/sdk/NvsTimelineCaption;Lcom/narvii/video/model/Caption;Z)V
    .locals 8

    if-eqz p0, :cond_6

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 29
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 31
    iget-object p2, p1, Lcom/narvii/video/model/Caption;->styleId:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/meicam/sdk/NvsTimelineCaption;->applyCaptionStyle(Ljava/lang/String;)Z

    .line 33
    iget p2, p1, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    int-to-long v2, p2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    .line 34
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsTimelineCaption;->getInPoint()J

    move-result-wide v6

    cmp-long p2, v6, v2

    if-eqz p2, :cond_1

    .line 35
    invoke-virtual {p0, v2, v3}, Lcom/meicam/sdk/NvsTimelineCaption;->changeInPoint(J)J

    .line 38
    :cond_1
    iget p2, p1, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    int-to-long v2, p2

    mul-long v2, v2, v4

    iget p2, p1, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    int-to-long v6, p2

    mul-long v6, v6, v4

    add-long/2addr v2, v6

    .line 39
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsTimelineCaption;->getOutPoint()J

    move-result-wide v4

    cmp-long p2, v4, v2

    if-eqz p2, :cond_2

    .line 40
    invoke-virtual {p0, v2, v3}, Lcom/meicam/sdk/NvsTimelineCaption;->changeOutPoint(J)J

    .line 44
    :cond_2
    iget-boolean p2, p1, Lcom/narvii/video/model/Caption;->isBold:Z

    invoke-virtual {p0, p2}, Lcom/meicam/sdk/NvsTimelineCaption;->setBold(Z)V

    .line 45
    iget-object p2, p1, Lcom/narvii/video/model/Caption;->text:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/meicam/sdk/NvsTimelineCaption;->setText(Ljava/lang/String;)V

    .line 46
    iget p2, p1, Lcom/narvii/video/model/Caption;->fontSize:F

    invoke-virtual {p0, p2}, Lcom/meicam/sdk/NvsTimelineCaption;->setFontSize(F)V

    .line 47
    iget p2, p1, Lcom/narvii/video/model/Caption;->textColor:I

    invoke-static {p2}, Lcom/narvii/editor/attachment/AttachmentUtils;->getNvsColor(I)Lcom/meicam/sdk/NvsColor;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/meicam/sdk/NvsTimelineCaption;->setTextColor(Lcom/meicam/sdk/NvsColor;)V

    .line 48
    iget-boolean p2, p1, Lcom/narvii/video/model/Caption;->hasShadow:Z

    invoke-virtual {p0, p2}, Lcom/meicam/sdk/NvsTimelineCaption;->setDrawShadow(Z)V

    .line 49
    iget-object p2, p1, Lcom/narvii/video/model/Caption;->shadowOffset:Landroid/graphics/PointF;

    invoke-virtual {p0, p2}, Lcom/meicam/sdk/NvsTimelineCaption;->setShadowOffset(Landroid/graphics/PointF;)V

    .line 50
    iget p2, p1, Lcom/narvii/video/model/Caption;->shadowColor:I

    invoke-static {p2}, Lcom/narvii/editor/attachment/AttachmentUtils;->getNvsColor(I)Lcom/meicam/sdk/NvsColor;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/meicam/sdk/NvsTimelineCaption;->setShadowColor(Lcom/meicam/sdk/NvsColor;)V

    .line 51
    iget-boolean p2, p1, Lcom/narvii/video/model/Caption;->hasStroke:Z

    invoke-virtual {p0, p2}, Lcom/meicam/sdk/NvsTimelineCaption;->setDrawOutline(Z)V

    .line 52
    iget p2, p1, Lcom/narvii/video/model/Caption;->strokeWidth:F

    invoke-virtual {p0, p2}, Lcom/meicam/sdk/NvsTimelineCaption;->setOutlineWidth(F)V

    .line 53
    iget p2, p1, Lcom/narvii/video/model/Caption;->strokeColor:I

    invoke-static {p2}, Lcom/narvii/editor/attachment/AttachmentUtils;->getNvsColor(I)Lcom/meicam/sdk/NvsColor;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/meicam/sdk/NvsTimelineCaption;->setOutlineColor(Lcom/meicam/sdk/NvsColor;)V

    .line 55
    iget-object p2, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->translation:Landroid/graphics/PointF;

    invoke-virtual {p0, p2}, Lcom/meicam/sdk/NvsTimelineCaption;->setCaptionTranslation(Landroid/graphics/PointF;)V

    .line 56
    iget p2, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleX:F

    invoke-virtual {p0, p2}, Lcom/meicam/sdk/NvsTimelineCaption;->setScaleX(F)V

    .line 57
    iget p2, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleY:F

    invoke-virtual {p0, p2}, Lcom/meicam/sdk/NvsTimelineCaption;->setScaleY(F)V

    .line 58
    iget p2, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->rotation:F

    invoke-virtual {p0, p2}, Lcom/meicam/sdk/NvsTimelineCaption;->setRotationZ(F)V

    .line 60
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsTimelineCaption;->getZValue()F

    move-result p2

    iget v2, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->zValue:F

    cmpl-float p2, p2, v2

    if-eqz p2, :cond_3

    .line 61
    invoke-virtual {p0, v2}, Lcom/meicam/sdk/NvsTimelineCaption;->setZValue(F)V

    .line 64
    :cond_3
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsTimelineCaption;->getFontFilePath()Ljava/lang/String;

    move-result-object p2

    iget-object v2, p1, Lcom/narvii/video/model/Caption;->fontPath:Ljava/lang/String;

    invoke-static {p2, v2}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 65
    iget-object p1, p1, Lcom/narvii/video/model/Caption;->fontPath:Ljava/lang/String;

    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    invoke-virtual {p0, p1}, Lcom/meicam/sdk/NvsTimelineCaption;->setFontByFilePath(Ljava/lang/String;)V

    .line 68
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p0

    .line 69
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateTimelineCaption spent "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr p0, v0

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "caption"

    invoke-static {p1, p0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public static updateTimelineSticker(Lcom/meicam/sdk/NvsTimelineAnimatedSticker;Lcom/narvii/video/model/StickerInfoPack;)V
    .locals 7

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    iget v0, p1, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    .line 77
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->getInPoint()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-eqz v6, :cond_1

    .line 78
    invoke-virtual {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->changeInPoint(J)J

    .line 80
    :cond_1
    iget v0, p1, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    int-to-long v0, v0

    mul-long v0, v0, v2

    iget v4, p1, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    int-to-long v4, v4

    mul-long v4, v4, v2

    add-long/2addr v0, v4

    .line 81
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->getOutPoint()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-eqz v4, :cond_2

    .line 82
    invoke-virtual {p0, v0, v1}, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->changeOutPoint(J)J

    .line 84
    :cond_2
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->getZValue()F

    move-result v0

    iget v1, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->zValue:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    .line 85
    invoke-virtual {p0, v1}, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->setZValue(F)V

    .line 87
    :cond_3
    iget-object v0, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->translation:Landroid/graphics/PointF;

    invoke-virtual {p0, v0}, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->setTranslation(Landroid/graphics/PointF;)V

    .line 88
    iget v0, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleX:F

    invoke-virtual {p0, v0}, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->setScale(F)V

    .line 89
    iget p1, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->rotation:F

    invoke-virtual {p0, p1}, Lcom/meicam/sdk/NvsTimelineAnimatedSticker;->setRotationZ(F)V

    :cond_4
    :goto_0
    return-void
.end method
