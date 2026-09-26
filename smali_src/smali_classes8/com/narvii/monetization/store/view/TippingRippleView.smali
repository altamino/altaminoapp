.class public final Lcom/narvii/monetization/store/view/TippingRippleView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private final animator:Landroid/animation/ValueAnimator;

.field private isHalfPlayCalled:Z

.field private onHalfPlayed:Le8/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/a<",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final paint:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private rate:F

.field private ringStrokeWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingRippleView;->paint:Landroid/graphics/Paint;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    .line 3
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/monetization/store/view/TippingRippleView;->animator:Landroid/animation/ValueAnimator;

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    iput v1, p0, Lcom/narvii/monetization/store/view/TippingRippleView;->ringStrokeWidth:F

    const-string v1, "#CC000000"

    .line 5
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    new-instance p1, Lcom/narvii/monetization/store/view/i;

    invoke-direct {p1, p0}, Lcom/narvii/monetization/store/view/i;-><init>(Lcom/narvii/monetization/store/view/TippingRippleView;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 7
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingRippleView;->paint:Landroid/graphics/Paint;

    const/4 p2, 0x2

    new-array p2, p2, [F

    fill-array-data p2, :array_0

    .line 9
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/monetization/store/view/TippingRippleView;->animator:Landroid/animation/ValueAnimator;

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    iput v0, p0, Lcom/narvii/monetization/store/view/TippingRippleView;->ringStrokeWidth:F

    const-string v0, "#CC000000"

    .line 11
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 12
    new-instance p1, Lcom/narvii/monetization/store/view/i;

    invoke-direct {p1, p0}, Lcom/narvii/monetization/store/view/i;-><init>(Lcom/narvii/monetization/store/view/TippingRippleView;)V

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 13
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingRippleView;->paint:Landroid/graphics/Paint;

    const/4 p2, 0x2

    new-array p2, p2, [F

    fill-array-data p2, :array_0

    .line 15
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/monetization/store/view/TippingRippleView;->animator:Landroid/animation/ValueAnimator;

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {p3, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p3

    iput p3, p0, Lcom/narvii/monetization/store/view/TippingRippleView;->ringStrokeWidth:F

    const-string p3, "#CC000000"

    .line 17
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 18
    new-instance p1, Lcom/narvii/monetization/store/view/i;

    invoke-direct {p1, p0}, Lcom/narvii/monetization/store/view/i;-><init>(Lcom/narvii/monetization/store/view/TippingRippleView;)V

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static final _init_$lambda$0(Lcom/narvii/monetization/store/view/TippingRippleView;Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "it"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    .line 17
    .line 18
    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    check-cast p1, Ljava/lang/Float;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 25
    move-result p1

    .line 26
    .line 27
    iput p1, p0, Lcom/narvii/monetization/store/view/TippingRippleView;->rate:F

    .line 28
    .line 29
    iget-boolean v0, p0, Lcom/narvii/monetization/store/view/TippingRippleView;->isHalfPlayCalled:Z

    .line 30
    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    .line 34
    const v0, 0x3f0ccccd    # 0.55f

    .line 35
    .line 36
    cmpl-float p1, p1, v0

    .line 37
    .line 38
    if-ltz p1, :cond_0

    .line 39
    const/4 p1, 0x1

    .line 40
    .line 41
    iput-boolean p1, p0, Lcom/narvii/monetization/store/view/TippingRippleView;->isHalfPlayCalled:Z

    .line 42
    .line 43
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingRippleView;->onHalfPlayed:Le8/a;

    .line 44
    .line 45
    if-eqz p1, :cond_0

    .line 46
    .line 47
    .line 48
    invoke-interface {p1}, Le8/a;->invoke()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 52
    return-void
.end method

.method public static synthetic a(Lcom/narvii/monetization/store/view/TippingRippleView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/monetization/store/view/TippingRippleView;->_init_$lambda$0(Lcom/narvii/monetization/store/view/TippingRippleView;Landroid/animation/ValueAnimator;)V

    return-void
.end method


# virtual methods
.method public final getOnHalfPlayed()Le8/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le8/a<",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingRippleView;->onHalfPlayed:Le8/a;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
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
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 12
    move-result v0

    .line 13
    int-to-float v0, v0

    .line 14
    .line 15
    const/high16 v1, 0x40000000    # 2.0f

    .line 16
    div-float/2addr v0, v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 20
    move-result v2

    .line 21
    int-to-float v2, v2

    .line 22
    div-float/2addr v2, v1

    .line 23
    .line 24
    iget v1, p0, Lcom/narvii/monetization/store/view/TippingRippleView;->rate:F

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 28
    move-result v3

    .line 29
    int-to-float v3, v3

    .line 30
    mul-float/2addr v1, v3

    .line 31
    .line 32
    .line 33
    const v3, 0x3fb33333    # 1.4f

    .line 34
    mul-float/2addr v1, v3

    .line 35
    .line 36
    iget-object v3, p0, Lcom/narvii/monetization/store/view/TippingRippleView;->paint:Landroid/graphics/Paint;

    .line 37
    .line 38
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 42
    .line 43
    iget-object v3, p0, Lcom/narvii/monetization/store/view/TippingRippleView;->paint:Landroid/graphics/Paint;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 47
    .line 48
    iget-object v3, p0, Lcom/narvii/monetization/store/view/TippingRippleView;->paint:Landroid/graphics/Paint;

    .line 49
    .line 50
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    .line 55
    iget-object v3, p0, Lcom/narvii/monetization/store/view/TippingRippleView;->paint:Landroid/graphics/Paint;

    .line 56
    .line 57
    iget v4, p0, Lcom/narvii/monetization/store/view/TippingRippleView;->ringStrokeWidth:F

    .line 58
    const/4 v5, 0x2

    .line 59
    int-to-float v5, v5

    .line 60
    mul-float/2addr v4, v5

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 64
    mul-float/2addr v1, v5

    .line 65
    .line 66
    iget-object v3, p0, Lcom/narvii/monetization/store/view/TippingRippleView;->paint:Landroid/graphics/Paint;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 70
    .line 71
    iget-object v3, p0, Lcom/narvii/monetization/store/view/TippingRippleView;->paint:Landroid/graphics/Paint;

    .line 72
    .line 73
    iget v4, p0, Lcom/narvii/monetization/store/view/TippingRippleView;->ringStrokeWidth:F

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 77
    const/4 v3, 0x3

    .line 78
    int-to-float v3, v3

    .line 79
    .line 80
    iget v4, p0, Lcom/narvii/monetization/store/view/TippingRippleView;->ringStrokeWidth:F

    .line 81
    mul-float/2addr v3, v4

    .line 82
    sub-float/2addr v1, v3

    .line 83
    .line 84
    iget-object v3, p0, Lcom/narvii/monetization/store/view/TippingRippleView;->paint:Landroid/graphics/Paint;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 88
    return-void
.end method

.method public final setOnHalfPlayed(Le8/a;)V
    .locals 0
    .param p1    # Le8/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/a<",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingRippleView;->onHalfPlayed:Le8/a;

    return-void
.end method

.method public final startRippleEffect(J)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/monetization/store/view/TippingRippleView;->isHalfPlayCalled:Z

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingRippleView;->animator:Landroid/animation/ValueAnimator;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingRippleView;->animator:Landroid/animation/ValueAnimator;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 14
    .line 15
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingRippleView;->animator:Landroid/animation/ValueAnimator;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 19
    return-void
.end method
