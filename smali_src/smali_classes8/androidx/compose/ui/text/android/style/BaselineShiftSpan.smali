.class public Landroidx/compose/ui/text/android/style/BaselineShiftSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "SourceFile"


# annotations
.annotation runtime Landroidx/compose/ui/text/android/InternalPlatformTextApi;
.end annotation


# instance fields
.field private final multiplier:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Landroidx/compose/ui/text/android/style/BaselineShiftSpan;->multiplier:F

    .line 6
    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 3
    .param p1    # Landroid/text/TextPaint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "textPaint"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget v0, p1, Landroid/text/TextPaint;->baselineShift:I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/graphics/Paint;->ascent()F

    .line 11
    move-result v1

    .line 12
    .line 13
    iget v2, p0, Landroidx/compose/ui/text/android/style/BaselineShiftSpan;->multiplier:F

    .line 14
    mul-float/2addr v1, v2

    .line 15
    float-to-double v1, v1

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    .line 19
    move-result-wide v1

    .line 20
    double-to-float v1, v1

    .line 21
    float-to-int v1, v1

    .line 22
    add-int/2addr v0, v1

    .line 23
    .line 24
    iput v0, p1, Landroid/text/TextPaint;->baselineShift:I

    .line 25
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 3
    .param p1    # Landroid/text/TextPaint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "textPaint"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget v0, p1, Landroid/text/TextPaint;->baselineShift:I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/graphics/Paint;->ascent()F

    .line 11
    move-result v1

    .line 12
    .line 13
    iget v2, p0, Landroidx/compose/ui/text/android/style/BaselineShiftSpan;->multiplier:F

    .line 14
    mul-float/2addr v1, v2

    .line 15
    float-to-double v1, v1

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    .line 19
    move-result-wide v1

    .line 20
    double-to-float v1, v1

    .line 21
    float-to-int v1, v1

    .line 22
    add-int/2addr v0, v1

    .line 23
    .line 24
    iput v0, p1, Landroid/text/TextPaint;->baselineShift:I

    .line 25
    return-void
.end method
