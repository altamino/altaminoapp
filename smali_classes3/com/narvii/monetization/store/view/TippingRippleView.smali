.class public final Lcom/narvii/monetization/store/view/TippingRippleView;
.super Landroid/view/View;
.source "TippingRippleView.kt"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final animator:Landroid/animation/ValueAnimator;

.field private isHalfPlayCalled:Z

.field private onHalfPlayed:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final paint:Landroid/graphics/Paint;

.field private rate:F

.field private ringStrokeWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 26
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 17
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingRippleView;->paint:Landroid/graphics/Paint;

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 18
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingRippleView;->animator:Landroid/animation/ValueAnimator;

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/narvii/monetization/store/view/TippingRippleView;->ringStrokeWidth:F

    .line 31
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingRippleView;->paint:Landroid/graphics/Paint;

    const-string v0, "#CC000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingRippleView;->animator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/narvii/monetization/store/view/TippingRippleView$1;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/store/view/TippingRippleView$1;-><init>(Lcom/narvii/monetization/store/view/TippingRippleView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingRippleView;->paint:Landroid/graphics/Paint;

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 18
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingRippleView;->animator:Landroid/animation/ValueAnimator;

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x40c00000    # 6.0f

    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/narvii/monetization/store/view/TippingRippleView;->ringStrokeWidth:F

    .line 31
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingRippleView;->paint:Landroid/graphics/Paint;

    const-string p2, "#CC000000"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingRippleView;->animator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/narvii/monetization/store/view/TippingRippleView$1;

    invoke-direct {p2, p0}, Lcom/narvii/monetization/store/view/TippingRippleView$1;-><init>(Lcom/narvii/monetization/store/view/TippingRippleView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingRippleView;->paint:Landroid/graphics/Paint;

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 18
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingRippleView;->animator:Landroid/animation/ValueAnimator;

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x40c00000    # 6.0f

    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/narvii/monetization/store/view/TippingRippleView;->ringStrokeWidth:F

    .line 31
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingRippleView;->paint:Landroid/graphics/Paint;

    const-string p2, "#CC000000"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingRippleView;->animator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/narvii/monetization/store/view/TippingRippleView$1;

    invoke-direct {p2, p0}, Lcom/narvii/monetization/store/view/TippingRippleView$1;-><init>(Lcom/narvii/monetization/store/view/TippingRippleView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static final synthetic access$getRate$p(Lcom/narvii/monetization/store/view/TippingRippleView;)F
    .locals 0

    .line 15
    iget p0, p0, Lcom/narvii/monetization/store/view/TippingRippleView;->rate:F

    return p0
.end method

.method public static final synthetic access$isHalfPlayCalled$p(Lcom/narvii/monetization/store/view/TippingRippleView;)Z
    .locals 0

    .line 15
    iget-boolean p0, p0, Lcom/narvii/monetization/store/view/TippingRippleView;->isHalfPlayCalled:Z

    return p0
.end method

.method public static final synthetic access$setHalfPlayCalled$p(Lcom/narvii/monetization/store/view/TippingRippleView;Z)V
    .locals 0

    .line 15
    iput-boolean p1, p0, Lcom/narvii/monetization/store/view/TippingRippleView;->isHalfPlayCalled:Z

    return-void
.end method

.method public static final synthetic access$setRate$p(Lcom/narvii/monetization/store/view/TippingRippleView;F)V
    .locals 0

    .line 15
    iput p1, p0, Lcom/narvii/monetization/store/view/TippingRippleView;->rate:F

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingRippleView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingRippleView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/monetization/store/view/TippingRippleView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingRippleView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/monetization/store/view/TippingRippleView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getOnHalfPlayed()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingRippleView;->onHalfPlayed:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 43
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 48
    iget v1, p0, Lcom/narvii/monetization/store/view/TippingRippleView;->rate:F

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v1, v1, v3

    const v3, 0x3fb33333    # 1.4f

    mul-float v1, v1, v3

    .line 50
    iget-object v3, p0, Lcom/narvii/monetization/store/view/TippingRippleView;->paint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    if-eqz p1, :cond_0

    .line 51
    iget-object v3, p0, Lcom/narvii/monetization/store/view/TippingRippleView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 52
    :cond_0
    iget-object v3, p0, Lcom/narvii/monetization/store/view/TippingRippleView;->paint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 53
    iget-object v3, p0, Lcom/narvii/monetization/store/view/TippingRippleView;->paint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/narvii/monetization/store/view/TippingRippleView;->ringStrokeWidth:F

    const/4 v5, 0x2

    int-to-float v5, v5

    mul-float v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    if-eqz p1, :cond_1

    mul-float v3, v1, v5

    .line 54
    iget-object v4, p0, Lcom/narvii/monetization/store/view/TippingRippleView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 55
    :cond_1
    iget-object v3, p0, Lcom/narvii/monetization/store/view/TippingRippleView;->paint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/narvii/monetization/store/view/TippingRippleView;->ringStrokeWidth:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    if-eqz p1, :cond_2

    mul-float v1, v1, v5

    const/4 v3, 0x3

    int-to-float v3, v3

    .line 56
    iget v4, p0, Lcom/narvii/monetization/store/view/TippingRippleView;->ringStrokeWidth:F

    mul-float v3, v3, v4

    sub-float/2addr v1, v3

    iget-object v3, p0, Lcom/narvii/monetization/store/view/TippingRippleView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method public final setOnHalfPlayed(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 20
    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingRippleView;->onHalfPlayed:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final startRippleEffect(J)V
    .locals 2

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/narvii/monetization/store/view/TippingRippleView;->isHalfPlayCalled:Z

    .line 61
    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingRippleView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 62
    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingRippleView;->animator:Landroid/animation/ValueAnimator;

    const-string v1, "animator"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 63
    iget-object p1, p0, Lcom/narvii/monetization/store/view/TippingRippleView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
