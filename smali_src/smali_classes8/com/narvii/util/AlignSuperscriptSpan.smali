.class public Lcom/narvii/util/AlignSuperscriptSpan;
.super Landroid/text/style/SuperscriptSpan;
.source "SourceFile"


# instance fields
.field protected fontScale:F

.field protected shiftPercentage:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/text/style/SuperscriptSpan;-><init>()V

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/narvii/util/AlignSuperscriptSpan;->fontScale:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/narvii/util/AlignSuperscriptSpan;->shiftPercentage:F

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 4

    .line 2
    invoke-direct {p0}, Landroid/text/style/SuperscriptSpan;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/narvii/util/AlignSuperscriptSpan;->shiftPercentage:F

    iput p2, p0, Lcom/narvii/util/AlignSuperscriptSpan;->fontScale:F

    float-to-double v0, p1

    const-wide/16 v2, 0x0

    cmpl-double p2, v0, v2

    if-lez p2, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double p2, v0, v2

    if-gez p2, :cond_0

    iput p1, p0, Lcom/narvii/util/AlignSuperscriptSpan;->shiftPercentage:F

    :cond_0
    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/graphics/Paint;->ascent()F

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    .line 8
    move-result v1

    .line 9
    .line 10
    iget v2, p0, Lcom/narvii/util/AlignSuperscriptSpan;->fontScale:F

    .line 11
    mul-float/2addr v1, v2

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    .line 21
    .line 22
    iget v2, p1, Landroid/text/TextPaint;->baselineShift:I

    .line 23
    int-to-float v2, v2

    .line 24
    .line 25
    iget v3, p0, Lcom/narvii/util/AlignSuperscriptSpan;->shiftPercentage:F

    .line 26
    .line 27
    mul-float v4, v0, v3

    .line 28
    sub-float/2addr v0, v4

    .line 29
    mul-float/2addr v3, v1

    .line 30
    sub-float/2addr v1, v3

    .line 31
    sub-float/2addr v0, v1

    .line 32
    add-float/2addr v2, v0

    .line 33
    float-to-int v0, v2

    .line 34
    .line 35
    iput v0, p1, Landroid/text/TextPaint;->baselineShift:I

    .line 36
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/util/AlignSuperscriptSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 4
    return-void
.end method
