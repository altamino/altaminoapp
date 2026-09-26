.class public Lcom/narvii/util/CenterAlignImageSpan;
.super Landroid/text/style/ImageSpan;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;I)V

    .line 4
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/text/style/DynamicDrawableSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 8
    sub-int/2addr p8, p6

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 12
    move-result-object p3

    .line 13
    .line 14
    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    .line 15
    sub-int/2addr p8, p3

    .line 16
    .line 17
    div-int/lit8 p8, p8, 0x2

    .line 18
    add-int/2addr p8, p6

    .line 19
    int-to-float p3, p8

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p5, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 29
    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/text/style/DynamicDrawableSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 8
    move-result-object p2

    .line 9
    .line 10
    if-eqz p5, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    iget p3, p1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 17
    .line 18
    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 19
    sub-int/2addr p3, p1

    .line 20
    .line 21
    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    .line 22
    .line 23
    iget p4, p2, Landroid/graphics/Rect;->top:I

    .line 24
    sub-int/2addr p1, p4

    .line 25
    .line 26
    div-int/lit8 p1, p1, 0x2

    .line 27
    .line 28
    div-int/lit8 p3, p3, 0x4

    .line 29
    .line 30
    sub-int p4, p1, p3

    .line 31
    add-int/2addr p1, p3

    .line 32
    neg-int p1, p1

    .line 33
    .line 34
    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 35
    .line 36
    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 37
    .line 38
    iput p4, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 39
    .line 40
    iput p4, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 41
    .line 42
    :cond_0
    iget p1, p2, Landroid/graphics/Rect;->right:I

    .line 43
    return p1
.end method
