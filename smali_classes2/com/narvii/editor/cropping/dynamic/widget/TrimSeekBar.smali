.class public final Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;
.super Landroid/view/View;
.source "TrimSeekBar.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar$OnSeekBarChangeListener;
    }
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private dividerColor:I

.field private final dividerPaint:Landroid/graphics/Paint;

.field private dividerWidth:I

.field private max:I

.field private min:I

.field private originProgress:I

.field private progress:I

.field private progressBarColor:I

.field private progressHeight:I

.field private final progressPaint:Landroid/graphics/Paint;

.field private progressRectF:Landroid/graphics/RectF;

.field private rtl:Z

.field private seekBarChangeListener:Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar$OnSeekBarChangeListener;

.field private startX:F

.field private thumbColor:I

.field private final thumbPaint:Landroid/graphics/Paint;

.field private thumbRadius:I

.field private trimEnd:I

.field private trimEndRectF:Landroid/graphics/RectF;

.field private trimStart:I

.field private trimStartRectF:Landroid/graphics/RectF;

.field private final trimmedPaint:Landroid/graphics/Paint;

.field private trimmedPartColor:I

.field private unTrimRectF:Landroid/graphics/RectF;

.field private final unTrimmedPaint:Landroid/graphics/Paint;

.field private unTrimmedPartColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, p1, v0}, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    .line 15
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->progressPaint:Landroid/graphics/Paint;

    const/16 p3, 0x64

    .line 63
    iput p3, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->max:I

    .line 65
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->progressRectF:Landroid/graphics/RectF;

    .line 68
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->trimmedPaint:Landroid/graphics/Paint;

    .line 69
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->trimStartRectF:Landroid/graphics/RectF;

    .line 70
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->trimEndRectF:Landroid/graphics/RectF;

    .line 73
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->unTrimmedPaint:Landroid/graphics/Paint;

    .line 74
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->unTrimRectF:Landroid/graphics/RectF;

    .line 77
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->thumbPaint:Landroid/graphics/Paint;

    .line 81
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->dividerPaint:Landroid/graphics/Paint;

    .line 93
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result p3

    iput-boolean p3, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->rtl:Z

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    const-string p2, "#F5A623"

    .line 29
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->progressBarColor:I

    const/high16 p2, 0x40c00000    # 6.0f

    .line 30
    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result p2

    iput p2, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->progressHeight:I

    const-string p2, "#22FFFFFF"

    .line 31
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->trimmedPartColor:I

    const-string p2, "#55FFFFFF"

    .line 32
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->unTrimmedPartColor:I

    const/high16 p2, 0x41000000    # 8.0f

    .line 33
    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result p2

    iput p2, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->thumbRadius:I

    const/4 p2, -0x1

    .line 34
    iput p2, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->thumbColor:I

    const/high16 p3, 0x40000000    # 2.0f

    .line 35
    invoke-static {p1, p3}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->dividerWidth:I

    .line 36
    iput p2, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->dividerColor:I

    .line 38
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->progressPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->progressBarColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->progressPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 40
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->progressPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 42
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->trimmedPaint:Landroid/graphics/Paint;

    iget p3, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->trimmedPartColor:I

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->trimmedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 44
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->trimmedPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 46
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->unTrimmedPaint:Landroid/graphics/Paint;

    iget p3, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->unTrimmedPartColor:I

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 47
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->unTrimmedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 48
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->unTrimmedPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 50
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->thumbPaint:Landroid/graphics/Paint;

    iget p3, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->thumbColor:I

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 51
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->thumbPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 52
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->thumbPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->dividerPaint:Landroid/graphics/Paint;

    iget p3, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->dividerColor:I

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->dividerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->dividerPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getProgress()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->progress:I

    return v0
.end method

.method public final getSeekBarChangeListener()Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar$OnSeekBarChangeListener;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->seekBarChangeListener:Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar$OnSeekBarChangeListener;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    if-eqz p1, :cond_b

    .line 100
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->progressHeight:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/4 v1, 0x2

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 101
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->progressHeight:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    div-float v8, v2, v1

    .line 102
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    int-to-float v9, v2

    .line 103
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v2, v10}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v2

    .line 104
    iget v3, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->trimStart:I

    iget v4, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->min:I

    const/high16 v11, 0x3f800000    # 1.0f

    if-le v3, v4, :cond_0

    .line 105
    iget-object v4, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->trimStartRectF:Landroid/graphics/RectF;

    int-to-float v3, v3

    mul-float v3, v3, v11

    iget v5, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->max:I

    int-to-float v5, v5

    div-float/2addr v3, v5

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float v6, v1, v9

    sub-float/2addr v5, v6

    mul-float v3, v3, v5

    add-float/2addr v3, v9

    add-float/2addr v3, v2

    invoke-virtual {v4, v9, v0, v3, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 106
    iget-object v3, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->trimStartRectF:Landroid/graphics/RectF;

    iget v4, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->progressHeight:I

    int-to-float v5, v4

    div-float/2addr v5, v10

    int-to-float v4, v4

    div-float/2addr v4, v10

    iget-object v6, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->trimmedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v5, v4, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 108
    :cond_0
    iget v3, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->trimEnd:I

    iget v4, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->min:I

    if-le v3, v4, :cond_1

    .line 109
    iget-object v3, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->unTrimRectF:Landroid/graphics/RectF;

    iget v4, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->trimStart:I

    int-to-float v4, v4

    mul-float v4, v4, v11

    iget v5, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->max:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float v6, v1, v9

    sub-float/2addr v5, v6

    mul-float v4, v4, v5

    add-float/2addr v4, v9

    iget v5, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->trimEnd:I

    int-to-float v5, v5

    mul-float v5, v5, v11

    iget v7, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->max:I

    int-to-float v7, v7

    div-float/2addr v5, v7

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v6

    mul-float v5, v5, v7

    add-float/2addr v5, v9

    add-float/2addr v5, v2

    invoke-virtual {v3, v4, v0, v5, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 110
    iget-object v2, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->unTrimRectF:Landroid/graphics/RectF;

    iget v3, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->progressHeight:I

    int-to-float v4, v3

    div-float/2addr v4, v10

    int-to-float v3, v3

    div-float/2addr v3, v10

    iget-object v5, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->unTrimmedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, v3, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 112
    :cond_1
    iget v2, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->trimEnd:I

    iget v3, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->max:I

    if-ge v2, v3, :cond_2

    .line 113
    iget-object v4, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->trimEndRectF:Landroid/graphics/RectF;

    int-to-float v2, v2

    mul-float v2, v2, v11

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v5, v1, v9

    sub-float/2addr v3, v5

    mul-float v2, v2, v3

    add-float/2addr v2, v9

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v9

    invoke-virtual {v4, v2, v0, v3, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 114
    iget-object v2, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->trimEndRectF:Landroid/graphics/RectF;

    iget v3, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->progressHeight:I

    int-to-float v4, v3

    div-float/2addr v4, v10

    int-to-float v3, v3

    div-float/2addr v3, v10

    iget-object v5, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->trimmedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, v3, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 118
    :cond_2
    iget v2, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->min:I

    iget v3, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->max:I

    iget v4, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->progress:I

    if-le v2, v4, :cond_3

    goto :goto_1

    :cond_3
    if-lt v3, v4, :cond_5

    .line 119
    iget-boolean v2, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->rtl:Z

    if-eqz v2, :cond_4

    .line 120
    iget-object v2, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->progressRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v9

    iget v4, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->max:I

    iget v5, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->progress:I

    sub-int v5, v4, v5

    int-to-float v5, v5

    mul-float v5, v5, v11

    int-to-float v4, v4

    div-float/2addr v5, v4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v6, v1, v9

    sub-float/2addr v4, v6

    mul-float v5, v5, v4

    add-float/2addr v5, v9

    invoke-virtual {v2, v3, v0, v5, v8}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    .line 122
    :cond_4
    iget-object v2, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->progressRectF:Landroid/graphics/RectF;

    int-to-float v4, v4

    mul-float v4, v4, v11

    int-to-float v3, v3

    div-float/2addr v4, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v5, v1, v9

    sub-float/2addr v3, v5

    mul-float v4, v4, v3

    add-float/2addr v4, v9

    invoke-virtual {v2, v9, v0, v4, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 124
    :goto_0
    iget-object v2, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->progressRectF:Landroid/graphics/RectF;

    iget v3, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->progressHeight:I

    int-to-float v4, v3

    div-float/2addr v4, v10

    int-to-float v3, v3

    div-float/2addr v3, v10

    iget-object v5, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->progressPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, v3, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 128
    :cond_5
    :goto_1
    iget v2, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->min:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->max:I

    iget v4, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->trimStart:I

    if-le v2, v4, :cond_6

    goto :goto_2

    :cond_6
    if-le v3, v4, :cond_7

    int-to-float v2, v4

    mul-float v2, v2, v11

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 129
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v4, v1, v9

    sub-float/2addr v3, v4

    mul-float v2, v2, v3

    add-float v3, v2, v9

    .line 130
    iget v2, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->dividerWidth:I

    int-to-float v2, v2

    add-float v5, v3, v2

    iget-object v7, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->dividerPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v0

    move v6, v8

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 132
    :cond_7
    :goto_2
    iget v2, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->min:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->max:I

    iget v4, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->trimEnd:I

    if-le v2, v4, :cond_8

    goto :goto_3

    :cond_8
    if-le v3, v4, :cond_9

    int-to-float v2, v4

    mul-float v2, v2, v11

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 133
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v4, v1, v9

    sub-float/2addr v3, v4

    mul-float v2, v2, v3

    add-float v3, v2, v9

    .line 134
    iget v2, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->dividerWidth:I

    int-to-float v2, v2

    add-float v5, v3, v2

    iget-object v7, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->dividerPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v0

    move v6, v8

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 138
    :cond_9
    :goto_3
    iget-boolean v0, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->rtl:Z

    if-eqz v0, :cond_a

    .line 139
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->max:I

    iget v2, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->progress:I

    sub-int v2, v0, v2

    int-to-float v2, v2

    mul-float v2, v2, v11

    int-to-float v0, v0

    div-float/2addr v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v1, v1, v9

    sub-float/2addr v0, v1

    mul-float v2, v2, v0

    add-float/2addr v2, v9

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v10

    iget v1, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->thumbRadius:I

    int-to-float v1, v1

    iget-object v3, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->thumbPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 141
    :cond_a
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->progress:I

    int-to-float v0, v0

    mul-float v0, v0, v11

    iget v2, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->max:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v1, v1, v9

    sub-float/2addr v2, v1

    mul-float v0, v0, v2

    add-float/2addr v0, v9

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v10

    iget v2, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->thumbRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->thumbPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_b
    :goto_4
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 149
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    if-eqz p1, :cond_0

    .line 150
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez v1, :cond_1

    goto/16 :goto_2

    .line 151
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_7

    .line 152
    iget-boolean v1, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->rtl:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->max:I

    iget v5, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->progress:I

    sub-int/2addr v1, v5

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->progress:I

    :goto_1
    int-to-float v1, v1

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float v1, v1, v5

    .line 153
    iget v5, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->max:I

    int-to-float v5, v5

    div-float v5, v1, v5

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, v3

    mul-float v7, v7, v0

    sub-float/2addr v6, v7

    mul-float v5, v5, v6

    add-float/2addr v5, v0

    iget v6, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->thumbRadius:I

    mul-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    .line 154
    iget v6, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->max:I

    int-to-float v6, v6

    div-float/2addr v1, v6

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v7

    mul-float v1, v1, v6

    add-float/2addr v1, v0

    iget v6, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->thumbRadius:I

    mul-int/lit8 v6, v6, 0x2

    int-to-float v3, v6

    add-float/2addr v1, v3

    .line 155
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    cmpl-float v5, v3, v5

    if-ltz v5, :cond_4

    cmpg-float v1, v3, v1

    if-gtz v1, :cond_4

    .line 156
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->startX:F

    .line 157
    iget p1, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->progress:I

    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->originProgress:I

    .line 158
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->seekBarChangeListener:Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar$OnSeekBarChangeListener;

    if-eqz p1, :cond_3

    invoke-interface {p1, p0}, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;)V

    :cond_3
    return v4

    .line 160
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_6

    cmpg-float v0, v3, v1

    if-gtz v0, :cond_6

    .line 161
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->startX:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v7

    div-float/2addr v0, v1

    iget v1, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->max:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->originProgress:I

    add-int/2addr v0, v1

    .line 162
    iget-boolean v1, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->rtl:Z

    if-eqz v1, :cond_5

    .line 163
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->startX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sub-float/2addr v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p1, v7

    div-float/2addr v0, p1

    iget p1, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->max:I

    int-to-float p1, p1

    mul-float v0, v0, p1

    float-to-int p1, v0

    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->originProgress:I

    add-int/2addr v0, p1

    .line 165
    :cond_5
    invoke-virtual {p0, v0}, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->setProgress(I)V

    .line 166
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->seekBarChangeListener:Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar$OnSeekBarChangeListener;

    if-eqz p1, :cond_6

    invoke-interface {p1, p0, v0, v4}, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar$OnSeekBarChangeListener;->onProgressChanged(Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;IZ)V

    :cond_6
    return v2

    :cond_7
    :goto_2
    if-nez v1, :cond_8

    goto :goto_4

    .line 172
    :cond_8
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v3, :cond_d

    .line 173
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->startX:F

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v3

    mul-float v3, v3, v0

    sub-float/2addr v2, v3

    div-float/2addr v1, v2

    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->max:I

    int-to-float v0, v0

    mul-float v1, v1, v0

    float-to-int v0, v1

    iget v1, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->originProgress:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->setProgress(I)V

    .line 174
    iget-boolean v0, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->rtl:Z

    if-eqz v0, :cond_9

    .line 175
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->startX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sub-float/2addr v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p1, v3

    div-float/2addr v0, p1

    iget p1, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->max:I

    int-to-float p1, p1

    mul-float v0, v0, p1

    float-to-int p1, v0

    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->originProgress:I

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->setProgress(I)V

    .line 177
    :cond_9
    iget p1, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->progress:I

    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->min:I

    if-ge p1, v0, :cond_a

    .line 178
    invoke-virtual {p0, v0}, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->setProgress(I)V

    goto :goto_3

    .line 179
    :cond_a
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->max:I

    if-le p1, v0, :cond_b

    .line 180
    invoke-virtual {p0, v0}, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->setProgress(I)V

    .line 182
    :cond_b
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 183
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->seekBarChangeListener:Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar$OnSeekBarChangeListener;

    if-eqz p1, :cond_c

    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->progress:I

    invoke-interface {p1, p0, v0, v4}, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar$OnSeekBarChangeListener;->onProgressChanged(Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;IZ)V

    :cond_c
    return v4

    :cond_d
    :goto_4
    if-nez v1, :cond_e

    goto :goto_5

    .line 186
    :cond_e
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v4, :cond_10

    .line 187
    iget-object p1, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->seekBarChangeListener:Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar$OnSeekBarChangeListener;

    if-eqz p1, :cond_f

    invoke-interface {p1, p0}, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;)V

    :cond_f
    return v4

    :cond_10
    :goto_5
    return v2
.end method

.method public final setProgress(I)V
    .locals 1

    .line 88
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->progress:I

    if-eq p1, v0, :cond_0

    .line 89
    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->progress:I

    .line 90
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setSeekBarChangeListener(Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar$OnSeekBarChangeListener;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->seekBarChangeListener:Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method public final setTrim(II)V
    .locals 1

    .line 197
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->trimStart:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->trimEnd:I

    if-eq p2, v0, :cond_1

    .line 198
    :cond_0
    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->trimStart:I

    .line 199
    iput p2, p0, Lcom/narvii/editor/cropping/dynamic/widget/TrimSeekBar;->trimEnd:I

    .line 200
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method
