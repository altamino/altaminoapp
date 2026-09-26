.class public final Lcom/narvii/scene/view/RoundCornorDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private cornerRadius:F

.field private final maskPaint$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final roundRectF$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private view:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final zonePaint$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "view"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    const-string v0, "context"

    .line 9
    .line 10
    .line 11
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    iput-object p1, p0, Lcom/narvii/scene/view/RoundCornorDelegate;->view:Landroid/view/View;

    .line 17
    .line 18
    iput-object p2, p0, Lcom/narvii/scene/view/RoundCornorDelegate;->context:Landroid/content/Context;

    .line 19
    .line 20
    sget-object p1, Lcom/narvii/scene/view/RoundCornorDelegate$roundRectF$2;->INSTANCE:Lcom/narvii/scene/view/RoundCornorDelegate$roundRectF$2;

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    iput-object p1, p0, Lcom/narvii/scene/view/RoundCornorDelegate;->roundRectF$delegate:Lw7/m;

    .line 27
    .line 28
    sget-object p1, Lcom/narvii/scene/view/RoundCornorDelegate$maskPaint$2;->INSTANCE:Lcom/narvii/scene/view/RoundCornorDelegate$maskPaint$2;

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    iput-object p1, p0, Lcom/narvii/scene/view/RoundCornorDelegate;->maskPaint$delegate:Lw7/m;

    .line 35
    .line 36
    sget-object p1, Lcom/narvii/scene/view/RoundCornorDelegate$zonePaint$2;->INSTANCE:Lcom/narvii/scene/view/RoundCornorDelegate$zonePaint$2;

    .line 37
    .line 38
    .line 39
    invoke-static {p1}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    iput-object p1, p0, Lcom/narvii/scene/view/RoundCornorDelegate;->zonePaint$delegate:Lw7/m;

    .line 43
    .line 44
    const/high16 p1, 0x41a00000    # 20.0f

    .line 45
    .line 46
    iput p1, p0, Lcom/narvii/scene/view/RoundCornorDelegate;->cornerRadius:F

    .line 47
    .line 48
    .line 49
    invoke-direct {p0}, Lcom/narvii/scene/view/RoundCornorDelegate;->getMaskPaint()Landroid/graphics/Paint;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    .line 53
    .line 54
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 55
    .line 56
    .line 57
    invoke-direct {p2, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 61
    .line 62
    .line 63
    invoke-direct {p0}, Lcom/narvii/scene/view/RoundCornorDelegate;->getZonePaint()Landroid/graphics/Paint;

    .line 64
    move-result-object p1

    .line 65
    const/4 p2, 0x1

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 69
    .line 70
    .line 71
    invoke-direct {p0}, Lcom/narvii/scene/view/RoundCornorDelegate;->getZonePaint()Landroid/graphics/Paint;

    .line 72
    move-result-object p1

    .line 73
    const/4 p2, -0x1

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    return-void
.end method

.method private final getMaskPaint()Landroid/graphics/Paint;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/view/RoundCornorDelegate;->maskPaint$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/graphics/Paint;

    .line 9
    return-object v0
.end method

.method private final getRoundRectF()Landroid/graphics/RectF;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/view/RoundCornorDelegate;->roundRectF$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/graphics/RectF;

    .line 9
    return-object v0
.end method

.method private final getZonePaint()Landroid/graphics/Paint;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/view/RoundCornorDelegate;->zonePaint$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/graphics/Paint;

    .line 9
    return-object v0
.end method


# virtual methods
.method public final canvasSetLayer(Landroid/graphics/Canvas;)V
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
    invoke-direct {p0}, Lcom/narvii/scene/view/RoundCornorDelegate;->getRoundRectF()Landroid/graphics/RectF;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/narvii/scene/view/RoundCornorDelegate;->getZonePaint()Landroid/graphics/Paint;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    const/16 v2, 0x1f

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/narvii/scene/view/RoundCornorDelegate;->getRoundRectF()Landroid/graphics/RectF;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    iget v1, p0, Lcom/narvii/scene/view/RoundCornorDelegate;->cornerRadius:F

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lcom/narvii/scene/view/RoundCornorDelegate;->getZonePaint()Landroid/graphics/Paint;

    .line 28
    move-result-object v3

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0, v1, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {p0}, Lcom/narvii/scene/view/RoundCornorDelegate;->getRoundRectF()Landroid/graphics/RectF;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Lcom/narvii/scene/view/RoundCornorDelegate;->getMaskPaint()Landroid/graphics/Paint;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 43
    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/scene/view/RoundCornorDelegate;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getView()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/scene/view/RoundCornorDelegate;->view:Landroid/view/View;

    return-object v0
.end method

.method public final roundRectSet(II)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/view/RoundCornorDelegate;->getRoundRectF()Landroid/graphics/RectF;

    .line 4
    move-result-object v0

    .line 5
    int-to-float p1, p1

    .line 6
    int-to-float p2, p2

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 11
    return-void
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/scene/view/RoundCornorDelegate;->context:Landroid/content/Context;

    return-void
.end method

.method public final setCornerRadius(F)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/scene/view/RoundCornorDelegate;->cornerRadius:F

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/scene/view/RoundCornorDelegate;->view:Landroid/view/View;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 8
    return-void
.end method

.method public final setView(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/scene/view/RoundCornorDelegate;->view:Landroid/view/View;

    return-void
.end method
