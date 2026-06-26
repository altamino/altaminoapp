.class public abstract Lcom/narvii/video/model/BaseAttachmentInfoPack;
.super Lcom/narvii/video/model/BaseClipInfoPack;
.source "BaseAttachmentInfoPack.java"


# instance fields
.field public anchor:Landroid/graphics/PointF;

.field public indexInMixedAttachmentList:I

.field public rotation:F

.field public scaleX:F

.field public scaleY:F

.field public translation:Landroid/graphics/PointF;

.field public zValue:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 7
    invoke-direct {p0}, Lcom/narvii/video/model/BaseClipInfoPack;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 9
    iput v0, p0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleX:F

    .line 10
    iput v0, p0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleY:F

    .line 11
    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->anchor:Landroid/graphics/PointF;

    .line 12
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->translation:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lcom/narvii/video/interfaces/ITimelineClip;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/narvii/video/model/BaseAttachmentInfoPack;->copy()Lcom/narvii/video/model/BaseAttachmentInfoPack;

    move-result-object v0

    return-object v0
.end method

.method public abstract copy()Lcom/narvii/video/model/BaseAttachmentInfoPack;
.end method

.method public hasBeenEdited()Z
    .locals 2

    .line 31
    iget v0, p0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleX:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleY:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->anchor:Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->equals(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->translation:Landroid/graphics/PointF;

    .line 32
    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->equals(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->rotation:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public trimEndInMs()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public trimStartInMs()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
