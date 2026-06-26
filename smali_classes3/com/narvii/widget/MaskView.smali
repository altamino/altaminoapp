.class public Lcom/narvii/widget/MaskView;
.super Landroid/widget/RelativeLayout;
.source "MaskView.java"


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

    .line 28
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/narvii/widget/MaskView;->rectf:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/narvii/widget/MaskView;->placeholderColor:I

    .line 27
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/narvii/widget/MaskView;->path:Landroid/graphics/Path;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 33
    invoke-virtual {p0, v1, v2}, Landroid/widget/RelativeLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 35
    sget-object v1, Lcom/narvii/lib/R$styleable;->MaskView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 36
    sget p2, Lcom/narvii/lib/R$styleable;->MaskView_maskShape:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/MaskView;->shape:I

    .line 37
    sget p2, Lcom/narvii/lib/R$styleable;->MaskView_maskStrokeWidth:I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/narvii/widget/MaskView;->strokeWidth:F

    .line 38
    sget p2, Lcom/narvii/lib/R$styleable;->MaskView_maskStrokeColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/MaskView;->strokeColor:I

    .line 39
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 44
    iget-object v0, p0, Lcom/narvii/widget/MaskView;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 45
    sget-object v0, Lcom/narvii/widget/MaskView;->rectf:Landroid/graphics/RectF;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 46
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 47
    sget-object v0, Lcom/narvii/widget/MaskView;->rectf:Landroid/graphics/RectF;

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 48
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    .line 49
    iget v0, p0, Lcom/narvii/widget/MaskView;->shape:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 50
    iget-object v0, p0, Lcom/narvii/widget/MaskView;->path:Landroid/graphics/Path;

    sget-object v3, Lcom/narvii/widget/MaskView;->rectf:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    goto :goto_0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/MaskView;->path:Landroid/graphics/Path;

    sget-object v3, Lcom/narvii/widget/MaskView;->rectf:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 54
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/narvii/widget/MaskView;->path:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 57
    iget v0, p0, Lcom/narvii/widget/MaskView;->placeholderColor:I

    if-eqz v0, :cond_1

    .line 58
    iget v0, p0, Lcom/narvii/widget/MaskView;->placeholderColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 60
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 62
    :catch_0
    :try_start_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 67
    iget v0, p0, Lcom/narvii/widget/MaskView;->strokeWidth:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 68
    iget-object v0, p0, Lcom/narvii/widget/MaskView;->paint:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    .line 69
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/MaskView;->paint:Landroid/graphics/Paint;

    .line 70
    iget-object v0, p0, Lcom/narvii/widget/MaskView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 71
    iget-object v0, p0, Lcom/narvii/widget/MaskView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 73
    :cond_2
    iget-object v0, p0, Lcom/narvii/widget/MaskView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/narvii/widget/MaskView;->strokeColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 74
    iget-object v0, p0, Lcom/narvii/widget/MaskView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/narvii/widget/MaskView;->strokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 75
    iget-object v0, p0, Lcom/narvii/widget/MaskView;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/narvii/widget/MaskView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_3
    return-void

    .line 64
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 65
    throw v0
.end method
