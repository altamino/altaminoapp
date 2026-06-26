.class public Lcom/narvii/widget/DashLineView;
.super Landroid/view/View;
.source "DashLineView.java"


# static fields
.field public static final ORIENTATION_HORIZONTAL:I = 0x0

.field public static final ORIENTATION_VERTICAL:I = 0x1


# instance fields
.field private final dashGap:F

.field private final dashWidth:F

.field private final orientation:I

.field private final paint:Landroid/graphics/Paint;

.field private final path:Landroid/graphics/Path;

.field private final strokeColor:I

.field private final strokeWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/DashLineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/widget/DashLineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    sget-object p3, Lcom/narvii/lib/R$styleable;->DashLineView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 42
    sget p2, Lcom/narvii/lib/R$styleable;->DashLineView_stroke_width:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p3, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/narvii/widget/DashLineView;->strokeWidth:F

    .line 43
    sget p2, Lcom/narvii/lib/R$styleable;->DashLineView_stroke_color:I

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/DashLineView;->strokeColor:I

    .line 44
    sget p2, Lcom/narvii/lib/R$styleable;->DashLineView_orientation:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/DashLineView;->orientation:I

    .line 45
    sget p2, Lcom/narvii/lib/R$styleable;->DashLineView_dash_width:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/narvii/widget/DashLineView;->dashWidth:F

    .line 46
    sget p2, Lcom/narvii/lib/R$styleable;->DashLineView_dash_gap:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/narvii/widget/DashLineView;->dashGap:F

    .line 47
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 49
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/DashLineView;->paint:Landroid/graphics/Paint;

    .line 50
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/DashLineView;->path:Landroid/graphics/Path;

    .line 51
    invoke-direct {p0}, Lcom/narvii/widget/DashLineView;->setUpPaint()V

    return-void
.end method

.method private setUpPaint()V
    .locals 4

    .line 55
    iget-object v0, p0, Lcom/narvii/widget/DashLineView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 56
    iget-object v0, p0, Lcom/narvii/widget/DashLineView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/narvii/widget/DashLineView;->strokeColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    iget-object v0, p0, Lcom/narvii/widget/DashLineView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/narvii/widget/DashLineView;->strokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 58
    iget-object v0, p0, Lcom/narvii/widget/DashLineView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 59
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, p0, Lcom/narvii/widget/DashLineView;->dashWidth:F

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, p0, Lcom/narvii/widget/DashLineView;->dashGap:F

    const/4 v3, 0x1

    aput v2, v1, v3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 60
    iget-object v1, p0, Lcom/narvii/widget/DashLineView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 65
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 67
    iget v0, p0, Lcom/narvii/widget/DashLineView;->orientation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 68
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 69
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 70
    iget-object v3, p0, Lcom/narvii/widget/DashLineView;->path:Landroid/graphics/Path;

    int-to-float v0, v0

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 71
    iget-object v1, p0, Lcom/narvii/widget/DashLineView;->path:Landroid/graphics/Path;

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 73
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 74
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 75
    iget-object v3, p0, Lcom/narvii/widget/DashLineView;->path:Landroid/graphics/Path;

    int-to-float v2, v2

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 76
    iget-object v1, p0, Lcom/narvii/widget/DashLineView;->path:Landroid/graphics/Path;

    int-to-float v0, v0

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 79
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/narvii/widget/DashLineView;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/narvii/widget/DashLineView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method
