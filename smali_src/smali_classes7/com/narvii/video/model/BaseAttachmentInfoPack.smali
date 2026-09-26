.class public abstract Lcom/narvii/video/model/BaseAttachmentInfoPack;
.super Lcom/narvii/video/model/BaseClipInfoPack;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/video/model/BaseClipInfoPack;-><init>()V

    .line 4
    .line 5
    const/high16 v0, 0x3f800000    # 1.0f

    .line 6
    .line 7
    iput v0, p0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleX:F

    .line 8
    .line 9
    iput v0, p0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleY:F

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/PointF;

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->anchor:Landroid/graphics/PointF;

    .line 18
    .line 19
    new-instance v0, Landroid/graphics/PointF;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 23
    .line 24
    iput-object v0, p0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->translation:Landroid/graphics/PointF;

    .line 25
    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lcom/narvii/video/interfaces/ITimelineClip;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/narvii/video/model/BaseAttachmentInfoPack;->copy()Lcom/narvii/video/model/BaseAttachmentInfoPack;

    move-result-object v0

    return-object v0
.end method

.method public abstract copy()Lcom/narvii/video/model/BaseAttachmentInfoPack;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public hasBeenEdited()Z
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleX:F

    .line 3
    .line 4
    const/high16 v1, 0x3f800000    # 1.0f

    .line 5
    .line 6
    cmpl-float v0, v0, v1

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget v0, p0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleY:F

    .line 11
    .line 12
    cmpl-float v0, v0, v1

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->anchor:Landroid/graphics/PointF;

    .line 17
    const/4 v1, 0x0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->equals(FF)Z

    .line 21
    move-result v0

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->translation:Landroid/graphics/PointF;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->equals(FF)Z

    .line 29
    move-result v0

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget v0, p0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->rotation:F

    .line 34
    .line 35
    cmpl-float v0, v0, v1

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v0, 0x0

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 42
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
