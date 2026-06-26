.class public Lcom/narvii/util/AlignSuperscriptSpan;
.super Landroid/text/style/SuperscriptSpan;
.source "AlignSuperscriptSpan.java"


# instance fields
.field protected fontScale:F

.field protected shiftPercentage:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroid/text/style/SuperscriptSpan;-><init>()V

    const/high16 v0, 0x40000000    # 2.0f

    .line 12
    iput v0, p0, Lcom/narvii/util/AlignSuperscriptSpan;->fontScale:F

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/narvii/util/AlignSuperscriptSpan;->shiftPercentage:F

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 4

    .line 22
    invoke-direct {p0}, Landroid/text/style/SuperscriptSpan;-><init>()V

    const/high16 v0, 0x40000000    # 2.0f

    .line 12
    iput v0, p0, Lcom/narvii/util/AlignSuperscriptSpan;->fontScale:F

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/narvii/util/AlignSuperscriptSpan;->shiftPercentage:F

    .line 23
    iput p2, p0, Lcom/narvii/util/AlignSuperscriptSpan;->fontScale:F

    float-to-double v0, p1

    const-wide/16 v2, 0x0

    cmpl-double p2, v0, v2

    if-lez p2, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double p2, v0, v2

    if-gez p2, :cond_0

    .line 25
    iput p1, p0, Lcom/narvii/util/AlignSuperscriptSpan;->shiftPercentage:F

    :cond_0
    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 5

    .line 31
    invoke-virtual {p1}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    .line 34
    invoke-virtual {p1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v1

    iget v2, p0, Lcom/narvii/util/AlignSuperscriptSpan;->fontScale:F

    mul-float v1, v1, v2

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 37
    invoke-virtual {p1}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    .line 41
    iget v2, p1, Landroid/text/TextPaint;->baselineShift:I

    int-to-float v2, v2

    iget v3, p0, Lcom/narvii/util/AlignSuperscriptSpan;->shiftPercentage:F

    mul-float v4, v0, v3

    sub-float/2addr v0, v4

    mul-float v3, v3, v1

    sub-float/2addr v1, v3

    sub-float/2addr v0, v1

    add-float/2addr v2, v0

    float-to-int v0, v2

    iput v0, p1, Landroid/text/TextPaint;->baselineShift:I

    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/narvii/util/AlignSuperscriptSpan;->updateDrawState(Landroid/text/TextPaint;)V

    return-void
.end method
