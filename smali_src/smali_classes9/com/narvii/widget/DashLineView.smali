.class public Lcom/narvii/widget/DashLineView;
.super Landroid/view/View;
.source "SourceFile"


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

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/DashLineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/widget/DashLineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    sget-object p3, Lcom/narvii/lib/R$styleable;->DashLineView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 5
    sget p2, Lcom/narvii/lib/R$styleable;->DashLineView_stroke_width:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p3, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/narvii/widget/DashLineView;->strokeWidth:F

    .line 6
    sget p2, Lcom/narvii/lib/R$styleable;->DashLineView_stroke_color:I

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/DashLineView;->strokeColor:I

    .line 7
    sget p2, Lcom/narvii/lib/R$styleable;->DashLineView_orientation:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/DashLineView;->orientation:I

    .line 8
    sget p2, Lcom/narvii/lib/R$styleable;->DashLineView_dash_width:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/narvii/widget/DashLineView;->dashWidth:F

    .line 9
    sget p2, Lcom/narvii/lib/R$styleable;->DashLineView_dash_gap:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/narvii/widget/DashLineView;->dashGap:F

    .line 10
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 11
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/DashLineView;->paint:Landroid/graphics/Paint;

    .line 12
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/DashLineView;->path:Landroid/graphics/Path;

    .line 13
    invoke-direct {p0}, Lcom/narvii/widget/DashLineView;->setUpPaint()V

    return-void
.end method

.method private setUpPaint()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/DashLineView;->paint:Landroid/graphics/Paint;

    .line 3
    .line 4
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/widget/DashLineView;->paint:Landroid/graphics/Paint;

    .line 10
    .line 11
    iget v1, p0, Lcom/narvii/widget/DashLineView;->strokeColor:I

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/widget/DashLineView;->paint:Landroid/graphics/Paint;

    .line 17
    .line 18
    iget v1, p0, Lcom/narvii/widget/DashLineView;->strokeWidth:F

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/widget/DashLineView;->paint:Landroid/graphics/Paint;

    .line 24
    .line 25
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 29
    .line 30
    new-instance v0, Landroid/graphics/DashPathEffect;

    .line 31
    const/4 v1, 0x2

    .line 32
    .line 33
    new-array v1, v1, [F

    .line 34
    const/4 v2, 0x0

    .line 35
    .line 36
    iget v3, p0, Lcom/narvii/widget/DashLineView;->dashWidth:F

    .line 37
    .line 38
    aput v3, v1, v2

    .line 39
    const/4 v2, 0x1

    .line 40
    .line 41
    iget v3, p0, Lcom/narvii/widget/DashLineView;->dashGap:F

    .line 42
    .line 43
    aput v3, v1, v2

    .line 44
    const/4 v2, 0x0

    .line 45
    .line 46
    .line 47
    invoke-direct {v0, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 48
    .line 49
    iget-object v1, p0, Lcom/narvii/widget/DashLineView;->paint:Landroid/graphics/Paint;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 53
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 4
    .line 5
    iget v0, p0, Lcom/narvii/widget/DashLineView;->orientation:I

    .line 6
    const/4 v1, 0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 13
    move-result v0

    .line 14
    .line 15
    div-int/lit8 v0, v0, 0x2

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 19
    move-result v1

    .line 20
    .line 21
    iget-object v3, p0, Lcom/narvii/widget/DashLineView;->path:Landroid/graphics/Path;

    .line 22
    int-to-float v0, v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v0, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 26
    .line 27
    iget-object v2, p0, Lcom/narvii/widget/DashLineView;->path:Landroid/graphics/Path;

    .line 28
    int-to-float v1, v1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_0
    if-nez v0, :cond_1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 38
    move-result v0

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 42
    move-result v1

    .line 43
    .line 44
    div-int/lit8 v1, v1, 0x2

    .line 45
    .line 46
    iget-object v3, p0, Lcom/narvii/widget/DashLineView;->path:Landroid/graphics/Path;

    .line 47
    int-to-float v1, v1

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 51
    .line 52
    iget-object v2, p0, Lcom/narvii/widget/DashLineView;->path:Landroid/graphics/Path;

    .line 53
    int-to-float v0, v0

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 57
    .line 58
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/narvii/widget/DashLineView;->path:Landroid/graphics/Path;

    .line 59
    .line 60
    iget-object v1, p0, Lcom/narvii/widget/DashLineView;->paint:Landroid/graphics/Paint;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 64
    return-void
.end method
