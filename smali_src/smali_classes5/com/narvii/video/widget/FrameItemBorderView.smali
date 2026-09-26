.class public final Lcom/narvii/video/widget/FrameItemBorderView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private borderColor:I

.field private final borderPaint:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final borderRect:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final frameItemCornerRadius:I

.field private final frameItemOffset:I

.field private hide:Z

.field private final rtl:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/FrameItemBorderView;->borderRect:Landroid/graphics/RectF;

    .line 3
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/FrameItemBorderView;->borderPaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    iput v0, p0, Lcom/narvii/video/widget/FrameItemBorderView;->borderColor:I

    .line 4
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/video/widget/FrameItemBorderView;->rtl:Z

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/narvii/mediaeditor/R$dimen;->scene_editor_time_line_item_corner_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/narvii/video/widget/FrameItemBorderView;->frameItemCornerRadius:I

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/narvii/mediaeditor/R$dimen;->scene_editor_time_line_item_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/narvii/video/widget/FrameItemBorderView;->frameItemOffset:I

    const/4 v0, 0x1

    .line 7
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 8
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/narvii/mediaeditor/R$dimen;->scene_editor_time_line_stroke_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/FrameItemBorderView;->borderRect:Landroid/graphics/RectF;

    .line 12
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/widget/FrameItemBorderView;->borderPaint:Landroid/graphics/Paint;

    const/4 p2, -0x1

    iput p2, p0, Lcom/narvii/video/widget/FrameItemBorderView;->borderColor:I

    .line 13
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result p2

    iput-boolean p2, p0, Lcom/narvii/video/widget/FrameItemBorderView;->rtl:Z

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/narvii/mediaeditor/R$dimen;->scene_editor_time_line_item_corner_radius:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/narvii/video/widget/FrameItemBorderView;->frameItemCornerRadius:I

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/narvii/mediaeditor/R$dimen;->scene_editor_time_line_item_offset:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/narvii/video/widget/FrameItemBorderView;->frameItemOffset:I

    const/4 p2, 0x1

    .line 16
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 17
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/narvii/mediaeditor/R$dimen;->scene_editor_time_line_stroke_width:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public static synthetic a(Lcom/narvii/video/widget/FrameItemBorderView;ZZZ)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/narvii/video/widget/FrameItemBorderView;->updateBorderRect$lambda$0(Lcom/narvii/video/widget/FrameItemBorderView;ZZZ)V

    return-void
.end method

.method private final innerUpdateBorderRect(ZZZ)V
    .locals 2

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/video/widget/FrameItemBorderView;->hide:Z

    .line 3
    .line 4
    if-nez p1, :cond_6

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    iget-boolean p1, p0, Lcom/narvii/video/widget/FrameItemBorderView;->rtl:Z

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    :cond_0
    if-eqz p3, :cond_2

    .line 13
    .line 14
    iget-boolean p1, p0, Lcom/narvii/video/widget/FrameItemBorderView;->rtl:Z

    .line 15
    .line 16
    if-eqz p1, :cond_2

    .line 17
    .line 18
    :cond_1
    iget p1, p0, Lcom/narvii/video/widget/FrameItemBorderView;->frameItemOffset:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_2
    iget p1, p0, Lcom/narvii/video/widget/FrameItemBorderView;->frameItemCornerRadius:I

    .line 22
    neg-int p1, p1

    .line 23
    .line 24
    :goto_0
    if-eqz p3, :cond_3

    .line 25
    .line 26
    iget-boolean p3, p0, Lcom/narvii/video/widget/FrameItemBorderView;->rtl:Z

    .line 27
    .line 28
    if-eqz p3, :cond_4

    .line 29
    .line 30
    :cond_3
    if-eqz p2, :cond_5

    .line 31
    .line 32
    iget-boolean p2, p0, Lcom/narvii/video/widget/FrameItemBorderView;->rtl:Z

    .line 33
    .line 34
    if-eqz p2, :cond_5

    .line 35
    .line 36
    .line 37
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 38
    move-result p2

    .line 39
    .line 40
    iget p3, p0, Lcom/narvii/video/widget/FrameItemBorderView;->frameItemOffset:I

    .line 41
    sub-int/2addr p2, p3

    .line 42
    goto :goto_1

    .line 43
    .line 44
    .line 45
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 46
    move-result p2

    .line 47
    .line 48
    iget p3, p0, Lcom/narvii/video/widget/FrameItemBorderView;->frameItemCornerRadius:I

    .line 49
    add-int/2addr p2, p3

    .line 50
    .line 51
    :goto_1
    iget-object p3, p0, Lcom/narvii/video/widget/FrameItemBorderView;->borderRect:Landroid/graphics/RectF;

    .line 52
    int-to-float p1, p1

    .line 53
    const/4 v0, 0x1

    .line 54
    int-to-float v0, v0

    .line 55
    sub-float/2addr p1, v0

    .line 56
    int-to-float p2, p2

    .line 57
    add-float/2addr p2, v0

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 61
    move-result v0

    .line 62
    .line 63
    add-int/lit8 v0, v0, -0x2

    .line 64
    int-to-float v0, v0

    .line 65
    .line 66
    const/high16 v1, 0x40000000    # 2.0f

    .line 67
    .line 68
    .line 69
    invoke-virtual {p3, p1, v1, p2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 70
    goto :goto_2

    .line 71
    .line 72
    :cond_6
    iget-object p1, p0, Lcom/narvii/video/widget/FrameItemBorderView;->borderRect:Landroid/graphics/RectF;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Landroid/graphics/RectF;->setEmpty()V

    .line 76
    .line 77
    .line 78
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 79
    return-void
.end method

.method static synthetic innerUpdateBorderRect$default(Lcom/narvii/video/widget/FrameItemBorderView;ZZZILjava/lang/Object;)V
    .locals 1

    .line 1
    .line 2
    and-int/lit8 p5, p4, 0x2

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    if-eqz p5, :cond_0

    .line 6
    move p2, v0

    .line 7
    .line 8
    :cond_0
    and-int/lit8 p4, p4, 0x4

    .line 9
    .line 10
    if-eqz p4, :cond_1

    .line 11
    move p3, v0

    .line 12
    .line 13
    .line 14
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/video/widget/FrameItemBorderView;->innerUpdateBorderRect(ZZZ)V

    .line 15
    return-void
.end method

.method public static synthetic updateBorderRect$default(Lcom/narvii/video/widget/FrameItemBorderView;ZZZIILjava/lang/Object;)V
    .locals 1

    .line 1
    .line 2
    and-int/lit8 p6, p5, 0x2

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    if-eqz p6, :cond_0

    .line 6
    move p2, v0

    .line 7
    .line 8
    :cond_0
    and-int/lit8 p6, p5, 0x4

    .line 9
    .line 10
    if-eqz p6, :cond_1

    .line 11
    move p3, v0

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p5, p5, 0x8

    .line 14
    .line 15
    if-eqz p5, :cond_2

    .line 16
    const/4 p4, -0x1

    .line 17
    .line 18
    .line 19
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/narvii/video/widget/FrameItemBorderView;->updateBorderRect(ZZZI)V

    .line 20
    return-void
.end method

.method private static final updateBorderRect$lambda$0(Lcom/narvii/video/widget/FrameItemBorderView;ZZZ)V
    .locals 1

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/video/widget/FrameItemBorderView;->innerUpdateBorderRect(ZZZ)V

    .line 10
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "canvas"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/video/widget/FrameItemBorderView;->borderPaint:Landroid/graphics/Paint;

    .line 14
    .line 15
    iget-boolean v1, p0, Lcom/narvii/video/widget/FrameItemBorderView;->hide:Z

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    const/4 v1, 0x0

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    iget v1, p0, Lcom/narvii/video/widget/FrameItemBorderView;->borderColor:I

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/video/widget/FrameItemBorderView;->borderRect:Landroid/graphics/RectF;

    .line 27
    .line 28
    iget v1, p0, Lcom/narvii/video/widget/FrameItemBorderView;->frameItemCornerRadius:I

    .line 29
    int-to-float v2, v1

    .line 30
    int-to-float v1, v1

    .line 31
    .line 32
    iget-object v3, p0, Lcom/narvii/video/widget/FrameItemBorderView;->borderPaint:Landroid/graphics/Paint;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 36
    return-void
.end method

.method public final updateBorderRect(ZZZI)V
    .locals 0

    .line 1
    .line 2
    iput p4, p0, Lcom/narvii/video/widget/FrameItemBorderView;->borderColor:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 6
    move-result p4

    .line 7
    .line 8
    if-lez p4, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/video/widget/FrameItemBorderView;->innerUpdateBorderRect(ZZZ)V

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    new-instance p4, Lcom/narvii/video/widget/h;

    .line 15
    .line 16
    .line 17
    invoke-direct {p4, p0, p1, p2, p3}, Lcom/narvii/video/widget/h;-><init>(Lcom/narvii/video/widget/FrameItemBorderView;ZZZ)V

    .line 18
    .line 19
    const-wide/16 p1, 0x64

    .line 20
    .line 21
    .line 22
    invoke-static {p4, p1, p2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 23
    :goto_0
    return-void
.end method
