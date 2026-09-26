.class public Lcom/narvii/widget/MaskView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# static fields
.field public static final SHAPE_OVAL:I = 0x0

.field public static final SHAPE_RECT:I = 0x1

.field private static final rectf:Landroid/graphics/RectF;


# instance fields
.field private paint:Landroid/graphics/Paint;

.field private final path:Landroid/graphics/Path;

.field protected placeholderColor:I

.field private shape:I

.field private strokeColor:I

.field private strokeWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/RectF;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/narvii/widget/MaskView;->rectf:Landroid/graphics/RectF;

    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/widget/MaskView;->placeholderColor:I

    .line 7
    .line 8
    new-instance v1, Landroid/graphics/Path;

    .line 9
    .line 10
    .line 11
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 12
    .line 13
    iput-object v1, p0, Lcom/narvii/widget/MaskView;->path:Landroid/graphics/Path;

    .line 14
    const/4 v1, 0x1

    .line 15
    const/4 v2, 0x0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 19
    .line 20
    sget-object v1, Lcom/narvii/lib/R$styleable;->MaskView:[I

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    sget p2, Lcom/narvii/lib/R$styleable;->MaskView_maskShape:I

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 30
    move-result p2

    .line 31
    .line 32
    iput p2, p0, Lcom/narvii/widget/MaskView;->shape:I

    .line 33
    .line 34
    sget p2, Lcom/narvii/lib/R$styleable;->MaskView_maskStrokeWidth:I

    .line 35
    const/4 v1, 0x0

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 39
    move-result p2

    .line 40
    .line 41
    iput p2, p0, Lcom/narvii/widget/MaskView;->strokeWidth:F

    .line 42
    .line 43
    sget p2, Lcom/narvii/lib/R$styleable;->MaskView_maskStrokeColor:I

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 47
    move-result p2

    .line 48
    .line 49
    iput p2, p0, Lcom/narvii/widget/MaskView;->strokeColor:I

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 53
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/MaskView;->path:Landroid/graphics/Path;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 6
    .line 7
    sget-object v0, Lcom/narvii/widget/MaskView;->rectf:Landroid/graphics/RectF;

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 14
    move-result v2

    .line 15
    int-to-float v2, v2

    .line 16
    .line 17
    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 18
    .line 19
    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 23
    move-result v2

    .line 24
    int-to-float v2, v2

    .line 25
    .line 26
    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    .line 27
    .line 28
    iget v2, p0, Lcom/narvii/widget/MaskView;->shape:I

    .line 29
    const/4 v3, 0x1

    .line 30
    .line 31
    if-ne v2, v3, :cond_0

    .line 32
    .line 33
    iget-object v2, p0, Lcom/narvii/widget/MaskView;->path:Landroid/graphics/Path;

    .line 34
    .line 35
    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v0, v4}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_0
    iget-object v2, p0, Lcom/narvii/widget/MaskView;->path:Landroid/graphics/Path;

    .line 42
    .line 43
    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v0, v4}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 47
    .line 48
    .line 49
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 50
    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/narvii/widget/MaskView;->path:Landroid/graphics/Path;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 55
    .line 56
    iget v0, p0, Lcom/narvii/widget/MaskView;->placeholderColor:I

    .line 57
    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 62
    goto :goto_1

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    goto :goto_4

    .line 65
    .line 66
    .line 67
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .line 69
    .line 70
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 71
    goto :goto_3

    .line 72
    .line 73
    .line 74
    :catch_0
    :try_start_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    goto :goto_2

    .line 76
    .line 77
    :goto_3
    iget v0, p0, Lcom/narvii/widget/MaskView;->strokeWidth:F

    .line 78
    .line 79
    cmpl-float v0, v0, v1

    .line 80
    .line 81
    if-lez v0, :cond_3

    .line 82
    .line 83
    iget-object v0, p0, Lcom/narvii/widget/MaskView;->paint:Landroid/graphics/Paint;

    .line 84
    .line 85
    if-nez v0, :cond_2

    .line 86
    .line 87
    new-instance v0, Landroid/graphics/Paint;

    .line 88
    .line 89
    .line 90
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 91
    .line 92
    iput-object v0, p0, Lcom/narvii/widget/MaskView;->paint:Landroid/graphics/Paint;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 96
    .line 97
    iget-object v0, p0, Lcom/narvii/widget/MaskView;->paint:Landroid/graphics/Paint;

    .line 98
    .line 99
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 103
    .line 104
    :cond_2
    iget-object v0, p0, Lcom/narvii/widget/MaskView;->paint:Landroid/graphics/Paint;

    .line 105
    .line 106
    iget v1, p0, Lcom/narvii/widget/MaskView;->strokeColor:I

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 110
    .line 111
    iget-object v0, p0, Lcom/narvii/widget/MaskView;->paint:Landroid/graphics/Paint;

    .line 112
    .line 113
    iget v1, p0, Lcom/narvii/widget/MaskView;->strokeWidth:F

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 117
    .line 118
    iget-object v0, p0, Lcom/narvii/widget/MaskView;->path:Landroid/graphics/Path;

    .line 119
    .line 120
    iget-object v1, p0, Lcom/narvii/widget/MaskView;->paint:Landroid/graphics/Paint;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 124
    :cond_3
    return-void

    .line 125
    .line 126
    .line 127
    :goto_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 128
    throw v0
.end method
