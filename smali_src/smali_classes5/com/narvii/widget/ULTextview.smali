.class public Lcom/narvii/widget/ULTextview;
.super Landroid/widget/TextView;
.source "SourceFile"


# instance fields
.field paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    new-instance p1, Landroid/graphics/Paint;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/widget/ULTextview;->paint:Landroid/graphics/Paint;

    .line 11
    const/4 p2, 0x1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/widget/ULTextview;->paint:Landroid/graphics/Paint;

    .line 17
    .line 18
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 22
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    .line 7
    move-result v0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    return-void

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    return-void

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBaseline(I)I

    .line 26
    move-result v0

    .line 27
    int-to-float v0, v0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    .line 35
    move-result v1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 39
    move-result-object v2

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    .line 43
    move-result v2

    .line 44
    add-float/2addr v1, v0

    .line 45
    add-float/2addr v0, v2

    .line 46
    .line 47
    sub-float v2, v0, v1

    .line 48
    .line 49
    const/high16 v3, 0x40400000    # 3.0f

    .line 50
    div-float/2addr v2, v3

    .line 51
    add-float/2addr v1, v0

    .line 52
    .line 53
    const/high16 v0, 0x40000000    # 2.0f

    .line 54
    div-float/2addr v1, v0

    .line 55
    .line 56
    div-float v0, v2, v0

    .line 57
    sub-float/2addr v1, v0

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    .line 65
    move-result v0

    .line 66
    .line 67
    iget-object v3, p0, Lcom/narvii/widget/ULTextview;->paint:Landroid/graphics/Paint;

    .line 68
    .line 69
    .line 70
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    .line 71
    move-result v4

    .line 72
    .line 73
    div-int/lit8 v4, v4, 0x2

    .line 74
    .line 75
    .line 76
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    .line 77
    move-result v5

    .line 78
    .line 79
    .line 80
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    .line 81
    move-result v6

    .line 82
    .line 83
    .line 84
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    .line 85
    move-result v0

    .line 86
    .line 87
    .line 88
    invoke-static {v4, v5, v6, v0}, Landroid/graphics/Color;->argb(IIII)I

    .line 89
    move-result v0

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 93
    .line 94
    .line 95
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 96
    move-result v0

    .line 97
    .line 98
    if-eqz v0, :cond_2

    .line 99
    .line 100
    new-instance v0, Landroid/graphics/RectF;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 104
    move-result v3

    .line 105
    int-to-float v3, v3

    .line 106
    sub-float/2addr v3, v2

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 110
    move-result v4

    .line 111
    int-to-float v4, v4

    .line 112
    add-float/2addr v2, v1

    .line 113
    .line 114
    .line 115
    invoke-direct {v0, v3, v1, v4, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 116
    .line 117
    iget-object v1, p0, Lcom/narvii/widget/ULTextview;->paint:Landroid/graphics/Paint;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 121
    goto :goto_0

    .line 122
    .line 123
    :cond_2
    new-instance v0, Landroid/graphics/RectF;

    .line 124
    const/4 v3, 0x0

    .line 125
    .line 126
    add-float v4, v1, v2

    .line 127
    .line 128
    .line 129
    invoke-direct {v0, v3, v1, v2, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 130
    .line 131
    iget-object v1, p0, Lcom/narvii/widget/ULTextview;->paint:Landroid/graphics/Paint;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 135
    :goto_0
    return-void
.end method
