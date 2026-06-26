.class public Lcom/narvii/video/model/Caption;
.super Lcom/narvii/video/model/BaseAttachmentInfoPack;
.source "Caption.java"


# instance fields
.field public fontObjectId:Ljava/lang/String;

.field public fontPath:Ljava/lang/String;

.field public fontSize:F

.field public hasShadow:Z

.field public hasStroke:Z

.field public isBold:Z

.field public shadowColor:I

.field public shadowOffset:Landroid/graphics/PointF;

.field public strokeColor:I

.field public strokeWidth:F

.field public styleId:Ljava/lang/String;

.field public styleObjectId:Ljava/lang/String;

.field public text:Ljava/lang/String;

.field public textColor:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 29
    invoke-direct {p0}, Lcom/narvii/video/model/BaseAttachmentInfoPack;-><init>()V

    const/high16 v0, -0x1000000

    .line 17
    iput v0, p0, Lcom/narvii/video/model/Caption;->strokeColor:I

    const/high16 v0, 0x66000000

    .line 19
    iput v0, p0, Lcom/narvii/video/model/Caption;->shadowColor:I

    const/4 v0, -0x1

    .line 30
    iput v0, p0, Lcom/narvii/video/model/Caption;->textColor:I

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/narvii/video/model/Caption;->isBold:Z

    .line 33
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    const/high16 v1, 0x40800000    # 4.0f

    .line 34
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    iput v1, p0, Lcom/narvii/video/model/Caption;->strokeWidth:F

    const/high16 v1, 0x41900000    # 18.0f

    .line 35
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    iput v1, p0, Lcom/narvii/video/model/Caption;->fontSize:F

    .line 36
    new-instance v1, Landroid/graphics/PointF;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    neg-float v0, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/narvii/video/model/Caption;->shadowOffset:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public clone()Lcom/narvii/video/model/Caption;
    .locals 2

    .line 52
    invoke-static {p0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/video/model/Caption;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/model/Caption;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 13
    invoke-virtual {p0}, Lcom/narvii/video/model/Caption;->clone()Lcom/narvii/video/model/Caption;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lcom/narvii/video/interfaces/ITimelineClip;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/narvii/video/model/Caption;->copy()Lcom/narvii/video/model/Caption;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lcom/narvii/video/model/BaseAttachmentInfoPack;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/narvii/video/model/Caption;->copy()Lcom/narvii/video/model/Caption;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcom/narvii/video/model/Caption;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lcom/narvii/video/model/Caption;->clone()Lcom/narvii/video/model/Caption;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1e

    .line 58
    const-class v2, Lcom/narvii/video/model/Caption;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_8

    .line 60
    :cond_1
    check-cast p1, Lcom/narvii/video/model/Caption;

    .line 62
    iget v2, p0, Lcom/narvii/video/model/Caption;->textColor:I

    iget v3, p1, Lcom/narvii/video/model/Caption;->textColor:I

    if-eq v2, v3, :cond_2

    return v1

    .line 63
    :cond_2
    iget-boolean v2, p0, Lcom/narvii/video/model/Caption;->hasStroke:Z

    iget-boolean v3, p1, Lcom/narvii/video/model/Caption;->hasStroke:Z

    if-eq v2, v3, :cond_3

    return v1

    .line 64
    :cond_3
    iget v2, p0, Lcom/narvii/video/model/Caption;->strokeColor:I

    iget v3, p1, Lcom/narvii/video/model/Caption;->strokeColor:I

    if-eq v2, v3, :cond_4

    return v1

    .line 65
    :cond_4
    iget-boolean v2, p0, Lcom/narvii/video/model/Caption;->hasShadow:Z

    iget-boolean v3, p1, Lcom/narvii/video/model/Caption;->hasShadow:Z

    if-eq v2, v3, :cond_5

    return v1

    .line 66
    :cond_5
    iget v2, p0, Lcom/narvii/video/model/Caption;->shadowColor:I

    iget v3, p1, Lcom/narvii/video/model/Caption;->shadowColor:I

    if-eq v2, v3, :cond_6

    return v1

    .line 67
    :cond_6
    iget v2, p1, Lcom/narvii/video/model/Caption;->fontSize:F

    iget v3, p0, Lcom/narvii/video/model/Caption;->fontSize:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_7

    return v1

    .line 68
    :cond_7
    iget v2, p1, Lcom/narvii/video/model/Caption;->strokeWidth:F

    iget v3, p0, Lcom/narvii/video/model/Caption;->strokeWidth:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_8

    return v1

    .line 69
    :cond_8
    iget v2, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleX:F

    iget v3, p0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleX:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_9

    return v1

    .line 70
    :cond_9
    iget v2, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleY:F

    iget v3, p0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleY:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_a

    return v1

    .line 71
    :cond_a
    iget v2, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->rotation:F

    iget v3, p0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->rotation:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_b

    return v1

    .line 72
    :cond_b
    iget v2, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->zValue:F

    iget v3, p0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->zValue:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_c

    return v1

    .line 73
    :cond_c
    iget-boolean v2, p0, Lcom/narvii/video/model/Caption;->isBold:Z

    iget-boolean v3, p1, Lcom/narvii/video/model/Caption;->isBold:Z

    if-eq v2, v3, :cond_d

    return v1

    .line 74
    :cond_d
    iget-object v2, p0, Lcom/narvii/video/model/Caption;->text:Ljava/lang/String;

    if-eqz v2, :cond_e

    iget-object v3, p1, Lcom/narvii/video/model/Caption;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_0

    :cond_e
    iget-object v2, p1, Lcom/narvii/video/model/Caption;->text:Ljava/lang/String;

    if-eqz v2, :cond_f

    :goto_0
    return v1

    .line 75
    :cond_f
    iget-object v2, p0, Lcom/narvii/video/model/Caption;->shadowOffset:Landroid/graphics/PointF;

    if-eqz v2, :cond_10

    iget-object v3, p1, Lcom/narvii/video/model/Caption;->shadowOffset:Landroid/graphics/PointF;

    invoke-virtual {v2, v3}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    goto :goto_1

    :cond_10
    iget-object v2, p1, Lcom/narvii/video/model/Caption;->shadowOffset:Landroid/graphics/PointF;

    if-eqz v2, :cond_11

    :goto_1
    return v1

    .line 77
    :cond_11
    iget-object v2, p0, Lcom/narvii/video/model/Caption;->styleId:Ljava/lang/String;

    if-eqz v2, :cond_12

    iget-object v3, p1, Lcom/narvii/video/model/Caption;->styleId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    goto :goto_2

    :cond_12
    iget-object v2, p1, Lcom/narvii/video/model/Caption;->styleId:Ljava/lang/String;

    if-eqz v2, :cond_13

    :goto_2
    return v1

    .line 79
    :cond_13
    iget-object v2, p0, Lcom/narvii/video/model/Caption;->styleObjectId:Ljava/lang/String;

    if-eqz v2, :cond_14

    iget-object v3, p1, Lcom/narvii/video/model/Caption;->styleObjectId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    goto :goto_3

    :cond_14
    iget-object v2, p1, Lcom/narvii/video/model/Caption;->styleObjectId:Ljava/lang/String;

    if-eqz v2, :cond_15

    :goto_3
    return v1

    .line 81
    :cond_15
    iget-object v2, p0, Lcom/narvii/video/model/Caption;->fontPath:Ljava/lang/String;

    if-eqz v2, :cond_16

    iget-object v3, p1, Lcom/narvii/video/model/Caption;->fontPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    goto :goto_4

    :cond_16
    iget-object v2, p1, Lcom/narvii/video/model/Caption;->fontPath:Ljava/lang/String;

    if-eqz v2, :cond_17

    :goto_4
    return v1

    .line 83
    :cond_17
    iget-object v2, p0, Lcom/narvii/video/model/Caption;->fontObjectId:Ljava/lang/String;

    if-eqz v2, :cond_18

    iget-object v3, p1, Lcom/narvii/video/model/Caption;->fontObjectId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    goto :goto_5

    :cond_18
    iget-object v2, p1, Lcom/narvii/video/model/Caption;->fontObjectId:Ljava/lang/String;

    if-eqz v2, :cond_19

    :goto_5
    return v1

    .line 85
    :cond_19
    iget-object v2, p0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->anchor:Landroid/graphics/PointF;

    if-eqz v2, :cond_1a

    iget-object v3, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->anchor:Landroid/graphics/PointF;

    invoke-virtual {v2, v3}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    goto :goto_6

    :cond_1a
    iget-object v2, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->anchor:Landroid/graphics/PointF;

    if-eqz v2, :cond_1b

    :goto_6
    return v1

    .line 86
    :cond_1b
    iget-object v2, p0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->translation:Landroid/graphics/PointF;

    iget-object p1, p1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->translation:Landroid/graphics/PointF;

    if-eqz v2, :cond_1c

    invoke-virtual {v2, p1}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_7

    :cond_1c
    if-nez p1, :cond_1d

    goto :goto_7

    :cond_1d
    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_1e
    :goto_8
    return v1
.end method

.method public getTrackContent()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/narvii/video/model/Caption;->text:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 91
    iget-object v0, p0, Lcom/narvii/video/model/Caption;->text:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 92
    iget v2, p0, Lcom/narvii/video/model/Caption;->textColor:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 93
    iget-boolean v2, p0, Lcom/narvii/video/model/Caption;->hasStroke:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 94
    iget v2, p0, Lcom/narvii/video/model/Caption;->strokeColor:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 95
    iget-boolean v2, p0, Lcom/narvii/video/model/Caption;->hasShadow:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 96
    iget v2, p0, Lcom/narvii/video/model/Caption;->shadowColor:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 97
    iget-object v2, p0, Lcom/narvii/video/model/Caption;->shadowOffset:Landroid/graphics/PointF;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/PointF;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 98
    iget-object v2, p0, Lcom/narvii/video/model/Caption;->styleId:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 99
    iget-object v2, p0, Lcom/narvii/video/model/Caption;->styleObjectId:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 100
    iget-object v2, p0, Lcom/narvii/video/model/Caption;->fontPath:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 101
    iget-object v2, p0, Lcom/narvii/video/model/Caption;->fontObjectId:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 102
    iget v2, p0, Lcom/narvii/video/model/Caption;->fontSize:F

    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_6

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 103
    iget v2, p0, Lcom/narvii/video/model/Caption;->strokeWidth:F

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_7

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 104
    iget v2, p0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleX:F

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_8

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto :goto_8

    :cond_8
    const/4 v2, 0x0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 105
    iget v2, p0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleY:F

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_9

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto :goto_9

    :cond_9
    const/4 v2, 0x0

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 106
    iget-object v2, p0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->anchor:Landroid/graphics/PointF;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/graphics/PointF;->hashCode()I

    move-result v2

    goto :goto_a

    :cond_a
    const/4 v2, 0x0

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 107
    iget-object v2, p0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->translation:Landroid/graphics/PointF;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Landroid/graphics/PointF;->hashCode()I

    move-result v2

    goto :goto_b

    :cond_b
    const/4 v2, 0x0

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 108
    iget v2, p0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->rotation:F

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_c

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto :goto_c

    :cond_c
    const/4 v2, 0x0

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 109
    iget v2, p0, Lcom/narvii/video/model/BaseAttachmentInfoPack;->zValue:F

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_d

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    :cond_d
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 110
    iget-boolean v1, p0, Lcom/narvii/video/model/Caption;->isBold:Z

    add-int/2addr v0, v1

    return v0
.end method
