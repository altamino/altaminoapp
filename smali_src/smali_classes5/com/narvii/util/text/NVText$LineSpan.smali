.class Lcom/narvii/util/text/NVText$LineSpan;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/style/LineHeightSpan$WithDensity;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/text/NVText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LineSpan"
.end annotation


# instance fields
.field private final f:F


# direct methods
.method constructor <init>(F)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Lcom/narvii/util/text/NVText$LineSpan;->f:F

    .line 6
    return-void
.end method


# virtual methods
.method public chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V
    .locals 0

    .line 1
    return-void
.end method

.method public chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/narvii/util/text/NVText;->a()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    invoke-virtual {p7, p1}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 3
    invoke-static {}, Lcom/narvii/util/text/NVText;->a()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-static {}, Lcom/narvii/util/text/NVText;->a()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr p1, p2

    const/4 p2, 0x0

    .line 4
    iput p2, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    int-to-float p1, p1

    iget p3, p0, Lcom/narvii/util/text/NVText$LineSpan;->f:F

    mul-float/2addr p1, p3

    float-to-int p1, p1

    .line 5
    iput p1, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iput p1, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 6
    iput p2, p6, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    .line 7
    iput p2, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    return-void
.end method
